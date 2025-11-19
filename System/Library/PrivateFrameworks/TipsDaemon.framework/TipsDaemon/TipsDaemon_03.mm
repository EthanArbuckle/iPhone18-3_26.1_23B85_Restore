id sub_232DDFBB8()
{
  sub_232DB3688(0, &qword_2814E7BC8, 0x277D717B0);
  v0 = sub_232E017E0();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for SearchItemIndexer());
  result = SearchItemIndexer.init(name:)(v0, v2);
  qword_2814E82E8 = result;
  return result;
}

id static SearchItemIndexer.default.getter()
{
  if (qword_2814E82E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2814E82E8;

  return v1;
}

id SearchItemIndexer.init(name:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___TPSSearchItemIndexer_queue;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v8 = sub_232E014C0();
  [v7 setName_];

  [v7 setMaxConcurrentOperationCount_];
  *&v2[v6] = v7;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___legacyIndexer] = 0;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___tipsIndexer] = 0;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___supportFlowIndexer] = 0;
  *&v2[OBJC_IVAR___TPSSearchItemIndexer____lazy_storage___userGuideIndexer] = 0;
  v9 = &v2[OBJC_IVAR___TPSSearchItemIndexer_name];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id SearchItemIndexer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchItemIndexer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void SearchItemIndexer.indexTips(_:qualityOfService:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = sub_232DDF89C();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v4;
    v11[4] = 0xD00000000000001ELL;
    v11[5] = 0x8000000232E0DBA0;
    v11[6] = &unk_232E07B68;
    v11[7] = v10;
    v12 = objc_allocWithZone(sub_232E01340());

    v13 = v4;

    v16 = sub_232E01330();
    v14 = sub_232E014C0();
    [v16 setName_];

    [v16 setQualityOfService_];
    sub_232DE76B8(v16, a3, a4);

    return;
  }

  v15 = sub_232DE79E8(&unk_284824AE8);
  SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(v15, a2, a3, a4);
}

void SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_232DDF89C();
  v8 = sub_232DDF99C();
  v9 = sub_232DDFAAC();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v7;
  v10[4] = v8;
  v10[5] = v9;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000027;
  v11[5] = 0x8000000232E0DBC0;
  v11[6] = &unk_232E07B78;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v17 = sub_232E01330();
  v14 = sub_232E014C0();
  [v17 setName_];

  [v17 setQualityOfService_];
  sub_232DE76B8(v17, a3, a4);
}

uint64_t sub_232DE03A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_232DE04A0;

  return sub_232DE9C78(a2, 1, 20);
}

uint64_t sub_232DE04A0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE05EC, 0, 0);
  }
}

uint64_t sub_232DE05EC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_232E01270();
  sub_232E01370();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DE06A0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA72F4;

  return sub_232DE03A0(v2, v3);
}

void sub_232DE0820(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_232E00AD0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void SearchItemIndexer.indexSupportFlows(_:qualityOfService:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = sub_232DDF99C();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v4;
    v11[4] = 0xD000000000000025;
    v11[5] = 0x8000000232E0DBF0;
    v11[6] = &unk_232E07B88;
    v11[7] = v10;
    v12 = objc_allocWithZone(sub_232E01340());

    v13 = v4;

    v16 = sub_232E01330();
    v14 = sub_232E014C0();
    [v16 setName_];

    [v16 setQualityOfService_];
    sub_232DE76B8(v16, a3, a4);

    return;
  }

  v15 = sub_232DE79E8(&unk_284824B10);
  SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(v15, a2, a3, a4);
}

uint64_t sub_232DE0AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_232DE0BA0;

  return sub_232DD9590(a2, 1, 20);
}

uint64_t sub_232DE0BA0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE0CEC, 0, 0);
  }
}

uint64_t sub_232DE0CEC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_232E01270();
  sub_232E01370();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void SearchItemIndexer.indexUserGuides(_:qualityOfService:completionHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = sub_232DDFAAC();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v4;
    v11[4] = 0xD000000000000020;
    v11[5] = 0x8000000232E0DC20;
    v11[6] = &unk_232E07B98;
    v11[7] = v10;
    v12 = objc_allocWithZone(sub_232E01340());

    v13 = v4;

    v16 = sub_232E01330();
    v14 = sub_232E014C0();
    [v16 setName_];

    [v16 setQualityOfService_];
    sub_232DE76B8(v16, a3, a4);

    return;
  }

  v15 = sub_232DE79E8(&unk_284824B38);
  SearchItemIndexer.deleteAllItems(ofTypes:qualityOfService:completionHandler:)(v15, a2, a3, a4);
}

uint64_t sub_232DE10A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_232DE11A0;

  return sub_232DCA1E0(a2, 50);
}

uint64_t sub_232DE11A0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE12EC, 0, 0);
  }
}

uint64_t sub_232DE12EC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_232E01270();
  sub_232E01370();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void SearchItemIndexer.reindexTips(_:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232DDF89C();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000020;
  v11[5] = 0x8000000232E0DC50;
  v11[6] = &unk_232E07BA8;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v15 = sub_232E01330();
  v14 = sub_232E014C0();
  [v15 setName_];

  [v15 setQualityOfService_];
  sub_232DE76B8(v15, a3, a4);
}

uint64_t sub_232DE1618(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_232DE1718;

  return sub_232DE9C78(a2, 0, 20);
}

uint64_t sub_232DE1718()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE1864, 0, 0);
  }
}

uint64_t sub_232DE1864()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_232E01270();
  sub_232E01370();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void SearchItemIndexer.reindexCollections(_:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232DDF99C();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000027;
  v11[5] = 0x8000000232E0DC80;
  v11[6] = &unk_232E07BB8;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v15 = sub_232E01330();
  v14 = sub_232E014C0();
  [v15 setName_];

  [v15 setQualityOfService_];
  sub_232DE76B8(v15, a3, a4);
}

uint64_t sub_232DE1BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v2[2] = v4;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_232DE1CA0;

  return sub_232DD9590(a2, 0, 20);
}

uint64_t sub_232DE1CA0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE1DEC, 0, 0);
  }
}

uint64_t sub_232DE1DEC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_232E01270();
  sub_232E01370();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void SearchItemIndexer.reindexUserGuides(_:qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_232DDFAAC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = v4;
  v11[4] = 0xD000000000000027;
  v11[5] = 0x8000000232E0DCB0;
  v11[6] = &unk_232E07BC8;
  v11[7] = v10;
  v12 = objc_allocWithZone(sub_232E01340());

  v13 = v4;

  v15 = sub_232E01330();
  v14 = sub_232E014C0();
  [v15 setName_];

  [v15 setQualityOfService_];
  sub_232DE76B8(v15, a3, a4);
}

uint64_t sub_232DE2128(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = sub_232E012A0();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE21EC, a1, 0);
}

uint64_t sub_232DE21EC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v2 + 8);
  v0[7] = v5;
  v0[8] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = sub_232DDF6E0();
  v0[9] = v6;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_232DE2308;

  return (sub_232DC68A8)(0, 0xC000000000000000, v6);
}

uint64_t sub_232DE2308()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {
    v4 = *(v3 + 16);

    return MEMORY[0x2822009F8](sub_232DE25D0, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v3 + 96) = v5;
    *v5 = v3;
    v5[1] = sub_232DE2484;
    v6 = *(v3 + 16);
    v7 = *(v3 + 24);

    return sub_232DCA1E0(v7, 50);
  }
}

uint64_t sub_232DE2484()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 48);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE263C, 0, 0);
  }
}

uint64_t sub_232DE25D0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_232DE263C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  sub_232E01270();
  sub_232E01370();
  v2(v3, v4);

  v5 = v0[1];

  return v5();
}

void SearchItemIndexer.deleteAllItems(qualityOfService:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232DDF89C();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v3;
  v8[4] = 0xD00000000000001FLL;
  v8[5] = 0x8000000232E0DCE0;
  v8[6] = &unk_232E07BD8;
  v8[7] = v7;
  v9 = objc_allocWithZone(sub_232E01340());
  swift_retain_n();
  v10 = v3;
  v12 = sub_232E01330();
  v11 = sub_232E014C0();
  [v12 setName_];

  [v12 setQualityOfService_];
  sub_232DE76B8(v12, a2, a3);
}

uint64_t sub_232DE2930()
{
  v1 = sub_232E012A0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_232DE2A30;

  return sub_232DE2C30();
}

uint64_t sub_232DE2A30()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_232DE2B7C, 0, 0);
  }
}

uint64_t sub_232DE2B7C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_232E01270();
  sub_232E01370();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DE2C30()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = sub_232E00BE0();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = sub_232E012A0();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE2D80, v0, 0);
}

uint64_t sub_232DE2D80()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[18];
  sub_232E01270();
  sub_232E01360();
  (*(v2 + 8))(v1, v3);
  v5 = sub_232DDF6E0();
  v0[27] = v5;
  v0[2] = v0;
  v0[3] = sub_232DE2EF0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_9;
  v0[14] = v6;
  [v5 deleteAllSearchableItemsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DE2EF0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 144);
  if (v3)
  {
    v5 = sub_232DE310C;
  }

  else
  {
    v5 = sub_232DE3010;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DE3010()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  sub_232DE9A58();
  sub_232E00B80();
  v7 = *(v5 + 8);
  v7(v3, v4);
  sub_232DB5818();
  v7(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_232DE310C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_232DE3260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v4[111] = a4;
  v4[110] = a3;
  v4[109] = a2;
  v4[108] = a1;
  v5 = sub_232E00BE0();
  v4[112] = v5;
  v6 = *(v5 - 8);
  v4[113] = v6;
  v7 = *(v6 + 64) + 15;
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v8 = sub_232E012A0();
  v4[116] = v8;
  v9 = *(v8 - 8);
  v4[117] = v9;
  v10 = *(v9 + 64) + 15;
  v4[118] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE33C0, 0, 0);
}

uint64_t sub_232DE33C0()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v4 + 32);
  *(v0 + 1184) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);

  if (v8)
  {
    v10 = 0;
LABEL_8:
    *(v0 + 960) = v10;
    *(v0 + 952) = v8;
    v12 = *(*(v9 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    switch(v12)
    {
      case 0:
        v17 = *MEMORY[0x277D85DE8];
        v14 = sub_232DE3E80;
        v15 = v2;
        goto LABEL_14;
      case 1:
        v16 = *MEMORY[0x277D85DE8];
        v14 = sub_232DE3640;
        v15 = v3;
        goto LABEL_14;
      case 2:
        v13 = *MEMORY[0x277D85DE8];
        v14 = sub_232DE4DB0;
        v15 = v1;
LABEL_14:

        return MEMORY[0x2822009F8](v14, v15, 0);
    }

    *(v0 + 832) = v12;
    v18 = *MEMORY[0x277D85DE8];
    v19 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v0 + 832, &type metadata for SearchItemIndexer.IndexItemType, v19);
  }

  else
  {
    v11 = 0;
    while (((63 - v7) >> 6) - 1 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 8 * v11++ + 64);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v0 + 944);
    v21 = *(v0 + 920);
    v22 = *(v0 + 912);

    v23 = *(v0 + 8);
    v24 = *MEMORY[0x277D85DE8];

    return v23();
  }
}

uint64_t sub_232DE3640()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[109];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v2 + 8);
  v0[121] = v5;
  v0[122] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = sub_232DDF6E0();
  v0[123] = v6;
  v7 = swift_task_alloc();
  v0[124] = v7;
  *v7 = v0;
  v7[1] = sub_232DE378C;
  v8 = *MEMORY[0x277D85DE8];

  return sub_232DC7A00(0, 0xC000000000000000, v6);
}

uint64_t sub_232DE378C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 992);
  v11 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v4 = *(v2 + 872);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_232DE3D28;
  }

  else
  {
    v7 = *(v2 + 872);

    v8 = *MEMORY[0x277D85DE8];
    v6 = sub_232DE3900;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_232DE3900()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
  sub_232DE9A58();
  sub_232E00B80();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_232E00B70();
  v0[107] = 0;
  LODWORD(v1) = [v6 removeItemAtURL:v7 error:v0 + 107];

  v8 = v0[107];
  if (v1)
  {
    v9 = v8;
  }

  else
  {
    v10 = v8;
    v11 = sub_232E00AE0();

    swift_willThrow();
  }

  v5(v0[115], v0[112]);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE3AB8, 0, 0);
}

uint64_t sub_232DE3AB8()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(v0 + 944);
  v4 = *(v0 + 928);
  sub_232E01270();
  sub_232E01370();
  v2(v3, v4);
  v5 = *(v0 + 960);
  v6 = (*(v0 + 952) - 1) & *(v0 + 952);
  if (v6)
  {
    v7 = *(v0 + 864);
LABEL_7:
    *(v0 + 960) = v5;
    *(v0 + 952) = v6;
    v9 = *(*(v7 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    switch(v9)
    {
      case 0:
        v10 = *(v0 + 880);
        v11 = sub_232DE3E80;
        goto LABEL_13;
      case 1:
        v10 = *(v0 + 872);
        v11 = sub_232DE3640;
        goto LABEL_13;
      case 2:
        v10 = *(v0 + 888);
        v11 = sub_232DE4DB0;
LABEL_13:
        v12 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](v11, v10, 0);
    }

    *(v0 + 832) = v9;
    v13 = *MEMORY[0x277D85DE8];
    v14 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v0 + 832, &type metadata for SearchItemIndexer.IndexItemType, v14);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      if (v8 >= (((1 << *(v0 + 1184)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v0 + 864);
      v6 = *(v7 + 8 * v8 + 56);
      ++v5;
      if (v6)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v15 = *(v0 + 944);
    v16 = *(v0 + 920);
    v17 = *(v0 + 912);
    v18 = *(v0 + 864);

    v19 = *(v0 + 8);
    v20 = *MEMORY[0x277D85DE8];

    return v19();
  }
}

uint64_t sub_232DE3D28()
{
  v3 = *MEMORY[0x277D85DE8];

  v1 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE3DBC, 0, 0);
}

uint64_t sub_232DE3DBC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[125];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[108];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_232DE3E80()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[110];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v2 + 8);
  v0[126] = v5;
  v0[127] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v0[128] = sub_232DDF6E0();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE3F84, 0, 0);
}

uint64_t sub_232DE3F84()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[128];
  [v1 beginIndexBatch];
  v2 = sub_232E015C0();
  v0[129] = v2;
  v0[26] = v0;
  v0[27] = sub_232DE410C;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[130] = v4;
  v0[81] = v4;
  v0[78] = v3;
  v0[74] = MEMORY[0x277D85DD0];
  v0[75] = 1107296256;
  v0[76] = sub_232DCA134;
  v0[77] = &block_descriptor_118;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 74];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 26);
}

uint64_t sub_232DE410C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1048) = v2;
  if (v2)
  {
    v3 = sub_232DE44E4;
  }

  else
  {
    v3 = sub_232DE4248;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DE4248()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1024);

  v3 = sub_232E00C50();
  *(v0 + 1056) = v3;
  *(v0 + 336) = v0;
  *(v0 + 344) = sub_232DE43A8;
  v4 = swift_continuation_init();
  *(v0 + 776) = v1;
  *(v0 + 752) = v4;
  *(v0 + 720) = MEMORY[0x277D85DD0];
  *(v0 + 728) = 1107296256;
  *(v0 + 736) = sub_232DCA134;
  *(v0 + 744) = &block_descriptor_124;
  [v2 endIndexBatchWithClientState:v3 completionHandler:v0 + 720];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 336);
}

uint64_t sub_232DE43A8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 368);
  *(*v0 + 1064) = v2;
  if (v2)
  {
    v3 = sub_232DE4AC4;
  }

  else
  {
    v3 = sub_232DE4844;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DE44E4()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[131];
  v2 = v0[129];
  v15 = v0[130];
  v16 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[118];
  v6 = v0[116];
  swift_willThrow();

  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v7 = v0[101];
  v8 = v0[102];
  v9 = v0[103];
  v10 = sub_232E01B50();
  MEMORY[0x238395970](v10);

  sub_232E01380();

  v4(v5, v6);
  v11 = sub_232E00C50();
  v0[134] = v11;
  v0[34] = v0;
  v0[35] = sub_232DE4708;
  v12 = swift_continuation_init();
  v0[89] = v15;
  v0[86] = v12;
  v0[82] = MEMORY[0x277D85DD0];
  v0[83] = 1107296256;
  v0[84] = sub_232DCA134;
  v0[85] = &block_descriptor_121;
  [v16 endIndexBatchWithClientState:v11 completionHandler:v0 + 82];
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 34);
}

uint64_t sub_232DE4708()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1080) = v2;
  if (v2)
  {
    v3 = sub_232DE4CF0;
  }

  else
  {
    v3 = sub_232DE4C3C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DE4844()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 944);
  v5 = *(v0 + 928);

  sub_232E01270();
  sub_232E01370();
  v3(v4, v5);
  v6 = *(v0 + 960);
  v7 = (*(v0 + 952) - 1) & *(v0 + 952);
  if (v7)
  {
    v8 = *(v0 + 864);
LABEL_7:
    *(v0 + 960) = v6;
    *(v0 + 952) = v7;
    v10 = *(*(v8 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v7)))));
    switch(v10)
    {
      case 0:
        v11 = *(v0 + 880);
        v12 = sub_232DE3E80;
        goto LABEL_13;
      case 1:
        v11 = *(v0 + 872);
        v12 = sub_232DE3640;
        goto LABEL_13;
      case 2:
        v11 = *(v0 + 888);
        v12 = sub_232DE4DB0;
LABEL_13:
        v13 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](v12, v11, 0);
    }

    *(v0 + 832) = v10;
    v14 = *MEMORY[0x277D85DE8];
    v15 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v0 + 832, &type metadata for SearchItemIndexer.IndexItemType, v15);
  }

  else
  {
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
      }

      if (v9 >= (((1 << *(v0 + 1184)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v0 + 864);
      v7 = *(v8 + 8 * v9 + 56);
      ++v6;
      if (v7)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }

    v16 = *(v0 + 944);
    v17 = *(v0 + 920);
    v18 = *(v0 + 912);
    v19 = *(v0 + 864);

    v20 = *(v0 + 8);
    v21 = *MEMORY[0x277D85DE8];

    return v20();
  }
}

uint64_t sub_232DE4AC4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[133];
  v2 = v0[132];
  swift_willThrow();

  v3 = v0[128];
  v0[136] = v0[133];

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE4B78, 0, 0);
}

uint64_t sub_232DE4B78()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[136];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[108];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_232DE4C3C()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1048);

  swift_willThrow();
  v2 = *(v0 + 1024);
  *(v0 + 1088) = *(v0 + 1048);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE4B78, 0, 0);
}

uint64_t sub_232DE4CF0()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[135];
  v2 = v0[131];
  v3 = v0[128];
  swift_willThrow();

  v4 = v0[134];
  v0[136] = v0[135];

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE4B78, 0, 0);
}

uint64_t sub_232DE4DB0()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[111];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v2 + 8);
  v0[137] = v5;
  v0[138] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v0[139] = sub_232DDF6E0();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE4EB4, 0, 0);
}

uint64_t sub_232DE4EB4()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[139];
  [v1 beginIndexBatch];
  v2 = sub_232E015C0();
  v0[140] = v2;
  v0[2] = v0;
  v0[3] = sub_232DE5038;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[141] = v4;
  v0[57] = v4;
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_232DCA134;
  v0[53] = &block_descriptor_108;
  v0[54] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 50];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DE5038()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1136) = v2;
  if (v2)
  {
    v3 = sub_232DE5410;
  }

  else
  {
    v3 = sub_232DE5174;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DE5174()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1112);

  v3 = sub_232E00C50();
  *(v0 + 1144) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_232DE52D4;
  v4 = swift_continuation_init();
  *(v0 + 584) = v1;
  *(v0 + 560) = v4;
  *(v0 + 528) = MEMORY[0x277D85DD0];
  *(v0 + 536) = 1107296256;
  *(v0 + 544) = sub_232DCA134;
  *(v0 + 552) = &block_descriptor_114;
  [v2 endIndexBatchWithClientState:v3 completionHandler:v0 + 528];
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_232DE52D4()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1152) = v2;
  if (v2)
  {
    v3 = sub_232DE59EC;
  }

  else
  {
    v3 = sub_232DE576C;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DE5410()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = v0[142];
  v2 = v0[140];
  v15 = v0[141];
  v16 = v0[139];
  v3 = v0[138];
  v4 = v0[137];
  v5 = v0[118];
  v6 = v0[116];
  swift_willThrow();

  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v7 = v0[98];
  v8 = v0[99];
  v9 = v0[100];
  v10 = sub_232E01B50();
  MEMORY[0x238395970](v10);

  sub_232E01380();

  v4(v5, v6);
  v11 = sub_232E00C50();
  v0[145] = v11;
  v0[10] = v0;
  v0[11] = sub_232DE5630;
  v12 = swift_continuation_init();
  v0[65] = v15;
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_232DCA134;
  v0[61] = &block_descriptor_111;
  v0[62] = v12;
  [v16 endIndexBatchWithClientState:v11 completionHandler:v0 + 58];
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_232DE5630()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1168) = v2;
  if (v2)
  {
    v3 = sub_232DE5C18;
  }

  else
  {
    v3 = sub_232DE5B64;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DE576C()
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 944);
  v5 = *(v0 + 928);

  sub_232E01270();
  sub_232E01370();
  v3(v4, v5);
  v6 = *(v0 + 960);
  v7 = (*(v0 + 952) - 1) & *(v0 + 952);
  if (v7)
  {
    v8 = *(v0 + 864);
LABEL_7:
    *(v0 + 960) = v6;
    *(v0 + 952) = v7;
    v10 = *(*(v8 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v7)))));
    switch(v10)
    {
      case 0:
        v11 = *(v0 + 880);
        v12 = sub_232DE3E80;
        goto LABEL_13;
      case 1:
        v11 = *(v0 + 872);
        v12 = sub_232DE3640;
        goto LABEL_13;
      case 2:
        v11 = *(v0 + 888);
        v12 = sub_232DE4DB0;
LABEL_13:
        v13 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](v12, v11, 0);
    }

    *(v0 + 832) = v10;
    v14 = *MEMORY[0x277D85DE8];
    v15 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v0 + 832, &type metadata for SearchItemIndexer.IndexItemType, v15);
  }

  else
  {
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
      }

      if (v9 >= (((1 << *(v0 + 1184)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v0 + 864);
      v7 = *(v8 + 8 * v9 + 56);
      ++v6;
      if (v7)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }

    v16 = *(v0 + 944);
    v17 = *(v0 + 920);
    v18 = *(v0 + 912);
    v19 = *(v0 + 864);

    v20 = *(v0 + 8);
    v21 = *MEMORY[0x277D85DE8];

    return v20();
  }
}

uint64_t sub_232DE59EC()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[144];
  v2 = v0[143];
  swift_willThrow();

  v3 = v0[139];
  v0[147] = v0[144];

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE5AA0, 0, 0);
}

uint64_t sub_232DE5AA0()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = v0[147];
  v2 = v0[118];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[108];

  v6 = v0[1];
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_232DE5B64()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1136);

  swift_willThrow();
  v2 = *(v0 + 1112);
  *(v0 + 1176) = *(v0 + 1136);

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE5AA0, 0, 0);
}

uint64_t sub_232DE5C18()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = v0[146];
  v2 = v0[142];
  v3 = v0[139];
  swift_willThrow();

  v4 = v0[145];
  v0[147] = v0[146];

  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_232DE5AA0, 0, 0);
}

uint64_t sub_232DE5CD8()
{
  v1[4] = v0;
  v2 = sub_232E012A0();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE5D98, 0, 0);
}

uint64_t sub_232DE5D98()
{
  v1 = objc_opt_self();
  v0[8] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_232E014C0();
  v4 = [v2 integerForKey_];

  if (v4 == 1)
  {
    v5 = v0[7];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    sub_232E01270();
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000021, 0x8000000232E0E0D0);
    v0[2] = v4;
    v12 = sub_232E01AB0();
    MEMORY[0x238395970](v12);

    MEMORY[0x238395970](0x64656465656E202CLL, 0xEA0000000000203ALL);
    v0[3] = 1;
    v13 = sub_232E01AB0();
    MEMORY[0x238395970](v13);

    MEMORY[0x238395970](0xD000000000000016, 0x8000000232E0E100);
    sub_232E01360();

    v14 = *(v9 + 8);
    v0[9] = v14;
    v0[10] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v8, v11);
    v0[11] = sub_232DDF7E4();
    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_232DE6050;

    return sub_232DE2C30();
  }
}

uint64_t sub_232DE6050()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_232DE6A1C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_232DE616C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DE616C()
{
  v1 = v0[4];
  v0[14] = sub_232DDF89C();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_232DE6208;

  return sub_232DE9558();
}

uint64_t sub_232DE6208()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_232DE6A8C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_232DE6324;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DE6324()
{
  v1 = *(v0 + 32);
  v2 = sub_232DDF99C();
  *(v0 + 136) = v2;

  return MEMORY[0x2822009F8](sub_232DE6390, v2, 0);
}

uint64_t sub_232DE6390()
{
  v1 = v0[17];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[5];
  sub_232E01270();
  sub_232E01360();
  v3(v4, v5);
  v6 = sub_232DDF6E0();
  v0[18] = v6;
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_232DE649C;

  return sub_232DC7248(0, 0xC000000000000000, v6);
}

uint64_t sub_232DE649C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_232DE686C;
  }

  else
  {
    v6 = *(v2 + 136);

    v5 = sub_232DE65C8;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DE65C8()
{
  v1 = *(v0 + 32);
  v2 = sub_232DDFAAC();
  *(v0 + 168) = v2;

  return MEMORY[0x2822009F8](sub_232DE6634, v2, 0);
}

uint64_t sub_232DE6634()
{
  v1 = v0[21];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[5];
  sub_232E01270();
  sub_232E01360();
  v3(v4, v5);
  v6 = sub_232DDF6E0();
  v0[22] = v6;
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_232DE6740;

  return sub_232DC68A8(0, 0xC000000000000000, v6);
}

uint64_t sub_232DE6740()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    v5 = sub_232DE69A4;
  }

  else
  {
    v6 = *(v2 + 168);

    v5 = sub_232DE68E4;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DE686C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_232DE68E4()
{
  v1 = [*(v0 + 64) standardUserDefaults];
  v2 = sub_232E014C0();
  [v1 setInteger:1 forKey:v2];

  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_232DE69A4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_232DE6A1C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DE6A8C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DE6AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v24 - v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = v19;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a1;
  v20[8] = a2;
  if (a3 <= 16)
  {
    if (a3 == 9)
    {

      sub_232E01660();
      goto LABEL_10;
    }

LABEL_8:

    sub_232E01690();
    goto LABEL_10;
  }

  if (a3 == 17)
  {

    sub_232E01680();
    goto LABEL_10;
  }

  if (a3 != 25 && a3 != 33)
  {
    goto LABEL_8;
  }

  sub_232E01670();
LABEL_10:
  v21 = sub_232E016B0();
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_232E07D38;
  v22[5] = v20;
  sub_232DF55C8(0, 0, v18, &unk_232E07D48, v22);
}

uint64_t sub_232DE6D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  v9 = sub_232E012A0();
  v8[15] = v9;
  v10 = *(v9 - 8);
  v8[16] = v10;
  v11 = *(v10 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE6E1C, 0, 0);
}

uint64_t sub_232DE6E1C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = objc_allocWithZone(MEMORY[0x277D71790]);
  v5 = sub_232E014C0();
  v0[18] = [v4 initWithTransactionName_];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_232DE6FEC;

    return sub_232DE5CD8();
  }

  else
  {
    v12 = (v0[11] + *v0[11]);
    v9 = *(v0[11] + 4);
    v10 = swift_task_alloc();
    v0[22] = v10;
    *v10 = v0;
    v10[1] = sub_232DE71C4;
    v11 = v0[12];

    return v12();
  }
}

uint64_t sub_232DE6FEC()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  *(v3 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_232DE7350, 0, 0);
  }

  else
  {

    v8 = (*(v3 + 88) + **(v3 + 88));
    v4 = *(*(v3 + 88) + 4);
    v5 = swift_task_alloc();
    *(v3 + 176) = v5;
    *v5 = v3;
    v5[1] = sub_232DE71C4;
    v6 = *(v3 + 96);

    return v8();
  }
}

uint64_t sub_232DE71C4()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_232DE7508;
  }

  else
  {
    v3 = sub_232DE72D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DE72D8()
{
  v1 = *(v0 + 112);
  (*(v0 + 104))(0);
  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_232DE7350()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v14 = *(v0 + 104);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_232E01270();
  sub_232E018F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x238395970](0xD000000000000014, 0x8000000232E0E070);
  MEMORY[0x238395970](v7, v6);
  MEMORY[0x238395970](0xD000000000000015, 0x8000000232E0E090);
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
  sub_232E019A0();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v10 = v1;
  v14(v1);

  v11 = *(v0 + 136);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_232DE7508()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v14 = *(v0 + 104);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_232E01270();
  sub_232E018F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x238395970](0xD000000000000014, 0x8000000232E0E070);
  MEMORY[0x238395970](v7, v6);
  MEMORY[0x238395970](0xD000000000000015, 0x8000000232E0E090);
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
  sub_232E019A0();
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_232E01380();

  (*(v3 + 8))(v2, v5);
  v10 = v1;
  v14(v1);

  v11 = *(v0 + 136);

  v12 = *(v0 + 8);

  return v12();
}

id sub_232DE76B8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v7;
  v11[4] = sub_232DE8140;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_232DBF518;
  v11[3] = &block_descriptor_135;
  v9 = _Block_copy(v11);
  sub_232D73138(a2);

  sub_232D73138(sub_232DE8140);

  [a1 setCompletionBlock_];
  _Block_release(v9);

  return [*(v3 + OBJC_IVAR___TPSSearchItemIndexer_queue) addOperation_];
}

void sub_232DE7828(void (*a1)(id))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong error];
    }

    else
    {
      v4 = 0;
    }

    a1(v4);
  }
}

uint64_t sub_232DE78C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7768, &qword_232E07D08);
    v3 = sub_232E018E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 8 * v4);
      result = sub_232E01BA0();
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_232DE79E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7778, &unk_232E07D20);
    v3 = sub_232E018E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_232E01BB0();
      MEMORY[0x238395FF0](v10);
      result = sub_232E01BE0();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_232DE7B24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_232DA7C78;

  return sub_232DE3260(v2, v3, v5, v4);
}

uint64_t sub_232DE7BD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE0AA0(v2, v3);
}

uint64_t sub_232DE7C68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE10A4(v2, v3);
}

uint64_t sub_232DE7D00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE1618(v2, v3);
}

uint64_t sub_232DE7D98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE1BA0(v2, v3);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232DE7E70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE2128(v2, v3);
}

uint64_t sub_232DE7F08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232DA7C78;

  return sub_232DE2930();
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_232DE7FF4()
{
  result = qword_27DDD7750;
  if (!qword_27DDD7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7750);
  }

  return result;
}

unint64_t sub_232DE804C()
{
  result = qword_27DDD7758;
  if (!qword_27DDD7758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7760, &qword_232E07C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7758);
  }

  return result;
}

uint64_t sub_232DE8110(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_232DE8140()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_232DE7828(*(v0 + 16));
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232DE8164(uint64_t a1)
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
  v11[1] = sub_232DA72F4;

  return sub_232DE6D50(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232DE8240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_232DA7C78;

  return sub_232DA71FC(a1, v4, v5, v7);
}

uint64_t sub_232DE8398(unint64_t a1)
{
  v2 = sub_232DE78C4(&unk_284824A48);
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_232E019C0();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = v2 + 56;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x238395D50](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 32 + 8 * v4);
    }

    v7 = v6;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = [v6 inAppAdamID];
    v10 = [v9 longLongValue];

    if (*(v2 + 16))
    {
      v11 = *(v2 + 40);
      v12 = sub_232E01BA0();
      v13 = -1 << *(v2 + 32);
      v14 = v12 & ~v13;
      if ((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        break;
      }
    }

LABEL_4:

    if (v4 == v3)
    {
      goto LABEL_20;
    }
  }

  v15 = ~v13;
  while (*(*(v2 + 48) + 8 * v14) != v10)
  {
    v14 = (v14 + 1) & v15;
    if (((*(v5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

id TPSAppleNewsPlusSubscriptionValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id TPSAppleNewsPlusSubscriptionValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAppleNewsPlusSubscriptionValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DE8680@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_232E01870();
  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v6 = *(a1 + 36);

    return sub_232DE8AF4(result, v6, a1, a2);
  }

  return result;
}

id sub_232DE8704()
{
  result = [v0 targetContext];
  if (result)
  {
    v2 = result;
    v3 = sub_232E01470();

    if (*(v3 + 16) == 1)
    {
      sub_232DE8680(v3, &v5);

      if (v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7320, &qword_232E05EF8);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      sub_232DE94F0(&v5);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id GenerativeModelsUseCaseAvailabilityValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id GenerativeModelsUseCaseAvailabilityValidation.init(targetContext:)()
{
  v1 = sub_232E01450();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  v2 = objc_msgSendSuper2(&v4, sel_initWithTargetContext_, v1);

  return v2;
}

id GenerativeModelsUseCaseAvailabilityValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeModelsUseCaseAvailabilityValidation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GenerativeModelsUseCaseAvailabilityValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DE8AF4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_232DAB730(*(a3 + 56) + 32 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_232DE8B48(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xE900000000000064;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v4 = 0x6C62616C69617661;
    }

    else
    {
      v4 = 0x4965736143657375;
    }

    v5 = sub_232DD5634(v4, v2);
    v7 = v6;

    if (v7)
    {
      sub_232DAB730(*(a2 + 56) + 32 * v5, v9);
      goto LABEL_12;
    }
  }

  else
  {
  }

  memset(v9, 0, sizeof(v9));
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74C0, &qword_232E07DF0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232DE8C38(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xE900000000000064;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v4 = 0x6C62616C69617661;
    }

    else
    {
      v4 = 0x4965736143657375;
    }

    v5 = sub_232DD5634(v4, v2);
    v7 = v6;

    if (v7)
    {
      sub_232DAB730(*(a2 + 56) + 32 * v5, v9);
      goto LABEL_12;
    }
  }

  else
  {
  }

  memset(v9, 0, sizeof(v9));
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74C0, &qword_232E07DF0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_232DE8D28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7490, &unk_232E07090);
    v3 = sub_232E01A00();
    v4 = a1 + 32;

    while (1)
    {
      sub_232DE9480(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_232DD5634(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_232D734CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_232DE8E38()
{
  result = qword_27DDD7780;
  if (!qword_27DDD7780)
  {
    sub_232E00930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7780);
  }

  return result;
}

void sub_232DE8ECC(void *a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_232E00930();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232E012A0();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = sub_232DE8704();
  if (v15)
  {
    v16 = v15;
    v17 = sub_232DE8B48(0, v15);
    if (v18)
    {
      v19 = v18;
      v48 = v14;
      v20 = v17;
      v21 = sub_232DE8C38(1, v16);

      if (v21 != 2)
      {
        v22 = sub_232DB5EF0(v20, v19, v21 & 1);

        v23 = v48;
        sub_232E01290();
        v24 = 0xE000000000000000;
        v52 = 0;
        v53 = 0xE000000000000000;
        sub_232E018F0();
        v25 = [a1 name];
        if (v25)
        {
          v26 = v25;
          v27 = sub_232E014D0();
          v24 = v28;
        }

        else
        {
          v27 = 0;
        }

        MEMORY[0x238395970](v27, v24);

        MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
        v41 = [a1 targetContext];
        if (v41)
        {
          v42 = v41;
          sub_232E01470();
        }

        else
        {
          sub_232DB3428(MEMORY[0x277D84F90]);
        }

        v43 = sub_232E01480();
        v45 = v44;

        MEMORY[0x238395970](v43, v45);

        MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
        if (v22)
        {
          v46 = 1702195828;
        }

        else
        {
          v46 = 0x65736C6166;
        }

        if (v22)
        {
          v47 = 0xE400000000000000;
        }

        else
        {
          v47 = 0xE500000000000000;
        }

        MEMORY[0x238395970](v46, v47);

        sub_232E01350();

        (*(v49 + 8))(v23, v50);
        (*(v51 + 16))(v51, v22 & 1, 0);
        return;
      }
    }
  }

  sub_232E01290();
  v29 = 0xE000000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_232E018F0();
  v30 = [a1 name];
  if (v30)
  {
    v31 = v30;
    v32 = sub_232E014D0();
    v29 = v33;
  }

  else
  {
    v32 = 0;
  }

  MEMORY[0x238395970](v32, v29);

  MEMORY[0x238395970](0xD000000000000031, 0x8000000232E0E190);
  v34 = [a1 targetContext];
  if (v34)
  {
    v35 = v34;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v36 = sub_232E01480();
  v38 = v37;

  MEMORY[0x238395970](v36, v38);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xEE0065736C616620);
  sub_232E01380();

  (*(v49 + 8))(v12, v50);
  LODWORD(v52) = 22;
  sub_232DE8D28(MEMORY[0x277D84F90]);
  sub_232DE8E38();
  sub_232E00AC0();
  v39 = sub_232E00920();
  (*(v4 + 8))(v7, v3);
  v40 = sub_232E00AD0();
  (*(v51 + 16))(v51, 0, v40);
}

uint64_t sub_232DE9480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7498, &qword_232E065A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DE94F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74C0, &qword_232E07DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232DE9558()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_232E00BE0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_232E012A0();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE96A8, v0, 0);
}

uint64_t sub_232DE96A8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  sub_232E01270();
  sub_232E01360();
  v5 = (*(v2 + 8))(v1, v3);
  v6 = sub_232DE833C(v5);
  v0[11] = v6;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_232DE97B8;

  return (sub_232DC7A00)(0, 0xC000000000000000, v6);
}

uint64_t sub_232DE97B8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_232DE99D0;
  }

  else
  {
    v6 = *(v2 + 16);

    v5 = sub_232DE98E0;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DE98E0()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  sub_232DE9A58();
  sub_232E00B80();
  v6 = *(v5 + 8);
  v6(v2, v4);
  sub_232DB5818();
  v6(v3, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_232DE99D0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  v4 = *(v0 + 8);
  v5 = *(v0 + 104);

  return v4();
}

uint64_t sub_232DE9A58()
{
  v0 = sub_232E00BE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = [objc_opt_self() defaultManager];
  v9 = [objc_opt_self() appGroupIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = [v8 containerURLForSecurityApplicationGroupIdentifier_];

    if (v11)
    {
      sub_232E00BB0();

      (*(v1 + 32))(v7, v5, v0);
      sub_232E00B80();
      return (*(v1 + 8))(v7, v0);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_232E019B0();
  __break(1u);
  return result;
}

uint64_t sub_232DE9C78(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 192) = a3;
  *(v4 + 200) = v3;
  *(v4 + 416) = a2;
  *(v4 + 184) = a1;
  v5 = sub_232E012A0();
  *(v4 + 208) = v5;
  v6 = *(v5 - 8);
  *(v4 + 216) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE9D4C, v3, 0);
}

uint64_t sub_232DE9D4C()
{
  v96 = v0;
  v1 = v0[25];
  v2 = v0[23];
  v3 = sub_232DEBF1C();
  v94 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_55:
    if (v0[23] < 0)
    {
      v77 = v0[23];
    }

    v3 = sub_232E019C0();
    v4 = v3;
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  v93 = v0;
  if (v4)
  {
    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
    v9 = v0[23] + 32;
    v10 = &selRef_productId;
    v11 = &selRef_anyObject;
    v12 = &selRef_anyObject;
    while (1)
    {
      if (v7)
      {
        v3 = MEMORY[0x238395D50](v6, v93[23]);
        v0 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v0 = v93;
          v5 = v94;
          break;
        }
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_55;
        }

        v3 = *(v9 + 8 * v6);
        v0 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }
      }

      v2 = v3;
      if ([v2 v10[243]] & 2) == 0 || (objc_msgSend(v2, v11[376]) & 1) != 0 || (objc_msgSend(v2, v12[383]))
      {
      }

      else
      {
        v13 = [v2 isLinkedArticle];

        if (v13)
        {
        }

        else
        {
          sub_232E01950();
          v14 = v11;
          v15 = *(v94 + 16);
          sub_232E01980();
          v11 = v14;
          v10 = &selRef_productId;
          sub_232E01990();
          v3 = sub_232E01960();
        }

        v12 = &selRef_anyObject;
      }

      ++v6;
      if (v0 == v4)
      {
        goto LABEL_20;
      }
    }
  }

  v0[30] = v5;
  if (v0[52])
  {
    v16 = v0[25];
    v17 = sub_232DE833C(v3);
    v0[31] = v17;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_232DEA7A0;
    v18 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7668, &qword_232E07568);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_232DCDB54;
    v0[13] = &block_descriptor_10;
    v0[14] = v18;
    [v17 fetchLastClientStateWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  v0[33] = 0;
  v0[34] = 0xC000000000000000;
  v19 = sub_232DF26FC(v0[23], 0, 0xC000000000000000);
  if (v19 == 2)
  {
    v20 = v0[30];
    v22 = v0[27];
    v21 = v0[28];
    v23 = v0[26];

    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(0, 0xC000000000000000);
    (*(v22 + 8))(v21, v23);
    v25 = v0[28];
    v24 = v0[29];

    v26 = v0[1];

    return v26();
  }

  v27 = v19;
  v28 = v0[29];
  sub_232E01270();
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
  v29 = v0[29];
  v30 = v0[26];
  v31 = v0[27];
  v32 = v0[24];
  v0[22] = 0;
  v33 = sub_232E01AB0();
  MEMORY[0x238395970](v33);

  MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
  sub_232E01370();

  v34 = *(v31 + 8);
  v34(v29, v30);
  if (v32 <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v32;
  }

  v0[35] = v35;
  if (!v27 || (v36 = v0[25], v38 = *(v36 + 112), v37 = *(v36 + 120), , v39 = sub_232DC9A94(v38, v37), (v0[36] = v40) == 0))
  {
    v68 = v0[28];
    v69 = v0[26];
    sub_232E01270();
    sub_232E01360();
    v34(v68, v69);
    v70 = swift_task_alloc();
    v0[48] = v70;
    *v70 = v0;
    v71 = sub_232DEB7EC;
LABEL_50:
    v70[1] = v71;
    v74 = v0[25];

    return sub_232DE9558();
  }

  v41 = v39;
  v42 = v40;
  if ((sub_232DF1404(0, 0xC000000000000000, v39, v40) & 1) == 0)
  {
    v72 = v0[28];
    v73 = v0[26];

    sub_232E01270();
    sub_232E01360();
    v34(v72, v73);
    v70 = swift_task_alloc();
    v0[44] = v70;
    *v70 = v0;
    v71 = sub_232DEB40C;
    goto LABEL_50;
  }

  v43 = v0[28];
  v89 = v0[30];
  v91 = v0[26];
  v86 = v41;
  v87 = v42;
  v44 = sub_232DF173C(v0[23], v41, v42);
  v46 = v45;
  v48 = v47;
  v0[37] = v47;
  sub_232E01270();
  v95 = 0xE000000000000000;
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000019, 0x8000000232E0D7D0);
  v49 = MEMORY[0x277D837D0];
  v50 = MEMORY[0x238395A10](v44, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v50);

  MEMORY[0x238395970](0x657461647075202CLL, 0xEB00000000203A64);
  v51 = MEMORY[0x238395A10](v46, v49);
  MEMORY[0x238395970](v51);
  v52 = v93;

  MEMORY[0x238395970](0x6574656C6564202CLL, 0xEB00000000203A64);
  v85 = v48;
  v53 = MEMORY[0x238395A10](v48, v49);
  MEMORY[0x238395970](v53);

  sub_232E01360();

  v34(v43, v91);

  sub_232DC2F90(v54);
  v55 = v89;
  v92 = v44;
  v94 = MEMORY[0x277D84F90];
  v56 = v93[30];
  if (v89 < 0 || (v89 & 0x4000000000000000) != 0)
  {
    goto LABEL_60;
  }

  for (i = v56[2]; i; v56 = v52[30])
  {
    v58 = 0;
    v88 = v52 + 18;
    v90 = v55 & 0xC000000000000001;
    v59 = v56 + 4;
    while (1)
    {
      if (v90)
      {
        v60 = MEMORY[0x238395D50](v58, v93[30]);
      }

      else
      {
        if (v58 >= v56[2])
        {
          goto LABEL_59;
        }

        v60 = v59[v58];
      }

      v61 = v60;
      v62 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v52 = v56;
      v63 = [v60 identifier];
      v64 = sub_232E014D0();
      v66 = v65;

      v93[18] = v64;
      v93[19] = v66;
      v55 = swift_task_alloc();
      *(v55 + 16) = v88;
      LOBYTE(v64) = sub_232DF7F9C(sub_232DB0E78, v55, v92);

      if (v64)
      {
        sub_232E01950();
        v67 = *(v94 + 16);
        sub_232E01980();
        sub_232E01990();
        v55 = &v94;
        sub_232E01960();
      }

      else
      {
      }

      v56 = v52;
      ++v58;
      if (v62 == i)
      {
        v52 = v93;
        v75 = v94;
        v76 = v93[30];
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    i = sub_232E019C0();
  }

  v75 = MEMORY[0x277D84F90];
LABEL_62:

  v52[38] = v75;
  if (*(v85 + 16))
  {
    v78 = swift_task_alloc();
    v52[39] = v78;
    *v78 = v52;
    v78[1] = sub_232DEB0E8;
    v79 = v52[25];

    return sub_232DEC2F4(v85, v86, v87);
  }

  else
  {

    v52[41] = v87;
    v80 = swift_task_alloc();
    v52[42] = v80;
    *v80 = v52;
    v80[1] = sub_232DEB2C0;
    v81 = v52[38];
    v82 = v52[35];
    v83 = v52[25];

    return sub_232DECA3C(v81, v82, v86, v87);
  }
}

uint64_t sub_232DEA7A0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  if (v3)
  {
    v4 = *(v1 + 240);
    v5 = *(v1 + 200);

    v6 = sub_232DEBC40;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 200);
    v6 = sub_232DEA8C8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_232DEA8C8()
{
  v80 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  *(v0 + 264) = v1;
  *(v0 + 272) = v2;
  v3 = sub_232DF26FC(*(v0 + 184), v1, v2);
  if (v3 == 2)
  {
    v4 = *(v0 + 240);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 208);

    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(v1, v2);
    (*(v6 + 8))(v5, v7);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);

    v10 = *(v0 + 8);

    return v10();
  }

  v12 = v3;
  v13 = *(v0 + 232);
  sub_232E01270();
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_232E018F0();
  v14 = &v78;
  MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
  v15 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v16 = 0;
    if (v15 != 2)
    {
      goto LABEL_14;
    }

    v18 = *(v1 + 16);
    v17 = *(v1 + 24);
    v19 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v19)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v2);
    goto LABEL_14;
  }

  LODWORD(v16) = HIDWORD(v1) - v1;
  if (__OFSUB__(HIDWORD(v1), v1))
  {
    goto LABEL_41;
  }

  v16 = v16;
LABEL_14:
  v20 = *(v0 + 232);
  v21 = *(v0 + 208);
  v22 = *(v0 + 216);
  v23 = *(v0 + 192);
  *(v0 + 176) = v16;
  v24 = sub_232E01AB0();
  MEMORY[0x238395970](v24);

  MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
  sub_232E01370();

  v25 = *(v22 + 8);
  v25(v20, v21);
  if (v23 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23;
  }

  *(v0 + 280) = v26;
  if (!v12 || (v27 = *(v0 + 200), v29 = *(v27 + 112), v28 = *(v27 + 120), , v30 = sub_232DC9A94(v29, v28), (*(v0 + 288) = v31) == 0))
  {
    v56 = *(v0 + 224);
    v57 = *(v0 + 208);
    sub_232E01270();
    sub_232E01360();
    v25(v56, v57);
    v58 = swift_task_alloc();
    *(v0 + 384) = v58;
    *v58 = v0;
    v59 = sub_232DEB7EC;
LABEL_35:
    v58[1] = v59;
    v62 = *(v0 + 200);

    return sub_232DE9558();
  }

  v32 = v30;
  v33 = v31;
  if ((sub_232DF1404(v1, v2, v30, v31) & 1) == 0)
  {
    v60 = *(v0 + 224);
    v61 = *(v0 + 208);

    sub_232E01270();
    sub_232E01360();
    v25(v60, v61);
    v58 = swift_task_alloc();
    *(v0 + 352) = v58;
    *v58 = v0;
    v59 = sub_232DEB40C;
    goto LABEL_35;
  }

  v34 = *(v0 + 224);
  v74 = *(v0 + 240);
  v77 = *(v0 + 208);
  v72 = v32;
  v73 = v33;
  v35 = sub_232DF173C(*(v0 + 184), v32, v33);
  v37 = v36;
  v39 = v38;
  *(v0 + 296) = v38;
  sub_232E01270();
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000019, 0x8000000232E0D7D0);
  v40 = MEMORY[0x277D837D0];
  v41 = MEMORY[0x238395A10](v35, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v41);

  MEMORY[0x238395970](0x657461647075202CLL, 0xEB00000000203A64);
  v42 = MEMORY[0x238395A10](v37, v40);
  MEMORY[0x238395970](v42);

  MEMORY[0x238395970](0x6574656C6564202CLL, 0xEB00000000203A64);
  v71 = v39;
  v43 = MEMORY[0x238395A10](v39, v40);
  MEMORY[0x238395970](v43);

  sub_232E01360();

  v25(v34, v77);
  v78 = v35;

  sub_232DC2F90(v44);
  v14 = v74;
  v76 = v78;
  v78 = MEMORY[0x277D84F90];
  v45 = *(v0 + 240);
  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
    goto LABEL_42;
  }

  for (i = *(v45 + 16); i; v45 = *(v0 + 240))
  {
    v47 = 0;
    v75 = v14 & 0xC000000000000001;
    while (1)
    {
      if (v75)
      {
        v48 = MEMORY[0x238395D50](v47, *(v0 + 240));
      }

      else
      {
        if (v47 >= *(v45 + 16))
        {
          goto LABEL_40;
        }

        v48 = *(v45 + 32 + 8 * v47);
      }

      v49 = v48;
      v50 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      v51 = [v48 identifier];
      v52 = sub_232E014D0();
      v54 = v53;

      *(v0 + 144) = v52;
      *(v0 + 152) = v54;
      v14 = swift_task_alloc();
      *(v14 + 16) = v0 + 144;
      LOBYTE(v52) = sub_232DF7F9C(sub_232DB0E78, v14, v76);

      if (v52)
      {
        sub_232E01950();
        v55 = *(v78 + 16);
        sub_232E01980();
        sub_232E01990();
        v14 = &v78;
        sub_232E01960();
      }

      else
      {
      }

      ++v47;
      if (v50 == i)
      {
        v63 = *(v0 + 240);
        v64 = v78;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    i = sub_232E019C0();
  }

  v64 = MEMORY[0x277D84F90];
LABEL_44:

  *(v0 + 304) = v64;
  if (*(v71 + 16))
  {
    v65 = swift_task_alloc();
    *(v0 + 312) = v65;
    *v65 = v0;
    v65[1] = sub_232DEB0E8;
    v66 = *(v0 + 200);

    return sub_232DEC2F4(v71, v72, v73);
  }

  else
  {

    *(v0 + 328) = v73;
    v67 = swift_task_alloc();
    *(v0 + 336) = v67;
    *v67 = v0;
    v67[1] = sub_232DEB2C0;
    v68 = *(v0 + 304);
    v69 = *(v0 + 280);
    v70 = *(v0 + 200);

    return sub_232DECA3C(v68, v69, v72, v73);
  }
}

uint64_t sub_232DEB0E8(__int16 a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 312);
  v8 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v10 = v6[37];
    v9 = v6[38];
    v11 = v6[36];
    v12 = v6[25];

    return MEMORY[0x2822009F8](sub_232DEBCC0, v12, 0);
  }

  else
  {
    v14 = v6[36];
    v13 = v6[37];

    v6[41] = a2;
    v15 = swift_task_alloc();
    v6[42] = v15;
    *v15 = v8;
    v15[1] = sub_232DEB2C0;
    v16 = v6[35];
    v17 = v6[25];
    v18 = v6[38];

    return sub_232DECA3C(v18, v16, a1, a2);
  }
}

uint64_t sub_232DEB2C0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v10 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = v2[25];
    v5 = sub_232DEBD34;
  }

  else
  {
    v6 = v2[41];
    v7 = v2[38];
    v8 = v2[25];

    v5 = sub_232DEE418;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DEB40C()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[30];

    v2[47] = v0;
    v6 = v2[25];
    v7 = sub_232DEB778;
  }

  else
  {
    v6 = v2[25];
    v7 = sub_232DEB538;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_232DEB538()
{
  v1 = sub_232DB3120(MEMORY[0x277D84F90]);
  v0[45] = v1;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_232DEB5F0;
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[25];

  return sub_232DECA3C(v4, v3, 2, v1);
}

uint64_t sub_232DEB5F0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 368);
  v5 = *v1;

  v6 = *(v2 + 360);
  v7 = *(v2 + 240);
  if (v0)
  {

    *(v3 + 376) = v0;
    v8 = *(v3 + 200);
    v9 = sub_232DEB778;
  }

  else
  {
    v10 = *(v3 + 200);

    v9 = sub_232DEE418;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_232DEB778()
{
  sub_232DB091C(v0[33], v0[34]);
  v1 = v0[47];
  v3 = v0[28];
  v2 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DEB7EC()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[30];

    v2[51] = v0;
    v6 = v2[25];
    v7 = sub_232DEBBCC;
  }

  else
  {
    v6 = v2[25];
    v7 = sub_232DEB918;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_232DEB918()
{
  v1 = sub_232DB3120(MEMORY[0x277D84F90]);
  v0[49] = v1;
  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_232DEB9D0;
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[25];

  return sub_232DECA3C(v4, v3, 2, v1);
}

uint64_t sub_232DEB9D0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 400);
  v5 = *v1;

  v6 = *(v2 + 392);
  v7 = *(v2 + 240);
  if (v0)
  {

    *(v3 + 408) = v0;
    v8 = *(v3 + 200);
    v9 = sub_232DEBBCC;
  }

  else
  {
    v10 = *(v3 + 200);

    v9 = sub_232DEBB58;
    v8 = v10;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_232DEBB58()
{
  sub_232DB091C(v0[33], v0[34]);
  v2 = v0[28];
  v1 = v0[29];

  v3 = v0[1];

  return v3();
}

uint64_t sub_232DEBBCC()
{
  sub_232DB091C(v0[33], v0[34]);
  v1 = v0[51];
  v3 = v0[28];
  v2 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DEBC40()
{
  v1 = v0[31];
  v2 = v0[32];
  swift_willThrow();

  v3 = v0[32];
  v5 = v0[28];
  v4 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DEBCC0()
{
  sub_232DB091C(v0[33], v0[34]);
  v1 = v0[40];
  v3 = v0[28];
  v2 = v0[29];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DEBD34()
{
  v1 = v0[41];
  v2 = v0[38];
  sub_232DB091C(v0[33], v0[34]);

  v3 = v0[43];
  v5 = v0[28];
  v4 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DEBDE0()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_232DCD970;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_33;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DEBF1C()
{
  v26[3] = *MEMORY[0x277D85DE8];
  v23 = sub_232E012A0();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E00AB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_232E00BE0();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232DE9A58();
  v13 = [objc_opt_self() defaultManager];
  v14 = sub_232E00B70();
  v26[0] = 0;
  v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v26];

  if (v15)
  {
    v16 = v26[0];
    sub_232E00AA0();
    sub_232E00A90();
    sub_232E00B60();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v17 = v26[0];
    v18 = sub_232E00AE0();

    swift_willThrow();
    sub_232E01270();
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000028, 0x8000000232E0D970);
    v19 = sub_232E00BC0();
    MEMORY[0x238395970](v19);

    MEMORY[0x238395970](0x6162206D6F726620, 0xEE00203A70756B63);
    v25 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    sub_232E019A0();
    sub_232E01380();

    (*(v0 + 8))(v3, v23);
  }

  result = (*(v9 + 8))(v12, v24);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DEC2F4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 160) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  v5 = sub_232E00BE0();
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v8 = sub_232E012A0();
  *(v4 + 80) = v8;
  v9 = *(v8 - 8);
  *(v4 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DEC44C, v3, 0);
}

uint64_t sub_232DEC44C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_232E01270();
  sub_232E018F0();

  v6 = MEMORY[0x238395A10](v5, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v6);

  sub_232E01360();

  (*(v2 + 8))(v1, v3);
  v7 = *(v5 + 16);

  if (v7)
  {
    v9 = 0;
    v10 = *(v0 + 24);
    v11 = *(v0 + 16) + 40;
    do
    {
      v12 = (v11 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v7)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }

        v14 = *(v12 - 1);
        v15 = *v12;

        v16 = sub_232DD5634(v14, v15);
        if (v17)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }

      v18 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232DC2ADC();
      }

      v19 = v18;
      v20 = 16 * v18;
      v21 = *(*(v10 + 48) + v20 + 8);

      v22 = (*(v10 + 56) + v20);
      v23 = *v22;
      v24 = v22[1];
      sub_232DC2630(v19, v10);
      sub_232DB091C(v23, v24);
    }

    while (v9 != v7);
  }

  else
  {
    v10 = *(v0 + 24);
  }

LABEL_14:
  *(v0 + 104) = v10;
  v25 = *(v0 + 32);
  v26 = *(v0 + 16);
  v27 = *(v0 + 160);
  *(v0 + 112) = sub_232DE833C(result);
  v28 = sub_232DD2640(v27, v10);
  v30 = v29;
  *(v0 + 120) = v28;
  *(v0 + 128) = v29;
  v31 = swift_task_alloc();
  *(v0 + 136) = v31;
  *(v31 + 16) = v26;
  v32 = swift_task_alloc();
  *(v0 + 144) = v32;
  *v32 = v0;
  v32[1] = sub_232DEC6F0;

  return sub_232DC7F98(v28, v30, &unk_232E07E20, v31);
}

uint64_t sub_232DEC6F0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[17];
  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {
    v9 = v2[13];
    v10 = v2[4];

    sub_232DB091C(v7, v6);

    v11 = sub_232DEC9C4;
  }

  else
  {
    v10 = v2[4];
    sub_232DB091C(v2[15], v2[16]);

    v11 = sub_232DEC8AC;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_232DEC8AC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  sub_232DC9AF4(*(*(v0 + 32) + 112), *(*(v0 + 32) + 120), *(v0 + 160), *(v0 + 104));
  sub_232DE9A58();
  sub_232E00B80();
  v7 = *(v5 + 8);
  v7(v2, v4);
  sub_232DB5548(v6, v3);
  v7(v3, v4);

  v8 = *(v0 + 8);
  v9 = *(v0 + 104);
  v10 = *(v0 + 160);

  return v8(v10, v9);
}

uint64_t sub_232DEC9C4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_232DECA3C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 184) = a3;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DECAEC, v4, 0);
}

uint64_t sub_232DECAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 72);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *(v5 + 80);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 < 0)
  {
    v45 = *(v5 + 72);
  }

  a1 = sub_232E019C0();
  v7 = a1;
  v8 = *(v5 + 80);
  if (!v8)
  {
    goto LABEL_22;
  }

LABEL_3:
  v9 = *(v5 + 88);
  v10 = *(v5 + 184);
  v11 = *(v5 + 72);

  v12 = sub_232DEDF44(0, v7, v8, v11, v8);
  *(v5 + 120) = v12;
  v13 = swift_allocObject();
  *(v5 + 128) = v13;
  *(v13 + 16) = v10;
  *(v13 + 24) = v9;
  v14 = *(v12 + 16);
  *(v5 + 136) = v14;
  if (v14)
  {
    v15 = v13;
    v16 = *(v5 + 88);
    v17 = sub_232DEE238();
    *(v5 + 144) = v17;
    *(v5 + 152) = 0;
    v18 = *(v12 + 16);

    if (v18)
    {
      v20 = *(v5 + 104);
      v19 = *(v5 + 112);
      v21 = *(v5 + 96);
      v22 = *(v12 + 32);
      v23 = sub_232E016B0();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v19, 1, 1, v23);
      v25 = swift_allocObject();
      v25[2] = v21;
      v25[3] = v17;
      v25[4] = v22;
      v25[5] = v21;
      v25[6] = v15;
      sub_232DA7734(v19, v20);
      v26 = (*(v24 + 48))(v20, 1, v23);
      swift_retain_n();

      v27 = *(v5 + 104);
      if (v26 == 1)
      {
        sub_232DA77A4(*(v5 + 104));
      }

      else
      {
        sub_232E016A0();
        (*(v24 + 8))(v27, v23);
      }

      v36 = v25[2];
      v37 = v25[3];
      swift_unknownObjectRetain();

      if (v36)
      {
        swift_getObjectType();
        v38 = sub_232E01630();
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      sub_232DA77A4(*(v5 + 112));
      if (v40 | v38)
      {
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = v38;
        *(v5 + 40) = v40;
      }

      v41 = MEMORY[0x277D84F78];
      v42 = swift_task_create();
      *(v5 + 160) = v42;
      v43 = *(MEMORY[0x277D857C8] + 4);
      v44 = swift_task_alloc();
      *(v5 + 168) = v44;
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v44 = v5;
      v44[1] = sub_232DECEEC;
      a5 = MEMORY[0x277D84950];
      a3 = v41 + 8;
      a2 = v42;
      a4 = a1;

      return MEMORY[0x282200430](a1, a2, a3, a4, a5);
    }

LABEL_23:
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v28 = *(v5 + 88);

  v29 = *(v5 + 128);
  v31 = *(v5 + 104);
  v30 = *(v5 + 112);
  swift_beginAccess();
  v32 = *(v29 + 24);
  v33 = *(v29 + 16);

  v34 = *(v5 + 8);

  return v34(v33, v32);
}

uint64_t sub_232DECEEC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v10 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = v2[15];
    v6 = v2[12];

    v7 = sub_232DED394;
    v8 = v6;
  }

  else
  {
    v8 = v2[12];
    v7 = sub_232DED020;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_232DED020()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];

  if (v2 + 1 == v3)
  {
    v9 = v0[15];

    v10 = v0[16];
    v12 = v0[13];
    v11 = v0[14];
    swift_beginAccess();
    v13 = *(v10 + 24);
    v14 = *(v10 + 16);

    v15 = v0[1];

    return v15(v14, v13);
  }

  else
  {
    v17 = v0[19] + 1;
    v0[19] = v17;
    v18 = v0[15];
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = v0[18];
      v20 = v0[16];
      v22 = v0[13];
      v21 = v0[14];
      v23 = v0[12];
      v24 = *(v18 + 8 * v17 + 32);
      v25 = sub_232E016B0();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v21, 1, 1, v25);
      v27 = swift_allocObject();
      v27[2] = v23;
      v27[3] = v19;
      v27[4] = v24;
      v27[5] = v23;
      v27[6] = v20;
      sub_232DA7734(v21, v22);
      LODWORD(v21) = (*(v26 + 48))(v22, 1, v25);
      swift_retain_n();

      v28 = v0[13];
      if (v21 == 1)
      {
        sub_232DA77A4(v0[13]);
      }

      else
      {
        sub_232E016A0();
        (*(v26 + 8))(v28, v25);
      }

      v29 = v27[2];
      v30 = v27[3];
      swift_unknownObjectRetain();

      if (v29)
      {
        swift_getObjectType();
        v31 = sub_232E01630();
        v33 = v32;
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
        v33 = 0;
      }

      sub_232DA77A4(v0[14]);
      if (v33 | v31)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v31;
        v0[5] = v33;
      }

      v34 = MEMORY[0x277D84F78];
      v35 = swift_task_create();
      v0[20] = v35;
      v36 = *(MEMORY[0x277D857C8] + 4);
      v37 = swift_task_alloc();
      v0[21] = v37;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v37 = v0;
      v37[1] = sub_232DECEEC;
      v8 = MEMORY[0x277D84950];
      v6 = v34 + 8;
      v5 = v35;
      v7 = v4;
    }

    return MEMORY[0x282200430](v4, v5, v6, v7, v8);
  }
}

uint64_t sub_232DED394()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_232DED40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v8 = sub_232E012A0();
  v6[15] = v8;
  v9 = *(v8 - 8);
  v6[16] = v9;
  v10 = *(v9 + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DED4D4, a5, 0);
}

uint64_t sub_232DED4D4()
{
  v1 = v0[17];
  v2 = v0[12];
  sub_232E01270();
  sub_232E018F0();

  if (v2 >> 62)
  {
    if (v0[12] < 0)
    {
      v11 = v0[12];
    }

    v3 = sub_232E019C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v0[11] = v3;
  v7 = sub_232E01AB0();
  MEMORY[0x238395970](v7);

  MEMORY[0x238395970](0x736D65746920, 0xE600000000000000);
  sub_232E01370();

  (*(v5 + 8))(v4, v6);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_232DED664;
  v9 = v0[12];

  return sub_232DA8D10(v9);
}

uint64_t sub_232DED664(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_232DED77C, v3, 0);
}

uint64_t sub_232DED77C()
{
  v24 = v0;
  v1 = v0[19];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v19 = v0[19];
    }

    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[14];
    v3 = v0[12];
    swift_beginAccess();
    v4 = sub_232DF1E1C(v3);
    v5 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_232DDD348(v4, sub_232DDD294, 0, isUniquelyReferenced_nonNull_native, &v23);

    v7 = v0[19];
    v8 = v0[13];
    v9 = v0[14];
    *(v2 + 24) = v23;
    v10 = swift_endAccess();
    v0[20] = sub_232DE833C(v10);
    swift_beginAccess();
    v11 = *(v2 + 24);
    v12 = *(v9 + 16);

    v13 = sub_232DD2640(v12, v11);
    v15 = v14;

    v0[21] = v13;
    v0[22] = v15;
    v16 = swift_task_alloc();
    v0[23] = v16;
    *(v16 + 16) = v7;
    v17 = swift_task_alloc();
    v0[24] = v17;
    *v17 = v0;
    v17[1] = sub_232DED9E4;

    return sub_232DC7F98(v13, v15, &unk_232E07E40, v16);
  }

  v20 = v0[19];
  v21 = v0[17];

  v22 = v0[1];

  return v22();
}

uint64_t sub_232DED9E4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v13 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = sub_232DEDBF4;
  }

  else
  {
    v7 = v2[22];
    v6 = v2[23];
    v9 = v2[20];
    v8 = v2[21];
    v10 = v2[19];
    v11 = v2[13];

    sub_232DB091C(v8, v7);

    v5 = sub_232DEDB3C;
    v4 = v11;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_232DEDB3C()
{
  v1 = v0[13];
  v2 = v0[14];
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v2 + 16);

  sub_232DC9AF4(v4, v5, v6, v3);
  v7 = v0[17];

  v8 = v0[1];

  return v8();
}

uint64_t sub_232DEDBF4()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[17];

  sub_232DB091C(v3, v1);

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

uint64_t sub_232DEDC94(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DEDCB4, 0, 0);
}

uint64_t sub_232DEDCB4()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_232DDD69C();
  v3 = sub_232E015C0();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_232DDCC0C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_27;
  v0[14] = v4;
  [v1 indexSearchableItems:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DEDDF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DEDE10, 0, 0);
}

uint64_t sub_232DEDE10()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = sub_232E015C0();
  v0[20] = v3;
  v0[2] = v0;
  v0[3] = sub_232DDCE70;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_13_0;
  v0[14] = v4;
  [v2 deleteSearchableItemsWithIdentifiers:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DEDF44(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (v12)
    {
      break;
    }

    v13 = __OFADD__(v11, a3);
    v11 += a3;
    if (v13)
    {
      v11 = (v11 >> 63) ^ 0x8000000000000000;
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v14 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_232DF9010(0, v10, 0);
  if (v10)
  {
    v15 = v14;
    while (1)
    {
      v16 = v15 <= a2;
      if (a3 > 0)
      {
        v16 = v15 >= a2;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v15, a3))
      {
        v14 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v15 + a3;
      }

      v17 = sub_232DCFD20(v15, a4, a5);
      if (v5)
      {
        goto LABEL_37;
      }

      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_232DF9010((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      *(v29 + 16) = v19 + 1;
      *(v29 + 8 * v19 + 32) = v17;
      v15 = v14;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v20 = v14 <= a2;
    if (a3 > 0)
    {
      v20 = v14 >= a2;
    }

    if (v20)
    {
LABEL_25:

      return v29;
    }

    while (1)
    {
      v22 = __OFADD__(v14, a3) ? ((v14 + a3) >> 63) ^ 0x8000000000000000 : v14 + a3;
      v23 = sub_232DCFD20(v14, a4, a5);
      if (v5)
      {
        break;
      }

      v25 = *(v29 + 16);
      v24 = *(v29 + 24);
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_232DF9010((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      *(v29 + 16) = v25 + 1;
      *(v29 + 8 * v25 + 32) = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v14 = v22;
      if (v26)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:

  __break(1u);
  return result;
}

uint64_t sub_232DEE19C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return sub_232DEDDF0(a1, v4);
}

unint64_t sub_232DEE238()
{
  result = qword_2814E8180;
  if (!qword_2814E8180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7318, &qword_232E05EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8180);
  }

  return result;
}

uint64_t sub_232DEE29C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_232DA7C78;

  return sub_232DED40C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_232DEE364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA7C78;

  return sub_232DEDC94(a1, v4);
}

BOOL sub_232DEE470(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_232E019C0();
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x238395D50](v3, a1);
    }

    else
    {
      if (v3 >= *(v12 + 16))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v7 = [v5 offerID];
    sub_232E014D0();

    LOBYTE(v7) = sub_232E015A0();

    if (v7)
    {

      return v2 != v4;
    }

    sub_232DB3688(0, &qword_27DDD7788, 0x277D82BB8);
    v8 = [v6 familyID];
    sub_232DB3688(0, &qword_2814E7BB8, 0x277CCABB0);
    v9 = sub_232E01820();
    v10 = sub_232E01830();

    v3 = v4 + 1;
  }

  while ((v10 & 1) == 0);
  return v2 != v4;
}

id AppleArcadeSubscriptionValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id AppleArcadeSubscriptionValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleArcadeSubscriptionValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DEE778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77B8, &qword_232E07F28);
  v6[18] = v7;
  v8 = *(v7 - 8);
  v6[19] = v8;
  v9 = *(v8 + 64) + 15;
  v6[20] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77C0, &unk_232E07F30) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7308, &qword_232E05ED0) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v12 = sub_232E010C0();
  v6[23] = v12;
  v13 = *(v12 - 8);
  v6[24] = v13;
  v14 = *(v13 + 64) + 15;
  v6[25] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77C8, &qword_232E07F40);
  v6[26] = v15;
  v16 = *(v15 - 8);
  v6[27] = v16;
  v17 = *(v16 + 64) + 15;
  v6[28] = swift_task_alloc();
  v18 = sub_232E01080();
  v6[29] = v18;
  v19 = *(v18 - 8);
  v6[30] = v19;
  v20 = *(v19 + 64) + 15;
  v6[31] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A0, &qword_232E07EE8) - 8) + 64) + 15;
  v6[32] = swift_task_alloc();
  v22 = sub_232E01000();
  v6[33] = v22;
  v23 = *(v22 - 8);
  v6[34] = v23;
  v24 = *(v23 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v25 = sub_232E010E0();
  v6[37] = v25;
  v26 = *(v25 - 8);
  v6[38] = v26;
  v27 = *(v26 + 64) + 15;
  v6[39] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A8, &unk_232E07EF0) - 8) + 64) + 15;
  v6[40] = swift_task_alloc();
  v29 = sub_232E01110();
  v6[41] = v29;
  v30 = *(v29 - 8);
  v6[42] = v30;
  v31 = *(v30 + 64) + 15;
  v6[43] = swift_task_alloc();
  v32 = sub_232E012A0();
  v6[44] = v32;
  v33 = *(v32 - 8);
  v6[45] = v33;
  v34 = *(v33 + 64) + 15;
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DEEBC8, 0, 0);
}

uint64_t sub_232DEEBC8()
{
  v1 = v0[45];
  v2 = v0[46];
  v35 = v0[44];
  v40 = v0[42];
  v41 = v0[41];
  v36 = v0[40];
  v37 = v0[39];
  v3 = v0[38];
  v38 = v0[37];
  v39 = v0[43];
  v45 = v0[35];
  v43 = v0[36];
  v44 = v0[34];
  v46 = v0[33];
  v42 = v0[32];
  v47 = v0[31];
  v48 = v0[22];
  v49 = v0[21];
  v50 = v0[25];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
  sub_232E01250();
  sub_232E018F0();

  MEMORY[0x238395970](v8, v6);
  MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
  MEMORY[0x238395970](v7, v4);
  sub_232E01360();

  v9 = *(v1 + 8);
  v0[47] = v9;
  v0[48] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v35);
  v11 = *(v5 + OBJC_IVAR___TPSAppIntentsHelper_clientLabel);
  v10 = *(v5 + OBJC_IVAR___TPSAppIntentsHelper_clientLabel + 8);
  v12 = *(v5 + OBJC_IVAR___TPSAppIntentsHelper_source);
  v13 = objc_opt_self();

  v14 = [v13 defaultEnvironment];
  v15 = sub_232DF1294();
  v16 = MEMORY[0x277CEB188];
  v0[5] = v15;
  v0[6] = v16;
  v0[2] = v14;
  sub_232E010D0();
  (*(v3 + 104))(v37, *MEMORY[0x277CEB068], v38);
  sub_232E01100();
  v17 = sub_232E010F0();
  v19 = v18;

  v0[49] = v17;
  (*(v40 + 8))(v39, v41);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v20 = sub_232E01010();
  (*(*(v20 - 8) + 56))(v42, 1, 1, v20);

  sub_232E00FF0();
  (*(v44 + 16))(v45, v43, v46);

  sub_232E01070();
  ObjectType = swift_getObjectType();
  v22 = sub_232E01180();
  (*(*(v22 - 8) + 56))(v48, 1, 1, v22);
  v23 = sub_232E01130();
  (*(*(v23 - 8) + 56))(v49, 1, 1, v23);
  sub_232E010B0();
  sub_232E010A0();
  v24 = sub_232E00FE0();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_232E00FD0();
  v0[50] = v27;
  v28 = *(MEMORY[0x277CEAFE8] + 4);
  v29 = swift_task_alloc();
  v0[51] = v29;
  *v29 = v0;
  v29[1] = sub_232DEF064;
  v30 = v0[31];
  v31 = v0[28];
  v32 = v0[25];
  v33 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DA80](v31, v30, v32, v27, v33, ObjectType, v19);
}

uint64_t sub_232DEF064()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = v2[50];
  (*(v2[24] + 8))(v2[25], v2[23]);

  if (v0)
  {
    v6 = sub_232DEF438;
  }

  else
  {
    v6 = sub_232DEF1E8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_232DEF1E8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  sub_232E01090();
  sub_232E01120();
  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 392);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);
  v9 = *(v0 + 240);
  v30 = *(v0 + 248);
  v32 = *(v0 + 264);
  v10 = *(v0 + 224);
  v28 = *(v0 + 232);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  if (v14)
  {
    v15 = [*(v0 + 88) value];

    sub_232E01850();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v30, v28);
    (*(v8 + 8))(v7, v32);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v30, v28);
    (*(v8 + 8))(v7, v32);
    *v13 = 0u;
    v13[1] = 0u;
  }

  v16 = *(v0 + 368);
  v17 = *(v0 + 344);
  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v21 = *(v0 + 280);
  v20 = *(v0 + 288);
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 224);
  v25 = *(v0 + 200);
  v29 = *(v0 + 176);
  v31 = *(v0 + 168);
  v33 = *(v0 + 160);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_232DEF438()
{
  v1 = v0[52];
  v2 = v0[46];
  v15 = v0[47];
  v16 = v0[48];
  v3 = v0[44];
  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[39];
  v4 = v0[36];
  v5 = v0[34];
  v18 = v0[49];
  v19 = v0[33];
  v6 = v0[31];
  v23 = v0[35];
  v24 = v0[32];
  v7 = v0[30];
  v17 = v0[29];
  v25 = v0[28];
  v26 = v0[25];
  v27 = v0[22];
  v28 = v0[21];
  v29 = v0[20];
  sub_232E01250();
  sub_232E018F0();

  swift_getErrorValue();
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[9];
  v11 = sub_232E01B50();
  MEMORY[0x238395970](v11);

  sub_232E01380();

  v15(v2, v3);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v17);
  (*(v5 + 8))(v4, v19);

  v12 = v0[1];
  v13 = v0[52];

  return v12();
}

uint64_t sub_232DEF7EC(int a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[10] = a5;
  v5[11] = _Block_copy(aBlock);
  v8 = sub_232E014D0();
  v10 = v9;
  v5[12] = v9;
  v11 = sub_232E014D0();
  v13 = v12;
  v5[13] = v12;
  if (a3)
  {
    v14 = sub_232E01470();
  }

  else
  {
    v14 = 0;
  }

  v5[14] = v14;
  a5;
  v15 = swift_task_alloc();
  v5[15] = v15;
  *v15 = v5;
  v15[1] = sub_232DF1400;

  return sub_232DEE778((v5 + 2), v8, v10, v11, v13);
}

uint64_t sub_232DEF924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_232E01150();
  v7[26] = v8;
  v9 = *(v8 - 8);
  v7[27] = v9;
  v10 = *(v9 + 64) + 15;
  v7[28] = swift_task_alloc();
  v11 = sub_232E01060();
  v7[29] = v11;
  v12 = *(v11 - 8);
  v7[30] = v12;
  v13 = *(v12 + 64) + 15;
  v7[31] = swift_task_alloc();
  v14 = sub_232E012A0();
  v7[32] = v14;
  v15 = *(v14 - 8);
  v7[33] = v15;
  v16 = *(v15 + 64) + 15;
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A0, &qword_232E07EE8) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v18 = sub_232E01000();
  v7[37] = v18;
  v19 = *(v18 - 8);
  v7[38] = v19;
  v20 = *(v19 + 64) + 15;
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v21 = sub_232E010E0();
  v7[41] = v21;
  v22 = *(v21 - 8);
  v7[42] = v22;
  v23 = *(v22 + 64) + 15;
  v7[43] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A8, &unk_232E07EF0) - 8) + 64) + 15;
  v7[44] = swift_task_alloc();
  v25 = sub_232E01110();
  v7[45] = v25;
  v26 = *(v25 - 8);
  v7[46] = v26;
  v27 = *(v26 + 64) + 15;
  v7[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DEFC44, 0, 0);
}

uint64_t sub_232DEFC44()
{
  v1 = v0;
  v51 = 0x65756C6176;
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[44];
  v5 = v0[42];
  v6 = v0[43];
  v50 = v0[41];
  v36 = v0[45];
  v38 = v0[36];
  v7 = v0[25];
  v44 = v0[40];
  v46 = v0[24];
  v40 = v0[23];
  v42 = v0[22];
  v8 = *(v7 + OBJC_IVAR___TPSAppIntentsHelper_clientLabel + 8);
  v48 = *(v7 + OBJC_IVAR___TPSAppIntentsHelper_clientLabel);
  v9 = *(v7 + OBJC_IVAR___TPSAppIntentsHelper_source);
  v10 = objc_opt_self();

  v11 = [v10 defaultEnvironment];
  v12 = sub_232DF1294();
  v0[2] = v11;
  v13 = v0 + 2;
  v14 = MEMORY[0x277CEB188];
  v13[3] = v12;
  v13[4] = v14;
  sub_232E010D0();
  (*(v5 + 104))(v6, *MEMORY[0x277CEB068], v50);
  sub_232E01100();
  v15 = sub_232E010F0();
  v49 = v16;

  v13[46] = v15;
  (*(v3 + 8))(v2, v36);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v17 = sub_232E01010();
  (*(*(v17 - 8) + 56))(v38, 1, 1, v17);

  sub_232E00FF0();
  if (v46 && (v18 = v1[24], *(v18 + 16)) && (v19 = sub_232DD5634(0x79747265706F7270, 0xEC000000656D614ELL), (v20 & 1) != 0))
  {
    v21 = (*(v18 + 56) + 16 * v19);
    v22 = v21[1];
    v51 = *v21;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v1[49] = v51;
  v1[50] = v22;
  v23 = v1[38];
  v43 = v1[37];
  v45 = v1[40];
  v24 = v1[35];
  v25 = v1[33];
  v39 = v1[32];
  v41 = v1[39];
  v26 = v1[31];
  v47 = v1[28];
  v35 = v1[22];
  v37 = v1[23];
  v28 = v1[20];
  v27 = v1[21];
  sub_232E01250();
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000014, 0x8000000232E0E440);
  MEMORY[0x238395970](v51, v22);
  MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
  MEMORY[0x238395970](v28, v27);
  MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
  MEMORY[0x238395970](v35, v37);
  sub_232E01360();

  v29 = *(v25 + 8);
  v1[51] = v29;
  v1[52] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v24, v39);
  sub_232E01040();

  sub_232E01050();
  (*(v23 + 16))(v41, v45, v43);
  sub_232E01140();
  ObjectType = swift_getObjectType();
  v31 = *(MEMORY[0x277CEAFF8] + 4);
  v32 = swift_task_alloc();
  v1[53] = v32;
  *v32 = v1;
  v32[1] = sub_232DF0090;
  v33 = v1[28];

  return MEMORY[0x28213DA90](v33, ObjectType, v49);
}

uint64_t sub_232DF0090(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_232DF0738;
  }

  else
  {
    v5 = sub_232DF01A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_232DF01A4()
{
  v1 = *(v0 + 432);
  if (v1)
  {
    v2 = *(v0 + 400);

    v3 = sub_232E017F0();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 value];

      sub_232E01850();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }

    sub_232DB54D8(v0 + 56, v0 + 88);
    if (*(v0 + 112))
    {
      if (swift_dynamicCast())
      {
        v66 = *(v0 + 408);
        v68 = *(v0 + 416);
        v60 = *(v0 + 384);
        v77 = *(v0 + 320);
        v15 = *(v0 + 304);
        v16 = *(v0 + 272);
        v72 = *(v0 + 248);
        v74 = *(v0 + 296);
        v17 = *(v0 + 240);
        v70 = *(v0 + 232);
        v18 = *(v0 + 216);
        v62 = *(v0 + 208);
        v64 = *(v0 + 224);
        v56 = *(v0 + 184);
        v58 = *(v0 + 256);
        v19 = *(v0 + 160);
        v52 = *(v0 + 168);
        v54 = *(v0 + 176);
        v20 = *(v0 + 448);
        sub_232E01250();
        sub_232E018F0();
        MEMORY[0x238395970](0xD000000000000020, 0x8000000232E0E4A0);
        if (v20)
        {
          v21 = 1702195828;
        }

        else
        {
          v21 = 0x65736C6166;
        }

        if (v20)
        {
          v22 = 0xE400000000000000;
        }

        else
        {
          v22 = 0xE500000000000000;
        }

        MEMORY[0x238395970](v21, v22);

        MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
        MEMORY[0x238395970](v19, v52);
        MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
        MEMORY[0x238395970](v54, v56);
        sub_232E01360();

        swift_unknownObjectRelease();
        v66(v16, v58);
        (*(v18 + 8))(v64, v62);
        (*(v17 + 8))(v72, v70);
      }

      else
      {
        v31 = *(v0 + 384);
        v77 = *(v0 + 320);
        v15 = *(v0 + 304);
        v74 = *(v0 + 296);
        v32 = *(v0 + 240);
        v33 = *(v0 + 248);
        v35 = *(v0 + 224);
        v34 = *(v0 + 232);
        v37 = *(v0 + 208);
        v36 = *(v0 + 216);

        swift_unknownObjectRelease();
        (*(v36 + 8))(v35, v37);
        (*(v32 + 8))(v33, v34);
      }

      (*(v15 + 8))(v77, v74);
    }

    else
    {
      v23 = *(v0 + 384);
      v78 = *(v0 + 320);
      v24 = *(v0 + 304);
      v75 = *(v0 + 296);
      v25 = *(v0 + 240);
      v26 = *(v0 + 248);
      v28 = *(v0 + 224);
      v27 = *(v0 + 232);
      v30 = *(v0 + 208);
      v29 = *(v0 + 216);

      swift_unknownObjectRelease();
      (*(v29 + 8))(v28, v30);
      (*(v25 + 8))(v26, v27);
      (*(v24 + 8))(v78, v75);
      sub_232DE94F0(v0 + 88);
    }

    v14 = *(v0 + 152);
    v13 = *(v0 + 56);
    v14[1] = *(v0 + 72);
  }

  else
  {
    v67 = *(v0 + 416);
    v63 = *(v0 + 408);
    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    v57 = *(v0 + 384);
    v76 = *(v0 + 320);
    v8 = *(v0 + 304);
    v9 = *(v0 + 280);
    v71 = *(v0 + 248);
    v73 = *(v0 + 296);
    v10 = *(v0 + 240);
    v69 = *(v0 + 232);
    v11 = *(v0 + 216);
    v59 = *(v0 + 208);
    v61 = *(v0 + 224);
    v53 = *(v0 + 184);
    v55 = *(v0 + 256);
    v12 = *(v0 + 160);
    v50 = *(v0 + 168);
    v51 = *(v0 + 176);
    v65 = *(v0 + 152);
    sub_232E01250();
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0E480);
    MEMORY[0x238395970](v7, v6);

    MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
    MEMORY[0x238395970](v12, v50);
    MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
    MEMORY[0x238395970](v51, v53);
    sub_232E01380();

    swift_unknownObjectRelease();
    v63(v9, v55);
    (*(v11 + 8))(v61, v59);
    (*(v10 + 8))(v71, v69);
    (*(v8 + 8))(v76, v73);
    v13 = 0uLL;
    v14 = v65;
    v65[1] = 0u;
  }

  *v14 = v13;
  v38 = *(v0 + 376);
  v39 = *(v0 + 344);
  v40 = *(v0 + 352);
  v42 = *(v0 + 312);
  v41 = *(v0 + 320);
  v44 = *(v0 + 280);
  v43 = *(v0 + 288);
  v45 = *(v0 + 272);
  v46 = *(v0 + 248);
  v47 = *(v0 + 224);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_232DF0738()
{
  v16 = v0[55];
  v20 = v0[51];
  v21 = v0[52];
  v1 = v0[49];
  v2 = v0[50];
  v24 = v0[48];
  v29 = v0[47];
  v30 = v0[44];
  v31 = v0[43];
  v28 = v0[40];
  v32 = v0[39];
  v26 = v0[38];
  v27 = v0[37];
  v3 = v0[35];
  v33 = v0[36];
  v34 = v0[34];
  v25 = v0[31];
  v22 = v0[30];
  v23 = v0[29];
  v4 = v0[27];
  v19 = v0[28];
  v17 = v0[32];
  v18 = v0[26];
  v14 = v0[22];
  v15 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  sub_232E01250();
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0E480);
  MEMORY[0x238395970](v1, v2);

  MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
  MEMORY[0x238395970](v6, v5);
  MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
  MEMORY[0x238395970](v14, v15);
  MEMORY[0x238395970](8250, 0xE200000000000000);
  swift_getErrorValue();
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[17];
  v10 = sub_232E01B50();
  MEMORY[0x238395970](v10);

  sub_232E01380();

  v20(v3, v17);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v19, v18);
  (*(v22 + 8))(v25, v23);
  (*(v26 + 8))(v28, v27);

  v11 = v0[1];
  v12 = v0[55];

  return v11();
}

uint64_t sub_232DF0B8C(int a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[10] = a5;
  v5[11] = _Block_copy(aBlock);
  v8 = sub_232E014D0();
  v10 = v9;
  v5[12] = v9;
  v11 = sub_232E014D0();
  v13 = v12;
  v5[13] = v12;
  if (a3)
  {
    a3 = sub_232E01470();
  }

  v5[14] = a3;
  a5;
  v14 = swift_task_alloc();
  v5[15] = v14;
  *v14 = v5;
  v14[1] = sub_232DF0CCC;

  return sub_232DEF924((v5 + 2), v8, v10, v11, v13, a3);
}

uint64_t sub_232DF0CCC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  v8 = *(*v1 + 80);
  v9 = *v1;

  if (v2)
  {
    v10 = *(v3 + 88);
    v11 = sub_232E00AD0();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    v12 = *(v3 + 32);
    *(v3 + 48) = *(v3 + 16);
    *(v3 + 64) = v12;
    v13 = *(v3 + 72);
    if (v13)
    {
      v14 = __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      v15 = *(v13 - 8);
      v16 = *(v15 + 64) + 15;
      v17 = swift_task_alloc();
      (*(v15 + 16))(v17, v14, v13);
      v18 = sub_232E01AC0();
      (*(v15 + 8))(v17, v13);

      __swift_destroy_boxed_opaque_existential_1((v3 + 48));
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v3 + 88);
    v19[2](v19, v18, 0);
    _Block_release(v19);
    swift_unknownObjectRelease();
  }

  v20 = *(v9 + 8);

  return v20();
}

id AppIntentsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentsHelper.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___TPSAppIntentsHelper_clientLabel];
  *v2 = 0xD000000000000019;
  *(v2 + 1) = 0x8000000232E0E3A0;
  *&v0[OBJC_IVAR___TPSAppIntentsHelper_source] = 3;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id AppIntentsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DF110C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232DA72F4;

  return sub_232DF0B8C(v2, v3, v4, v5, v6);
}

uint64_t sub_232DF11D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_232DA7C78;

  return sub_232DF3D3C(v2, v3, v5);
}

unint64_t sub_232DF1294()
{
  result = qword_27DDD77B0;
  if (!qword_27DDD77B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD77B0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232DF1338()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232DA7C78;

  return sub_232DEF7EC(v2, v3, v4, v5, v6);
}

uint64_t sub_232DF1404(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232DB1790(a1, a2);
  v15 = v14;
  v17 = v16;
  if (v13 == a3)
  {
    v18 = sub_232DD6BA4(a3, a4);
    v20 = v19;
    sub_232DB0970(v15, v17);
    v21 = sub_232DB07B4(v18, v20, v15, v17);
    sub_232DB091C(v15, v17);
    sub_232DB091C(v18, v20);
    if (v21)
    {
      sub_232DB091C(v15, v17);
      return 1;
    }

    sub_232E01270();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD00000000000003BLL, 0x8000000232E0C8C0);
    sub_232DB0970(v15, v17);
    v26 = sub_232E00C10();
    MEMORY[0x238395970](v26);

    sub_232DB091C(v15, v17);
    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v27 = sub_232DD6BA4(a3, a4);
    v29 = v28;
    v30 = sub_232E00C10();
    MEMORY[0x238395970](v30);

    sub_232DB091C(v27, v29);
  }

  else
  {
    v23 = v13;
    sub_232E01270();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000031, 0x8000000232E0C850);
    v32 = v23;
    v24 = sub_232E01AB0();
    MEMORY[0x238395970](v24);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v32 = a3;
    v25 = sub_232E01AB0();
    MEMORY[0x238395970](v25);
  }

  MEMORY[0x238395970](41, 0xE100000000000000);
  sub_232E01360();

  sub_232DB091C(v15, v17);
  (*(v9 + 8))(v12, v8);
  return 0;
}

uint64_t sub_232DF173C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232DB3120(MEMORY[0x277D84F90]);

  v6 = sub_232DF1E1C(a1);

  v8 = sub_232DCA018(v7);
  v9 = sub_232DCA018(v6);
  v10 = v9;
  if (*(v8 + 16) <= *(v9 + 16) >> 3)
  {
    v24 = v9;

    sub_232DD61D8(v8);
    v11 = v24;
  }

  else
  {

    v11 = sub_232DD088C(v8, v10);
  }

  if (*(v10 + 16) <= *(v8 + 16) >> 3)
  {
    v24 = v8;

    sub_232DD61D8(v10);
    v12 = v8;
  }

  else
  {

    v12 = sub_232DD088C(v10, v8);
  }

  v13 = sub_232DD6304(v10, v8);

  v14 = sub_232DF2A18(v13, a2, a3, 2, v6);

  v15 = *(v11 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_232DAE004(*(v11 + 16), 0);
  v17 = sub_232DAFE80(&v24, v16 + 4, v15, v11);
  result = sub_232DD2638();
  if (v17 != v15)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v19 = *(v14 + 16);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_10:
  v20 = sub_232DAE004(v19, 0);
  v21 = sub_232DAFE80(&v24, v20 + 4, v19, v14);
  result = sub_232DD2638();
  if (v21 != v19)
  {
    goto LABEL_19;
  }

  v22 = *(v12 + 16);
  if (v22)
  {
    while (1)
    {
      v23 = sub_232DAE004(v22, 0);
      v12 = sub_232DAFE80(&v24, v23 + 4, v22, v12);
      sub_232DD2638();
      if (v12 == v22)
      {
        break;
      }

      __break(1u);
LABEL_14:

      v16 = MEMORY[0x277D84F90];
      v19 = *(v14 + 16);
      if (v19)
      {
        goto LABEL_10;
      }

LABEL_15:

      v22 = *(v12 + 16);
      if (!v22)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
  }

  return v16;
}

uint64_t sub_232DF19D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77D8, &qword_232E080E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DF3260();
  sub_232E01C10();
  v15 = 0;
  sub_232E01A90();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    sub_232DD90E4(&qword_2814E7C50, sub_232DD8E74);
    sub_232E01A80();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_232DF1BA0(uint64_t a1)
{
  v2 = sub_232DF3260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DF1BDC(uint64_t a1)
{
  v2 = sub_232DF3260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DF1C18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_232DF32B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_232DF1C68(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  v4 = sub_232DD6BA4(*a1, *(a1 + 1));
  v6 = v5;
  v7 = sub_232DD6BA4(v2, v3);
  v9 = v8;
  v10 = sub_232DB07B4(v4, v6, v7, v8);
  sub_232DB091C(v7, v9);
  sub_232DB091C(v4, v6);
  return v10 & 1;
}

unint64_t sub_232DF1D10()
{
  result = qword_27DDD77D0;
  if (!qword_27DDD77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD77D0);
  }

  return result;
}

unint64_t *sub_232DF1D64(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_232DD7C7C(v11, a2, a3, a5, a7);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t sub_232DF1E1C(unint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v51 = sub_232E01410();
  inited = *(v51 - 8);
  v3 = *(inited + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E01500();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  MEMORY[0x28223BE20](v5);
  v59 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_232E01440();
  v9 = *(v61 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v61);
  v62 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232DB3120(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_232E019C0())
  {
    v14 = 0;
    v57 = 0;
    v49 = a1 & 0xC000000000000001;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 + 32;
    v63 = v6 + 1;
    v43 = (inited + 16);
    v42 = (inited + 8);
    v41 = (v9 + 8);
    v47 = xmmword_232E076B0;
    v58 = v5;
    v45 = a1;
    v44 = i;
    while (1)
    {
      if (v49)
      {
        v26 = MEMORY[0x238395D50](v14, a1);
      }

      else
      {
        if (v14 >= *(v48 + 16))
        {
          goto LABEL_41;
        }

        v26 = *(v46 + 8 * v14);
      }

      v27 = v26;
      v28 = __OFADD__(v14, 1);
      v29 = v14 + 1;
      if (v28)
      {
        break;
      }

      v55 = v29;
      v56 = v12;
      v30 = [v26 identifier];
      v53 = sub_232E014D0();
      v54 = v31;

      sub_232E01430();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
      inited = swift_initStackObject();
      *(inited + 16) = v47;
      *(inited + 32) = swift_getKeyPath();
      v52 = inited + 32;
      *(inited + 40) = swift_getKeyPath();
      v9 = 0;
      *(inited + 48) = swift_getKeyPath();
      v64 = inited & 0xC000000000000001;
      v65 = inited;
      v60 = inited & 0xFFFFFFFFFFFFFF8;
      a1 = v59;
      do
      {
        if (v64)
        {
          inited = MEMORY[0x238395D50](v9, v65);
        }

        else
        {
          if (v9 >= *(v60 + 16))
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          inited = *(v65 + 8 * v9 + 32);
        }

        v66 = v27;
        v32 = v27;
        swift_getAtKeyPath();

        v12 = *(&v68 + 1);
        v6 = v68;
        sub_232E014F0();
        v33 = sub_232E014E0();
        v35 = v34;

        (*v63)(a1, v5);
        if (v35 >> 60 == 15)
        {

          goto LABEL_11;
        }

        v36 = v35 >> 62;
        if ((v35 >> 62) > 1)
        {
          if (v36 == 2)
          {
            a1 = *(v33 + 16);
            v5 = *(v33 + 24);

            v6 = (v35 & 0x3FFFFFFFFFFFFFFFLL);
            v12 = sub_232E00A30();
            if (v12)
            {
              v6 = (v35 & 0x3FFFFFFFFFFFFFFFLL);
              v37 = sub_232E00A60();
              if (__OFSUB__(a1, v37))
              {
                goto LABEL_38;
              }

              v12 += a1 - v37;
            }

            v28 = __OFSUB__(v5, a1);
            a1 = v5 - a1;
            if (v28)
            {
              goto LABEL_37;
            }

            goto LABEL_31;
          }

          sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
          *&v68 = 0;
          *(&v68 + 6) = 0;
        }

        else
        {
          if (v36)
          {
            v5 = v33;
            a1 = (v33 >> 32) - v33;
            if (v33 >> 32 < v33)
            {
              goto LABEL_36;
            }

            v12 = sub_232E00A30();
            if (v12)
            {
              v6 = (v35 & 0x3FFFFFFFFFFFFFFFLL);
              v38 = sub_232E00A60();
              if (__OFSUB__(v33, v38))
              {
                goto LABEL_39;
              }

              v12 += v33 - v38;
            }

LABEL_31:
            sub_232E00A50();
            sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
            v6 = v62;
            sub_232E01400();
            sub_232DB0E28(v33, v35);

            sub_232DB0E28(v33, v35);
            v5 = v58;
            a1 = v59;
            goto LABEL_11;
          }

          *&v68 = v33;
          WORD4(v68) = v35;
          BYTE10(v68) = BYTE2(v35);
          BYTE11(v68) = BYTE3(v35);
          BYTE12(v68) = BYTE4(v35);
          BYTE13(v68) = BYTE5(v35);
          sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
        }

        v6 = v62;
        sub_232E01400();
        sub_232DB0E28(v33, v35);

        sub_232DB0E28(v33, v35);
LABEL_11:
        ++v9;
      }

      while (v9 != 3);
      v15 = v65;
      swift_setDeallocating();
      v16 = *(v15 + 16);
      swift_arrayDestroy();
      v17 = v50;
      v18 = v62;
      sub_232E01420();
      v19 = v51;
      v69 = v51;
      v70 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
      (*v43)(boxed_opaque_existential_1, v17, v19);
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v21 = v57;
      sub_232E00A80();
      v57 = v21;
      (*v42)(v17, v19);
      v22 = v66;
      v9 = v67;
      __swift_destroy_boxed_opaque_existential_1(&v68);
      (*v41)(v18, v61);
      v23 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v68 = v23;
      v6 = &v68;
      v25 = v22;
      inited = v54;
      sub_232DF4500(v25, v9, v53, v54, isUniquelyReferenced_nonNull_native);

      v12 = v68;
      v14 = v55;
      a1 = v45;
      if (v55 == v44)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_43:
  v39 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_232DF26FC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232E012A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      return 0;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
LABEL_8:
    if (v13 != v14)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v12)
  {
    v13 = a2;
    v14 = a2 >> 32;
    goto LABEL_8;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v15 = v9;
  v16 = sub_232DB1790(a2, a3);
  v18 = v17;
  v20 = v19;
  if (v16 != 2)
  {
    v26 = v16;
    sub_232E01270();
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000032, 0x8000000232E0E520);
    v30 = v26;
    v27 = sub_232E01AB0();
    MEMORY[0x238395970](v27);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v30 = 2;
    v28 = sub_232E01AB0();
    MEMORY[0x238395970](v28);

    MEMORY[0x238395970](41, 0xE100000000000000);
    sub_232E01360();

    sub_232DB091C(v18, v20);
    (*(v7 + 8))(v11, v15);
    return 0;
  }

  sub_232DB3120(MEMORY[0x277D84F90]);

  v21 = sub_232DF1E1C(a1);
  sub_232DB0970(v18, v20);
  v22 = sub_232DD6BA4(2, v21);
  v24 = v23;

  LOBYTE(v21) = sub_232DB07B4(v18, v20, v22, v24);
  sub_232DB091C(v22, v24);
  sub_232DB091C(v18, v20);
  if (v21)
  {
    sub_232DB091C(v18, v20);
    return 2;
  }

  else
  {
    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(v18, v20);
    (*(v7 + 8))(v11, v15);
    return 1;
  }
}

uint64_t sub_232DF2A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = a1;
  v85[2] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v76 = ((1 << v12) + 63) >> 6;
  v14 = 8 * v76;

  if (v13 > 0xD)
  {
    goto LABEL_85;
  }

  while (2)
  {
    v79 = v6;
    v75 = &v70;
    MEMORY[0x28223BE20](v15);
    v77 = &v70 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v77, v14);
    v78 = 0;
    a2 = 0;
    v6 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v14 = v17 & *(v11 + 56);
    v18 = (v16 + 63) >> 6;
    v82 = a5;
    v83 = a3;
    v81 = v11;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v22 = v19 | (a2 << 6);
      v23 = *(v11 + 48);
      v80 = v22;
      v24 = (v23 + 16 * v22);
      a4 = *v24;
      v25 = v24[1];
      v26 = *(a3 + 16);

      if (v26 && (v27 = sub_232DD5634(a4, v25), (v28 & 1) != 0))
      {
        v29 = (*(a3 + 56) + 16 * v27);
        v30 = *v29;
        v31 = v29[1];
        sub_232DB0970(*v29, v31);
        if (!*(a5 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v30 = 0;
        v31 = 0xF000000000000000;
        if (!*(a5 + 16))
        {
LABEL_17:
          v32 = 0;
          v33 = 0xF000000000000000;
          goto LABEL_23;
        }
      }

      v34 = v25;
      v35 = v14;
      v36 = v30;
      v37 = a4;
      a4 = v34;
      v38 = sub_232DD5634(v37, v34);
      if (v39)
      {
        v40 = (*(a5 + 56) + 16 * v38);
        v41 = *v40;
        v33 = v40[1];
        sub_232DB0970(*v40, v33);
        v32 = v41;
      }

      else
      {
        v32 = 0;
        v33 = 0xF000000000000000;
      }

      v30 = v36;
      v14 = v35;
LABEL_23:
      if (v31 >> 60 == 15)
      {
        if (v33 >> 60 == 15)
        {
          goto LABEL_6;
        }

        goto LABEL_69;
      }

      if (v33 >> 60 == 15)
      {
LABEL_69:
        a4 = v32;
        sub_232DB0E28(v30, v31);
        v63 = a4;
        v64 = v33;
LABEL_78:
        sub_232DB0E28(v63, v64);

        a5 = v82;
        a3 = v83;
        v11 = v81;
LABEL_79:
        *&v77[(v80 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v80;
        v47 = __OFADD__(v78++, 1);
        if (v47)
        {
          __break(1u);
LABEL_82:
          v66 = sub_232DD1508(v77, v76, v78, v11);

          goto LABEL_83;
        }
      }

      else
      {
        v42 = v31 >> 62;
        v43 = v33 >> 62;
        if (v31 >> 62 == 3)
        {
          v44 = 0;
          if (!v30 && v31 == 0xC000000000000000 && v33 >> 62 == 3)
          {
            v44 = 0;
            if (!v32 && v33 == 0xC000000000000000)
            {
              sub_232DB0E28(0, 0xC000000000000000);
              goto LABEL_6;
            }
          }

LABEL_42:
          if (v43 <= 1)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        if (v42 <= 1)
        {
          if (!v42)
          {
            v44 = BYTE6(v31);
            if (v43 <= 1)
            {
              goto LABEL_43;
            }

            goto LABEL_48;
          }

          LODWORD(v44) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_90;
          }

          v44 = v44;
          goto LABEL_42;
        }

        if (v42 == 2)
        {
          v46 = *(v30 + 16);
          v45 = *(v30 + 24);
          v47 = __OFSUB__(v45, v46);
          v44 = v45 - v46;
          if (v47)
          {
            goto LABEL_91;
          }

          goto LABEL_42;
        }

        v44 = 0;
        if (v43 <= 1)
        {
LABEL_43:
          if (v43)
          {
            LODWORD(v48) = HIDWORD(v32) - v32;
            if (__OFSUB__(HIDWORD(v32), v32))
            {
              __break(1u);
LABEL_89:
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
            }

            v48 = v48;
          }

          else
          {
            v48 = BYTE6(v33);
          }

          goto LABEL_50;
        }

LABEL_48:
        if (v43 != 2)
        {
          if (!v44)
          {
            goto LABEL_56;
          }

LABEL_77:
          sub_232DB0E28(v32, v33);
          v63 = v30;
          v64 = v31;
          goto LABEL_78;
        }

        v50 = *(v32 + 16);
        v49 = *(v32 + 24);
        v47 = __OFSUB__(v49, v50);
        v48 = v49 - v50;
        if (v47)
        {
          goto LABEL_89;
        }

LABEL_50:
        if (v44 != v48)
        {
          goto LABEL_77;
        }

        if (v44 < 1)
        {
LABEL_56:
          sub_232DB0E28(v32, v33);
LABEL_6:
          sub_232DB0E28(v30, v31);

          a5 = v82;
          a3 = v83;
          v11 = v81;
        }

        else
        {
          if (v42 > 1)
          {
            v74 = v32;
            if (v42 == 2)
            {
              v52 = *(v30 + 16);
              v71 = *(v30 + 24);
              v72 = v52;
              v73 = v30;
              sub_232DD8DCC(v30, v31);
              v53 = v74;
              sub_232DD8DCC(v74, v33);
              sub_232DD8DCC(v53, v33);
              v54 = sub_232E00A30();
              if (v54)
              {
                v55 = v54;
                v56 = sub_232E00A60();
                v57 = v72;
                if (__OFSUB__(v72, v56))
                {
                  goto LABEL_94;
                }

                v70 = v72 - v56 + v55;
              }

              else
              {
                v70 = 0;
                v57 = v72;
              }

              if (__OFSUB__(v71, v57))
              {
                goto LABEL_93;
              }

              sub_232E00A50();
              v61 = v70;
              goto LABEL_73;
            }

            memset(v85, 0, 14);
            sub_232DD8DCC(v30, v31);
            v51 = v74;
            sub_232DD8DCC(v74, v33);
            sub_232DD8DCC(v51, v33);
          }

          else
          {
            if (v42)
            {
              v74 = v32;
              v71 = v30;
              v72 = (v30 >> 32) - v30;
              if (v30 >> 32 < v30)
              {
                goto LABEL_92;
              }

              v73 = v30;
              sub_232DD8DCC(v30, v31);
              v58 = v74;
              sub_232DD8DCC(v74, v33);
              sub_232DD8DCC(v58, v33);
              v59 = sub_232E00A30();
              if (v59)
              {
                v60 = sub_232E00A60();
                if (__OFSUB__(v71, v60))
                {
                  goto LABEL_95;
                }

                v59 += v71 - v60;
              }

              sub_232E00A50();
              v61 = v59;
LABEL_73:
              v51 = v74;
              v65 = v79;
              sub_232DAD698(v61, v74, v33, v85);
              v79 = v65;
              if (v65)
              {
LABEL_96:
                result = sub_232DB0E28(v51, v33);
                __break(1u);
                return result;
              }

              sub_232DB0E28(v51, v33);
              sub_232DB0E28(v51, v33);
              v30 = v73;
              sub_232DB0E28(v73, v31);
              sub_232DB0E28(v51, v33);
              a4 = LOBYTE(v85[0]);
              goto LABEL_75;
            }

            v85[0] = v30;
            LOWORD(v85[1]) = v31;
            BYTE2(v85[1]) = BYTE2(v31);
            BYTE3(v85[1]) = BYTE3(v31);
            BYTE4(v85[1]) = BYTE4(v31);
            BYTE5(v85[1]) = BYTE5(v31);
            v74 = v85 + BYTE6(v31);
            v51 = v32;
            sub_232DD8DCC(v30, v31);
            sub_232DD8DCC(v51, v33);
            sub_232DD8DCC(v51, v33);
          }

          v62 = v79;
          sub_232DAD698(v85, v51, v33, &v84);
          v79 = v62;
          if (v62)
          {
            goto LABEL_96;
          }

          sub_232DB0E28(v51, v33);
          sub_232DB0E28(v51, v33);
          sub_232DB0E28(v30, v31);
          sub_232DB0E28(v51, v33);
          a4 = v84;
LABEL_75:
          sub_232DB0E28(v30, v31);

          a5 = v82;
          a3 = v83;
          v11 = v81;
          if ((a4 & 1) == 0)
          {
            goto LABEL_79;
          }
        }
      }
    }

    v20 = a2;
    while (1)
    {
      a2 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (a2 >= v18)
      {
        goto LABEL_82;
      }

      v21 = *(v6 + 8 * a2);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_85:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v69 = swift_slowAlloc();

  v66 = sub_232DF1D64(v69, v76, v11, a2, a3, a4, a5);

  MEMORY[0x238396AF0](v69, -1, -1);

LABEL_83:
  v67 = *MEMORY[0x277D85DE8];
  return v66;
}

unint64_t sub_232DF3230(uint64_t a1)
{
  *(a1 + 8) = sub_232DD24D8();
  result = sub_232DD2484();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_232DF3260()
{
  result = qword_2814E8470;
  if (!qword_2814E8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8470);
  }

  return result;
}

uint64_t sub_232DF32B4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77E0, &qword_232E080F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  sub_232DB3120(MEMORY[0x277D84F90]);

  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_232DF3260();
  sub_232E01C00();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_232E01A40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    v10[15] = 1;
    sub_232DD90E4(&qword_2814E7C48, sub_232DD9168);
    sub_232E01A30();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_232DF34E4()
{
  result = qword_27DDD77E8;
  if (!qword_27DDD77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD77E8);
  }

  return result;
}

unint64_t sub_232DF353C()
{
  result = qword_2814E8460;
  if (!qword_2814E8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8460);
  }

  return result;
}

unint64_t sub_232DF3594()
{
  result = qword_2814E8468;
  if (!qword_2814E8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8468);
  }

  return result;
}

uint64_t static TipKitContentManager.updateContent(meta:documents:clientConditions:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DF369C;

  return (sub_232DF4B78)(a1, a2);
}

uint64_t sub_232DF369C(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_232DF3944(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_232E01470();
  }

  v4[3] = a1;
  if (a2)
  {
    a2 = sub_232E01470();
  }

  v4[4] = a2;
  if (a3)
  {
    v8 = sub_232E01700();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_232DF3A90;

  return sub_232DF4B78(a1, a2);
}

uint64_t sub_232DF3A90(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *v2;

  v10 = v5[4];
  v11 = v5[3];
  v12 = v5[2];

  if (v3)
  {
    v13 = sub_232E00AD0();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(v12, a1 & 1, 0);
  }

  _Block_release(v6[2]);
  v14 = *(v9 + 8);

  return v14();
}

id TipKitContentManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipKitContentManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipKitContentManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DF3D3C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_232DA7C78;

  return v7();
}

uint64_t sub_232DF3E24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_232DA72F4;

  return v8();
}

uint64_t sub_232DF3F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_232DA7734(a3, v25 - v11);
  v13 = sub_232E016B0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_232DA77A4(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_232E016A0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_232E01630();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_232E01520() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_232DA77A4(a3);

    return v23;
  }

LABEL_8:
  sub_232DA77A4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_232DF4208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_232DD5634(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_232DC27F4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_232DC1518(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_232DD5634(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_232E01B40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_232DF8B54(v13, a3, a4, a1, a2, v24);
  }
}

uint64_t sub_232DF4398(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_232DD5634(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_232DD5634(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_232E01B40();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v28);
}

uint64_t sub_232DF4500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_232DD5634(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_232DC2ADC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_232DC1A88(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_232DD5634(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_232E01B40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_232DB091C(v26, v27);
  }

  else
  {
    sub_232DF8B54(v13, a3, a4, a1, a2, v24);
  }
}

_OWORD *sub_232DF4650(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_232DD5634(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_232DC2C60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_232DC1D44(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_232DD5634(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_232E01B40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_232D734CC(a1, v23);
  }

  else
  {
    sub_232DF8BEC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_232DF47A0(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_232DF4900(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_232DF4B00(v9, v4, v2);
  result = MEMORY[0x238396AF0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DF4900(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v22 = 0;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    if (*(v14 + 16))
    {
      v15 = *(*(a3 + 48) + 16 * v13 + 8);

      v16 = sub_232DD5634(0xD000000000000010, 0x8000000232E0E630);
      if (v17 & 1) != 0 && (sub_232DAB730(*(v14 + 56) + 32 * v16, v23), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7800, &qword_232E082B0), (swift_dynamicCast()))
      {
        v19 = *(v24 + 16);

        if (v19)
        {
          *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
            return sub_232DFA33C(v21, a2, v22, a3);
          }
        }
      }

      else
      {
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
      return sub_232DFA33C(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_232DF4B00(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_232DF4900(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_232DF4B78(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_232E012A0();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DF4C38, 0, 0);
}

uint64_t sub_232DF4C38()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = sub_232DD5634(0x79726576696C6564, 0xEC0000006F666E49);
      if (v3)
      {
        sub_232DAB730(*(v1 + 56) + 32 * v2, v0 + 16);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77F0, &qword_232E08298);
        if (swift_dynamicCast())
        {
          v5 = *(v0 + 272);
          v6 = *(v0 + 240);
          if (v5)
          {
            if (*(v5 + 16))
            {
              v7 = sub_232DD5634(0x746E656D75636F64, 0xE900000000000073);
              if (v8)
              {
                sub_232DAB730(*(v5 + 56) + 32 * v7, v0 + 48);
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77F8, &unk_232E082A0);
                if (swift_dynamicCast())
                {
                  v10 = *(v0 + 248);
                  v34 = sub_232DF47A0(v6);

                  v12 = *(v10 + 16);
                  v35 = v9;
                  if (!v12)
                  {
                    v36 = MEMORY[0x277D84F90];
                    goto LABEL_34;
                  }

                  v13 = 0;
                  v36 = MEMORY[0x277D84F90];
                  while (1)
                  {
                    v14 = v13;
                    while (1)
                    {
                      if (v14 >= *(v10 + 16))
                      {
                        __break(1u);
                        return MEMORY[0x2821D93D0](isUniquelyReferenced_nonNull_native);
                      }

                      v15 = *(v10 + 32 + 8 * v14);
                      if (*(v15 + 16))
                      {
                        break;
                      }

LABEL_13:
                      if (v12 == ++v14)
                      {
                        goto LABEL_34;
                      }
                    }

                    v16 = *(v10 + 32 + 8 * v14);

                    v17 = sub_232DD5634(0x746E65746E6F63, 0xE700000000000000);
                    if ((v18 & 1) == 0)
                    {
                      goto LABEL_12;
                    }

                    sub_232DAB730(*(v15 + 56) + 32 * v17, v0 + 80);
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      goto LABEL_12;
                    }

                    if (!*(*(v0 + 256) + 16))
                    {
                      break;
                    }

                    sub_232DD5634(1768843629, 0xE400000000000000);
                    if ((v19 & 1) == 0)
                    {
                      break;
                    }

                    v20 = v36;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v38 = v36;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = sub_232DF8F50(0, *(v36 + 16) + 1, 1);
                      v20 = v36;
                    }

                    v22 = *(v20 + 16);
                    v21 = *(v20 + 24);
                    v23 = v22 + 1;
                    if (v22 >= v21 >> 1)
                    {
                      v37 = v22 + 1;
                      v33 = *(v20 + 16);
                      isUniquelyReferenced_nonNull_native = sub_232DF8F50((v21 > 1), v22 + 1, 1);
                      v23 = v37;
                      v20 = v38;
                      v22 = v33;
                    }

                    v13 = v14 + 1;
                    *(v20 + 16) = v23;
                    v36 = v20;
                    *(v20 + 8 * v22 + 32) = v15;
                    if (v12 - 1 == v14)
                    {
LABEL_34:

                      *(v0 + 136) = v4;
                      *(v0 + 112) = v34;
                      sub_232D734CC((v0 + 112), (v0 + 144));
                      v30 = swift_isUniquelyReferenced_nonNull_native();
                      sub_232DF4650((v0 + 144), 0x79726576696C6564, 0xEC0000006F666E49, v30);
                      *(v0 + 200) = v35;
                      *(v0 + 176) = v36;
                      sub_232D734CC((v0 + 176), (v0 + 208));
                      v31 = swift_isUniquelyReferenced_nonNull_native();
                      sub_232DF4650((v0 + 208), 0x746E656D75636F64, 0xE900000000000073, v31);
                      v32 = sub_232E01450();
                      *(v0 + 304) = v32;

                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D0, &qword_232E07068);
                      sub_232E01460();
                      *(v0 + 312) = 0;

                      goto LABEL_29;
                    }
                  }

LABEL_12:

                  goto LABEL_13;
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 280);
  sub_232E01260();
  sub_232E01370();
  (*(v25 + 8))(v24, v26);
LABEL_29:
  v27 = *(v0 + 296);

  v28 = *(v0 + 8);

  return v28(0);
}

uint64_t sub_232DF5164()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_232DF52F0;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_232DF5280;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DF5280()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_232DF52F0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);

  v3 = *(v0 + 8);
  v4 = *(v0 + 328);

  return v3(0);
}

uint64_t sub_232DF5390()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232DA72F4;

  return sub_232DF3944(v2, v3, v4, v5);
}

uint64_t sub_232DF5458(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232DA7C78;

  return sub_232DA78F8(a1, v5);
}

uint64_t sub_232DF5510(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232DA72F4;

  return sub_232DA78F8(a1, v5);
}

uint64_t sub_232DF55C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_232DA7734(a3, v27 - v11);
  v13 = sub_232E016B0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_232DA77A4(v12);
  }

  else
  {
    sub_232E016A0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_232E01630();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_232E01520() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_232DA77A4(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232DA77A4(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_232DF5888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = sub_232E012A0();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DF5958, 0, 0);
}

uint64_t sub_232DF5958()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[30] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_232DF5D08;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7808, &qword_232E08318);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_232DF62F0;
    v0[13] = &block_descriptor_11;
    v0[14] = v3;
    [v2 accountsWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = v0[29];
    v5 = v0[23];
    v29 = [v5 BOOLValue];
    sub_232E01290();
    v6 = 0xE000000000000000;
    sub_232E018F0();
    v7 = [v5 name];
    if (v7)
    {
      v8 = v7;
      v9 = sub_232E014D0();
      v6 = v10;
    }

    else
    {
      v9 = 0;
    }

    v11 = v0[23];
    MEMORY[0x238395970](v9, v6);

    MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
    v12 = [v11 targetContext];
    if (v12)
    {
      v13 = v12;
      sub_232E01470();
    }

    else
    {
      sub_232DB3428(MEMORY[0x277D84F90]);
    }

    v14 = v0[29];
    v15 = v0[30];
    v17 = v0[26];
    v16 = v0[27];
    v19 = v0[24];
    v18 = v0[25];
    v20 = sub_232E01480();
    v22 = v21;

    MEMORY[0x238395970](v20, v22);

    MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
    if (v29)
    {
      v23 = 0x65736C6166;
    }

    else
    {
      v23 = 1702195828;
    }

    if (v29)
    {
      v24 = 0xE500000000000000;
    }

    else
    {
      v24 = 0xE400000000000000;
    }

    MEMORY[0x238395970](v23, v24);

    sub_232E01350();

    (*(v16 + 8))(v14, v17);
    v19(v29 ^ 1, 0);

    v26 = v0[28];
    v25 = v0[29];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_232DF5D08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_232DF617C;
  }

  else
  {
    v3 = sub_232DF5E18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DF5E18()
{
  v1 = *(v0 + 168);

  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_232E019C0())
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x238395D50](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 type] == 1)
        {

          v7 = 0;
          goto LABEL_19;
        }

        ++v3;
        if (v6 == i)
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

  v7 = 1;
LABEL_19:
  v8 = *(v0 + 232);
  v9 = *(v0 + 184);
  v10 = [v9 BOOLValue];
  sub_232E01290();
  v11 = 0xE000000000000000;
  sub_232E018F0();
  v12 = [v9 name];
  if (v12)
  {
    v13 = v12;
    v14 = sub_232E014D0();
    v11 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = *(v0 + 184);
  MEMORY[0x238395970](v14, v11);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v17 = [v16 targetContext];
  if (v17)
  {
    v18 = v17;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v19 = v7 ^ v10;
  v20 = *(v0 + 232);
  v34 = *(v0 + 240);
  v21 = *(v0 + 208);
  v22 = *(v0 + 216);
  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v25 = sub_232E01480();
  v27 = v26;

  MEMORY[0x238395970](v25, v27);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if (v19)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v19)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x238395970](v28, v29);

  sub_232E01350();

  (*(v22 + 8))(v20, v21);
  v24(v19, 0);

  v31 = *(v0 + 224);
  v30 = *(v0 + 232);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_232DF617C()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[24];
  swift_willThrow();

  sub_232E01250();
  sub_232E018F0();

  swift_getErrorValue();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[20];
  v11 = sub_232E01B50();
  MEMORY[0x238395970](v11);

  sub_232E01380();

  (*(v4 + 8))(v3, v6);
  v12 = v1;
  v7(0, v1);

  v14 = v0[28];
  v13 = v0[29];

  v15 = v0[1];

  return v15();
}

uint64_t sub_232DF62F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_232DF6A6C();
      v9 = sub_232E015D0();
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

id WalletHasPaymentMethodsValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id WalletHasPaymentMethodsValidation.init(targetContext:)()
{
  v1 = sub_232E01450();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  v2 = objc_msgSendSuper2(&v4, sel_initWithTargetContext_, v1);

  return v2;
}

id WalletHasPaymentMethodsValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletHasPaymentMethodsValidation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WalletHasPaymentMethodsValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232DF681C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_232DA72F4;

  return sub_232DF5888(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_232DF68E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232DA7C78;

  return sub_232DA78F8(a1, v5);
}

uint64_t sub_232DF699C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_232DA72F4;

  return sub_232DA78F8(a1, v5);
}

unint64_t sub_232DF6A6C()
{
  result = qword_27DDD7810;
  if (!qword_27DDD7810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD7810);
  }

  return result;
}

id CloudDeviceHasPhoneOrPadValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id CloudDeviceHasPhoneOrPadValidation.init(targetContext:)()
{
  v1 = sub_232E01450();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  v2 = objc_msgSendSuper2(&v4, sel_initWithTargetContext_, v1);

  return v2;
}

id CloudDeviceHasPhoneOrPadValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudDeviceHasPhoneOrPadValidation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CloudDeviceHasPhoneOrPadValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DF6DDC(void *a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_232E012A0();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() idsDevices];
  sub_232DA8CC4();
  v8 = sub_232E015D0();

  if (v8 >> 62)
  {
LABEL_31:
    v9 = sub_232E019C0();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  do
  {
    v11 = v10;
    if (v9 == v10)
    {
      break;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x238395D50](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v14 = [v12 deviceType];

    v10 = v11 + 1;
  }

  while (v14 != 2 && v14 != 4);

  v16 = [a1 BOOLValue];
  sub_232E01290();
  v17 = 0xE000000000000000;
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_232E018F0();
  v18 = [a1 name];
  if (v18)
  {
    v19 = v18;
    v20 = sub_232E014D0();
    v17 = v21;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x238395970](v20, v17);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v22 = [a1 targetContext];
  if (v22)
  {
    v23 = v22;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v24 = (v9 != v11) ^ v16;
  v25 = sub_232E01480();
  v27 = v26;

  MEMORY[0x238395970](v25, v27);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if (v24)
  {
    v28 = 0x65736C6166;
  }

  else
  {
    v28 = 1702195828;
  }

  if (v24)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x238395970](v28, v29);

  sub_232E01350();

  (*(v32 + 8))(v6, v33);
  return (*(v34 + 16))(v34, v24 ^ 1u, 0);
}

uint64_t sub_232DF71D8()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_232DF7208()
{
  sub_232DF71D8();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_232DF72D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_232DF7328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_232DF7388(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7818, &qword_232E08598);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DF78E8();
  sub_232E01C10();
  LOBYTE(v16) = 0;
  sub_232E01A90();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_232DB0970(a3, v15);
    sub_232DD8E74();
    sub_232E01A80();
    sub_232DB091C(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_232DF7524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6873616863;
  }

  else
  {
    v4 = 118;
  }

  if (v3)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6873616863;
  }

  else
  {
    v6 = 118;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_232E01AD0();
  }

  return v9 & 1;
}

uint64_t sub_232DF75BC()
{
  v1 = *v0;
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DF7630()
{
  *v0;
  sub_232E01530();
}

uint64_t sub_232DF7690()
{
  v1 = *v0;
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DF7700@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_232E01A10();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_232DF7760(uint64_t *a1@<X8>)
{
  v2 = 118;
  if (*v1)
  {
    v2 = 0x6873616863;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_232DF7790()
{
  if (*v0)
  {
    result = 0x6873616863;
  }

  else
  {
    result = 118;
  }

  *v0;
  return result;
}

uint64_t sub_232DF77BC@<X0>(char *a1@<X8>)
{
  v2 = sub_232E01A10();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_232DF7820(uint64_t a1)
{
  v2 = sub_232DF78E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DF785C(uint64_t a1)
{
  v2 = sub_232DF78E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DF7898@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_232DF793C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_232DF78E8()
{
  result = qword_2814E8230[0];
  if (!qword_2814E8230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E8230);
  }

  return result;
}

uint64_t sub_232DF793C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7820, &qword_232E085A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_232DF78E8();
  sub_232E01C00();
  if (!v1)
  {
    v10[16] = 0;
    v8 = sub_232E01A40();
    v10[15] = 1;
    sub_232DD9168();
    sub_232E01A30();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_232DF7B14()
{
  result = qword_27DDD7828;
  if (!qword_27DDD7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7828);
  }

  return result;
}

unint64_t sub_232DF7B6C()
{
  result = qword_2814E8220;
  if (!qword_2814E8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8220);
  }

  return result;
}

unint64_t sub_232DF7BC4()
{
  result = qword_2814E8228;
  if (!qword_2814E8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8228);
  }

  return result;
}

uint64_t sub_232DF7C18(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232DF7D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_232DF9030(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_232E01870();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_232DF9030((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = (v26 + 24 * v13);
    v15[4] = v24;
    v15[5] = v12;
    v15[6] = 0;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_232DFC9C4(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_232DFC9C4(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_232DF7F9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_232DF804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a2;
  v6 = sub_232E00EA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v12 = *(v11 + 16);
  v20[1] = v7 + 16;
  v21 = v12;
  v13 = (v7 + 8);

  v15 = 0;
  while (1)
  {
    v17 = v15;
    if (v21 == v15)
    {
      goto LABEL_8;
    }

    if (v15 >= *(v11 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v6);
    if (sub_232E00E90() == a1 && v18 == v22)
    {

      (*v13)(v10, v6);
LABEL_8:
      v19 = v21 == v17;

      return v19;
    }

    ++v15;
    v16 = sub_232E01AD0();

    result = (*v13)(v10, v6);
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t static TPSTipsManager.presentReentryNotificationIfNeeded()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_232E016B0();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_232DF55C8(0, 0, v3, &unk_232E08700, v5);
}

uint64_t sub_232DF8584()
{
  v1 = *(MEMORY[0x277D6A890] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_232DA72F4;

  return MEMORY[0x2821CF938](1);
}

void sub_232DF8708(uint64_t *a1, uint64_t a2, uint64_t a3, id a4, id a5, void *a6)
{
  if (*(a2 + 16))
  {
    v41 = a1[1];
    v42 = *a1;
    v11 = sub_232DD5634(*a1, v41);
    if (v12)
    {
      if (a3)
      {
        if (*(a3 + 16))
        {
          v13 = (*(a2 + 56) + 16 * v11);
          v14 = *v13;
          v15 = v13[1];

          v16 = sub_232DD5634(v14, v15);
          v18 = v17;

          if (v18)
          {
            v43[0] = *(*(a3 + 56) + 8 * v16);
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74A8, &unk_232E065B0);
            if (swift_dynamicCast())
            {
              sub_232DC8988(v43[5]);

              v19 = objc_allocWithZone(TPSContextualInfo);
              v20 = sub_232E01450();

              v21 = [v19 initWithDictionary_];

              if (v21)
              {
                v22 = [v21 usageEvents];
                if (!v22)
                {

                  return;
                }

                v23 = v22;
                sub_232DB3688(0, &qword_2814E7BE0, 0x277D71710);
                v24 = sub_232E015D0();

                v25 = v24;
                if (v24 >> 62)
                {
                  goto LABEL_26;
                }

                v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v26)
                {
LABEL_11:
                  v36 = v21;
                  sub_232E01240();
                  if (v26 >= 1)
                  {
                    v27 = 0;
                    v28 = v25;
                    v39 = v25 & 0xC000000000000001;
                    v40 = a6;
                    v37 = v26;
                    v38 = v25;
                    while (1)
                    {
                      if (v39)
                      {
                        v29 = MEMORY[0x238395D50](v27, v28);
                      }

                      else
                      {
                        v29 = *(v28 + 8 * v27 + 32);
                      }

                      v30 = v29;
                      v31 = objc_allocWithZone(MEMORY[0x277CCA970]);
                      v32 = a4;
                      a6 = sub_232E00CA0();
                      a4 = a5;
                      v33 = sub_232E00CA0();
                      a5 = [v31 initWithStartDate:a6 endDate:v33];

                      v21 = MEMORY[0x238395650](v30, a5);
                      v25 = v40;
                      v35 = sub_232DF8A80(v43, v42, v41);
                      if (*(v34 + 8) == 1)
                      {
                        (v35)(v43, 0);
                        a5 = a4;
                      }

                      else
                      {
                        if (v21 < 0)
                        {
                          __break(1u);
LABEL_25:
                          __break(1u);
LABEL_26:
                          v26 = sub_232E019C0();
                          if (!v26)
                          {
                            goto LABEL_27;
                          }

                          goto LABEL_11;
                        }

                        if (__OFADD__(*v34, v21))
                        {
                          goto LABEL_25;
                        }

                        a5 = a4;
                        *v34 += v21;
                        (v35)(v43, 0);
                      }

                      a4 = v32;
                      ++v27;

                      v28 = v38;
                      if (v37 == v27)
                      {

                        return;
                      }
                    }
                  }

                  __break(1u);
                }

                else
                {
LABEL_27:
                }
              }
            }
          }
        }
      }
    }
  }
}

void (*sub_232DF8A80(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_232DFB014(v6, a2, a3);
  return sub_232DF8B08;
}

void sub_232DF8B08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_232DF8B54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_232DF8BA4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_232DF8BEC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_232D734CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_232DF8C80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_232DB3688(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_232DF8D90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7390, &qword_232E06218);
      v7 = *(sub_232E00EA0() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_232E00EA0() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_232DF8F30(void *a1, int64_t a2, char a3)
{
  result = sub_232DAE380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF8F50(void *a1, int64_t a2, char a3)
{
  result = sub_232DAE3A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_232DF8F70(char *a1, int64_t a2, char a3)
{
  result = sub_232DAE3C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_232DF8F90(char *a1, int64_t a2, char a3)
{
  result = sub_232DAE4D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_232DF8FB0(size_t a1, int64_t a2, char a3)
{
  result = sub_232DAE5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF8FD0(void *a1, int64_t a2, char a3)
{
  result = sub_232DAE60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF8FF0(void *a1, int64_t a2, char a3)
{
  result = sub_232DAE630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF9010(void *a1, int64_t a2, char a3)
{
  result = sub_232DAE654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF9030(void *a1, int64_t a2, char a3)
{
  result = sub_232DAE7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_232DF9050(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_232DB02B4(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_232E01AA0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73A0, &qword_232E06228);
      v7 = sub_232E01600();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_232DF91C0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_232DF91C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_232DAFB5C(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_232DF977C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_232DADA58(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_232DADA58((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_232DF977C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_232DF977C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_232DF99B8(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_232DF9C84(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_232DF9F54(v9, v4, v2);
  result = MEMORY[0x238396AF0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DF9B18(uint64_t a1, uint64_t *a2)
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
    result = sub_232DF9D70(v8, v6, v4, a2);
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
  v12 = sub_232DFA05C(v11, v6, v4, a2);
  result = MEMORY[0x238396AF0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_232DF9C84(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_232DFA580(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_232DFA580(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_232DF9D70(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = 0;
  v26 = a4;
  v23 = a2;
  v24 = result;
  v4 = 0;
  v27 = a3;
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
    v28 = &v23;
    v14 = (*(v27 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v27 + 56) + 8 * v13);
    v17 = *v26;
    v29[0] = *v14;
    v29[1] = v15;
    MEMORY[0x28223BE20](result);
    v22[2] = v29;

    v18 = v16;

    v19 = v30;
    v20 = sub_232DF7F9C(sub_232DFC8EC, v22, v17);
    v30 = v19;

    if ((v20 & 1) == 0)
    {
      *(v24 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_232DFA7BC(v24, v23, v25, v27, &qword_27DDD7830, &qword_232E08710);
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
      return sub_232DFA7BC(v24, v23, v25, v27, &qword_27DDD7830, &qword_232E08710);
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

unint64_t *sub_232DF9F54(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_232DF9C84(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_232DF9FCC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
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

    sub_232DFB448(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_232DFA05C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

    v8 = sub_232DF9D70(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_232DFA0E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7480, &qword_232E06588);
  result = sub_232E01A00();
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
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
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

uint64_t sub_232DFA33C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7848, &qword_232E08728);
  result = sub_232E01A00();
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
  v33 = v4;
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
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
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

uint64_t sub_232DFA580(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
  result = sub_232E01A00();
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
  v32 = v4;
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
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

uint64_t sub_232DFA7BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_232E01A00();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v35 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(v6 + 56);
    v20 = (*(v6 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 8 * v18);
    v24 = *(v11 + 40);
    sub_232E01BB0();

    v36 = v23;
    sub_232E01530();
    result = sub_232E01BE0();
    v25 = -1 << *(v11 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v14 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v11 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    *(*(v11 + 56) + 8 * v28) = v36;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v35;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

void sub_232DFA9F4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_232DD5634(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_232DC2030(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_232DD5634(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_232E01B40();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_232DC2E28();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_232E018F0();
    MEMORY[0x238395970](0xD00000000000001BLL, 0x8000000232E0E7B0);
    sub_232E019A0();
    MEMORY[0x238395970](39, 0xE100000000000000);
    sub_232E019B0();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_232DD5634(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_232DC2030(v32, 1);
        v33 = *a3;
        v28 = sub_232DD5634(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_232DFAD70()
{
  v1 = sub_232E00EA0();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v30 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v3);
  v31 = &v23 - v6;
  v26 = v0;
  v7 = *v0;
  v8 = *(*v0 + 2);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v23 = v8 - 2;
    v24 = (v27 + 40);
    v25 = v27 + 16;
    while (1)
    {
      v32 = 0;
      result = MEMORY[0x238396B10](&v32, 8);
      v12 = (v32 * v8) >> 64;
      if (v8 > v32 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v32 * v8)
        {
          do
          {
            v32 = 0;
            result = MEMORY[0x238396B10](&v32, 8);
          }

          while (v13 > v32 * v8);
          v12 = (v32 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = *(v7 + 2);
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = v1;
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v17 = &v7[v29];
        v18 = *(v27 + 72);
        v19 = *(v27 + 16);
        v28 = v18 * v10;
        result = v19(v31, &v7[v29 + v18 * v10], v16);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        v20 = v18 * v14;
        v19(v30, &v17[v18 * v14], v16);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v16;
        if ((result & 1) == 0)
        {
          result = sub_232DB02FC(v7);
          v7 = result;
        }

        if (v10 >= *(v7 + 2))
        {
          goto LABEL_21;
        }

        v21 = &v7[v29];
        v22 = *v24;
        result = (*v24)(&v7[v29 + v28], v30, v16);
        if (v14 >= *(v7 + 2))
        {
          goto LABEL_22;
        }

        result = v22(&v21[v20], v31, v16);
        *v26 = v7;
        v9 = v23;
      }

      --v8;
      if (v10++ == v9)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void (*sub_232DFB014(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_232DFB3BC(v8);
  v8[9] = sub_232DFB120(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_232DFB0C0;
}

void sub_232DFB0C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_232DFB120(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_232DD5634(a2, a3);
  *(v11 + 9) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = v14 ^ 1;
  v17 = __OFADD__(v15, (v14 ^ 1) & 1);
  v18 = v15 + ((v14 ^ 1) & 1);
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_232DC2E28();
      v13 = v21;
      goto LABEL_11;
    }

    sub_232DC2030(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_232DD5634(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  *(v11 + 8) = v16 & 1;
  return sub_232DFB288;
}

void sub_232DFB288(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 8);
  LOBYTE(v5) = *(*a1 + 9);
  if (a2)
  {
    if ((*a1)[1])
    {
      goto LABEL_8;
    }

    v6 = v2[5];
    v4 = *v2[4];
    if (*(*a1 + 9))
    {
      goto LABEL_11;
    }

    v8 = v2[2];
    v7 = v2[3];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    v9 = (v4[6] + 16 * v6);
    *v9 = v8;
    v9[1] = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v3 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[3];
      v4[2] = v3;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v12 = v2[5];
      v13 = *v2[4];
      sub_232DFC970(*(v13 + 48) + 16 * v12);
      sub_232DC22D0(v12, v13);
    }

    goto LABEL_14;
  }

  v6 = v2[5];
  v4 = *v2[4];
  if ((v5 & 1) == 0)
  {
    v15 = v2[2];
    v14 = v2[3];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    v16 = (v4[6] + 16 * v6);
    *v16 = v15;
    v16[1] = v14;
    *(v4[7] + 8 * v6) = v3;
    v17 = v4[2];
    v11 = __OFADD__(v17, 1);
    v3 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_232DFB3BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_232DFB3E4;
}

uint64_t sub_232DFB3F0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_232E01AD0() & 1;
  }
}

void sub_232DFB448(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
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
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_232DFA7BC(a1, a2, v22, a3, &qword_27DDD7840, &qword_232E08720);
        return;
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
      goto LABEL_15;
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
}

void sub_232DFB5C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id))
{
  v4 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_232DF9FCC(v10, v6, v4, a2);
      MEMORY[0x238396AF0](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_232DFB448(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_232DFB748(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v58 = a4;
  v59 = a1;
  v60 = a2;
  v61 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7838, &qword_232E08718);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - v6;
  v8 = sub_232E00EA0();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232E00D90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_232E00DA0();
  v63 = *(v66 - 8);
  v17 = v63[8];
  MEMORY[0x28223BE20](v66);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75C0, &qword_232E07050);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v57 - v22;
  v24 = sub_232E00CE0();
  v65 = *(v24 - 8);
  v25 = *(v65 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v62 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v57 - v28;
  sub_232E00CD0();
  sub_232E00D80();
  (*(v13 + 104))(v16, *MEMORY[0x277CC9968], v12);
  v64 = v29;
  sub_232E00D70();
  (*(v13 + 8))(v16, v12);
  v30 = v19;
  v31 = v65;
  (v63[1])(v30, v66);
  if ((*(v31 + 48))(v23, 1, v24) == 1)
  {
    sub_232DAB434(v23, &qword_27DDD75C0, &qword_232E07050);
    v32 = MEMORY[0x277D84F90];
    (*(v31 + 8))(v64, v24);
    return v32;
  }

  v33 = v62;
  (*(v31 + 32))(v62, v23, v24);
  v34 = v59;
  v35 = 0;
  if (*(sub_232DF7D50(v59) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
    v36 = sub_232E01A00();
  }

  else
  {
    v36 = MEMORY[0x277D84F98];
  }

  v57 = v24;
  v68[0] = v36;

  sub_232DFA9F4(v37, 1, v68);

  v69 = v68[0];
  MEMORY[0x28223BE20](v38);
  v39 = v61;
  *(&v57 - 6) = v60;
  *(&v57 - 5) = v39;
  v40 = v64;
  *(&v57 - 4) = v33;
  *(&v57 - 3) = v40;
  *(&v57 - 2) = &v69;
  sub_232DF7C18(sub_232DFC94C, (&v57 - 8), v34);
  v61 = v69;
  v41 = sub_232DF99B8(v69);
  v42 = *(v41 + 16);
  if (v42)
  {
    v60 = 0;
    v43 = sub_232DAE088(v42, 0);
    v66 = sub_232DB0130(v68, v43 + 4, v42, v41);
    v35 = v68[2];
    v63 = v68[4];

    sub_232D734F4();
    if (v66 != v42)
    {
LABEL_29:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      goto LABEL_30;
    }

    v35 = v60;
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v68[0] = v43;
  sub_232DF9050(v68);
  if (!v35)
  {

    if ((v58 & 0x8000000000000000) == 0)
    {
      v63 = v68[0];
      if (v68[0][2] >= v58)
      {
        v44 = v58;
      }

      else
      {
        v44 = v68[0][2];
      }

      v32 = MEMORY[0x277D84F90];
      if (v58 && v44)
      {
        v45 = (v67 + 48);
        v46 = (v67 + 32);
        v47 = v63 + 5;
        v66 = v11;
        do
        {
          v49 = *(v47 - 1);
          v48 = *v47;

          sub_232E00E80();
          if ((*v45)(v7, 1, v8) == 1)
          {
            sub_232DAB434(v7, &qword_27DDD7838, &qword_232E08718);
          }

          else
          {
            v50 = *v46;
            (*v46)(v11, v7, v8);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_232DADD9C(0, v32[2] + 1, 1, v32);
            }

            v52 = v32[2];
            v51 = v32[3];
            if (v52 >= v51 >> 1)
            {
              v32 = sub_232DADD9C(v51 > 1, v52 + 1, 1, v32);
            }

            v32[2] = v52 + 1;
            v53 = v32 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v52;
            v11 = v66;
            v50(v53, v66, v8);
          }

          v47 += 3;
          --v44;
        }

        while (v44);
      }

      swift_unknownObjectRelease();
      v54 = *(v65 + 8);
      v55 = v57;
      v54(v62, v57);
      v54(v64, v55);
      return v32;
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_30:

  __break(1u);
  return result;
}

uint64_t _sSo14TPSTipsManagerC10TipsDaemonE22hmtFeaturedCollections4with25collectionDeliveryInfoMap08deliverykL0SaySo13TPSCollectionCGSgSDySSAIGSg_SDyS2SGSDySSyXlGSgtF_0(uint64_t a1, void *a2, void *a3)
{
  v58 = sub_232E00EA0();
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v58);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_232E00F30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  result = 0;
  if (a1)
  {
    sub_232E01210();
    v17 = sub_232E011F0();
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v62 = sub_232E00E70();
      v19 = sub_232DFAD70();
      v20 = v62;
      v21 = *(v62 + 16);
      if (v21 >= 4)
      {
        sub_232DF8D90(v62, v62 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), 0, 7uLL);
        v23 = v22;

        v21 = *(v23 + 16);
        v20 = v23;
      }

      v62 = v20;
      if (v21 >= 3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_232E00F20();
      v24 = sub_232E00F00();
      v25 = v11;
      v20 = v24;
      v19 = (*(v12 + 8))(v15, v25);
      v62 = v20;
      v21 = *(v20 + 16);
      if (v21 >= 3)
      {
LABEL_6:
        v61 = v18;
LABEL_9:
        v28 = v7 + 16;
        v59 = *(v7 + 16);
        v29 = *(v7 + 80);
        v57 = v20;
        v30 = v20 + ((v29 + 32) & ~v29);
        v7 = *(v7 + 72);
        v3 = (v28 - 8);
        v31 = v60;
        v32 = v58;
        v59(v10, v30, v58);
        while (1)
        {
          v33 = sub_232E00E90();
          if (!*(v31 + 16))
          {
            break;
          }

          v35 = sub_232DD5634(v33, v34);
          v37 = v36;
          v32 = v58;

          if ((v37 & 1) == 0)
          {
            goto LABEL_11;
          }

          v31 = v60;
          v38 = *(*(v60 + 56) + 8 * v35);
          v39 = *v3;
          v40 = v38;
          v41 = v39(v10, v32);
          MEMORY[0x2383959E0](v41);
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v42 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_232E015F0();
            v32 = v58;
          }

          sub_232E01610();
          v18 = v61;
LABEL_12:
          v30 += v7;
          if (!--v21)
          {
            goto LABEL_20;
          }

          v59(v10, v30, v32);
        }

LABEL_11:
        (*v3)(v10, v32);
        v31 = v60;
        goto LABEL_12;
      }
    }

    MEMORY[0x28223BE20](v19);
    *(&v56 - 2) = &v62;
    sub_232DFB5C8(v60, sub_232DFC944);
    v27 = sub_232DFB748(v26, a2, a3, 3 - *(v62 + 16));

    sub_232DC3084(v27);
    v20 = v62;
    v21 = *(v62 + 16);
    v61 = v18;
    if (v21)
    {
      goto LABEL_9;
    }

    v57 = v62;
LABEL_20:
    if (v18 >> 62)
    {
      if (v18 < 0)
      {
        v44 = v18;
      }

      else
      {
        v44 = v18 & 0xFFFFFFFFFFFFFF8;
      }

      v45 = sub_232E019C0();
      if (sub_232E019C0() < 0)
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v45 >= 3)
      {
        v55 = 3;
      }

      else
      {
        v55 = v45;
      }

      if ((v45 & 0x8000000000000000) == 0)
      {
        v43 = v55;
      }

      else
      {
        v43 = 3;
      }

      result = sub_232E019C0();
      if (result >= v43)
      {
LABEL_25:
        if ((v18 & 0xC000000000000001) != 0 && v43)
        {
          sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);

          sub_232E01910();
          if (v43 != 1)
          {
            sub_232E01910();
            if (v43 != 2)
            {
              sub_232E01910();
            }
          }
        }

        else
        {
        }

        if (v18 >> 62)
        {
          v44 = sub_232E019D0();
          v3 = v46;
          v7 = v47;
          v45 = v48;
        }

        else
        {
          v7 = 0;
          v44 = v18 & 0xFFFFFFFFFFFFFF8;
          v3 = ((v18 & 0xFFFFFFFFFFFFFF8) + 32);
          v45 = (2 * v43) | 1;
        }

        v49 = v45 >> 1;
        if (v7 == v45 >> 1)
        {

          swift_unknownObjectRelease();
          return 0;
        }

        if ((v45 & 1) == 0)
        {
          goto LABEL_37;
        }

        sub_232E01AF0();
        swift_unknownObjectRetain_n();
        v52 = swift_dynamicCastClass();
        if (!v52)
        {
          swift_unknownObjectRelease();
          v52 = MEMORY[0x277D84F90];
        }

        v53 = *(v52 + 16);

        if (!__OFSUB__(v49, v7))
        {
          if (v53 == v49 - v7)
          {
            v54 = swift_dynamicCastClass();

            swift_unknownObjectRelease_n();
            result = v54;
            if (v54)
            {
              return result;
            }

            v51 = MEMORY[0x277D84F90];
            goto LABEL_44;
          }

          goto LABEL_52;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        swift_unknownObjectRelease_n();
LABEL_37:
        sub_232DF8C80(v44, v3, v7, v45, &qword_2814E7C18, 0x277D716D8);
        v51 = v50;

LABEL_44:
        swift_unknownObjectRelease();
        return v51;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 3)
      {
        v43 = 3;
      }

      else
      {
        v43 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v43)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  return result;
}

void _sSo14TPSTipsManagerC10TipsDaemonE30updatedHMTCollectionSectionMap4from19featuredCollectionsSDySSSo013TPSCollectionG0CGSgAJ_SaySo0L0CGSgtF_0(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v26 = MEMORY[0x277D84F90];
    v27 = MEMORY[0x277D84F90];
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
LABEL_7:
    v8 = v7;
    if (!v5)
    {
      goto LABEL_9;
    }

    do
    {
      v7 = v8;
LABEL_12:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v7 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      if (v13 == sub_232E014D0() && v12 == v15)
      {

        goto LABEL_7;
      }

      v17 = sub_232E01AD0();

      v18 = v14;

      if ((v17 & 1) == 0)
      {
        sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);
        v19 = sub_232E015C0();
        [v18 removeCollections_];

        v20 = [v18 collections];
        v21 = sub_232E015D0();

        if (v21 >> 62)
        {
          v22 = sub_232E019C0();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v22)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_232DADB5C(0, *(v26 + 2) + 1, 1, v26);
          }

          v24 = *(v26 + 2);
          v23 = *(v26 + 3);
          if (v24 >= v23 >> 1)
          {
            v26 = sub_232DADB5C((v23 > 1), v24 + 1, 1, v26);
          }

          *(v26 + 2) = v24 + 1;
          v25 = &v26[16 * v24];
          *(v25 + 4) = v13;
          *(v25 + 5) = v12;
          v27 = v26;
        }

        goto LABEL_7;
      }

      v8 = v7;
    }

    while (v5);
LABEL_9:
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v7 >= v6)
      {

        sub_232DF9B18(a1, &v27);

        return;
      }

      v5 = *(a1 + 64 + 8 * v7);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_232DFC794()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DF8584();
}

uint64_t sub_232DFC840()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA72F4;

  return sub_232DF8584();
}

uint64_t sub_232DFC8EC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_232E01AD0() & 1;
  }
}

uint64_t sub_232DFC9C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_232DFC9D4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_232E00AD0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id GenerativeModelsEligibilityValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id GenerativeModelsEligibilityValidation.init(targetContext:)()
{
  v1 = sub_232E01450();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for GenerativeModelsEligibilityValidation();
  v2 = objc_msgSendSuper2(&v4, sel_initWithTargetContext_, v1);

  return v2;
}

id GenerativeModelsEligibilityValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeModelsEligibilityValidation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsEligibilityValidation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GenerativeModelsEligibilityValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsEligibilityValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DFCD68(void *a1, uint64_t a2)
{
  v55 = a2;
  v50 = a1;
  v2 = sub_232E012A0();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_232E00F60();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_232E00FA0();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232E00E30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_232E00F80();
  v17 = *(v44 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v44);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_232E00FC0();
  v51 = *(v21 - 8);
  v52 = v21;
  v22 = *(v51 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E00E10();
  sub_232E00E20();
  (*(v13 + 8))(v16, v12);
  (*(v8 + 104))(v11, *MEMORY[0x277D0E2B8], v45);
  v25 = v47;
  sub_232E00F70();
  sub_232E00FB0();
  v26 = v20;
  v27 = v50;
  (*(v17 + 8))(v26, v44);
  v28 = v46;
  sub_232E00F90();
  v29 = sub_232E00F40();
  (*(v48 + 8))(v28, v49);
  v30 = [v27 BOOLValue];
  sub_232E01290();
  v31 = 0xE000000000000000;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_232E018F0();
  v32 = [v27 name];
  if (v32)
  {
    v33 = v32;
    v34 = sub_232E014D0();
    v31 = v35;
  }

  else
  {
    v34 = 0;
  }

  MEMORY[0x238395970](v34, v31);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v36 = [v27 targetContext];
  if (v36)
  {
    v37 = v36;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v38 = sub_232E01480();
  v40 = v39;

  MEMORY[0x238395970](v38, v40);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if ((v29 ^ v30))
  {
    v41 = 0x65736C6166;
  }

  else
  {
    v41 = 1702195828;
  }

  if ((v29 ^ v30))
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x238395970](v41, v42);

  sub_232E01350();

  (*(v53 + 8))(v25, v54);
  (*(v55 + 16))(v55, ((v29 ^ v30) & 1) == 0, 0);
  return (*(v51 + 8))(v24, v52);
}