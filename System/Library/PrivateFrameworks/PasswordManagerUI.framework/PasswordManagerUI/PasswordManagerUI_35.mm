uint64_t sub_21CAC35C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21CAB6DCC();
  v6 = *a2;
  v7 = *(v6 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v7)
  {

    sub_21CB81DC4();
    v8 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
    if (v8)
    {
      v9 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
      v8(v6, 1);
    }
  }

  else
  {

    sub_21CB81DC4();
    v10 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
    if (v10)
    {
      v11 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
      v10(0, 255);
    }
  }

  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 0;
  return sub_21C6EC92C();
}

uint64_t sub_21CAC3700(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2[18] = v1;
  v2[19] = v3;
  sub_21CB858B4();
  v2[20] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v2[21] = v5;
  v2[22] = v4;

  return MEMORY[0x2822009F8](sub_21CAC379C, v5, v4);
}

uint64_t sub_21CAC379C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = [v2 issueTypes];
  v4 = [objc_allocWithZone(MEMORY[0x277D49AC0]) initWithIssueTypes_];
  v0[23] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v0[24] = v5;
  v6 = v5;
  v7 = [v2 savedAccount];
  v0[25] = v7;
  v0[2] = v0;
  v0[3] = sub_21CAC3930;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_73;
  v0[14] = v8;
  [v6 saveHideMarker:v4 forSavedAccount:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CAC3930()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAC3A38, v2, v1);
}

uint64_t sub_21CAC3A38()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

void sub_21CAC3AB4()
{
  *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_21C6ECBD4;
  v4[3] = &block_descriptor_67;
  v2 = _Block_copy(v4);
  v3 = v1;

  [v3 resetHiddenSecurityRecommendationsWithCompletionHandler_];
  _Block_release(v2);
}

uint64_t sub_21CAC3B9C(uint64_t a1)
{
  v2 = sub_21CB853D4();
  v14 = *(v2 - 8);
  v3 = *(v14 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85404();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v10 = sub_21CB85CF4();
  aBlock[4] = sub_21CAC83DC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_70_0;
  v11 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v9, v5, v11);
  _Block_release(v11);

  (*(v14 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v13);
}

uint64_t sub_21CAC3E68()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  [*(v0 + v1) acknowledgeHighPriorityWarnings];
  v2 = *(v0 + 16);
  [*(v0 + v1) hasUnacknowledgedHighPriorityWarnings];
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

id sub_21CAC3F18(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v28 - v14);
  v16 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21CACA770(a1 + v16, v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v15, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  v18 = *v15;
  sub_21CACA770(a1 + v16, v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719840(v12, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v19 = *v12;
    v20 = [*v12 credentialTypes];

    if (v20 == 4 && ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) == 0)
    {

      return 0;
    }
  }

  v21 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  sub_21C6EDBAC(a2, v8, &unk_27CDF20B0, &unk_21CBA0090);
  v22 = sub_21CB85C44();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v8, 1, v22);
  v25 = v21;
  if (v24 == 1)
  {
    sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
    v26 = 0;
  }

  else
  {
    sub_21CB85B64();
    (*(v23 + 8))(v8, v22);
    v26 = sub_21CB85584();
  }

  v27 = [v25 _canMoveSavedAccount_toGroupWithID_];

  return v27;
}

uint64_t sub_21CAC4230(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 176) = a2;
  *(v4 + 184) = v3;
  *(v4 + 329) = a3;
  *(v4 + 168) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500) - 8) + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v6 = *(*(type metadata accessor for PMAccount.SIWAUniqueID(0) - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v7 = *(*(type metadata accessor for PMAccount.CombinedUniqueID(0) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v8 = type metadata accessor for PMAccount.UniqueID(0);
  *(v4 + 216) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v10 = type metadata accessor for PMAccount(0);
  *(v4 + 232) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v13 = type metadata accessor for PMAccount.Storage(0);
  *(v4 + 256) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  sub_21CB858B4();
  *(v4 + 280) = sub_21CB858A4();
  v16 = sub_21CB85874();
  *(v4 + 288) = v16;
  *(v4 + 296) = v15;

  return MEMORY[0x2822009F8](sub_21CAC4434, v16, v15);
}

uint64_t sub_21CAC4434()
{
  v1 = v0[32];
  sub_21CACA770(v0[21] + *(v0[29] + 24), v0[34], type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[34];
    v2 = v0[35];

    sub_21C719840(v3, type metadata accessor for PMAccount.Storage);
    sub_21CAC9DC0();
    swift_allocError();
    swift_willThrow();
    v5 = v0[33];
    v4 = v0[34];
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[28];
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[24];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[31];
    v15 = v0[22];
    v16 = v0[23];
    v17 = *v0[34];
    v0[38] = v17;
    v18 = *(v16 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
    v0[39] = v18;
    sub_21C6EDBAC(v15, v14, &unk_27CDF20B0, &unk_21CBA0090);
    v19 = sub_21CB85C44();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 48))(v14, 1, v19);
    v22 = v18;
    v23 = v0[31];
    if (v21 == 1)
    {
      sub_21C6EA794(v0[31], &unk_27CDF20B0, &unk_21CBA0090);
      v24 = 0;
    }

    else
    {
      sub_21CB85B64();
      (*(v20 + 8))(v23, v19);
      v24 = sub_21CB85584();
    }

    v0[40] = v24;
    v0[2] = v0;
    v0[7] = v0 + 41;
    v0[3] = sub_21CAC4794;
    v25 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3310, &unk_21CBA9AB0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21C7A1808;
    v0[13] = &block_descriptor_57;
    v0[14] = v25;
    [v22 _moveSavedAccount_toGroupWithID_completionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_21CAC4794()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAC489C, v2, v1);
}

uint64_t sub_21CAC489C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 280);

  v4 = *(v0 + 328);

  if (v4 == 1)
  {
    v5 = *(v0 + 304);
    if (*(v0 + 329) == 1)
    {
      v6 = *(v0 + 256);
      v7 = *(v0 + 264);
      v9 = *(v0 + 232);
      v8 = *(v0 + 240);
      v11 = *(v0 + 216);
      v10 = *(v0 + 224);
      *v7 = v5;
      swift_storeEnumTagMultiPayload();
      v12 = (v8 + v9[7]);
      *v12 = 0u;
      v12[1] = 0u;
      sub_21CACA770(v7, v8 + v9[6], type metadata accessor for PMAccount.Storage);
      v13 = v9[5];
      v14 = v5;
      sub_21C7C8A3C(v8 + v13);
      sub_21CACA770(v8 + v13, v10, type metadata accessor for PMAccount.UniqueID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = *(v0 + 304);
      v17 = *(v0 + 224);
      if (EnumCaseMultiPayload == 1)
      {
        v18 = *(v0 + 200);
        sub_21CAC9E84(v17, v18, type metadata accessor for PMAccount.SIWAUniqueID);
        v19 = sub_21C7CE99C();
        v21 = v20;

        v22 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v18 = *(v0 + 208);
        sub_21CAC9E84(v17, v18, type metadata accessor for PMAccount.CombinedUniqueID);
        v19 = sub_21C7CE408();
        v21 = v33;

        v22 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719840(v18, v22);
      v34 = *(v0 + 240);
      v36 = *(v0 + 184);
      v35 = *(v0 + 192);
      v37 = *(v0 + 168);
      sub_21C719840(*(v0 + 264), type metadata accessor for PMAccount.Storage);
      *v34 = v19;
      v34[1] = v21;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
      v39 = *(v38 + 48);
      sub_21CACA770(v37, v35, type metadata accessor for PMAccount);
      sub_21CAC9E84(v34, v35 + v39, type metadata accessor for PMAccount);
      (*(*(v38 - 8) + 56))(v35, 0, 1, v38);
      v40 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
      swift_beginAccess();
      sub_21CAC9E14(v35, v36 + v40);
      swift_endAccess();
    }

    else
    {
    }

    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    v44 = *(v0 + 240);
    v43 = *(v0 + 248);
    v45 = *(v0 + 224);
    v47 = *(v0 + 200);
    v46 = *(v0 + 208);
    v48 = *(v0 + 192);

    v32 = *(v0 + 8);
  }

  else
  {
    v23 = *(v0 + 304);
    sub_21CAC9DC0();
    swift_allocError();
    swift_willThrow();

    v25 = *(v0 + 264);
    v24 = *(v0 + 272);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v28 = *(v0 + 224);
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    v31 = *(v0 + 192);

    v32 = *(v0 + 8);
  }

  return v32();
}

uint64_t sub_21CAC4C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v15 = &v29 - v14;
  sub_21C6EDBAC(a2, &v29 - v14, &qword_27CDF7670, &unk_21CBAA8F0);
  v16 = *(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_21C716934(v15, v17 + ((v16 + 32) & ~v16), &qword_27CDF7670, &unk_21CBAA8F0);
  v18 = type metadata accessor for PMBulkOperationProgress();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();

  sub_21C71DD5C(a3);
  v21 = sub_21C94C1A0(1, a1, sub_21CAC9BE0, v17);
  v22 = sub_21CB858E4();
  v23 = v31;
  (*(*(v22 - 8) + 56))(v31, 1, 1, v22);
  sub_21C6EDBAC(v30, v15, &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21CB858B4();

  v24 = v32;

  v25 = sub_21CB858A4();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v24;
  v26[5] = v21;
  v26[6] = a1;
  sub_21C716934(v15, v26 + ((v16 + 56) & ~v16), &qword_27CDF7670, &unk_21CBAA8F0);
  sub_21C98B308(0, 0, v23, &unk_21CBC5608, v26);

  return v21;
}

void sub_21CAC4F30(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = ~a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v19 - v12;
  if (v9 && (a2 & 1) == 0)
  {
    if (a3)
    {
      sub_21C6EDBAC(a5, &v19 - v12, &qword_27CDF7670, &unk_21CBAA8F0);
      v15 = type metadata accessor for PMSharingGroup();
      if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
      {
        j__swift_bridgeObjectRetain(a1, 0);
        sub_21C6EA794(v14, &qword_27CDF7670, &unk_21CBAA8F0);
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v18 = &v14[*(v15 + 20)];
        v16 = *v18;
        v17 = *(v18 + 1);
        sub_21CAC9DA8(a1, a2);

        sub_21C719840(v14, type metadata accessor for PMSharingGroup);
      }

      a3(a1, v16, v17);
      sub_21CAC9D88(a1, a2);
    }
  }

  else if (a3)
  {
    (a3)(0, 0, 0, v13);
  }
}

uint64_t sub_21CAC50F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_21CB85C44();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v7[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v14 = type metadata accessor for PMAccount.MockData(0);
  v7[18] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v16 = type metadata accessor for PMAccount.Storage(0);
  v7[20] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v19 = type metadata accessor for PMAccount(0);
  v7[31] = v19;
  v20 = *(v19 - 8);
  v7[32] = v20;
  v21 = *(v20 + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  sub_21CB858B4();
  v7[38] = sub_21CB858A4();
  v23 = sub_21CB85874();
  v7[39] = v23;
  v7[40] = v22;

  return MEMORY[0x2822009F8](sub_21CAC53F8, v23, v22);
}

uint64_t sub_21CAC53F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v0 + 328) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications;
  *(v2 + v3) = 1;
  v4 = *(v1 + 16);
  *(v0 + 336) = v4;
  if (v4)
  {
    v5 = 0;
    v6 = *(v0 + 256);
    *(v0 + 344) = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
    v7 = *(v6 + 80);
    v8 = MEMORY[0x277D84F90];
    *(v0 + 392) = v7;
    v9 = *(v6 + 72);
    *(v0 + 352) = v9;
    while (1)
    {
      *(v0 + 360) = v5;
      *(v0 + 368) = v8;
      v10 = *(v0 + 296);
      v11 = *(v0 + 248);
      v12 = *(v0 + 184);
      v13 = *(v0 + 160);
      sub_21CACA770(*(v0 + 64) + ((v7 + 32) & ~v7) + v9 * v5, v10, type metadata accessor for PMAccount);
      v14 = *(v11 + 24);
      v134 = v10;
      sub_21CACA770(v10 + v14, v12, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = *(v0 + 232);
      v17 = *(v0 + 184);
      if (EnumCaseMultiPayload == 1)
      {
        v18 = *(v0 + 144);
        v19 = *(v0 + 152);
        sub_21CAC9E84(v17, v19, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v19 + *(v18 + 72), v16, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C719840(v19, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v20 = *v17;
        v21 = *(v0 + 232);
        sub_21CB85B94();
      }

      v22 = *(v0 + 136);
      v23 = *(v0 + 72);
      sub_21C716934(*(v0 + 232), *(v0 + 240), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EDBAC(v23, v22, &qword_27CDF7670, &unk_21CBAA8F0);
      v141 = type metadata accessor for PMSharingGroup();
      v139 = *(*(v141 - 8) + 48);
      v132 = v14;
      if (v139(v22, 1) == 1)
      {
        sub_21C6EA794(*(v0 + 136), &qword_27CDF7670, &unk_21CBAA8F0);
        v24 = 1;
      }

      else
      {
        v25 = *(v0 + 136);
        (*(*(v0 + 88) + 16))(*(v0 + 224), v25, *(v0 + 80));
        sub_21C719840(v25, type metadata accessor for PMSharingGroup);
        v24 = 0;
      }

      v26 = *(v0 + 240);
      v27 = *(v0 + 224);
      v28 = *(v0 + 104);
      v29 = *(v0 + 112);
      v30 = *(v0 + 80);
      v31 = *(v0 + 88);
      v136 = *(v31 + 56);
      v136(v27, v24, 1, v30);
      v32 = *(v28 + 48);
      sub_21C6EDBAC(v26, v29, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EDBAC(v27, v29 + v32, &unk_27CDF20B0, &unk_21CBA0090);
      v33 = *(v31 + 48);
      v34 = v33(v29, 1, v30);
      v35 = *(v0 + 80);
      v130 = v33;
      if (v34 == 1)
      {
        break;
      }

      sub_21C6EDBAC(*(v0 + 112), *(v0 + 216), &unk_27CDF20B0, &unk_21CBA0090);
      v38 = v33(v29 + v32, 1, v35);
      v128 = *(v0 + 240);
      v40 = *(v0 + 216);
      v39 = *(v0 + 224);
      if (v38 == 1)
      {
        v42 = *(v0 + 80);
        v41 = *(v0 + 88);
        sub_21C6EA794(*(v0 + 224), &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C6EA794(v128, &unk_27CDF20B0, &unk_21CBA0090);
        (*(v41 + 8))(v40, v42);
LABEL_14:
        sub_21C6EA794(*(v0 + 112), &qword_27CDEAC40, &qword_21CBA1A40);
        goto LABEL_15;
      }

      v125 = *(v0 + 112);
      v144 = v8;
      v54 = *(v0 + 88);
      v55 = *(v0 + 96);
      v56 = *(v0 + 80);
      (*(v54 + 32))(v55, v29 + v32, v56);
      sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v57 = sub_21CB85574();
      v58 = *(v54 + 8);
      v59 = v55;
      v8 = v144;
      v58(v59, v56);
      sub_21C6EA794(v39, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v128, &unk_27CDF20B0, &unk_21CBA0090);
      v58(v40, v56);
      sub_21C6EA794(v125, &unk_27CDF20B0, &unk_21CBA0090);
      if (v57)
      {
        goto LABEL_23;
      }

LABEL_15:
      v43 = *(v0 + 128);
      sub_21C6EDBAC(*(v0 + 72), v43, &qword_27CDF7670, &unk_21CBAA8F0);
      if ((v139)(v43, 1, v141) == 1)
      {
        sub_21C6EA794(*(v0 + 128), &qword_27CDF7670, &unk_21CBAA8F0);
        v44 = 1;
      }

      else
      {
        v45 = *(v0 + 128);
        (*(*(v0 + 88) + 16))(*(v0 + 208), v45, *(v0 + 80));
        sub_21C719840(v45, type metadata accessor for PMSharingGroup);
        v44 = 0;
      }

      v46 = *(v0 + 176);
      v47 = *(v0 + 160);
      v48 = *(v0 + 88) + 56;
      v136(*(v0 + 208), v44, 1, *(v0 + 80));
      sub_21CACA770(v134 + v132, v46, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = *(v0 + 176);
        sub_21C6EA794(*(v0 + 208), &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C719840(v49, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v50 = *(v0 + 160);
        v51 = **(v0 + 176);
        sub_21CACA770(v134 + v132, *(v0 + 168), type metadata accessor for PMAccount.Storage);
        v52 = swift_getEnumCaseMultiPayload();
        v53 = *(v0 + 168);
        if (v52 == 1)
        {
          sub_21C719840(v53, type metadata accessor for PMAccount.Storage);
LABEL_30:
          v66 = *(v0 + 200);
          v67 = *(v0 + 80);
          v68 = *(*(v0 + 48) + *(v0 + 344));
          sub_21C6EDBAC(*(v0 + 208), v66, &unk_27CDF20B0, &unk_21CBA0090);
          LODWORD(v67) = v130(v66, 1, v67);
          v69 = v68;
          v70 = *(v0 + 200);
          if (v67 == 1)
          {
            sub_21C6EA794(*(v0 + 200), &unk_27CDF20B0, &unk_21CBA0090);
            v71 = 0;
          }

          else
          {
            v72 = v8;
            v73 = *(v0 + 80);
            v74 = *(v0 + 88);
            sub_21CB85B64();
            (*(v74 + 8))(v70, v73);
            v8 = v72;
            v71 = sub_21CB85584();
          }

          v75 = *(v0 + 208);
          v76 = [v69 _canMoveSavedAccount_toGroupWithID_];

          sub_21C6EA794(v75, &unk_27CDF20B0, &unk_21CBA0090);
          if (v76)
          {
            v113 = *(v0 + 120);
            sub_21C6EDBAC(*(v0 + 72), v113, &qword_27CDF7670, &unk_21CBAA8F0);
            if ((v139)(v113, 1, v141) == 1)
            {
              sub_21C6EA794(*(v0 + 120), &qword_27CDF7670, &unk_21CBAA8F0);
              v114 = 1;
            }

            else
            {
              v115 = *(v0 + 120);
              (*(*(v0 + 88) + 16))(*(v0 + 192), v115, *(v0 + 80));
              sub_21C719840(v115, type metadata accessor for PMSharingGroup);
              v114 = 0;
            }

            v116 = *(v0 + 88) + 56;
            v136(*(v0 + 192), v114, 1, *(v0 + 80));
            v117 = swift_task_alloc();
            *(v0 + 376) = v117;
            *v117 = v0;
            v117[1] = sub_21CAC6230;
            v118 = *(v0 + 296);
            v119 = *(v0 + 192);
            v120 = *(v0 + 48);

            return sub_21CAC4230(v118, v119, 0);
          }

          goto LABEL_34;
        }

        v64 = *v53;
        v65 = [*v53 credentialTypes];

        if (v65 != 4 || ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) != 0)
        {
          goto LABEL_30;
        }

        v95 = *(v0 + 208);

        sub_21C6EA794(v95, &unk_27CDF20B0, &unk_21CBA0090);
      }

LABEL_34:
      sub_21CACA770(*(v0 + 296), *(v0 + 280), type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21CA4F1B8(0, v8[2] + 1, 1, v8);
      }

      v61 = v8[2];
      v77 = v8[3];
      v62 = v61 + 1;
      if (v61 >= v77 >> 1)
      {
        v8 = sub_21CA4F1B8(v77 > 1, v61 + 1, 1, v8);
      }

      v63 = (v0 + 280);
LABEL_39:
      v78 = *(v0 + 352);
      v79 = *(v0 + 392);
      v80 = *v63;
      v8[2] = v62;
      sub_21CAC9E84(v80, v8 + ((v79 + 32) & ~v79) + v78 * v61, type metadata accessor for PMAccount);
      v81 = *(v0 + 56);
      sub_21CACA770(*(v0 + 296), *(v0 + 272), type metadata accessor for PMAccount);
      swift_getKeyPath();
      swift_getKeyPath();
      v82 = sub_21CB81DA4();
      v84 = v83;
      v85 = *v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v84 = v85;
      v145 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v85 = sub_21CA4F1B8(0, v85[2] + 1, 1, v85);
        *v84 = v85;
      }

      v88 = v85[2];
      v87 = v85[3];
      if (v88 >= v87 >> 1)
      {
        v85 = sub_21CA4F1B8(v87 > 1, v88 + 1, 1, v85);
        *v84 = v85;
      }

      v89 = *(v0 + 352);
      v90 = *(v0 + 392);
      v91 = *(v0 + 336);
      v92 = *(v0 + 296);
      v93 = *(v0 + 272);
      v94 = *(v0 + 360) + 1;
      v85[2] = v88 + 1;
      sub_21CAC9E84(v93, v85 + ((v90 + 32) & ~v90) + v89 * v88, type metadata accessor for PMAccount);
      v82();

      sub_21C719840(v92, type metadata accessor for PMAccount);
      if (v94 == v91)
      {
        v96 = v145;
        goto LABEL_48;
      }

      v9 = *(v0 + 352);
      v5 = *(v0 + 360) + 1;
      LOBYTE(v7) = *(v0 + 392);
      v8 = v145;
    }

    v36 = v33;
    v37 = *(v0 + 240);
    sub_21C6EA794(*(v0 + 224), &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v37, &unk_27CDF20B0, &unk_21CBA0090);
    if (v36(v29 + v32, 1, v35) == 1)
    {
      sub_21C6EA794(*(v0 + 112), &unk_27CDF20B0, &unk_21CBA0090);
LABEL_23:
      sub_21CACA770(*(v0 + 296), *(v0 + 288), type metadata accessor for PMAccount);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21CA4F1B8(0, v8[2] + 1, 1, v8);
      }

      v61 = v8[2];
      v60 = v8[3];
      v62 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v8 = sub_21CA4F1B8(v60 > 1, v61 + 1, 1, v8);
      }

      v63 = (v0 + 288);
      goto LABEL_39;
    }

    goto LABEL_14;
  }

  v96 = MEMORY[0x277D84F90];
LABEL_48:
  v97 = *(v0 + 304);

  if (*(v96 + 16))
  {

    v98 = 0;
  }

  else
  {
    v96 = 0;
    v98 = 255;
  }

  v99 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 396) = 1;

  sub_21CB81DC4();
  v100 = *(v99 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v100)
  {
    v101 = *(v99 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
    v100(v96, v98);
  }

  v102 = v98;
  v103 = *(v0 + 328);
  v105 = *(v0 + 288);
  v104 = *(v0 + 296);
  v107 = *(v0 + 272);
  v106 = *(v0 + 280);
  v108 = *(v0 + 264);
  v109 = *(v0 + 240);
  v121 = *(v0 + 232);
  v122 = *(v0 + 224);
  v123 = *(v0 + 216);
  v124 = *(v0 + 208);
  v126 = *(v0 + 200);
  v127 = *(v0 + 192);
  v129 = *(v0 + 184);
  v131 = *(v0 + 176);
  v133 = *(v0 + 168);
  v135 = *(v0 + 152);
  v137 = *(v0 + 136);
  v138 = *(v0 + 128);
  v140 = *(v0 + 120);
  v142 = *(v0 + 112);
  v143 = *(v0 + 96);
  v110 = *(v0 + 48);
  sub_21CAC9D88(v96, v102);
  *(v110 + v103) = 0;
  sub_21C6EC92C();

  v111 = *(v0 + 8);

  return v111();
}

uint64_t sub_21CAC6230()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 384) = v0;

  sub_21C6EA794(v4, &unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(v2 + 320);
  v7 = *(v2 + 312);
  if (v0)
  {
    v8 = sub_21CAC714C;
  }

  else
  {
    v8 = sub_21CAC6398;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21CAC6398()
{
  for (i = *(v0 + 368); ; sub_21CAC9E84(v5, i + ((v4 + 32) & ~v4) + v3 * v71, type metadata accessor for PMAccount))
  {
    v135 = i;
    v6 = *(v0 + 56);
    sub_21CACA770(*(v0 + 296), *(v0 + 272), type metadata accessor for PMAccount);
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = sub_21CB81DA4();
    v9 = v8;
    v10 = *v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_21CA4F1B8(0, v10[2] + 1, 1, v10);
      *v9 = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_21CA4F1B8(v12 > 1, v13 + 1, 1, v10);
      *v9 = v10;
    }

    v14 = *(v0 + 352);
    v15 = *(v0 + 392);
    v16 = *(v0 + 336);
    v17 = *(v0 + 296);
    v18 = *(v0 + 272);
    v19 = *(v0 + 360) + 1;
    v10[2] = v13 + 1;
    sub_21CAC9E84(v18, v10 + ((v15 + 32) & ~v15) + v14 * v13, type metadata accessor for PMAccount);
    v7();

    sub_21C719840(v17, type metadata accessor for PMAccount);
    if (v19 == v16)
    {
      break;
    }

    v20 = *(v0 + 352);
    v21 = *(v0 + 360) + 1;
    i = v135;
    *(v0 + 360) = v21;
    *(v0 + 368) = v135;
    v22 = *(v0 + 296);
    v23 = *(v0 + 248);
    v24 = *(v0 + 184);
    v25 = *(v0 + 160);
    sub_21CACA770(*(v0 + 64) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + v20 * v21, v22, type metadata accessor for PMAccount);
    v123 = *(v23 + 24);
    sub_21CACA770(v22 + v123, v24, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v27 = *(v0 + 232);
    v28 = *(v0 + 184);
    v125 = v22;
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 144);
      v30 = *(v0 + 152);
      sub_21CAC9E84(v28, v30, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v30 + *(v29 + 72), v27, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v30, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v31 = *v28;
      sub_21CB85B94();
    }

    v32 = *(v0 + 136);
    v33 = *(v0 + 72);
    sub_21C716934(*(v0 + 232), *(v0 + 240), &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v33, v32, &qword_27CDF7670, &unk_21CBAA8F0);
    v132 = type metadata accessor for PMSharingGroup();
    v130 = *(*(v132 - 8) + 48);
    if (v130(v32, 1) == 1)
    {
      sub_21C6EA794(*(v0 + 136), &qword_27CDF7670, &unk_21CBAA8F0);
      v34 = 1;
    }

    else
    {
      v35 = *(v0 + 136);
      (*(*(v0 + 88) + 16))(*(v0 + 224), v35, *(v0 + 80));
      sub_21C719840(v35, type metadata accessor for PMSharingGroup);
      v34 = 0;
    }

    v36 = *(v0 + 240);
    v37 = *(v0 + 224);
    v38 = *(v0 + 104);
    v39 = *(v0 + 112);
    v41 = *(v0 + 80);
    v40 = *(v0 + 88);
    v127 = *(v40 + 56);
    v127(v37, v34, 1, v41);
    v42 = *(v38 + 48);
    sub_21C6EDBAC(v36, v39, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v37, v39 + v42, &unk_27CDF20B0, &unk_21CBA0090);
    v43 = *(v40 + 48);
    v44 = v43(v39, 1, v41);
    v45 = *(v0 + 80);
    v121 = v43;
    if (v44 == 1)
    {
      v46 = v43;
      v47 = *(v0 + 240);
      sub_21C6EA794(*(v0 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v47, &unk_27CDF20B0, &unk_21CBA0090);
      if (v46(v39 + v42, 1, v45) == 1)
      {
        sub_21C6EA794(*(v0 + 112), &unk_27CDF20B0, &unk_21CBA0090);
LABEL_29:
        sub_21CACA770(*(v0 + 296), *(v0 + 288), type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          i = sub_21CA4F1B8(0, i[2] + 1, 1, i);
        }

        v71 = i[2];
        v70 = i[3];
        v72 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          i = sub_21CA4F1B8(v70 > 1, v71 + 1, 1, i);
        }

        v2 = (v0 + 288);
        goto LABEL_3;
      }

      goto LABEL_20;
    }

    sub_21C6EDBAC(*(v0 + 112), *(v0 + 216), &unk_27CDF20B0, &unk_21CBA0090);
    v48 = v43(v39 + v42, 1, v45);
    v119 = *(v0 + 240);
    v50 = *(v0 + 216);
    v49 = *(v0 + 224);
    if (v48 == 1)
    {
      v52 = *(v0 + 80);
      v51 = *(v0 + 88);
      sub_21C6EA794(*(v0 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v119, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v51 + 8))(v50, v52);
LABEL_20:
      sub_21C6EA794(*(v0 + 112), &qword_27CDEAC40, &qword_21CBA1A40);
      goto LABEL_21;
    }

    v116 = *(v0 + 112);
    v64 = *(v0 + 88);
    v65 = *(v0 + 96);
    v66 = *(v0 + 80);
    (*(v64 + 32))(v65, v39 + v42, v66);
    sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978]);
    v67 = sub_21CB85574();
    v68 = *(v64 + 8);
    v69 = v65;
    i = v135;
    v68(v69, v66);
    sub_21C6EA794(v49, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v119, &unk_27CDF20B0, &unk_21CBA0090);
    v68(v50, v66);
    sub_21C6EA794(v116, &unk_27CDF20B0, &unk_21CBA0090);
    if (v67)
    {
      goto LABEL_29;
    }

LABEL_21:
    v53 = *(v0 + 128);
    sub_21C6EDBAC(*(v0 + 72), v53, &qword_27CDF7670, &unk_21CBAA8F0);
    if ((v130)(v53, 1, v132) == 1)
    {
      sub_21C6EA794(*(v0 + 128), &qword_27CDF7670, &unk_21CBAA8F0);
      v54 = 1;
    }

    else
    {
      v55 = *(v0 + 128);
      (*(*(v0 + 88) + 16))(*(v0 + 208), v55, *(v0 + 80));
      sub_21C719840(v55, type metadata accessor for PMSharingGroup);
      v54 = 0;
    }

    v56 = *(v0 + 176);
    v57 = *(v0 + 160);
    v58 = *(v0 + 88) + 56;
    v127(*(v0 + 208), v54, 1, *(v0 + 80));
    sub_21CACA770(v125 + v123, v56, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = *(v0 + 176);
      sub_21C6EA794(*(v0 + 208), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v59, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v60 = *(v0 + 160);
      v61 = **(v0 + 176);
      sub_21CACA770(v125 + v123, *(v0 + 168), type metadata accessor for PMAccount.Storage);
      v62 = swift_getEnumCaseMultiPayload();
      v63 = *(v0 + 168);
      if (v62 == 1)
      {
        sub_21C719840(v63, type metadata accessor for PMAccount.Storage);
LABEL_35:
        v75 = *(v0 + 200);
        v76 = *(v0 + 80);
        v77 = *(*(v0 + 48) + *(v0 + 344));
        sub_21C6EDBAC(*(v0 + 208), v75, &unk_27CDF20B0, &unk_21CBA0090);
        LODWORD(v76) = v121(v75, 1, v76);
        v78 = v77;
        v79 = *(v0 + 200);
        if (v76 == 1)
        {
          sub_21C6EA794(*(v0 + 200), &unk_27CDF20B0, &unk_21CBA0090);
          v80 = 0;
        }

        else
        {
          v81 = *(v0 + 80);
          v82 = *(v0 + 88);
          sub_21CB85B64();
          (*(v82 + 8))(v79, v81);
          v80 = sub_21CB85584();
        }

        v83 = *(v0 + 208);
        v84 = [v78 _canMoveSavedAccount_toGroupWithID_];

        sub_21C6EA794(v83, &unk_27CDF20B0, &unk_21CBA0090);
        if (v84)
        {
          v104 = *(v0 + 120);
          sub_21C6EDBAC(*(v0 + 72), v104, &qword_27CDF7670, &unk_21CBAA8F0);
          if ((v130)(v104, 1, v132) == 1)
          {
            sub_21C6EA794(*(v0 + 120), &qword_27CDF7670, &unk_21CBAA8F0);
            v105 = 1;
          }

          else
          {
            v106 = *(v0 + 120);
            (*(*(v0 + 88) + 16))(*(v0 + 192), v106, *(v0 + 80));
            sub_21C719840(v106, type metadata accessor for PMSharingGroup);
            v105 = 0;
          }

          v107 = *(v0 + 88) + 56;
          v127(*(v0 + 192), v105, 1, *(v0 + 80));
          v108 = swift_task_alloc();
          *(v0 + 376) = v108;
          *v108 = v0;
          v108[1] = sub_21CAC6230;
          v109 = *(v0 + 296);
          v110 = *(v0 + 192);
          v111 = *(v0 + 48);

          return sub_21CAC4230(v109, v110, 0);
        }

        goto LABEL_39;
      }

      v73 = *v63;
      v74 = [*v63 credentialTypes];

      if (v74 != 4 || ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) != 0)
      {
        goto LABEL_35;
      }

      v86 = *(v0 + 208);

      sub_21C6EA794(v86, &unk_27CDF20B0, &unk_21CBA0090);
    }

LABEL_39:
    sub_21CACA770(*(v0 + 296), *(v0 + 280), type metadata accessor for PMAccount);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_21CA4F1B8(0, i[2] + 1, 1, i);
    }

    v71 = i[2];
    v85 = i[3];
    v72 = v71 + 1;
    if (v71 >= v85 >> 1)
    {
      i = sub_21CA4F1B8(v85 > 1, v71 + 1, 1, i);
    }

    v2 = (v0 + 280);
LABEL_3:
    v3 = *(v0 + 352);
    v4 = *(v0 + 392);
    v5 = *v2;
    i[2] = v72;
  }

  v87 = *(v0 + 304);

  v88 = v135;
  if (v135[2])
  {

    v89 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 255;
  }

  v90 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 396) = 1;

  sub_21CB81DC4();
  v91 = *(v90 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v91)
  {
    v92 = *(v90 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
    v91(v88, v89);
  }

  v93 = v89;
  v94 = *(v0 + 328);
  v96 = *(v0 + 288);
  v95 = *(v0 + 296);
  v98 = *(v0 + 272);
  v97 = *(v0 + 280);
  v99 = *(v0 + 264);
  v100 = *(v0 + 240);
  v112 = *(v0 + 232);
  v113 = *(v0 + 224);
  v114 = *(v0 + 216);
  v115 = *(v0 + 208);
  v117 = *(v0 + 200);
  v118 = *(v0 + 192);
  v120 = *(v0 + 184);
  v122 = *(v0 + 176);
  v124 = *(v0 + 168);
  v126 = *(v0 + 152);
  v128 = *(v0 + 136);
  v129 = *(v0 + 128);
  v131 = *(v0 + 120);
  v133 = *(v0 + 112);
  v134 = *(v0 + 96);
  v101 = *(v0 + 48);
  sub_21CAC9D88(v88, v93);
  *(v101 + v94) = 0;
  sub_21C6EC92C();

  v102 = *(v0 + 8);

  return v102();
}

uint64_t sub_21CAC714C()
{
  v1 = *(v0 + 368);
  sub_21CACA770(*(v0 + 296), *(v0 + 264), type metadata accessor for PMAccount);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, *(v0 + 368));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_21CA4F1B8(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 352);
  v7 = *(v0 + 264);
  v8 = (*(v0 + 392) + 32) & ~*(v0 + 392);

  v3[2] = v5 + 1;
  sub_21CAC9E84(v7, v3 + v8 + v6 * v5, type metadata accessor for PMAccount);
  while (1)
  {
    v142 = v3;
    v13 = *(v0 + 56);
    sub_21CACA770(*(v0 + 296), *(v0 + 272), type metadata accessor for PMAccount);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = sub_21CB81DA4();
    v16 = v15;
    v17 = *v15;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_21CA4F1B8(0, v17[2] + 1, 1, v17);
      *v16 = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_21CA4F1B8(v19 > 1, v20 + 1, 1, v17);
      *v16 = v17;
    }

    v21 = *(v0 + 352);
    v22 = *(v0 + 392);
    v23 = *(v0 + 336);
    v24 = *(v0 + 296);
    v25 = *(v0 + 272);
    v26 = *(v0 + 360) + 1;
    v17[2] = v20 + 1;
    sub_21CAC9E84(v25, v17 + ((v22 + 32) & ~v22) + v21 * v20, type metadata accessor for PMAccount);
    v14();

    sub_21C719840(v24, type metadata accessor for PMAccount);
    if (v26 == v23)
    {
      break;
    }

    v27 = *(v0 + 352);
    v28 = *(v0 + 360) + 1;
    v3 = v142;
    *(v0 + 360) = v28;
    *(v0 + 368) = v142;
    v29 = *(v0 + 296);
    v30 = *(v0 + 248);
    v31 = *(v0 + 184);
    v32 = *(v0 + 160);
    sub_21CACA770(*(v0 + 64) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + v27 * v28, v29, type metadata accessor for PMAccount);
    v130 = *(v30 + 24);
    sub_21CACA770(v29 + v130, v31, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = *(v0 + 232);
    v35 = *(v0 + 184);
    v132 = v29;
    if (EnumCaseMultiPayload == 1)
    {
      v36 = *(v0 + 144);
      v37 = *(v0 + 152);
      sub_21CAC9E84(v35, v37, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v37 + *(v36 + 72), v34, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v37, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v38 = *v35;
      sub_21CB85B94();
    }

    v39 = *(v0 + 136);
    v40 = *(v0 + 72);
    sub_21C716934(*(v0 + 232), *(v0 + 240), &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v40, v39, &qword_27CDF7670, &unk_21CBAA8F0);
    v139 = type metadata accessor for PMSharingGroup();
    v137 = *(*(v139 - 8) + 48);
    if (v137(v39, 1) == 1)
    {
      sub_21C6EA794(*(v0 + 136), &qword_27CDF7670, &unk_21CBAA8F0);
      v41 = 1;
    }

    else
    {
      v42 = *(v0 + 136);
      (*(*(v0 + 88) + 16))(*(v0 + 224), v42, *(v0 + 80));
      sub_21C719840(v42, type metadata accessor for PMSharingGroup);
      v41 = 0;
    }

    v43 = *(v0 + 240);
    v44 = *(v0 + 224);
    v45 = *(v0 + 104);
    v46 = *(v0 + 112);
    v48 = *(v0 + 80);
    v47 = *(v0 + 88);
    v134 = *(v47 + 56);
    v134(v44, v41, 1, v48);
    v49 = *(v45 + 48);
    sub_21C6EDBAC(v43, v46, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EDBAC(v44, v46 + v49, &unk_27CDF20B0, &unk_21CBA0090);
    v50 = *(v47 + 48);
    v51 = v50(v46, 1, v48);
    v52 = *(v0 + 80);
    v128 = v50;
    if (v51 == 1)
    {
      v53 = v50;
      v54 = *(v0 + 240);
      sub_21C6EA794(*(v0 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v54, &unk_27CDF20B0, &unk_21CBA0090);
      if (v53(v46 + v49, 1, v52) == 1)
      {
        sub_21C6EA794(*(v0 + 112), &unk_27CDF20B0, &unk_21CBA0090);
LABEL_33:
        sub_21CACA770(*(v0 + 296), *(v0 + 288), type metadata accessor for PMAccount);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, v3);
        }

        v78 = v3[2];
        v77 = v3[3];
        v79 = v78 + 1;
        if (v78 >= v77 >> 1)
        {
          v3 = sub_21CA4F1B8(v77 > 1, v78 + 1, 1, v3);
        }

        v9 = (v0 + 288);
        goto LABEL_7;
      }

      goto LABEL_24;
    }

    sub_21C6EDBAC(*(v0 + 112), *(v0 + 216), &unk_27CDF20B0, &unk_21CBA0090);
    v55 = v50(v46 + v49, 1, v52);
    v126 = *(v0 + 240);
    v57 = *(v0 + 216);
    v56 = *(v0 + 224);
    if (v55 == 1)
    {
      v59 = *(v0 + 80);
      v58 = *(v0 + 88);
      sub_21C6EA794(*(v0 + 224), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v126, &unk_27CDF20B0, &unk_21CBA0090);
      (*(v58 + 8))(v57, v59);
LABEL_24:
      sub_21C6EA794(*(v0 + 112), &qword_27CDEAC40, &qword_21CBA1A40);
      goto LABEL_25;
    }

    v123 = *(v0 + 112);
    v71 = *(v0 + 88);
    v72 = *(v0 + 96);
    v73 = *(v0 + 80);
    (*(v71 + 32))(v72, v46 + v49, v73);
    sub_21C6EADA4(&qword_27CDEAC48, MEMORY[0x277D49978]);
    v74 = sub_21CB85574();
    v75 = *(v71 + 8);
    v76 = v72;
    v3 = v142;
    v75(v76, v73);
    sub_21C6EA794(v56, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v126, &unk_27CDF20B0, &unk_21CBA0090);
    v75(v57, v73);
    sub_21C6EA794(v123, &unk_27CDF20B0, &unk_21CBA0090);
    if (v74)
    {
      goto LABEL_33;
    }

LABEL_25:
    v60 = *(v0 + 128);
    sub_21C6EDBAC(*(v0 + 72), v60, &qword_27CDF7670, &unk_21CBAA8F0);
    if ((v137)(v60, 1, v139) == 1)
    {
      sub_21C6EA794(*(v0 + 128), &qword_27CDF7670, &unk_21CBAA8F0);
      v61 = 1;
    }

    else
    {
      v62 = *(v0 + 128);
      (*(*(v0 + 88) + 16))(*(v0 + 208), v62, *(v0 + 80));
      sub_21C719840(v62, type metadata accessor for PMSharingGroup);
      v61 = 0;
    }

    v63 = *(v0 + 176);
    v64 = *(v0 + 160);
    v65 = *(v0 + 88) + 56;
    v134(*(v0 + 208), v61, 1, *(v0 + 80));
    sub_21CACA770(v132 + v130, v63, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66 = *(v0 + 176);
      sub_21C6EA794(*(v0 + 208), &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C719840(v66, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v67 = *(v0 + 160);
      v68 = **(v0 + 176);
      sub_21CACA770(v132 + v130, *(v0 + 168), type metadata accessor for PMAccount.Storage);
      v69 = swift_getEnumCaseMultiPayload();
      v70 = *(v0 + 168);
      if (v69 == 1)
      {
        sub_21C719840(v70, type metadata accessor for PMAccount.Storage);
LABEL_39:
        v82 = *(v0 + 200);
        v83 = *(v0 + 80);
        v84 = *(*(v0 + 48) + *(v0 + 344));
        sub_21C6EDBAC(*(v0 + 208), v82, &unk_27CDF20B0, &unk_21CBA0090);
        LODWORD(v83) = v128(v82, 1, v83);
        v85 = v84;
        v86 = *(v0 + 200);
        if (v83 == 1)
        {
          sub_21C6EA794(*(v0 + 200), &unk_27CDF20B0, &unk_21CBA0090);
          v87 = 0;
        }

        else
        {
          v88 = *(v0 + 80);
          v89 = *(v0 + 88);
          sub_21CB85B64();
          (*(v89 + 8))(v86, v88);
          v87 = sub_21CB85584();
        }

        v90 = *(v0 + 208);
        v91 = [v85 _canMoveSavedAccount_toGroupWithID_];

        sub_21C6EA794(v90, &unk_27CDF20B0, &unk_21CBA0090);
        if (v91)
        {
          v111 = *(v0 + 120);
          sub_21C6EDBAC(*(v0 + 72), v111, &qword_27CDF7670, &unk_21CBAA8F0);
          if ((v137)(v111, 1, v139) == 1)
          {
            sub_21C6EA794(*(v0 + 120), &qword_27CDF7670, &unk_21CBAA8F0);
            v112 = 1;
          }

          else
          {
            v113 = *(v0 + 120);
            (*(*(v0 + 88) + 16))(*(v0 + 192), v113, *(v0 + 80));
            sub_21C719840(v113, type metadata accessor for PMSharingGroup);
            v112 = 0;
          }

          v114 = *(v0 + 88) + 56;
          v134(*(v0 + 192), v112, 1, *(v0 + 80));
          v115 = swift_task_alloc();
          *(v0 + 376) = v115;
          *v115 = v0;
          v115[1] = sub_21CAC6230;
          v116 = *(v0 + 296);
          v117 = *(v0 + 192);
          v118 = *(v0 + 48);

          return sub_21CAC4230(v116, v117, 0);
        }

        goto LABEL_43;
      }

      v80 = *v70;
      v81 = [*v70 credentialTypes];

      if (v81 != 4 || ([objc_opt_self() isSignInWithAppleCredentialSharingEnabled] & 1) != 0)
      {
        goto LABEL_39;
      }

      v93 = *(v0 + 208);

      sub_21C6EA794(v93, &unk_27CDF20B0, &unk_21CBA0090);
    }

LABEL_43:
    sub_21CACA770(*(v0 + 296), *(v0 + 280), type metadata accessor for PMAccount);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_21CA4F1B8(0, v3[2] + 1, 1, v3);
    }

    v78 = v3[2];
    v92 = v3[3];
    v79 = v78 + 1;
    if (v78 >= v92 >> 1)
    {
      v3 = sub_21CA4F1B8(v92 > 1, v78 + 1, 1, v3);
    }

    v9 = (v0 + 280);
LABEL_7:
    v10 = *(v0 + 352);
    v11 = *(v0 + 392);
    v12 = *v9;
    v3[2] = v79;
    sub_21CAC9E84(v12, v3 + ((v11 + 32) & ~v11) + v10 * v78, type metadata accessor for PMAccount);
  }

  v94 = *(v0 + 304);

  v95 = v142;
  if (v142[2])
  {

    v96 = 0;
  }

  else
  {
    v95 = 0;
    v96 = 255;
  }

  v97 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 396) = 1;

  sub_21CB81DC4();
  v98 = *(v97 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion);
  if (v98)
  {
    v99 = *(v97 + OBJC_IVAR____TtC17PasswordManagerUI23PMBulkOperationProgress_onCompletion + 8);
    v98(v95, v96);
  }

  v100 = v96;
  v101 = *(v0 + 328);
  v103 = *(v0 + 288);
  v102 = *(v0 + 296);
  v105 = *(v0 + 272);
  v104 = *(v0 + 280);
  v106 = *(v0 + 264);
  v107 = *(v0 + 240);
  v119 = *(v0 + 232);
  v120 = *(v0 + 224);
  v121 = *(v0 + 216);
  v122 = *(v0 + 208);
  v124 = *(v0 + 200);
  v125 = *(v0 + 192);
  v127 = *(v0 + 184);
  v129 = *(v0 + 176);
  v131 = *(v0 + 168);
  v133 = *(v0 + 152);
  v135 = *(v0 + 136);
  v136 = *(v0 + 128);
  v138 = *(v0 + 120);
  v140 = *(v0 + 112);
  v141 = *(v0 + 96);
  v108 = *(v0 + 48);
  sub_21CAC9D88(v95, v100);
  *(v108 + v101) = 0;
  sub_21C6EC92C();

  v109 = *(v0 + 8);

  return v109();
}

uint64_t sub_21CAC7FC4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_21CB858B4();
  v2[20] = sub_21CB858A4();
  v4 = sub_21CB85874();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_21CAC805C, v4, v3);
}

uint64_t sub_21CAC805C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v5 = v0 + 18;
  v4 = v0[18];
  v6 = *(v5[1] + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v1[23] = v6;
  v1[2] = v2;
  v1[3] = sub_21CAC818C;
  v7 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CAB1570;
  v1[13] = &block_descriptor_36;
  v1[14] = v7;
  [v6 clearSavedAccountHistory:v4 withCompletionHandler:v1 + 10];

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CAC818C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21CAC8294, v2, v1);
}

uint64_t sub_21CAC8294()
{
  v1 = v0[23];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CAC8314(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C702EFC;

  return sub_21CAB1DCC(a1);
}

uint64_t sub_21CAC83EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C6F35D0;

  return sub_21CAB86E8(a1, a2);
}

uint64_t sub_21CAC8490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21C6F35D0;

  return sub_21CAB8A2C(a1, a2, a3);
}

uint64_t sub_21CAC853C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_21CB858B4();
  v2[3] = sub_21CB858A4();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_21C74FDC4;

  return sub_21CAB8E98(a1, a2, 1);
}

uint64_t sub_21CAC8610(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C6F35D0;

  return sub_21CAC3700(a1);
}

void sub_21CAC86A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore);
  v4 = [v2 savedAccount];
  [v3 removeHideWarningMarkerForSavedAccount_];
}

uint64_t sub_21CAC8734(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21C702EFC;

  return sub_21CAC4230(a1, a2, a3);
}

uint64_t sub_21CAC87E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  sub_21C71DD5C(a3);
  v9 = sub_21CAC4C4C(a1, a2, sub_21CACA70C, v8);

  return v9;
}

id sub_21CAC8878(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager;
  swift_beginAccess();
  v5 = *(v2 + v4);
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v6 = v5;
  v7 = sub_21CB85814();
  v8 = [v6 savedAccountsFromGroup:v7 containsPasswordFromSavedAccount:a2];

  return v8;
}

uint64_t sub_21CAC8928(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C6F35D0;

  return sub_21CAC7FC4(a1);
}

void *sub_21CAC8A34(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

size_t sub_21CAC8AB8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7720, &qword_21CBA0D80);
  v4 = *(sub_21CB85C44() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21CAC8BB8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7730, &unk_21CBA0E60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21CAC8C3C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_21CAC8CC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC238, &qword_21CBA3D90);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_21CAC8E04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
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

void sub_21CAC8FA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 112);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_21CAC9098(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21CB862E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
        v6 = sub_21CB85844();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_21CAC9268(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_21CAC91AC(0, v2, 1, a1);
  }

  return result;
}

char *sub_21CAC91AC(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = [result compare_];
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *v10;
      result = v10[1];
      *v10 = result;
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21CAC9268(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v81 = a4;
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 8 * v6);
        v10 = 8 * v8;
        v11 = (*a3 + 8 * v8);
        v13 = *v11;
        v12 = (v11 + 2);
        result = [v9 compare_];
        v14 = result;
        v82 = v8;
        v15 = (v8 + 2);
        while (v5 != v15)
        {
          result = [*v12 compare_];
          ++v15;
          ++v12;
          if ((v14 == -1) == (result != -1))
          {
            v5 = (v15 - 1);
            break;
          }
        }

        v8 = v82;
        if (v14 == -1)
        {
          if (v5 < v82)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v82 < v5)
          {
            v16 = 8 * v5 - 8;
            v17 = v5;
            v18 = v82;
            do
            {
              if (v18 != --v17)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v19 = *(v20 + v10);
                *(v20 + v10) = *(v20 + v16);
                *(v20 + v16) = v19;
              }

              v18 = (v18 + 1);
              v16 -= 8;
              v10 += 8;
            }

            while (v18 < v17);
          }
        }

        v6 = v5;
      }

      v21 = a3[1];
      if (v6 < v21)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_116;
        }

        if (v6 - v8 < v81)
        {
          if (__OFADD__(v8, v81))
          {
            goto LABEL_117;
          }

          if (v8 + v81 >= v21)
          {
            v22 = a3[1];
          }

          else
          {
            v22 = (v8 + v81);
          }

          if (v22 < v8)
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (v6 != v22)
          {
            v23 = *a3;
            v24 = *a3 + 8 * v6 - 8;
            v83 = v8;
            v25 = (v8 - v6);
            do
            {
              v26 = *(v23 + 8 * v6);
              v27 = v25;
              v28 = v24;
              do
              {
                result = [v26 compare_];
                if (result != -1)
                {
                  break;
                }

                if (!v23)
                {
                  goto LABEL_121;
                }

                v29 = *v28;
                v26 = v28[1];
                *v28 = v26;
                v28[1] = v29;
                --v28;
              }

              while (!__CFADD__(v27++, 1));
              ++v6;
              v24 += 8;
              --v25;
            }

            while (v6 != v22);
            v6 = v22;
            v8 = v83;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21C86467C(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_21C86467C((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v33;
      v34 = &v7[16 * v32];
      *(v34 + 4) = v8;
      *(v34 + 5) = v6;
      v35 = *v84;
      if (!*v84)
      {
        goto LABEL_125;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v37 = *(v7 + 4);
            v38 = *(v7 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
LABEL_57:
            if (v40)
            {
              goto LABEL_104;
            }

            v53 = &v7[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_107;
            }

            v59 = &v7[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_111;
            }

            if (v57 + v62 >= v39)
            {
              if (v39 < v62)
              {
                v36 = v33 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v63 = &v7[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_71:
          if (v58)
          {
            goto LABEL_106;
          }

          v66 = &v7[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_109;
          }

          if (v69 < v57)
          {
            goto LABEL_3;
          }

LABEL_78:
          v74 = v36 - 1;
          if (v36 - 1 >= v33)
          {
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
            goto LABEL_118;
          }

          if (!*a3)
          {
            goto LABEL_122;
          }

          v8 = *&v7[16 * v74 + 32];
          v75 = *&v7[16 * v36 + 40];
          sub_21CAC980C((*a3 + 8 * v8), (*a3 + 8 * *&v7[16 * v36 + 32]), (*a3 + 8 * v75), v35);
          if (v4)
          {
          }

          if (v75 < v8)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_21C864538(v7);
          }

          if (v74 >= *(v7 + 2))
          {
            goto LABEL_101;
          }

          v76 = &v7[16 * v74];
          *(v76 + 4) = v8;
          *(v76 + 5) = v75;
          result = sub_21C8644AC(v36);
          v33 = *(v7 + 2);
          if (v33 <= 1)
          {
            goto LABEL_3;
          }
        }

        v41 = &v7[16 * v33 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_102;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_103;
        }

        v48 = &v7[16 * v33];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_105;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_108;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_112;
          }

          if (v39 < v73)
          {
            v36 = v33 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_88;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_88:
  v8 = *v84;
  if (!*v84)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_21C864538(v7);
    v7 = result;
  }

  v77 = *(v7 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v78 = *&v7[16 * v77];
      v79 = *&v7[16 * v77 + 24];
      sub_21CAC980C((*a3 + 8 * v78), (*a3 + 8 * *&v7[16 * v77 + 16]), (*a3 + 8 * v79), v8);
      if (v4)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21C864538(v7);
      }

      if (v77 - 2 >= *(v7 + 2))
      {
        goto LABEL_114;
      }

      v80 = &v7[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_21C8644AC(v77 - 1);
      v77 = *(v7 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_21CAC980C(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 1;
      --v5;
      v18 = v14;
      do
      {
        v19 = v5 + 1;
        v20 = *--v18;
        if ([v20 compare_] == -1)
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (--v6, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        --v5;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      while ([*v6 compare_] == -1)
      {
        v15 = v6;
        v16 = v7 == v6++;
        if (!v16)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v7;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_35;
        }
      }

      v15 = v4;
      v16 = v7 == v4++;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v7 = *v15;
      goto LABEL_14;
    }

LABEL_35:
    v6 = v7;
  }

LABEL_37:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

void sub_21CAC9BE0(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_21CAC4F30(a1, a2, v6, v7, v8);
}

uint64_t sub_21CAC9C70(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21C702EFC;

  return sub_21CAC50F0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_21CAC9D88(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRelease(result, a2 & 1);
  }

  return result;
}

uint64_t sub_21CAC9DA8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRetain(result, a2 & 1);
  }

  return result;
}

unint64_t sub_21CAC9DC0()
{
  result = qword_27CDF7678;
  if (!qword_27CDF7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7678);
  }

  return result;
}

uint64_t sub_21CAC9E14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF75E8, &qword_21CBC5500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAC9E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAC9EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CABE494(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21CAC9FBC()
{
  result = qword_27CDF7690;
  if (!qword_27CDF7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7690);
  }

  return result;
}

uint64_t sub_21CACA010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CABD708(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CACA0D8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAccount(0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_21C6F35D0;

  return sub_21CABCAFC(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21CACA200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21CABAA00(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21CACA2F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = sub_21CAC8C3C((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);
  swift_arrayInitWithCopy();
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6[2];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < 0)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_21CACA3C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *v6;
  v13 = *v6 >> 62;
  if (!v13)
  {
    result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a5)
    {
      goto LABEL_3;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v12 < 0)
  {
    v21 = *v6;
  }

  else
  {
    v21 = *v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_21CB85FA4();
  if (result < a5)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (a5 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v13)
  {
    result = sub_21CB85FA4();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a6)
  {
    goto LABEL_33;
  }

  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v12 & 0xC000000000000001) == 0)
  {
LABEL_12:

    goto LABEL_16;
  }

  if (a6 < a5)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a5 == a6)
  {
    goto LABEL_12;
  }

  if (a5 >= a6)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  sub_21C6E8F4C(0, &qword_27CDF76D0, 0x277D49AB8);

  v15 = a5;
  do
  {
    v16 = v15 + 1;
    sub_21CB860C4();
    v15 = v16;
  }

  while (a6 != v16);
LABEL_16:

  if (v13)
  {
    sub_21CB861F4();
    v17 = v19;
    v18 = v20;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v17 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = a5;
  }

  if (v17 + 8 * v18 == a2 + 8 * a3)
  {
    if ((a4 >> 1) >= a3)
    {
      if (a5 == a3 && a4 >> 1 == a6)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_20:

  return sub_21CB6546C(a5, a6, a1, a2, a3, a4);
}

uint64_t sub_21CACA5F4()
{
  v1 = *(type metadata accessor for PMAccount(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_21CAB3238(v2, v3, v4);
}

uint64_t sub_21CACA658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21CAB38BC(a1, v4, v5, v6);
}

uint64_t sub_21CACA70C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (result)
  {
    if (!v2)
    {
      return result;
    }

    v4 = 0;
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    result = 0;
    v4 = 255;
  }

  return v2(result, v4);
}

uint64_t sub_21CACA770(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id PMPasswordManagerState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_21CACA8C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CAA10B4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    v9 += 32;
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    result = memmove(v9, (v9 + 32), 32 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21CACA960(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

size_t sub_21CACA9F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CAA1168(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_21C7D5F48(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_21CACAB18(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CACAB94(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21C6EDBAC(a1, &v14 - v9, &qword_27CDF30D0, &qword_21CBBDC70);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v7, &qword_27CDF30D0, &qword_21CBBDC70);
  v12 = v11;
  sub_21CB81DC4();
  return sub_21C6EA794(v10, &qword_27CDF30D0, &qword_21CBBDC70);
}

uint64_t sub_21CACACC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CACAD40(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_21CB81DC4();
}

uint64_t sub_21CACADB4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 >> 62)
    {
      result = sub_21CB85FA4();
      if (result)
      {
LABEL_4:
        v7 = result - 1;
        if (__OFSUB__(result, 1))
        {
          __break(1u);
        }

        else if ((v6 & 0xC000000000000001) == 0)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v7 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v8 = *(v6 + 8 * v7 + 32);
LABEL_11:

LABEL_12:
            swift_getKeyPath();
            swift_getKeyPath();

            return sub_21CB81DC4();
          }

          __break(1u);
          return result;
        }

        MEMORY[0x21CF15BD0](v7, v6);

        goto LABEL_12;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    v9 = *&v4[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController];
    goto LABEL_11;
  }

  return result;
}

void sub_21CACAF18(unint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v11 = *&v5[v6];
      }

      v8 = sub_21CB85FA4();
      if (v8)
      {
LABEL_4:
        v9 = v8 - 1;
        if (__OFSUB__(v8, 1))
        {
          __break(1u);
        }

        else if ((v7 & 0xC000000000000001) == 0)
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *(v7 + 8 * v9 + 32);
LABEL_13:

            goto LABEL_14;
          }

          __break(1u);
          goto LABEL_30;
        }

        MEMORY[0x21CF15BD0](v9, v7);

LABEL_14:
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        if (v21)
        {
          if (v20 == *a1 && v21 == *(a1 + 8))
          {

            goto LABEL_19;
          }

          v13 = sub_21CB86344();

          if (v13)
          {
LABEL_19:
            a1 = *&v5[v6];
            if (!(a1 >> 62))
            {
              v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v14)
              {
                goto LABEL_21;
              }

              goto LABEL_31;
            }

LABEL_30:
            v14 = sub_21CB85FA4();
            if (v14)
            {
LABEL_21:
              v15 = v14 - 1;
              if (__OFSUB__(v14, 1))
              {
                __break(1u);
              }

              else if ((a1 & 0xC000000000000001) == 0)
              {
                if ((v15 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v15 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v16 = *(a1 + 8 * v15 + 32);
LABEL_32:

LABEL_33:
                  v19 = *a2;
                  v18 = a2[1];
                  swift_getKeyPath();
                  swift_getKeyPath();

                  sub_21CB81DC4();
                  goto LABEL_34;
                }

                __break(1u);
                return;
              }

              MEMORY[0x21CF15BD0](v15, a1);

              goto LABEL_33;
            }

LABEL_31:
            v17 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController];
            goto LABEL_32;
          }
        }

LABEL_34:

        return;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v12 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController];
    goto LABEL_13;
  }
}

uint64_t sub_21CACB1D0()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountsListModel.Configuration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel;
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel))
  {
    v7 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel);
  }

  else
  {
    v8 = sub_21CB85C44();
    (*(*(v8 - 8) + 56))(v5, 1, 2, v8);
    v9 = type metadata accessor for PMAccountsListModel(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v7 = sub_21C817568(v5);
    v12 = *(v1 + v6);
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_21CACB37C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CACB400(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_additionalAccountDetailsSheetControllers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_21CB85FA4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CF15BD0](v6, v4);
      swift_unknownObjectRelease();
      if (v8 == a1)
      {
LABEL_12:

        swift_beginAccess();
        sub_21CACA960(v6, sub_21CAA4518);
        swift_endAccess();
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (*(v4 + 8 * v6 + 32) == a1)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

id PMPasswordManagerState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PMPasswordManagerState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21CACB8D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CACB950(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_21CB81DC4();
}

double sub_21CACB9C8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_21CACBA48(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CACBB04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CACBB84(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21CACBBF8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_21CB853D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21CB85404();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v14 = sub_21CB85CF4();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a2;
  aBlock[4] = sub_21C7504E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_13_0;
  v16 = _Block_copy(aBlock);

  v17 = a2;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C91A4E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C91A53C();
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v13, v9, v16);
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_21CACBE9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_21CB85474();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_21CACBF60()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection);
  if (v1 != 1)
  {
    v21 = v0;
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 connectedScenes];

    sub_21C6E8F4C(0, &qword_27CDF7840, 0x277D75940);
    sub_21CACC840();
    v4 = sub_21CB859E4();

    v22 = v1;
    if ((v4 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_21CB85F64();
      sub_21CB85A14();
      v4 = v24;
      v5 = v25;
      v6 = v26;
      v7 = v27;
      v8 = v28;
    }

    else
    {
      v9 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v6 = ~v9;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v8 = v11 & *(v4 + 56);

      v7 = 0;
    }

    v12 = 0;
    while (1)
    {
      if (v4 < 0)
      {
        if (!sub_21CB85FE4())
        {
          goto LABEL_25;
        }

        swift_dynamicCast();
        v19 = v23;
        v17 = v7;
        v18 = v8;
        if (!v23)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v15 = v7;
        v16 = v8;
        v17 = v7;
        if (!v8)
        {
          while (1)
          {
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            if (v17 >= ((v6 + 64) >> 6))
            {
              goto LABEL_25;
            }

            v16 = *(v5 + 8 * v17);
            ++v15;
            if (v16)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }

LABEL_18:
        v18 = (v16 - 1) & v16;
        v19 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
        if (!v19)
        {
LABEL_25:
          sub_21C6F1E7C();

          if (v12)
          {
            return;
          }

          swift_getKeyPath();
          swift_getKeyPath();

          sub_21CB81DC4();
          LOBYTE(v1) = v22;
          goto LABEL_27;
        }
      }

      if ([v19 activationState])
      {
        v20 = [v19 activationState];

        if (v20 != 1)
        {
          v13 = 0;
          goto LABEL_12;
        }
      }

      else
      {
      }

      v13 = 1;
LABEL_12:
      v7 = v17;
      v8 = v18;
      v14 = __OFADD__(v12, v13);
      v12 += v13;
      if (v14)
      {
        goto LABEL_30;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
LABEL_27:
  sub_21CACC6CC(v1 ^ 1, 0);
}

void sub_21CACC29C()
{
  v1 = v0;
  sub_21CB807C4();
  if (!v7)
  {
    sub_21C6EA794(v6, &qword_27CDF4D90, &qword_21CBA9F00);
LABEL_7:
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = 0;
    goto LABEL_8;
  }

  sub_21C6E8F4C(0, &qword_27CDF7840, 0x277D75940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = [v5 systemProtectionManager];

  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [v2 isUserAuthenticationEnabled];

  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer_isUsingSystemProtection) = v3;
  if (!v3)
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    v6[0] = 0;

    sub_21CB81DC4();
    v4 = 1;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6[0] = 1;

  sub_21CB81DC4();
  v4 = 0;
LABEL_9:
  sub_21CACC6CC(v4, 0);
}

uint64_t sub_21CACC440(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_21CB807E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB807B4();

  a4(v9);

  return (*(v6 + 8))(v9, v5);
}

uint64_t PMSecureWindowLockPolicyEnforcer.deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__hasBeenAuthenticated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__isAuthenticating, v2);
  return v0;
}

uint64_t PMSecureWindowLockPolicyEnforcer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__hasBeenAuthenticated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMSecureWindowLockPolicyEnforcer__isAuthenticating, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21CACC6CC(char a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7830, &qword_21CBC60F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = 0x64616F6C796170;
  v5 = inited + 32;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = a1;
  *(inited + 49) = a2;
  v6 = sub_21CB132B4(inited);
  swift_setDeallocating();
  sub_21C6EA794(v5, &qword_27CDF7838, &unk_21CBC60F8);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_27CDEA400 != -1)
  {
    swift_once();
  }

  v8 = qword_27CE185B8;
  sub_21CADA4A8(v6);

  v9 = sub_21CB85464();

  [v7 postNotificationName:v8 object:0 userInfo:v9];
}

unint64_t sub_21CACC840()
{
  result = qword_27CDF7848;
  if (!qword_27CDF7848)
  {
    sub_21C6E8F4C(255, &qword_27CDF7840, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7848);
  }

  return result;
}

uint64_t sub_21CACC8A8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t type metadata accessor for PMPasswordOptionsDefaultAppsView()
{
  result = qword_27CDF7860;
  if (!qword_27CDF7860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CACCA7C()
{
  sub_21C70D554();
  if (v0 <= 0x3F)
  {
    sub_21C70D724();
    if (v1 <= 0x3F)
    {
      sub_21C70D950();
      if (v2 <= 0x3F)
      {
        sub_21C70DC98();
        if (v3 <= 0x3F)
        {
          sub_21C70DCF0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21CACCB64()
{
  v0 = type metadata accessor for PMPasswordOptionsViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277D49DB8]) init];
  *(v3 + 24) = 0;
  v4 = [objc_opt_self() sharedFeatureManager];
  [v4 shouldAutoFillPasswords];

  sub_21CB81D74();
  *(v3 + 24) = 1;
  return v3;
}

uint64_t sub_21CACCC2C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v67 = &v54 - v4;
  v57 = sub_21CB80B34();
  v68 = *(v57 - 8);
  v69 = v57 - 8;
  v70 = v68;
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85444();
  v8 = *(v7 - 8);
  v73 = v7;
  v74 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPasswordOptionsDefaultAppsView();
  v66 = *(v11 - 8);
  v64 = *(v66 + 8);
  MEMORY[0x28223BE20](v11 - 8);
  v63 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB829D4();
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7888, &qword_21CBC6238);
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7890, &qword_21CBC6240);
  v61 = *(v60 - 8);
  v21 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  v23 = &v54 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7898, &qword_21CBC6248);
  v24 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v26 = &v54 - v25;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78A0, &qword_21CBC6250);
  v55 = *(v56 - 8);
  v27 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - v28;
  v76 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78A8, &unk_21CBC6258);
  sub_21C6EADEC(&qword_27CDF78B0, &qword_27CDF78A8, &unk_21CBC6258);
  sub_21CB83EF4();
  sub_21CB85294();
  v29 = sub_21C6EADEC(&qword_27CDF78B8, &qword_27CDF7888, &qword_21CBC6238);
  v30 = sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  sub_21CB849C4();
  (*(v62 + 8))(v16, v13);
  (*(v59 + 8))(v20, v17);
  v31 = v67;
  v78 = v17;
  v79 = v13;
  v32 = v65;
  v80 = v29;
  v81 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v60;
  sub_21CB84064();
  (*(v61 + 8))(v23, v33);
  v34 = v63;
  sub_21CACDB6C(v75, v63);
  v35 = (v66[80] + 16) & ~v66[80];
  v36 = swift_allocObject();
  sub_21CACDBD0(v34, v36 + v35);
  v37 = v72;
  v38 = *(v71 + 36);
  v66 = v26;
  v39 = &v26[v38];
  *v39 = sub_21CACDC34;
  v39[1] = v36;
  v39[2] = 0;
  v39[3] = 0;
  *v37 = 0xD00000000000001FLL;
  v37[1] = 0x800000021CB9A3F0;
  v40 = *MEMORY[0x277D4D788];
  (*(v74 + 104))();
  sub_21CB80B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78C0, &qword_21CBC6268);
  v41 = *(v68 + 72);
  v42 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  *(swift_allocObject() + 16) = xmmword_21CBA0690;
  sub_21CB80B24();
  sub_21CB80BD4();
  v43 = sub_21CB80BE4();
  v44 = *(v43 - 8);
  v45 = v31;
  result = (*(v44 + 48))(v31, 1, v43);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v47 = sub_21CACDC94();
    v48 = v54;
    v49 = v71;
    v50 = v72;
    v51 = v66;
    sub_21CB84074();

    (*(v70 + 8))(v32, v57);
    (*(v74 + 8))(v50, v73);
    sub_21C78573C(v51);
    (*(v44 + 8))(v45, v43);
    v77 = *(v75 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
    sub_21CB84D74();
    v52 = v80;
    type metadata accessor for PMConfigureCredentialProviderExtensionView();
    *&v77 = v49;
    *(&v77 + 1) = v47;
    swift_getOpaqueTypeConformance2();
    sub_21CACDE1C();
    sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView);
    v53 = v56;
    sub_21CB847C4();

    return (*(v55 + 8))(v48, v53);
  }

  return result;
}

uint64_t sub_21CACD610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  type metadata accessor for PMPasswordOptionsViewModel();
  sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel);
  sub_21CB82134();
  v13 = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
  sub_21CB84D74();
  *a2 = sub_21CB82674();
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = sub_21C95FA68;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v8 = v12;

  sub_21C70C78C();
  sub_21C70AC30();
}

uint64_t sub_21CACD788(uint64_t a1)
{
  v2 = type metadata accessor for PMPasswordOptionsDefaultAppsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21CACDB6C(a1, v5);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21CACDBD0(v5, v13 + v12);
  sub_21C98B308(0, 0, v9, &unk_21CBC62B0, v13);
}

uint64_t sub_21CACD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21CACD9D8, v6, v5);
}

uint64_t sub_21CACD9D8()
{
  v1 = v0[2];
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = *(v1 + 40);
  type metadata accessor for PMOTPAuthHandlerManager();
  sub_21C70D6DC(&qword_27CDF26C0, type metadata accessor for PMOTPAuthHandlerManager);
  v0[6] = sub_21CB82134();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_21C949B9C;

  return sub_21CA90F70();
}

id sub_21CACDAD8@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v5 = *a1;
  *a2 = *a1;
  v3 = *(type metadata accessor for PMConfigureCredentialProviderExtensionView() + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();

  return v5;
}

uint64_t sub_21CACDB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsDefaultAppsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CACDBD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsDefaultAppsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CACDC34()
{
  v1 = *(type metadata accessor for PMPasswordOptionsDefaultAppsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CACD788(v2);
}

unint64_t sub_21CACDC94()
{
  result = qword_27CDF78C8;
  if (!qword_27CDF78C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7898, &qword_21CBC6248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7890, &qword_21CBC6240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7888, &qword_21CBC6238);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF78B8, &qword_27CDF7888, &qword_21CBC6238);
    sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF78C8);
  }

  return result;
}

unint64_t sub_21CACDE1C()
{
  result = qword_27CDF78D8;
  if (!qword_27CDF78D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF78D8);
  }

  return result;
}

uint64_t sub_21CACDE70(uint64_t a1)
{
  v4 = *(type metadata accessor for PMPasswordOptionsDefaultAppsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CACD940(a1, v6, v7, v1 + v5);
}

PMPasswordOptionsController __swiftcall PMPasswordOptionsController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PMPasswordOptionsController()
{
  result = qword_27CDF78E8;
  if (!qword_27CDF78E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF78E8);
  }

  return result;
}

id sub_21CACE094(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  if (a2)
  {
    v16 = sub_21CB85584();
  }

  else
  {
    v16 = 0;
  }

  v22.receiver = v4;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, v16, a3);

  v18 = v17;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v15, v8);
  v20 = sub_21CB85584();

  [v18 setTitle_];

  return v18;
}

void sub_21CACE360()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for PMPasswordOptionsView();
  v4 = *(*(v3 - 8) + 64);
  *&v5 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewDidLoad, v5);
  sub_21CACE64C(v7);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7958, &unk_21CBC62E0));
  v9 = sub_21CB833B4();
  [v1 addChildViewController_];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  [v10 setAutoresizingMask_];

  v12 = [v9 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = [v1 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v12 setFrame_];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = v23;
  v25 = [v9 view];

  if (v25)
  {
    [v24 addSubview_];

    [v9 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_21CACE64C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CACE7C0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_21C95FA68;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECDA8, &qword_21CBA5910);
  sub_21CB84D44();
  *(a1 + 48) = v9;
  v2 = type metadata accessor for PMPasswordOptionsView();
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + v2[8];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = v2[9];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v6 = v2[10];
  v7 = [objc_opt_self() pm_defaults];
  result = sub_21CB81E74();
  *(a1 + v6) = result;
  return result;
}

uint64_t sub_21CACE7C0()
{
  v0 = type metadata accessor for PMPasswordOptionsViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(MEMORY[0x277D49DB8]) init];
  *(v3 + 24) = 0;
  v4 = [objc_opt_self() sharedFeatureManager];
  [v4 shouldAutoFillPasswords];

  sub_21CB81D74();
  *(v3 + 24) = 0;
  return v3;
}

uint64_t sub_21CACE884@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v77 - v4;
  v79 = sub_21CB80B34();
  v100 = *(v79 - 8);
  v101 = v79 - 8;
  v93 = v100;
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v99 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85444();
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v7);
  v98 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMPasswordOptionsView();
  v96 = *(v10 - 8);
  v95 = *(v96 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21CB81024();
  v91 = *(v92 - 8);
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v77 - v15;
  v16 = sub_21CB829D4();
  v83 = *(v16 - 8);
  v17 = *(v83 + 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7970, &qword_21CBC6368);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v77 - v23;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7978, &qword_21CBC6370);
  v86 = *(v85 - 8);
  v25 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = &v77 - v26;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7980, &qword_21CBC6378);
  v88 = *(v87 - 8);
  v27 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  v82 = &v77 - v28;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7988, &qword_21CBC6380);
  v29 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v103 = &v77 - v30;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7990, &qword_21CBC6388);
  v77 = *(v78 - 8);
  v31 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v102 = &v77 - v32;
  v107 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7998, &qword_21CBC6390);
  sub_21C6EADEC(&qword_27CDF79A0, &qword_27CDF7998, &qword_21CBC6390);
  sub_21CB83EF4();
  sub_21CB85294();
  v33 = sub_21C6EADEC(&qword_27CDF79A8, &qword_27CDF7970, &qword_21CBC6368);
  v34 = sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v35 = v20;
  v36 = v16;
  sub_21CB849C4();
  (*(v83 + 1))(v19, v16);
  (*(v21 + 8))(v24, v35);
  v83 = "com.apple.graphic-icon.autofill";
  v37 = v84;
  sub_21CB81014();
  v38 = v89;
  sub_21CB81014();
  v39 = sub_21CB80FF4();
  v41 = v40;
  v42 = *(v91 + 8);
  v43 = v38;
  v44 = v92;
  v42(v43, v92);
  v42(v37, v44);
  *&v112 = v39;
  *(&v112 + 1) = v41;
  v108 = v35;
  v109 = v36;
  v45 = v93;
  v110 = v33;
  v111 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = sub_21C71F3FC();
  v48 = MEMORY[0x277D837D0];
  v49 = v82;
  v50 = v85;
  v51 = v81;
  sub_21CB842F4();

  (*(v86 + 8))(v51, v50);
  v108 = v50;
  v109 = v48;
  v52 = v97;
  v110 = OpaqueTypeConformance2;
  v111 = v47;
  swift_getOpaqueTypeConformance2();
  v53 = v103;
  v54 = v87;
  sub_21CB84064();
  (*(v88 + 8))(v49, v54);
  v55 = v94;
  sub_21CACFFC0(v106, v94);
  v56 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v57 = swift_allocObject();
  sub_21CAD0024(v55, v57 + v56);
  v58 = v90;
  v59 = &v53[*(v90 + 36)];
  *v59 = sub_21CAD0088;
  v59[1] = v57;
  v59[2] = 0;
  v59[3] = 0;
  v60 = v98;
  *v98 = 0xD00000000000001FLL;
  v60[1] = 0x800000021CB9A3F0;
  v61 = *MEMORY[0x277D4D788];
  v62 = v60;
  (*(v104 + 104))();
  v63 = v99;
  sub_21CB80B24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78C0, &qword_21CBC6268);
  v64 = *(v100 + 72);
  v65 = v45;
  v66 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  *(swift_allocObject() + 16) = xmmword_21CBA0690;
  sub_21CB80B24();
  sub_21CB80BD4();
  v67 = sub_21CB80BE4();
  v68 = *(v67 - 8);
  v69 = v52;
  result = (*(v68 + 48))(v52, 1, v67);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v71 = sub_21CAD00E8();
    v72 = v58;
    v73 = v103;
    sub_21CB84074();

    (*(v65 + 8))(v63, v79);
    (*(v104 + 8))(v62, v105);
    sub_21C785E1C(v73);
    (*(v68 + 8))(v69, v67);
    v112 = *(v106 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
    sub_21CB84D74();
    v74 = v110;
    type metadata accessor for PMConfigureCredentialProviderExtensionView();
    *&v112 = v72;
    *(&v112 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    sub_21CACDE1C();
    sub_21C70D6DC(&qword_27CDF1D30, type metadata accessor for PMConfigureCredentialProviderExtensionView);
    v75 = v78;
    v76 = v102;
    sub_21CB847C4();

    return (*(v77 + 8))(v76, v75);
  }

  return result;
}

uint64_t sub_21CACF504@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79B8, &unk_21CBC63E0);
  v58 = *(v54 - 8);
  v11 = v58[8];
  MEMORY[0x28223BE20](v54);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v47 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  type metadata accessor for PMPasswordOptionsViewModel();
  sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel);
  sub_21CB82134();
  v18 = sub_21CB82674();
  v51 = v19;
  v52 = v18;
  sub_21CB82134();
  v60 = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF78D0, &qword_21CBC6270);
  sub_21CB84D74();
  v50 = v63;
  v49 = v64;
  v55 = v65;
  v48 = sub_21CB82674();
  v21 = v20;
  v59 = a1;
  sub_21CB81014();
  sub_21CB81014();
  v22 = sub_21CB80FF4();
  v24 = v23;
  v25 = *(v4 + 8);
  v25(v7, v3);
  v25(v10, v3);
  v63 = v22;
  v64 = v24;
  sub_21C71F3FC();
  v63 = sub_21CB84054();
  v64 = v26;
  LOBYTE(v65) = v27 & 1;
  v66 = v28;
  sub_21CB81014();
  v29 = sub_21CB81004();
  v31 = v30;
  v25(v10, v3);
  *&v60 = v29;
  *(&v60 + 1) = v31;
  *&v60 = sub_21CB84054();
  *(&v60 + 1) = v32;
  v61 = v33 & 1;
  v62 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690);
  v35 = v56;
  sub_21CB85044();
  v36 = v57;
  v37 = v58[2];
  v38 = v54;
  v37(v57, v35, v54);
  v39 = v53;
  v40 = v51;
  *v53 = v52;
  v39[1] = v40;
  v39[2] = v48;
  v39[3] = v21;
  v41 = v49;
  v39[4] = v50;
  v39[5] = v41;
  v39[6] = v55;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79C0, &qword_21CBC63F0);
  v37(v39 + *(v42 + 80), v36, v38);
  v43 = v39 + *(v42 + 96);
  *v43 = sub_21C95FA68;
  *(v43 + 1) = 0;
  v43[16] = 0;
  v44 = v55;

  sub_21C70C78C();
  v45 = v58[1];
  v45(v56, v38);
  sub_21C70AC30();
  v45(v57, v38);
}

uint64_t sub_21CACFA98(uint64_t a1)
{
  v2 = type metadata accessor for PMPasswordOptionsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21CACFFC0(a1, v5);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21CAD0024(v5, v13 + v12);
  sub_21C98B308(0, 0, v9, &unk_21CBC63D8, v13);
}

id sub_21CACFC50@<X0>(id *a1@<X0>, id *a2@<X8>)
{
  v5 = *a1;
  *a2 = *a1;
  v3 = *(type metadata accessor for PMConfigureCredentialProviderExtensionView() + 20);
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();

  return v5;
}

uint64_t sub_21CACFCD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for PMPasswordOptionsViewModel();
  sub_21C70D6DC(&qword_27CDF26B0, type metadata accessor for PMPasswordOptionsViewModel);
  v4 = *(sub_21CB82134() + 16);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = swift_allocObject();
  v7 = v4;
  sub_21CB81CF4();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v7;
  sub_21CB84F64();

  return sub_21CB84EA4();
}

uint64_t sub_21CACFE88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CACFFC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD0024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordOptionsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD0088()
{
  v1 = *(type metadata accessor for PMPasswordOptionsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CACFA98(v2);
}

unint64_t sub_21CAD00E8()
{
  result = qword_27CDF79B0;
  if (!qword_27CDF79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7988, &qword_21CBC6380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7980, &qword_21CBC6378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7978, &qword_21CBC6370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7970, &qword_21CBC6368);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF79A8, &qword_27CDF7970, &qword_21CBC6368);
    sub_21C70D6DC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF79B0);
  }

  return result;
}

uint64_t sub_21CAD02C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMPasswordOptionsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CACD940(a1, v6, v7, v1 + v5);
}

id sub_21CAD03C0@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21CAD0544(*(v1 + 32), a1);
}

uint64_t sub_21CAD03D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

void sub_21CAD044C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  v0 = [objc_opt_self() sharedFeatureManager];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  [v0 setShouldAutoFillPasswords_];
}

id sub_21CAD0544@<X0>(id a1@<X2>, _BYTE *a2@<X8>)
{
  result = [a1 isOneTimeCodeAutoDeletionEnabled];
  *a2 = result;
  return result;
}

id sub_21CAD0578(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CB81D44();
  }

  return [a5 setIsOneTimeCodeAutoDeletionEnabled_];
}

uint64_t sub_21CAD05F4()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI26PMPasswordOptionsViewModel__shouldEnablePasswordAutoFill;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMWiFiQRCodeView()
{
  result = qword_27CDF79E0;
  if (!qword_27CDF79E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAD0720()
{
  type metadata accessor for PMWiFiNetwork();
  if (v0 <= 0x3F)
  {
    sub_21C721A6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_21CAD07C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A10, &qword_21CBC6598);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-v6];
  *v7 = sub_21CB832E4();
  *(v7 + 1) = 0x404E000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A20, &unk_21CBC65A0);
  sub_21CAD0A30(a1, &v7[*(v8 + 44)]);
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3600, &qword_21CBB7D10);
  sub_21C6EADEC(&qword_27CDF7A18, &qword_27CDF7A10, &qword_21CBC6598);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
  v10 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  v26 = v9;
  v27 = v10;
  swift_getOpaqueTypeConformance2();
  sub_21CB84894();
  sub_21C6EA794(v7, &qword_27CDF7A10, &qword_21CBC6598);
  v11 = sub_21CB83D44();
  sub_21CB81F24();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A08, &qword_21CBC6590) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  v21 = sub_21CB83CD4();
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79F0, &qword_21CBC6588) + 36);
  *v22 = v21;
  result = 0.0;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 1;
  return result;
}

uint64_t sub_21CAD0A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v79 = sub_21CB84BD4();
  v78 = *(v79 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A28, &qword_21CBC65B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v67 - v9;
  MEMORY[0x28223BE20](v10);
  v87 = &v67 - v11;
  v84 = sub_21CB83274();
  v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB81024();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A30, &unk_21CBC65B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v86 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v67 - v23;
  sub_21CB81014();
  sub_21CB81004();
  v24 = *(v15 + 8);
  v76 = v14;
  v75 = v15 + 8;
  v73 = v24;
  v24(v18, v14);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v25 = swift_allocObject();
  v69 = xmmword_21CBA0690;
  *(v25 + 16) = xmmword_21CBA0690;
  v80 = a1;
  v27 = *(a1 + 16);
  v26 = *(a1 + 24);
  *(v25 + 56) = MEMORY[0x277D837D0];
  v68 = sub_21C7C0050();
  *(v25 + 64) = v68;
  v70 = v27;
  *(v25 + 32) = v27;
  *(v25 + 40) = v26;
  v71 = v26;

  v28 = sub_21CB85594();
  v30 = v29;

  *&v92 = v28;
  *(&v92 + 1) = v30;
  v74 = sub_21C71F3FC();
  v31 = sub_21CB84054();
  v33 = v32;
  LOBYTE(v30) = v34;
  sub_21CB83DB4();
  sub_21CB83DA4();

  v35 = sub_21CB84024();
  v37 = v36;
  LOBYTE(a1) = v38;

  sub_21C74A72C(v31, v33, v30 & 1);

  LODWORD(v92) = sub_21CB837B4();
  v39 = sub_21CB83FC4();
  v41 = v40;
  LOBYTE(v30) = v42;
  v44 = v43;
  sub_21C74A72C(v35, v37, a1 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v94) = v30 & 1;
  *&v92 = v39;
  *(&v92 + 1) = v41;
  v93[0] = v30 & 1;
  *&v93[8] = v44;
  *&v93[16] = KeyPath;
  *&v93[24] = 1;
  v93[26] = 1;
  v46 = v82;
  sub_21CB83264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A38, &unk_21CBC65F8);
  sub_21CAD1FF0();
  v47 = v81;
  sub_21CB84594();
  (*(v83 + 8))(v46, v84);
  v99 = v92;
  *v100 = *v93;
  *&v100[11] = *&v93[11];
  sub_21C6EA794(&v99, &qword_27CDF7A38, &unk_21CBC65F8);
  if (sub_21CAD13B0())
  {
    v48 = v78;
    v49 = v77;
    v50 = v79;
    (*(v78 + 104))(v77, *MEMORY[0x277CE0FE0], v79);
    v51 = sub_21CB84C64();

    (*(v48 + 8))(v49, v50);
    sub_21CB85214();
    sub_21CB82374();
    *&v92 = v51;
    *(&v92 + 1) = v94;
    v93[0] = v95;
    *&v93[8] = v96;
    v93[16] = v97;
    *&v93[24] = v98;
    sub_21CB81014();
    sub_21CB81004();
    v73(v18, v76);
    v52 = swift_allocObject();
    *(v52 + 16) = v69;
    v53 = v68;
    *(v52 + 56) = MEMORY[0x277D837D0];
    *(v52 + 64) = v53;
    *(v52 + 32) = v70;
    *(v52 + 40) = v71;

    v54 = sub_21CB85594();
    v56 = v55;

    v90 = v54;
    v91 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF09A8, &unk_21CBAF7E0);
    sub_21C8FD198();
    v57 = v85;
    sub_21CB843E4();

    v58 = 0;
  }

  else
  {
    v58 = 1;
    v57 = v85;
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3AD8, &qword_21CBB8B70);
  (*(*(v59 - 8) + 56))(v57, v58, 1, v59);
  v60 = v87;
  sub_21CAD207C(v57, v87);
  v61 = v86;
  sub_21C6EDBAC(v47, v86, &qword_27CDF7A30, &unk_21CBC65B8);
  v62 = v88;
  sub_21C6EDBAC(v60, v88, &qword_27CDF7A28, &qword_21CBC65B0);
  v63 = v89;
  sub_21C6EDBAC(v61, v89, &qword_27CDF7A30, &unk_21CBC65B8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A48, &unk_21CBC6608);
  sub_21C6EDBAC(v62, v63 + *(v64 + 48), &qword_27CDF7A28, &qword_21CBC65B0);
  v65 = v63 + *(v64 + 64);
  *v65 = 0;
  *(v65 + 8) = 1;
  sub_21C6EA794(v60, &qword_27CDF7A28, &qword_21CBC65B0);
  sub_21C6EA794(v47, &qword_27CDF7A30, &unk_21CBC65B8);
  sub_21C6EA794(v62, &qword_27CDF7A28, &qword_21CBC65B0);
  return sub_21C6EA794(v61, &qword_27CDF7A30, &unk_21CBC65B8);
}

uint64_t sub_21CAD13B0()
{
  v1 = sub_21CB84BE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + *(type metadata accessor for PMWiFiNetwork() + 36)) & 1) == 0)
  {
    v6 = sub_21C807A74(v0);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      v11 = [objc_opt_self() QRCodeGenerator];
      v12 = sub_21C98C72C(v8, v9);
      v14 = v13;
      v15 = sub_21CB80C64();
      sub_21C7A34C0(v12, v14);
      [v11 setMessage_];

      v16 = [v11 outputImage];
      if (v16)
      {
        v17 = v16;
        [v16 extent];
        v18 = [v10 createCGImage:v17 fromRect:?];
        if (v18)
        {
          v19 = v18;
          [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
          sub_21CB84BA4();
          (*(v2 + 104))(v5, *MEMORY[0x277CE0FF8], v1);
          v20 = sub_21CB84BF4();

          (*(v2 + 8))(v5, v1);
          return v20;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21CAD15FC(uint64_t a1)
{
  v2 = sub_21CB83604();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_21CB835C4();
  v12 = a1;
  type metadata accessor for PMPlatformRoleButton();
  sub_21C98AE4C();
  sub_21CB82194();
  v9 = sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
  MEMORY[0x21CF131E0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CAD17A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMWiFiQRCodeView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81EE4();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21CAD1EC8(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21CAD1F2C(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21CAD1F90;
  v19[1] = v17;
  return result;
}

uint64_t sub_21CAD1994(uint64_t a1)
{
  v20 = sub_21CB82F84();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_21CB823B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMWiFiQRCodeView();
  sub_21C6EDBAC(a1 + *(v15 + 20), v9, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_21CB823A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21CAD1C1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF79F0, &qword_21CBC6588);
  sub_21CAD1C94();
  return sub_21CB82664();
}

unint64_t sub_21CAD1C94()
{
  result = qword_27CDF79F8;
  if (!qword_27CDF79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF79F0, &qword_21CBC6588);
    sub_21CAD1D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF79F8);
  }

  return result;
}

unint64_t sub_21CAD1D20()
{
  result = qword_27CDF7A00;
  if (!qword_27CDF7A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A08, &qword_21CBC6590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A10, &qword_21CBC6598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3600, &qword_21CBB7D10);
    sub_21C6EADEC(&qword_27CDF7A18, &qword_27CDF7A10, &qword_21CBC6598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC010, &qword_21CBAA950);
    sub_21C6EADEC(&qword_27CDF3640, &qword_27CDEC010, &qword_21CBAA950);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A00);
  }

  return result;
}

uint64_t sub_21CAD1EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiQRCodeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD1F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiQRCodeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD1F90()
{
  v1 = *(type metadata accessor for PMWiFiQRCodeView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CAD1994(v2);
}

unint64_t sub_21CAD1FF0()
{
  result = qword_27CDF7A40;
  if (!qword_27CDF7A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A38, &unk_21CBC65F8);
    sub_21C83A140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A40);
  }

  return result;
}

uint64_t sub_21CAD207C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7A28, &qword_21CBC65B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAD210C()
{
  sub_21C6EE6C0();
  result = sub_21CB85E44();
  qword_27CE186C0 = result;
  return result;
}

unint64_t sub_21CAD21D0()
{
  result = qword_27CDF7A70;
  if (!qword_27CDF7A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7A68, &qword_21CBC6620);
    sub_21C707B18();
    sub_21C707C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7A70);
  }

  return result;
}

uint64_t type metadata accessor for PMPasswordsSecurityView()
{
  result = qword_27CDF7AA8;
  if (!qword_27CDF7AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAD22D0()
{
  sub_21C705CFC();
  if (v0 <= 0x3F)
  {
    sub_21C721A6C();
    if (v1 <= 0x3F)
    {
      sub_21C713604(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21CAD23F8();
        if (v3 <= 0x3F)
        {
          sub_21C713604(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CAD23F8()
{
  if (!qword_27CDF7AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF55A8, &qword_21CBBE4B0);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF7AB8);
    }
  }
}

uint64_t sub_21CAD2478@<X0>(void *a1@<X8>)
{
  *a1 = 5;
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v15);

  type metadata accessor for PMAccountsState();
  sub_21C706210(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v3 = sub_21CB82674();
  v5 = v4;

  a1[1] = v3;
  a1[2] = v5;
  v6 = type metadata accessor for PMPasswordsSecurityView();
  v7 = v6[6];
  *(a1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v8 = a1 + v6[7];
  [objc_opt_self() isPasswordBreachDetectionEnabled];
  sub_21CB84D44();
  *v8 = v15;
  *(v8 + 1) = *(&v15 + 1);
  v9 = a1 + v6[8];
  sub_21CB84D44();
  *v9 = v15;
  *(v9 + 1) = *(&v15 + 1);
  v10 = a1 + v6[9];
  sub_21CB84D44();
  *v10 = v15;
  *(v10 + 1) = *(&v15 + 1);
  v11 = a1 + v6[10];
  sub_21CB84D44();
  *v11 = v15;
  *(v11 + 1) = *(&v15 + 1);
  v12 = a1 + v6[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF55A8, &qword_21CBBE4B0);
  sub_21CB84D44();
  *v12 = v15;
  *(v12 + 1) = v16;
  *(v12 + 4) = v17;
  v13 = a1 + v6[12];
  result = swift_getKeyPath();
  *v13 = result;
  v13[8] = 0;
  return result;
}

uint64_t sub_21CAD2700@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v74 = sub_21CB81024();
  v73 = *(v74 - 8);
  v2 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v71 = &v61 - v5;
  v6 = type metadata accessor for PMPasswordsSecurityView();
  v7 = v6 - 8;
  v69 = *(v6 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v65 = sub_21CB829D4();
  *&v66 = *(v65 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AC0, &qword_21CBC6740);
  v64 = *(v63 - 8);
  v12 = *(v64 + 8);
  MEMORY[0x28223BE20](v63);
  v14 = &v61 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AC8, &qword_21CBC6748);
  v15 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v76 = &v61 - v16;
  v62 = v1;
  v78 = v1;
  v77 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AD0, &qword_21CBC6750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AD8, &unk_21CBC6758);
  sub_21C6EADEC(&qword_27CDF7AE0, &qword_27CDF7AD0, &qword_21CBC6750);
  sub_21CAD9904(&qword_27CDF7AE8, &qword_27CDF7AD8, &unk_21CBC6758);
  sub_21CB83EE4();
  sub_21CB85294();
  sub_21C6EADEC(&qword_27CDF7AF0, &qword_27CDF7AC0, &qword_21CBC6740);
  sub_21C706210(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v17 = v76;
  v18 = v63;
  v19 = v65;
  sub_21CB849C4();
  (*(v66 + 8))(v11, v19);
  (*(v64 + 1))(v14, v18);
  v20 = v62;
  v21 = v62 + *(v7 + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v79) = v22;
  *(&v79 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v24 = v82;
  v25 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7AF8, &qword_21CBC6768) + 36)];
  *v25 = v24;
  *(v25 + 1) = sub_21CAD4250;
  *(v25 + 2) = 0;
  v26 = v20 + *(v7 + 52);
  v27 = v20;
  v28 = *(v26 + 32);
  v29 = *(v26 + 16);
  v79 = *v26;
  v80 = v29;
  v81 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B00, &unk_21CBC6770);
  sub_21CB84D54();
  v66 = v82;
  v65 = v83;
  v30 = v67;
  sub_21CAD9A8C(v20, v67, type metadata accessor for PMPasswordsSecurityView);
  sub_21CB858B4();
  v31 = sub_21CB858A4();
  v32 = *(v69 + 80);
  v33 = (v32 + 32) & ~v32;
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 16) = v31;
  *(v34 + 24) = v35;
  sub_21CAD9A24(v30, v34 + v33, type metadata accessor for PMPasswordsSecurityView);
  v64 = type metadata accessor for PMPasswordsSecurityView;
  sub_21CAD9A8C(v27, v30, type metadata accessor for PMPasswordsSecurityView);
  v36 = sub_21CB858A4();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = MEMORY[0x277D85700];
  sub_21CAD9A24(v30, v37 + v33, type metadata accessor for PMPasswordsSecurityView);
  sub_21CB84F64();
  v38 = v79;
  LODWORD(v69) = v80;
  sub_21CAD9A8C(v27, v30, type metadata accessor for PMPasswordsSecurityView);
  v39 = (v32 + 16) & ~v32;
  v40 = swift_allocObject();
  sub_21CAD9A24(v30, v40 + v39, type metadata accessor for PMPasswordsSecurityView);
  sub_21C7D33F0(0, 0, 0, 0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B08, &qword_21CBC6780);
  v42 = v76;
  v43 = &v76[*(v41 + 36)];
  *v43 = v38;
  v43[16] = v69;
  *(v43 + 17) = *v84;
  *(v43 + 5) = *&v84[3];
  *(v43 + 40) = v65;
  *(v43 + 24) = v66;
  *(v43 + 7) = sub_21CAD7E80;
  *(v43 + 8) = v40;
  sub_21CAD9A8C(v27, v30, v64);
  v44 = swift_allocObject();
  sub_21CAD9A24(v30, v44 + v39, type metadata accessor for PMPasswordsSecurityView);
  v45 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B10, &qword_21CBC6788) + 36));
  *v45 = sub_21CAD7EF0;
  v45[1] = v44;
  v45[2] = 0;
  v45[3] = 0;
  KeyPath = swift_getKeyPath();
  v47 = type metadata accessor for PMAppSecurityRecommendationsModel();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = sub_21C903D88();
  v51 = (v42 + *(v70 + 36));
  *v51 = KeyPath;
  v51[1] = v50;
  v52 = v71;
  sub_21CB81014();
  v53 = v72;
  sub_21CB81014();
  v54 = sub_21CB80FF4();
  v56 = v55;
  v57 = *(v73 + 8);
  v58 = v53;
  v59 = v74;
  v57(v58, v74);
  v57(v52, v59);
  *&v79 = v54;
  *(&v79 + 1) = v56;
  sub_21CAD7F08();
  sub_21C71F3FC();
  sub_21CB842F4();

  return sub_21C6EA794(v42, &qword_27CDF7AC8, &qword_21CBC6748);
}

uint64_t sub_21CAD3034@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B40, &qword_21CBC67D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B48, &qword_21CBC67E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B50, &unk_21CBC67E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v71 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v58 - v17;
  v60 = sub_21CB80964();
  v18 = *(v60 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v60);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21CB80974();
  v22 = *(v59 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v59);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21CB80994();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v58 - v30;
  v32 = sub_21CB809E4();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B58, &unk_21CBC67F8);
  v62 = *(v67 - 8);
  v34 = *(v62 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v58 - v37;
  v61 = a1;
  v72 = a1;
  sub_21CAD7C38();
  v39 = sub_21CB80BE4();
  (*(*(v39 - 8) + 56))(v31, 1, 1, v39);
  (*(v22 + 104))(v25, *MEMORY[0x277CC8BB0], v59);
  (*(v18 + 104))(v21, *MEMORY[0x277CC8B98], v60);
  sub_21CB80984();
  sub_21CB809D4();
  v73 = sub_21CB84044();
  v74 = v40;
  v75 = v41 & 1;
  v76 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690);
  v58 = v38;
  sub_21CB85064();
  v43 = v69;
  sub_21CAD3A28(v69);
  v44 = v70;
  sub_21CAD3EB0(v70);
  v45 = v63;
  sub_21CAD404C(v63);
  v46 = v62;
  v47 = *(v62 + 16);
  v48 = v66;
  v47(v66, v38, v67);
  v49 = v43;
  v50 = v71;
  sub_21C6EDBAC(v49, v71, &qword_27CDF7B50, &unk_21CBC67E8);
  v51 = v68;
  sub_21C6EDBAC(v44, v68, &qword_27CDF7B48, &qword_21CBC67E0);
  v52 = v65;
  sub_21C6EDBAC(v45, v65, &qword_27CDF7B40, &qword_21CBC67D8);
  v53 = v64;
  v54 = v67;
  v47(v64, v48, v67);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B60, &qword_21CBC6808);
  sub_21C6EDBAC(v50, &v53[v55[12]], &qword_27CDF7B50, &unk_21CBC67E8);
  sub_21C6EDBAC(v51, &v53[v55[16]], &qword_27CDF7B48, &qword_21CBC67E0);
  sub_21C6EDBAC(v52, &v53[v55[20]], &qword_27CDF7B40, &qword_21CBC67D8);
  sub_21C6EA794(v45, &qword_27CDF7B40, &qword_21CBC67D8);
  sub_21C6EA794(v70, &qword_27CDF7B48, &qword_21CBC67E0);
  sub_21C6EA794(v69, &qword_27CDF7B50, &unk_21CBC67E8);
  v56 = *(v46 + 8);
  v56(v58, v54);
  sub_21C6EA794(v52, &qword_27CDF7B40, &qword_21CBC67D8);
  sub_21C6EA794(v68, &qword_27CDF7B48, &qword_21CBC67E0);
  sub_21C6EA794(v71, &qword_27CDF7B50, &unk_21CBC67E8);
  return (v56)(v66, v54);
}

uint64_t sub_21CAD37F0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMPasswordsSecurityView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21CB85254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F84();

  return sub_21CB84EA4();
}

uint64_t sub_21CAD38FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CAD3A28@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_21CB830D4();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMPasswordsSecurityView();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C28, &qword_21CBC69A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v13 = *(v34 + 16);

  if (v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v14 = v34;
    sub_21CAD9A8C(v1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
    v15 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v16 = swift_allocObject();
    v17 = sub_21CAD9A24(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMPasswordsSecurityView);
    v34 = v14;
    MEMORY[0x28223BE20](v17);
    *(&v29 - 4) = &v34;
    *(&v29 - 3) = sub_21CAD9710;
    *(&v29 - 2) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C30, &qword_21CBC69F0);
    sub_21CAD979C();
    sub_21CB83F34();

    v18 = v32;
    sub_21CB830A4();
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C60, &qword_21CBC6A10) + 36);
    v20 = v31;
    (*(v31 + 16))(&v11[v19], v18, v2);
    v30 = v8;
    v21 = *(v20 + 56);
    v21(&v11[v19], 0, 1, v2);
    KeyPath = swift_getKeyPath();
    v23 = &v11[*(v7 + 36)];
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
    (*(v20 + 32))(v23 + v24, v18, v2);
    v21(v23 + v24, 0, 1, v2);
    v8 = v30;
    *v23 = KeyPath;
    v25 = v33;
    sub_21C716934(v11, v33, &qword_27CDF7C28, &qword_21CBC69A0);
    v26 = 0;
    v27 = v25;
  }

  else
  {
    v26 = 1;
    v27 = v33;
  }

  return (*(v8 + 56))(v27, v26, 1, v7);
}

uint64_t sub_21CAD3EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v4 = *(v9 + 16);

  if (v4)
  {
    MEMORY[0x28223BE20](v5);
    sub_21CAD618C();
    sub_21C71F3FC();
    sub_21CB84054();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C08, &qword_21CBC6990);
    sub_21CAD9408();
    sub_21CB85034();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C20, &qword_21CBC6998);
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_21CAD404C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B68, &qword_21CBC6810);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v9 = *(v13[1] + 16);

  if (v9)
  {
    MEMORY[0x28223BE20](v10);
    v13[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B70, &qword_21CBC6860);
    sub_21C6EADEC(&qword_27CDF7B78, &qword_27CDF7B70, &qword_21CBC6860);
    sub_21CB85054();
    (*(v4 + 32))(a1, v7, v3);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return (*(v4 + 56))(a1, v11, 1, v3);
}

id sub_21CAD4250(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();

  return [v2 setPasswordBreachDetectionEnabled_];
}

uint64_t sub_21CAD4298(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PMPasswordsSecurityView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = *(a1 + 16);
  v15 = a1[3];
  v16 = sub_21CB858E4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_21CAD9A8C(a2, v7, type metadata accessor for PMPasswordsSecurityView);
  sub_21CB858B4();

  v17 = v15;
  v18 = sub_21CB858A4();
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  sub_21CAD9A24(v7, v21 + v19, type metadata accessor for PMPasswordsSecurityView);
  v23 = v21 + v20;
  *v23 = v13;
  *(v23 + 8) = v12;
  *(v23 + 16) = v14;
  *(v23 + 24) = v17;
  sub_21C98B308(0, 0, v11, &unk_21CBC67C8, v21);
}

uint64_t sub_21CAD44C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 192) = a7;
  *(v8 + 96) = a6;
  *(v8 + 104) = a8;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 112) = sub_21CB858B4();
  *(v8 + 120) = sub_21CB858A4();
  v10 = sub_21CB85874();
  *(v8 + 128) = v10;
  *(v8 + 136) = v9;

  return MEMORY[0x2822009F8](sub_21CAD4568, v10, v9);
}

uint64_t sub_21CAD4568()
{
  v1 = v0[14];
  v0[18] = *(v0[10] + 16);
  v0[19] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v0[20] = v3;
  v0[21] = v2;

  return MEMORY[0x2822009F8](sub_21CAD4600, v3, v2);
}

uint64_t sub_21CAD4600()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 192);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(v0 + 176) = inited;
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = v4;
  *(inited + 40) = v1;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_21CAD46FC;
  v8 = *(v0 + 144);

  return sub_21C833508(inited);
}

uint64_t sub_21CAD46FC()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  swift_setDeallocating();
  sub_21C8F1684(v3 + 32);
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21CAD4848, v5, v4);
}

uint64_t sub_21CAD4848()
{
  v1 = v0[19];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_21CAD48AC, v2, v3);
}

uint64_t sub_21CAD48AC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CAD490C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 152))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CAD497C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CAD4AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = a5;

  v11 = a5;
  sub_21C83532C(inited);
  swift_setDeallocating();
  return sub_21C8F1684(inited + 32);
}

uint64_t sub_21CAD4B5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CAD4C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v54 = sub_21CB81024();
  v12 = *(v54 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v54);
  v15 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v50[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v52 = *(v19 - 8);
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v19);
  v60 = &v50[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v61 = &v50[-v23];
  v63 = a1;
  v64 = a2;
  v24 = sub_21C71F3FC();

  v53 = v24;
  v25 = sub_21CB84054();
  v55 = v26;
  v56 = v25;
  v51 = v27;
  v57 = v28;
  v58 = a3;
  v63 = a3;
  v64 = a4;
  v59 = a4;
  v29 = a5 & 1;
  v65 = a5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  MEMORY[0x21CF14A20](&v62, v30);
  if (v62 == 1)
  {
    sub_21CB81014();
    sub_21CB81014();
    v31 = sub_21CB80FF4();
    v33 = v32;
    v34 = *(v12 + 8);
    v35 = v15;
    v36 = v54;
    v34(v35, v54);
    v34(v18, v36);
  }

  else
  {
    sub_21CB81014();
    v31 = sub_21CB81004();
    v33 = v37;
    (*(v12 + 8))(v18, v54);
  }

  v63 = v31;
  v64 = v33;
  v38 = swift_allocObject();
  v39 = v59;
  *(v38 + 16) = v58;
  *(v38 + 24) = v39;
  *(v38 + 32) = v29;

  v40 = v61;
  sub_21CB84DE4();
  v41 = v52;
  v42 = *(v52 + 16);
  v43 = v60;
  v42(v60, v40, v19);
  v44 = v55;
  v45 = v56;
  *a6 = v56;
  *(a6 + 8) = v44;
  v46 = v51 & 1;
  *(a6 + 16) = v51 & 1;
  *(a6 + 24) = v57;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C00, &qword_21CBC6940);
  v42((a6 + *(v47 + 64)), v43, v19);
  sub_21C79B058(v45, v44, v46);
  v48 = *(v41 + 8);

  v48(v61, v19);
  v48(v43, v19);
  sub_21C74A72C(v45, v44, v46);
}

uint64_t sub_21CAD509C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v5 = a1;
  v6 = a2;
  v7 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  MEMORY[0x21CF14A20](&v4);
  LOBYTE(v5) = (v4 & 1) == 0;
  sub_21CB84F34();
}

uint64_t sub_21CAD5140(uint64_t a1, uint64_t a2)
{
  sub_21CAD5D4C(a2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C58, &qword_21CBC6A08);
  sub_21CAD9904(&qword_27CDEEDF8, &unk_27CDF4130, &qword_21CBB1B70);
  sub_21C6EADEC(&qword_27CDF7C50, &qword_27CDF7C58, &qword_21CBC6A08);
  return sub_21CB85034();
}

uint64_t sub_21CAD5268@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  v82 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v5 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v84 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C68, &unk_21CBC6A50);
  v103 = *(v7 - 8);
  v104 = v7;
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v7);
  v83 = &v82 - v9;
  v85 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v86 = (&v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v97 = &v82 - v14;
  v15 = type metadata accessor for PMAccount(0);
  v95 = *(v15 - 8);
  v96 = v15;
  v16 = *(v95 + 64);
  MEMORY[0x28223BE20](v15);
  v87 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C70, &qword_21CBC6A60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = &v82 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC0, &qword_21CBC68A8);
  v93 = *(v23 - 8);
  v94 = v23;
  v24 = *(v93 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v82 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BF8, &qword_21CBC68D8);
  v99 = *(v27 - 8);
  v100 = v27;
  v28 = *(v99 + 64);
  MEMORY[0x28223BE20](v27);
  v98 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v92 = &v82 - v31;
  v33 = *a1;
  v32 = *(a1 + 8);
  v34 = *(a1 + 16);
  v35 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v107);

  type metadata accessor for PMAccountsState();
  sub_21C706210(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v37 = sub_21CB82674();
  v39 = v38;

  v91 = &v82;
  v107 = v37;
  v108 = v39;
  v109 = v33;
  v110 = v32;
  v111 = v34;
  v112 = v35;
  MEMORY[0x28223BE20](v40);
  v106 = v34;
  *(&v82 - 6) = v3;
  *(&v82 - 5) = v33;
  *(&v82 - 4) = v32;
  *(&v82 - 24) = v34;
  *(&v82 - 2) = v35;

  v90 = v35;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BD0, &unk_21CBC68B8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v43 = sub_21CAD8F2C();
  v44 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB84154();

  v91 = &v82;
  MEMORY[0x28223BE20](v45);
  *(&v82 - 6) = v3;
  *(&v82 - 5) = v33;
  v88 = v33;
  v89 = v32;
  *(&v82 - 4) = v32;
  *(&v82 - 24) = v106;
  v46 = v90;
  *(&v82 - 2) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  v107 = v41;
  v108 = v42;
  v109 = v43;
  v110 = v44;
  swift_getOpaqueTypeConformance2();
  sub_21CAD9004();
  v47 = v92;
  v48 = v94;
  sub_21CB84204();
  (*(v93 + 8))(v26, v48);
  v49 = *(v3 + 16);
  v50 = v47;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v53 = v97;
    (*(v95 + 56))(v97, 1, 1, v96);
    v56 = v104;
    v57 = v101;
    goto LABEL_8;
  }

  v51 = *(v49 + 24);
  ObjectType = swift_getObjectType();
  v107 = v88;
  v108 = v89;
  LOBYTE(v109) = v106;
  v110 = v46;
  v53 = v97;
  (*(v51 + 56))(&v107, ObjectType, v51);
  swift_unknownObjectRelease();
  v54 = v96;
  v55 = (*(v95 + 48))(v53, 1, v96);
  v56 = v104;
  v57 = v101;
  if (v55 == 1)
  {
LABEL_8:
    sub_21C6EA794(v53, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_12:
    v71 = 1;
    goto LABEL_13;
  }

  v58 = v87;
  sub_21CAD9A24(v53, v87, type metadata accessor for PMAccount);
  v59 = v58 + *(v54 + 24);
  v60 = v86;
  sub_21CAD9A8C(v59, v86, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7198A0(v60, type metadata accessor for PMAccount.Storage);
LABEL_11:
    sub_21C7198A0(v58, type metadata accessor for PMAccount);
    goto LABEL_12;
  }

  v61 = *v60;
  v62 = [v61 hasValidWebsite];

  if (!v62)
  {
    goto LABEL_11;
  }

  v63 = v82;
  v64 = v84;
  sub_21CAD9A8C(v58, &v84[*(v82 + 20)], type metadata accessor for PMAccount);
  *v64 = swift_getKeyPath();
  *(v64 + 8) = 0;
  *(v64 + 16) = 0;
  v65 = (v64 + v63[7]);
  v66 = v63[9];
  *(v64 + v63[6]) = 0;
  v67 = (v64 + v66);
  *v65 = 0;
  v65[1] = 0;
  *(v64 + v63[8]) = 0;
  sub_21C805AD8();
  *v67 = 0;
  v67[1] = 0;
  v68 = sub_21CB83314();
  sub_21C7198A0(v58, type metadata accessor for PMAccount);
  v69 = v83;
  sub_21CAD9A8C(v64, v83, type metadata accessor for PMChangePasswordOnWebsiteLink);
  v70 = (v69 + *(v56 + 36));
  *v70 = v68;
  v70[1] = sub_21C7902AC;
  v70[2] = 0;
  sub_21C7198A0(v64, type metadata accessor for PMChangePasswordOnWebsiteLink);
  sub_21CAD9AF4(v69, v57);
  v71 = 0;
LABEL_13:
  (*(v103 + 56))(v57, v71, 1, v56);
  v73 = v98;
  v72 = v99;
  v74 = *(v99 + 16);
  v75 = v100;
  v74(v98, v50, v100);
  v76 = v102;
  sub_21C6EDBAC(v57, v102, &qword_27CDF7C70, &qword_21CBC6A60);
  v77 = v50;
  v78 = v105;
  v74(v105, v73, v75);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C78, &qword_21CBC6A68);
  sub_21C6EDBAC(v76, &v78[*(v79 + 48)], &qword_27CDF7C70, &qword_21CBC6A60);
  sub_21C6EA794(v57, &qword_27CDF7C70, &qword_21CBC6A60);
  v80 = *(v72 + 8);
  v80(v77, v75);
  sub_21C6EA794(v76, &qword_27CDF7C70, &qword_21CBC6A60);
  return (v80)(v73, v75);
}

uint64_t sub_21CAD5D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v51 = a5;
  v52 = a2;
  v10 = sub_21CB81024();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v46 - v15;
  v17 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (*(v53 + 16))
  {
    v19 = *(v53 + 32);
    v18 = *(v53 + 40);
    v20 = *(v53 + 48);
    v21 = *(v53 + 56);

    v48 = v21;

    v22 = a4 & 1;
    if (v18)
    {
      if (a3)
      {
        if (v19 == v52 && v18 == a3)
        {
          if (v20 != (a4 & 1))
          {
LABEL_20:

            v44 = v51;
            v45 = v51;
            sub_21C7D33AC(v19, v18, v20, v21);
            sub_21C7D33F0(v52, a3, v22, v44);

            v27 = v19;
            v28 = v18;
            v29 = v20;
            v30 = v21;
            goto LABEL_14;
          }
        }

        else if (sub_21CB86344() & 1) == 0 || ((v20 ^ a4))
        {
          goto LABEL_20;
        }

        v46[1] = sub_21C7EBFE0();

        v47 = a4 & 1;
        v35 = v51;
        sub_21C7D33AC(v19, v18, v20, v21);
        sub_21C7D33AC(v19, v18, v20, v21);
        v36 = v48;
        v37 = sub_21CB85DD4();
        sub_21C7D33F0(v19, v18, v20, v21);
        sub_21C7D33F0(v52, a3, v47, v51);

        sub_21C7D33F0(v19, v18, v20, v21);
        result = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        if ((v37 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_18:
        sub_21CB81014();
        sub_21CB81014();
        v38 = sub_21CB80FF4();
        v40 = v39;
        v41 = v50;
        v42 = *(v49 + 8);
        v42(v13, v50);
        v42(v16, v41);
        v53 = v38;
        v54 = v40;
        sub_21C71F3FC();
        result = sub_21CB84054();
        v33 = v43 & 1;
        goto LABEL_19;
      }

      v23 = v51;
      v26 = v51;
      sub_21C7D33AC(v19, v18, v20, v21);

      goto LABEL_13;
    }
  }

  else
  {

    v21 = 0;
    v20 = 0;
    v19 = 0;
    v22 = a4 & 1;
  }

  v23 = v51;
  if (!a3)
  {
    v25 = v51;
    sub_21C7D33F0(v19, 0, v20, v21);
    goto LABEL_18;
  }

  v24 = v23;
  v18 = 0;
LABEL_13:
  sub_21C7D33F0(v19, v18, v20, v21);
  v27 = v52;
  v28 = a3;
  v29 = v22;
  v30 = v23;
LABEL_14:
  sub_21C7D33F0(v27, v28, v29, v30);
  result = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
LABEL_19:
  *a6 = result;
  a6[1] = v32;
  a6[2] = v33;
  a6[3] = v34;
  return result;
}

uint64_t sub_21CAD618C()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v7 = *(v14 + 16);

  if (v7 >= *v0)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21CBA0690;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v10 = *(v14 + 16);

    v11 = MEMORY[0x277D83C10];
    *(v9 + 56) = MEMORY[0x277D83B88];
    *(v9 + 64) = v11;
    *(v9 + 32) = v10;
    v8 = sub_21CB85594();
  }

  else
  {
    sub_21CB81014();
    v8 = sub_21CB81004();
    (*(v2 + 8))(v5, v1);
  }

  return v8;
}

uint64_t sub_21CAD6410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMPasswordsSecurityView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B88, &qword_21CBC6870);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = a1 + *(v5 + 44);
  v14 = *v13;
  v15 = *(v13 + 8);
  LOBYTE(v25[0]) = v14;
  v25[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v24 == 1)
  {
    v16 = *(a1 + 16);
    swift_getKeyPath();
    v23 = v8;
    swift_getKeyPath();
    sub_21CB81DB4();

    v17 = v25[0];
    sub_21CAD9A8C(a1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
    v8 = v23;
    v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v19 = swift_allocObject();
    v20 = sub_21CAD9A24(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PMPasswordsSecurityView);
    v25[0] = v17;
    MEMORY[0x28223BE20](v20);
    *(&v23 - 4) = v25;
    *(&v23 - 3) = sub_21CAD94B8;
    *(&v23 - 2) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BB0, &qword_21CBC68A0);
    sub_21CAD8DA4();
    sub_21CB83F34();

    (*(v9 + 32))(a2, v12, v8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v9 + 56))(a2, v21, 1, v8);
}

uint64_t sub_21CAD673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B80, &qword_21CBC6868);
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = *(v99 + 64);
  MEMORY[0x28223BE20](v3);
  v92 = &v81 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v88 = *(v90 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v90);
  v81 = &v81 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v81 - v12;
  v13 = type metadata accessor for PMPasswordsSecurityView();
  v14 = v13 - 8;
  v82 = *(v13 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v13);
  v93 = v16;
  v84 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B88, &qword_21CBC6870);
  v86 = *(v87 - 8);
  v17 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B90, &qword_21CBC6878);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v98 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v102 = &v81 - v25;
  v26 = sub_21CB81024();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B98, &unk_21CBC6880);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v97 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v81 - v35;
  sub_21CB81014();
  sub_21CB81004();
  (*(v27 + 8))(v30, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_21CBA0690;
  v38 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v95 = v38;
  sub_21CB81DB4();

  v39 = *(v103 + 16);

  v40 = MEMORY[0x277D83C10];
  *(v37 + 56) = MEMORY[0x277D83B88];
  *(v37 + 64) = v40;
  *(v37 + 32) = v39;
  v41 = sub_21CB85594();
  v43 = v42;

  v44 = *(v14 + 48);
  v94 = a1;
  v45 = (a1 + v44);
  v46 = *(v45 + 1);
  v106 = *v45;
  LOBYTE(a1) = v106;
  v107 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v47 = v103;
  v48 = v104;
  LOBYTE(v39) = v105;
  *v36 = sub_21CB83074();
  *(v36 + 1) = 0;
  v49 = 1;
  v36[16] = 1;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BA0, &qword_21CBC6890) + 44);
  v96 = v36;
  sub_21CAD4C80(v41, v43, v47, v48, v39, &v36[v50]);

  LOBYTE(v103) = a1;
  v104 = v46;
  sub_21CB84D54();
  if (v106 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v51 = v103;
    v52 = v84;
    sub_21CAD9A8C(v94, v84, type metadata accessor for PMPasswordsSecurityView);
    v53 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v54 = swift_allocObject();
    v55 = sub_21CAD9A24(v52, v54 + v53, type metadata accessor for PMPasswordsSecurityView);
    v103 = v51;
    MEMORY[0x28223BE20](v55);
    *(&v81 - 4) = &v103;
    *(&v81 - 3) = sub_21CAD89D4;
    *(&v81 - 2) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BB0, &qword_21CBC68A0);
    sub_21CAD8DA4();
    v56 = v83;
    sub_21CB83F34();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v57 = *(v103 + 16);

    v58 = v56;
    if (v57)
    {
      sub_21CAD9A8C(v94, v52, type metadata accessor for PMPasswordsSecurityView);
      v59 = swift_allocObject();
      sub_21CAD9A24(v52, v59 + v53, type metadata accessor for PMPasswordsSecurityView);
      v60 = v81;
      sub_21CB84DA4();
      v61 = v88;
      v62 = v89;
      v63 = v90;
      (*(v88 + 32))(v89, v60, v90);
      v64 = 0;
    }

    else
    {
      v64 = 1;
      v62 = v89;
      v63 = v90;
      v61 = v88;
    }

    (*(v61 + 56))(v62, v64, 1, v63);
    v65 = v86;
    v66 = *(v86 + 16);
    v67 = v85;
    v68 = v58;
    v69 = v87;
    v66(v85, v58, v87);
    v70 = v91;
    sub_21C6EDBAC(v62, v91, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v71 = v92;
    v66(v92, v67, v69);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BF0, &unk_21CBC68C8);
    sub_21C6EDBAC(v70, v71 + *(v72 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
    sub_21C6EA794(v62, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v73 = *(v65 + 8);
    v73(v68, v69);
    sub_21C6EA794(v70, &qword_27CDEC2B8, &qword_21CBA3EB0);
    v73(v67, v69);
    sub_21C716934(v71, v102, &qword_27CDF7B80, &qword_21CBC6868);
    v49 = 0;
  }

  v74 = v102;
  (*(v99 + 56))(v102, v49, 1, v100);
  v75 = v96;
  v76 = v97;
  sub_21C6EDBAC(v96, v97, &qword_27CDF7B98, &unk_21CBC6880);
  v77 = v98;
  sub_21C6EDBAC(v74, v98, &qword_27CDF7B90, &qword_21CBC6878);
  v78 = v101;
  sub_21C6EDBAC(v76, v101, &qword_27CDF7B98, &unk_21CBC6880);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BA8, &qword_21CBC6898);
  sub_21C6EDBAC(v77, v78 + *(v79 + 48), &qword_27CDF7B90, &qword_21CBC6878);
  sub_21C6EA794(v74, &qword_27CDF7B90, &qword_21CBC6878);
  sub_21C6EA794(v75, &qword_27CDF7B98, &unk_21CBC6880);
  sub_21C6EA794(v77, &qword_27CDF7B90, &qword_21CBC6878);
  return sub_21C6EA794(v76, &qword_27CDF7B98, &unk_21CBC6880);
}

uint64_t sub_21CAD725C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v29 = a3;
  v30 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC0, &qword_21CBC68A8);
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = v27 - v8;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v34);

  type metadata accessor for PMAccountsState();
  sub_21C706210(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v15 = sub_21CB82674();
  v17 = v16;

  v27[1] = v27;
  v34 = v15;
  v35 = v17;
  v36 = v11;
  v37 = v10;
  v38 = v12;
  v39 = v13;
  MEMORY[0x28223BE20](v18);
  v28 = v12;
  v27[-6] = a2;
  v27[-5] = v11;
  v27[-4] = v10;
  LOBYTE(v27[-3]) = v12;
  v27[-2] = v13;

  v27[0] = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BD0, &unk_21CBC68B8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v21 = sub_21CAD8F2C();
  v22 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB84154();

  MEMORY[0x28223BE20](v23);
  v27[-6] = v24;
  v27[-5] = v11;
  v27[-4] = v10;
  LOBYTE(v27[-3]) = v28;
  v27[-2] = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  swift_getOpaqueTypeConformance2();
  sub_21CAD9004();
  v25 = v33;
  sub_21CB84204();
  return (*(v31 + 8))(v9, v25);
}

uint64_t sub_21CAD75FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 144))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CAD766C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21CAD7798(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for PMPasswordsSecurityView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_21CAD9A8C(a1, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  sub_21CAD9A24(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMPasswordsSecurityView);
  v15 = v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = a2;
  *(v15 + 8) = a3;
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;

  v16 = a5;
  return sub_21CB84DA4();
}

uint64_t sub_21CAD7934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for PMPasswordsSecurityView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_21CAD9A8C(a1, &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMPasswordsSecurityView);
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  sub_21CAD9A24(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PMPasswordsSecurityView);
  v17 = v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = a2;
  *(v17 + 8) = a3;
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;

  v18 = a5;
  sub_21CB84DA4();
  v19 = sub_21CB84A74();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  v22 = (a6 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = v19;
  return result;
}

void sub_21CAD7B08(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PMPasswordsSecurityView() + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B00, &unk_21CBC6770);
  sub_21CB84D54();
  if (v8)
  {
    sub_21C7D33F0(v7, v8, v9, v10);
  }

  *a2 = v8 != 0;
}

uint64_t sub_21CAD7B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 + *(type metadata accessor for PMPasswordsSecurityView() + 44));
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  sub_21C7D33AC(*v4, v7, v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7B00, &unk_21CBC6770);
  sub_21CB84D64();
  sub_21C7D33F0(v6, v7, v8, v9);
}

uint64_t sub_21CAD7C38()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() currentDevice];
  [v5 deviceClass];

  sub_21CB81014();
  v6 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v6;
}

void sub_21CAD7D98(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for PMPasswordsSecurityView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_21CAD7B08(v6, a1);
}

uint64_t sub_21CAD7E0C(uint64_t a1)
{
  v3 = *(type metadata accessor for PMPasswordsSecurityView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_21CAD7B98(a1, v4, v5, v6);
}

uint64_t sub_21CAD7E80(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMPasswordsSecurityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CAD4298(a1, v4);
}

unint64_t sub_21CAD7F08()
{
  result = qword_27CDF7B18;
  if (!qword_27CDF7B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AC8, &qword_21CBC6748);
    sub_21CAD7FC0();
    sub_21C6EADEC(&qword_27CDF6C48, &qword_27CDF6C50, &unk_21CBC2A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B18);
  }

  return result;
}

unint64_t sub_21CAD7FC0()
{
  result = qword_27CDF7B20;
  if (!qword_27CDF7B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7B10, &qword_21CBC6788);
    sub_21CAD804C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B20);
  }

  return result;
}

unint64_t sub_21CAD804C()
{
  result = qword_27CDF7B28;
  if (!qword_27CDF7B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7B08, &qword_21CBC6780);
    sub_21CAD80D8();
    sub_21CAD8250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B28);
  }

  return result;
}

unint64_t sub_21CAD80D8()
{
  result = qword_27CDF7B30;
  if (!qword_27CDF7B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AF8, &qword_21CBC6768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7AC0, &qword_21CBC6740);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF7AF0, &qword_27CDF7AC0, &qword_21CBC6740);
    sub_21C706210(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B30);
  }

  return result;
}

unint64_t sub_21CAD8250()
{
  result = qword_27CDF7B38;
  if (!qword_27CDF7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7B38);
  }

  return result;
}

uint64_t sub_21CAD82A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMPasswordsSecurityView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21C702EFC;

  return sub_21CAD44C4(a1, v7, v8, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_21CAD83F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA58, &qword_21CBC6B90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0518, &qword_21CBAED60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v38 - v15;
  v43 = type metadata accessor for PMAccount(0);
  v17 = *(v43 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v43);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2[1];
  v45 = *v2;
  v46 = v21;
  v47 = v2[2];
  v48 = v45;
  v22 = *(&v45 + 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = v20;
    v40 = v12;
    v41 = v7;
    v42 = v9;
    v23 = *(v22 + 24);
    ObjectType = swift_getObjectType();
    v25 = v2[2];
    v44[0] = v2[1];
    v44[1] = v25;
    v26 = v8;
    v27 = a1;
    v28 = *(v23 + 56);

    v28(v44, ObjectType, v23);
    a1 = v27;
    v8 = v26;
    sub_21C6EA794(&v48, &qword_27CDEB4E0, &qword_21CBA5F00);
    v9 = v42;
    swift_unknownObjectRelease();
    if ((*(v17 + 48))(v16, 1, v43) != 1)
    {
      v29 = v39;
      sub_21CAD9A24(v16, v39, type metadata accessor for PMAccount);
      v30 = *v29;
      v43 = v29[1];
      v31 = v43;
      v32 = v41;
      *v41 = v30;
      v32[1] = v31;
      v33 = v9;
      v34 = type metadata accessor for PMSystemSettingsNavigationDestination();
      swift_storeEnumTagMultiPayload();
      v35 = (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
      v38[2] = v38;
      MEMORY[0x28223BE20](v35);
      v38[1] = type metadata accessor for PMSecurityRecommendationsAccountRow();
      v38[0] = sub_21C706210(&qword_27CDF0660, type metadata accessor for PMSecurityRecommendationsAccountRow);
      sub_21C706210(&qword_27CDF7C80, type metadata accessor for PMSystemSettingsNavigationDestination);
      sub_21C706210(&qword_27CDF7C88, type metadata accessor for PMSystemSettingsNavigationDestination);
      sub_21C706210(&qword_27CDF7C90, type metadata accessor for PMSystemSettingsNavigationDestination);

      v36 = v40;
      sub_21CB82614();
      (*(v33 + 32))(a1, v36, v26);
      (*(v33 + 56))(a1, 0, 1, v26);
      return sub_21C7198A0(v29, type metadata accessor for PMAccount);
    }
  }

  else
  {
    (*(v17 + 56))(v16, 1, 1, v43);
  }

  sub_21C6EA794(v16, &unk_27CDEBE60, &unk_21CB9FF40);
  return (*(v9 + 56))(a1, 1, 1, v8);
}

uint64_t sub_21CAD892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21CAD9A8C(a1, a3, type metadata accessor for PMAccount);
  v5 = *(a2 + 32);
  v12[0] = *(a2 + 16);
  v12[1] = v5;
  v6 = type metadata accessor for PMSecurityRecommendationsAccountRow();
  v7 = a3 + *(v6 + 24);
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = (a3 + *(v6 + 20));
  v9 = *(a2 + 32);
  *v8 = *(a2 + 16);
  v8[1] = v9;
  return sub_21CAD9B98(v12, &v11);
}

uint64_t sub_21CAD8A00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82F54();
  *a1 = result;
  return result;
}

uint64_t sub_21CAD8A2C(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CB82F64();
}

uint64_t sub_21CAD8A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C48, &unk_21CBC69F8);
  sub_21C6EADEC(&qword_27CDF0648, &qword_27CDED828, &qword_21CBAF0E0);
  sub_21CAD9820();
  sub_21C8F12C4();
  return sub_21CB84FF4();
}

uint64_t sub_21CAD8B7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7BF8, &qword_21CBC68D8);
  sub_21C6EADEC(&qword_27CDF0648, &qword_27CDED828, &qword_21CBAF0E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC0, &qword_21CBC68A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC8, &qword_21CBC68B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BD0, &unk_21CBC68B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21CAD8F2C();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  swift_getOpaqueTypeConformance2();
  sub_21CAD9004();
  swift_getOpaqueTypeConformance2();
  sub_21C8F12C4();
  return sub_21CB84FF4();
}

unint64_t sub_21CAD8DA4()
{
  result = qword_27CDF7BB8;
  if (!qword_27CDF7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BB0, &qword_21CBC68A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC0, &qword_21CBC68A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC8, &qword_21CBC68B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BD0, &unk_21CBC68B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21CAD8F2C();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    swift_getOpaqueTypeConformance2();
    sub_21CAD9004();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BB8);
  }

  return result;
}

unint64_t sub_21CAD8F2C()
{
  result = qword_27CDF7BD8;
  if (!qword_27CDF7BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BD0, &unk_21CBC68B8);
    sub_21CAD8FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BD8);
  }

  return result;
}

unint64_t sub_21CAD8FB0()
{
  result = qword_27CDF7BE0;
  if (!qword_27CDF7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BE0);
  }

  return result;
}

unint64_t sub_21CAD9004()
{
  result = qword_27CDF7BE8;
  if (!qword_27CDF7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7BC8, &qword_21CBC68B0);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&unk_27CDEC1B0, &qword_27CDEB968, &qword_21CBA26F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7BE8);
  }

  return result;
}

uint64_t sub_21CAD9100(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMPasswordsSecurityView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_38Tm_0()
{
  v1 = type metadata accessor for PMPasswordsSecurityView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = v5 + v1[11];
  if (*(v14 + 8))
  {
  }

  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v14 + 32);

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  v17 = *(v0 + v15 + 8);

  return MEMORY[0x2821FE8E8](v0, v15 + 32, v2 | 7);
}

uint64_t sub_21CAD9368()
{
  v1 = *(type metadata accessor for PMPasswordsSecurityView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_21CAD4AA8(v0 + v2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
}

unint64_t sub_21CAD9408()
{
  result = qword_27CDF7C10;
  if (!qword_27CDF7C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7C08, &qword_21CBC6990);
    sub_21C6EADEC(&qword_27CDF7C18, &qword_27CDF7B88, &qword_21CBC6870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C10);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for PMPasswordsSecurityView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = v5 + v1[11];
  if (*(v14 + 8))
  {
  }

  v15 = *(v14 + 32);

  sub_21C7025C4(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CAD9710(uint64_t a1)
{
  v3 = *(type metadata accessor for PMPasswordsSecurityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CAD5140(a1, v4);
}

unint64_t sub_21CAD979C()
{
  result = qword_27CDF7C38;
  if (!qword_27CDF7C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7C30, &qword_21CBC69F0);
    sub_21CAD9820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C38);
  }

  return result;
}

unint64_t sub_21CAD9820()
{
  result = qword_27CDF7C40;
  if (!qword_27CDF7C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7C48, &unk_21CBC69F8);
    sub_21CAD9904(&qword_27CDEEDF8, &unk_27CDF4130, &qword_21CBB1B70);
    sub_21C6EADEC(&qword_27CDF7C50, &qword_27CDF7C58, &qword_21CBC6A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C40);
  }

  return result;
}

uint64_t sub_21CAD9904(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CAD9970(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v4;
  v9 = v5;
  v10 = v6;
  return v2(v8);
}

uint64_t sub_21CAD99BC@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7[0] = *(v1 + 24);
  v7[1] = v3;
  v8 = v4;
  v9 = v5;
  return sub_21CAD5268(v7, a1);
}

uint64_t sub_21CAD9A24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAD9A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAD9AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7C68, &unk_21CBC6A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CAD9BF4()
{
  result = qword_27CDF7C98;
  if (!qword_27CDF7C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7CA0, &qword_21CBC6B98);
    sub_21C6EADEC(&qword_27CDF0510, &qword_27CDF0518, &qword_21CBAED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7C98);
  }

  return result;
}

uint64_t sub_21CAD9CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB0, &qword_21CBC6C40);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CB8, &qword_21CBC6C48);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v24[-v17];
  sub_21CAD9F48(1);
  if (*(a1 + 40))
  {
    v25 = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D54();
    v19 = v24[15] ^ 1;
  }

  else
  {
    v19 = 0;
  }

  sub_21CAD9F48(v19 & 1);
  sub_21C786B94(v18, v15);
  v20 = v5[2];
  v20(v8, v11, v4);
  sub_21C786B94(v15, a2);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CC0, &qword_21CBC6C50);
  v20((a2 + *(v21 + 48)), v8, v4);
  v22 = v5[1];
  v22(v11, v4);
  sub_21C786C04(v18);
  v22(v8, v4);
  return sub_21C786C04(v15);
}

uint64_t sub_21CAD9F48(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v8 = *v1;
  v7 = v1[1];
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v20 = 0;
  v19 = 0;
  *&v16 = v8;
  *(&v16 + 1) = v7;
  LOBYTE(v17) = a1;
  BYTE1(v17) = 1;
  *(&v17 + 1) = KeyPath;
  *v18 = 0;
  *&v18[8] = v10;
  *&v18[16] = 0x7FFFFFFFFFFFFFFFLL;
  v18[24] = 0;
  v11 = *MEMORY[0x277CE0980];
  v12 = sub_21CB83DC4();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CC8, &unk_21CBC6CB8);
  sub_21CADA198();
  sub_21CB840C4();
  sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
  v21[0] = v16;
  v21[1] = v17;
  v22[0] = *v18;
  *(v22 + 9) = *&v18[9];
  return sub_21C6EA794(v21, &qword_27CDF7CC8, &unk_21CBC6CB8);
}

uint64_t sub_21CADA12C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8 = v3;
  v9 = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = v8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CA8, &qword_21CBC6C38);
  return sub_21CAD9CE4(v7, a1 + *(v5 + 44));
}

unint64_t sub_21CADA198()
{
  result = qword_27CDF7CD0;
  if (!qword_27CDF7CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7CC8, &unk_21CBC6CB8);
    sub_21C7E42A8();
    sub_21C6EADEC(&qword_27CDEB900, &qword_27CDEB8F8, &qword_21CBA26C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7CD0);
  }

  return result;
}

unint64_t sub_21CADA250(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89F0, &unk_21CBC96F0);
    v2 = sub_21CB86224();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_21C731A9C(&v27, v29);
        sub_21C731A9C(v29, v30);
        sub_21C731A9C(v30, &v28);
        result = sub_21CB10A3C(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_21C731A9C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_21C731A9C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21CADA4A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
    v2 = sub_21CB86224();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + 2 * v13);
    v17 = *v16;
    v18 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_21C731A9C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_21C731A9C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_21CB86014();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_21C731A9C(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CADA76C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
    v2 = sub_21CB86224();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    v15 = (*(a1 + 56) + 16 * v13);
    v17 = *v15;
    v16 = v15[1];

    swift_dynamicCast();
    *&v34[0] = v17;
    *(&v34[0] + 1) = v16;
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_21C731A9C(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_21C731A9C(v33, v34);
    v18 = *(v2 + 40);
    result = sub_21CB86014();
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v7 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v21);
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*(v7 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_21C731A9C(v34, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CADAA28()
{
  v0 = [objc_opt_self() generalPasteboard];
  type metadata accessor for PMPasteboard();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_27CE18710 = result;
  return result;
}

void sub_21CADAA84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21CB80DD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
  inited = swift_initStackObject();
  v26 = xmmword_21CBA0690;
  *(inited + 16) = xmmword_21CBA0690;
  v14 = *MEMORY[0x277D76DD0];
  *(inited + 32) = sub_21CB855C4();
  *(inited + 40) = v15;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v16 = sub_21CB126C0(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &unk_27CDF3320, &unk_21CBA0E30);
  v31 = sub_21CB12AE4(MEMORY[0x277D84F90]);
  v17 = *MEMORY[0x277D76DC8];
  v18 = v17;
  if (a3)
  {
    sub_21CB80D54();
    v30 = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(v9 + 32))(boxed_opaque_existential_0, v12, v8);
    sub_21C731A9C(v29, v28);
    v20 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v20;
    sub_21C8D45C0(v28, v18, isUniquelyReferenced_nonNull_native);

    v31 = v27;
  }

  else
  {
    sub_21CADADBC(v17, v29);

    sub_21C6EA794(v29, &qword_27CDF4D90, &qword_21CBA9F00);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CE8, &qword_21CBC6CF8);
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  v23 = sub_21CADA250(v16);

  *(v22 + 32) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7CF0, &unk_21CBC6D00);
  v24 = sub_21CB85814();

  type metadata accessor for OptionsKey(0);
  sub_21CADB8A4(&qword_27CDEA948, type metadata accessor for OptionsKey);
  v25 = sub_21CB85464();

  [v4 setItems:v24 options:v25];
}

double sub_21CADADBC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_21CB10C50(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21C8D5D6C();
      v11 = v13;
    }

    sub_21C731A9C((*(v11 + 56) + 32 * v8), a2);
    sub_21CADB194(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_21CADAE5C(int64_t a1, uint64_t a2)
{
  v32 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v32);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v31 = (sub_21CB85F34() + 1) & ~v10;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13;
      v15 = v13 * v11;
      sub_21CADB840(*(a2 + 48) + v13 * v11, v8);
      v16 = *(a2 + 40);
      sub_21CB86484();
      type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
      sub_21CADB8A4(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      sub_21CB85494();
      v17 = *&v8[*(v32 + 20)];
      sub_21CB864A4();
      if (v17)
      {
        v18 = v17;
        sub_21CB85DE4();
      }

      v19 = sub_21CB864D4();
      result = sub_21CADB8EC(v8);
      v20 = v19 & v12;
      if (a1 >= v31)
      {
        v13 = v14;
        if (v20 < v31)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = v14;
        if (v20 >= v31)
        {
          goto LABEL_12;
        }
      }

      if (a1 >= v20)
      {
LABEL_12:
        if (v13 * a1 < v15 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v15 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v13 * a1 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v21 = *(a2 + 56);
        v22 = *(*(type metadata accessor for PMAccount(0) - 8) + 72);
        v23 = v22 * a1;
        result = v21 + v22 * a1;
        v24 = v22 * v11;
        v25 = v21 + v22 * v11 + v22;
        if (v23 < v24 || result >= v25)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v11;
          v13 = v14;
        }

        else
        {
          a1 = v11;
          v13 = v14;
          if (v23 != v24)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v11;
          }
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21CADB194(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CB85F34() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_21CB855C4();
      sub_21CB86484();
      v12 = v11;
      sub_21CB854C4();
      v13 = sub_21CB864D4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_21CADB35C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CB85F34() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + v6);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v11);
      result = sub_21CB864D4();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v9 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CADB4FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CB85F34() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_21CB86484();
      MEMORY[0x21CF15F90](v10);
      result = sub_21CB864D4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CADB690(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CB85F34() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21CB86484();

      sub_21CB854C4();
      v13 = sub_21CB864D4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CADB840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CADB8A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CADB8EC(uint64_t a1)
{
  v2 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PMRecentlyDeletedAccountRow()
{
  result = qword_27CDF7CF8;
  if (!qword_27CDF7CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CADB9BC()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C71ED98();
    if (v1 <= 0x3F)
    {
      sub_21C7226D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21CADBA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v50 = a2;
  v2 = type metadata accessor for PMRecentlyDeletedAccountRow();
  v3 = (v2 - 8);
  v49 = *(v2 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF26A8, &unk_21CBB4690);
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v44);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D30, &qword_21CBC6DA0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  (*(v6 + 8))(v9, v5);
  v54 = v21;
  v55 = v23;
  v24 = v45;
  v25 = (v45 + v3[9]);
  v26 = *v25;
  v27 = v25[1];
  LOBYTE(v25) = *(v25 + 16);
  v51 = v26;
  v52 = v27;
  v53 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F54();
  sub_21C71F3FC();
  sub_21CB84EC4();
  sub_21C6EADEC(&qword_27CDF26A0, &qword_27CDF26A8, &unk_21CBB4690);
  v28 = v44;
  sub_21CB841E4();
  (*(v10 + 8))(v13, v28);
  LOBYTE(v5) = *(v24 + v3[8]);
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v5;
  v31 = &v20[*(v15 + 44)];
  *v31 = KeyPath;
  v31[1] = sub_21C735744;
  v31[2] = v30;
  v32 = v24;
  v33 = (v24 + v3[10]);
  v35 = *v33;
  v34 = v33[1];
  v36 = v47;
  sub_21CADC7EC(v32, v47, type metadata accessor for PMRecentlyDeletedAccountRow);
  v37 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v38 = swift_allocObject();
  sub_21CADC8AC(v36, v38 + v37, type metadata accessor for PMRecentlyDeletedAccountRow);
  v39 = v46;
  sub_21C786E48(v20, v46);
  v40 = v50;
  sub_21C786E48(v39, v50);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D38, &unk_21CBC6DD8) + 48));
  *v41 = sub_21CADC77C;
  v41[1] = v38;
  v41[2] = v35;
  v41[3] = v34;
  swift_retain_n();

  sub_21C6EA794(v20, &qword_27CDF7D30, &qword_21CBC6DA0);

  return sub_21C6EA794(v39, &qword_27CDF7D30, &qword_21CBC6DA0);
}

uint64_t sub_21CADBF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for PMAccountRow();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v9 = &v40 - v8;
  sub_21CADC7EC(a1, v6, type metadata accessor for PMAccount);
  v10 = type metadata accessor for PMRecentlyDeletedAccountRow();
  v11 = (a1 + *(v10 + 20));
  v12 = v11[1];
  v41 = *v11;

  v13 = sub_21CB837E4();
  v14 = &v6[v3[7]];
  v15 = MEMORY[0x277CE04E8];
  *(v14 + 3) = MEMORY[0x277CE04F8];
  *(v14 + 4) = v15;
  *v14 = v13;
  v16 = v3[9];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v18 = &v6[v16];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v44);

  type metadata accessor for PMGroupsStore();
  sub_21CADC854();
  v19 = sub_21CB82674();
  v21 = v20;

  *v18 = v19;
  v18[1] = v21;
  v22 = &v6[v3[10]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v6[v3[11]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v3[12];
  *&v6[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v25 = v3[13];
  *&v6[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v26 = v3[14];
  *&v6[v26] = swift_getKeyPath();
  v27 = &v6[v3[5]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v6[v3[6]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v6[v3[8]];
  *v29 = v41;
  *(v29 + 1) = v12;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21CADC8AC(v6, v9, type metadata accessor for PMAccountRow);
  v30 = &v9[*(v42 + 36)];
  v31 = v49;
  *(v30 + 4) = v48;
  *(v30 + 5) = v31;
  *(v30 + 6) = v50;
  v32 = v45;
  *v30 = v44;
  *(v30 + 1) = v32;
  v33 = v47;
  *(v30 + 2) = v46;
  *(v30 + 3) = v33;
  v34 = *(a1 + *(v10 + 24));
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  v37 = v43;
  sub_21C7EC4B8(v9, v43);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC18, &unk_21CBC6EF0);
  v39 = (v37 + *(result + 36));
  *v39 = v35;
  v39[1] = sub_21C87E800;
  v39[2] = v36;
  return result;
}

uint64_t sub_21CADC370(uint64_t a1)
{
  result = type metadata accessor for PMRecentlyDeletedAccountRow();
  if ((*(a1 + *(result + 24)) & 1) == 0)
  {
    v3 = (a1 + *(result + 28));
    v4 = *v3;
    v5 = v3[1];
    v6 = *(v3 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    MEMORY[0x21CF14A20](&v7);
    sub_21CB84F34();
  }

  return result;
}

uint64_t sub_21CADC440(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D08, &qword_21CBC6D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  *v8 = sub_21CB83074();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D10, &qword_21CBC6D88);
  sub_21CADBA8C(v2, &v8[*(v9 + 44)]);
  v8[*(v5 + 36)] = 0;
  sub_21CADC7EC(v2, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMRecentlyDeletedAccountRow);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21CADC8AC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PMRecentlyDeletedAccountRow);
  sub_21CADC698();
  sub_21CB841F4();

  return sub_21C6EA794(v8, &qword_27CDF7D08, &qword_21CBC6D80);
}

uint64_t sub_21CADC638()
{
  v1 = *(type metadata accessor for PMRecentlyDeletedAccountRow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CADC370(v2);
}

unint64_t sub_21CADC698()
{
  result = qword_27CDF7D18;
  if (!qword_27CDF7D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7D08, &qword_21CBC6D80);
    sub_21C6EADEC(&qword_27CDF7D20, &qword_27CDF7D28, &unk_21CBC6D90);
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D18);
  }

  return result;
}

uint64_t sub_21CADC77C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMRecentlyDeletedAccountRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CADBF58(v4, a1);
}

uint64_t sub_21CADC7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CADC854()
{
  result = qword_27CDEB7C8;
  if (!qword_27CDEB7C8)
  {
    type metadata accessor for PMGroupsStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB7C8);
  }

  return result;
}

uint64_t sub_21CADC8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CADC954(uint64_t a1)
{
  v2 = sub_21CADE070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADC990(uint64_t a1)
{
  v2 = sub_21CADE070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADC9CC(void *a1)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DA8, &qword_21CBC7000);
  v36 = *(v38 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - v3;
  v4 = sub_21CB85C44();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DB0, &qword_21CBC7008);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DB8, &qword_21CBC7010);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DC0, &qword_21CBC7018);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v42);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CADDF10();
  v24 = v40;
  sub_21CB864F4();
  sub_21CADDEAC(v41, v18);
  v25 = (*(v24 + 48))(v18, 2, v4);
  if (v25)
  {
    if (v25 == 1)
    {
      v43 = 0;
      sub_21CADE070();
      v26 = v42;
      sub_21CB862A4();
      (*(v32 + 8))(v14, v33);
    }

    else
    {
      v44 = 1;
      sub_21CADE01C();
      v26 = v42;
      sub_21CB862A4();
      (*(v34 + 8))(v10, v35);
    }

    return (*(v19 + 8))(v22, v26);
  }

  else
  {
    v27 = v36;
    (*(v24 + 32))(v39, v18, v4);
    v45 = 2;
    sub_21CADDF64();
    v28 = v37;
    v29 = v42;
    sub_21CB862A4();
    sub_21CADE4D8(&qword_27CDF7DC8, MEMORY[0x277D49978]);
    v30 = v38;
    sub_21CB862C4();
    (*(v27 + 8))(v28, v30);
    (*(v24 + 8))(v39, v4);
    return (*(v19 + 8))(v22, v29);
  }
}

uint64_t sub_21CADCEFC()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CADDEAC(v1, v10);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    MEMORY[0x21CF15F90](v11 != 1);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x21CF15F90](2);
    sub_21CADE4D8(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    (*(v3 + 8))(v6, v2);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CADD0E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D58, &qword_21CBC6FD8);
  v4 = *(v3 - 8);
  v60 = v3;
  v61 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v55 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D60, &qword_21CBC6FE0);
  v59 = *(v65 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D68, &qword_21CBC6FE8);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D70, &unk_21CBC6FF0);
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  v17 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v24);
  sub_21CADDF10();
  v26 = v67;
  sub_21CB864E4();
  if (!v26)
  {
    v27 = v17;
    v55 = v20;
    v56 = v23;
    v28 = v64;
    v29 = v65;
    v67 = 0;
    v30 = v16;
    v31 = sub_21CB86294();
    v32 = *(v31 + 16);
    if (!v32 || ((v33 = *(v31 + 32), v32 == 1) ? (v34 = v33 == 3) : (v34 = 1), v34))
    {
      v35 = sub_21CB86104();
      swift_allocError();
      v37 = v36;
      v38 = v13;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D80, &qword_21CBCCC00) + 48);
      *v37 = v27;
      sub_21CB86264();
      sub_21CB860F4();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v66 + 8))(v30, v38);
    }

    else
    {
      if (*(v31 + 32))
      {
        v40 = v16;
        if (v33 == 1)
        {
          v70 = 1;
          sub_21CADE01C();
          v41 = v67;
          sub_21CB86254();
          v42 = v66;
          if (!v41)
          {
            (*(v59 + 8))(v28, v29);
            (*(v42 + 8))(v16, v13);
            swift_unknownObjectRelease();
            v43 = sub_21CB85C44();
            v44 = v56;
            (*(*(v43 - 8) + 56))(v56, 2, 2, v43);
LABEL_20:
            sub_21CADDFB8(v44, v62);
            return __swift_destroy_boxed_opaque_existential_0(v68);
          }
        }

        else
        {
          v71 = 2;
          sub_21CADDF64();
          v46 = v63;
          v47 = v67;
          sub_21CB86254();
          v42 = v66;
          if (!v47)
          {
            v50 = v16;
            v51 = v46;
            v52 = sub_21CB85C44();
            sub_21CADE4D8(&qword_27CDF7D90, MEMORY[0x277D49978]);
            v53 = v55;
            v54 = v60;
            sub_21CB86284();
            (*(v61 + 8))(v51, v54);
            (*(v42 + 8))(v50, v13);
            swift_unknownObjectRelease();
            (*(*(v52 - 8) + 56))(v53, 0, 2, v52);
            v44 = v56;
            sub_21CADDFB8(v53, v56);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v69 = 0;
        sub_21CADE070();
        v40 = v16;
        v45 = v67;
        sub_21CB86254();
        if (!v45)
        {
          (*(v57 + 8))(v12, v58);
          (*(v66 + 8))(v16, v13);
          swift_unknownObjectRelease();
          v49 = sub_21CB85C44();
          v44 = v56;
          (*(*(v49 - 8) + 56))(v56, 1, 2, v49);
          goto LABEL_20;
        }

        v42 = v66;
      }

      (*(v42 + 8))(v40, v13);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t sub_21CADD7FC()
{
  v1 = 0x6F7773736150796DLL;
  if (*v0 != 1)
  {
    v1 = 0x70756F7267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_21CADD854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CADE92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CADD888(uint64_t a1)
{
  v2 = sub_21CADDF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADD8C4(uint64_t a1)
{
  v2 = sub_21CADDF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADD90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CB86344();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CADD98C(uint64_t a1)
{
  v2 = sub_21CADDF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADD9C8(uint64_t a1)
{
  v2 = sub_21CADDF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADDA04(uint64_t a1)
{
  v2 = sub_21CADE01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADDA40(uint64_t a1)
{
  v2 = sub_21CADE01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADDA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CADDEAC(v2, v12);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    return MEMORY[0x21CF15F90](v13 != 1);
  }

  (*(v5 + 32))(v8, v12, v4);
  MEMORY[0x21CF15F90](2);
  sub_21CADE4D8(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21CADDC44(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CADDEAC(v4, v13);
  v14 = (*(v6 + 48))(v13, 2, v5);
  if (v14)
  {
    MEMORY[0x21CF15F90](v14 != 1);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x21CF15F90](2);
    sub_21CADE4D8(&qword_27CDF8950, MEMORY[0x277D49978]);
    sub_21CB85494();
    (*(v6 + 8))(v9, v5);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CADDEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CADDF10()
{
  result = qword_27CDF7D78;
  if (!qword_27CDF7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D78);
  }

  return result;
}

unint64_t sub_21CADDF64()
{
  result = qword_27CDF7D88;
  if (!qword_27CDF7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D88);
  }

  return result;
}

uint64_t sub_21CADDFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CADE01C()
{
  result = qword_27CDF7D98;
  if (!qword_27CDF7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D98);
  }

  return result;
}

unint64_t sub_21CADE070()
{
  result = qword_27CDF7DA0;
  if (!qword_27CDF7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DA0);
  }

  return result;
}

uint64_t sub_21CADE0C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CADE0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMRecentlyDeletedAccountsSource();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DD0, &qword_21CBC7020);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v25 - v15;
  v18 = *(v17 + 56);
  sub_21CADDEAC(a1, v25 - v15);
  sub_21CADDEAC(a2, &v16[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v16, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v16[v18], 2, v4) == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v19(&v16[v18], 2, v4) != 2)
    {
LABEL_8:
      sub_21CADE470(v16);
      return 0;
    }
  }

  else
  {
    sub_21CADDEAC(v16, v12);
    if (v19(&v16[v18], 2, v4))
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_8;
    }

    (*(v5 + 32))(v8, &v16[v18], v4);
    sub_21CADE4D8(&qword_27CDECD58, MEMORY[0x277D49978]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v25[2] == v25[0] && v25[3] == v25[1])
    {
      v22 = *(v5 + 8);
      v22(v8, v4);

      v22(v12, v4);
    }

    else
    {
      v23 = sub_21CB86344();
      v24 = *(v5 + 8);
      v24(v8, v4);

      v24(v12, v4);
      if ((v23 & 1) == 0)
      {
        sub_21CADE520(v16);
        return 0;
      }
    }
  }

LABEL_14:
  sub_21CADE520(v16);
  return 1;
}