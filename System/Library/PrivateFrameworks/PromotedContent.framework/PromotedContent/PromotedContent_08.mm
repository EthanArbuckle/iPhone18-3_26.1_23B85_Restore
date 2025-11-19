id OutstreamVideoInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OutstreamVideoInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutstreamVideoInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C1B556C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for OutstreamVideoInfo());
  result = OutstreamVideoInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C1B55748()
{
  sub_1C1AEF0A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B55894()
{
  result = qword_1EBF095B8;
  if (!qword_1EBF095B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF095B8);
  }

  return result;
}

unint64_t sub_1C1B558EC()
{
  result = qword_1EBF095C0;
  if (!qword_1EBF095C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF095C0);
  }

  return result;
}

unint64_t sub_1C1B55944()
{
  result = qword_1EBF095C8[0];
  if (!qword_1EBF095C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF095C8);
  }

  return result;
}

uint64_t sub_1C1B55998()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

id static EventRegistrarHandler.notificationRegistrar.getter()
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v0 = [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t static EventRegistrarHandler.removeListener(with:)(uint64_t a1)
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v2 = [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  [v2 removeHandlerWithIdentifier_];

  return swift_unknownObjectRelease();
}

id _s15PromotedContent21EventRegistrarHandlerC010addJourneyC8Listener3for7closureSiSo15APJourneyMetricV_ySo16APMetricProtocol_pctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_opt_self() daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v6 = [objc_msgSend(swift_getObjCClassFromMetadata() daemonDelivery)];
  swift_unknownObjectRelease();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_1C1B55CBC;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C1B49F5C;
  v11[3] = &unk_1F4153318;
  v8 = _Block_copy(v11);

  v9 = [v6 registerHandlerForPurpose:100 andMetric:a1 closure:v8];
  swift_unknownObjectRelease();
  _Block_release(v8);
  return v9;
}

uint64_t sub_1C1B55CBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t ContentProviderPluginSettings.init(onVendRefillCache:adType:placement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t ContentProviderPlugin.__allocating_init(contextBuilder:taskBuilder:diagnostics:contentPipeline:settings:isColdStart:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, char *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ContentProviderPlugin.init(contextBuilder:taskBuilder:diagnostics:contentPipeline:settings:isColdStart:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t ContentProviderPlugin.init(contextBuilder:taskBuilder:diagnostics:contentPipeline:settings:isColdStart:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, char *a5, uint64_t a6)
{
  v12 = *a5;
  v13 = *(a5 + 1);
  v14 = *(a5 + 2);
  v17 = *(*v6 + 80);
  swift_getExtendedExistentialTypeMetadata();
  *(v6 + 56) = sub_1C1B94F18();
  *(v6 + 64) = sub_1C1B94F18();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v6 + 224) = v15;
  sub_1C1AC0580(a1, v6 + 112);
  sub_1C1AC0580(a2, v6 + 152);
  sub_1C1AC0580(a3, v6 + 72);
  sub_1C1AC0580(a4, v6 + 16);
  *(v6 + 192) = v12;
  *(v6 + 200) = v13;
  *(v6 + 208) = v14;
  *(v6 + 216) = a6;
  return v6;
}

uint64_t ContentProviderPlugin.getAd(completion:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v61 = a2;
  v59 = a1;
  v4 = *v2;
  v5 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v53 - v7;
  v8 = sub_1C1B945F8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[17];
  v14 = v2[18];
  sub_1C1AAABE0(v2 + 14, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v16 = v3[22];
  v17 = v3[23];
  sub_1C1AAABE0(v3 + 19, v16);
  v18 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v19 = v9[2];
  v62 = v15;
  v55 = v9 + 2;
  v56 = v18;
  v54 = v19;
  v19(v12, &v15[v18], v8);
  v20 = sub_1C1B945A8();
  v22 = v21;
  v23 = v9[1];
  v57 = v9 + 1;
  v58 = v8;
  v53 = v23;
  v23(v12, v8);
  v24 = (*(v17 + 24))(v20, v22, v3[26], v16, v17);

  v25 = v3[28];
  v66 = v3;
  v67 = v24;
  v63 = sub_1C1B59244;
  v64 = &v65;
  os_unfair_lock_lock(v25 + 4);
  sub_1C1B59260();
  os_unfair_lock_unlock(v25 + 4);
  WitnessTable = swift_getWitnessTable();
  v27 = *(v4 + 120);
  v28 = *(v27 + 32);
  v29 = *(v4 + 88);
  v30 = swift_unknownObjectRetain();
  v28(v30, WitnessTable, v29, v27);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = *(v4 + 80);
  *(v32 + 24) = v29;
  *(v32 + 32) = *(v4 + 96);
  *(v32 + 48) = *(v4 + 112);
  *(v32 + 56) = v27;
  *(v32 + 64) = v59;
  *(v32 + 72) = v61;
  *(v32 + 80) = v31;
  v33 = *(v27 + 56);

  v33(sub_1C1B59288, v32, v29, v27);

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v34 = sub_1C1B94BE8();
  sub_1C1AB4454(v34, qword_1EDE6D058);
  swift_unknownObjectRetain();
  v35 = v62;
  v36 = sub_1C1B94BC8();
  v37 = sub_1C1B95138();
  v61 = v35;

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v68[0] = v39;
    *v38 = 136446466;
    v40 = (*(v27 + 16))(v29, v27);
    v42 = sub_1C1AC7650(v40, v41, v68);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    v43 = v58;
    v54(v12, &v62[v56], v58);
    v44 = sub_1C1B945A8();
    v46 = v45;
    v53(v12, v43);
    v47 = sub_1C1AC7650(v44, v46, v68);

    *(v38 + 14) = v47;
    _os_log_impl(&dword_1C1AA2000, v36, v37, "[ContentProviderPlugin] Requesting ad for task %{public}s and context %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v39, -1, -1);
    MEMORY[0x1C6908230](v38, -1, -1);
  }

  v48 = sub_1C1B95028();
  v49 = v60;
  (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v51 = v61;
  v50[4] = v3;
  v50[5] = v51;
  v50[6] = v24;

  swift_unknownObjectRetain();
  sub_1C1B02874(0, 0, v49, &unk_1C1BA2B30, v50);

  return v24;
}

uint64_t sub_1C1B564B0(uint64_t *a1)
{
  v1 = *a1;
  v4 = *(*a1 + 120);
  swift_beginAccess();
  v2 = *(v1 + 80);
  swift_unknownObjectRetain();
  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  sub_1C1B94F68();
  return swift_endAccess();
}

uint64_t sub_1C1B56588(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - v14;
  a2(a1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if ((*(a8 + 8))(a5, a8) == 200 && *(v17 + 192) == 1)
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v18 = sub_1C1B94BE8();
      sub_1C1AB4454(v18, qword_1EDE6D058);
      v19 = sub_1C1B94BC8();
      v20 = sub_1C1B95138();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1C1AA2000, v19, v20, "[ContentProviderPlugin] Refilling Cache due to vending a content", v21, 2u);
        MEMORY[0x1C6908230](v21, -1, -1);
      }

      v22 = sub_1C1B95028();
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
      v23 = swift_allocObject();
      v23[2] = 0;
      v23[3] = 0;
      v23[4] = v17;

      sub_1C1B02874(0, 0, v15, &unk_1C1BA2CA0, v23);
    }
  }

  return result;
}

uint64_t sub_1C1B5680C()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v4 = v1[17];
  v5 = v1[18];
  sub_1C1AAABE0(v1 + 14, v4);
  v6 = (*(v5 + 16))(v4, v5);
  *(v0 + 24) = v6;
  v7 = v1[25];
  *(v0 + 48) = 1;
  v8 = *(v3 + 24);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 32) = v10;
  *v10 = v0;
  v10[1] = sub_1C1B5699C;

  return v12(v6, v7, v0 + 48, v2, v3);
}

uint64_t sub_1C1B5699C()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(v4 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B56B00, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1C1B56B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B56B3C, 0, 0);
}

uint64_t sub_1C1B56B3C()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_1C1AAABE0(v1 + 2, v2);
  v4 = v1[25];
  *(v0 + 64) = 0;
  v5 = *(v3 + 24);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1C1B56C88;
  v8 = *(v0 + 24);

  return v10(v8, v4, v0 + 64, v2, v3);
}

uint64_t sub_1C1B56C88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1C1B56E28;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1C1B56DB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C1B56DB0()
{
  v1 = v0[2];
  sub_1C1B56E40(v0[7], v0[4]);

  v2 = v0[1];

  return v2();
}

void sub_1C1B56E40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = sub_1C1B952D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v42[-v11];
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42[-v17];
  v48 = a1;
  sub_1C1B94FA8();
  swift_getWitnessTable();
  v19 = v13;
  sub_1C1B950C8();
  if ((*(v13 + 48))(v12, 1, v6) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v20 = sub_1C1B94D78();
    v21 = sub_1C1B94D78();
    CreateDiagnosticReport();
  }

  else
  {
    (*(v13 + 32))(v18, v12, v6);
    if ((*(v5[13] + 8))(v6) == 200)
    {
      sub_1C1B58580();
    }

    else
    {
      sub_1C1B586EC();
    }

    v22 = v46;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v23 = sub_1C1B94BE8();
    sub_1C1AB4454(v23, qword_1EDE6D058);
    (*(v19 + 16))(v22, v18, v6);
    swift_unknownObjectRetain();
    v24 = sub_1C1B94BC8();
    v25 = sub_1C1B95138();
    swift_unknownObjectRelease();
    v26 = os_log_type_enabled(v24, v25);
    v45 = v19;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v27 = 136446466;
      v28 = v5[15];
      v29 = *(v28 + 16);
      v46 = v5[11];
      v43 = v25;
      v30 = v29();
      v32 = sub_1C1AC7650(v30, v31, &v48);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2082;
      v33 = (*(v5[12] + 8))(v6);
      v35 = v34;
      v36 = *(v19 + 8);
      v36(v22, v6);
      v37 = sub_1C1AC7650(v33, v35, &v48);

      *(v27 + 14) = v37;
      _os_log_impl(&dword_1C1AA2000, v24, v43, "[ContentProviderPlugin] Fulfilling task %{public}s with adamId %{public}s", v27, 0x16u);
      v38 = v44;
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v38, -1, -1);
      MEMORY[0x1C6908230](v27, -1, -1);

      v39 = v46;
    }

    else
    {

      v36 = *(v19 + 8);
      v36(v22, v6);
      v28 = v5[15];
      v39 = v5[11];
    }

    v40 = (*(v28 + 48))(v39, v28);
    if (v40)
    {
      v41 = v40;
      v40(v18);
      sub_1C1AC0530(v41);
    }

    v36(v18, v6);
  }
}

uint64_t sub_1C1B57584(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 114) = a5;
  *(v5 + 32) = a4;
  *(v5 + 40) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B575D0, 0, 0);
}

uint64_t sub_1C1B575D0()
{
  v1 = *(v0 + 114);
  v2 = *(v0 + 32);
  v3 = v2[5];
  v4 = v2[6];
  sub_1C1AAABE0(v2 + 2, v3);
  v5 = v2[17];
  v6 = v2[18];
  sub_1C1AAABE0(v2 + 14, v5);
  v7 = (*(v6 + 16))(v5, v6);
  *(v0 + 48) = v7;
  v8 = v2[25];
  *(v0 + 56) = v8;
  *(v0 + 112) = v1 & 1;
  v9 = *(v4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_1C1B57770;

  return v13(v7, v8, v0 + 112, v3, v4);
}

uint64_t sub_1C1B57770(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_1C1B57CB4;
  }

  else
  {
    v5 = sub_1C1B57894;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C1B57894()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(v0 + 114);
  v4 = swift_task_alloc();
  *(v4 + 16) = *(v2 + 80);
  *(v4 + 24) = *(v2 + 88);
  *(v4 + 32) = *(v2 + 96);
  *(v4 + 40) = *(v2 + 104);
  *(v4 + 56) = *(v2 + 120);
  sub_1C1B94FA8();
  swift_getWitnessTable();
  v5 = sub_1C1B94E38();

  if (v3)
  {
    v18 = *(v0 + 72);
  }

  else
  {
    *(v0 + 24) = *(v0 + 72);
    swift_getWitnessTable();
    v6 = sub_1C1B950D8();

    if (v6 & 1) != 0 || ((v5 ^ 1))
    {
      v7 = *(v0 + 32);
      v8 = v7[5];
      v9 = v7[6];
      sub_1C1AAABE0(v7 + 2, v8);
      v10 = v7[17];
      v11 = v7[18];
      sub_1C1AAABE0(v7 + 14, v10);
      v12 = (*(v11 + 16))(v10, v11);
      *(v0 + 88) = v12;
      *(v0 + 113) = 1;
      v13 = *(v9 + 24);
      v20 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      *(v0 + 96) = v15;
      *v15 = v0;
      v15[1] = sub_1C1B57B58;
      v16 = *(v0 + 56);

      return v20(v12, v16, v0 + 113, v8, v9);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C1B57B58()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C1B57E44, 0, 0);
  }

  else
  {
    v4 = *(v3 + 88);

    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_1C1B57CB4()
{
  v1 = *(v0 + 80);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95128();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "Unable to preload content: %{public}@", v6, 0xCu);
    sub_1C1B595D0(v7);
    MEMORY[0x1C6908230](v7, -1, -1);
    MEMORY[0x1C6908230](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1C1B57E44()
{
  v1 = *(v0 + 104);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95128();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "Unable to preload content: %{public}@", v6, 0xCu);
    sub_1C1B595D0(v7);
    MEMORY[0x1C6908230](v7, -1, -1);
    MEMORY[0x1C6908230](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t *ContentProviderPlugin.deinit()
{
  sub_1C1AA86F8(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  sub_1C1AA86F8(v0 + 9);
  sub_1C1AA86F8(v0 + 14);
  sub_1C1AA86F8(v0 + 19);
  v3 = v0[27];

  v4 = v0[28];

  return v0;
}

uint64_t ContentProviderPlugin.__deallocating_deinit()
{
  ContentProviderPlugin.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 232, 7);
}

Swift::Void __swiftcall ContentProviderPlugin.invalidateDueToNotification()()
{
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1C1B94BE8();
  sub_1C1AB4454(v0, qword_1EDE6D058);
  v1 = sub_1C1B94BC8();
  v2 = sub_1C1B95138();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C1AA2000, v1, v2, "Preloading content due to invalidation notification", v3, 2u);
    MEMORY[0x1C6908230](v3, -1, -1);
  }

  v4 = 1;
  ContentProviderPlugin.preload(using:)(&v4);
}

uint64_t ContentProviderPlugin.cancel(task:reason:)()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 88);
  (*(v1 + 56))(0, 0, v2, v1);
  v3 = v0[28];
  os_unfair_lock_lock(v3 + 4);
  sub_1C1B5982C();
  os_unfair_lock_unlock(v3 + 4);
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C1B94BE8();
  sub_1C1AB4454(v4, qword_1EDE6D058);
  swift_unknownObjectRetain();
  v5 = sub_1C1B94BC8();
  v6 = sub_1C1B95138();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    v9 = (*(v1 + 16))(v2, v1);
    v11 = sub_1C1AC7650(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C1AA2000, v5, v6, "[ContentProviderPlugin] Missed SLA for task %{public}s", v7, 0xCu);
    sub_1C1AA86F8(v8);
    MEMORY[0x1C6908230](v8, -1, -1);
    MEMORY[0x1C6908230](v7, -1, -1);
  }

  v12 = v0[13];
  sub_1C1AAABE0(v0 + 9, v0[12]);
  v13 = v0[27];
  return sub_1C1B949D8();
}

uint64_t sub_1C1B583B8(void *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v8 = a1[7];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[7];

  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  swift_getWitnessTable();
  sub_1C1B950B8();

  if (v7 != 1)
  {
    swift_beginAccess();
    sub_1C1B94F78();
    swift_endAccess();
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1C1B94F68();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C1B58580()
{
  v1 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = sub_1C1B94BC8();
  v4 = sub_1C1B95138();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1AA2000, v3, v4, "[ContentProviderPlugin] Processing content success", v5, 2u);
    MEMORY[0x1C6908230](v5, -1, -1);
  }

  v6 = *(v1 + 224);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v6 + 4);
  sub_1C1B5982C();
  os_unfair_lock_unlock(v6 + 4);
}

void sub_1C1B586EC()
{
  v1 = v0;
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = sub_1C1B94BC8();
  v4 = sub_1C1B95138();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C1AA2000, v3, v4, "[ContentProviderPlugin] Processing content failure", v5, 2u);
    MEMORY[0x1C6908230](v5, -1, -1);
  }

  v6 = *(v1 + 224);
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v6 + 4);
  sub_1C1B5982C();
  os_unfair_lock_unlock(v6 + 4);
}

uint64_t sub_1C1B58858(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v6 = *a1;
  v7 = *a1;
  v8 = *(*a1 + 112);
  v9 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 1);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v27 - v11;
  swift_beginAccess();
  v43 = a1[7];
  v37 = v9;
  v34 = *(v6 + 88);
  v38 = v34;
  v35 = *(v7 + 96);
  v39 = v35;
  v36 = v8;
  v40 = v8;
  v33 = *(v6 + 120);
  v41 = v33;
  v42 = a2;
  v32 = a2;

  v44 = v9;
  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  swift_getWitnessTable();
  LOBYTE(v8) = sub_1C1B94E38();
  v31 = v3;

  v13 = a1[13];
  sub_1C1AAABE0(a1 + 9, a1[12]);
  if (v8)
  {
    sub_1C1B949C8();
    v14 = a1[5];
    v15 = a1[6];
    sub_1C1AAABE0(a1 + 2, v14);
    sub_1C1B95478();
    (*(v15 + 32))(v12, 4, v14, v15);
    (*(v28 + 8))(v12, AssociatedTypeWitness);
    v16 = a1[18];
    sub_1C1AAABE0(a1 + 14, a1[17]);
    v17 = (*(v35 + 8))(v9);
    (*(v16 + 8))(v17);
  }

  else
  {
    v19 = a1[27];
    v18 = sub_1C1B949D8();
  }

  AssociatedTypeWitness = &v27;
  MEMORY[0x1EEE9AC00](v18);
  *(&v27 - 8) = v9;
  v30 = v9;
  v20 = v33;
  v21 = v34;
  *(&v27 - 7) = v34;
  *(&v27 - 3) = v35;
  *(&v27 - 4) = v36;
  *(&v27 - 3) = v20;
  v22 = v32;
  *(&v27 - 2) = v32;
  swift_beginAccess();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v23 = v31;
  sub_1C1B950E8();
  result = swift_endAccess();
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v31 = &v27;
    MEMORY[0x1EEE9AC00](result);
    *&v25 = v30;
    *(&v25 + 1) = v21;
    v26 = v35;
    *(&v27 - 4) = v25;
    *(&v27 - 3) = v26;
    *(&v27 - 4) = v36;
    *(&v27 - 3) = v20;
    *(&v27 - 2) = v22;
    swift_beginAccess();
    sub_1C1B950E8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C1B58D80(void *a1)
{
  v3 = *a1;
  swift_beginAccess();
  v13[0] = a1[8];
  v4 = v3[10];
  v12 = v3[11];
  v9 = v3[12];
  v5 = v3[13];
  v11 = v3[14];
  v10 = v3[15];

  v13[10] = v4;
  swift_getExtendedExistentialTypeMetadata();
  sub_1C1B94FA8();
  swift_getWitnessTable();
  sub_1C1B94E38();

  sub_1C1AAD2FC((a1 + 9), v13);
  sub_1C1AAABE0(v13, v13[3]);
  (*(v5 + 16))(v4, v5);
  v6 = a1[27];
  sub_1C1B949D8();
  sub_1C1AA86F8(v13);
  swift_beginAccess();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C1B950E8();
  if (v1)
  {
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    v7 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v7);
    swift_beginAccess();
    sub_1C1B950E8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C1B59168(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = a1[1];
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  v15 = v14;
  if (v13 == (*(a8 + 16))(a4, a8) && v15 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1C1B95888();
  }

  return v18 & 1;
}

uint64_t sub_1C1B59260()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C1B59288(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  return sub_1C1B56588(a1, *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1C1B592C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9CA0;

  return sub_1C1B56B18(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C1B59388(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C1AB9A98;

  return sub_1C1B57584(a1, v4, v5, v6, v7);
}

uint64_t getEnumTagSinglePayload for ContentProviderPluginSettings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentProviderPluginSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1B595D0(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08A28, &qword_1C1B9D830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1B596D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1C1B58D80(*(v0 + 16));
}

uint64_t sub_1C1B59710(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1C1B5975C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C1AB9A98;

  return sub_1C1B567EC(a1, v4, v5, v6);
}

unint64_t sub_1C1B59844()
{
  v1 = v0;
  result = [v0 placement];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = [v0 adjacentPosition];
    v5 = [v1 language];
    v6 = [v1 locale];
    v7 = [v1 searchTerms];
    v8 = [v1 keywords];
    v9 = [v1 categories];
    v10 = [objc_allocWithZone(MEMORY[0x1E698A030]) init:v3 adjacency:v4 language:v5 locale:v6 searchTerm:v7 keywords:v8 categories:v9];

    return v10;
  }

  return result;
}

id ContentDepiction.__allocating_init(identifier:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = objc_allocWithZone(v10);
  v19 = &v18[OBJC_IVAR___APPCContentDepiction_identifier];
  *v19 = a1;
  *(v19 + 1) = a2;
  *&v18[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 0;
  *&v18[OBJC_IVAR___APPCContentDepiction_placement] = a3;
  v20 = &v18[OBJC_IVAR___APPCContentDepiction_language];
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = &v18[OBJC_IVAR___APPCContentDepiction_locale];
  *v21 = a6;
  *(v21 + 1) = a7;
  *&v18[OBJC_IVAR___APPCContentDepiction_searchTerms] = a8;
  *&v18[OBJC_IVAR___APPCContentDepiction_keywords] = a9;
  *&v18[OBJC_IVAR___APPCContentDepiction_categories] = a10;
  v24.receiver = v18;
  v24.super_class = v10;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_1C1B59AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B5ACD4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ContentDepiction.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentDepiction_identifier);
  v2 = *(v0 + OBJC_IVAR___APPCContentDepiction_identifier + 8);

  return v1;
}

uint64_t ContentDepiction.language.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentDepiction_language);
  v2 = *(v0 + OBJC_IVAR___APPCContentDepiction_language + 8);

  return v1;
}

uint64_t ContentDepiction.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCContentDepiction_locale);
  v2 = *(v0 + OBJC_IVAR___APPCContentDepiction_locale + 8);

  return v1;
}

id sub_1C1B59CE4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  v4 = sub_1C1B94EB8();

  return v4;
}

id ContentDepiction.init(identifier:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = &v10[OBJC_IVAR___APPCContentDepiction_identifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v10[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 0;
  *&v10[OBJC_IVAR___APPCContentDepiction_placement] = a3;
  v12 = &v10[OBJC_IVAR___APPCContentDepiction_language];
  *v12 = a4;
  *(v12 + 1) = a5;
  v13 = &v10[OBJC_IVAR___APPCContentDepiction_locale];
  *v13 = a6;
  *(v13 + 1) = a7;
  *&v10[OBJC_IVAR___APPCContentDepiction_searchTerms] = a8;
  *&v10[OBJC_IVAR___APPCContentDepiction_keywords] = a9;
  *&v10[OBJC_IVAR___APPCContentDepiction_categories] = a10;
  v15.receiver = v10;
  v15.super_class = type metadata accessor for ContentDepiction();
  return objc_msgSendSuper2(&v15, sel_init);
}

id ContentDepiction.init(identifier:adjacentPosition:placement:language:locale:searchTerms:keywords:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = &v11[OBJC_IVAR___APPCContentDepiction_identifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = a3;
  *&v11[OBJC_IVAR___APPCContentDepiction_placement] = a4;
  v13 = &v11[OBJC_IVAR___APPCContentDepiction_language];
  *v13 = a5;
  *(v13 + 1) = a6;
  v14 = &v11[OBJC_IVAR___APPCContentDepiction_locale];
  *v14 = a7;
  *(v14 + 1) = a8;
  *&v11[OBJC_IVAR___APPCContentDepiction_searchTerms] = a9;
  *&v11[OBJC_IVAR___APPCContentDepiction_keywords] = a10;
  *&v11[OBJC_IVAR___APPCContentDepiction_categories] = a11;
  v16.receiver = v11;
  v16.super_class = type metadata accessor for ContentDepiction();
  return objc_msgSendSuper2(&v16, sel_init);
}

id ContentDepiction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1B5A160()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7364726F7779656BLL;
  if (v1 != 6)
  {
    v3 = 0x69726F6765746163;
  }

  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x6554686372616573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6563616C70;
  if (v1 != 2)
  {
    v5 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B5A26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B5B3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B5A294(uint64_t a1)
{
  v2 = sub_1C1B5ACF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B5A2D0(uint64_t a1)
{
  v2 = sub_1C1B5ACF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ContentDepiction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentDepiction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B5A3D8(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09690, &unk_1C1BA2CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B5ACF0();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCContentDepiction_identifier);
  v12 = *(v3 + OBJC_IVAR___APPCContentDepiction_identifier + 8);
  LOBYTE(v19) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v19 = *(v3 + OBJC_IVAR___APPCContentDepiction_adjacentPosition);
    HIBYTE(v18) = 1;
    sub_1C1B5AD44();
    sub_1C1B95808();
    v19 = *(v3 + OBJC_IVAR___APPCContentDepiction_placement);
    HIBYTE(v18) = 2;
    sub_1C1B5AD98();
    sub_1C1B95808();
    v13 = *(v3 + OBJC_IVAR___APPCContentDepiction_language);
    v14 = *(v3 + OBJC_IVAR___APPCContentDepiction_language + 8);
    LOBYTE(v19) = 3;
    sub_1C1B957A8();
    v15 = *(v3 + OBJC_IVAR___APPCContentDepiction_locale);
    v16 = *(v3 + OBJC_IVAR___APPCContentDepiction_locale + 8);
    LOBYTE(v19) = 4;
    sub_1C1B957A8();
    v19 = *(v3 + OBJC_IVAR___APPCContentDepiction_searchTerms);
    HIBYTE(v18) = 5;
    sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
    sub_1C1AC34C8(&unk_1EDE6BBA0);
    sub_1C1B95808();
    v19 = *(v3 + OBJC_IVAR___APPCContentDepiction_keywords);
    HIBYTE(v18) = 6;
    sub_1C1B95808();
    v19 = *(v3 + OBJC_IVAR___APPCContentDepiction_categories);
    HIBYTE(v18) = 7;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

id ContentDepiction.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09698, &qword_1C1BA2CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B5ACF0();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for ContentDepiction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v25) = 0;
    v11 = sub_1C1B95698();
    v13 = &v1[OBJC_IVAR___APPCContentDepiction_identifier];
    *v13 = v11;
    v13[1] = v14;
    v24 = 1;
    sub_1C1B5ADEC();
    sub_1C1B956F8();
    *&v1[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = v25;
    v24 = 2;
    sub_1C1B5AE40();
    sub_1C1B956F8();
    *&v1[OBJC_IVAR___APPCContentDepiction_placement] = v25;
    LOBYTE(v25) = 3;
    v15 = sub_1C1B95698();
    v16 = &v1[OBJC_IVAR___APPCContentDepiction_language];
    *v16 = v15;
    v16[1] = v17;
    LOBYTE(v25) = 4;
    v18 = sub_1C1B95698();
    v19 = &v1[OBJC_IVAR___APPCContentDepiction_locale];
    *v19 = v18;
    v19[1] = v20;
    sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
    v24 = 5;
    v22 = sub_1C1AC34C8(&qword_1EDE6BB98);
    sub_1C1B956F8();
    *&v1[OBJC_IVAR___APPCContentDepiction_searchTerms] = v25;
    v24 = 6;
    sub_1C1B956F8();
    *&v1[OBJC_IVAR___APPCContentDepiction_keywords] = v25;
    v24 = 7;
    sub_1C1B956F8();
    *&v1[OBJC_IVAR___APPCContentDepiction_categories] = v25;
    v21 = type metadata accessor for ContentDepiction();
    v23.receiver = v1;
    v23.super_class = v21;
    v3 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

id sub_1C1B5AC5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ContentDepiction());
  result = ContentDepiction.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1B5ACD4(uint64_t result)
{
  if ((result - 150) >= 0xA && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B5ACF0()
{
  result = qword_1EDE6B2D0[0];
  if (!qword_1EDE6B2D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6B2D0);
  }

  return result;
}

unint64_t sub_1C1B5AD44()
{
  result = qword_1EDE6B080;
  if (!qword_1EDE6B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B080);
  }

  return result;
}

unint64_t sub_1C1B5AD98()
{
  result = qword_1EDE6BC50;
  if (!qword_1EDE6BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC50);
  }

  return result;
}

unint64_t sub_1C1B5ADEC()
{
  result = qword_1EDE6B070;
  if (!qword_1EDE6B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B070);
  }

  return result;
}

unint64_t sub_1C1B5AE40()
{
  result = qword_1EDE6BC38;
  if (!qword_1EDE6BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC38);
  }

  return result;
}

unint64_t sub_1C1B5AE98()
{
  result = qword_1EBF096A0;
  if (!qword_1EBF096A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096A0);
  }

  return result;
}

unint64_t sub_1C1B5AFB4()
{
  result = qword_1EBF096A8;
  if (!qword_1EBF096A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096A8);
  }

  return result;
}

unint64_t sub_1C1B5B00C()
{
  result = qword_1EDE6B2C0;
  if (!qword_1EDE6B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B2C0);
  }

  return result;
}

unint64_t sub_1C1B5B064()
{
  result = qword_1EDE6B2C8;
  if (!qword_1EDE6B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B2C8);
  }

  return result;
}

uint64_t sub_1C1B5B0B8(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1B5ACD4([a1 adjacency]);
  if (v8)
  {
    goto LABEL_9;
  }

  v9 = v7;
  result = [a1 placement];
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v11 = sub_1C1AEF4C0(result);
  if (v12)
  {
    goto LABEL_9;
  }

  v13 = v11;
  v14 = [a1 language];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = sub_1C1B94D88();
  v18 = v17;

  v19 = [a1 locale];
  if (!v19)
  {

LABEL_9:

    return 0;
  }

  v47 = v16;
  v20 = v19;
  v21 = sub_1C1B94D88();
  v45 = v22;
  v46 = v21;

  v23 = [a1 identifier];
  sub_1C1B945D8();

  v24 = sub_1C1B945A8();
  v26 = v25;
  (*(v3 + 8))(v6, v2);
  v27 = [a1 searchTerms];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1C1B94EC8();
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = [a1 keywords];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1C1B94EC8();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v33 = [a1 categories];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1C1B94EC8();
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = type metadata accessor for ContentDepiction();
  v37 = objc_allocWithZone(v36);
  v38 = &v37[OBJC_IVAR___APPCContentDepiction_identifier];
  *v38 = v24;
  v38[1] = v26;
  *&v37[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = v9;
  *&v37[OBJC_IVAR___APPCContentDepiction_placement] = v13;
  v39 = &v37[OBJC_IVAR___APPCContentDepiction_language];
  v40 = v46;
  *v39 = v47;
  *(v39 + 1) = v18;
  v41 = &v37[OBJC_IVAR___APPCContentDepiction_locale];
  v42 = v45;
  *v41 = v40;
  *(v41 + 1) = v42;
  *&v37[OBJC_IVAR___APPCContentDepiction_searchTerms] = v29;
  *&v37[OBJC_IVAR___APPCContentDepiction_keywords] = v32;
  *&v37[OBJC_IVAR___APPCContentDepiction_categories] = v35;
  v48.receiver = v37;
  v48.super_class = v36;
  v43 = objc_msgSendSuper2(&v48, sel_init);

  return v43;
}

uint64_t sub_1C1B5B3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BA5F00 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEB00000000736D72 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1C1B5B68C()
{
  result = qword_1EDE6B078;
  if (!qword_1EDE6B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B078);
  }

  return result;
}

uint64_t sub_1C1B5B708(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_1C1BA2FA0[a1];
  }

  sub_1C1B95128();
  sub_1C1AC53E4();
  v3 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6810];
  *(v4 + 16) = xmmword_1C1B98E60;
  v6 = MEMORY[0x1E69E6870];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  sub_1C1B94BA8();

  return 0;
}

id sub_1C1B5B934()
{
  v0 = type metadata accessor for ContextBuilder();
  v1 = objc_allocWithZone(v0);
  sub_1C1B945E8();
  v2 = OBJC_IVAR___APPCContextBuilder_current;
  *&v1[OBJC_IVAR___APPCContextBuilder_current] = 0;
  v3 = &v1[OBJC_IVAR___APPCContextBuilder_requestedAd];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR___APPCContextBuilder_newsContext;
  *&v1[OBJC_IVAR___APPCContextBuilder_newsContext] = 0;
  v5 = OBJC_IVAR___APPCContextBuilder_resourceLock;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___APPCContextBuilder_adjacentInternal] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___APPCContextBuilder_maxSize] = xmmword_1C1BA2FD0;
  swift_beginAccess();
  v7 = *&v1[v2];
  *&v1[v2] = 0;
  swift_unknownObjectRelease();
  *&v1[OBJC_IVAR___APPCContextBuilder_next] = v6;
  swift_beginAccess();
  v8 = *&v1[v4];
  *&v1[v4] = 0;

  swift_beginAccess();
  v9 = *(v3 + 1);
  *v3 = 0;
  *(v3 + 1) = 0;

  v24.receiver = v1;
  v24.super_class = v0;
  v10 = objc_msgSendSuper2(&v24, sel_init);
  v11 = [objc_allocWithZone(type metadata accessor for NewsSupplementalContext()) init];
  v12 = &v11[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
  swift_beginAccess();
  v13 = *(v12 + 1);
  *v12 = xmmword_1C1BA2FE0;

  v14 = &v11[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
  swift_beginAccess();
  v15 = *(v14 + 1);
  *v14 = xmmword_1C1BA2FF0;

  sub_1C1AEE4FC();
  v16 = sub_1C1B95258();
  v17 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataContentProviderID;
  swift_beginAccess();
  v18 = *&v11[v17];
  *&v11[v17] = v16;

  v19 = OBJC_IVAR___APPCContextBuilder_newsContext;
  swift_beginAccess();
  v20 = *&v10[v19];
  *&v10[v19] = v11;
  v21 = v11;

  v22 = sub_1C1AA47BC();
  return v22;
}

id sub_1C1B5BBB8(void *a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  if ([a1 actionType] == 5)
  {
    v10 = [a1 adamIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = [a1 iTunesMetadata];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1C1B94CB8();

        [a1 confirmedClickInterval];
        v16 = v15;
        v17 = objc_allocWithZone(type metadata accessor for OutstreamVideoTapAction());
        *&v17[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = v11;
        *&v17[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = v14;
        (*(v3 + 56))(&v17[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url], 1, 1, v2);
        v17[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
        *&v17[OBJC_IVAR___APPCTapAction_actionType] = 6;
        *&v17[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v16;
        v18 = type metadata accessor for TapAction();
        v19 = objc_msgSendSuper2(&v36, sel_init, v17, v18, v37.receiver, v37.super_class);
        goto LABEL_15;
      }
    }

    v26 = [a1 actionURL];
    if (v26)
    {
      v27 = v26;
      sub_1C1B94488();

      (*(v3 + 16))(v7, v9, v2);
      LOBYTE(v27) = [a1 opensInstalledApp];
      [a1 confirmedClickInterval];
      v29 = v28;
      v30 = objc_allocWithZone(type metadata accessor for OutstreamVideoTapAction());
      v31 = OutstreamVideoTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(v7, v27, v29);

      (*(v3 + 8))(v9, v2);
      return v31;
    }

    [a1 confirmedClickInterval];
    v33 = v32;
    v34 = objc_allocWithZone(type metadata accessor for OutstreamVideoTapAction());
    (*(v3 + 56))(&v34[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url], 1, 1, v2);
    v34[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
    *&v34[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
    *&v34[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
    *&v34[OBJC_IVAR___APPCTapAction_actionType] = 4;
    *&v34[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v33;
    v35 = type metadata accessor for TapAction();
    v19 = objc_msgSendSuper2(&v37, sel_init, v36.receiver, v36.super_class, v34, v35);
LABEL_15:
    v31 = v19;

    return v31;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C1B94BE8();
  sub_1C1AB4454(v20, qword_1EDE6D058);
  v21 = a1;
  v22 = sub_1C1B94BC8();
  v23 = sub_1C1B95128();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 actionType];

    _os_log_impl(&dword_1C1AA2000, v22, v23, "Attempting to initialize a OutstreamVideoTapAction with an invalid tap action type %ld.", v24, 0xCu);
    MEMORY[0x1C6908230](v24, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C1B5C04C@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_30:
    v3 = sub_1C1B953A8();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v42 = v2 & 0xFFFFFFFFFFFFFF8;
      v6 = MEMORY[0x1E69E7CC8];
      v7 = &selRef_hash;
      v44 = v3;
      v45 = v2;
      v43 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x1C6907490](v4, v2);
        }

        else
        {
          if (v4 >= *(v42 + 16))
          {
            goto LABEL_28;
          }

          v8 = *(v2 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v11 = [v8 v7[136]];
        if (v11)
        {
          break;
        }

LABEL_5:
        ++v4;
        if (v10 == v3)
        {
          goto LABEL_32;
        }
      }

      v12 = v5;
      v13 = v2;
      v14 = v11;
      v15 = sub_1C1B94D88();
      v17 = v16;

      v18 = [v9 value];
      if (!v18)
      {

        v2 = v13;
        v5 = v12;
LABEL_25:
        v7 = &selRef_hash;
        goto LABEL_5;
      }

      v19 = v18;
      v46 = sub_1C1B94D88();
      v21 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      v2 = sub_1C1AA7C14(v15, v17);
      v25 = v6[2];
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_27;
      }

      v28 = v24;
      if (v6[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1ADA50C();
        }

        v29 = v23;
        v32 = v46;
        if ((v28 & 1) == 0)
        {
LABEL_17:
          v6[(v2 >> 6) + 8] |= 1 << v2;
          v33 = (v6[6] + 16 * v2);
          *v33 = v29;
          v33[1] = v17;
          v34 = (v6[7] + 16 * v2);
          *v34 = v32;
          v34[1] = v21;

          v35 = v6[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_29;
          }

          v6[2] = v37;
          goto LABEL_24;
        }
      }

      else
      {
        sub_1C1AD917C(v27, isUniquelyReferenced_nonNull_native);
        v29 = v23;
        v30 = sub_1C1AA7C14(v23, v17);
        if ((v28 & 1) != (v31 & 1))
        {
          result = sub_1C1B958E8();
          __break(1u);
          return result;
        }

        v2 = v30;
        v32 = v46;
        if ((v28 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v38 = (v6[7] + 16 * v2);
      v39 = v38[1];
      *v38 = v32;
      v38[1] = v21;

LABEL_24:
      v3 = v44;
      v2 = v45;
      v5 = v43;
      goto LABEL_25;
    }
  }

  v6 = MEMORY[0x1E69E7CC8];
LABEL_32:

  *a2 = v6;
  return result;
}

uint64_t QuickReturnTracker.__allocating_init(clock:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1C1B5CE1C(a1);
}

uint64_t QuickReturnTracker.State.hashValue.getter()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B5C3E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B5D160;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B5C474(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B19318;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8);
}

uint64_t sub_1C1B5C530()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1C1AC0598(v1);
  return v1;
}

uint64_t sub_1C1B5C580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1C1AC0530(v5);
}

id sub_1C1B5C624()
{
  result = sub_1C1B7BA08();
  qword_1EBF096B0 = result;
  *algn_1EBF096B8 = v1;
  qword_1EBF096C0 = v2;
  byte_1EBF096C8 = v3 & 1;
  return result;
}

uint64_t QuickReturnTracker.init(clock:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1C1B5CEB4(a1, v1);
}

uint64_t sub_1C1B5C694(unsigned __int8 *a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v11 - v5;
  LODWORD(a1) = *a1;
  v8 = *(v1 + 40);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (a1 == 4)
      {
        goto LABEL_16;
      }
    }

    else if (v8 == 4 && a1 == 5)
    {
      result = sub_1C1B5C824();
    }

    goto LABEL_15;
  }

  if (*(v1 + 40))
  {
    if (v8 == 1)
    {
      if (a1 == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (a1 != 3)
    {
LABEL_15:
      LOBYTE(a1) = 0;
    }
  }

  else
  {
    if (a1 != 1)
    {
      goto LABEL_15;
    }

    a1 = [*(v1 + 32) now];
    sub_1C1B94558();

    v9 = sub_1C1B94588();
    LOBYTE(a1) = 1;
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    v10 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
    swift_beginAccess();
    sub_1C1AABE90(v6, v1 + v10);
    result = swift_endAccess();
  }

LABEL_16:
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1C1B5C824()
{
  v1 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - v5;
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  sub_1C1B95108();
  sub_1C1AC53E4();
  v15 = sub_1C1B95298();
  sub_1C1B94BA8();

  v16 = v7;
  v17 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
  swift_beginAccess();
  v18 = v0;
  sub_1C1ABB0C4(v0 + v17, v6);
  if ((*(v8 + 48))(v6, 1, v16) == 1)
  {
    sub_1C1ABBAF4(v6);
    sub_1C1B95128();
    v19 = sub_1C1B95298();
    sub_1C1B94BA8();

    v20 = v45;
    (*(v8 + 56))(v45, 1, 1, v16);
    swift_beginAccess();
    v21 = v18 + v17;
    v22 = v20;
LABEL_14:
    sub_1C1AABE90(v22, v21);
    return swift_endAccess();
  }

  v44 = v17;
  (*(v8 + 32))(v14, v6, v16);
  v23 = v16;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v25 = v0;
  v26 = [*(v0 + 32) now];
  sub_1C1B94558();

  sub_1C1B94528();
  v28 = v27;
  v29 = *(v8 + 8);
  v30 = v23;
  v29(v12, v23);
  v31 = v25;
  if (IsVoiceOverRunning)
  {
    v32 = 50.0;
  }

  else
  {
    v32 = 5.0;
  }

  v33 = v45;
  if (v28 >= v32)
  {
    v29(v14, v30);
    (*(v8 + 56))(v33, 1, 1, v30);
    v36 = v44;
    swift_beginAccess();
    v21 = v25 + v36;
    v22 = v33;
    goto LABEL_14;
  }

  if (qword_1EBF076E0 != -1)
  {
    swift_once();
  }

  v43 = v8;
  if (byte_1EBF096C8)
  {
    v34 = 0;
    v35 = 10000.0;
    if (!IsVoiceOverRunning)
    {
      v35 = 1000.0;
    }
  }

  else
  {
    v37 = &qword_1EBF096B0;
    v34 = qword_1EBF096C0;
    if (IsVoiceOverRunning)
    {
      v37 = algn_1EBF096B8;
    }

    v35 = *v37;
  }

  v38 = sub_1C1B5D190(v28, v35);
  swift_beginAccess();
  v39 = *(v25 + 16);
  if (v39)
  {
    v40 = *(v31 + 24);

    v39(v38, v34);
    v33 = v45;
    sub_1C1AC0530(v39);
  }

  v29(v14, v30);
  (*(v43 + 56))(v33, 1, 1, v30);
  v41 = v44;
  swift_beginAccess();
  sub_1C1AABE90(v33, v31 + v41);
  return swift_endAccess();
}

uint64_t *QuickReturnTracker.deinit()
{
  v1 = v0[3];
  sub_1C1AC0530(v0[2]);
  v2 = v0[4];
  swift_unknownObjectRelease();
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime);
  return v0;
}

uint64_t QuickReturnTracker.__deallocating_deinit()
{
  v1 = v0[3];
  sub_1C1AC0530(v0[2]);
  v2 = v0[4];
  swift_unknownObjectRelease();
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1B5CE1C(uint64_t a1)
{
  v2 = type metadata accessor for QuickReturnTracker();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 40) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
  v7 = sub_1C1B94588();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + 32) = a1;
  return v5;
}

uint64_t sub_1C1B5CEB4(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
  v5 = sub_1C1B94588();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 32) = a1;
  return a2;
}

unint64_t sub_1C1B5CF3C()
{
  result = qword_1EBF096D0;
  if (!qword_1EBF096D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096D0);
  }

  return result;
}

uint64_t type metadata accessor for QuickReturnTracker()
{
  result = qword_1EDE6AFA0;
  if (!qword_1EDE6AFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B5CFE4()
{
  sub_1C1AA3EA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C1B5D160(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1C1B5D190(double a1, double a2)
{
  v2 = a1 * 1000.0 / a2;
  if (v2 < 0.1)
  {
    return 8101;
  }

  if (v2 < 0.25)
  {
    return 8102;
  }

  if (v2 < 0.5)
  {
    return 8103;
  }

  if (v2 < 0.75)
  {
    return 8104;
  }

  if (v2 < 1.0)
  {
    return 8105;
  }

  if (v2 < 1.25)
  {
    return 8106;
  }

  if (v2 < 1.5)
  {
    return 8107;
  }

  if (v2 < 1.75)
  {
    return 8108;
  }

  if (v2 >= 2.0 || v2 < 1.75)
  {
    return 8110;
  }

  else
  {
    return 8109;
  }
}

uint64_t sub_1C1B5D278@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id LifecycleMetricsHelper.__allocating_init(metricsHelper:placeholder:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  return sub_1C1AB5844(a1, a2);
}

unint64_t LifecycleMetricsManualDiscardReason.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

BOOL sub_1C1B5D45C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1C1B5D48C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C1B5D4B8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

id LifecycleMetricsHelper.init(metricsHelper:placeholder:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  return sub_1C1B5DEF4(a1, a2, v2);
}

void sub_1C1B5D5E4()
{
  v1 = OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper;
  v2 = [*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) promotedContent];
  if (v2 && (v3 = [v2 adType], swift_unknownObjectRelease(), v3 == 1))
  {
    *(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen) = 1;
    [*(v0 + v1) onScreenWithCollapsed_];
    v4 = *(v0 + v1);

    [v4 offScreenWithCollapsed_];
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v5 = sub_1C1B95298();
    sub_1C1B94BA8();
  }
}

id sub_1C1B5D78C()
{
  if (*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen) == 1)
  {
    return [*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) notConsumedWithCode:8001 placeholder:*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder)];
  }

  return result;
}

id sub_1C1B5D810(id result)
{
  if (*(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen) == 1)
  {
    if (result == 1)
    {
      v2 = *(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
      v3 = sel_discardedWithCode_;
      v4 = 2613;

      return [v2 v3];
    }

    if (!result)
    {
      v2 = *(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
      v5 = *(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder);
      v3 = sel_notConsumedWithCode_placeholder_;
      v4 = 8001;

      return [v2 v3];
    }

    result = sub_1C1B95568();
    __break(1u);
  }

  return result;
}

void sub_1C1B5D960()
{
  v1 = OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper;
  v2 = [*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) promotedContent];
  if (v2 && (v3 = [v2 adType], swift_unknownObjectRelease(), v3 == 4))
  {
    v4 = *(v0 + v1);

    [v4 contentLoadFailure];
  }

  else
  {
    sub_1C1B95128();
    sub_1C1AC53E4();
    v5 = sub_1C1B95298();
    sub_1C1B94BA8();
  }
}

uint64_t sub_1C1B5DAE0(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
  type metadata accessor for JourneyMetricsHelper();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *a1;
    swift_unknownObjectRetain();
    sub_1C1B82678(&v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C1B5DB5C()
{
  sub_1C1B95128();
  sub_1C1AC53E4();
  v0 = sub_1C1B95298();
  sub_1C1B94BA8();
}

id LifecycleMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LifecycleMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LifecycleMetricsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B5DE74(uint64_t *a1)
{
  v3 = *(*v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
  type metadata accessor for JourneyMetricsHelper();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *a1;
    swift_unknownObjectRetain();
    sub_1C1B82678(&v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C1B5DEF4(uint64_t a1, char a2, _BYTE *a3)
{
  a3[OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen] = 0;
  *&a3[OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper] = a1;
  a3[OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder] = a2;
  v4.receiver = a3;
  v4.super_class = type metadata accessor for LifecycleMetricsHelper();
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_1C1B5DF5C()
{
  result = qword_1EBF096F0;
  if (!qword_1EBF096F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096F0);
  }

  return result;
}

unint64_t sub_1C1B5DFB4()
{
  result = qword_1EDE6BF18;
  if (!qword_1EDE6BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF18);
  }

  return result;
}

unint64_t sub_1C1B5E00C()
{
  result = qword_1EDE6BF10;
  if (!qword_1EDE6BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF10);
  }

  return result;
}

unint64_t sub_1C1B5E064()
{
  result = qword_1EDE6BF20;
  if (!qword_1EDE6BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF20);
  }

  return result;
}

unint64_t sub_1C1B5E0BC()
{
  result = qword_1EDE6BF08;
  if (!qword_1EDE6BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientPolicyExclusion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClientPolicyExclusion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C1B5E2F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
  *(a2 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B5E30C(uint64_t a1)
{
  v50 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
  v3 = *(*(v50 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v50);
  v49 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = v41 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = v41 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v46 = v41 - v10;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v41[1] = v1;
  v56 = MEMORY[0x1E69E7CC0];
  sub_1C1AC7EE4(0, v11, 0);
  v12 = v56;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = sub_1C1B95328();
  v16 = result;
  v17 = 0;
  v55 = *(a1 + 36);
  v42 = a1 + 72;
  v43 = v11;
  v44 = a1 + 64;
  v45 = a1;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_22;
    }

    if (v55 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v52 = 1 << v16;
    v53 = v16 >> 6;
    v51 = v17;
    v54 = v12;
    v20 = v50;
    v21 = *(v50 + 48);
    v22 = *(a1 + 56);
    v23 = v46;
    *v46 = *(*(a1 + 48) + v16);
    v24 = sub_1C1B94588();
    v25 = *(v24 - 8);
    (*(v25 + 16))(&v23[v21], v22 + *(v25 + 72) * v16, v24);
    v26 = v47;
    *v47 = *v23;
    v27 = *(v25 + 32);
    v27(v26 + *(v20 + 48), &v23[v21], v24);
    v28 = v48;
    sub_1C1AA7E30(v26, v48, &qword_1EBF09718, &qword_1C1BA3698);
    v29 = *(v20 + 48);
    v12 = v54;
    v30 = v49;
    *v49 = *v28;
    v27(&v30[v29], &v28[v29], v24);
    v31 = *v30;
    sub_1C1AA7C8C(v30, &qword_1EBF09718, &qword_1C1BA3698);
    result = sub_1C1AA7C8C(v26, &qword_1EBF09718, &qword_1C1BA3698);
    v56 = v12;
    v33 = *(v12 + 16);
    v32 = *(v12 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_1C1AC7EE4((v32 > 1), v33 + 1, 1);
      v12 = v56;
    }

    *(v12 + 16) = v33 + 1;
    *(v12 + v33 + 32) = v31;
    a1 = v45;
    v18 = 1 << *(v45 + 32);
    if (v16 >= v18)
    {
      goto LABEL_24;
    }

    v13 = v44;
    v34 = *(v44 + 8 * v53);
    if ((v34 & v52) == 0)
    {
      goto LABEL_25;
    }

    if (v55 != *(v45 + 36))
    {
      goto LABEL_26;
    }

    v35 = v34 & (-2 << (v16 & 0x3F));
    if (v35)
    {
      v18 = __clz(__rbit64(v35)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
    }

    else
    {
      v36 = v53 << 6;
      v37 = v53 + 1;
      v19 = v43;
      v38 = (v42 + 8 * v53);
      while (v37 < (v18 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_1C1B616D0(v16, v55, 0);
          v18 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_1C1B616D0(v16, v55, 0);
    }

LABEL_4:
    v17 = v51 + 1;
    v16 = v18;
    if (v51 + 1 == v19)
    {
      return v12;
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

uint64_t VisibleThresholdTracker.__allocating_init(clock:impressionDuration:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1C1B61188(a1, a2);
}

PromotedContent::VisibilityThreshold_optional __swiftcall VisibilityThreshold.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 100)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 50)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_1C1B5E7F8()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](50 * v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B5E878()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](50 * v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B5E93C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(double *a1)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B61590;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B5E9D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B61558;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8);
}

uint64_t sub_1C1B5EADC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, double *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B6152C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B5EB70(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B614F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8);
}

uint64_t sub_1C1B5EC2C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1C1AC0598(v1);
  return v1;
}

uint64_t sub_1C1B5EC7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1C1AC0530(v5);
}

uint64_t VisibleThresholdTracker.init(clock:impressionDuration:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1C1B4DBE0(a1, v2, a2);
}

void sub_1C1B5ED70(uint64_t a1)
{
  if ((a1 - 50) < 0x32)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 50)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  sub_1C1B5EDDC(&v6);
  v5 = v2;
  sub_1C1B5F4A0(&v5);
  v4 = v2;
  sub_1C1B5F9B4(&v4);
  v3 = v2;
  sub_1C1B6051C(&v3);
}

void sub_1C1B5EDDC(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1C1B94588();
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v74 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = v69 - v8;
  v9 = sub_1C1AC1F08(&qword_1EBF09710, &qword_1C1BA3690);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v69 - v13;
  v14 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v69 - v16;
  v18 = *a1;
  v78 = *(v2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
  os_unfair_lock_lock((v78 + 16));
  swift_beginAccess();
  v19 = v2[6];

  v21 = sub_1C1B60990(v20, v18);

  v71 = v21;
  v22 = sub_1C1B5E30C(v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = (v22 + 32);
    v25 = (v77 + 56);
    do
    {
      v27 = *v24++;
      swift_beginAccess();
      v28 = v2[6];
      v29 = sub_1C1AD8B2C(v27);
      if (v30)
      {
        v31 = v29;
        v32 = v2[6];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v2[6];
        v82 = v34;
        v2[6] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C1ADAF30();
          v34 = v82;
        }

        (*(v77 + 32))(v17, *(v34 + 56) + *(v77 + 72) * v31, v4);
        sub_1C1AD3EB8(v31, v34);
        v35 = v2[6];
        v2[6] = v34;

        v26 = 0;
      }

      else
      {
        v26 = 1;
      }

      (*v25)(v17, v26, 1, v4);
      sub_1C1AA7C8C(v17, &qword_1EBF07F50, &qword_1C1B9A590);
      swift_endAccess();
      --v23;
    }

    while (v23);
  }

  v80 = v4;

  swift_beginAccess();
  v36 = v2[5];
  v81 = v2[4];
  v75 = v2;
  v69[1] = v36;
  sub_1C1AC0598(v81);
  os_unfair_lock_unlock((v78 + 16));
  v37 = 0;
  v38 = *(v71 + 64);
  v69[0] = v71 + 64;
  v39 = 1 << *(v71 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v73 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock;
  v42 = (v39 + 63) >> 6;
  v69[2] = v77 + 16;
  v78 = v77 + 32;
  v72 = (v77 + 8);
  v43 = v70;
  while (v41)
  {
    v44 = v37;
LABEL_22:
    v47 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v48 = v47 | (v44 << 6);
    v49 = *(*(v71 + 48) + v48);
    v50 = v77;
    v52 = v79;
    v51 = v80;
    (*(v77 + 16))(v79, *(v71 + 56) + *(v77 + 72) * v48, v80);
    v53 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
    v54 = *(v53 + 48);
    v55 = v76;
    *v76 = v49;
    (*(v50 + 32))(&v55[v54], v52, v51);
    (*(*(v53 - 8) + 56))(v55, 0, 1, v53);
    v46 = v44;
    v56 = v55;
    v43 = v70;
LABEL_23:
    sub_1C1B61660(v56, v43);
    v57 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
    if ((*(*(v57 - 8) + 48))(v43, 1, v57) == 1)
    {

      sub_1C1AC0530(v81);
      return;
    }

    v58 = v46;
    v59 = *v43;
    v60 = v74;
    v61 = v80;
    (*v78)(v74, &v43[*(v57 + 48)], v80);
    v62 = [*(v75 + v73) now];
    v63 = v79;
    sub_1C1B94558();

    sub_1C1B94528();
    v65 = v64;
    v66 = *v72;
    (*v72)(v63, v61);
    if (v81)
    {
      LOBYTE(v82) = v59;

      v81(&v82, v65);
      sub_1C1AC0530(v81);
    }

    v66(v60, v61);
    v37 = v58;
  }

  if (v42 <= v37 + 1)
  {
    v45 = v37 + 1;
  }

  else
  {
    v45 = v42;
  }

  v46 = v45 - 1;
  while (1)
  {
    v44 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v44 >= v42)
    {
      v67 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
      v68 = v76;
      (*(*(v67 - 8) + 56))(v76, 1, 1, v67);
      v56 = v68;
      v41 = 0;
      goto LABEL_23;
    }

    v41 = *(v69[0] + 8 * v44);
    ++v37;
    if (v41)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_1C1B5F4A0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - v6;
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = *a1;
  v50 = *(v2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
  os_unfair_lock_lock(v50 + 4);
  v16 = [*(v2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
  v51 = v14;
  sub_1C1B94558();

  swift_beginAccess();
  v17 = 0;
  v58 = (v9 + 16);
  v52 = v9;
  v18 = (v9 + 56);
  v19 = MEMORY[0x1E69E7CC0];
  v55 = v8;
  do
  {
    v22 = byte_1F414DED0[v17 + 32];
    if (v15 >= v22)
    {
      v23 = *(v2 + 48);
      if (*(v23 + 16) && (v24 = sub_1C1AD8B2C(byte_1F414DED0[v17 + 32]), (v25 & 1) != 0))
      {
        v20 = *(v23 + 56);
        v21 = v52;
        (*(v52 + 16))(v7, v20 + *(v52 + 72) * v24, v8);
        (*(v21 + 56))(v7, 0, 1, v8);
        sub_1C1AA7C8C(v7, &qword_1EBF07F50, &qword_1C1B9A590);
      }

      else
      {
        (*v18)(v7, 1, 1, v8);
        sub_1C1AA7C8C(v7, &qword_1EBF07F50, &qword_1C1B9A590);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1AC7EE4(0, *(v19 + 16) + 1, 1);
          v19 = v61;
        }

        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C1AC7EE4((v27 > 1), v28 + 1, 1);
          v19 = v61;
        }

        *(v19 + 16) = v28 + 1;
        *(v19 + v28 + 32) = v22;
        v8 = v55;
      }
    }

    ++v17;
  }

  while (v17 != 3);
  v30 = v51;
  v29 = v52;
  v57 = *(v19 + 16);
  if (!v57)
  {
LABEL_27:

    (*(v29 + 8))(v30, v8);
    os_unfair_lock_unlock(v50 + 4);
    return;
  }

  v31 = 0;
  v56 = v19 + 32;
  v53 = v52 + 40;
  v54 = v52 + 32;
  while (v31 < *(v19 + 16))
  {
    v33 = *(v56 + v31);
    swift_beginAccess();
    (*v58)(v59, v30, v8);
    v34 = *(v2 + 48);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v2 + 48);
    v36 = v60;
    *(v2 + 48) = 0x8000000000000000;
    v37 = sub_1C1AD8B2C(v33);
    v39 = v36[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_29;
    }

    v43 = v38;
    if (v36[3] < v42)
    {
      sub_1C1ADA038(v42, v35);
      v37 = sub_1C1AD8B2C(v33);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_31;
      }

LABEL_22:
      v45 = v60;
      if (v43)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    if (v35)
    {
      goto LABEL_22;
    }

    v48 = v37;
    sub_1C1ADAF30();
    v37 = v48;
    v8 = v55;
    v45 = v60;
    if (v43)
    {
LABEL_14:
      (*(v29 + 40))(v45[7] + *(v29 + 72) * v37, v59, v8);
      goto LABEL_15;
    }

LABEL_23:
    v45[(v37 >> 6) + 8] |= 1 << v37;
    *(v45[6] + v37) = v33;
    (*(v29 + 32))(v45[7] + *(v29 + 72) * v37, v59, v8);
    v46 = v45[2];
    v41 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    v45[2] = v47;
LABEL_15:
    ++v31;
    v32 = *(v2 + 48);
    *(v2 + 48) = v45;

    swift_endAccess();
    if (v57 == v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1C1B958E8();
  __break(1u);
}

void sub_1C1B5F9B4(unsigned __int8 *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v62 = &v49 - v5;
  v6 = sub_1C1B94C18();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1C1B94C38();
  v57 = *(v59 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1B94BF8();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  v18 = sub_1C1B94C58();
  v53 = *(v18 - 8);
  v54 = v18;
  v19 = *(v53 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  v25 = sub_1C1B951B8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v63 = *(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
  os_unfair_lock_lock(v63 + 4);
  if (a1 && !*(v1 + 56))
  {
    v52 = sub_1C1B615BC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v51 = sub_1C1B61618(&qword_1EDE6A650, MEMORY[0x1E69E80B0]);
    sub_1C1AC1F08(&qword_1EBF09708, &unk_1C1BA3680);
    sub_1C1AB0DC4(&unk_1EDE6A660, &qword_1EBF09708, &unk_1C1BA3680);
    v31 = v1;
    v50 = v1;
    sub_1C1B95318();
    v52 = sub_1C1B951C8();
    (*(v26 + 8))(v29, v25);
    ObjectType = swift_getObjectType();
    v51 = ObjectType;
    sub_1C1B94C48();
    v33 = *(v31 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration);
    sub_1C1B94C98();
    v34 = v54;
    v53 = *(v53 + 8);
    (v53)(v22, v54);
    v35 = v55;
    v36 = *(v55 + 104);
    v36(v17, *MEMORY[0x1E69E7F40], v11);
    *v15 = 0;
    v36(v15, *MEMORY[0x1E69E7F28], v11);
    MEMORY[0x1C6907220](v24, v17, v15, ObjectType);
    v37 = *(v35 + 8);
    v37(v15, v11);
    v37(v17, v11);
    (v53)(v24, v34);
    v38 = swift_allocObject();
    v39 = v50;
    swift_weakInit();
    aBlock[4] = sub_1C1B61608;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B196F0;
    aBlock[3] = &unk_1F41538F0;
    v40 = _Block_copy(aBlock);

    v41 = v56;
    sub_1C1B94C28();
    v42 = v58;
    sub_1C1B60430();
    v43 = v52;
    sub_1C1B951D8();
    _Block_release(v40);
    (*(v60 + 8))(v42, v61);
    (*(v57 + 8))(v41, v59);

    sub_1C1B951F8();
    v44 = [*(v39 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
    v45 = v62;
    sub_1C1B94558();

    v46 = sub_1C1B94588();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
    swift_beginAccess();
    sub_1C1AABE90(v45, v39 + v47);
    swift_endAccess();
    v48 = *(v39 + 56);
    *(v39 + 56) = v43;
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v63 + 4);
  }

  else
  {
    v30 = v63 + 4;

    os_unfair_lock_unlock(v30);
  }
}

uint64_t sub_1C1B60110()
{
  v0 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock;
    v15 = *(result + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);

    os_unfair_lock_lock(v15 + 4);

    swift_beginAccess();
    v16 = *(v13 + 16);
    v17 = *(v13 + v14);
    sub_1C1AC0598(v16);

    os_unfair_lock_unlock(v17 + 4);

    v18 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
    swift_beginAccess();
    sub_1C1AA7E30(v13 + v18, v3, &qword_1EBF07F50, &qword_1C1B9A590);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1C1AA7C8C(v3, &qword_1EBF07F50, &qword_1C1B9A590);
      v19 = *(v13 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration);
      if (!v16)
      {
      }
    }

    else
    {
      (*(v5 + 32))(v11, v3, v4);
      v20 = [*(v13 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
      sub_1C1B94558();

      sub_1C1B94528();
      v19 = v21;
      v22 = *(v5 + 8);
      v22(v9, v4);
      v22(v11, v4);
      if (v19 <= *(v13 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration))
      {
        v19 = *(v13 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration);
      }

      if (!v16)
      {
      }
    }

    v16(v23, v19);
    sub_1C1AC0530(v16);
    sub_1C1AC0530(v16);
  }

  return result;
}

uint64_t sub_1C1B60430()
{
  sub_1C1B94C18();
  sub_1C1B61618(&qword_1EDE6CA58, MEMORY[0x1E69E7F60]);
  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1AB0DC4(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028);
  return sub_1C1B95318();
}

void sub_1C1B6051C(_BYTE *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25[-v5];
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13];
  if (!*a1)
  {
    v15 = *(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
    os_unfair_lock_lock(v15 + 4);
    if (*(v1 + 56))
    {
      v16 = *(v1 + 56);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C1B951E8();
      swift_unknownObjectRelease();
      v17 = *(v1 + 56);
    }

    *(v1 + 56) = 0;
    swift_unknownObjectRelease();
    v18 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
    swift_beginAccess();
    sub_1C1AA7E30(v1 + v18, v6, &qword_1EBF07F50, &qword_1C1B9A590);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1C1AA7C8C(v6, &qword_1EBF07F50, &qword_1C1B9A590);
      os_unfair_lock_unlock(v15 + 4);
    }

    else
    {
      (*(v8 + 32))(v14, v6, v7);
      swift_beginAccess();
      v19 = *(v1 + 16);
      sub_1C1AC0598(v19);
      os_unfair_lock_unlock(v15 + 4);
      v20 = [*(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
      sub_1C1B94558();

      sub_1C1B94528();
      v22 = v21;
      v23 = *(v8 + 8);
      v23(v12, v7);
      if (*(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration) <= v22)
      {
        if (v19)
        {

          v19(v24, v22);
          sub_1C1AC0530(v19);
          sub_1C1AC0530(v19);
        }

        v23(v14, v7);
      }

      else
      {
        v23(v14, v7);
        sub_1C1AC0530(v19);
      }
    }
  }
}

uint64_t *VisibleThresholdTracker.deinit()
{
  v1 = v0[3];
  sub_1C1AC0530(v0[2]);
  v2 = v0[5];
  sub_1C1AC0530(v0[4]);
  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();
  sub_1C1AA7C8C(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp, &qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);

  return v0;
}

uint64_t VisibleThresholdTracker.__deallocating_deinit()
{
  v1 = v0[3];
  sub_1C1AC0530(v0[2]);
  v2 = v0[5];
  sub_1C1AC0530(v0[4]);
  v3 = v0[6];

  v4 = v0[7];
  swift_unknownObjectRelease();
  sub_1C1AA7C8C(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp, &qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v7, v8);
}

uint64_t sub_1C1B60990(uint64_t a1, unsigned __int8 a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1C1B60AFC(v8, v6, v4, a2);
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
  v12 = sub_1C1B60DC0(v11, v6, v4, a2);
  result = MEMORY[0x1C6908230](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C1B60AFC(unint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v31 = a2;
  v32 = a1;
  v43 = a4;
  v42 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
  v5 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v30 - v6;
  v41 = sub_1C1B94588();
  v7 = *(*(v41 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v44 = a3;
  v12 = *(a3 + 64);
  v33 = 0;
  v34 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v40 = v9;
  v36 = v9 + 8;
  v37 = v9 + 16;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v45 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = v44[7];
    v22 = *(v44[6] + v20);
    v24 = v40;
    v23 = v41;
    v25 = *(v40 + 72);
    v35 = v20;
    v26 = *(v40 + 16);
    v27 = v38;
    v26(v38, v21 + v25 * v20, v41);
    v28 = v39;
    *v39 = v22;
    v26(&v28[*(v42 + 48)], v27, v23);
    LODWORD(v26) = *v28;
    sub_1C1AA7C8C(v28, &qword_1EBF09718, &qword_1C1BA3698);
    result = (*(v24 + 8))(v27, v23);
    v15 = v45;
    if (v26 > v43)
    {
      *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_1C1B60E48(v32, v31, v33, v44);
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return sub_1C1B60E48(v32, v31, v33, v44);
    }

    v19 = *(v34 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v45 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C1B60DC0(void *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
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

    v8 = sub_1C1B60AFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C1B60E48(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v39 - v14;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v43 = v13;
  sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
  result = sub_1C1B955C8();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v41 = v9 + 32;
  v42 = v9 + 16;
  v19 = result + 64;
  v20 = v43;
  v39 = v9;
  v40 = a4;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v45 = (v17 - 1) & v17;
LABEL_16:
    v24 = v21 | (v18 << 6);
    v25 = a4[7];
    v26 = *(a4[6] + v24);
    v46 = *(v9 + 72);
    v27 = v44;
    (*(v9 + 16))(v44, v25 + v46 * v24, v20);
    v28 = *(v9 + 32);
    v28(v47, v27, v20);
    v29 = *(v16 + 40);
    sub_1C1B95958();
    MEMORY[0x1C6907960](50 * v26);
    result = sub_1C1B959A8();
    v30 = -1 << *(v16 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      v20 = v43;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v19 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v20 = v43;
LABEL_26:
    *(v19 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    *(*(v16 + 48) + v33) = v26;
    result = (v28)(*(v16 + 56) + v33 * v46, v47, v20);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v9 = v39;
    a4 = v40;
    v17 = v45;
    if (!a3)
    {
      return v16;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v23 = a1[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v45 = (v23 - 1) & v23;
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

uint64_t sub_1C1B61188(uint64_t a1, double a2)
{
  v4 = type metadata accessor for VisibleThresholdTracker();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();

  return sub_1C1B4DBE0(a1, v7, a2);
}

unint64_t sub_1C1B611EC()
{
  result = qword_1EDE6ADA0;
  if (!qword_1EDE6ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADA0);
  }

  return result;
}

uint64_t type metadata accessor for VisibleThresholdTracker()
{
  result = qword_1EDE6ACE8;
  if (!qword_1EDE6ACE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B612E8()
{
  sub_1C1AA3EA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C1B614F4(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t sub_1C1B6152C(uint64_t a1, double *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a2);
}

uint64_t sub_1C1B61558(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1C1B61590(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1C1B615BC()
{
  result = qword_1EDE6A648;
  if (!qword_1EDE6A648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6A648);
  }

  return result;
}

uint64_t sub_1C1B61618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1B61660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF09710, &qword_1C1BA3690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B616D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t ExpandTapAction.adIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier + 8);

  return v1;
}

uint64_t ExpandTapAction.expandedDestinationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v4 = sub_1C1B944A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExpandTapAction.maximumExpandedSize.getter()
{
  result = *(v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize + 8);
  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize + 16);
  return result;
}

uint64_t sub_1C1B61808()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1B61868(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C1B61900;
}

void sub_1C1B61900(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

uint64_t sub_1C1B61980(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x80000001C1BA5AC0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001C1BA5AC0;
  }

  else
  {
    v6 = 0x80000001C1BA5AE0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746E6564496461;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000072656966;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x80000001C1BA5AE0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x69746E6564496461;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000072656966;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

uint64_t sub_1C1B61A64()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B61B1C()
{
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B61BC0()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B61C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B62D6C();
  *a2 = result;
  return result;
}

void sub_1C1B61CA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000072656966;
  v4 = 0x80000001C1BA5AC0;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001C1BA5AE0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746E6564496461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1C1B61D18()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746E6564496461;
  }
}

uint64_t sub_1C1B61D88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B62D6C();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B61DB0(uint64_t a1)
{
  v2 = sub_1C1B6287C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B61DEC(uint64_t a1)
{
  v2 = sub_1C1B6287C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ExpandTapAction.__allocating_init(adIdentifier:expandedDestinationURL:maximumExpandedSize:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  v14 = &v13[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v16 = sub_1C1B944A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v13[v15], a3, v16);
  v18 = &v13[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize];
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = a6 & 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v13[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v13[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v21.receiver = v13;
  v21.super_class = type metadata accessor for TapAction();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  swift_unknownObjectRelease();
  (*(v17 + 8))(a3, v16);
  return v19;
}

id ExpandTapAction.init(adIdentifier:expandedDestinationURL:maximumExpandedSize:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_unknownObjectWeakInit();
  v13 = &v6[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v15 = sub_1C1B944A8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], a3, v15);
  v17 = &v6[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize];
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = a6 & 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v6[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v20.receiver = v6;
  v20.super_class = type metadata accessor for TapAction();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  swift_unknownObjectRelease();
  (*(v16 + 8))(a3, v15);
  return v18;
}

void *sub_1C1B62184(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1B944A8();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C1AC1F08(&qword_1EBF09838, &qword_1C1BA38B8);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - v11;
  v27 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_delegate;
  swift_unknownObjectWeakInit();
  v14 = a1[3];
  v13 = a1[4];
  v31 = a1;
  sub_1C1AAABE0(a1, v14);
  sub_1C1B6287C();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(v31);
    sub_1C1ABD038(v3 + v27);
    type metadata accessor for ExpandTapAction();
    v18 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v8;
    LOBYTE(v29) = 0;
    v16 = v26;
    v17 = sub_1C1B95698();
    v21 = (v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier);
    *v21 = v17;
    v21[1] = v22;
    LOBYTE(v29) = 1;
    sub_1C1B62DB8(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0]);
    sub_1C1B956F8();
    (*(v25 + 32))(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL, v15, v5);
    type metadata accessor for CGSize(0);
    LOBYTE(v28[0]) = 2;
    sub_1C1B62DB8(&unk_1EDE6BB30, type metadata accessor for CGSize);
    sub_1C1B95678();
    v23 = v30;
    v24 = v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize;
    *v24 = v29;
    v24[16] = v23;
    sub_1C1B95628();
    sub_1C1AAD2FC(&v29, v28);
    v3 = TapAction.init(from:)(v28);
    sub_1C1AA86F8(&v29);
    (*(v9 + 8))(v12, v16);
    sub_1C1AA86F8(v31);
  }

  return v3;
}

uint64_t sub_1C1B62600(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09738, &qword_1C1BA36E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B6287C();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier);
  v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier + 8);
  LOBYTE(v15) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1C1B944A8();
    sub_1C1B62DB8(&unk_1EDE6C3B0, MEMORY[0x1E6968FB0]);
    sub_1C1B95808();
    v13 = *(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize + 16);
    v15 = *(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize);
    v16 = v13;
    v17 = 2;
    type metadata accessor for CGSize(0);
    sub_1C1B62DB8(&qword_1EDE6BB40, type metadata accessor for CGSize);
    sub_1C1B95788();
    sub_1C1B95738();
    sub_1C1B3BBE0(&v15);
    sub_1C1AA86F8(&v15);
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B6287C()
{
  result = qword_1EBF09740;
  if (!qword_1EBF09740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09740);
  }

  return result;
}

uint64_t sub_1C1B62930()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier + 8);

  v2 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v3 = sub_1C1B944A8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_delegate;

  return sub_1C1ABD038(v4);
}

id ExpandTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ExpandTapAction()
{
  result = qword_1EBF09750;
  if (!qword_1EBF09750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B62AD8()
{
  result = sub_1C1B944A8();
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

unint64_t sub_1C1B62C68()
{
  result = qword_1EBF09820;
  if (!qword_1EBF09820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09820);
  }

  return result;
}

unint64_t sub_1C1B62CC0()
{
  result = qword_1EBF09828;
  if (!qword_1EBF09828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09828);
  }

  return result;
}

unint64_t sub_1C1B62D18()
{
  result = qword_1EBF09830;
  if (!qword_1EBF09830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09830);
  }

  return result;
}

uint64_t sub_1C1B62D6C()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1B62DB8(unint64_t *a1, void (*a2)(uint64_t))
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

id SearchLandingPageRepresentation.__allocating_init(adamId:metadata:clientRequestId:journeyRelayAdGroupId:journeyRelayCampaignId:parentAppCheckEnabled:installAttribution:rank:timeToDisplay:iAdId:storeFront:storeFrontLocale:size:odmlSuccess:treatmentId:deploymentId:experimentId:positionInformation:slotNumber:cppIds:appMetadata:creativeDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34;
  v86 = a8;
  v84 = a7;
  v83 = a6;
  v82 = a5;
  v81 = a4;
  v80 = a3;
  v101 = a33;
  v102 = a34;
  v100 = a32;
  v99 = a31;
  v97 = a29;
  v98 = a30;
  v95 = a27;
  v96 = a28;
  v93 = a25;
  v94 = a26;
  v91 = a23;
  v92 = a24;
  v90 = a22;
  v88 = a20;
  v89 = a21;
  v87 = a19;
  v85 = a18;
  v79 = a16;
  v78 = a15;
  v77 = a14;
  v40 = sub_1C1B945F8();
  v41 = *(v40 - 8);
  v42 = v41[8];
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v76 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = objc_allocWithZone(v35);
  v46 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId];
  *v46 = a1;
  v46[1] = a2;
  v47 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata];
  v48 = v81;
  *v47 = v80;
  v47[1] = v48;
  v49 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId];
  v50 = v83;
  *v49 = v82;
  v49[1] = v50;
  v51 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId];
  v52 = v86;
  *v51 = v84;
  v51[1] = v52;
  v53 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId];
  *v53 = a11;
  v53[1] = a12;
  v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled] = a13;
  *&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution] = v77;
  *&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank] = v78;
  *&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay] = v79;
  v54 = v41[2];
  v54(&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId], a17, v40);
  v55 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront];
  v57 = v87;
  v56 = v88;
  *v55 = v85;
  v55[1] = v57;
  v58 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale];
  *v58 = v56;
  v58[1] = v89;
  v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess] = v90;
  v59 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId];
  v60 = v92;
  *v59 = v91;
  v59[1] = v60;
  v61 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId];
  v62 = v94;
  *v61 = v93;
  v61[1] = v62;
  v63 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId];
  v64 = v96;
  *v63 = v95;
  v63[1] = v64;
  v65 = v98;
  *&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation] = v97;
  v66 = &v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber];
  *v66 = v65;
  v66[8] = v99 & 1;
  v67 = v101;
  *&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds] = v100;
  *&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata] = v67;
  *&v45[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails] = v102;
  sub_1C1B945E8();
  v68 = sub_1C1B945A8();
  v69 = &v45[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v69 = v68;
  v69[1] = v70;
  v54(&v45[OBJC_IVAR___APPCContentRepresentation_id], v44, v40);
  *&v45[OBJC_IVAR___APPCContentRepresentation_adType] = 6;
  *&v45[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v45[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v45[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v71 = &v45[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v71 = a9;
  v71[1] = a10;
  *&v45[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v45[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v72 = type metadata accessor for ContentRepresentation();
  v103.receiver = v45;
  v103.super_class = v72;
  v73 = objc_msgSendSuper2(&v103, sel_init);
  v74 = v41[1];
  v74(a17, v40);
  v74(v44, v40);
  return v73;
}

char *sub_1C1B63274(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C1B953A8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C1AC7DE4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1C6907490](i, a1);
        sub_1C1AEE4FC();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1C1AC7DE4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1C1AA7E98(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1C1AEE4FC();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1C1AC7DE4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1C1AA7E98(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1B63440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C1AC7E94(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      sub_1C1AC1F08(&qword_1EBF09870, &qword_1C1BA3AF0);
      sub_1C1AC1F08(&qword_1EBF09878, qword_1C1BA3AF8);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C1AC7E94((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C1B6356C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C1AC7EC4(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C1AC7EC4((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t SearchLandingPageRepresentation.adamId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.metadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.clientRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.journeyRelayAdGroupId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.journeyRelayCampaignId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.iAdId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId;
  v4 = sub_1C1B945F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchLandingPageRepresentation.storeFront.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.storeFrontLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.treatmentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.deploymentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.experimentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId + 8);

  return v1;
}

uint64_t SearchLandingPageRepresentation.slotNumber.getter()
{
  result = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber + 8);
  return result;
}

uint64_t sub_1C1B63A14(char a1)
{
  result = 0x64496D616461;
  switch(a1)
  {
    case 1:
      result = 0x617461646174656DLL;
      break;
    case 2:
      result = 0x6552746E65696C63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 1802396018;
      break;
    case 8:
      result = 0x69446F54656D6974;
      break;
    case 9:
      result = 0x6449644169;
      break;
    case 10:
      result = 0x6F724665726F7473;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x636375536C6D646FLL;
      break;
    case 13:
      result = 0x6E656D7461657274;
      break;
    case 14:
      v3 = 0x796F6C706564;
      goto LABEL_11;
    case 15:
      v3 = 0x697265707865;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 16:
      result = 0x646174654D707061;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x626D754E746F6C73;
      break;
    case 19:
      result = 0x736449707063;
      break;
    case 20:
      result = 0x6576697461657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1B63C80(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1B63A14(*a1);
  v5 = v4;
  if (v3 == sub_1C1B63A14(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B63D08()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B63A14(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B63D6C()
{
  sub_1C1B63A14(*v0);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B63DC0()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B63A14(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B63E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B66BCC();
  *a2 = result;
  return result;
}

uint64_t sub_1C1B63E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1B63A14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1B63E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B66BCC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B63EB8(uint64_t a1)
{
  v2 = sub_1C1B661E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B63EF4(uint64_t a1)
{
  v2 = sub_1C1B661E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SearchLandingPageRepresentation.init(adamId:metadata:clientRequestId:journeyRelayAdGroupId:journeyRelayCampaignId:parentAppCheckEnabled:installAttribution:rank:timeToDisplay:iAdId:storeFront:storeFrontLocale:size:odmlSuccess:treatmentId:deploymentId:experimentId:positionInformation:slotNumber:cppIds:appMetadata:creativeDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34;
  v85 = a8;
  v83 = a7;
  v82 = a6;
  v81 = a5;
  v80 = a4;
  v79 = a3;
  v100 = a33;
  v101 = a34;
  v99 = a32;
  v98 = a31;
  v96 = a29;
  v97 = a30;
  v94 = a27;
  v95 = a28;
  v92 = a25;
  v93 = a26;
  v90 = a23;
  v91 = a24;
  v89 = a22;
  v87 = a20;
  v88 = a21;
  v86 = a19;
  v84 = a18;
  v78 = a16;
  v77 = a15;
  v76 = a14;
  v40 = sub_1C1B945F8();
  v41 = *(v40 - 8);
  v42 = v41[8];
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId];
  *v45 = a1;
  v45[1] = a2;
  v46 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata];
  v47 = v80;
  *v46 = v79;
  v46[1] = v47;
  v48 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId];
  v49 = v82;
  *v48 = v81;
  v48[1] = v49;
  v50 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId];
  v51 = v85;
  *v50 = v83;
  v50[1] = v51;
  v52 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId];
  *v52 = a11;
  v52[1] = a12;
  v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled] = a13;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution] = v76;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank] = v77;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay] = v78;
  v53 = v41[2];
  v53(&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId], a17, v40);
  v54 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront];
  v56 = v86;
  v55 = v87;
  *v54 = v84;
  v54[1] = v56;
  v57 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale];
  *v57 = v55;
  v57[1] = v88;
  v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess] = v89;
  v58 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId];
  v59 = v91;
  *v58 = v90;
  v58[1] = v59;
  v60 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId];
  v61 = v93;
  *v60 = v92;
  v60[1] = v61;
  v62 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId];
  v63 = v95;
  *v62 = v94;
  v62[1] = v63;
  v64 = v97;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation] = v96;
  v65 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber];
  *v65 = v64;
  v65[8] = v98 & 1;
  v66 = v100;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds] = v99;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata] = v66;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails] = v101;
  sub_1C1B945E8();
  v67 = sub_1C1B945A8();
  v68 = &v35[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v68 = v67;
  v68[1] = v69;
  v53(&v35[OBJC_IVAR___APPCContentRepresentation_id], v44, v40);
  *&v35[OBJC_IVAR___APPCContentRepresentation_adType] = 6;
  *&v35[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v35[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v35[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v70 = &v35[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v70 = a9;
  v70[1] = a10;
  *&v35[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v35[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v71 = type metadata accessor for ContentRepresentation();
  v102.receiver = v35;
  v102.super_class = v71;
  v72 = objc_msgSendSuper2(&v102, sel_init);
  v73 = v41[1];
  v73(a17, v40);
  v73(v44, v40);
  return v72;
}

void *sub_1C1B643CC(uint64_t *a1)
{
  v119 = *MEMORY[0x1E69E9840];
  v3 = sub_1C1B945F8();
  v113 = *(v3 - 8);
  v4 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1AC1F08(&qword_1EBF09860, &unk_1C1BA3AD8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v106 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v114 = a1;
  sub_1C1AAABE0(a1, v13);
  sub_1C1B661E0();
  sub_1C1B95A08();
  if (!v1)
  {
    v112 = v3;
    LOBYTE(v117) = 0;
    v14 = sub_1C1B95698();
    v19 = v115;
    v20 = (v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId);
    *v20 = v14;
    v20[1] = v21;
    LOBYTE(v117) = 1;
    v22 = sub_1C1B95638();
    v23 = (v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata);
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v117) = 2;
    v25 = 0;
    v26 = sub_1C1B95698();
    v27 = (v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v117) = 3;
    v29 = sub_1C1B95638();
    v106 = 0;
    v30 = (v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId);
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v117) = 4;
    v32 = sub_1C1B95638();
    v33 = (v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId);
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v117) = 5;
    *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled) = sub_1C1B956A8() & 1;
    LOBYTE(v116) = 6;
    sub_1C1AE4898();
    sub_1C1B95678();
    v111 = v118;
    if (v118 >> 60 == 15)
    {
      v54 = 0;
    }

    else
    {
      *&v109[4] = 0;
      v55 = v117;
      v56 = objc_opt_self();
      v110 = v55;
      v57 = sub_1C1B944C8();
      v117 = 0;
      v58 = [v56 JSONObjectWithData:v57 options:0 error:&v117];

      if (!v58)
      {
        v60 = v117;
        sub_1C1B94458();

        swift_willThrow();
        sub_1C1AE49EC(v110, v111);
        (*(v8 + 8))(v11, v7);
        v35 = 0;
        v36 = 0;
        v107 = 0;
        v108 = 0;
        *v109 = 0;
        LODWORD(v110) = 0;
        LODWORD(v111) = 0;
        goto LABEL_6;
      }

      v59 = v117;
      sub_1C1B952F8();
      swift_unknownObjectRelease();
      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v54 = sub_1C1B1AF58(v116);
        sub_1C1AE49EC(v110, v111);
      }

      else
      {
        sub_1C1AE49EC(v110, v111);
        v54 = 0;
      }

      v25 = *&v109[4];
    }

    *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution) = v54;
    LOBYTE(v117) = 7;
    v61 = sub_1C1B956D8();
    if (v25)
    {
      (*(v8 + 8))(v11, v7);
      v36 = 0;
      v107 = 0;
      v108 = 0;
      *v109 = 0;
      LODWORD(v110) = 0;
      LODWORD(v111) = 0;
      v35 = 1;
      goto LABEL_6;
    }

    *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank) = v61;
    LOBYTE(v117) = 8;
    *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay) = sub_1C1B956D8();
    LOBYTE(v117) = 9;
    sub_1C1B66C20(&qword_1EDE6C358);
    v62 = v7;
    v63 = v11;
    sub_1C1B956F8();
    (*(v113 + 32))(v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId, v6, v112);
    LOBYTE(v117) = 10;
    v64 = sub_1C1B95638();
    v65 = (v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront);
    *v65 = v64;
    v65[1] = v66;
    LOBYTE(v117) = 11;
    v67 = sub_1C1B95638();
    v68 = (v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale);
    *v68 = v67;
    v68[1] = v69;
    LOBYTE(v117) = 12;
    *(v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess) = sub_1C1B956A8() & 1;
    LOBYTE(v117) = 13;
    v70 = sub_1C1B95638();
    v71 = (v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId);
    *v71 = v70;
    v71[1] = v72;
    LOBYTE(v117) = 14;
    v73 = sub_1C1B95698();
    v74 = (v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId);
    *v74 = v73;
    v74[1] = v75;
    LOBYTE(v117) = 15;
    v76 = sub_1C1B95638();
    v77 = (v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId);
    *v77 = v76;
    v77[1] = v78;
    LOBYTE(v116) = 16;
    sub_1C1B95678();
    v79 = v118;
    if (v118 >> 60 != 15)
    {
      v80 = v117;
      v81 = objc_opt_self();
      v82 = sub_1C1B944C8();
      v117 = 0;
      v83 = [v81 JSONObjectWithData:v82 options:0 error:&v117];

      if (!v83)
      {
        v86 = v117;
        sub_1C1B94458();

        swift_willThrow();
        sub_1C1AE49EC(v80, v79);
        (*(v8 + 8))(v63, v62);
        LODWORD(v110) = 0;
        LODWORD(v111) = 0;
        v35 = 1;
        v36 = 1;
        v107 = 0x100000001;
        v108 = 0x100000001;
        *v109 = 1;
        goto LABEL_40;
      }

      v84 = v117;
      sub_1C1B952F8();
      swift_unknownObjectRelease();
      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v85 = sub_1C1B1AF58(v116);
        sub_1C1AE49EC(v80, v79);

LABEL_48:
        *(v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata) = v85;
        LOBYTE(v116) = 20;
        sub_1C1B95678();
        v87 = v118;
        if (v118 >> 60 == 15)
        {
          goto LABEL_54;
        }

        v88 = v117;
        v89 = objc_opt_self();
        v90 = sub_1C1B944C8();
        v117 = 0;
        v91 = [v89 JSONObjectWithData:v90 options:0 error:&v117];

        if (v91)
        {
          v92 = v117;
          sub_1C1B952F8();
          swift_unknownObjectRelease();
          sub_1C1AC1F08(&qword_1EBF09868, &qword_1C1BA3AE8);
          if (swift_dynamicCast())
          {
            v93 = sub_1C1B6356C(v116);
            sub_1C1AE49EC(v88, v87);

LABEL_55:
            *(v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails) = v93;
            LOBYTE(v116) = 17;
            sub_1C1B95678();
            v95 = v118;
            if (v118 >> 60 == 15)
            {
              goto LABEL_61;
            }

            v96 = v117;
            v97 = objc_opt_self();
            v98 = sub_1C1B944C8();
            v117 = 0;
            v99 = [v97 JSONObjectWithData:v98 options:0 error:&v117];

            if (v99)
            {
              v100 = v117;
              sub_1C1B952F8();
              swift_unknownObjectRelease();
              sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
              if (swift_dynamicCast())
              {
                v101 = sub_1C1B1AF58(v116);
                sub_1C1AE49EC(v96, v95);

LABEL_62:
                *(v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation) = v101;
                LOBYTE(v117) = 18;
                v103 = sub_1C1B95668();
                v104 = v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber;
                *v104 = v103;
                v104[8] = v105 & 1;
                sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
                LOBYTE(v116) = 19;
                sub_1C1B66C64();
                sub_1C1B95678();
                *(v115 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds) = v117;
                sub_1C1B95628();
                v19 = ContentRepresentation.init(from:)(&v117);
                (*(v8 + 8))(v63, v62);
                sub_1C1AA86F8(v114);
                goto LABEL_5;
              }

              sub_1C1AE49EC(v96, v95);
LABEL_61:
              v101 = 0;
              goto LABEL_62;
            }

            v102 = v117;
            sub_1C1B94458();

            swift_willThrow();
            sub_1C1AE49EC(v96, v95);
            (*(v8 + 8))(v63, v62);
            LODWORD(v111) = 0;
            v35 = 1;
            v36 = 1;
            v107 = 0x100000001;
            v108 = 0x100000001;
            *v109 = 0x100000001;
            LODWORD(v110) = 1;
            goto LABEL_40;
          }

          sub_1C1AE49EC(v88, v87);
LABEL_54:
          v93 = 0;
          goto LABEL_55;
        }

        v94 = v117;
        sub_1C1B94458();

        swift_willThrow();
        sub_1C1AE49EC(v88, v87);
        (*(v8 + 8))(v63, v62);
        LODWORD(v110) = 0;
        LODWORD(v111) = 0;
        v35 = 1;
        v36 = 1;
        v107 = 0x100000001;
        v108 = 0x100000001;
        *v109 = 0x100000001;
LABEL_40:
        v19 = v115;
LABEL_6:
        v37 = v106;
        sub_1C1AA86F8(v114);
        v38 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId + 8);

        if (!v37)
        {
          v47 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata + 8);
        }

        v39 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId + 8);

        v48 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId + 8);

        v40 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId + 8);

        if (v35)
        {
          v49 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution);

          v41 = v112;
          v42 = v113;
          if (v36)
          {
LABEL_10:
            (*(v42 + 8))(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId, v41);
            if ((v107 & 1) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v41 = v112;
          v42 = v113;
          if (v36)
          {
            goto LABEL_10;
          }
        }

        if (!v107)
        {
LABEL_11:
          if (HIDWORD(v107))
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        }

LABEL_21:
        v50 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront + 8);

        if ((v107 & 0x100000000) != 0)
        {
LABEL_12:
          v43 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale + 8);

          if ((v108 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }

LABEL_22:
        if (!v108)
        {
LABEL_13:
          if (HIDWORD(v108))
          {
            goto LABEL_14;
          }

          goto LABEL_24;
        }

LABEL_23:
        v51 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId + 8);

        if ((v108 & 0x100000000) != 0)
        {
LABEL_14:
          v44 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId + 8);

          if ((v109[0] & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

LABEL_24:
        if (!*v109)
        {
LABEL_15:
          if (*&v109[4])
          {
            goto LABEL_16;
          }

          goto LABEL_26;
        }

LABEL_25:
        v52 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId + 8);

        if (v109[4])
        {
LABEL_16:
          v45 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata);

          if ((v110 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_27;
        }

LABEL_26:
        if (!v110)
        {
LABEL_17:
          if (!v111)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

LABEL_27:
        v53 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails);

        if ((v111 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_18:
        v46 = *(v19 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation);

        goto LABEL_4;
      }

      sub_1C1AE49EC(v80, v79);
    }

    v85 = 0;
    goto LABEL_48;
  }

  v19 = v115;
  sub_1C1AA86F8(v114);
LABEL_4:
  type metadata accessor for SearchLandingPageRepresentation();
  v15 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x30);
  v16 = *((*MEMORY[0x1E69E7D40] & *v19) + 0x34);
  swift_deallocPartialClassInstance();
LABEL_5:
  v17 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t sub_1C1B65738(void *a1)
{
  v3 = v1;
  v55 = *MEMORY[0x1E69E9840];
  v5 = sub_1C1AC1F08(&qword_1EBF09840, &unk_1C1BA38C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B661E0();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId);
  v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId + 8);
  LOBYTE(v54[0]) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    *v54 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata);
    v53 = 1;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1B66360(&qword_1EDE6BBC0, &qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1B95808();
    v13 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId);
    v14 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId + 8);
    LOBYTE(v54[0]) = 2;
    sub_1C1B957A8();
    *v54 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId);
    v53 = 3;
    sub_1C1B95808();
    *v54 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId);
    v53 = 4;
    sub_1C1B95808();
    v15 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled);
    LOBYTE(v54[0]) = 5;
    sub_1C1B957B8();
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution))
    {
      v52 = objc_opt_self();
      v18 = sub_1C1B94CA8();
      v54[0] = 0;
      v19 = [v52 dataWithJSONObject:v18 options:0 error:v54];

      v20 = v54[0];
      if (!v19)
      {
        v23 = v20;
        sub_1C1B94458();

LABEL_9:
        swift_willThrow();
        goto LABEL_3;
      }

      v52 = sub_1C1B944D8();
      v22 = v21;

      v54[0] = v52;
      v54[1] = v22;
      v51 = v22;
      v53 = 6;
      sub_1C1AE4B54();
      sub_1C1B95808();
      sub_1C1AE4A00(v52, v51);
    }

    else
    {
      LOBYTE(v54[0]) = 6;
      sub_1C1B95828();
    }

    v24 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank);
    LOBYTE(v54[0]) = 7;
    sub_1C1B957E8();
    v25 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay);
    LOBYTE(v54[0]) = 8;
    sub_1C1B957E8();
    LOBYTE(v54[0]) = 9;
    sub_1C1B945F8();
    sub_1C1B66C20(&unk_1EDE6C360);
    sub_1C1B95808();
    *v54 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront);
    v53 = 10;
    sub_1C1B95808();
    *v54 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale);
    v53 = 11;
    sub_1C1B95808();
    v26 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess);
    LOBYTE(v54[0]) = 12;
    sub_1C1B957B8();
    *v54 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId);
    v53 = 13;
    sub_1C1B95808();
    v27 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId);
    v28 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId + 8);
    LOBYTE(v54[0]) = 14;
    sub_1C1B957A8();
    *v54 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId);
    v53 = 15;
    sub_1C1B95808();
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata))
    {
      v29 = objc_opt_self();
      v30 = sub_1C1B94CA8();
      v54[0] = 0;
      v31 = [v29 dataWithJSONObject:v30 options:0 error:v54];

      v32 = v54[0];
      if (!v31)
      {
        goto LABEL_21;
      }

      v33 = sub_1C1B944D8();
      v35 = v34;

      v54[0] = v33;
      v54[1] = v35;
      v53 = 16;
      sub_1C1AE4B54();
      sub_1C1B95808();
      sub_1C1AE4A00(v33, v35);
    }

    else
    {
      LOBYTE(v54[0]) = 16;
      sub_1C1B95828();
    }

    if (!*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails))
    {
      LOBYTE(v54[0]) = 20;
      sub_1C1B95828();
      goto LABEL_18;
    }

    v36 = objc_opt_self();
    sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
    v37 = sub_1C1B94EB8();
    v54[0] = 0;
    v38 = [v36 dataWithJSONObject:v37 options:0 error:v54];

    v32 = v54[0];
    if (v38)
    {
      v39 = sub_1C1B944D8();
      v41 = v40;

      v54[0] = v39;
      v54[1] = v41;
      v53 = 20;
      sub_1C1AE4B54();
      sub_1C1B95808();
      sub_1C1AE4A00(v39, v41);
LABEL_18:
      if (!*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation))
      {
        LOBYTE(v54[0]) = 17;
        sub_1C1B95828();
        goto LABEL_23;
      }

      v42 = objc_opt_self();
      v43 = sub_1C1B94CA8();
      v54[0] = 0;
      v44 = [v42 dataWithJSONObject:v43 options:0 error:v54];

      v32 = v54[0];
      if (v44)
      {
        v45 = sub_1C1B944D8();
        v47 = v46;

        v54[0] = v45;
        v54[1] = v47;
        v53 = 17;
        sub_1C1AE4B54();
        sub_1C1B95808();
        sub_1C1AE4A00(v45, v47);
LABEL_23:
        v49 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber + 8);
        v54[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber);
        LOBYTE(v54[1]) = v49;
        v53 = 18;
        sub_1C1AC1F08(&qword_1EBF09848, &qword_1C1BA38D0);
        sub_1C1B66234();
        sub_1C1B95808();
        v54[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds);
        v53 = 19;
        sub_1C1AC1F08(&qword_1EBF09850, &qword_1C1BA38D8);
        sub_1C1B662B0();
        sub_1C1B95808();
        sub_1C1B95738();
        sub_1C1B4FA4C(v54);
        sub_1C1AA86F8(v54);
        goto LABEL_3;
      }
    }

LABEL_21:
    v48 = v32;
    sub_1C1B94458();

    goto LABEL_9;
  }

LABEL_3:
  result = (*(v6 + 8))(v9, v5);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1C1B661E0()
{
  result = qword_1EDE6A818;
  if (!qword_1EDE6A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A818);
  }

  return result;
}

unint64_t sub_1C1B66234()
{
  result = qword_1EDE6A658;
  if (!qword_1EDE6A658)
  {
    sub_1C1AC3404(&qword_1EBF09848, &qword_1C1BA38D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A658);
  }

  return result;
}

unint64_t sub_1C1B662B0()
{
  result = qword_1EDE6A680;
  if (!qword_1EDE6A680)
  {
    sub_1C1AC3404(&qword_1EBF09850, &qword_1C1BA38D8);
    sub_1C1B66360(&unk_1EDE6BBA0, &unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A680);
  }

  return result;
}

uint64_t sub_1C1B66360(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B66420()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId + 8);

  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata + 8);

  v3 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId + 8);

  v4 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId + 8);

  v6 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution);

  v7 = OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId;
  v8 = sub_1C1B945F8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront + 8);

  v10 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale + 8);

  v11 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId + 8);

  v12 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId + 8);

  v13 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId + 8);

  v14 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata);

  v15 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails);

  v16 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation);

  v17 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds);
}

id SearchLandingPageRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLandingPageRepresentation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SearchLandingPageRepresentation()
{
  result = qword_1EDE6C520;
  if (!qword_1EDE6C520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B667B0()
{
  result = sub_1C1B945F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of SearchLandingPageRepresentation.__allocating_init(adamId:metadata:clientRequestId:journeyRelayAdGroupId:journeyRelayCampaignId:parentAppCheckEnabled:installAttribution:rank:timeToDisplay:iAdId:storeFront:storeFrontLocale:size:odmlSuccess:treatmentId:deploymentId:experimentId:positionInformation:slotNumber:cppIds:appMetadata:creativeDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 360);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t getEnumTagSinglePayload for SearchLandingPageRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchLandingPageRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B66AC8()
{
  result = qword_1EBF09858;
  if (!qword_1EBF09858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09858);
  }

  return result;
}

unint64_t sub_1C1B66B20()
{
  result = qword_1EDE6A808;
  if (!qword_1EDE6A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A808);
  }

  return result;
}

unint64_t sub_1C1B66B78()
{
  result = qword_1EDE6A810;
  if (!qword_1EDE6A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A810);
  }

  return result;
}

uint64_t sub_1C1B66BCC()
{
  v0 = sub_1C1B958A8();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C1B66C20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1B945F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B66C64()
{
  result = qword_1EDE6BB98;
  if (!qword_1EDE6BB98)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BB98);
  }

  return result;
}

uint64_t sub_1C1B66D10@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

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

uint64_t sub_1C1B66D70@<X0>(char *a1@<X8>)
{
  v2 = sub_1C1B955F8();

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

uint64_t sub_1C1B66DD4(uint64_t a1)
{
  v2 = sub_1C1B67438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B66E10(uint64_t a1)
{
  v2 = sub_1C1B67438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B66E4C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B66EC0()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B66F14@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C1B955F8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1C1B67038(void *a1, uint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF09888, &qword_1C1BA3B98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B67438();
  sub_1C1B95A18();
  v14 = 0;
  sub_1C1B674E0();
  sub_1C1B95808();
  if (!v2)
  {
    sub_1C1B67534(&unk_1EDE6C140);
    sub_1C1B67534(&qword_1EDE6C150);
    swift_getObjectType();
    v13 = a2;
    v12[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1C1B67200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C1B67248(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1C1B67248(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF09880, &qword_1C1BA3B90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B67438();
  sub_1C1B95A08();
  if (!v1)
  {
    v13 = 0;
    sub_1C1B6748C();
    sub_1C1B956F8();
    type metadata accessor for PrimitiveCreator();
    v11[15] = 1;
    sub_1C1B67534(&unk_1EDE6C140);
    sub_1C1B956F8();
    (*(v4 + 8))(v7, v3);
    v9 = v12;
  }

  sub_1C1AA86F8(a1);
  return v9;
}

unint64_t sub_1C1B67438()
{
  result = qword_1EDE6BE48;
  if (!qword_1EDE6BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE48);
  }

  return result;
}

unint64_t sub_1C1B6748C()
{
  result = qword_1EDE6BE20;
  if (!qword_1EDE6BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE20);
  }

  return result;
}

unint64_t sub_1C1B674E0()
{
  result = qword_1EDE6BE30;
  if (!qword_1EDE6BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE30);
  }

  return result;
}

uint64_t sub_1C1B67534(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrimitiveCreator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B6759C()
{
  result = qword_1EBF09890;
  if (!qword_1EBF09890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09890);
  }

  return result;
}

unint64_t sub_1C1B675F4()
{
  result = qword_1EBF09898;
  if (!qword_1EBF09898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09898);
  }

  return result;
}

unint64_t sub_1C1B6764C()
{
  result = qword_1EDE6BE38;
  if (!qword_1EDE6BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE38);
  }

  return result;
}

unint64_t sub_1C1B676A4()
{
  result = qword_1EDE6BE40;
  if (!qword_1EDE6BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE40);
  }

  return result;
}

unint64_t sub_1C1B676F8()
{
  result = qword_1EDE6BE28;
  if (!qword_1EDE6BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE28);
  }

  return result;
}

void sub_1C1B6774C(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v24 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {

    sub_1C1B95368();
    sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
    sub_1C1B7B340();
    sub_1C1B95088();
    a1 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v17 = v4;
  while (a1 < 0)
  {
    if (!sub_1C1B953D8() || (sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050), swift_dynamicCast(), (v14 = v18) == 0))
    {
LABEL_32:
      sub_1C1B478F8();

      return;
    }

LABEL_20:
    v15 = [v14 placementType];
    if (v15 <= 2)
    {
      if (v15 >= 3)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    if (v15 <= 4)
    {
      if (v15 == 3)
      {
        v10 = sub_1C1AC37D8(v14);
      }

      else
      {
        v10 = sub_1C1AC3EA4(v14);
      }

      goto LABEL_10;
    }

    if (v15 == 5)
    {
      v10 = sub_1C1AC439C(v14);
      goto LABEL_10;
    }

    if (v15 == 7)
    {
LABEL_9:
      sub_1C1AC4BFC(v14);
LABEL_10:
      v11 = v10;

      if (v11)
      {
        MEMORY[0x1C6906EA0]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C1B94F08();
        }

        sub_1C1B94F48();
      }
    }

    else
    {
LABEL_26:
    }
  }

  v12 = v5;
  v13 = v6;
  if (v6)
  {
LABEL_16:
    v6 = (v13 - 1) & v13;
    v14 = *(*(a1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1C1B67A68(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C1B95358();
    v5 = v4;
    v6 = sub_1C1B953F8();
    v8 = v7;
    v9 = MEMORY[0x1C6907370](v3, v5, v6, v7);
    sub_1C1B616D0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C1B616D0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_1C1B95328();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C1B76134(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1C1B616D0(v3, v5, v2 != 0);
  return v13;
}

unint64_t sub_1C1B67B84()
{
  sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
  inited = swift_initStackObject();
  *(inited + 32) = 0x65746172746962;
  *(inited + 16) = xmmword_1C1B9C9C0;
  *(inited + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E63B0];
  *(inited + 48) = *(v0 + OBJC_IVAR___APPCVideoRepresentation_bitrate);
  *(inited + 72) = v2;
  strcpy((inited + 80), "signalStrength");
  *(inited + 95) = -18;
  v3 = MEMORY[0x1E69E6810];
  *(inited + 96) = *(v0 + OBJC_IVAR___APPCVideoRepresentation_signalStrength);
  *(inited + 120) = v3;
  strcpy((inited + 128), "connectionType");
  *(inited + 143) = -18;
  v4 = MEMORY[0x1E69E6530];
  *(inited + 144) = *(v0 + OBJC_IVAR___APPCVideoRepresentation_connectionType);
  *(inited + 168) = v4;
  *(inited + 176) = 0x4C52557465737361;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = sub_1C1B944A8();
  v5 = sub_1C1AB0D60((inited + 192));
  sub_1C1B0C774(v5);
  *(inited + 224) = 0x6E6F697461727564;
  *(inited + 232) = 0xE800000000000000;
  v6 = *(v0 + OBJC_IVAR___APPCVideoRepresentation_duration);
  *(inited + 264) = v2;
  *(inited + 240) = v6;
  v7 = sub_1C1AA7D00(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  swift_arrayDestroy();
  return v7;
}

char *PromotedContent.__allocating_init(placementType:size:context:unfilledReason:)(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  swift_getObjectType();

  return sub_1C1B76358(0, 0, a1, 0, a2, a3, a4, a5);
}

unint64_t sub_1C1B67DCC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x617461446174656DLL;
      break;
    case 4:
      result = 0x75736F6C63736964;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      v3 = 10;
      goto LABEL_28;
    case 7:
      result = 0x6D614E646E617262;
      break;
    case 8:
      result = 0x6E676961706D6163;
      break;
    case 9:
      result = 0x6E65736572706572;
      break;
    case 10:
    case 11:
    case 28:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x726F727265;
      break;
    case 13:
      result = 0x6C6F686563616C70;
      break;
    case 14:
      result = 0x7461447472617473;
      break;
    case 15:
      result = 0x6974617269707865;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x6465686361747461;
      break;
    case 18:
      result = 0x6465646E6576;
      break;
    case 19:
      result = 0x6564726163736964;
      break;
    case 20:
      result = 0x64656D75736E6F63;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
    case 32:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
    case 26:
      result = 0xD000000000000010;
      break;
    case 27:
      result = 0xD000000000000018;
      break;
    case 29:
      result = 0x6E656D6563616C70;
      break;
    case 30:
      v3 = 11;
LABEL_28:
      result = v3 | 0xD000000000000014;
      break;
    case 31:
      result = 0x5264726163736964;
      break;
    case 33:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD00000000000001ALL;
      break;
    case 35:
      result = 0x74736F6E67616964;
      break;
    case 36:
      result = 0x6973736572706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1B681DC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1B67DCC(*a1);
  v5 = v4;
  if (v3 == sub_1C1B67DCC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B68264()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B67DCC(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B682C8()
{
  sub_1C1B67DCC(*v0);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B6831C()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B67DCC(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B6837C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B7B17C();
  *a2 = result;
  return result;
}

unint64_t sub_1C1B683AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1B67DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C1B683E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B7B17C();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B68414(uint64_t a1)
{
  v2 = sub_1C1B795B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B68450(uint64_t a1)
{
  v2 = sub_1C1B795B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B6850C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C1B94D88();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C1B68ACC()
{
  v1 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1C1B68B94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_1C1B94D78();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1C1B68C34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C1B94D88();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C1B68DE0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a5;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;
  a6(v9);
  return a7(v12);
}

void *sub_1C1B68EA8()
{
  v1 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1C1B68FD8()
{
  v1 = OBJC_IVAR___APPCPromotedContent_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1B69030(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1C1B6908C(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C1B6917C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1C1AA7E30(v4 + v8, a4, a2, a3);
}

uint64_t sub_1C1B691F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = sub_1C1AC1F08(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  sub_1C1AA7E30(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  sub_1C1B19384(v15, v16 + v17, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1C1B693EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v4 = sub_1C1B94588();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1B69588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v5 = sub_1C1B94588();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1B69614(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1C1B6972C()
{
  v1 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1C1B697F4(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setUnfilledReason_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1C1B69874(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  *(v3 + v4) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setUnfilledReason_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_1C1B698F8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C1B69980;
}

void sub_1C1B69980(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setUnfilledReason_];
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t sub_1C1B69A70()
{
  v1 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B69B08(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B69C00()
{
  v1 = OBJC_IVAR___APPCPromotedContent_vended;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1C1B69C44(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1C1B69CCC;
}

void sub_1C1B69CCC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for Context();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        v7 = OBJC_IVAR___APPCContext_waitingLock;
        [*(v5 + OBJC_IVAR___APPCContext_waitingLock) lock];
        v8 = OBJC_IVAR___APPCContext_waiting;
        swift_beginAccess();
        v9 = *(v6 + v8);
        v10 = *(v6 + v7);

        [v10 unlock];
        if (*(v9 + 16))
        {
          sub_1C1AAB208(v9, 1, 0);
        }
      }

      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t sub_1C1B69DF0()
{
  v1 = OBJC_IVAR___APPCPromotedContent_discarded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B69E88(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_discarded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B69F80()
{
  v1 = OBJC_IVAR___APPCPromotedContent_consumed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B6A018(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_consumed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1B6A110()
{
  v1 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B6A1A8(double a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C1B6A264(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  sub_1C1AA7E30(a1 + v9, v8, &qword_1EBF07F50, &qword_1C1B9A590);
  v10 = sub_1C1B94588();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1C1B94538();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

void sub_1C1B6A3E0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_1C1B94558();
    v11 = sub_1C1B94588();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1C1B94588();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  sub_1C1B19384(v10, a1 + v13, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
}

uint64_t sub_1C1B6A530(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_videoRequestStartDate;
  swift_beginAccess();
  sub_1C1B19384(a1, v1 + v3, &qword_1EBF07F50, &qword_1C1B9A590);
  return swift_endAccess();
}

uint64_t sub_1C1B6A648()
{
  v1 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B6A6E0(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B6A7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B6A84C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a5;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;
  a6(v9);
  return a7(v12);
}

uint64_t sub_1C1B6AB4C()
{
  v1 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = (v0 + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  LOBYTE(v5) = sub_1C1AB1C0C(v5, v4, v2);

  return v5 & 1;
}

uint64_t sub_1C1B6AC34()
{
  v1 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v4 = sub_1C1ABBCD4(v3);

  return v4 & 1;
}

uint64_t sub_1C1B6ADBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  v7 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v7, v6, &unk_1EBF098E0, &qword_1C1BA22A0);
  v8 = sub_1C1B945F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = [Strong identifier];
      swift_unknownObjectRelease();
      sub_1C1B945D8();

      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    (*(v9 + 56))(a1, v13, 1, v8);
    result = v10(v6, 1, v8);
    if (result != 1)
    {
      return sub_1C1AA7C8C(v6, &unk_1EBF098E0, &qword_1C1BA22A0);
    }
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

uint64_t sub_1C1B6B010()
{
  v1 = sub_1C1B94588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR___APPCPromotedContent_consumed;
  swift_beginAccess();
  if (*(v0 + v9) & 1) != 0 || (v10 = OBJC_IVAR___APPCPromotedContent_attachedToView, swift_beginAccess(), (*(v0 + v10)))
  {
    v11 = 0;
  }

  else
  {
    v12 = OBJC_IVAR___APPCPromotedContent_expirationDate;
    swift_beginAccess();
    (*(v2 + 16))(v8, v0 + v12, v1);
    sub_1C1B94578();
    v11 = sub_1C1B94548();
    v13 = *(v2 + 8);
    v13(v6, v1);
    v13(v8, v1);
  }

  return v11 & 1;
}

unint64_t sub_1C1B6B224()
{
  v1 = v0;
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24[-v9];
  v11 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v11, v10, &qword_1EBF07AC8, &qword_1C1B9CED0);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1C1AA7C8C(v10, &qword_1EBF07AC8, &qword_1C1B9CED0);
    return sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
  }

  (*(v3 + 16))(v6, v10, v2);
  sub_1C1AA7C8C(v10, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v13 = sub_1C1B94468();
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  v16 = (v1 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload);
  swift_beginAccess();
  v17 = v16[1];
  if (!v17)
  {

    return sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
  }

  v18 = *v16;
  sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9D2F0;
  *(inited + 32) = 0xD000000000000017;
  v20 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x80000001C1BAC040;
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 72) = v20;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001C1BAC060;
  *(inited + 96) = v18;
  *(inited + 104) = v17;
  *(inited + 120) = v20;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000001C1BAC080;
  v21 = MEMORY[0x1E69E6370];
  *(inited + 144) = *(v1 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd);
  *(inited + 168) = v21;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001C1BAC0A0;
  v22 = *(v1 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd);
  *(inited + 216) = v21;
  *(inited + 192) = v22;

  v23 = sub_1C1AA7D00(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_1C1B6B5B0(uint64_t *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Context();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = OBJC_IVAR___APPCContext_newsContext;
      v5 = v3;
      swift_beginAccess();
      v6 = *(v5 + v4);
      v7 = v6;
      swift_unknownObjectRelease();
      if (v6)
      {
        v8 = *a1;
        swift_beginAccess();
        v9 = *&v7[v8];
        v10 = v9;

        if (v9)
        {
          v11 = [v10 integerValue];

          return v11;
        }
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

uint64_t sub_1C1B6B6B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR___APPCPromotedContent_discardReason;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  v6 = OBJC_IVAR___APPCPromotedContent_discarded;
  result = swift_beginAccess();
  *(v4 + v6) = v3 ^ 1;
  return result;
}

uint64_t sub_1C1B6B73C()
{
  v1 = (v0 + OBJC_IVAR___APPCPromotedContent_discardReason);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1C1B6B788(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___APPCPromotedContent_discardReason;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = OBJC_IVAR___APPCPromotedContent_discarded;
  result = swift_beginAccess();
  *(v2 + v6) = (a2 & 1) == 0;
  return result;
}

void (*sub_1C1B6B818(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCPromotedContent_discardReason;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C1B6B8A0;
}

void sub_1C1B6B8A0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4] + 8);
    v6 = OBJC_IVAR___APPCPromotedContent_discarded;
    swift_beginAccess();
    *(v4 + v6) = (v5 & 1) == 0;
  }

  free(v3);
}

uint64_t PromotedContent.serverResponseReceivedTimestamp.getter()
{
  result = *(v0 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp);
  v2 = *(v0 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp + 8);
  return result;
}

uint64_t sub_1C1B6B9B8()
{
  sub_1C1B95468();
  v1 = [v0 description];
  v2 = sub_1C1B94D88();

  MEMORY[0x1C6906DF0](0x6669746E65646920, 0xED0000203A726569);
  v3 = &v0[OBJC_IVAR___APPCPromotedContent_identifier];
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 1);

  MEMORY[0x1C6906DF0](v5, v4);

  return v2;
}

uint64_t sub_1C1B6BAB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_1C1B6BB18()
{
  v1 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1C1B6BB80(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1C1B6BC3C(uint64_t a1, uint64_t *a2)
{
  sub_1C1AA7E30(a1, v6, &qword_1EBF098F0, &qword_1C1B9D838);
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  sub_1C1B19384(v6, v3 + v4, &qword_1EBF098F0, &qword_1C1B9D838);
  return swift_endAccess();
}

uint64_t sub_1C1B6BCC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  return sub_1C1AA7E30(v1 + v3, a1, &qword_1EBF098F0, &qword_1C1B9D838);
}

uint64_t sub_1C1B6BD30(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  sub_1C1B19384(a1, v1 + v3, &qword_1EBF098F0, &qword_1C1B9D838);
  return swift_endAccess();
}

uint64_t sub_1C1B6BE00(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B6BEB0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = (result + OBJC_IVAR___APPCPromotedContent_identifier);
  v2 = result;
  swift_beginAccess();
  v4 = *v1;
  v3 = v1[1];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v6 = Strong;
  v7 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  result = swift_beginAccess();
  v8 = *(*&v6[v7] + 16);
  if (!v8)
  {
LABEL_7:
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *&v6[v7];
    if (v10 >= *(v11 + 16))
    {
      break;
    }

    ++v10;
    v12 = v11 + v9;
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);
    v15[0] = v4;
    v15[1] = v3;

    v14(v15);

    v9 += 16;
    if (v8 == v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1B6BFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B6C01C, 0, 0);
}

uint64_t sub_1C1B6C01C()
{
  v1 = v0[13];
  v0[5] = sub_1C1B94718();
  v0[6] = &protocol witness table for AppImpression;
  v2 = sub_1C1AB0D60(v0 + 2);
  v3 = *(MEMORY[0x1E6959CC8] + 4);

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1C1B6C0F0;
  v5 = v0[12];
  v6 = v0[13];

  return MEMORY[0x1EEDB2930](v2, v5, v6);
}

uint64_t sub_1C1B6C0F0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1C1B6C2D0;
  }

  else
  {
    v3 = sub_1C1B6C204;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C1B6C204()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  sub_1C1B19384((v0 + 2), v2 + v3, &qword_1EBF098F0, &qword_1C1B9D838);
  swift_endAccess();
  sub_1C1AA7E30(v2 + v3, v1, &qword_1EBF098F0, &qword_1C1B9D838);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1C1B6C2D0()
{
  sub_1C1B7B298(v0 + 2);
  v1 = v0[1];
  v2 = v0[15];

  return v1();
}

char *PromotedContent.__allocating_init(placementType:container:format:unfilledReason:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v198 = a4;
  v5 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v186 = &v172 - v7;
  v8 = sub_1C1B94588();
  v207 = *(v8 - 8);
  v208 = v8;
  v9 = *(v207 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v174 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v203 = &v172 - v12;
  v13 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v188 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v206 = &v172 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v202 = &v172 - v19;
  v20 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v172 - v22;
  v196 = &v172 - v22;
  v24 = sub_1C1B945F8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v172 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v172 - v30;
  sub_1C1B945E8();
  v32 = type metadata accessor for ContentRepresentation();
  v33 = objc_allocWithZone(v32);
  v34 = sub_1C1B945A8();
  v35 = &v33[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v35 = v34;
  v35[1] = v36;
  v200 = v25;
  (*(v25 + 16))(&v33[OBJC_IVAR___APPCContentRepresentation_id], v31, v24);
  *&v33[OBJC_IVAR___APPCContentRepresentation_adType] = a1;
  *&v33[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v33[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v33[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v37 = &v33[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v33[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v33[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v213.receiver = v33;
  v213.super_class = v32;
  v38 = objc_msgSendSuper2(&v213, sel_init);
  v205 = v38;
  v39 = *(v25 + 8);
  v191 = v24;
  v39(v31, v24);
  v197 = v39;
  sub_1C1B945E8();
  v201 = sub_1C1B945A8();
  v194 = v40;
  v39(v29, v24);
  sub_1C1B945E8();
  v41 = objc_allocWithZone(type metadata accessor for Context());
  v195 = sub_1C1B2A6F0(v31, 0, 0, 0, MEMORY[0x1E69E7CC0], 0.0, 0.0);
  v42 = sub_1C1B944A8();
  v43 = *(*(v42 - 8) + 56);
  v43(v23, 1, 1, v42);
  v44 = v208;
  v45 = *(v207 + 56);
  v45(v202, 1, 1, v208);
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v46 = swift_allocObject();
  v184 = v46;
  *(v46 + 16) = xmmword_1C1B9FE60;
  *(v46 + 32) = v38;
  v45(v206, 1, 1, v44);
  v190 = type metadata accessor for PromotedContent();
  v47 = objc_allocWithZone(v190);
  v48 = &v47[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v48 = 0;
  v48[1] = 0;
  v185 = v48;
  v176 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v177 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v47[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v178 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v43(&v47[OBJC_IVAR___APPCPromotedContent_disclosureURL], 1, 1, v42);
  v49 = &v47[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v49 = 0;
  v49[1] = 0;
  v50 = &v47[OBJC_IVAR___APPCPromotedContent_brandName];
  v179 = &v47[OBJC_IVAR___APPCPromotedContent_brandName];
  *v50 = 0;
  v50[1] = 0;
  v51 = &v47[OBJC_IVAR___APPCPromotedContent_campaignText];
  v180 = &v47[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v51 = 0;
  v51[1] = 0;
  v182 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v47[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v47[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v183 = OBJC_IVAR___APPCPromotedContent_error;
  *&v47[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v181 = OBJC_IVAR___APPCPromotedContent_startDate;
  v45(&v47[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v44);
  *&v47[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v193 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v47[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v45(&v47[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v44);
  v47[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v52 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v53 = type metadata accessor for MetricEventsTracker();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v173 = v53;
  swift_allocObject();
  v56 = sub_1C1AB0510();
  v187 = v52;
  *&v47[v52] = v56;
  *&v47[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v57 = &v47[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v57 = 0;
  v57[1] = 0;
  v58 = &v47[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v58 = 0;
  v58[8] = 1;
  v59 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v60 = *(v200 + 56);
  v200 += 56;
  v175 = v60;
  v61 = v191;
  v60(&v47[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v191);
  v62 = &v47[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v62 = 0;
  v62[8] = 1;
  *&v47[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v47[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v63 = &v47[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v63 = 0u;
  *(v63 + 1) = 0u;
  *(v63 + 4) = 0;
  v47[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  strcpy(v209, "placeholder: ");
  HIWORD(v209[1]) = -4864;
  v189 = v205;
  sub_1C1B945E8();
  v64 = sub_1C1B945A8();
  v66 = v65;
  v199 = v31;
  v192 = v25 + 8;
  v197(v31, v61);
  MEMORY[0x1C6906DF0](v64, v66);

  v67 = v209[0];
  v68 = v209[1];
  v47[OBJC_IVAR___APPCPromotedContent_placeholder] = 1;
  v69 = &v47[OBJC_IVAR___APPCPromotedContent_identifier];
  v205 = v67;
  *v69 = v67;
  v69[1] = v68;
  swift_beginAccess();
  v70 = v195;
  swift_unknownObjectWeakAssign();
  v204 = v68;

  v71 = [v70 identifier];
  v72 = v186;
  sub_1C1B945D8();

  v73 = v61;
  v175(v72, 0, 1, v61);
  swift_beginAccess();
  sub_1C1B19384(v72, &v47[v59], &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v74 = v177;
  swift_beginAccess();
  v75 = *&v47[v74];
  *&v47[v74] = 0;

  v76 = v178;
  swift_beginAccess();
  sub_1C1B7953C(v196, &v47[v76], &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v77 = v49[1];
  *v49 = 0;
  v49[1] = 0;

  *&v47[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  v78 = v179;
  swift_beginAccess();
  v79 = v78[1];
  *v78 = 0;
  v78[1] = 0;
  v80 = v70;

  v81 = v180;
  swift_beginAccess();
  v82 = v81[1];
  *v81 = 0;
  v81[1] = 0;

  v83 = v181;
  swift_beginAccess();
  sub_1C1B7953C(v202, &v47[v83], &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v207 + 16))(&v47[OBJC_IVAR___APPCPromotedContent_expirationDate], v203, v208);
  *&v47[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v198;
  *&v47[OBJC_IVAR___APPCPromotedContent_representations] = v184;
  v84 = v182;
  swift_beginAccess();
  v85 = *&v47[v84];
  *&v47[v84] = 0;

  v86 = v183;
  swift_beginAccess();
  v87 = *&v47[v86];
  *&v47[v86] = 0;

  v88 = &v47[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v88 = 0;
  v88[8] = 1;
  v89 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v90 = *&v70[v89];
  if (v90 && (v91 = (v90 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v92 = v91[1]) != 0))
  {
    v93 = sub_1C1AB08D0(*v91, v92);
  }

  else
  {
    v94 = [v70 current];
    if (v94)
    {
      v93 = [v94 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v93 = 0;
    }
  }

  v95 = v199;
  *&v47[OBJC_IVAR___APPCPromotedContent_placement] = v93;
  v96 = v193;
  swift_beginAccess();
  *&v47[v96] = 0x3FF0000000000000;
  v97 = v185;
  swift_beginAccess();
  v98 = v97[1];
  *v97 = 0;
  v97[1] = 0;

  v99 = &v47[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v100 = v194;
  *v99 = v201;
  v99[1] = v100;
  sub_1C1AA7E30(v206, &v47[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v47[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;

  v101 = [v80 identifier];
  sub_1C1B945D8();

  v102 = sub_1C1B945A8();
  v104 = v103;
  v197(v95, v73);
  v198 = objc_opt_self();
  [v198 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v105 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v106 = v95;
  v107 = type metadata accessor for PrimitiveCreator();
  v108 = objc_allocWithZone(v107);
  v109 = &v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v110 = v204;
  *v109 = v205;
  v109[1] = v110;
  v111 = &v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v200 = v102;
  *v111 = v102;
  v111[1] = v104;
  v112 = &v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v112 = v201;
  v112[1] = v100;
  v113 = &v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v113 = 0;
  v113[1] = 0;
  v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v105;
  *&v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v114 = qword_1EDE6C538;

  v199 = v104;

  swift_unknownObjectRetain();
  if (v114 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v108[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v212.receiver = v108;
  v212.super_class = v107;
  v115 = objc_msgSendSuper2(&v212, sel_init);
  swift_unknownObjectRelease();
  v186 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v47[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v115;
  v209[0] = 6911329;
  v209[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v116 = sub_1C1B945A8();
  v118 = v117;
  v197(v106, v191);
  MEMORY[0x1C6906DF0](v116, v118);

  v119 = v209[0];
  v120 = v209[1];
  [v198 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v121 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v122 = objc_allocWithZone(v107);
  v123 = &v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v124 = v204;
  *v123 = v205;
  v123[1] = v124;
  v125 = &v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v126 = v199;
  *v125 = v200;
  v125[1] = v126;
  v127 = &v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v127 = v119;
  v127[1] = v120;
  v128 = &v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v128 = 0;
  v128[1] = 0;
  v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v121;
  *&v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v122[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v211.receiver = v122;
  v211.super_class = v107;

  v129 = objc_msgSendSuper2(&v211, sel_init);
  v191 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v129;
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v130 = sub_1C1B94908();
  v131 = *(v130 + 48);
  v132 = *(v130 + 52);
  swift_allocObject();
  v133 = sub_1C1B948E8();
  v134 = v188;
  sub_1C1AA7E30(v206, v188, &qword_1EBF07F50, &qword_1C1B9A590);
  v136 = v207;
  v135 = v208;
  v137 = (*(v207 + 48))(v134, 1, v208);
  v138 = v198;
  v192 = v133;
  if (v137 == 1)
  {
    sub_1C1AA7C8C(v134, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v139 = v174;
    (*(v136 + 32))(v174, v134, v135);
    sub_1C1B948D8();
    (*(v136 + 8))(v139, v135);
  }

  type metadata accessor for MetricsUnloadTracker();
  v140 = swift_allocObject();
  v140[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v140 + 24) = 0;
  v197 = v140;
  v140[4] = 1;
  v188 = *&v47[v186];
  swift_unknownObjectRetain();
  [v138 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v141 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v142 = 0;
  v143 = 0;
  v144 = *&v47[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v144 <= 3)
  {
    v142 = qword_1C1BA4170[v144];
    v143 = qword_1C1BA4190[v144];
  }

  v186 = v142;
  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v145 = v204;

  v146 = v199;

  v147 = v192;

  v148 = v197;

  v149 = sub_1C1AB0E7C(v205, v145, v200, v146, v201, v194, v147, v148, v188, v141, v186, v143, 0, 0, 0, 0, 0, 1);
  *&v47[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v149;
  [v149 setImpressionThresholdDuration_];
  v150 = *&v47[v191];
  swift_unknownObjectRetain();
  [v198 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v151 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v152 = v187;
  swift_beginAccess();
  if (*&v47[v152])
  {
    v153 = *&v47[v152];
  }

  else
  {
    v154 = *(v173 + 48);
    v155 = *(v173 + 52);
    swift_allocObject();
    v153 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v200, v199, v205, v204, v150, v151, v153);
  v47[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v210.receiver = v47;
  v210.super_class = v190;
  v156 = objc_msgSendSuper2(&v210, sel_init);
  v157 = sub_1C1AB17D0(v147, v197);
  v158 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v159 = *&v156[v158];
  *&v156[v158] = v157;
  swift_unknownObjectRelease();
  v160 = *&v156[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v160 setNetworkType_];
  swift_unknownObjectRelease();
  v161 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v156[v161] setPromotedContent_];
  v162 = *&v156[v161];
  v163 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v209[4] = sub_1C1B795A4;
  v209[5] = v163;
  v209[0] = MEMORY[0x1E69E9820];
  v209[1] = 1107296256;
  v209[2] = sub_1C1B196F0;
  v209[3] = &unk_1F4153C10;
  v164 = _Block_copy(v209);

  v165 = [v162 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v164);
  v166 = sub_1C1B94D88();
  v168 = v167;

  v169 = &v156[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  v170 = *&v156[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID + 8];
  *v169 = v166;
  v169[1] = v168;

  sub_1C1AA7C8C(v206, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v207 + 8))(v203, v208);
  sub_1C1AA7C8C(v202, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v196, &qword_1EBF07AC8, &qword_1C1B9CED0);
  return v156;
}

char *PromotedContent.__allocating_init(identifier:placementType:container:size:context:unfilledReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7, double a8)
{
  swift_getObjectType();

  return sub_1C1B76358(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *PromotedContent.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v175 = a2;
  v170 = a1;
  v169 = sub_1C1B945F8();
  v174 = *(v169 - 1);
  v2 = v174[8];
  MEMORY[0x1EEE9AC00](v169);
  v163 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v162 = &v149 - v6;
  v7 = sub_1C1B94588();
  v172 = *(v7 - 8);
  v8 = v172;
  v9 = *(v172 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v151 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v167 = &v149 - v12;
  v13 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v159 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v149 - v18;
  v171 = &v149 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v149 - v20;
  v166 = &v149 - v20;
  v22 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v149 - v24;
  v165 = &v149 - v24;
  v26 = sub_1C1B944A8();
  v27 = *(*(v26 - 8) + 56);
  v27(v25, 1, 1, v26);
  v28 = *(v8 + 56);
  v28(v21, 1, 1, v7);
  sub_1C1B94518();
  v29 = v19;
  v30 = v7;
  v28(v29, 1, 1, v7);
  v161 = type metadata accessor for PromotedContent();
  v31 = objc_allocWithZone(v161);
  v32 = &v31[OBJC_IVAR___APPCPromotedContent_impressionId];
  v168 = &v31[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v32 = 0;
  v32[1] = 0;
  v152 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v153 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v31[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v154 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v27(&v31[OBJC_IVAR___APPCPromotedContent_disclosureURL], 1, 1, v26);
  v33 = &v31[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v31[OBJC_IVAR___APPCPromotedContent_brandName];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v31[OBJC_IVAR___APPCPromotedContent_campaignText];
  v155 = &v31[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v35 = 0;
  v35[1] = 0;
  v157 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v31[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v31[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v158 = OBJC_IVAR___APPCPromotedContent_error;
  *&v31[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v156 = OBJC_IVAR___APPCPromotedContent_startDate;
  v173 = v30;
  v28(&v31[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v30);
  *&v31[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v31[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v31[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v31[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v31[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v164 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v31[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v28(&v31[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v30);
  v31[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v36 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v37 = type metadata accessor for MetricEventsTracker();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v150 = v37;
  swift_allocObject();
  v40 = sub_1C1AB0510();
  v160 = v36;
  *&v31[v36] = v40;
  *&v31[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v41 = &v31[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v41 = 0;
  v41[1] = 0;
  v42 = &v31[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v42 = 0;
  v42[8] = 1;
  v43 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v44 = v174[7];
  v45 = v169;
  v44(&v31[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v169);
  v46 = &v31[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v46 = 0;
  v46[8] = 1;
  *&v31[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v31[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v47 = &v31[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v47 = 0u;
  *(v47 + 1) = 0u;
  *(v47 + 4) = 0;
  v31[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  v31[OBJC_IVAR___APPCPromotedContent_placeholder] = 0;
  v48 = &v31[OBJC_IVAR___APPCPromotedContent_identifier];
  v49 = v175;
  *v48 = v170;
  v48[1] = v49;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v50 = v162;
  v44(v162, 1, 1, v45);
  swift_beginAccess();

  sub_1C1B19384(v50, &v31[v43], &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v51 = v153;
  swift_beginAccess();
  v52 = *&v31[v51];
  *&v31[v51] = 0;

  v53 = v154;
  swift_beginAccess();
  sub_1C1B7953C(v165, &v31[v53], &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v54 = v33[1];
  *v33 = 0;
  v33[1] = 0;

  *&v31[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  swift_beginAccess();
  v55 = v34[1];
  *v34 = 0;
  v34[1] = 0;

  v56 = v155;
  swift_beginAccess();
  v57 = v56[1];
  *v56 = 0;
  v56[1] = 0;

  v58 = v156;
  swift_beginAccess();
  sub_1C1B7953C(v166, v58 + v31, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v172 + 16))(&v31[OBJC_IVAR___APPCPromotedContent_expirationDate], v167, v173);
  *&v31[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = 200;
  *&v31[OBJC_IVAR___APPCPromotedContent_representations] = MEMORY[0x1E69E7CC0];
  v59 = v157;
  swift_beginAccess();
  v60 = *&v31[v59];
  *&v31[v59] = 0;

  v61 = v158;
  swift_beginAccess();
  v62 = *&v31[v61];
  *&v31[v61] = 0;

  v63 = &v31[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v63 = 0;
  v63[8] = 1;
  v157 = OBJC_IVAR___APPCPromotedContent_placement;
  *&v31[OBJC_IVAR___APPCPromotedContent_placement] = 0;
  v64 = v164;
  swift_beginAccess();
  *&v31[v64] = 0x3FF0000000000000;
  v65 = v163;
  sub_1C1B945E8();
  v66 = sub_1C1B945A8();
  v162 = v66;
  v68 = v67;
  v69 = v174 + 1;
  v70 = v174[1];
  v71 = v169;
  v70(v65, v169);
  v72 = v168;
  swift_beginAccess();
  v73 = v72[1];
  *v72 = 0;
  v72[1] = 0;

  v74 = &v31[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  *v74 = v66;
  v74[1] = v68;
  sub_1C1AA7E30(v171, &v31[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v31[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;
  v176[0] = 0;
  v176[1] = 0xE000000000000000;

  sub_1C1B95468();

  strcpy(v176, "missingContext");
  HIBYTE(v176[1]) = -18;
  sub_1C1B945E8();
  v75 = sub_1C1B945A8();
  v77 = v76;
  v174 = v69;
  v156 = v70;
  v70(v65, v71);
  MEMORY[0x1C6906DF0](v75, v77);
  v78 = v170;

  v79 = v176[0];
  v80 = v176[1];
  v81 = objc_opt_self();
  [v81 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v82 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v83 = type metadata accessor for PrimitiveCreator();
  v84 = objc_allocWithZone(v83);
  v85 = &v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v86 = v175;
  *v85 = v78;
  v85[1] = v86;
  v87 = &v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v168 = v79;
  *v87 = v79;
  v87[1] = v80;
  v88 = &v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v88 = v162;
  v88[1] = v68;
  v89 = &v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v89 = 0;
  v89[1] = 0;
  v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v82;
  *&v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v90 = qword_1EDE6C538;

  v158 = v68;

  swift_unknownObjectRetain();
  if (v90 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v84[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v179.receiver = v84;
  v179.super_class = v83;
  v91 = objc_msgSendSuper2(&v179, sel_init);
  swift_unknownObjectRelease();
  v154 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v31[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v91;
  v176[0] = 6911329;
  v176[1] = 0xE300000000000000;
  v92 = v163;
  sub_1C1B945E8();
  v93 = sub_1C1B945A8();
  v95 = v94;
  v156(v92, v169);
  MEMORY[0x1C6906DF0](v93, v95);

  v96 = v176[0];
  v97 = v176[1];
  v169 = v81;
  [v81 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v98 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v99 = objc_allocWithZone(v83);
  v100 = &v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v101 = v175;
  *v100 = v78;
  v100[1] = v101;
  v102 = &v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  *v102 = v168;
  v102[1] = v80;
  v103 = &v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v103 = v96;
  v103[1] = v97;
  v104 = &v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v104 = 0;
  v104[1] = 0;
  v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v98;
  *&v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v99[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v178.receiver = v99;
  v178.super_class = v83;

  v174 = v80;

  v105 = objc_msgSendSuper2(&v178, sel_init);
  v155 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v31[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v105;
  *&v31[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v106 = sub_1C1B94908();
  v107 = *(v106 + 48);
  v108 = *(v106 + 52);
  swift_allocObject();
  v109 = sub_1C1B948E8();
  v110 = v159;
  sub_1C1AA7E30(v171, v159, &qword_1EBF07F50, &qword_1C1B9A590);
  v112 = v172;
  v111 = v173;
  v113 = (*(v172 + 48))(v110, 1, v173);
  v156 = v109;
  if (v113 == 1)
  {
    sub_1C1AA7C8C(v110, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v114 = v151;
    (*(v112 + 32))(v151, v110, v111);
    sub_1C1B948D8();
    (*(v112 + 8))(v114, v111);
  }

  type metadata accessor for MetricsUnloadTracker();
  v115 = swift_allocObject();
  *(v115 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v115 + 24) = 0;
  v163 = v115;
  *(v115 + 32) = 1;
  v159 = *&v31[v154];
  swift_unknownObjectRetain();
  [v169 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v116 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v117 = 0;
  v118 = 0;
  v119 = *&v31[v157] - 7005;
  if (v119 <= 3)
  {
    v117 = qword_1C1BA4170[v119];
    v118 = qword_1C1BA4190[v119];
  }

  v157 = v117;
  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v120 = v175;

  v121 = v174;

  v122 = v156;

  v123 = v163;

  v124 = v120;
  v125 = v170;
  v126 = sub_1C1AB0E7C(v170, v124, v168, v121, v162, v158, v122, v123, v159, v116, v157, v118, 0, 0, 0, 0, 0, 1);
  *&v31[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v126;
  [v126 setImpressionThresholdDuration_];
  v127 = *&v31[v155];
  swift_unknownObjectRetain();
  [v169 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v128 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v129 = v160;
  swift_beginAccess();
  if (*&v31[v129])
  {
    v130 = *&v31[v129];
  }

  else
  {
    v131 = *(v150 + 48);
    v132 = *(v150 + 52);
    swift_allocObject();
    v130 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v31[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v168, v174, v125, v175, v127, v128, v130);
  v31[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v31[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v177.receiver = v31;
  v177.super_class = v161;
  v133 = objc_msgSendSuper2(&v177, sel_init);
  v134 = sub_1C1AB17D0(v122, v163);
  v135 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v136 = *&v133[v135];
  *&v133[v135] = v134;
  swift_unknownObjectRelease();
  v137 = *&v133[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v137 setNetworkType_];
  swift_unknownObjectRelease();
  v138 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v133[v138] setPromotedContent_];
  v139 = *&v133[v138];
  v140 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v176[4] = sub_1C1B7B4D4;
  v176[5] = v140;
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 1107296256;
  v176[2] = sub_1C1B196F0;
  v176[3] = &unk_1F4153C38;
  v141 = _Block_copy(v176);

  v142 = [v139 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v141);
  v143 = sub_1C1B94D88();
  v145 = v144;

  v146 = &v133[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  v147 = *&v133[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID + 8];
  *v146 = v143;
  v146[1] = v145;

  sub_1C1AA7C8C(v171, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v172 + 8))(v167, v173);
  sub_1C1AA7C8C(v166, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v165, &qword_1EBF07AC8, &qword_1C1B9CED0);
  return v133;
}

id PromotedContent.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v3 = sub_1C1B95298();
  v4 = &unk_1EBF09000;
  if (os_log_type_enabled(v3, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136380931;
    v7 = &v0[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v9 = *v7;
    v8 = v7[1];

    v10 = sub_1C1AC7650(v9, v8, v27);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
    swift_beginAccess();
    v12 = [*&v0[v11] journeyIdentifier];
    v13 = sub_1C1B94D88();
    v15 = v14;

    v16 = sub_1C1AC7650(v13, v15, v27);

    *(v5 + 14) = v16;
    _os_log_impl(&dword_1C1AA2000, v3, v2, "PromotedContent is being deallocated PC Identifier: %{private}s Journey ID %s", v5, 0x16u);
    swift_arrayDestroy();
    v17 = v6;
    v4 = &unk_1EBF09000;
    MEMORY[0x1C6908230](v17, -1, -1);
    MEMORY[0x1C6908230](v5, -1, -1);
  }

  sub_1C1B95138();
  v18 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C1B98E60;
  v20 = v4[277];
  swift_beginAccess();
  v21 = [*&v1[v20] debugging];
  v22 = sub_1C1B94D88();
  v24 = v23;

  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1C1AA5E7C();
  *(v19 + 32) = v22;
  *(v19 + 40) = v24;
  sub_1C1B94BA8();

  v26.receiver = v1;
  v26.super_class = type metadata accessor for PromotedContent();
  return objc_msgSendSuper2(&v26, sel_dealloc);
}

char *static PromotedContent.makePCError(placementType:container:size:context:unfilledReason:diagnosticCode:)(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v195 = a7;
  v199 = a6;
  v190 = a5;
  v212 = a1;
  v9 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v191 = &v178 - v11;
  v12 = sub_1C1B94588();
  v213 = *(v12 - 8);
  v214 = v12;
  v13 = *(v213 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v180 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v211 = &v178 - v16;
  v17 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v194 = &v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v178 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v210 = &v178 - v24;
  v25 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v178 - v27;
  v202 = &v178 - v27;
  v29 = sub_1C1B945F8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v178 - v35;
  sub_1C1B945E8();
  v37 = type metadata accessor for ContentRepresentation();
  v38 = objc_allocWithZone(v37);
  v39 = sub_1C1B945A8();
  v40 = &v38[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v40 = v39;
  v40[1] = v41;
  v205 = v30;
  (*(v30 + 16))(&v38[OBJC_IVAR___APPCContentRepresentation_id], v36, v29);
  *&v38[OBJC_IVAR___APPCContentRepresentation_adType] = v212;
  *&v38[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v38[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v38[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v42 = &v38[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v42 = a2;
  v42[1] = a3;
  *&v38[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v38[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v219.receiver = v38;
  v219.super_class = v37;
  v43 = objc_msgSendSuper2(&v219, sel_init);
  v44 = *(v30 + 8);
  v198 = v29;
  v44(v36, v29);
  v203 = v30 + 8;
  v206 = v44;
  sub_1C1B945E8();
  v208 = sub_1C1B945A8();
  v201 = v45;
  v44(v34, v29);
  v46 = sub_1C1B944A8();
  v47 = *(*(v46 - 8) + 56);
  v47(v28, 1, 1, v46);
  v48 = v214;
  v49 = *(v213 + 56);
  v49(v210, 1, 1, v214);
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v50 = swift_allocObject();
  v189 = v50;
  *(v50 + 16) = xmmword_1C1B9FE60;
  *(v50 + 32) = v43;
  v209 = v23;
  v49(v23, 1, 1, v48);
  v197 = type metadata accessor for PromotedContent();
  v51 = objc_allocWithZone(v197);
  v52 = (v51 + OBJC_IVAR___APPCPromotedContent_impressionId);
  *v52 = 0;
  *(v52 + 1) = 0;
  v192 = v52;
  v181 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v182 = OBJC_IVAR___APPCPromotedContent_metaData;
  *(v51 + OBJC_IVAR___APPCPromotedContent_metaData) = 0;
  v183 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v47(v51 + OBJC_IVAR___APPCPromotedContent_disclosureURL, 1, 1, v46);
  v53 = v51 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  *v53 = 0;
  v53[1] = 0;
  v54 = v51 + OBJC_IVAR___APPCPromotedContent_brandName;
  v184 = v51 + OBJC_IVAR___APPCPromotedContent_brandName;
  *v54 = 0;
  v54[1] = 0;
  v55 = v51 + OBJC_IVAR___APPCPromotedContent_campaignText;
  v185 = v51 + OBJC_IVAR___APPCPromotedContent_campaignText;
  *v55 = 0;
  v55[1] = 0;
  v187 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *(v51 + OBJC_IVAR___APPCPromotedContent_installAttribution) = 0;
  *(v51 + OBJC_IVAR___APPCPromotedContent_bestRepresentation) = 0;
  v188 = OBJC_IVAR___APPCPromotedContent_error;
  *(v51 + OBJC_IVAR___APPCPromotedContent_error) = 0;
  v186 = OBJC_IVAR___APPCPromotedContent_startDate;
  v49(v51 + OBJC_IVAR___APPCPromotedContent_startDate, 1, 1, v48);
  *(v51 + OBJC_IVAR___APPCPromotedContent_mediaMetricHelper) = 0;
  *(v51 + OBJC_IVAR___APPCPromotedContent_attachedToView) = 0;
  *(v51 + OBJC_IVAR___APPCPromotedContent_vended) = 0;
  *(v51 + OBJC_IVAR___APPCPromotedContent_discarded) = 0;
  *(v51 + OBJC_IVAR___APPCPromotedContent_consumed) = 0;
  v200 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *(v51 + OBJC_IVAR___APPCPromotedContent_impressionThreshold) = 0x3FF0000000000000;
  v49(v51 + OBJC_IVAR___APPCPromotedContent_videoRequestStartDate, 1, 1, v48);
  *(v51 + OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy) = 0;
  v56 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v57 = type metadata accessor for MetricEventsTracker();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  v179 = v57;
  swift_allocObject();
  v60 = sub_1C1AB0510();
  v193 = v56;
  *(v51 + v56) = v60;
  *(v51 + OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v61 = v51 + OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID;
  *v61 = 0;
  v61[1] = 0;
  v62 = v51 + OBJC_IVAR___APPCPromotedContent_overriddenAdType;
  *v62 = 0;
  v62[8] = 1;
  v63 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v64 = *(v205 + 56);
  v205 += 56;
  v65 = v198;
  v64(v51 + OBJC_IVAR___APPCPromotedContent__contextIdentifier, 1, 1, v198);
  v66 = v51 + OBJC_IVAR___APPCPromotedContent_discardReason;
  *v66 = 0;
  v66[8] = 1;
  *(v51 + OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete) = MEMORY[0x1E69E7CC0];
  *(v51 + OBJC_IVAR___APPCPromotedContent_appImpressionTask) = 0;
  v67 = v51 + OBJC_IVAR___APPCPromotedContent_appImpression;
  *v67 = 0u;
  *(v67 + 1) = 0u;
  *(v67 + 4) = 0;
  *(v51 + OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView) = 0;
  strcpy(v215, "placeholder: ");
  HIWORD(v215[1]) = -4864;
  v196 = v43;
  sub_1C1B945E8();
  v68 = sub_1C1B945A8();
  v70 = v69;
  v204 = v36;
  v206(v36, v65);
  v71 = v68;
  v72 = v190;
  MEMORY[0x1C6906DF0](v71, v70);

  v73 = v215[0];
  v74 = v215[1];
  *(v51 + OBJC_IVAR___APPCPromotedContent_placeholder) = 1;
  v75 = (v51 + OBJC_IVAR___APPCPromotedContent_identifier);
  v207 = v73;
  *v75 = v73;
  v75[1] = v74;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v212 = v74;

  v76 = [v72 identifier];
  v77 = v191;
  sub_1C1B945D8();

  v64(v77, 0, 1, v65);
  swift_beginAccess();
  sub_1C1B19384(v77, v51 + v63, &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v78 = v182;
  swift_beginAccess();
  v79 = *(v51 + v78);
  *(v51 + v78) = 0;

  v80 = v183;
  swift_beginAccess();
  sub_1C1B7953C(v202, v51 + v80, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v81 = v53[1];
  *v53 = 0;
  v53[1] = 0;

  *(v51 + OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation) = 0;
  v82 = v184;
  swift_beginAccess();
  v83 = v82[1];
  *v82 = 0;
  v82[1] = 0;

  v84 = v185;
  swift_beginAccess();
  v85 = v84[1];
  *v84 = 0;
  v84[1] = 0;

  v86 = v186;
  swift_beginAccess();
  sub_1C1B7953C(v210, v51 + v86, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v213 + 16))(v51 + OBJC_IVAR___APPCPromotedContent_expirationDate, v211, v214);
  *(v51 + OBJC_IVAR___APPCPromotedContent_serverUnfilledReason) = v199;
  *(v51 + OBJC_IVAR___APPCPromotedContent_representations) = v189;
  v87 = v187;
  swift_beginAccess();
  v88 = *(v51 + v87);
  *(v51 + v87) = 0;

  v89 = v188;
  swift_beginAccess();
  v90 = *(v51 + v89);
  *(v51 + v89) = 0;

  v91 = v51 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp;
  *v91 = 0;
  v91[8] = 1;
  type metadata accessor for Context();
  v92 = swift_dynamicCastClass();
  if (v92 && (v93 = OBJC_IVAR___APPCContext_newsContext, v94 = v92, swift_beginAccess(), (v95 = *(v94 + v93)) != 0) && (v96 = (v95 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v97 = v96[1]) != 0))
  {
    v98 = sub_1C1AB08D0(*v96, v97);
  }

  else
  {
    v99 = [v72 current];
    if (v99)
    {
      v98 = [v99 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0;
    }
  }

  v100 = v65;
  v101 = v204;
  *(v51 + OBJC_IVAR___APPCPromotedContent_placement) = v98;
  v102 = v200;
  swift_beginAccess();
  *(v51 + v102) = 0x3FF0000000000000;
  v103 = v192;
  swift_beginAccess();
  v104 = *(v103 + 1);
  *v103 = 0;
  *(v103 + 1) = 0;

  v105 = v51 + OBJC_IVAR___APPCPromotedContent_journeyIdentifier;
  v106 = v209;
  v107 = v201;
  *v105 = v208;
  v105[1] = v107;
  sub_1C1AA7E30(v106, v51 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, &qword_1EBF07F50, &qword_1C1B9A590);
  *(v51 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments) = 0;

  v108 = [v72 identifier];
  sub_1C1B945D8();

  v109 = sub_1C1B945A8();
  v111 = v110;
  v206(v101, v100);
  v204 = objc_opt_self();
  [v204 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v112 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v192 = type metadata accessor for PrimitiveCreator();
  v113 = objc_allocWithZone(v192);
  v114 = &v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v116 = v207;
  v115 = v208;
  v117 = v212;
  *v114 = v207;
  v114[1] = v117;
  v118 = &v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v199 = v109;
  *v118 = v109;
  v118[1] = v111;
  v119 = &v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v119 = v115;
  v119[1] = v107;
  v120 = &v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v120 = 0;
  v120[1] = 0;
  v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v112;
  *&v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v121 = qword_1EDE6C538;

  v205 = v111;

  swift_unknownObjectRetain();
  if (v121 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v113[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v122 = v192;
  v218.receiver = v113;
  v218.super_class = v192;
  v123 = objc_msgSendSuper2(&v218, sel_init);
  swift_unknownObjectRelease();
  v191 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *(v51 + OBJC_IVAR___APPCPromotedContent_primitiveCreator) = v123;
  v215[0] = 6911329;
  v215[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v124 = sub_1C1B945A8();
  v126 = v125;
  v206(v101, v198);
  MEMORY[0x1C6906DF0](v124, v126);

  v127 = v215[0];
  v128 = v215[1];
  [v204 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v129 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v130 = objc_allocWithZone(v122);
  v131 = &v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  *v131 = v116;
  v131[1] = v212;
  v132 = &v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v133 = v205;
  *v132 = v199;
  v132[1] = v133;
  v134 = &v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v134 = v127;
  v134[1] = v128;
  v135 = &v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v135 = 0;
  v135[1] = 0;
  v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v129;
  *&v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v130[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v217.receiver = v130;
  v217.super_class = v122;

  v136 = objc_msgSendSuper2(&v217, sel_init);
  v203 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *(v51 + OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator) = v136;
  *(v51 + OBJC_IVAR___APPCPromotedContent_diagnosticCode) = v195;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  v137 = sub_1C1B94908();
  v138 = *(v137 + 48);
  v139 = *(v137 + 52);
  swift_allocObject();
  v140 = sub_1C1B948E8();
  v141 = v194;
  sub_1C1AA7E30(v209, v194, &qword_1EBF07F50, &qword_1C1B9A590);
  v143 = v213;
  v142 = v214;
  if ((*(v213 + 48))(v141, 1, v214) == 1)
  {
    sub_1C1AA7C8C(v141, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v144 = v180;
    (*(v143 + 32))(v180, v141, v142);
    sub_1C1B948D8();
    (*(v143 + 8))(v144, v142);
  }

  type metadata accessor for MetricsUnloadTracker();
  v145 = swift_allocObject();
  v145[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v145 + 24) = 0;
  v206 = v145;
  v145[4] = 1;
  v198 = *&v191[v51];
  swift_unknownObjectRetain();
  [v204 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v146 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v147 = 0;
  v148 = 0;
  v149 = *(v51 + OBJC_IVAR___APPCPromotedContent_placement) - 7005;
  if (v149 <= 3)
  {
    v147 = qword_1C1BA4170[v149];
    v148 = qword_1C1BA4190[v149];
  }

  v195 = v147;
  type metadata accessor for JourneyMetricsHelper();
  swift_getObjectType();
  v150 = v212;

  v151 = v205;

  v152 = v206;

  v153 = v150;
  v154 = v199;
  v155 = sub_1C1AB0E7C(v207, v153, v199, v151, v208, v201, v140, v152, v198, v146, v195, v148, 0, 0, 0, 0, 0, 1);
  *(v51 + OBJC_IVAR___APPCPromotedContent_metricsHelper) = v155;
  [v155 setImpressionThresholdDuration_];
  v156 = *(v51 + v203);
  swift_unknownObjectRetain();
  [v204 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v157 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v158 = v193;
  swift_beginAccess();
  if (*(v51 + v158))
  {
    v159 = *(v51 + v158);
  }

  else
  {
    v160 = *(v179 + 48);
    v161 = *(v179 + 52);
    swift_allocObject();
    v159 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(v51 + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper) = sub_1C1AB1708(v154, v205, v207, v212, v156, v157, v159);
  *(v51 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd) = 0;
  *(v51 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd) = 0;
  v216.receiver = v51;
  v216.super_class = v197;
  v162 = objc_msgSendSuper2(&v216, sel_init);
  v163 = sub_1C1AB17D0(v140, v206);
  v164 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  v165 = *&v162[v164];
  *&v162[v164] = v163;
  swift_unknownObjectRelease();
  v166 = *&v162[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v166 setNetworkType_];
  swift_unknownObjectRelease();
  v167 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v162[v167] setPromotedContent_];
  v168 = *&v162[v167];
  v169 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v215[4] = sub_1C1B7B4D4;
  v215[5] = v169;
  v215[0] = MEMORY[0x1E69E9820];
  v215[1] = 1107296256;
  v215[2] = sub_1C1B196F0;
  v215[3] = &unk_1F4153C60;
  v170 = _Block_copy(v215);

  v171 = [v168 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v170);
  v172 = sub_1C1B94D88();
  v174 = v173;

  v175 = &v162[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  v176 = *&v162[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID + 8];
  *v175 = v172;
  v175[1] = v174;

  sub_1C1AA7C8C(v209, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v213 + 8))(v211, v214);
  sub_1C1AA7C8C(v210, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v202, &qword_1EBF07AC8, &qword_1C1B9CED0);
  return v162;
}