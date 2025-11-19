uint64_t ScreenTimeFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](v1);
  return sub_1B83DE24C();
}

unint64_t sub_1B83C7290()
{
  result = qword_1EBA85078;
  if (!qword_1EBA85078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85078);
  }

  return result;
}

unint64_t sub_1B83C72E8()
{
  result = qword_1EBA85080;
  if (!qword_1EBA85080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85080);
  }

  return result;
}

unint64_t sub_1B83C7340()
{
  result = qword_1EBA85088;
  if (!qword_1EBA85088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85088);
  }

  return result;
}

unint64_t sub_1B83C7398()
{
  result = qword_1EBA85090;
  if (!qword_1EBA85090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85090);
  }

  return result;
}

unint64_t sub_1B83C73F0()
{
  result = qword_1EBA85098;
  if (!qword_1EBA85098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScreenTimeFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScreenTimeFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id STConsistencyChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STConsistencyChecker.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STConsistencyChecker();
  return objc_msgSendSuper2(&v2, sel_init);
}

id STConsistencyChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STConsistencyChecker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B83C7738(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851C0, &unk_1B83E8F90);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B83C7988(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1B83C7A30;

  return sub_1B83C88D0();
}

uint64_t sub_1B83C7A30()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v0)
  {
    if (v5)
    {
      v7 = *(v3 + 16);
      v8 = sub_1B83DD8BC();

      v7[2](v7, 0, v8);
      v9 = v7;
LABEL_6:
      _Block_release(v9);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v10 = *(v3 + 16);
      v8 = sub_1B83DDCBC();

      v10[2](v10, v8, 0);
      v9 = v10;
      goto LABEL_6;
    }
  }

LABEL_9:
  v11 = *(v6 + 8);

  return v11();
}

uint64_t sub_1B83C7D68(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1B83C7E10;

  return sub_1B83C8CD4();
}

uint64_t sub_1B83C7E10(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    if (v7)
    {
      v9 = *(v5 + 16);
      v10 = sub_1B83DD8BC();

      (v9)[2](v9, 0, v10);
      _Block_release(v9);
    }

    else
    {
    }
  }

  else if (v7)
  {
    v11 = *(v5 + 16);
    (v11)[2](v11, a1, 0);

    _Block_release(v11);
  }

  else
  {
  }

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1B83C8144(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B83C81E0, 0, 0);
}

uint64_t sub_1B83C81E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = [objc_opt_self() createScreenTimeBag];
  v0[6] = v3;
  v0[7] = [objc_allocWithZone(MEMORY[0x1E698C878]) initWithParentAccount:v2 childDSID:v1 bag:v3];
  v4 = *(MEMORY[0x1E698C480] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1B83C82D0;

  return MEMORY[0x1EEDEE010]();
}

uint64_t sub_1B83C82D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  v8 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = v2;

  if (v2)
  {
    v6 = sub_1B83C84C8;
  }

  else
  {
    v6 = sub_1B83C83E8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B83C83E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v6 = *(v0 + 80);
  if (v3)
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 40);
    v9 = *(v0 + 80);
    v10 = sub_1B83DDCBC();

    (v8)[2](v8, v10, 0);
    _Block_release(v8);
  }

  else
  {
    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1B83C84C8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v6 = *(v0 + 88);
  if (v3)
  {
    v7 = *(v0 + 40);
    v8 = *(v0 + 88);
    v9 = sub_1B83DD8BC();

    (v7)[2](v7, 0, v9);
    _Block_release(v7);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B83C85D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B83B6A88;

  return sub_1B83C8144(v2, v3, v5, v4);
}

uint64_t sub_1B83C8698()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B83B6A88;

  return sub_1B83CD0D8(v2, v3, v5);
}

uint64_t sub_1B83C8758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B83B6A88;

  return sub_1B83CD1C0(a1, v4, v5, v7);
}

uint64_t sub_1B83C8824()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B83B6A88;

  return sub_1B83C7D68(v2);
}

uint64_t sub_1B83C88EC()
{
  v1 = [objc_opt_self() createScreenTimeBag];
  v0[19] = v1;
  v2 = sub_1B83DDCBC();
  v0[20] = v2;
  v3 = [v1 stringForKey_];
  v0[21] = v3;
  v4 = [v3 valuePromise];
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83C8A8C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85100, &qword_1B83E99A8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83C7738;
  v0[13] = &block_descriptor_48;
  v0[14] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83C8A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1B83C8C48;
  }

  else
  {
    v3 = sub_1B83C8B9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83C8B9C()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  v6 = sub_1B83DDCEC();
  v8 = v7;

  v9 = v0[1];

  return v9(v6, v8);
}

uint64_t sub_1B83C8C48()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[23];

  return v6();
}

uint64_t sub_1B83C8CF0()
{
  v1 = [objc_opt_self() ams_sharedAccountStore];
  v2 = *MEMORY[0x1E698C4D0];
  v0[19] = v1;
  v0[20] = v2;
  v3 = [v1 ams:v2 activeiTunesAccountForMediaType:?];
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83C8E64;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA851D0, &qword_1B83E9978);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83C7738;
  v0[13] = &block_descriptor_3;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83C8E64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1B83C8FEC;
  }

  else
  {
    v3 = sub_1B83C8F74;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83C8F74()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1B83C8FEC()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t objectdestroy_16Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B83C90C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B83B6690;

  return sub_1B83C7988(v2);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void __swiftcall STStorefrontClient.init()(STStorefrontClient *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id STStorefrontClient.init()()
{
  type metadata accessor for STAMSStorefrontClient();
  *&v0[OBJC_IVAR___STStorefrontClient_amsStorefrontClient] = swift_allocObject();
  v2.receiver = v0;
  v2.super_class = STStorefrontClient;
  return objc_msgSendSuper2(&v2, sel_init);
}

id STStorefrontClient.init(amsStorefrontClient:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAmsStorefrontClient_];
  swift_unknownObjectRelease();
  return v1;
}

char *STStorefrontClient.init(amsStorefrontClient:)(uint64_t a1)
{
  v3 = [v1 init];
  v4 = *&v3[OBJC_IVAR___STStorefrontClient_amsStorefrontClient];
  *&v3[OBJC_IVAR___STStorefrontClient_amsStorefrontClient] = a1;
  v5 = v3;

  swift_unknownObjectRelease();
  return v5;
}

uint64_t STStorefrontClient.fetchStorefront(with:)(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_1B83DD9EC();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v6 = sub_1B83DDC5C();
  v2[27] = v6;
  v7 = *(v6 - 8);
  v2[28] = v7;
  v8 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B83C9500, 0, 0);
}

uint64_t sub_1B83C9500()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[22];
  sub_1B83DDC4C();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83C9694;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83CE59C;
  v0[13] = &block_descriptor_4;
  v0[14] = v4;
  [v3 fetchStorefrontFromAMSWith:v2 completionHandler:v0 + 10];
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83C9694()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1B83C98A8;
  }

  else
  {
    v3 = sub_1B83C97D0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83C97D0()
{
  v9 = *MEMORY[0x1E69E9840];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];

  v6 = v0[1];
  v7 = *MEMORY[0x1E69E9840];

  return v6(v2, v1);
}

uint64_t sub_1B83C98A8()
{
  v59 = v0;
  v58[1] = *MEMORY[0x1E69E9840];
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[21];
  swift_willThrow();
  v8 = [v7 localDeviceLocale];
  sub_1B83DD9AC();

  (*(v6 + 16))(v4, v3, v5);
  v9 = v2;
  v10 = sub_1B83DDC3C();
  v11 = sub_1B83DDE9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[30];
    v14 = v0[24];
    v13 = v0[25];
    v15 = v0[23];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v58[0] = v54;
    *v16 = 138543618;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    *(v16 + 12) = 2082;
    sub_1B83CDB3C();
    v20 = sub_1B83DE17C();
    v22 = v21;
    v57 = *(v14 + 8);
    v57(v13, v15);
    v23 = sub_1B83CD594(v20, v22, v58);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_1B831F000, v10, v11, "STStorefrontClient failed to fetch storefront from AMS: %{public}@; falling back to storefront from locale %{public}s", v16, 0x16u);
    sub_1B83AD84C(v17, &qword_1EBA84F40, &unk_1B83E8E90);
    MEMORY[0x1B8CBE260](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1B8CBE260](v54, -1, -1);
    MEMORY[0x1B8CBE260](v16, -1, -1);
  }

  else
  {
    v25 = v0[24];
    v24 = v0[25];
    v26 = v0[23];

    v57 = *(v25 + 8);
    v57(v24, v26);
  }

  v27 = v0[26];
  v28 = v0[22];
  v29 = sub_1B83DD99C();
  v0[20] = 0;
  v30 = [v28 fetchStorefrontFromLocale:v29 error:v0 + 20];

  v31 = v0[20];
  v32 = v0[29];
  v33 = v0[30];
  v34 = v0[27];
  v35 = v0[28];
  v36 = v0[26];
  if (v30)
  {
    v38 = v0[23];
    v37 = v0[24];
    v39 = sub_1B83DDCEC();
    v53 = v40;
    v55 = v39;
    v41 = v31;

    v57(v36, v38);
    (*(v35 + 8))(v32, v34);
    v42 = v0[29];
    v43 = v0[25];
    v44 = v0[26];

    v45 = v0[1];
    v46 = *MEMORY[0x1E69E9840];

    return v45(v55, v53);
  }

  else
  {
    v48 = v0[24];
    v56 = v0[25];
    v49 = v0[23];
    v50 = v31;
    sub_1B83DD8CC();

    swift_willThrow();
    v57(v36, v49);
    (*(v35 + 8))(v32, v34);

    v51 = v0[1];
    v52 = *MEMORY[0x1E69E9840];

    return v51();
  }
}

uint64_t sub_1B83C9E84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B83C9F48;

  return STStorefrontClient.fetchStorefront(with:)(v6);
}

uint64_t sub_1B83C9F48()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v0)
  {
    if (v5)
    {
      v9 = *(v3 + 32);
      v10 = sub_1B83DD8BC();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v3 + 32);
      v10 = sub_1B83DDCBC();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1B83CA140(uint64_t a1)
{
  v2[74] = v1;
  v2[73] = a1;
  v3 = sub_1B83DDC5C();
  v2[75] = v3;
  v4 = *(v3 - 8);
  v2[76] = v4;
  v5 = *(v4 + 64) + 15;
  v2[77] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83CA204, 0, 0);
}

uint64_t sub_1B83CA204()
{
  v1 = *(v0 + 616);
  *(v0 + 624) = [*(v0 + 584) userDSID];
  sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  v2 = sub_1B83DDF0C();
  v3 = sub_1B83DDF2C();

  sub_1B83DDC4C();
  v4 = sub_1B83DDC3C();
  v5 = sub_1B83DDEAC();
  v6 = os_log_type_enabled(v4, v5);
  if (v3)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B831F000, v4, v5, "STStorefrontClient found local non-iCloud user", v7, 2u);
      MEMORY[0x1B8CBE260](v7, -1, -1);
    }

    v8 = v0 + 208;
    v9 = *(v0 + 592);

    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 560;
    *(v0 + 216) = sub_1B83CA55C;
    v10 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
    *(v0 + 464) = MEMORY[0x1E69E9820];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_1B83CE59C;
    *(v0 + 488) = &block_descriptor_80;
    *(v0 + 496) = v10;
    [v9 fetchStorefrontFromAMSForLocalUserWithCompletionHandler_];
  }

  else
  {
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B831F000, v4, v5, "STStorefrontClient fetching active iTunes account...", v11, 2u);
      MEMORY[0x1B8CBE260](v11, -1, -1);
    }

    v8 = v0 + 16;
    v12 = *(v0 + 592);

    *(v0 + 640) = *(v12 + OBJC_IVAR___STStorefrontClient_amsStorefrontClient);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 576;
    *(v0 + 24) = sub_1B83CA714;
    v13 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA851D0, &qword_1B83E9978);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1B83C7738;
    *(v0 + 296) = &block_descriptor_70;
    *(v0 + 304) = v13;
    [swift_unknownObjectRetain() activeiTunesAccountWithCompletionHandler_];
  }

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1B83CA55C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 632) = v2;
  if (v2)
  {
    v3 = sub_1B83CB224;
  }

  else
  {
    v3 = sub_1B83CA66C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83CA66C()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 560);
  v5 = *(v0 + 568);
  v6 = *(v0 + 616);

  v7 = *(v0 + 8);

  return v7(v4, v5);
}

uint64_t sub_1B83CA714()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 648) = v2;
  if (v2)
  {
    v3 = sub_1B83CB2CC;
  }

  else
  {
    v3 = sub_1B83CA824;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83CA824()
{
  v1 = v0[80];
  v2 = v0[77];
  v3 = v0[72];
  v0[82] = v3;
  swift_unknownObjectRelease();
  v4 = v3;
  v5 = sub_1B83DDC3C();
  v6 = sub_1B83DDEAC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_1B831F000, v5, v6, "STStorefrontClient successfully fetched active iTunes account: %@", v7, 0xCu);
    sub_1B83AD84C(v8, &qword_1EBA84F40, &unk_1B83E8E90);
    MEMORY[0x1B8CBE260](v8, -1, -1);
    MEMORY[0x1B8CBE260](v7, -1, -1);
  }

  v10 = [v4 ams_DSID];
  v0[83] = v10;
  v11 = v0[78];
  if (v10)
  {
    v12 = v10;
    sub_1B83A1210(0, &qword_1EBA851D8, 0x1E69E58C0);
    v13 = sub_1B83DDF2C();
    v14 = v11;
    v15 = v0[78];
    v16 = v0[77];
    if (v13)
    {
      v17 = sub_1B83DDC3C();
      v18 = sub_1B83DDEAC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[78];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138543362;
        *(v20 + 4) = v19;
        *v21 = v19;
        v22 = v19;
        _os_log_impl(&dword_1B831F000, v17, v18, "STStorefrontClient found active iTunes account matching DSID %{public}@", v20, 0xCu);
        sub_1B83AD84C(v21, &qword_1EBA84F40, &unk_1B83E8E90);
        MEMORY[0x1B8CBE260](v21, -1, -1);
        MEMORY[0x1B8CBE260](v20, -1, -1);
      }

      v23 = v0[74];

      v0[18] = v0;
      v0[23] = v0 + 68;
      v0[19] = sub_1B83CAE84;
      v24 = swift_continuation_init();
      v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
      v0[50] = MEMORY[0x1E69E9820];
      v0[51] = 1107296256;
      v0[52] = sub_1B83CE59C;
      v0[53] = &block_descriptor_77;
      v0[54] = v24;
      [v23 fetchStorefrontFromAMSForLocalUserWithCompletionHandler_];
      v25 = v0 + 18;
    }

    else
    {
      v42 = v12;
      v43 = sub_1B83DDC3C();
      v44 = sub_1B83DDEAC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = v0[78];
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138543618;
        *(v46 + 4) = v42;
        *(v46 + 12) = 2114;
        *(v46 + 14) = v45;
        *v47 = v12;
        v47[1] = v45;
        v48 = v45;
        v49 = v42;
        _os_log_impl(&dword_1B831F000, v43, v44, "STStorefrontClient found local signed-in iTunes account with DSID %{public}@ different from user DSID %{public}@; assuming user is remote child", v46, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F40, &unk_1B83E8E90);
        swift_arrayDestroy();
        MEMORY[0x1B8CBE260](v47, -1, -1);
        MEMORY[0x1B8CBE260](v46, -1, -1);
      }

      v50 = v0[78];
      v51 = v0[74];

      v0[10] = v0;
      v0[15] = v0 + 66;
      v0[11] = sub_1B83CB054;
      v52 = swift_continuation_init();
      v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
      v0[42] = MEMORY[0x1E69E9820];
      v0[43] = 1107296256;
      v0[44] = sub_1B83CE59C;
      v0[45] = &block_descriptor_73;
      v0[46] = v52;
      [v51 fetchStorefrontFromAMSForChildWithDSID:v50 parentAccount:v4 completionHandler:v0 + 42];
      v25 = v0 + 10;
    }

    return MEMORY[0x1EEE6DEC8](v25);
  }

  else
  {
    v26 = v0[77];
    v27 = v11;
    v28 = sub_1B83DDC3C();
    v29 = sub_1B83DDE9C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[78];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      *(v31 + 4) = v30;
      *v32 = v30;
      v33 = v30;
      _os_log_impl(&dword_1B831F000, v28, v29, "STStorefrontClient got options with iCloud user DSID %{public}@, but active iTunes account has nil DSID", v31, 0xCu);
      sub_1B83AD84C(v32, &qword_1EBA84F40, &unk_1B83E8E90);
      MEMORY[0x1B8CBE260](v32, -1, -1);
      MEMORY[0x1B8CBE260](v31, -1, -1);
    }

    v34 = v0[78];
    v35 = v0[77];
    v36 = v0[76];
    v37 = v0[75];

    sub_1B83CDFC0();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();

    (*(v36 + 8))(v35, v37);
    v39 = v0[77];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_1B83CAE84()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 672) = v2;
  if (v2)
  {
    v3 = sub_1B83CB388;
  }

  else
  {
    v3 = sub_1B83CAF94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83CAF94()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 544);
  v7 = *(v0 + 552);
  v8 = *(v0 + 616);

  v9 = *(v0 + 8);

  return v9(v6, v7);
}

uint64_t sub_1B83CB054()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 680) = v2;
  if (v2)
  {
    v3 = sub_1B83CB448;
  }

  else
  {
    v3 = sub_1B83CB164;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83CB164()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 528);
  v7 = *(v0 + 536);
  v8 = *(v0 + 616);

  v9 = *(v0 + 8);

  return v9(v6, v7);
}

uint64_t sub_1B83CB224()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  v6 = v0[79];
  v7 = v0[77];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B83CB2CC()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = v0[75];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  swift_unknownObjectRelease();
  v7 = v0[81];
  v8 = v0[77];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B83CB388()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v8 = v0[84];
  v9 = v0[77];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B83CB448()
{
  v1 = v0[85];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[75];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v8 = v0[85];
  v9 = v0[77];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B83CB690(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B83CB754;

  return sub_1B83CA140(v6);
}

uint64_t sub_1B83CB754()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_1B83DD8BC();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_1B83DDCBC();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1B83CB8FC()
{
  v1[20] = v0;
  v2 = sub_1B83DDC5C();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83CB9BC, 0, 0);
}

uint64_t sub_1B83CB9BC()
{
  v1 = v0[23];
  sub_1B83DDC4C();
  v2 = sub_1B83DDC3C();
  v3 = sub_1B83DDEAC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B831F000, v2, v3, "STStorefrontClient fetching storefront for local user from AMS bag...", v4, 2u);
    MEMORY[0x1B8CBE260](v4, -1, -1);
  }

  v5 = v0[20];

  v0[24] = *(v5 + OBJC_IVAR___STStorefrontClient_amsStorefrontClient);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83CBBA0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83CE59C;
  v0[13] = &block_descriptor_51;
  v0[14] = v6;
  [swift_unknownObjectRetain() bagCountryCodeWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83CBBA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1B83CBE2C;
  }

  else
  {
    v3 = sub_1B83CBCB0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83CBCB0()
{
  v17 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];
  v4 = v0[19];
  swift_unknownObjectRelease();

  v5 = sub_1B83DDC3C();
  v6 = sub_1B83DDEAC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1B83CD594(v3, v4, &v16);
    _os_log_impl(&dword_1B831F000, v5, v6, "STStorefrontClient successfully fetched storefront: %{public}s for local user from AMS bag", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B8CBE260](v12, -1, -1);
    MEMORY[0x1B8CBE260](v11, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  v13 = v0[23];

  v14 = v0[1];

  return v14(v3, v4);
}

uint64_t sub_1B83CBE2C()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  swift_willThrow();
  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();

  v6 = v0[1];
  v7 = v0[25];

  return v6();
}

uint64_t sub_1B83CBED0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851C0, &unk_1B83E8F90);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1B83DDCEC();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1B83CC118(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B83CC1C0;

  return sub_1B83CB8FC();
}

uint64_t sub_1B83CC1C0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_1B83DD8BC();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_1B83DDCBC();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1B83CC350(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_1B83DDC5C();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B83CC414, 0, 0);
}

uint64_t sub_1B83CC414()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[21];
  sub_1B83DDC4C();
  v4 = v2;
  v5 = v3;
  v6 = sub_1B83DDC3C();
  v7 = sub_1B83DDEAC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[20];
    v9 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v8;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v8;
    v11[1] = v9;
    v12 = v8;
    v13 = v9;
    _os_log_impl(&dword_1B831F000, v6, v7, "STStorefrontClient fetching storefront for remote child with DSID %{public}@, parent account %@...", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84F40, &unk_1B83E8E90);
    swift_arrayDestroy();
    MEMORY[0x1B8CBE260](v11, -1, -1);
    MEMORY[0x1B8CBE260](v10, -1, -1);
  }

  else
  {
    v8 = v0[20];
  }

  v0[26] = v8;
  v14 = v0[21];
  v15 = v0[20];
  v0[27] = *(v0[22] + OBJC_IVAR___STStorefrontClient_amsStorefrontClient);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B83CC698;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85118, &unk_1B83E99B8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B83CE59C;
  v0[13] = &block_descriptor_32;
  v0[14] = v16;
  [swift_unknownObjectRetain() storefrontForChildWithDSID:v15 parentAccount:v14 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B83CC698()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1B83CC9DC;
  }

  else
  {
    v3 = sub_1B83CC7A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B83CC7A8()
{
  v30 = v0;
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  swift_unknownObjectRelease();
  v6 = sub_1B83DDD3C();
  v8 = v7;

  v9 = v4;

  v10 = sub_1B83DDC3C();
  v11 = sub_1B83DDEAC();

  if (os_log_type_enabled(v10, v11))
  {
    v28 = v0[25];
    v12 = v0[24];
    v26 = v0[26];
    v27 = v0[23];
    v13 = v0[20];
    v14 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_1B83CD594(v14, v8, &v29);
    *(v15 + 12) = 2114;
    *(v15 + 14) = v13;
    *v16 = v26;
    v18 = v13;
    _os_log_impl(&dword_1B831F000, v10, v11, "STStorefrontClient successfully fetched storefront: %{public}s for remote child with DSID %{public}@", v15, 0x16u);
    sub_1B83AD84C(v16, &qword_1EBA84F40, &unk_1B83E8E90);
    MEMORY[0x1B8CBE260](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1B8CBE260](v17, -1, -1);
    v19 = v15;
    v6 = v14;
    MEMORY[0x1B8CBE260](v19, -1, -1);

    (*(v12 + 8))(v28, v27);
  }

  else
  {
    v20 = v0[24];
    v21 = v0[25];
    v22 = v0[23];

    (*(v20 + 8))(v21, v22);
  }

  v23 = v0[25];

  v24 = v0[1];

  return v24(v6, v8);
}

uint64_t sub_1B83CC9DC()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  swift_willThrow();
  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_1B83CCC10(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1B83CCCE8;

  return sub_1B83CC350(v8, v9);
}

uint64_t sub_1B83CCCE8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_1B83DD8BC();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v12 = sub_1B83DDCBC();

    v11 = v12;
    v10 = 0;
    v9 = v12;
  }

  v13 = *(v3 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t STStorefrontClientError.hashValue.getter()
{
  v1 = *v0;
  sub_1B83DE20C();
  MEMORY[0x1B8CBD740](v1);
  return sub_1B83DE24C();
}

uint64_t sub_1B83CD0D8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B83B6A88;

  return v7();
}

uint64_t sub_1B83CD1C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B83B6690;

  return v8();
}

uint64_t sub_1B83CD2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA84D90, &qword_1B83E8B00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B83B67D8(a3, v25 - v11);
  v13 = sub_1B83DDE3C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B83AD84C(v12, &unk_1EBA84D90, &qword_1B83E8B00);
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

  sub_1B83DDE2C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1B83DDE1C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1B83DDD4C() + 32;
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

    sub_1B83AD84C(a3, &unk_1EBA84D90, &qword_1B83E8B00);

    return v23;
  }

LABEL_8:
  sub_1B83AD84C(a3, &unk_1EBA84D90, &qword_1B83E8B00);
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

uint64_t sub_1B83CD594(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B83CD660(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B83B39BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B83CD660(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B83CD76C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B83DE07C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B83CD76C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B83CD7B8(a1, a2);
  sub_1B83CD8E8(&unk_1F303F0A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B83CD7B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B83CD9D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B83DE07C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B83DDD7C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B83CD9D4(v10, 0);
        result = sub_1B83DE03C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B83CD8E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B83CDA48(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B83CD9D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851E0, &qword_1B83E9B80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B83CDA48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA851E0, &qword_1B83E9B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1B83CDB3C()
{
  result = qword_1EBA85120;
  if (!qword_1EBA85120)
  {
    sub_1B83DD9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85120);
  }

  return result;
}

unint64_t sub_1B83CDB98()
{
  result = qword_1EBA85130;
  if (!qword_1EBA85130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85130);
  }

  return result;
}

char *sub_1B83CDC10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA851A8, &unk_1B83E9AA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_1B83DD9CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B83DDC5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DDC4C();
  sub_1B83DD9DC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B83AD84C(v4, &qword_1EBA851A8, &unk_1B83E9AA0);
    sub_1B83CDFC0();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v28 = v11;
    v29 = v10;
    (*(v6 + 32))(v9, v4, v5);
    sub_1B83DD9BC();
    v4 = sub_1B83DDD3C();
    v17 = v16;

    v18 = sub_1B83DDC3C();
    v19 = sub_1B83DDEAC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v26 = v0;
      v21 = v20;
      v22 = swift_slowAlloc();
      v27 = v4;
      v23 = v22;
      v30 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1B83CD594(v27, v17, &v30);
      _os_log_impl(&dword_1B831F000, v18, v19, "STStorefrontClient got storefront: %{public}s from device locale", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v24 = v23;
      v4 = v27;
      MEMORY[0x1B8CBE260](v24, -1, -1);
      MEMORY[0x1B8CBE260](v21, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    (*(v28 + 8))(v14, v29);
  }

  return v4;
}

unint64_t sub_1B83CDFC0()
{
  result = qword_1EBA851B0;
  if (!qword_1EBA851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA851B0);
  }

  return result;
}

uint64_t sub_1B83CE014()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B83B6A88;

  return sub_1B83CCC10(v2, v3, v5, v4);
}

uint64_t sub_1B83CE0D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B83B6A88;

  return sub_1B83B5358(a1, v5);
}

uint64_t sub_1B83CE18C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B83B6690;

  return sub_1B83B5358(a1, v5);
}

uint64_t sub_1B83CE244()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B83B6A88;

  return sub_1B83CC118(v2, v3);
}

uint64_t sub_1B83CE2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B83B6690;

  return sub_1B83CD1C0(a1, v4, v5, v7);
}

uint64_t sub_1B83CE3BC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B83B6A88;

  return sub_1B83CB690(v2, v3, v4);
}

uint64_t objectdestroy_54Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B83CE4B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B83B6A88;

  return sub_1B83C9E84(v2, v3, v4);
}

id Schedule.__allocating_init(enabled:start:end:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = a1;
  v8 = OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start;
  v9 = sub_1B83DD86C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(&v7[v8], a2, v9);
  v11(&v7[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], a3, v9);
  v15.receiver = v7;
  v15.super_class = v3;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = *(v10 + 8);
  v13(a3, v9);
  v13(a2, v9);
  return v12;
}

id sub_1B83CE710(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B83DD86C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10 = sub_1B83DD83C();
  (*(v6 + 8))(v9, v5);

  return v10;
}

uint64_t sub_1B83CE828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1B83DD86C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id Schedule.init(enabled:start:end:)(char a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = a1;
  v6 = OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start;
  v7 = sub_1B83DD86C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(&v3[v6], a2, v7);
  v9(&v3[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], a3, v7);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for Schedule();
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = *(v8 + 8);
  v11(a3, v7);
  v11(a2, v7);
  return v10;
}

uint64_t type metadata accessor for Schedule()
{
  result = qword_1EBA85250;
  if (!qword_1EBA85250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1B83CEBA4(int a1)
{
  v17 = a1;
  v2 = sub_1B83DD86C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = v3[2];
  v10(&v16[-v8], v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start, v2);
  v10(v7, v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v2);
  v11 = type metadata accessor for Schedule();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = v17;
  v10(&v12[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v9, v2);
  v10(&v12[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v7, v2);
  v18.receiver = v12;
  v18.super_class = v11;
  v13 = objc_msgSendSuper2(&v18, sel_init);
  v14 = v3[1];
  v14(v7, v2);
  v14(v9, v2);
  return v13;
}

id sub_1B83CEDBC(uint64_t a1)
{
  v3 = sub_1B83DD86C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  v12 = v4[2];
  v12(&v18 - v9, v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start, v3);
  v12(v8, a1, v3);
  v13 = type metadata accessor for Schedule();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = v11;
  v12(&v14[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v10, v3);
  v12(&v14[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v8, v3);
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v4[1];
  v16(v8, v3);
  v16(v10, v3);
  return v15;
}

id sub_1B83CEFA4(uint64_t a1)
{
  v3 = sub_1B83DD86C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  v12 = v4[2];
  v12(&v18 - v9, a1, v3);
  v12(v8, v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v3);
  v13 = type metadata accessor for Schedule();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] = v11;
  v12(&v14[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v10, v3);
  v12(&v14[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v8, v3);
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = v4[1];
  v16(v8, v3);
  v16(v10, v3);
  return v15;
}

id sub_1B83CF18C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_1B83DD86C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD84C();
  v11 = a1;
  v12 = a4(v10);

  (*(v7 + 8))(v10, v6);

  return v12;
}

uint64_t static Schedule.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBA851F0 = a1;
  return result;
}

void sub_1B83CF404(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  v4 = sub_1B83DDCBC();
  [a1 encodeBool:v3 forKey:v4];

  v5 = sub_1B83DD83C();
  v6 = sub_1B83DDCBC();
  [a1 encodeObject:v5 forKey:v6];

  v7 = sub_1B83DD83C();
  v8 = sub_1B83DDCBC();
  [a1 encodeObject:v7 forKey:v8];
}

id Schedule.init(coder:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85200, &qword_1B83E9B88);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v10 = sub_1B83DD86C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = sub_1B83DDCBC();
  v19 = [a1 decodeObjectForKey_];

  if (v19)
  {
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45 = v43;
  v46 = v44;
  if (*(&v44 + 1))
  {
    v39 = v15;
    v40 = v17;
    v41 = a1;
    v20 = swift_dynamicCast();
    v21 = *(v11 + 56);
    v21(v9, v20 ^ 1u, 1, v10);
    v22 = *(v11 + 48);
    if (v22(v9, 1, v10) == 1)
    {

      v7 = v9;
    }

    else
    {
      v37 = *(v11 + 32);
      v38 = v11 + 32;
      v37(v40, v9, v10);
      v23 = sub_1B83DDCBC();
      v24 = [v41 decodeObjectForKey_];

      if (v24)
      {
        sub_1B83DDF5C();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      v45 = v43;
      v46 = v44;
      if (*(&v44 + 1))
      {
        v25 = swift_dynamicCast();
        v21(v7, v25 ^ 1u, 1, v10);
        if (v22(v7, 1, v10) != 1)
        {
          v29 = v39;
          v30 = v37;
          v37(v39, v7, v10);
          v31 = sub_1B83DDCBC();
          v32 = v41;
          v33 = [v41 decodeBoolForKey_];

          *(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled) = v33;
          v30(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start, v40, v10);
          v30(v1 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v29, v10);
          v34 = type metadata accessor for Schedule();
          v42.receiver = v1;
          v42.super_class = v34;
          v35 = objc_msgSendSuper2(&v42, sel_init);

          return v35;
        }
      }

      else
      {

        sub_1B83AD84C(&v45, &qword_1EBA84970, &qword_1B83E8430);
        v21(v7, 1, 1, v10);
      }

      (*(v11 + 8))(v40, v10);
    }
  }

  else
  {

    sub_1B83AD84C(&v45, &qword_1EBA84970, &qword_1B83E8430);
    (*(v11 + 56))(v9, 1, 1, v10);
    v7 = v9;
  }

  sub_1B83AD84C(v7, &unk_1EBA85200, &qword_1B83E9B88);
  type metadata accessor for Schedule();
  v26 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1B83CFBD4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1B83DD86C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83A58F8(a1, v17);
  if (!v18)
  {
    sub_1B83AD84C(v17, &qword_1EBA84970, &qword_1B83E8430);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v13 = 0;
    return v13 & 1;
  }

  v9 = v16;
  if (*(v2 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled) != v16[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled] || (v10 = v5[2], v10(v8, &v16[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v4), sub_1B83D0760(&qword_1EBA85218), v11 = sub_1B83DDCAC(), v12 = v5[1], v12(v8, v4), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  v10(v8, &v9[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end], v4);
  v13 = sub_1B83DDCAC();

  v12(v8, v4);
  return v13 & 1;
}

id Schedule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B83CFF10()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1B83CFF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B83D0B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B83CFF88(uint64_t a1)
{
  v2 = sub_1B83D02C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B83CFFC4(uint64_t a1)
{
  v2 = sub_1B83D02C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Schedule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Schedule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B83D00E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85220, &qword_1B83E9B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B83D02C4();
  sub_1B83DE27C();
  v11 = *(v3 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  v13[15] = 0;
  sub_1B83DE14C();
  if (!v2)
  {
    v13[14] = 1;
    sub_1B83DD86C();
    sub_1B83D0760(&qword_1EBA85230);
    sub_1B83DE16C();
    v13[13] = 2;
    sub_1B83DE16C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B83D02C4()
{
  result = qword_1EBA85228;
  if (!qword_1EBA85228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85228);
  }

  return result;
}

void *Schedule.init(from:)(uint64_t *a1)
{
  v3 = sub_1B83DD86C();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA85238, &qword_1B83E9B98);
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v27 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B83D02C4();
  sub_1B83DE26C();
  if (v1)
  {
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_1(v31);
    type metadata accessor for Schedule();
    v18 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x30);
    v19 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v7;
    v16 = v10;
    v34 = 0;
    v17 = sub_1B83DE10C();
    v21 = v32;
    *(v32 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled) = v17 & 1;
    v34 = 1;
    sub_1B83D0760(&unk_1EBA85240);
    sub_1B83DE12C();
    v22 = *(v29 + 32);
    v27 = OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start;
    v22(&v21[OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start], v9, v3);
    v34 = 2;
    v23 = v28;
    sub_1B83DE12C();
    v24 = v32;
    v22(v32 + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v23, v3);
    v25 = type metadata accessor for Schedule();
    v33.receiver = v24;
    v33.super_class = v25;
    v26 = objc_msgSendSuper2(&v33, sel_init);
    (*(v16 + 8))(v13, v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  return v26;
}

uint64_t sub_1B83D0760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B83DD86C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1B83D07A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Schedule());
  result = Schedule.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B83D0828()
{
  result = sub_1B83DD86C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B83D0A58()
{
  result = qword_1EBA85260;
  if (!qword_1EBA85260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85260);
  }

  return result;
}

unint64_t sub_1B83D0AB0()
{
  result = qword_1EBA85268;
  if (!qword_1EBA85268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85268);
  }

  return result;
}

unint64_t sub_1B83D0B08()
{
  result = qword_1EBA85270;
  if (!qword_1EBA85270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA85270);
  }

  return result;
}

uint64_t sub_1B83D0B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B83DE18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1B83DE18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B83DE18C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_1B83D0C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B83DD8BC();
  (*(a2 + 16))(a2, v3);
}

id sub_1B83D0CE4()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83D0D40()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83D0D9C()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id sub_1B83D0DF8()
{
  v0 = sub_1B83DDCBC();

  return v0;
}

id static NSXPCConnection.defaultUserSettingsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D0F00()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

id static NSXPCConnection.compatibilityUserSettingsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D1098()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

id static NSXPCConnection.persistenceDiagnosticsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D1230()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

uint64_t sub_1B83D1368(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B83A06F0;
  aBlock[3] = a3;
  v6 = _Block_copy(aBlock);

  v7 = [v4 *a4];
  _Block_release(v6);
  sub_1B83DDF5C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85280, &qword_1B83E9D48);
  if (swift_dynamicCast())
  {
    return v9;
  }

  result = sub_1B83DE09C();
  __break(1u);
  return result;
}

id sub_1B83D14F8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

void sub_1B83D1598(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
}

id static NSXPCConnection.legacyAgentUserSettingsStoreConnection()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];
  return v3;
}

id sub_1B83D1698()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0();
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1B83DDCBC();
  v3 = [v1 initWithMachServiceName:v2 options:4096];

  [v3 setRemoteObjectInterface_];

  return v3;
}

void _sSo15NSXPCConnectionC14ScreenTimeCoreE45configureExportedUserSettingsStoringInterfaceyySo14NSXPCInterfaceCFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84778, &qword_1B83E7EB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B83E7E90;
  v16 = type metadata accessor for AlwaysAllowed();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84780, &qword_1B83E7EB8);
  *(v0 + 32) = v16;
  v15 = type metadata accessor for AppLimit();
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84788, &qword_1B83E7EC0);
  *(v0 + 64) = v15;
  v14 = type metadata accessor for AppLimitSchedule();
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84790, &qword_1B83E7EC8);
  *(v0 + 96) = v14;
  v13 = type metadata accessor for Downtime();
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA84798, &qword_1B83E7ED0);
  *(v0 + 128) = v13;
  v12 = sub_1B83A1210(0, &qword_1EBA83708, 0x1E695DEC8);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847A0, &qword_1B83E7ED8);
  *(v0 + 160) = v12;
  v11 = sub_1B83A1210(0, &qword_1EBA847A8, 0x1E695DF10);
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847B0, &qword_1B83E7EE0);
  *(v0 + 192) = v11;
  v10 = sub_1B83A1210(0, &qword_1EBA836E0, 0x1E696AEC0);
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847B8, &qword_1B83E7EE8);
  *(v0 + 224) = v10;
  v9 = sub_1B83A1210(0, &qword_1EBA83700, 0x1E696ABC0);
  *(v0 + 280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847C0, &qword_1B83E7EF0);
  *(v0 + 256) = v9;
  v8 = sub_1B83A1210(0, &qword_1EBA847C8, 0x1E695DFB0);
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847D0, &qword_1B83E7EF8);
  *(v0 + 288) = v8;
  v1 = sub_1B83A1210(0, &qword_1EBA847D8, 0x1E695DFD8);
  *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847E0, &qword_1B83E7F00);
  *(v0 + 320) = v1;
  v2 = type metadata accessor for Schedule();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847E8, &qword_1B83E7F08);
  *(v0 + 352) = v2;
  v3 = type metadata accessor for UserSettings();
  *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847F0, &qword_1B83E7F10);
  *(v0 + 384) = v3;
  v4 = type metadata accessor for UserID();
  *(v0 + 440) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA847F8, &qword_1B83E7F18);
  *(v0 + 416) = v4;
  v5 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v6 = sub_1B83DDDCC();

  v7 = [v5 initWithArray_];

  sub_1B83DDE6C();
  sub_1B83DE09C();
  __break(1u);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B83D1E98()
{
  v1 = *(v0 + 16);
  v2 = sub_1B83DD8BC();
  (*(v1 + 16))(v1, v2);
}