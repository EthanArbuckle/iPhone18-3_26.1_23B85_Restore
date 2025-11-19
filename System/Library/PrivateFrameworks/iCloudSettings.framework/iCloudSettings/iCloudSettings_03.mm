_BYTE **sub_275893D60(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_275893D70(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_275893D90(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_275893E58@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_275893E88@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_275893EB8(void (*a1)(void))
{
  a1();

  return sub_2759BAC58();
}

uint64_t sub_275893F08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2759BA9E8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_275893F94(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_275894088;

  return v6(v2 + 32);
}

uint64_t sub_275894088()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_27589419C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_275894290;

  return v6(v2 + 32);
}

uint64_t sub_275894290()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2758943A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B87B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB8, &qword_2759C3158);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_27586FBC8(a1, &v24 - v16, &qword_280A0EFB0, &qword_2759C3128);
  sub_27586FBC8(a2, &v17[v18], &qword_280A0EFB0, &qword_2759C3128);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_27586FBC8(v17, v12, &qword_280A0EFB0, &qword_2759C3128);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_275899D0C(&qword_280A0EFC0, MEMORY[0x277D402D0]);
      v21 = sub_2759BA228();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_27586BF04(v17, &qword_280A0EFB0, &qword_2759C3128);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_27586BF04(v17, &qword_280A0EFB8, &qword_2759C3158);
    v20 = 1;
    return v20 & 1;
  }

  sub_27586BF04(v17, &qword_280A0EFB0, &qword_2759C3128);
  v20 = 0;
  return v20 & 1;
}

char *sub_2758946C4(void *a1, void *a2, char a3, uint64_t a4, _BYTE *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v82 - v12;
  v88[3] = sub_275861AF8(0, qword_280A0F010, 0x277D7F4A8);
  v88[4] = &protocol witness table for ICQInternetPrivacyViewModel;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel] = 0;
  v88[0] = a4;
  v82 = type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_2759B83C8();
  v17 = v16;

  v18 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelaySubtitle];
  *v18 = v15;
  v18[1] = v17;
  v19 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmeSubtitle];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassSubtitle];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__notesDataclassSubtitle];
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassEnabled] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  v23 = sub_2759B87B8();
  v24 = *(*(v23 - 8) + 56);
  v24(&a5[v22], 1, 1, v23);
  v24(&a5[v22], 1, 1, v23);
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanFlowManager] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider] = 0;
  swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__shouldReportStatefulImpression] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___numberFormatter] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___appDownloadFlowManager] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__featureManagerObserver] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor] = sub_2759B9C18();
  v25 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel];
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupSubtitle];
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainSyncNotificationToken] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha] = 0;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v28 = objc_opt_self();
  v29 = sub_2759BA258();
  v30 = [v28 preferredFontForTextStyle_];

  [v27 setFont_];
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel] = v27;
  v31 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager] = 0;
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__accountDidChange] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview] = 0;
  v32 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString];
  *v32 = 0;
  v32[1] = 0;
  v33 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString];
  *v33 = 0;
  v33[1] = 0;
  v34 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus];
  *v34 = 0;
  v34[8] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__ADPView] = 0;
  sub_2759B8668();
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager] = a1;
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_launchedFromRootLevel] = a3;
  v35 = type metadata accessor for iCloudHomeDataController();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR___ICSHomeDataController_account] = a2;
  v37 = type metadata accessor for iCloudNetworkRequest();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  *(v40 + 16) = a2;
  *(v40 + 24) = a3;
  v41 = a2;
  v42 = a1;
  sub_2759B8718();
  v43 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v36[OBJC_IVAR___ICSHomeDataController_networkRequest] = v40;
  v87.receiver = v36;
  v87.super_class = v35;
  v44 = objc_msgSendSuper2(&v87, sel_init);

  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_dataController] = v44;
  v45 = objc_allocWithZone(type metadata accessor for ADPSectionViewModel());
  sub_2758DE654(v42);
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel] = v46;
  v47 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];

  *&a5[v31] = v47;
  v48 = type metadata accessor for ICSAnalyticsController();
  v49 = objc_allocWithZone(v48);
  v50 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController;
  *&v49[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController] = 0;
  v51 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager;
  *&v49[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager] = 0;
  v52 = objc_allocWithZone(v35);
  v53 = v41;
  v54 = [v52 initWithAccount:v53 launchedFromRootLevel:1];
  v55 = *&v49[v50];
  *&v49[v50] = v54;

  v56 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];
  v57 = *&v49[v51];
  *&v49[v51] = v56;

  v86.receiver = v49;
  v86.super_class = v48;
  v58 = objc_msgSendSuper2(&v86, sel_init);

  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController] = v58;
  sub_27586E058(v88, &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewModel]);
  v85.receiver = a5;
  v85.super_class = v82;
  v59 = objc_msgSendSuper2(&v85, sel_init);
  sub_2759B8808();
  v60 = v59;
  MEMORY[0x277C82590](v53);
  v61 = [objc_opt_self() defaultSubtitle];
  v62 = sub_2759BA298();
  v64 = v63;

  sub_27587AD44(v62, v64);
  v65 = v83;
  sub_2759BA4E8();
  v66 = sub_2759BA518();
  v67 = *(*(v66 - 8) + 56);
  v67(v65, 0, 1, v66);
  sub_2759BA4C8();
  v68 = v60;
  v69 = sub_2759BA4B8();
  v70 = swift_allocObject();
  v71 = MEMORY[0x277D85700];
  v70[2] = v69;
  v70[3] = v71;
  v70[4] = v68;
  sub_27587D460(0, 0, v65, &unk_2759C3278, v70);

  sub_275891E48();
  sub_2759BA4E8();
  v67(v65, 0, 1, v66);
  v72 = v68;
  v73 = sub_2759BA4B8();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v71;
  *(v74 + 32) = v72;
  *(v74 + 40) = 1;
  sub_27587D460(0, 0, v65, &unk_2759C3280, v74);

  sub_275889448();
  sub_27588F66C(v72, 0xD000000000000042, 0x80000002759DE770, sub_27588F5E4);
  sub_27588F66C(v72, 0xD000000000000041, 0x80000002759DE7C0, sub_27588F81C);
  v67(v65, 1, 1, v66);
  v75 = sub_2759BA4B8();
  v76 = swift_allocObject();
  v76[2] = v75;
  v76[3] = v71;
  v76[4] = v72;
  sub_27587D460(0, 0, v65, &unk_2759C3288, v76);

  sub_27588DF28();
  sub_27588E3C4();
  v77 = *&v72[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager];
  v78 = swift_allocObject();
  *(v78 + 16) = v72;
  aBlock[4] = sub_27589A19C;
  aBlock[5] = v78;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27588EB18;
  aBlock[3] = &block_descriptor_619;
  v79 = _Block_copy(aBlock);
  v80 = v72;

  [v77 addAccountChangeObserver:v80 handler:v79];
  _Block_release(v79);
  sub_27588F8A4();
  sub_27589079C();
  sub_27588D9B0();

  __swift_destroy_boxed_opaque_existential_1(v88);
  return v80;
}

char *sub_27589511C(void *a1, void *a2, char a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v88 = &v87 - v16;
  v93[3] = a6;
  v93[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel] = 0;
  v87 = type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v20 = sub_2759B83C8();
  v22 = v21;

  v23 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelaySubtitle];
  *v23 = v20;
  v23[1] = v22;
  v24 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmeSubtitle];
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassSubtitle];
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__notesDataclassSubtitle];
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassEnabled] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  v28 = sub_2759B87B8();
  v29 = *(*(v28 - 8) + 56);
  v29(&a5[v27], 1, 1, v28);
  v29(&a5[v27], 1, 1, v28);
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanFlowManager] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider] = 0;
  swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__shouldReportStatefulImpression] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___numberFormatter] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel____lazy_storage___appDownloadFlowManager] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__featureManagerObserver] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor] = sub_2759B9C18();
  v30 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupDetailLabel];
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupSubtitle];
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainSyncNotificationToken] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha] = 0;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v33 = objc_opt_self();
  v34 = sub_2759BA258();
  v35 = [v33 preferredFontForTextStyle_];

  [v32 setFont_];
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleLabel] = v32;
  v36 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager] = 0;
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__accountDidChange] = 0;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__loadingiCloudHomeSubview] = 0;
  v37 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedDeeplinkURLString];
  *v37 = 0;
  v37[1] = 0;
  v38 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__delayedAMSDeepLinkURLString];
  *v38 = 0;
  v38[1] = 0;
  v39 = &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus];
  *v39 = 0;
  v39[8] = 1;
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__ADPView] = 0;
  sub_2759B8668();
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager] = a1;
  a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_launchedFromRootLevel] = a3;
  v40 = type metadata accessor for iCloudHomeDataController();
  v41 = objc_allocWithZone(v40);
  *&v41[OBJC_IVAR___ICSHomeDataController_account] = a2;
  v42 = type metadata accessor for iCloudNetworkRequest();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  *(v45 + 24) = a3;
  v46 = a2;
  v47 = a1;
  sub_2759B8718();
  v48 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v41[OBJC_IVAR___ICSHomeDataController_networkRequest] = v45;
  v92.receiver = v41;
  v92.super_class = v40;
  v49 = objc_msgSendSuper2(&v92, sel_init);

  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_dataController] = v49;
  v50 = objc_allocWithZone(type metadata accessor for ADPSectionViewModel());
  sub_2758DE654(v47);
  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel] = v51;
  v52 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];

  *&a5[v36] = v52;
  v53 = type metadata accessor for ICSAnalyticsController();
  v54 = objc_allocWithZone(v53);
  v55 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController;
  *&v54[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController] = 0;
  v56 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager;
  *&v54[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager] = 0;
  v57 = objc_allocWithZone(v40);
  v58 = v46;
  v59 = [v57 initWithAccount:v58 launchedFromRootLevel:1];
  v60 = *&v54[v55];
  *&v54[v55] = v59;

  v61 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];
  v62 = *&v54[v56];
  *&v54[v56] = v61;

  v91.receiver = v54;
  v91.super_class = v53;
  v63 = objc_msgSendSuper2(&v91, sel_init);

  *&a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController] = v63;
  sub_27586E058(v93, &a5[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewModel]);
  v90.receiver = a5;
  v90.super_class = v87;
  v64 = objc_msgSendSuper2(&v90, sel_init);
  sub_2759B8808();
  v65 = v64;
  MEMORY[0x277C82590](v58);
  v66 = [objc_opt_self() defaultSubtitle];
  v67 = sub_2759BA298();
  v69 = v68;

  sub_27587AD44(v67, v69);
  v70 = v88;
  sub_2759BA4E8();
  v71 = sub_2759BA518();
  v72 = *(*(v71 - 8) + 56);
  v72(v70, 0, 1, v71);
  sub_2759BA4C8();
  v73 = v65;
  v74 = sub_2759BA4B8();
  v75 = swift_allocObject();
  v76 = MEMORY[0x277D85700];
  v75[2] = v74;
  v75[3] = v76;
  v75[4] = v73;
  sub_27587D460(0, 0, v70, &unk_2759C3258, v75);

  sub_275891E48();
  sub_2759BA4E8();
  v72(v70, 0, 1, v71);
  v77 = v73;
  v78 = sub_2759BA4B8();
  v79 = swift_allocObject();
  *(v79 + 16) = v78;
  *(v79 + 24) = v76;
  *(v79 + 32) = v77;
  *(v79 + 40) = 1;
  sub_27587D460(0, 0, v70, &unk_2759C3260, v79);

  sub_275889448();
  sub_27588F66C(v77, 0xD000000000000042, 0x80000002759DE770, sub_27588F5E4);
  sub_27588F66C(v77, 0xD000000000000041, 0x80000002759DE7C0, sub_27588F81C);
  v72(v70, 1, 1, v71);
  v80 = sub_2759BA4B8();
  v81 = swift_allocObject();
  v81[2] = v80;
  v81[3] = v76;
  v81[4] = v77;
  sub_27587D460(0, 0, v70, &unk_2759C3270, v81);

  sub_27588DF28();
  sub_27588E3C4();
  v82 = *&v77[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager];
  v83 = swift_allocObject();
  *(v83 + 16) = v77;
  aBlock[4] = sub_27589A08C;
  aBlock[5] = v83;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27588EB18;
  aBlock[3] = &block_descriptor_594;
  v84 = _Block_copy(aBlock);
  v85 = v77;

  [v82 addAccountChangeObserver:v85 handler:v84];
  _Block_release(v84);
  sub_27588F8A4();
  sub_27589079C();
  sub_27588D9B0();

  __swift_destroy_boxed_opaque_existential_1(v93);
  return v85;
}

char *sub_275895B90(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(type metadata accessor for iCloudHomeViewModel());
  (*(v13 + 16))(v16, a4, a6);
  return sub_27589511C(a1, a2, a3, v16, v17, a6, a7);
}

uint64_t sub_275895CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27587E134(a1, v4, v5, v6);
}

uint64_t sub_275895D54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27587E364(a1, v4, v5, v6);
}

unint64_t sub_275895E08()
{
  result = qword_280A0ED98;
  if (!qword_280A0ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0ED98);
  }

  return result;
}

uint64_t sub_275895E5C()
{
  sub_2759BA4C8();
  v0[19] = sub_2759BA4B8();
  v2 = sub_2759BA468();
  v0[20] = v2;
  v0[21] = v1;

  return MEMORY[0x2822009F8](sub_275895EF0, v2, v1);
}

uint64_t sub_275895EF0()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_275896018;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F008, &qword_2759C3228);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27588A374;
  v0[13] = &block_descriptor_553;
  v0[14] = v2;
  [v1 fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_275896018()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_2758961D4;
  }

  else
  {
    v6 = sub_275896148;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_275896148()
{
  v1 = v0[19];

  v2 = v0[18];
  v3 = [v2 integerValue];

  v4 = v0[22] != 0;
  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_2758961D4()
{
  v1 = v0[22];
  v2 = v0[19];

  swift_willThrow();
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_2815ADE70);
  v5 = v3;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_275819000, v6, v7, "Failed to fetch number of PasswordAndPasskeys w/ error: %@", v10, 0xCu);
    sub_27586BF04(v11, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[22] != 0;
  v15 = v0[1];

  return v15(0, v14);
}

char *sub_275896398(void *a1, void *a2)
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFD8, &qword_2759C31E0);
    inited = swift_initStackObject();
    v8 = MEMORY[0x277CED1A0];
    *(inited + 16) = xmmword_2759C17A0;
    v9 = *v8;
    *(inited + 32) = v9;
    *(inited + 40) = a1;
    v10 = v9;
    v11 = a1;
    sub_2758A2EDC(inited);
    swift_setDeallocating();
    sub_27586BF04(inited + 32, &qword_280A0EFE0, &qword_2759C31E8);
    type metadata accessor for AIDAServiceType(0);
    sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
    sub_275899D0C(&qword_280A0E500, type metadata accessor for AIDAServiceType);
    v12 = sub_2759BA1C8();

    [v6 setAccounts_];

    v13 = objc_allocWithZone(MEMORY[0x277D7F4A8]);
    v14 = v11;
    v15 = v6;
    v16 = [v13 init];
    v17 = objc_allocWithZone(type metadata accessor for iCloudHomeViewModel());
    v18 = sub_2758946C4(v15, v14, 1, v16, v17);

    if (a2)
    {
      v19 = a2;
      sub_275876AF8(a2);
    }

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2758965BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EED8, qword_2759C9B60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_2759B8F58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27586FBC8(a1, v5, &qword_280A0EED8, qword_2759C9B60);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_27586BF04(v5, &qword_280A0EED8, qword_2759C9B60);
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = v12 == 1;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_2759B8F48();
    v15 = v14;
    (*(v7 + 8))(v10, v6);
    v13 = v15 > 500.0;
  }

  if (v13)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2758967C4()
{
  v0 = *MEMORY[0x277CB8960];
  v1 = sub_2759BA298();
  v3 = v2;
  if (v1 == sub_2759BA298() && v3 == v4)
  {
    goto LABEL_13;
  }

  v6 = sub_2759BAAC8();

  if (v6)
  {
    goto LABEL_14;
  }

  v7 = *MEMORY[0x277CB8A08];
  v8 = sub_2759BA298();
  v10 = v9;
  if (v8 == sub_2759BA298() && v10 == v11)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = sub_2759BAAC8();

  if ((v13 & 1) == 0)
  {
    v14 = *MEMORY[0x277CB8A58];
    v15 = sub_2759BA298();
    v17 = v16;
    if (v15 == sub_2759BA298() && v17 == v18)
    {
      goto LABEL_13;
    }

    v23 = sub_2759BAAC8();

    if (v23)
    {
      goto LABEL_14;
    }

    v24 = *MEMORY[0x277CB89C0];
    v25 = sub_2759BA298();
    v27 = v26;
    if (v25 == sub_2759BA298() && v27 == v28)
    {
      goto LABEL_13;
    }

    v29 = sub_2759BAAC8();

    if (v29)
    {
      goto LABEL_14;
    }

    v30 = *MEMORY[0x277CB89F8];
    v31 = sub_2759BA298();
    v33 = v32;
    if (v31 == sub_2759BA298() && v33 == v34)
    {
      goto LABEL_13;
    }

    v35 = sub_2759BAAC8();

    if (v35)
    {
      goto LABEL_14;
    }

    v36 = *MEMORY[0x277CB89D8];
    v37 = sub_2759BA298();
    v39 = v38;
    if (v37 == sub_2759BA298() && v39 == v40)
    {
      goto LABEL_13;
    }

    v41 = sub_2759BAAC8();

    if (v41)
    {
      goto LABEL_14;
    }

    v42 = *MEMORY[0x277CB89C8];
    v43 = sub_2759BA298();
    v45 = v44;
    if (v43 == sub_2759BA298() && v45 == v46)
    {
      goto LABEL_13;
    }

    v47 = sub_2759BAAC8();

    if ((v47 & 1) == 0)
    {
      return 0x6E776F6E6B6E55;
    }
  }

LABEL_14:
  type metadata accessor for iCloudHomeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_2759B83C8();

  return v21;
}

uint64_t sub_275896DD0(uint64_t a1)
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
  v10[1] = sub_27585F7A0;

  return sub_27588A154(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_275896EA8(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_275928C7C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_275896FF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_27588B494(a1, v4, v5, v6, v7);
}

uint64_t sub_2758970E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_27588C410(a1, v4, v5, v7, v6);
}

uint64_t sub_2758971A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588C86C(a1, v4, v5, v6);
}

void sub_275897268(void *a1, void *a2, const char *a3)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275819000, v7, v8, a3, v9, 2u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  if (a1)
  {
    v10 = a2;
    v11 = a1;
    v12 = sub_2759B8988();
    v13 = sub_2759BA668();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EEE0, &qword_2759C2C48);
      v16 = sub_2759BA7C8();
      v18 = sub_2758937B8(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_275819000, v12, v13, "Handling private relay status change notification: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
    }

    sub_275889448();
  }
}

void sub_27589745C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = qword_2815ADD30;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = a2;
    v7 = sub_2759B8988();
    v8 = sub_2759BA668();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EEE0, &qword_2759C2C48);
      v11 = sub_2759BA7C8();
      v13 = sub_2758937B8(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_275819000, v7, v8, "Handling backup state change notification: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x277C85860](v10, -1, -1);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    sub_27588C684();
  }
}

void _s14iCloudSettings01iA13HomeViewModelC17handleInfoCardURL3urly10Foundation0I0V_tF_0(uint64_t a1)
{
  v2 = sub_2759B8508();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_2815ADE70);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = sub_2759B8488();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_2758937B8(v12, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_275819000, v8, v9, "Handling URL action from info card. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2759B84B8();
    sub_2758A2A88(MEMORY[0x277D84F90]);
    v19 = sub_2759BA1C8();

    [v17 openSensitiveURL:v18 withOptions:v19];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2758978B0()
{
  result = qword_280A0EDC0;
  if (!qword_280A0EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EDC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for iCloudSettingsActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for iCloudSettingsActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_275897A68()
{
  sub_2758989FC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2759B8678();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of iCloudHomeViewModel.expandedSubTitle(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xB28))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xB30))();
}

uint64_t dispatch thunk of iCloudHomeViewModel.fetchKeychainSyncStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB48);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585F7A0;

  return v6();
}

uint64_t dispatch thunk of iCloudHomeViewModel.fetchDataModelAsync(allowCache:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xB58);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return v8(a1);
}

uint64_t dispatch thunk of iCloudHomeViewModel.fetchHMECount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB68);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585F7A0;

  return v6();
}

void sub_2758989FC()
{
  if (!qword_280A0EED0)
  {
    sub_2759B87B8();
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0EED0);
    }
  }
}

uint64_t block_copy_helper_264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275898A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2758921CC(a1, v4, v5, v6);
}

uint64_t sub_275898B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275891C58(a1, v4, v5, v6);
}

void sub_275898BDC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__walrusStatus;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_275898C04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_275890E3C();
}

uint64_t sub_275898D80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588FEE8(a1, v4, v5, v6);
}

uint64_t sub_275898E34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275890218(a1, v4, v5, v6);
}

uint64_t sub_275898EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588FEE8(a1, v4, v5, v6);
}

uint64_t sub_275898F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588F250(a1, v4, v5, v6);
}

uint64_t sub_275899070()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__featureManagerObserver);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__featureManagerObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_2758990B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588E740(a1, v4, v5, v6);
}

uint64_t sub_2758991F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27588DCD8(a1, v4, v5, v6);
}

uint64_t sub_2758992B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275889764(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_271Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2758993CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_2759371C4(a1, v4, v5, v6);
}

uint64_t sub_275899480(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_275893544(a1, v5);
}

uint64_t sub_275899550(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275880440(a1, v4, v5, v6);
}

uint64_t objectdestroy_42Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  v4 = *(v1 + 48);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_275899658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_2758806D8(a1, v4, v5, v6, v7, v8);
}

void sub_275899738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupManager) = v2;
  v4 = v2;
}

double sub_275899778()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__titleAlpha) = result;
  return result;
}

uint64_t sub_275899790()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainSyncNotificationToken;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_27589982C(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  v4 = v3[1];
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_275899878()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__backupStatusDotColor) = *(v0 + 24);
}

void sub_2758998BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter) = v2;
  v4 = v2;
}

void sub_2758998FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__mailSettingsProvider) = v2;
  v4 = v2;
}

void sub_27589993C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataclassValidationController) = v2;
  v4 = v2;
}

void sub_27589997C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__safariWebViewController) = v2;
  v4 = v2;
}

void sub_2758999BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController) = v2;
  v4 = v2;
}

void sub_2758999FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__adpSectionViewModel) = v2;
  v4 = v2;
}

void sub_275899A3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager) = v2;
  v4 = v2;
}

void sub_275899A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__customEmailPresenter) = v2;
  v4 = v2;
}

void sub_275899ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__hmePresenter) = v2;
  v4 = v2;
}

void sub_275899AFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController) = v2;
  v4 = v2;
}

void sub_275899B3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController) = v2;
  v4 = v2;
}

void sub_275899B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController) = v2;
  v4 = v2;
}

void sub_275899BBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager) = v2;
  v4 = v2;
}

uint64_t sub_275899BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275899CC8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_275899CF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2758DDECC();
}

uint64_t sub_275899D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275899D54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_27589419C(a1, v5);
}

uint64_t sub_275899E0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__keychainDataclassEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_275899E68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_275893F94(a1, v5);
}

uint64_t sub_275899F20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585A7E4;

  return sub_275893F94(a1, v5);
}

uint64_t sub_275899FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27587CF94(a1, v4, v5, v6);
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_27589A0E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__ADPView);
  *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__ADPView) = *(v0 + 24);
}

uint64_t sub_27589A25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_2759BA7D8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27589A2CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_27589A44C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t sub_27589A6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = sub_2759B9448();
  v61 = *(v62 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a1 + 16);
  v48 = sub_2759BA7D8();
  v5 = sub_2759B9F58();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v43 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0A0, &qword_2759C3560);
  v9 = sub_2759B90A8();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = v43 - v11;
  v46 = *(a1 + 24);
  v81 = v46;
  WitnessTable = swift_getWitnessTable();
  v78 = MEMORY[0x277CE1410];
  v79 = WitnessTable;
  v80 = MEMORY[0x277CE1410];
  v13 = swift_getWitnessTable();
  v43[1] = v13;
  v57 = MEMORY[0x277CE04A0];
  v14 = sub_27589B02C(&qword_280A0F0A8, &qword_280A0F0A0, &qword_2759C3560);
  v76 = v13;
  v77 = v14;
  v55 = MEMORY[0x277CDFAD8];
  v44 = swift_getWitnessTable();
  *&v82 = v9;
  *(&v82 + 1) = v44;
  v45 = MEMORY[0x277CDE8F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v43 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B0, &qword_2759C3330);
  v19 = sub_2759B90A8();
  v52 = *(v19 - 8);
  v20 = *(v52 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v43 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B8, &qword_2759C3338);
  v50 = sub_2759B90A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0C0, &unk_2759C3340);
  v23 = sub_2759B90A8();
  v53 = *(v23 - 8);
  v24 = *(v53 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v51 = v43 - v28;
  v64 = v54;
  v65 = v46;
  v66 = v59;
  sub_2759B9F38();
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v29 = v47;
  sub_2759B9AA8();
  (*(v58 + 8))(v8, v5);
  sub_2759B8EC8();
  v30 = v44;
  sub_2759B9AD8();
  (*(v56 + 8))(v29, v9);
  v31 = sub_2759B9C38();
  v74 = v30;
  v75 = v31;
  v73 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2759B9AE8();

  (*(v49 + 8))(v18, OpaqueTypeMetadata2);
  v33 = v60;
  sub_2759B9438();
  v34 = sub_27589B02C(&qword_280A0F0C8, &qword_280A0F0B0, &qword_2759C3330);
  v71 = OpaqueTypeConformance2;
  v72 = v34;
  v35 = swift_getWitnessTable();
  sub_2759B9B08();
  (*(v61 + 8))(v33, v62);
  (*(v52 + 8))(v22, v19);
  v36 = sub_27589B02C(&qword_280A0F0D0, &qword_280A0F0B8, &qword_2759C3338);
  v69 = v35;
  v70 = v36;
  v37 = swift_getWitnessTable();
  v38 = sub_27589B02C(&qword_280A0F0D8, &qword_280A0F0C0, &unk_2759C3340);
  v67 = v37;
  v68 = v38;
  v39 = swift_getWitnessTable();
  v40 = v51;
  sub_2758C832C(v27, v23, v39);
  v41 = *(v53 + 8);
  v41(v27, v23);
  sub_2758C832C(v40, v23, v39);
  return (v41)(v40, v23);
}

uint64_t sub_27589AF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2759BA7D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v12[1] = a3;
  WitnessTable = swift_getWitnessTable();
  sub_2758C832C(a1, v5, WitnessTable);
  sub_2758C832C(v9, v5, WitnessTable);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27589B02C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_27589B0FC()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27589B194(char a1)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27589B244()
{
  sub_2759B86C8();
  result = sub_2759B86B8();
  qword_280A0F0E0 = result;
  return result;
}

id ManageStorageAppsListDataController.__allocating_init(account:launchedFromRootLevel:shouldIgnoreCache:)(void *a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  v7[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache] = 0;
  *&v7[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account] = a1;
  swift_beginAccess();
  v7[v8] = a3;
  v9 = type metadata accessor for iCloudNetworkRequest();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = a1;
  sub_2759B8718();
  v14 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v7[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_networkRequest] = v12;
  v17.receiver = v7;
  v17.super_class = v3;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

id ManageStorageAppsListDataController.init(account:launchedFromRootLevel:shouldIgnoreCache:)(void *a1, char a2, char a3)
{
  v4 = sub_27589C0A4(a1, a2, a3);

  return v4;
}

uint64_t sub_27589B440()
{
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE58);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Initiating network request to fetch manage storage apps list data.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 24);

  v6 = *(v5 + OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account);
  v7 = [v6 aa_altDSID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2759BA298();
    v11 = v10;

    if (qword_280A0E308 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 24);
    sub_2759BA8C8();

    MEMORY[0x277C840E0](v9, v11);

    *(v0 + 32) = 0x80000002759DE860;
    v13 = swift_allocObject();
    *(v0 + 40) = v13;
    *(v13 + 16) = v12;
    v14 = *(MEMORY[0x277CE47E0] + 4);
    v26 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
    v15 = v12;
    v16 = swift_task_alloc();
    *(v0 + 48) = v16;
    v17 = type metadata accessor for ManageStorageAppsListDataModel();
    *v16 = v0;
    v16[1] = sub_27589B7FC;

    return v26(v0 + 16, 0xD000000000000012, 0x80000002759DE860, &unk_2759C3368, v13, v17);
  }

  else
  {
    v19 = *(v0 + 24);
    v20 = sub_2759B8988();
    v21 = sub_2759BA668();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v6;
      *v23 = v6;
      v24 = v6;
      _os_log_impl(&dword_275819000, v20, v21, "Found no altDSID for account: %@", v22, 0xCu);
      sub_275875554(v23);
      MEMORY[0x277C85860](v23, -1, -1);
      MEMORY[0x277C85860](v22, -1, -1);
    }

    sub_27589C1B0();
    swift_allocError();
    swift_willThrow();
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_27589B7FC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_27589B93C;
  }

  else
  {
    v6 = *(v2 + 32);
    v5 = *(v2 + 40);

    v4 = sub_27589B920;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27589B93C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[7];
  v4 = v0[1];

  return v4();
}

uint64_t sub_27589B9A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_27589B9C8, 0, 0);
}

uint64_t sub_27589B9C8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_networkRequest);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_27589BA64;

  return sub_2758B7638();
}

uint64_t sub_27589BA64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 40) = a1;

  return MEMORY[0x2822009F8](sub_27589BBB0, 0, 0);
}

uint64_t sub_27589BD48(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_27589BDF0;

  return sub_27589B420();
}

uint64_t sub_27589BDF0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_2759B8438();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

id ManageStorageAppsListDataController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageAppsListDataController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageStorageAppsListDataController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_27589C0A4(void *a1, char a2, char a3)
{
  v7 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  v3[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache] = 0;
  *&v3[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account] = a1;
  swift_beginAccess();
  v3[v7] = a3;
  v8 = type metadata accessor for iCloudNetworkRequest();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = a1;
  sub_2759B8718();
  v13 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v3[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_networkRequest] = v11;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ManageStorageAppsListDataController();
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t sub_27589C1B0()
{
  result = qword_280A0F100;
  if (!qword_280A0F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F100);
  }

  return result;
}

uint64_t sub_27589C204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return sub_27589B9A8(a1, v4);
}

uint64_t dispatch thunk of ManageStorageAppsListDataController.fetchAppsListData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_275875130;

  return v6();
}

uint64_t sub_27589C4B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27585A7E4;

  return sub_27589BD48(v2, v3);
}

uint64_t sub_27589C55C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_27585F7A0;

  return sub_275929558(v2, v3, v5);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27589C65C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275929640(a1, v4, v5, v7);
}

id iCloudDataClasssheetPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudDataClasssheetPresenter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudDataClasssheetPresenter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id iCloudDataClasssheetPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudDataClasssheetPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27589C864(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = sub_2759BA258();
  v6 = sub_2759BA258();
  v27 = [v4 ics:v5 loadBundle:v6 atPath:?];

  if (v27 && [v27 principalClass] && ((ObjCClassMetadata = swift_getObjCClassMetadata(), (v8 = swift_conformsToProtocol2()) != 0) ? (v9 = ObjCClassMetadata == 0) : (v9 = 1), !v9))
  {
    v15 = v8;
    v16 = *MEMORY[0x277CB8980];
    v17 = *(v8 + 16);
    v18 = a1;
    v19 = v16;
    v20 = v17(v18, v16, ObjCClassMetadata, v15);
    if (v20)
    {
      v21 = v20;
      v28 = (*(v15 + 24))(ObjCClassMetadata, v15);
      v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F108, &unk_2759C3430));

      v23 = sub_2759B9508();
      [a2 showController:v23 animate:1];

      return;
    }

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v24 = sub_2759B89A8();
    __swift_project_value_buffer(v24, qword_2815ADE70);
    v11 = sub_2759B8988();
    v25 = sub_2759BA648();
    if (os_log_type_enabled(v11, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_275819000, v11, v25, "Falied to instantiate iCloudDataclassSheet for device enrollments.", v26, 2u);
      MEMORY[0x277C85860](v26, -1, -1);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_2815ADE70);
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_2758937B8(0xD000000000000018, 0x80000002759DEA70, &v28);
      _os_log_impl(&dword_275819000, v11, v12, "Bundle principle class %s does not conform to iCloudDataclassSheet.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x277C85860](v14, -1, -1);
      MEMORY[0x277C85860](v13, -1, -1);

      return;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_27589CCA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_27589CCEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27589CD58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F110, &qword_2759C3508);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v21 = a1;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v13 = v20[1];
  swift_getKeyPath();
  v21 = v13;
  sub_27589F39C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong && (v15 = sub_2758835EC(), Strong, v15))
  {
    v21 = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    *(v16 + 32) = a4;

    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F120, &qword_2759C3540);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F128, &qword_2759C3548);
    sub_27589B02C(&qword_280A0F130, &qword_280A0F120, &qword_2759C3540);
    sub_27589EE34();
    sub_27589F39C(&qword_280A0F160, type metadata accessor for ManageStorageTip);
    sub_2759B9EE8();
    (*(v9 + 32))(a3, v12, v8);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v9 + 56))(a3, v18, 1, v8);
}

double sub_27589D050@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F158, &qword_2759C3558);
  sub_27589B02C(&qword_280A0F150, &qword_280A0F158, &qword_2759C3558);
  sub_2759B9F38();
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F128, &qword_2759C3548) + 36);
  result = 11.0;
  __asm { FMOV            V1.2D, #11.0 }

  *v3 = xmmword_2759C3440;
  *(v3 + 16) = _Q1;
  *(v3 + 32) = 0;
  return result;
}

uint64_t sub_27589D130@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = sub_2759B9418();
  *(a4 + 8) = 0x4028000000000000;
  *(a4 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F168, &qword_2759C3568);
  return sub_27589D1B0(a1, a2, a3, a4 + *(v10 + 44), a5);
}

uint64_t sub_27589D1B0@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v73 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F170, &qword_2759C3570);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &KeyPath - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F178, &qword_2759C3578);
  v16 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v18 = (&KeyPath - v17);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F180, &qword_2759C3580);
  v19 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v71 = &KeyPath - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F188, &qword_2759C3588);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v69 = &KeyPath - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F190, &qword_2759C3590);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v72 = &KeyPath - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &KeyPath - v29;
  v31 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbol + 8];
  if (v31)
  {
    v61 = &KeyPath - v29;
    v62 = v22;
    v63 = v21;
    v65 = a2;
    v66 = a4;
    v67 = v13;
    v32 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbol];

    v60 = v32;
    v59 = sub_2759B9CB8();
    v58 = sub_2759B9858();
    KeyPath = swift_getKeyPath();
    v33 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor + 8];
    v34 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor];
    if (v33)
    {
      v35 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor];
    }

    else
    {
      v35 = 0;
    }

    if (v33)
    {
      v36 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor + 8];
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v37 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor + 8];
    swift_bridgeObjectRetain_n();
    v38 = sub_27594991C();
    v64 = a1;
    if (!v38)
    {
      v38 = sub_27594972C(v35, v36);
    }

    v39 = v38;

    v40 = v62;
    v41 = (v18 + *(v68 + 36));
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
    v43 = *MEMORY[0x277CE1048];
    v44 = sub_2759B9D18();
    (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
    *v41 = swift_getKeyPath();
    v45 = KeyPath;
    *v18 = v59;
    v18[1] = v45;
    v18[2] = v58;
    v18[3] = v39;
    sub_2759BA028();
    sub_2759B8F18();
    v46 = v71;
    sub_27589F26C(v18, v71, &qword_280A0F178, &qword_2759C3578);
    v47 = (v46 + *(v70 + 36));
    v48 = v77;
    *v47 = v76;
    v47[1] = v48;
    v47[2] = v78;
    v74 = 0x6E6F63692D706974;
    v75 = 0xE90000000000002DLL;
    MEMORY[0x277C840E0](v60, v31);
    MEMORY[0x277C840E0](45, 0xE100000000000000);
    if (v33)
    {
      v49 = v34;
    }

    else
    {
      v49 = 0x73694D726F6C6F63;
    }

    if (v33)
    {
      v50 = v33;
    }

    else
    {
      v50 = 0xEC000000676E6973;
    }

    MEMORY[0x277C840E0](v49, v50);

    sub_27589EFB8();
    v51 = v69;
    sub_2759B9B38();

    sub_27586BF04(v46, &qword_280A0F180, &qword_2759C3580);
    v30 = v61;
    sub_27589F26C(v51, v61, &qword_280A0F188, &qword_2759C3588);
    (*(v40 + 56))(v30, 0, 1, v63);
    a4 = v66;
    v13 = v67;
    v52 = v73;
    a1 = v64;
    a2 = v65;
  }

  else
  {
    (*(v22 + 56))(&KeyPath - v29, 1, 1, v21);
    v52 = v73;
  }

  *v15 = sub_2759B94F8();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F198, &qword_2759C3598);
  sub_27589D84C(a1, a2, v52, &v15[*(v53 + 44)], a5);
  v54 = v72;
  sub_27586FBC8(v30, v72, &qword_280A0F190, &qword_2759C3590);
  sub_27586FBC8(v15, v13, &qword_280A0F170, &qword_2759C3570);
  sub_27586FBC8(v54, a4, &qword_280A0F190, &qword_2759C3590);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A0, &qword_2759C35A0);
  sub_27586FBC8(v13, a4 + *(v55 + 48), &qword_280A0F170, &qword_2759C3570);
  sub_27586BF04(v15, &qword_280A0F170, &qword_2759C3570);
  sub_27586BF04(v30, &qword_280A0F190, &qword_2759C3590);
  sub_27586BF04(v13, &qword_280A0F170, &qword_2759C3570);
  return sub_27586BF04(v54, &qword_280A0F190, &qword_2759C3590);
}

uint64_t sub_27589D84C@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v73 = a3;
  v72 = a2;
  v67 = a4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F208, &qword_2759C3630);
  v81 = *(v75 - 8);
  v7 = v81[8];
  v8 = MEMORY[0x28223BE20](v75);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v65 - v10;
  v11 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_title + 8];
  v88 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_title];
  v89 = v11;
  v79 = sub_27589F2D4();

  v12 = sub_2759B99C8();
  v14 = v13;
  v16 = v15;
  sub_2759B9848();
  v17 = sub_2759B9988();
  v19 = v18;
  v21 = v20;

  sub_27589F328(v12, v14, v16 & 1);

  v69 = sub_2759B9978();
  v68 = v22;
  v70 = v23;
  v71 = v24;
  sub_27589F328(v17, v19, v21 & 1);

  v25 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_subTitle + 8];
  v88 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_subTitle];
  v89 = v25;

  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  sub_2759B9848();
  v31 = sub_2759B9988();
  v33 = v32;
  LOBYTE(v14) = v34;

  sub_27589F328(v26, v28, v30 & 1);

  LODWORD(v88) = sub_2759B9688();
  v79 = sub_2759B9958();
  v78 = v35;
  v37 = v36;
  v66 = v38;
  sub_27589F328(v31, v33, v14 & 1);

  v77 = sub_2759B97F8();
  sub_2759B8D78();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v76 = v37 & 1;
  LOBYTE(v88) = v37 & 1;
  LOBYTE(v84) = 0;
  v88 = *&a1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions];
  v47 = swift_allocObject();
  v48 = v72;
  *(v47 + 16) = v72;
  *(v47 + 24) = v73;
  *(v47 + 32) = a5;
  *(v47 + 40) = a1;

  v49 = a1;

  v50 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638);
  sub_27589F348();
  sub_27589F39C(&qword_280A0F228, type metadata accessor for ManageStorageAction);
  v51 = v80;
  sub_2759B9EE8();
  v52 = v81[2];
  v53 = v74;
  v54 = v75;
  v52(v74, v51, v75);
  v55 = v69;
  v56 = v67;
  v57 = v68;
  *v67 = v69;
  v56[1] = v57;
  LOBYTE(v33) = v70 & 1;
  *(v56 + 16) = v70 & 1;
  v56[3] = v71;
  *&v84 = v79;
  *(&v84 + 1) = v78;
  LOBYTE(v85) = v76;
  *(&v85 + 1) = v83[0];
  DWORD1(v85) = *(v83 + 3);
  v58 = v66;
  *(&v85 + 1) = v66;
  LOBYTE(v86) = v77;
  *(&v86 + 1) = *v82;
  DWORD1(v86) = *&v82[3];
  *(&v86 + 1) = v40;
  *v87 = v42;
  *&v87[8] = v44;
  *&v87[16] = v46;
  v87[24] = 0;
  v59 = v84;
  v60 = v85;
  *(v56 + 89) = *&v87[9];
  v61 = *v87;
  *(v56 + 4) = v86;
  *(v56 + 5) = v61;
  *(v56 + 2) = v59;
  *(v56 + 3) = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F230, &qword_2759C3640);
  v52(v56 + *(v62 + 64), v53, v54);
  sub_27589F3E4(v55, v57, v33);

  sub_27586FBC8(&v84, &v88, &qword_280A0F238, &qword_2759C3648);
  v63 = v81[1];
  v63(v80, v54);
  v63(v53, v54);
  v88 = v79;
  v89 = v78;
  v90 = v76;
  *v91 = v83[0];
  *&v91[3] = *(v83 + 3);
  v92 = v58;
  v93 = v77;
  *v94 = *v82;
  *&v94[3] = *&v82[3];
  v95 = v40;
  v96 = v42;
  v97 = v44;
  v98 = v46;
  v99 = 0;
  sub_27586BF04(&v88, &qword_280A0F238, &qword_2759C3648);
  sub_27589F328(v55, v57, v33);
}

uint64_t sub_27589DF48@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v9 = *(a4 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_identifier);
  v8 = *(a4 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_identifier + 8);
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v10 = v7;

  sub_2759B9D58();
  result = sub_2759B9D58();
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v10;
  *(a5 + 24) = v9;
  *(a5 + 32) = v8;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  return result;
}

uint64_t sub_27589E030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F258, &qword_2759C3708);
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = v27 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F260, &qword_2759C3710);
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v32 = v27 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F268, &qword_2759C3718);
  v8 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v27 - v9;
  v10 = swift_allocObject();
  v11 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = *(v1 + 48);
  v39 = v1;
  sub_27589F5AC(v1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F270, &qword_2759C3720);
  sub_27589B02C(&qword_280A0F278, &qword_280A0F270, &qword_2759C3720);
  v33 = v5;
  sub_2759B9DB8();
  v12 = *(*(v1 + 16) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation);
  if (v12)
  {
    v13 = (v12 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title);
    v15 = *v13;
    v14 = v13[1];
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v29 = v16;
  v41 = v15;
  v42 = v16;
  v40 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
  v17 = sub_2759B9D88();
  v28 = v27;
  v27[1] = v44;
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F288, &unk_2759C3730);
  sub_27589B02C(&qword_280A0F290, &qword_280A0F258, &qword_2759C3708);
  sub_27589F2D4();
  sub_27589F5F4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
  v19 = v37;
  v20 = v32;
  v21 = v33;
  sub_2759B9B58();

  (*(v35 + 8))(v21, v19);
  v22 = swift_allocObject();
  v23 = *(v2 + 16);
  *(v22 + 16) = *v2;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v2 + 32);
  *(v22 + 64) = *(v2 + 48);
  v24 = v30;
  (*(v34 + 32))(v30, v20, v36);
  v25 = (v24 + *(v31 + 36));
  *v25 = sub_27589F6C4;
  v25[1] = v22;
  v25[2] = 0;
  v25[3] = 0;
  sub_27581E698(v24, v38);
  return sub_27589F5AC(v2, &v43);
}

void sub_27589E574()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = *(v0 + 2);
  if (*(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation))
  {
    v21 = *(v0 + 40);
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F280, &qword_2759C3728);
    sub_2759B9D78();
    v21 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v7 = v20;
    v8 = *&v20[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    v10 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
    v9 = *(v6 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
    swift_bridgeObjectRetain_n();
    sub_2759BA4D8();
    v11 = sub_2759BA518();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v12;
    *(v13 + 40) = xmmword_2759C3450;
    *(v13 + 56) = 4362;
    *(v13 + 58) = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 80) = v10;
    *(v13 + 88) = v9;
    *(v13 + 96) = 8;

    sub_275931D20(0, 0, v5, &unk_2759C4530, v13);
    swift_bridgeObjectRelease_n();

    sub_27586BF04(v5, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v21 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v14 = v20;
    v15 = sub_2758A1CD0();
    LOBYTE(v21) = 17;
    v16 = *(v0 + 3);
    v17 = *(v1 + 4);

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    iCloudPlusFeature.init(rawValue:)(v18);
    ManageStorageAppsListViewModel.performAction(_:componentContext:featureContext:)(v15, &v21, &v20);
  }
}

uint64_t sub_27589E840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = sub_2759B9418();
  v4 = (*(a1 + 16) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title);
  v19 = *v4;
  v20 = v4[1];
  sub_27589F2D4();

  v5 = sub_2759B99C8();
  v7 = v6;
  v9 = v8;
  sub_2759B9848();
  v10 = sub_2759B9988();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_27589F328(v5, v7, v9 & 1);

  *a2 = v18;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14 & 1;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_27589E94C(uint64_t a1)
{
  v2 = *(*(a1 + 16) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v9 = v4;
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  sub_27589F5AC(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F210, &qword_2759C3638);
  sub_27589B02C(&qword_280A0F218, &qword_280A0F210, &qword_2759C3638);
  sub_27589F670();
  sub_27589F39C(&qword_280A0F228, type metadata accessor for ManageStorageAction);
  return sub_2759B9EE8();
}

uint64_t sub_27589EACC@<X0>(void **a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v11 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  v8 = v5;

  result = sub_2759B9D58();
  *a3 = v10;
  *(a3 + 8) = v8;
  *(a3 + 16) = v7;
  *(a3 + 24) = v6;
  *(a3 + 32) = v11;
  *(a3 + 40) = *(&v11 + 1);
  return result;
}

uint64_t sub_27589EB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 16) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation);
  if (v3)
  {
    v4 = (v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_subTitle);
    v6 = *v4;
    v5 = v4[1];
  }

  sub_27589F2D4();
  result = sub_2759B99C8();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_27589EC0C(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - v5;
  v7 = *(*(a1 + 2) + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType) - 114;
  v8 = v7 > 0xD;
  v9 = (1 << v7) & 0x20F1;
  if (!v8 && v9 != 0)
  {
    v18 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v11 = v17;
    v12 = *&v17[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController];

    sub_2759BA4D8();
    v13 = sub_2759BA518();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v14;
    *(v15 + 40) = 17;
    sub_275931D20(0, 0, v6, &unk_2759C3740, v15);

    return sub_27586BF04(v6, &unk_280A0E510, &qword_2759C33C0);
  }

  return result;
}

uint64_t sub_27589EDE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_27589E030(a1);
}

double sub_27589EE28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_27589D050(a1, a2);
}

unint64_t sub_27589EE34()
{
  result = qword_280A0F138;
  if (!qword_280A0F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F128, &qword_2759C3548);
    sub_27589EEEC();
    sub_27589B02C(&qword_280A0F0A8, &qword_280A0F0A0, &qword_2759C3560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F138);
  }

  return result;
}

unint64_t sub_27589EEEC()
{
  result = qword_280A0F140;
  if (!qword_280A0F140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F148, &qword_2759C3550);
    sub_27589B02C(&qword_280A0F150, &qword_280A0F158, &qword_2759C3558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F140);
  }

  return result;
}

unint64_t sub_27589EFB8()
{
  result = qword_280A0F1B0;
  if (!qword_280A0F1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F180, &qword_2759C3580);
    sub_27589F044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1B0);
  }

  return result;
}

unint64_t sub_27589F044()
{
  result = qword_280A0F1B8;
  if (!qword_280A0F1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F178, &qword_2759C3578);
    sub_27589F0FC();
    sub_27589B02C(&qword_280A0F200, &qword_280A0F1A8, &qword_2759C8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1B8);
  }

  return result;
}

unint64_t sub_27589F0FC()
{
  result = qword_280A0F1C0;
  if (!qword_280A0F1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F1C8, &qword_2759C3610);
    sub_27589F1B4();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1C0);
  }

  return result;
}

unint64_t sub_27589F1B4()
{
  result = qword_280A0F1D0;
  if (!qword_280A0F1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F1D8, &qword_2759C3618);
    sub_27589B02C(&qword_280A0F1E0, &qword_280A0F1E8, &unk_2759C3620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F1D0);
  }

  return result;
}

uint64_t sub_27589F26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_27589F2D4()
{
  result = qword_280A10C80;
  if (!qword_280A10C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10C80);
  }

  return result;
}

uint64_t sub_27589F328(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_27589F348()
{
  result = qword_280A0F220;
  if (!qword_280A0F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F220);
  }

  return result;
}

uint64_t sub_27589F39C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27589F3E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27589F410(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_27589F458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27589F4B4()
{
  result = qword_280A0F240;
  if (!qword_280A0F240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F248, &qword_2759C36B0);
    sub_27589F5F4(&qword_280A0F250, &qword_280A0F110, &qword_2759C3508, sub_27589EE34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F240);
  }

  return result;
}

uint64_t sub_27589F5F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27589F670()
{
  result = qword_280A0F2A0;
  if (!qword_280A0F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F2A0);
  }

  return result;
}

uint64_t sub_27589F6CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2759342A4(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_27589F7F0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 9u && ((1 << a3) & 0x3CD) != 0)
  {
  }

  return result;
}

uint64_t sub_27589F81C(uint64_t a1)
{
  v17 = *(v1 + 24);
  v18 = *(v1 + 16);
  v15 = *(v1 + 40);
  v16 = *(v1 + 32);
  v14 = *(v1 + 48);
  v4 = *(v1 + 58);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = *(v1 + 57);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_27585F7A0;

  return sub_275934914(a1, v18, v17, v16, v15, v14, v11, v10);
}

unint64_t sub_27589F934()
{
  result = qword_280A0F2A8;
  if (!qword_280A0F2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F268, &qword_2759C3718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F258, &qword_2759C3708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F288, &unk_2759C3730);
    sub_27589B02C(&qword_280A0F290, &qword_280A0F258, &qword_2759C3708);
    sub_27589F2D4();
    sub_27589F5F4(&qword_280A0F298, &qword_280A0F288, &unk_2759C3730, sub_27589F670);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F2A8);
  }

  return result;
}

id ManageStorageViewInfo.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v43), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v39;
    v7 = v40;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v1[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_title];
  *v8 = v6;
  v8[1] = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x48656761726F7473, 0xED00007265646165), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v43), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v39;
    v12 = v40;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v1[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageHeaderText];
  *v13 = v11;
  v13[1] = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0xD000000000000010, 0x80000002759DEA90), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v43), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v39;
  }

  else
  {
    v16 = sub_2758A2A88(MEMORY[0x277D84F90]);
  }

  v17 = objc_allocWithZone(type metadata accessor for ManageStorageBarColors());
  *&v2[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageBarColors] = ManageStorageBarColors.init(_:)(v16);
  v18 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v19 = sub_27586F8A0(0x6569666963657073, 0xEA00000000007372);
    if (v20 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v19, v43), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast()))
    {
      v21 = v39;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 32);
    v24 = type metadata accessor for ManageStorageSpecifier();
    do
    {
      v25 = *v23;
      v26 = objc_allocWithZone(v24);
      swift_bridgeObjectRetain_n();
      ManageStorageSpecifier.init(_:)(v25);
      MEMORY[0x277C84160]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v27 = v18;

      ++v23;
      --v22;
    }

    while (v22);
  }

  else
  {
    v27 = v18;
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_specifiers] = v27;
  if (!*(a1 + 16))
  {

    goto LABEL_34;
  }

  v28 = sub_27586F8A0(0xD000000000000011, 0x80000002759DEAB0);
  if ((v29 & 1) == 0)
  {
LABEL_34:

    goto LABEL_35;
  }

  sub_275864C94(*(a1 + 56) + 32 * v28, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if (swift_dynamicCast())
  {
    v30 = v41;
    goto LABEL_36;
  }

LABEL_35:
  v30 = MEMORY[0x277D84F90];
LABEL_36:
  v43[0] = v18;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = (v30 + 32);
    v33 = type metadata accessor for ManageStorageTip();
    do
    {
      v34 = *v32;
      v35 = objc_allocWithZone(v33);
      swift_bridgeObjectRetain_n();
      ManageStorageTip.init(_:)(v34);
      MEMORY[0x277C84160]();
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v18 = v43[0];

      ++v32;
      --v31;
    }

    while (v31);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_tips] = v18;

  v42.receiver = v2;
  v42.super_class = type metadata accessor for ManageStorageViewInfo();
  return objc_msgSendSuper2(&v42, sel_init);
}

id sub_2758A024C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  v4 = sub_2759BA3D8();

  return v4;
}

id ManageStorageBarColors.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x746867696CLL, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v13), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v11;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_light] = v6;
  if (!*(a1 + 16) || (v7 = sub_27586F8A0(1802658148, 0xE400000000000000), (v8 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_275864C94(*(a1 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2F8, &qword_2759C3760);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v9 = v11;
LABEL_12:
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_dark] = v9;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ManageStorageBarColors();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_2758A050C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManageStorageBarColors();
  result = sub_2759BA8D8();
  *a1 = result;
  return result;
}

id ManageStorageSpecifier.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x696669746E656469, 0xEA00000000007265), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v27), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_identifier];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v27), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_title];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v27), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v24;
    v17 = v25;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_subTitle];
  *v18 = v16;
  *(v18 + 1) = v17;
  if (!*(a1 + 16) || (v19 = sub_27586F8A0(0x6E6F69746361, 0xE600000000000000), (v20 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_275864C94(*(a1 + 56) + 32 * v19, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v21 = sub_2758A2A88(MEMORY[0x277D84F90]);
    goto LABEL_22;
  }

  v21 = v24;
LABEL_22:
  v22 = objc_allocWithZone(type metadata accessor for ManageStorageAction());
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ManageStorageSpecifier_action] = ManageStorageAction.init(_:)(v21);
  v26.receiver = v2;
  v26.super_class = type metadata accessor for ManageStorageSpecifier();
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_2758A095C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManageStorageSpecifier();
  result = sub_2759BA8D8();
  *a1 = result;
  return result;
}

id sub_2758A09F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_2759BA258();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2758A0A7C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 0x656C746954627573;
    if (a1 != 2)
    {
      v5 = 0x557373696D736964;
    }

    if (a1)
    {
      v4 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x736E6F6369;
    if (a1 != 6)
    {
      v1 = 0x6C6F626D79536673;
    }

    v2 = 0x726F68636E61;
    if (a1 != 4)
    {
      v2 = 0x736E6F69746361;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

id ManageStorageTip.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(25705, 0xE200000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v60), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v56;
    v7 = v57;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_identifier];
  *v8 = v6;
  v8[1] = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v60), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v56;
    v12 = v57;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_title];
  *v13 = v11;
  v13[1] = v12;
  if (*(a1 + 16) && (v14 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v15 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v14, v60), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v56;
    v17 = v57;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_subTitle];
  *v18 = v16;
  v18[1] = v17;
  if (*(a1 + 16) && (v19 = sub_27586F8A0(0x557373696D736964, 0xEA00000000004C52), (v20 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v19, v60), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v56;
    v22 = v57;
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_dismissURL];
  *v23 = v21;
  v23[1] = v22;
  if (*(a1 + 16) && (v24 = sub_27586F8A0(0x726F68636E61, 0xE600000000000000), (v25 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v24, v60), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v56;
    v27 = v57;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = &v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_anchor];
  *v28 = v26;
  v28[1] = v27;
  v29 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    v30 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000);
    if (v31 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v30, v60), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750), (swift_dynamicCast()))
    {
      v32 = v56;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v59 = v29;
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = (v32 + 32);
    v35 = type metadata accessor for ManageStorageAction();
    do
    {
      v36 = *v34;
      v37 = objc_allocWithZone(v35);
      swift_bridgeObjectRetain_n();
      ManageStorageAction.init(_:)(v36);
      MEMORY[0x277C84160]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v29 = v59;

      ++v34;
      --v33;
    }

    while (v33);
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions] = v29;
  v39 = *(a1 + 16);

  if (v39 && (v40 = sub_27586F8A0(0x736E6F6369, 0xE500000000000000), (v41 & 1) != 0))
  {
    sub_275864C94(*(a1 + 56) + 32 * v40, v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
    if (swift_dynamicCast())
    {
      v42 = v56;
      goto LABEL_43;
    }
  }

  else
  {
  }

  v42 = sub_2758A2A88(MEMORY[0x277D84F90]);
LABEL_43:
  v43 = *(v42 + 16);
  if (!v43)
  {
LABEL_48:
    v47 = 0;
    goto LABEL_49;
  }

  v44 = sub_27586F8A0(0x6C6F626D79536673, 0xEA00000000006449);
  if ((v45 & 1) == 0)
  {
    v43 = 0;
    goto LABEL_48;
  }

  sub_275864C94(*(v42 + 56) + 32 * v44, v60);
  v46 = swift_dynamicCast();
  v43 = v56;
  v47 = v57;
  if (!v46)
  {
    v43 = 0;
    v47 = 0;
  }

LABEL_49:
  v48 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbol];
  *v48 = v43;
  *(v48 + 1) = v47;
  if (*(v42 + 16) && (v49 = sub_27586F8A0(0x6C6F626D79536673, 0xED0000726F6C6F43), (v50 & 1) != 0))
  {
    sub_275864C94(*(v42 + 56) + 32 * v49, v60);

    v51 = swift_dynamicCast();
    v52 = v56;
    v53 = v57;
    if (!v51)
    {
      v52 = 0;
      v53 = 0;
    }
  }

  else
  {

    v52 = 0;
    v53 = 0;
  }

  v54 = &v2[OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_sfSymbolColor];
  *v54 = v52;
  *(v54 + 1) = v53;

  v58.receiver = v2;
  v58.super_class = type metadata accessor for ManageStorageTip();
  return objc_msgSendSuper2(&v58, sel_init);
}

BOOL sub_2758A11FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions);
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_2759BA9E8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C846A0](v3, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_15:
        __break(1u);
        return v2 != v4;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v5 = *(v1 + 8 * v3 + 32);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }
    }

    v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType];

    v3 = v4 + 1;
  }

  while ((v6 - 114) > 0xD || ((1 << (v6 - 114)) & 0x20F1) == 0);
  return v2 != v4;
}

BOOL sub_2758A1330()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageTip_actions);
  if (v1 >> 62)
  {
LABEL_15:
    v2 = sub_2759BA9E8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C846A0](v3, v1);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        return v2 != v4;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType];

    v3 = v4 + 1;
  }

  while ((v6 - 109) > 2);
  return v2 != v4;
}

id ManageStorageTip.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2758A1588@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManageStorageTip();
  result = sub_2759BA8D8();
  *a1 = result;
  return result;
}

id sub_2758A1694(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3))
  {
    v3 = *(a1 + *a3);

    v4 = sub_2759BA1C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id ManageStorageAction.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x6C75616665447369, 0xE900000000000074), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v43), swift_dynamicCast()))
  {
    v6 = v40;
  }

  else
  {
    v6 = 0;
  }

  v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDefault] = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = sub_27586F8A0(0x7572747365447369, 0xED00006576697463);
    if ((v9 & 1) != 0 && (sub_275864C94(*(a1 + 56) + 32 * v8, v43), swift_dynamicCast()))
    {
      LOBYTE(v7) = v40;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_isDestructive] = v7;
  if (*(a1 + 16) && (v10 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v11 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v10, v43), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v40;
    v13 = v41;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = &v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title];
  *v14 = v12;
  v14[1] = v13;
  if (*(a1 + 16) && (v15 = sub_27586F8A0(0x52556E6F69746361, 0xE90000000000004CLL), (v16 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v15, v43), (swift_dynamicCast() & 1) != 0))
  {
    v17 = v40;
    v18 = v41;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = &v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL];
  *v19 = v17;
  v19[1] = v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = sub_27586F8A0(0xD000000000000010, 0x80000002759DEB80);
    if (v22)
    {
      sub_275864C94(*(a1 + 56) + 32 * v21, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v23 = swift_dynamicCast();
      v20 = v40;
      if (!v23)
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionParameters] = v20;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = sub_27586F8A0(0x6D61726150797562, 0xED00007372657465);
    if (v26)
    {
      sub_275864C94(*(a1 + 56) + 32 * v25, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0);
      v27 = swift_dynamicCast();
      v24 = v40;
      if (!v27)
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_buyParameters] = v24;
  if (*(a1 + 16) && (v28 = sub_27586F8A0(0x616D7269666E6F63, 0xEC0000006E6F6974), (v29 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v28, v43), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2E0, &unk_2759C46B0), (swift_dynamicCast() & 1) != 0))
  {
    v30 = objc_allocWithZone(type metadata accessor for ManageStorageConfirmation());
    v31 = ManageStorageConfirmation.init(_:)(v40);
  }

  else
  {
    v31 = 0;
  }

  *&v1[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_confirmation] = v31;
  if (!*(a1 + 16) || (v32 = sub_27586F8A0(0x79546E6F69746361, 0xEA00000000006570), (v33 & 1) == 0))
  {

    goto LABEL_43;
  }

  sub_275864C94(*(a1 + 56) + 32 * v32, v43);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_43:
    v35 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_44;
  }

  v35 = v40;
  v34 = v41;
LABEL_44:
  v36 = &v2[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString];
  *v36 = v35;
  v36[1] = v34;

  v37 = sub_2759BA258();

  v38 = _ICQActionForString();

  *&v2[OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionType] = v38;
  v42.receiver = v2;
  v42.super_class = type metadata accessor for ManageStorageAction();
  return objc_msgSendSuper2(&v42, sel_init);
}

id sub_2758A1CD0()
{
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString);
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionString + 8);
  v4 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title);
  v3 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_title + 8);
  v5 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL + 8);
  v14 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionURL);
  v6 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_actionParameters);
  v7 = *(v0 + OBJC_IVAR____TtC14iCloudSettings19ManageStorageAction_buyParameters);
  v8 = type metadata accessor for Action();
  v9 = objc_allocWithZone(v8);

  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject] = sub_2758A2A88(MEMORY[0x277D84F90]);
  v10 = &v9[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  *v10 = v2;
  v10[1] = v1;
  v11 = &v9[OBJC_IVAR____TtC14iCloudSettings6Action_title];
  *v11 = v4;
  v11[1] = v3;
  v12 = &v9[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
  *v12 = v14;
  v12[1] = v5;
  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters] = v6;
  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action_buyParameters] = v7;
  *&v9[OBJC_IVAR____TtC14iCloudSettings6Action_actionConfirmation] = 0;
  v9[OBJC_IVAR____TtC14iCloudSettings6Action_isDefault] = 0;
  v9[OBJC_IVAR____TtC14iCloudSettings6Action_isDestructive] = 0;
  v15.receiver = v9;
  v15.super_class = v8;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_2758A1FAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManageStorageAction();
  result = sub_2759BA8D8();
  *a1 = result;
  return result;
}

id sub_2758A2004(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_2759BA258();

  return v6;
}

id sub_2758A2080(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v4 = *(a1 + *a3);
  a4();

  v5 = sub_2759BA3D8();

  return v5;
}

id ManageStorageConfirmation.init(_:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_27586F8A0(0x656C746974, 0xE500000000000000), (v5 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v4, v27), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = &v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_title];
  *v8 = v6;
  *(v8 + 1) = v7;
  if (*(a1 + 16) && (v9 = sub_27586F8A0(0x656C746954627573, 0xE800000000000000), (v10 & 1) != 0) && (sub_275864C94(*(a1 + 56) + 32 * v9, v27), (swift_dynamicCast() & 1) != 0))
  {
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = &v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_subTitle];
  *v13 = v11;
  *(v13 + 1) = v12;
  if (!*(a1 + 16) || (v14 = sub_27586F8A0(0x736E6F69746361, 0xE700000000000000), (v15 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_275864C94(*(a1 + 56) + 32 * v14, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F2D8, &unk_2759C3750);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    *&v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions] = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v16 = MEMORY[0x277D84F90];
  v27[0] = MEMORY[0x277D84F90];
  v17 = *(v24 + 16);
  if (v17)
  {
    v18 = (v24 + 32);
    v19 = type metadata accessor for ManageStorageAction();
    do
    {
      v20 = *v18;
      v21 = objc_allocWithZone(v19);
      swift_bridgeObjectRetain_n();
      ManageStorageAction.init(_:)(v20);
      MEMORY[0x277C84160]();
      if (*((v27[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v27[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2759BA3F8();
      }

      sub_2759BA418();
      v16 = v27[0];

      ++v18;
      --v17;
    }

    while (v17);
  }

  *&v2[OBJC_IVAR____TtC14iCloudSettings25ManageStorageConfirmation_actions] = v16;
LABEL_22:
  v26.receiver = v2;
  v26.super_class = type metadata accessor for ManageStorageConfirmation();
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_2758A245C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2758A24F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2759BA858();

  return sub_2758A25CC(a1, v5);
}

unint64_t sub_2758A253C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2759BA298();
  sub_2759BABD8();
  sub_2759BA328();
  v4 = sub_2759BAC08();

  return sub_2758A2694(a1, v4);
}

unint64_t sub_2758A25CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2758A3324(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x277C84600](v9, a1);
      sub_275864C40(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2758A2694(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2759BA298();
      v9 = v8;
      if (v7 == sub_2759BA298() && v9 == v10)
      {
        break;
      }

      v12 = sub_2759BAAC8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2758A2798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C0, &unk_2759C3980);
    v3 = sub_2759BAA28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_27586F8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_2758A289C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3C8, &qword_2759C3990);
    v8 = sub_2759BAA28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_27586FBC8(v10, v6, &qword_280A0EC08, &unk_2759CCBF0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_27586F8A0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_2759B8AF8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2758A2A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F400, &unk_2759C39C0);
    v3 = sub_2759BAA28();
    v4 = a1 + 32;

    while (1)
    {
      sub_27586FBC8(v4, &v13, &qword_280A0F408, qword_2759CC3C0);
      v5 = v13;
      v6 = v14;
      result = sub_27586F8A0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2758A2ECC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2758A2DA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D0, &qword_2759C3998);
    v3 = sub_2759BAA28();
    v4 = a1 + 32;

    while (1)
    {
      sub_27586FBC8(v4, &v11, &unk_280A0EF50, &qword_2759C2EF0);
      v5 = v11;
      result = sub_2758A253C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2758A2ECC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_2758A2ECC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2758A2EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F0, &qword_2759C39B0);
    v3 = sub_2759BAA28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_2758A253C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_2758A2FD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3F8, &qword_2759C39B8);
    v3 = sub_2759BAA28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_2758A253C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2758A30D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3E8, &qword_2759C39A8);
    v3 = sub_2759BAA28();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_27586F8A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_2758A31E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F3D8, &qword_2759C4BE0);
    v3 = sub_2759BAA28();
    v4 = a1 + 32;

    while (1)
    {
      sub_27586FBC8(v4, v13, &qword_280A0F3E0, &qword_2759C39A0);
      result = sub_2758A24F8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2758A2ECC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2758A3380(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_2758A33AC()
{
  v1 = *(v0 + 40);
  sub_2759BABD8();
  sub_2759BA328();
  v2 = sub_2759BAC08();

  return sub_2758A3380(v2);
}

uint64_t sub_2758A3430()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2758A34DC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2758A3588()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F550, &qword_2759C3D58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C39D0;
  v59 = *MEMORY[0x277CB8960];
  *(inited + 32) = *MEMORY[0x277CB8960];
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000002759DF470;
  v58 = *MEMORY[0x277CB8A08];
  *(inited + 56) = *MEMORY[0x277CB8A08];
  *(inited + 64) = 0xD000000000000019;
  v57 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  *(inited + 72) = 0x80000002759DF470;
  *(inited + 80) = v1;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000002759DF490;
  v56 = *MEMORY[0x277CB89C0];
  *(inited + 104) = *MEMORY[0x277CB89C0];
  *(inited + 112) = 0xD000000000000016;
  v55 = *MEMORY[0x277CB8A58];
  v2 = *MEMORY[0x277CB8A58];
  *(inited + 120) = 0x80000002759DDD10;
  *(inited + 128) = v2;
  v3 = MEMORY[0x277CB89D8];
  *(inited + 136) = 0xD000000000000016;
  *(inited + 144) = 0x80000002759DF4B0;
  v54 = *v3;
  *(inited + 152) = *v3;
  *(inited + 160) = 0xD000000000000013;
  v53 = *MEMORY[0x277CB89F8];
  v4 = *MEMORY[0x277CB89F8];
  *(inited + 168) = 0x80000002759DF4D0;
  *(inited + 176) = v4;
  *(inited + 184) = 0xD000000000000015;
  *(inited + 192) = 0x80000002759DF4F0;
  v52 = *MEMORY[0x277CB8920];
  *(inited + 200) = *MEMORY[0x277CB8920];
  *(inited + 208) = 0xD000000000000016;
  v51 = *MEMORY[0x277CB89A0];
  v5 = *MEMORY[0x277CB89A0];
  *(inited + 216) = 0x80000002759DF510;
  *(inited + 224) = v5;
  *(inited + 232) = 0xD000000000000010;
  *(inited + 240) = 0x80000002759DF530;
  v50 = *MEMORY[0x277CB8958];
  *(inited + 248) = *MEMORY[0x277CB8958];
  *(inited + 256) = 0xD000000000000013;
  v49 = *MEMORY[0x277CB8968];
  v6 = *MEMORY[0x277CB8968];
  *(inited + 264) = 0x80000002759DF550;
  *(inited + 272) = v6;
  *(inited + 280) = 0xD00000000000001BLL;
  *(inited + 288) = 0x80000002759DF570;
  v48 = *MEMORY[0x277CB8A18];
  *(inited + 296) = *MEMORY[0x277CB8A18];
  *(inited + 304) = 0xD000000000000013;
  v47 = *MEMORY[0x277CB8928];
  v7 = *MEMORY[0x277CB8928];
  *(inited + 312) = 0x80000002759DF590;
  *(inited + 320) = v7;
  v8 = MEMORY[0x277CB89F0];
  *(inited + 328) = 0xD000000000000016;
  *(inited + 336) = 0x80000002759DF5B0;
  v9 = *v8;
  *(inited + 344) = *v8;
  strcpy((inited + 352), "com.apple.news");
  v10 = *MEMORY[0x277CB8A50];
  *(inited + 367) = -18;
  *(inited + 368) = v10;
  v11 = MEMORY[0x277CB89A8];
  *(inited + 376) = 0xD000000000000010;
  *(inited + 384) = 0x80000002759DF5D0;
  v12 = *v11;
  *(inited + 392) = *v11;
  strcpy((inited + 400), "com.apple.Home");
  v13 = *MEMORY[0x277CB8990];
  *(inited + 415) = -18;
  *(inited + 416) = v13;
  v14 = MEMORY[0x277CB8A40];
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x80000002759DF5F0;
  v15 = *v14;
  *(inited + 440) = *v14;
  *(inited + 448) = 0xD000000000000012;
  v16 = *MEMORY[0x277CB8998];
  *(inited + 456) = 0x80000002759DF610;
  *(inited + 464) = v16;
  *(inited + 472) = 0xD000000000000012;
  *(inited + 480) = 0x80000002759DF630;
  v17 = *MEMORY[0x277CB89E0];
  *(inited + 488) = *MEMORY[0x277CB89E0];
  *(inited + 496) = 0xD000000000000011;
  v18 = *MEMORY[0x277CB8A00];
  *(inited + 504) = 0x80000002759DF650;
  *(inited + 512) = v18;
  v46 = objc_opt_self();
  v19 = v59;
  v20 = v58;
  v21 = v57;
  v22 = v56;
  v23 = v55;
  v24 = v54;
  v25 = v53;
  v26 = v52;
  v27 = v51;
  v28 = v50;
  v29 = v49;
  v30 = v48;
  v31 = v47;
  v32 = v9;
  v33 = v10;
  v34 = v12;
  v35 = v13;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v40 = [v46 currentDevice];
  v41 = [v40 userInterfaceIdiom];

  v42 = "com.apple.facetime";
  v43 = 0xD000000000000015;
  if (v41)
  {
    v43 = 0xD000000000000012;
    v42 = "com.apple.journal";
  }

  *(inited + 520) = v43;
  *(inited + 528) = v42 | 0x8000000000000000;
  v44 = sub_2758A2FD4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F558, &qword_2759C3D60);
  result = swift_arrayDestroy();
  qword_280A23870 = v44;
  return result;
}

uint64_t sub_2758A3A54()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  v1 = *(v0 + 24);
}

uint64_t sub_2758A3AF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  *a2 = *(v3 + 24);
}

uint64_t sub_2758A3BA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2758A3BD0(v4);
}

uint64_t sub_2758A3BD0(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = sub_2759B9C08();

  if (v4)
  {
    v5 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8628();
  }
}

uint64_t sub_2758A3D24()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  v1 = *(v0 + 32);
}

uint64_t sub_2758A3DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  *a2 = *(v3 + 32);
}

uint64_t sub_2758A3E74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2758A3EA0(v4);
}

uint64_t sub_2758A3EA0(uint64_t a1)
{
  v3 = *(v1 + 32);

  v4 = sub_2759B9C08();

  if (v4)
  {
    v5 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8628();
  }
}

double sub_2758A3FF4()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  return *(v0 + 40);
}

double sub_2758A4094@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_2758A4164(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8628();
  }
}

uint64_t sub_2758A427C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_2758A432C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_2758A43D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2758A4418(v2, v3);
}

uint64_t sub_2758A4418(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 48) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 56);
      if (sub_2759BAAC8())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8628();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_2758A4588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t sub_2758A45C4()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  return *(v0 + 64);
}

uint64_t sub_2758A4664@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_2758A4734(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_2758A484C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = OBJC_IVAR____TtC14iCloudSettings27ThermometerSectionViewModel___observationRegistrar;
  v5 = sub_2759B8678();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2758A4908(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v51 = sub_2759B9BF8();
  v3 = *(v51 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v51);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer) + OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_sections);
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_36;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v58 = MEMORY[0x277D84F90];

    sub_2759BA968();
    if (v8 < 0)
    {
      __break(1u);
    }

    v47 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v7)
    {
      v10 = sub_2759BA9E8();
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = 0;
    v55 = v6 & 0xC000000000000001;
    v53 = OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_light;
    v52 = OBJC_IVAR____TtC14iCloudSettings22ManageStorageBarColors_dark;
    v48 = v6;
    v46 = v6 + 32;
    v12 = (v3 + 13);
    v56 = v10 & ~(v10 >> 63);
    v6 = 40;
    v49 = *MEMORY[0x277CE0EE0];
    v54 = v8;
    while (1)
    {
      if (v56 == v11)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v8 = sub_2759BA9E8();
        goto LABEL_3;
      }

      if (v55)
      {
        v19 = MEMORY[0x277C846A0](v11, v48);
      }

      else
      {
        if (v11 >= *(v47 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(v46 + 8 * v11);
      }

      v20 = v19;
      v21 = *(a1 + v53);
      v22 = *(v21 + 16);
      if (v11 < v22)
      {
        break;
      }

      if (v22)
      {
        v28 = (v21 + 16 + 16 * v22);
        v23 = *v28;
        v24 = v28[1];
        v57 = 0;
        v29 = objc_allocWithZone(MEMORY[0x277CCAC80]);

        v30 = sub_2759BA258();
        v31 = [v29 initWithString_];

        v3 = [v31 scanHexLongLong_];
        if (!v3)
        {
LABEL_22:
          v27 = sub_27594972C(v23, v24);
          goto LABEL_23;
        }

LABEL_19:
        (*v12)(v50, v49, v51);
        v27 = sub_2759B9C78();
LABEL_23:
        v32 = v27;

        goto LABEL_24;
      }

      v43 = [objc_opt_self() quaternaryLabelColor];
      v32 = sub_2759B9BD8();
LABEL_24:
      v33 = *(a1 + v52);
      v34 = *(v33 + 16);
      if (v11 >= v34)
      {
        if (!v34)
        {
          v44 = [objc_opt_self() quaternaryLabelColor];
          v14 = sub_2759B9BD8();
          goto LABEL_11;
        }

        v40 = (v33 + 16 + 16 * v34);
        v35 = *v40;
        v36 = v40[1];
        v57 = 0;
        v41 = objc_allocWithZone(MEMORY[0x277CCAC80]);

        v42 = sub_2759BA258();
        v3 = [v41 initWithString_];

        LODWORD(v42) = [v3 scanHexLongLong_];
        if (!v42)
        {
LABEL_29:
          v13 = sub_27594972C(v35, v36);
          goto LABEL_10;
        }
      }

      else
      {
        v35 = *(v33 + v6 - 8);
        v36 = *(v33 + v6);
        v57 = 0;
        v37 = objc_allocWithZone(MEMORY[0x277CCAC80]);

        v38 = sub_2759BA258();
        v39 = [v37 initWithString_];

        v3 = [v39 scanHexLongLong_];
        if (!v3)
        {
          goto LABEL_29;
        }
      }

      (*v12)(v50, v49, v51);
      v13 = sub_2759B9C78();
LABEL_10:
      v14 = v13;

LABEL_11:
      ++v11;
      v15 = type metadata accessor for ThermometerSectionViewModel(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      v18 = swift_allocObject();
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      sub_2759B8668();
      *(v18 + 16) = v20;
      *(v18 + 24) = v32;
      *(v18 + 32) = v14;
      *(v18 + 40) = 0x4018000000000000;
      sub_2759BA948();
      v7 = *(v58 + 16);
      sub_2759BA978();
      sub_2759BA988();
      sub_2759BA958();
      v6 += 16;
      if (v54 == v11)
      {

        result = v58;
        goto LABEL_33;
      }
    }

    v23 = *(v21 + v6 - 8);
    v24 = *(v21 + v6);
    v57 = 0;
    v25 = objc_allocWithZone(MEMORY[0x277CCAC80]);

    v26 = sub_2759BA258();
    v3 = [v25 initWithString_];

    LOBYTE(v26) = [v3 scanHexLongLong_];
    if ((v26 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_33:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2758A4F28()
{
  result = sub_2759BA258();
  qword_280A0F410 = result;
  return result;
}

id static ManageStorageAppsListViewModel.ViewModelDidUpdateNotificationName.getter()
{
  if (qword_280A0E318 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0F410;

  return v1;
}

void *sub_2758A5018()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  v2 = v1;
  return v1;
}

id sub_2758A50C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  *a2 = v4;

  return v4;
}

void sub_2758A5188(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2758A51B8(v2);
}

void sub_2758A51B8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for ManageStorageAppsListDataModel();
  v6 = v5;
  v7 = a1;
  v8 = sub_2759BA788();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_2758A5340@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_2758A53F4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2758A5424(v2);
}

void sub_2758A5424(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8628();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for iCloudHomeViewModel();
  v3 = v2;
  v4 = sub_2759BA788();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2758A55C4()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections);
}

uint64_t sub_2758A5670@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  *a2 = *(v3 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections);
}

uint64_t sub_2758A5724(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8628();
}

uint64_t sub_2758A57F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758A5888, v6, v5);
}

uint64_t sub_2758A5888()
{
  v2 = v0[2];
  v1 = v0[3];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong topViewController];

    if (v5)
    {
      v6 = [v5 navigationItem];

      if (v6)
      {
        if (*(v0[2] + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem))
        {
          [v6 setRightBarButtonItem_];
        }
      }
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_2758A596C()
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  return *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled);
}

uint64_t sub_2758A5A14(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8628();
  }

  return result;
}

id sub_2758A5B3C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v60 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_2759B89A8();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v59 - v11;
  v12 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel] = 0;
  v13 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__homeViewModel;
  swift_unknownObjectWeakInit();
  v14 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections] = MEMORY[0x277D84F90];
  v15 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps] = v14;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps] = v14;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels] = v14;
  v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_loadDataTask] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete] = xmmword_2759C39E0;
  v16 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_urlToShowWhenLoadingComplete];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId];
  *v17 = 0;
  v17[1] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation] = 1;
  v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator] = 0;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem] = 0;
  sub_2759B8668();
  v18 = a2;
  MEMORY[0x277C85960](&v4[v13]);
  swift_unknownObjectWeakInit();

  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account] = a1;
  v63 = v18;
  LOBYTE(v13) = *(v18 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_launchedFromRootLevel);
  v19 = type metadata accessor for ManageStorageAppsListDataController();
  v20 = objc_allocWithZone(v19);
  v21 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  v20[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache] = 0;
  *&v20[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_account] = a1;
  swift_beginAccess();
  v20[v21] = 1;
  v22 = type metadata accessor for iCloudNetworkRequest();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = v13;
  v26 = a1;
  sub_2759B8718();
  v27 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v20[OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_networkRequest] = v25;
  v68.receiver = v20;
  v68.super_class = v19;
  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appsListDataController] = objc_msgSendSuper2(&v68, sel_init);
  v28 = *&v4[v12];
  v29 = v60;
  v61 = v60;

  *&v4[v12] = v29;
  v30 = objc_allocWithZone(sub_2759B8698());
  v31 = v26;
  v32 = sub_2759B8688();
  v33 = sub_2758ACDE0(&qword_280A0FED0, MEMORY[0x277D7F240]);
  v34 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_liftUIDataSource];
  *v34 = v32;
  v34[1] = v33;
  v35 = type metadata accessor for ICSAnalyticsController();
  v36 = objc_allocWithZone(v35);
  v37 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController;
  *&v36[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController] = 0;
  v38 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager;
  *&v36[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager] = 0;
  v39 = objc_allocWithZone(type metadata accessor for iCloudHomeDataController());
  v40 = v31;
  v41 = [v39 initWithAccount:v40 launchedFromRootLevel:1];
  v42 = *&v36[v37];
  *&v36[v37] = v41;

  v43 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];
  v44 = *&v36[v38];
  *&v36[v38] = v43;

  v67.receiver = v36;
  v67.super_class = v35;
  v45 = objc_msgSendSuper2(&v67, sel_init);

  *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_analyticsController] = v45;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v7, qword_280A238D0);
  v47 = v64;
  v48 = *(v64 + 16);
  v49 = v59;
  v48(v59, v46, v7);
  v50 = type metadata accessor for ManageStorageAnalytics();
  v51 = swift_allocObject();
  v51[8] = 0;
  v51[9] = 0;
  v51[7] = 0;
  v48(v62, v49, v7);
  v51[5] = sub_2759B8928();
  v51[6] = &off_288481960;
  __swift_allocate_boxed_opaque_existential_1(v51 + 2);
  sub_2759B8908();
  (*(v47 + 8))(v49, v7);
  v52 = &v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController];
  v52[3] = v50;
  v52[4] = &off_288485F28;
  *v52 = v51;
  v66.receiver = v4;
  v66.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v66, sel_init);
  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 defaultCenter];
  [v56 addObserver:v55 selector:sel_handleQuotaChangeNotification name:*MEMORY[0x277D7F2C0] object:0];

  v57 = [v54 defaultCenter];
  [v57 addObserver:v55 selector:sel_handleQuotaChangeNotification name:*MEMORY[0x277D7F4E8] object:0];

  sub_2758A61BC();
  return v55;
}

void sub_2758A61BC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v1 setHidesWhenStopped_];
  v2 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator);
  *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator) = v1;
  v3 = v1;

  v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v4 setHidden_];

  v5 = *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem);
  *(v0 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem) = v4;
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.handleQuotaChangeNotification()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_27587D460(0, 0, v4, &unk_2759C3A00, v6);
}

uint64_t sub_2758A6384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585F7A0;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 1);
}

uint64_t sub_2758A641C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_2758A6384();
}

uint64_t ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(char a1, char a2)
{
  *(v3 + 280) = v2;
  *(v3 + 393) = a2;
  *(v3 + 392) = a1;
  *(v3 + 288) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2758A6548, 0, 0);
}

uint64_t sub_2758A6548()
{
  v1 = *(v0 + 280);
  v2 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList;
  *(v0 + 296) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_isFetchingAppsList;
  if (*(v1 + v2))
  {
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 392);
    *(v1 + v2) = 1;
    v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController;
    *(v0 + 304) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_signpostController;
    v7 = *__swift_project_boxed_opaque_existential_1((v1 + v6), *(v1 + v6 + 24));
    sub_27598B078();
    if (v5 != 1)
    {
      goto LABEL_10;
    }

    v8 = *(v0 + 280);
    swift_getKeyPath();
    *(v0 + 272) = v8;
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 312) = Strong;
    if (Strong)
    {
      v10 = swift_task_alloc();
      *(v0 + 320) = v10;
      *v10 = v0;
      v10[1] = sub_2758A6764;

      return sub_27588A44C(0);
    }

    else
    {
LABEL_10:
      v11 = *(*(v0 + 280) + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appsListDataController);
      v12 = swift_task_alloc();
      *(v0 + 328) = v12;
      *v12 = v0;
      v12[1] = sub_2758A6904;

      return sub_27589B420();
    }
  }
}

uint64_t sub_2758A6764()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2758A6860, 0, 0);
}

uint64_t sub_2758A6860()
{
  v1 = *(*(v0 + 280) + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appsListDataController);
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_2758A6904;

  return sub_27589B420();
}

uint64_t sub_2758A6904(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v7 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v5 = sub_2758A824C;
  }

  else
  {
    v5 = sub_2758A6A18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2758A6A18()
{
  v4 = *(v0 + 336);
  v5 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps;
  *(v0 + 352) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps;
  v6 = *(v4 + v5);
  v7 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_118;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2759BA9E8())
  {
    v9 = MEMORY[0x277D84F90];
    if (i)
    {
      v100 = MEMORY[0x277D84F90];

      v9 = &v100;
      sub_2759BA968();
      if ((i & 0x8000000000000000) == 0)
      {
        v91 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v7)
        {
          v11 = sub_2759BA9E8();
        }

        else
        {
          v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = 0;
        v94 = v6 & 0xC000000000000001;
        v95 = v11 & ~(v11 >> 63);
        v92 = i;
        v93 = v6;
        while (v95 != v12)
        {
          if (v94)
          {
            v13 = MEMORY[0x277C846A0](v12, v6);
          }

          else
          {
            if (v12 >= *(v91 + 16))
            {
              goto LABEL_117;
            }

            v13 = *(v6 + 8 * v12 + 32);
          }

          v96 = v13;
          *(v0 + 80) = &type metadata for DefaultApplicationRecordProvider;
          *(v0 + 88) = &off_28847F8A0;
          v14 = type metadata accessor for DefaultIconLoader();
          v15 = objc_allocWithZone(v14);
          __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, *(v0 + 80));
          *(v0 + 120) = &type metadata for DefaultApplicationRecordProvider;
          *(v0 + 128) = &off_28847F8A0;
          sub_27586E058(v0 + 96, v15 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
          *(v0 + 240) = v15;
          *(v0 + 248) = v14;
          v16 = objc_msgSendSuper2((v0 + 240), sel_init);
          __swift_destroy_boxed_opaque_existential_1((v0 + 96));
          __swift_destroy_boxed_opaque_existential_1((v0 + 56));
          *(v0 + 40) = v14;
          *(v0 + 48) = &off_28847F800;
          *(v0 + 16) = v16;
          v17 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v14);
          v18 = *(v14 - 1);
          v19 = *(v18 + 64) + 15;
          v1 = swift_task_alloc();
          (*(v18 + 16))(v1, v17, v14);
          v20 = *v1;
          *(v0 + 160) = v14;
          *(v0 + 168) = &off_28847F800;
          *(v0 + 136) = v20;
          v21 = type metadata accessor for ManageStorageAppViewModel();
          v2 = objc_allocWithZone(v21);
          v22 = *(v0 + 160);
          v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v22);
          v24 = *(v22 - 8);
          v25 = *(v24 + 64) + 15;
          v3 = swift_task_alloc();
          (*(v24 + 16))(v3, v23, v22);
          v26 = *v3;
          *(v0 + 200) = v14;
          *(v0 + 208) = &off_28847F800;
          *(v0 + 176) = v26;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage) = 0;
          v27 = (v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
          *v27 = 0;
          v27[1] = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage) = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages) = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) = 0;
          v28 = v96;
          sub_2759B8668();
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) = v28;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) = 0;
          *(v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_index) = v12;
          sub_27586E058(v0 + 176, v2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_iconLoader);
          *(v0 + 256) = v2;
          *(v0 + 264) = v21;
          objc_msgSendSuper2((v0 + 256), sel_init);
          __swift_destroy_boxed_opaque_existential_1((v0 + 176));
          __swift_destroy_boxed_opaque_existential_1((v0 + 136));

          __swift_destroy_boxed_opaque_existential_1((v0 + 16));

          sub_2759BA948();
          v7 = *(v100 + 16);
          sub_2759BA978();
          sub_2759BA988();
          sub_2759BA958();
          ++v12;
          v6 = v93;
          if (v92 == v12)
          {

            v9 = v100;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_113;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_16:
    v7 = *(v0 + 280);
    v29 = *(v0 + 393);
    i = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    *(v0 + 360) = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    swift_beginAccess();
    v30 = *(v7 + i);
    *(v7 + i) = v9;

    if (v29)
    {
      v31 = *(v0 + 280);
      v32 = swift_task_alloc();
      *(v0 + 368) = v32;
      *(v32 + 16) = v31;
      v33 = *(MEMORY[0x277D858E8] + 4);
      v34 = swift_task_alloc();
      *(v0 + 376) = v34;
      *v34 = v0;
      v34[1] = sub_2758A7650;

      return MEMORY[0x282200600]();
    }

    v2 = *(v0 + 336);
    v10 = &OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
    v3 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
    v1 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
    if (v1 < 0)
    {
      goto LABEL_120;
    }

    v9 = *(*(v0 + 280) + *(v0 + 360));
    v10 = (v9 & 0xFFFFFFFFFFFFFF8);
    i = v9 >> 62;
    if (!(v9 >> 62))
    {
      v35 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35 >= v1)
      {
        v36 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
      }

      else
      {
        v36 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1)
      {
        v1 = v36;
      }

      else
      {
        v1 = 0;
      }

      if (v35 < v1)
      {
        goto LABEL_134;
      }

      goto LABEL_29;
    }

LABEL_121:
    if (v9 < 0)
    {
      v7 = v9;
    }

    else
    {
      v7 = v10;
    }

    v80 = sub_2759BA9E8();
    if (sub_2759BA9E8() < 0)
    {
      __break(1u);
LABEL_163:
      __break(1u);
      return MEMORY[0x282200600]();
    }

    if (v80 >= v1)
    {
      v81 = v1;
    }

    else
    {
      v81 = v80;
    }

    if (v80 < 0)
    {
      v81 = v1;
    }

    if (v1)
    {
      v1 = v81;
    }

    else
    {
      v1 = 0;
    }

    if (sub_2759BA9E8() < v1)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

LABEL_29:
    if ((v9 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      if (v1)
      {
        type metadata accessor for ManageStorageAppViewModel();
        v37 = 0;
        do
        {
          v38 = v37 + 1;
          sub_2759BA8F8();
          v37 = v38;
        }

        while (v1 != v38);
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (i)
    {
      v40 = sub_2759BA9F8();
      v41 = v42;
      v39 = v43;
      v1 = v44;

      if ((v1 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v39 = 0;
      v40 = v9 & 0xFFFFFFFFFFFFFF8;
      v41 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
      v1 = (2 * v1) | 1;
      if ((v1 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_2759BAAD8();
    swift_unknownObjectRetain_n();
    v47 = swift_dynamicCastClass();
    if (!v47)
    {
      swift_unknownObjectRelease();
      v47 = MEMORY[0x277D84F90];
    }

    v48 = *(v47 + 16);

    if (__OFSUB__(v1 >> 1, v39))
    {
      __break(1u);
LABEL_158:
      swift_unknownObjectRelease_n();
LABEL_39:
      sub_2758AC780(v40, v41, v39, v1);
      v7 = v45;
      v46 = MEMORY[0x277D84F90];
LABEL_46:
      swift_unknownObjectRelease();
      goto LABEL_47;
    }

    if (v48 != (v1 >> 1) - v39)
    {
      goto LABEL_158;
    }

    v7 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v46 = MEMORY[0x277D84F90];
    if (!v7)
    {
      v7 = MEMORY[0x277D84F90];
      goto LABEL_46;
    }

LABEL_47:
    v100 = v46;
    if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
    {
      v6 = *(v7 + 16);
      goto LABEL_50;
    }

LABEL_135:
    v6 = sub_2759BA9E8();
LABEL_50:
    v49 = MEMORY[0x277D84F90];
    if (!v6)
    {
      break;
    }

    v97 = v3;
    v98 = v2;
    v50 = 0;
    v3 = (v7 & 0xC000000000000001);
    v2 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    while (1)
    {
      if (v3)
      {
        v51 = MEMORY[0x277C846A0](v50, v7);
      }

      else
      {
        if (v50 >= *(v7 + 16))
        {
          goto LABEL_114;
        }

        v51 = *(v7 + 8 * v50 + 32);
      }

      v1 = v51;
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (*(*&v51[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
      {
        sub_2759BA948();
        v53 = *(v100 + 16);
        sub_2759BA978();
        sub_2759BA988();
        sub_2759BA958();
      }

      else
      {
      }

      ++v50;
      if (v52 == v6)
      {
        v54 = v100;
        v49 = MEMORY[0x277D84F90];
        v3 = v97;
        v2 = v98;
        goto LABEL_63;
      }
    }

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
    ;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_63:
  v55 = *(v0 + 352);
  v56 = *(v0 + 336);
  v57 = *(v0 + 280);

  v58 = *(v57 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps);
  *(v57 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps) = v54;

  v59 = *(v3 + v2);
  v60 = *(v56 + v55);
  if (v60 >> 62)
  {
    if (v60 < 0)
    {
      v82 = *(v56 + v55);
    }

    v61 = sub_2759BA9E8();
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = *(v0 + 360);
  v63 = *(v0 + 280);
  if (v61 < v59)
  {
    v59 = v61;
  }

  v7 = *(v63 + v62);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v83 = *(v63 + v62);
    }

    v64 = sub_2759BA9E8();
    v7 = *(v63 + v62);
  }

  else
  {
    v64 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v64 < v59)
  {
    v59 = v64;
  }

  v1 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v65 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v65 >= v59)
    {
      goto LABEL_73;
    }

LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v7 < 0)
  {
    v63 = v7;
  }

  else
  {
    v63 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v84 = sub_2759BA9E8();
  if (v84 < v59)
  {
    goto LABEL_163;
  }

  v65 = v84;
  if (sub_2759BA9E8() < v59)
  {
    __break(1u);
    goto LABEL_148;
  }

LABEL_73:
  if (v59 < 0)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v1)
  {
    v66 = sub_2759BA9E8();
  }

  else
  {
    v66 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v66 < v65)
  {
    goto LABEL_150;
  }

  if ((v65 & 0x8000000000000000) != 0)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if ((v7 & 0xC000000000000001) == 0 || v59 == v65)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_86;
  }

  if (v59 >= v65)
  {
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  type metadata accessor for ManageStorageAppViewModel();
  swift_bridgeObjectRetain_n();
  v67 = v59;
  do
  {
    v68 = v67 + 1;
    sub_2759BA8F8();
    v67 = v68;
  }

  while (v65 != v68);
LABEL_86:

  if (v1)
  {
    v63 = sub_2759BA9F8();
    v1 = v69;
    v59 = v70;
    v65 = v71;

    if (v65)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v63 = v7 & 0xFFFFFFFFFFFFFF8;
  v1 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  v65 = (2 * v65) | 1;
  if ((v65 & 1) == 0)
  {
LABEL_90:
    sub_2758AC780(v63, v1, v59, v65);
    v7 = v72;
    goto LABEL_97;
  }

LABEL_91:
  sub_2759BAAD8();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x277D84F90];
  }

  v74 = *(v73 + 16);

  if (__OFSUB__(v65 >> 1, v59))
  {
    goto LABEL_160;
  }

  if (v74 != (v65 >> 1) - v59)
  {
LABEL_161:
    swift_unknownObjectRelease_n();
    goto LABEL_90;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v7)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_97:
    swift_unknownObjectRelease();
  }

  v100 = v49;
  if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
  {
    v6 = *(v7 + 16);
    if (!v6)
    {
      goto LABEL_153;
    }

    goto LABEL_101;
  }

LABEL_152:
  v6 = sub_2759BA9E8();
  if (v6)
  {
LABEL_101:
    v75 = 0;
    v2 = (v7 & 0xC000000000000001);
    v3 = &OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    while (1)
    {
      if (v2)
      {
        v76 = MEMORY[0x277C846A0](v75, v7);
      }

      else
      {
        if (v75 >= *(v7 + 16))
        {
          goto LABEL_116;
        }

        v76 = *(v7 + 8 * v75 + 32);
      }

      v1 = v76;
      v77 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_115;
      }

      if (*(*&v76[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
      {
        sub_2759BA948();
        v78 = *(v100 + 16);
        sub_2759BA978();
        sub_2759BA988();
        sub_2759BA958();
      }

      else
      {
      }

      ++v75;
      if (v77 == v6)
      {
        v79 = v100;
        goto LABEL_154;
      }
    }
  }

LABEL_153:
  v79 = MEMORY[0x277D84F90];
LABEL_154:
  v85 = *(v0 + 296);
  v86 = *(v0 + 280);

  v87 = *(v86 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps);
  *(v86 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps) = v79;

  *(v86 + v85) = 0;
  sub_2759BA4C8();
  *(v0 + 384) = sub_2759BA4B8();
  v89 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2758A7EB8, v89, v88);
}

uint64_t sub_2758A7650()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2758A7768, 0, 0);
}

uint64_t sub_2758A7768()
{
  v66 = v2;
  v4 = v2[42];
  v5 = &OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
  v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount;
  v7 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_97;
  }

  v1 = *(v2[35] + v2[45]);
  v5 = (v1 & 0xFFFFFFFFFFFFFF8);
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_98;
  }

  v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= v7)
  {
    v9 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_primaryAppsSectionCount);
  }

  else
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  if (v8 >= v7)
  {
    goto LABEL_10;
  }

LABEL_111:
  __break(1u);
LABEL_112:
  for (i = sub_2759BA9E8(); ; i = *(v0 + 16))
  {
    v6 = MEMORY[0x277D84F90];
    if (i)
    {
      v63 = v4;
      v3 = 0;
      v4 = v0 & 0xC000000000000001;
      while (1)
      {
        if (v4)
        {
          v22 = MEMORY[0x277C846A0](v3, v0);
        }

        else
        {
          v5 = *(v0 + 16);
          if (v3 >= v5)
          {
            goto LABEL_94;
          }

          v22 = *(v0 + 8 * v3 + 32);
        }

        v7 = v22;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (*(*&v22[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
        {
          sub_2759BA948();
          v23 = *(v65 + 16);
          sub_2759BA978();
          sub_2759BA988();
          v1 = &v65;
          sub_2759BA958();
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          v24 = v65;
          v6 = MEMORY[0x277D84F90];
          v4 = v63;
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_44:
    v25 = v2[44];
    v26 = v2[42];
    v27 = v2[35];

    v28 = *(v27 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps);
    *(v27 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps) = v24;

    v1 = *(v4 + v64);
    v29 = *(v26 + v25);
    if (v29 >> 62)
    {
      if (v29 < 0)
      {
        v54 = *(v26 + v25);
      }

      v30 = sub_2759BA9E8();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v2[45];
    v32 = v2[35];
    if (v30 < v1)
    {
      v1 = v30;
    }

    v33 = *(v32 + v31);
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v55 = *(v32 + v31);
      }

      v34 = sub_2759BA9E8();
      v33 = *(v32 + v31);
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34 < v1)
    {
      v1 = v34;
    }

    v7 = v33 >> 62;
    if (v33 >> 62)
    {
      if (v33 < 0)
      {
        v32 = v33;
      }

      else
      {
        v32 = v33 & 0xFFFFFFFFFFFFFF8;
      }

      v50 = sub_2759BA9E8();
      if (v50 < v1)
      {
        goto LABEL_140;
      }

      v35 = v50;
      if (sub_2759BA9E8() < v1)
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35 < v1)
      {
        goto LABEL_125;
      }
    }

    if (v1 < 0)
    {
      goto LABEL_126;
    }

    if (v7)
    {
      v36 = sub_2759BA9E8();
    }

    else
    {
      v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36 < v35)
    {
      goto LABEL_127;
    }

    if ((v35 & 0x8000000000000000) != 0)
    {
      goto LABEL_128;
    }

    if ((v33 & 0xC000000000000001) == 0 || v1 == v35)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v1 >= v35)
      {
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        swift_unknownObjectRelease_n();
LABEL_71:
        sub_2758AC780(v32, v7, v1, v35);
        v33 = v42;
LABEL_78:
        swift_unknownObjectRelease();
        goto LABEL_79;
      }

      type metadata accessor for ManageStorageAppViewModel();
      swift_bridgeObjectRetain_n();
      v37 = v1;
      do
      {
        v38 = v37 + 1;
        sub_2759BA8F8();
        v37 = v38;
      }

      while (v35 != v38);
    }

    if (v7)
    {
      v32 = sub_2759BA9F8();
      v7 = v39;
      v1 = v40;
      v35 = v41;

      if ((v35 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v32 = v33 & 0xFFFFFFFFFFFFFF8;
      v7 = (v33 & 0xFFFFFFFFFFFFFF8) + 32;
      v35 = (2 * v35) | 1;
      if ((v35 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    sub_2759BAAD8();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x277D84F90];
    }

    v44 = *(v43 + 16);

    if (__OFSUB__(v35 >> 1, v1))
    {
      goto LABEL_137;
    }

    if (v44 != (v35 >> 1) - v1)
    {
      goto LABEL_138;
    }

    v33 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v33)
    {
      v33 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }

LABEL_79:
    v65 = v6;
    if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
    {
      v45 = *(v33 + 16);
      if (!v45)
      {
        break;
      }

      goto LABEL_82;
    }

LABEL_129:
    v45 = sub_2759BA9E8();
    if (!v45)
    {
      break;
    }

LABEL_82:
    v3 = 0;
    v4 = v33 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v46 = MEMORY[0x277C846A0](v3, v33);
      }

      else
      {
        v5 = *(v33 + 16);
        if (v3 >= v5)
        {
          goto LABEL_96;
        }

        v46 = *(v33 + 8 * v3 + 32);
      }

      v7 = v46;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (*(*&v46[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_showInAppList))
      {
        sub_2759BA948();
        v47 = *(v65 + 16);
        sub_2759BA978();
        sub_2759BA988();
        v1 = &v65;
        sub_2759BA958();
      }

      else
      {
      }

      ++v3;
      if (v6 == v45)
      {
        v48 = v65;
        goto LABEL_131;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    if (v1 < 0)
    {
      v0 = v1;
    }

    else
    {
      v0 = v5;
    }

    v49 = sub_2759BA9E8();
    v50 = sub_2759BA9E8();
    if (v50 < 0)
    {
      __break(1u);
LABEL_140:
      __break(1u);
      return MEMORY[0x2822009F8](v50, v51, v52);
    }

    if (v49 >= v7)
    {
      v53 = v7;
    }

    else
    {
      v53 = v49;
    }

    if (v49 < 0)
    {
      v53 = v7;
    }

    if (v7)
    {
      v7 = v53;
    }

    else
    {
      v7 = 0;
    }

    if (sub_2759BA9E8() < v7)
    {
      goto LABEL_111;
    }

LABEL_10:
    if ((v1 & 0xC000000000000001) != 0)
    {
      swift_bridgeObjectRetain_n();
      if (v7)
      {
        type metadata accessor for ManageStorageAppViewModel();
        v10 = 0;
        do
        {
          v11 = v10 + 1;
          sub_2759BA8F8();
          v10 = v11;
        }

        while (v7 != v11);
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v3)
    {
      v13 = sub_2759BA9F8();
      v14 = v15;
      v12 = v16;
      v7 = v17;

      if ((v7 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = 0;
      v13 = v1 & 0xFFFFFFFFFFFFFF8;
      v14 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
      v7 = (2 * v7) | 1;
      if ((v7 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v1 = sub_2759BAAD8();
    swift_unknownObjectRetain_n();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = MEMORY[0x277D84F90];
    }

    v20 = *(v19 + 16);

    if (__OFSUB__(v7 >> 1, v12))
    {
      __break(1u);
LABEL_135:
      swift_unknownObjectRelease_n();
LABEL_20:
      sub_2758AC780(v13, v14, v12, v7);
      v0 = v18;
LABEL_27:
      swift_unknownObjectRelease();
      goto LABEL_28;
    }

    if (v20 != (v7 >> 1) - v12)
    {
      goto LABEL_135;
    }

    v0 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v0)
    {
      v0 = MEMORY[0x277D84F90];
      goto LABEL_27;
    }

LABEL_28:
    v64 = v6;
    v65 = MEMORY[0x277D84F90];
    if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
    {
      goto LABEL_112;
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_131:
  v56 = v2[37];
  v57 = v2[35];

  v58 = *(v57 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps);
  *(v57 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps) = v48;

  *(v57 + v56) = 0;
  sub_2759BA4C8();
  v2[48] = sub_2759BA4B8();
  v59 = sub_2759BA468();
  v61 = v60;
  v50 = sub_2758A7EB8;
  v51 = v59;
  v52 = v61;

  return MEMORY[0x2822009F8](v50, v51, v52);
}

void sub_2758A7EB8()
{
  v1 = v0[48];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[35];
  v4 = v0[36];

  sub_2758A9E78(v5, v2);
  if (v3)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2758A7F78, 0, 0);
  }
}

uint64_t sub_2758A7F78()
{
  v21 = v0;
  v1 = *(v0 + 280);
  v2 = *__swift_project_boxed_opaque_existential_1((v1 + *(v0 + 304)), *(v1 + *(v0 + 304) + 24));
  sub_27598B2F0();
  v3 = (v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete);
  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appCategoryToShowWhenLoadingComplete + 8);
  if (v4 == 5)
  {

    goto LABEL_20;
  }

  v5 = *v3;
  sub_27585A8D8(*v3, v4);
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238A0);
  sub_27585A8D8(v5, v4);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  sub_2758ACC08(v5, v4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    if (v4 <= 1)
    {
      if (!v4)
      {
        v11 = 0xE600000000000000;
        v12 = 0x70756B636162;
        goto LABEL_18;
      }

      if (v4 == 1)
      {
        v11 = 0xEE00676E69726168;
        v12 = 0x735F796C696D6166;
        goto LABEL_18;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v11 = 0xE600000000000000;
          v12 = 0x68746C616568;
          goto LABEL_18;
        case 3:
          v11 = 0xE800000000000000;
          v12 = 0x736567617373656DLL;
          goto LABEL_18;
        case 4:
          v11 = 0xE400000000000000;
          v12 = 1769105779;
LABEL_18:
          sub_2758ACC18(v5, v4);
          v13 = sub_2758937B8(v12, v11, v20);

          *(v9 + 4) = v13;
          _os_log_impl(&dword_275819000, v7, v8, "ManageStorageAppsListViewModel fetch complete, showing app for category %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x277C85860](v10, -1, -1);
          MEMORY[0x277C85860](v9, -1, -1);
          goto LABEL_19;
      }
    }

    v12 = v5;
    v11 = v4;
    goto LABEL_18;
  }

LABEL_19:

  v14 = *(v0 + 336);
  v15 = *(v0 + 280);
  v16 = *v3;
  v17 = v3[1];
  *v3 = xmmword_2759C39E0;
  sub_2758ACC08(v16, v17);
  v20[0] = v5;
  v20[1] = v4;
  sub_2758A9678(v20);

  sub_2758ACC08(v5, v4);
LABEL_20:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2758A824C()
{
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_280A238A0);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[43];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Error fetching manage storage apps list data: %@", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = v0[43];
  v13 = v0[37];
  v12 = v0[38];
  v14 = v0[35];

  *(v14 + v13) = 0;
  v15 = *__swift_project_boxed_opaque_existential_1((v14 + v12), *(v14 + v12 + 24));
  sub_27598B2F0();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2758A850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758A85CC, 0, 0);
}

uint64_t sub_2758A85CC()
{
  v1 = *(v0 + 160);
  v2 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_35;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v4)
  {
    v5 = 0;
    v43 = v3 & 0xFFFFFFFFFFFFFF8;
    v44 = v3 & 0xC000000000000001;
    v41 = v4;
    v42 = v3;
    do
    {
      if (v44)
      {
        v6 = MEMORY[0x277C846A0](v5, v3);
      }

      else
      {
        if (v5 >= *(v43 + 16))
        {
          goto LABEL_34;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v4 = sub_2759BA9E8();
        goto LABEL_3;
      }

      v9 = *(v0 + 184);
      v8 = *(v0 + 192);
      v10 = sub_2759BA518();
      v11 = *(v10 - 8);
      v46 = *(v11 + 56);
      v46(v8, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v7;
      sub_2758AD388(v8, v9);
      v45 = *(v11 + 48);
      LODWORD(v8) = v45(v9, 1, v10);
      v47 = v7;
      v48 = v5 + 1;
      v14 = *(v0 + 184);
      if (v8 == 1)
      {
        sub_27586BF04(*(v0 + 184), &unk_280A0E510, &qword_2759C33C0);
        if (*v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_2759BA508();
        (*(v11 + 8))(v14, v10);
        if (*v13)
        {
LABEL_13:
          v15 = v12[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_2759BA468();
          v18 = v17;
          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v16 = 0;
      v18 = 0;
LABEL_16:
      v49 = **(v0 + 152);
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_2759C3D70;
      *(v19 + 24) = v12;

      if (v18 | v16)
      {
        v20 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v20 = 0;
      }

      v21 = *(v0 + 192);
      *(v0 + 104) = 1;
      *(v0 + 112) = v20;
      *(v0 + 120) = v49;
      swift_task_create();

      sub_27586BF04(v21, &unk_280A0E510, &qword_2759C33C0);
      if (v5 <= 4)
      {
        v23 = *(v0 + 168);
        v22 = *(v0 + 176);
        v46(v22, 1, 1, v10);
        v24 = swift_allocObject();
        v24[2] = 0;
        v25 = v24 + 2;
        v24[3] = 0;
        v24[4] = v47;
        sub_2758AD388(v22, v23);
        LODWORD(v23) = v45(v23, 1, v10);
        v26 = v47;
        v27 = *(v0 + 168);
        if (v23 == 1)
        {
          sub_27586BF04(*(v0 + 168), &unk_280A0E510, &qword_2759C33C0);
          if (*v25)
          {
            goto LABEL_22;
          }

LABEL_24:
          v29 = 0;
          v31 = 0;
        }

        else
        {
          sub_2759BA508();
          (*(v11 + 8))(v27, v10);
          if (!*v25)
          {
            goto LABEL_24;
          }

LABEL_22:
          v28 = v24[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v29 = sub_2759BA468();
          v31 = v30;
          swift_unknownObjectRelease();
        }

        v32 = swift_allocObject();
        *(v32 + 16) = &unk_2759C3D88;
        *(v32 + 24) = v24;

        if (v31 | v29)
        {
          v33 = v0 + 48;
          *(v0 + 48) = 0;
          *(v0 + 56) = 0;
          *(v0 + 64) = v29;
          *(v0 + 72) = v31;
        }

        else
        {
          v33 = 0;
        }

        v34 = *(v0 + 176);
        *(v0 + 128) = 1;
        *(v0 + 136) = v33;
        *(v0 + 144) = v49;
        swift_task_create();

        sub_27586BF04(v34, &unk_280A0E510, &qword_2759C33C0);
        goto LABEL_6;
      }

LABEL_6:
      v3 = v42;
      ++v5;
    }

    while (v48 != v41);
  }

  v36 = *(v0 + 184);
  v35 = *(v0 + 192);
  v38 = *(v0 + 168);
  v37 = *(v0 + 176);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2758A8BAC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage;
  v0[3] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage;
  if (*(v1 + v2))
  {
    v3 = v0[1];

    return v3();
  }

  else if (*(*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally))
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_2758A8D14;
    v6 = v0[2];

    return sub_2759207D8();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_2758A8EF4;
    v8 = v0[2];

    return sub_275920E30();
  }
}

uint64_t sub_2758A8D14(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2758A8E14, 0, 0);
}

uint64_t sub_2758A8E14()
{
  if (v0[5])
  {
    v1 = v0[2];
    v2 = v0[3];
    v3 = sub_2759B9C98();
    v4 = *(v1 + v2);
    *(v1 + v2) = v3;

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_2758A8EF4;
    v8 = v0[2];

    return sub_275920E30();
  }
}

uint64_t sub_2758A8EF4(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2758A8FF4, 0, 0);
}

uint64_t sub_2758A8FF4()
{
  if (v0[7])
  {
    v1 = v0[2];
    v2 = v0[3];
    v3 = sub_2759B9C98();
    v4 = *(v1 + v2);
    *(v1 + v2) = v3;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2758A906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758A9108, 0, 0);
}

uint64_t sub_2758A9108()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2759B8508();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  v0[4] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  if (*(v1 + v4))
  {
    sub_27586BF04(v0[3], &unk_280A0EB10, &qword_2759C0740);
    v5 = v0[3];

    v6 = v0[1];

    return v6();
  }

  else if (*(*(v0[2] + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally) == 1)
  {
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_2758A92DC;
    v9 = v0[2];

    return sub_275921EEC();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_2758A94E4;
    v12 = v0[2];
    v11 = v0[3];

    return sub_2759224B0(v11);
  }
}

uint64_t sub_2758A92DC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2758A93DC, 0, 0);
}

uint64_t sub_2758A93DC()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[2];
    sub_27586BF04(v0[3], &unk_280A0EB10, &qword_2759C0740);
    v4 = *(v3 + v2);
    *(v3 + v2) = v1;

    v5 = v0[3];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_2758A94E4;
    v10 = v0[2];
    v9 = v0[3];

    return sub_2759224B0(v9);
  }
}

uint64_t sub_2758A94E4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_2758A95E4, 0, 0);
}

uint64_t sub_2758A95E4()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];
  sub_27586BF04(v0[3], &unk_280A0EB10, &qword_2759C0740);
  v4 = *(v3 + v2);
  *(v3 + v2) = v1;

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

void sub_2758A9678(uint64_t *a1)
{
  v2 = a1[1];
  v41 = *a1;
  if (v2 == 1)
  {
    sub_27585A8EC(v41, 1uLL);
    sub_27585A8EC(0, 1uLL);
    v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_urlToShowWhenLoadingComplete);
    v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_urlToShowWhenLoadingComplete + 8);
    v44 = 15;

    v5.value._countAndFlagsBits = v3;
    v5.value._object = v4;
    ManageStorageAppsListViewModel.performFamilySharingAction(fallbackURL:refreshDataModels:componentContext:)(v5, 0, &v44);

    return;
  }

  sub_27585A8D8(v41, v2);
  sub_27585A8EC(v41, v2);
  sub_27585A8EC(0, 1uLL);
  v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v38[1] = v1;
  if (v7 >> 62)
  {
    goto LABEL_58;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v8)
  {
    v9 = 0;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C846A0](v9, v7);
        v15 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        if (v9 >= *(v40 + 16))
        {
          __break(1u);
LABEL_58:
          v8 = sub_2759BA9E8();
          goto LABEL_5;
        }

        v16 = *(v7 + 8 * v9 + 32);
        v15 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_35;
        }
      }

      v17 = *(v16 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
      v42 = v16;
      if (v2 < 5)
      {
        break;
      }

      v39 = v38;
      v21 = *(v17 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
      v43[0] = v41;
      v43[1] = v2;
      MEMORY[0x28223BE20](v16);
      v37[2] = v43;

      v22 = sub_2758A34DC(sub_2758AD6E8, v37, v21);

      if (v22)
      {

LABEL_47:
        LOBYTE(v43[0]) = 22;
        v35 = v42;
        ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v42, 0, v43);

        return;
      }

LABEL_11:
      ++v9;
      if (v15 == v8)
      {
        goto LABEL_36;
      }
    }

    v18 = (v17 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
    v19 = *v18;
    v20 = v18[1];
    if (v20 <= 1)
    {
      if (!v20)
      {
        if (!v2)
        {

          sub_27585A8EC(v19, 0);
          sub_27585A8EC(v41, 0);
          goto LABEL_47;
        }

        v10 = v15;
        v11 = v41;
        sub_27585A8D8(v41, v2);

        v12 = v19;
        v13 = 0;
        goto LABEL_9;
      }

      if (v20 == 1)
      {
        v39 = v15;
        v23 = v41;
        v24 = v16;
        sub_27585A8D8(v41, v2);

        v25 = v19;
        v26 = 1;
LABEL_32:
        sub_27585A8EC(v25, v26);
        v14 = v23;
        v15 = v39;
        goto LABEL_10;
      }
    }

    else
    {
      switch(v20)
      {
        case 2:
          if (v2 == 2)
          {

            sub_27585A8EC(v19, 2uLL);
            sub_27585A8EC(v41, 2uLL);
            goto LABEL_47;
          }

          v10 = v15;
          v11 = v41;
          sub_27585A8D8(v41, v2);

          v12 = v19;
          v13 = 2;
          goto LABEL_9;
        case 3:
          if (v2 == 3)
          {

            sub_27585A8EC(v19, 3uLL);
            sub_27585A8EC(v41, 3uLL);
            goto LABEL_47;
          }

          v10 = v15;
          v11 = v41;
          sub_27585A8D8(v41, v2);

          v12 = v19;
          v13 = 3;
LABEL_9:
          sub_27585A8EC(v12, v13);
          v14 = v11;
          v15 = v10;
LABEL_10:
          sub_27585A8EC(v14, v2);
          goto LABEL_11;
        case 4:
          if (v2 == 4)
          {

            sub_27585A8EC(v19, 4uLL);
            sub_27585A8EC(v41, 4uLL);
            goto LABEL_47;
          }

          v10 = v15;
          v11 = v41;
          sub_27585A8D8(v41, v2);

          v12 = v19;
          v13 = 4;
          goto LABEL_9;
      }
    }

    v39 = v15;
    v23 = v41;
    sub_27585A8D8(v41, v2);
    sub_27585A8D8(v19, v20);

    v25 = v19;
    v26 = v20;
    goto LABEL_32;
  }

LABEL_36:

  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v27 = sub_2759B89A8();
  __swift_project_value_buffer(v27, qword_280A238A0);
  v28 = v41;
  sub_27585A8D8(v41, v2);
  v29 = sub_2759B8988();
  v30 = sub_2759BA648();
  sub_27585A8EC(v28, v2);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43[0] = v32;
    *v31 = 136315138;
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v33 = 0xE800000000000000;
        v34 = 0x736567617373656DLL;
        goto LABEL_51;
      }

      if (v2 == 4)
      {
        v33 = 0xE400000000000000;
        v34 = 1769105779;
        goto LABEL_51;
      }
    }

    else
    {
      if (!v2)
      {
        v33 = 0xE600000000000000;
        v34 = 0x70756B636162;
        goto LABEL_51;
      }

      if (v2 == 2)
      {
        v33 = 0xE600000000000000;
        v34 = 0x68746C616568;
LABEL_51:
        sub_27585A8D8(v41, v2);
        v36 = sub_2758937B8(v34, v33, v43);

        *(v31 + 4) = v36;
        _os_log_impl(&dword_275819000, v29, v30, "Unable to find app category %s in new apps list, aborting", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x277C85860](v32, -1, -1);
        MEMORY[0x277C85860](v31, -1, -1);
        goto LABEL_52;
      }
    }

    v34 = v41;
    v33 = v2;
    goto LABEL_51;
  }

LABEL_52:
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.fetchAppsListSync(fetchHomeViewModel:loadImages:)(Swift::Bool fetchHomeViewModel, Swift::Bool loadImages)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  sub_2759BA4E8();
  v9 = sub_2759BA518();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v2;
  *(v10 + 40) = fetchHomeViewModel;
  *(v10 + 41) = loadImages;
  v11 = v2;
  sub_27587D460(0, 0, v8, &unk_2759C3A58, v10);
}

uint64_t sub_2758A9DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_27585A7E4;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(a5, a6);
}

void sub_2758A9E78(uint64_t a1, char *a2)
{
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v7 = *&v5[v6];
  v8 = v7;

  if (v7)
  {
    v9 = *&v8[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo];

    v10 = *&v9[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageBarColors];
    sub_2758A4908(v10);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759B8628();

    v12 = (*&a2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer] + OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel);
    v14 = *v12;
    v13 = v12[1];
    v15 = (a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel);
    v16 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel + 8);
    *v15 = v14;
    v15[1] = v13;
  }

  else
  {
LABEL_4:
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v17 = sub_2759B89A8();
    __swift_project_value_buffer(v17, qword_280A238A0);
    v18 = sub_2759B8988();
    v19 = sub_2759BA648();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275819000, v18, v19, "Unable to initialize thermometer sections, missing bar colors", v20, 2u);
      MEMORY[0x277C85860](v20, -1, -1);
    }
  }

  v21 = a2;
  sub_2758A51B8(a2);
  v22 = [objc_opt_self() defaultCenter];
  if (qword_280A0E318 != -1)
  {
    swift_once();
  }

  [v22 postNotificationName:qword_280A0F410 object:a1];

  v23 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId + 8);
  if (v23)
  {
    v24 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId);
    v25 = *(a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId + 8);

    v26._countAndFlagsBits = v24;
    v26._object = v23;
    ManageStorageAppsListViewModel.showApp(bundleId:)(v26);
  }
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.showApp(bundleId:)(Swift::String bundleId)
{
  object = bundleId._object;
  countAndFlagsBits = bundleId._countAndFlagsBits;
  v3 = (v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId);
  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_delayedDeeplinkBundleId + 8);
  *v3 = 0;
  v3[1] = 0;

  swift_getKeyPath();
  v57[0] = v1;
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v53 = v1;
  v5 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (!v5)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v31 = sub_2759B89A8();
    __swift_project_value_buffer(v31, qword_280A238A0);
    v32 = sub_2759B8988();
    v33 = sub_2759BA638();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = object;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_275819000, v32, v33, "Skipping showApp for now, no data model available yet", v35, 2u);
      v36 = v35;
      object = v34;
      MEMORY[0x277C85860](v36, -1, -1);
    }

    v37 = v3[1];
    *v3 = countAndFlagsBits;
    v3[1] = object;

    return;
  }

  v6 = qword_280A0E338;
  v51 = v5;
  if (v6 != -1)
  {
    goto LABEL_53;
  }

LABEL_3:
  v7 = sub_2759B89A8();
  v8 = __swift_project_value_buffer(v7, qword_280A238A0);

  v50 = v8;
  v9 = sub_2759B8988();
  v10 = sub_2759BA668();

  v11 = os_log_type_enabled(v9, v10);
  v12 = countAndFlagsBits;
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v57[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2758937B8(v12, object, v57);
    _os_log_impl(&dword_275819000, v9, v10, "Attempting to manually show manage storage app with id: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x277C85860](v14, -1, -1);
    MEMORY[0x277C85860](v13, -1, -1);
  }

  if (v12 == 0xD000000000000016 && 0x80000002759DF0D0 == object || (sub_2759BAAC8() & 1) != 0)
  {
    v15 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
    v16 = v53;
    swift_beginAccess();
    v17 = *(v16 + v15);
    v49 = object;
    if (v17 >> 62)
    {
      v55 = sub_2759BA9E8();
    }

    else
    {
      v55 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v55)
    {
      v18 = 0;
      object = v17 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x277C846A0](v18, v17);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_25:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            swift_once();
            goto LABEL_3;
          }

          v19 = *(v17 + 8 * v18 + 32);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_25;
          }
        }

        v21 = (*&v19[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
        v22 = *v21;
        v23 = v21[1];
        if (v23 - 2 >= 3 && v23 != 0)
        {
          v25 = v19;
          if (v23 == 1)
          {
            goto LABEL_48;
          }

          v19 = v25;
        }

        sub_27585A8EC(v22, v23);
        sub_27585A8EC(0, 1uLL);
        ++v18;
      }

      while (v20 != v55);
    }

    object = v49;
LABEL_27:

    v26 = sub_2759B8988();
    v27 = sub_2759BA648();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = object;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_2758937B8(countAndFlagsBits, v28, v56);
      _os_log_impl(&dword_275819000, v26, v27, "Unable to push app drilldown, missing app with id: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C85860](v30, -1, -1);
      MEMORY[0x277C85860](v29, -1, -1);
    }

    return;
  }

  v25 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  v38 = v53;
  swift_beginAccess();
  v39 = *&v25[v38];
  if (v39 >> 62)
  {
    if (v39 < 0)
    {
      v47 = *&v25[v38];
    }

    v40 = sub_2759BA9E8();
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v40)
  {
    goto LABEL_27;
  }

  v22 = 0;
  v55 = v39 & 0xC000000000000001;
  v52 = v39 & 0xFFFFFFFFFFFFFF8;
  while (v55)
  {
    v41 = MEMORY[0x277C846A0](v22, v39);
    v42 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_47;
    }

LABEL_42:
    v25 = v41;
    v43 = *(*&v41[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
    v56[0] = countAndFlagsBits;
    v56[1] = object;
    v44 = object;
    MEMORY[0x28223BE20](v41);
    v48[2] = v56;

    v45 = sub_2758A34DC(sub_2758ACDC4, v48, v43);

    if (v45)
    {

      goto LABEL_50;
    }

    ++v22;
    object = v44;
    if (v42 == v40)
    {
      goto LABEL_27;
    }
  }

  if (v22 >= *(v52 + 16))
  {
    goto LABEL_52;
  }

  v41 = *(v39 + 8 * v22 + 32);
  v42 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
LABEL_48:

  sub_27585A8EC(v22, 1uLL);
  sub_27585A8EC(0, 1uLL);
LABEL_50:
  LOBYTE(v56[0]) = 7;
  v46 = v25;
  ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v46, 0, v56);
}

uint64_t sub_2758AAB08(char a1, char a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  a4;
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_2758AABCC;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(a1, a2);
}

uint64_t sub_2758AABCC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

Swift::Void __swiftcall ManageStorageAppsListViewModel.clearAppsList(clearHomeData:)(Swift::Bool clearHomeData)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation) = 1;
  v4 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = MEMORY[0x277D84F90];
  *(v2 + v4) = MEMORY[0x277D84F90];

  v7 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_primaryApps) = v6;

  v8 = *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps) = v6;

  if (*(v2 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8628();
  }

  if (clearHomeData)
  {
    swift_getKeyPath();
    sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      if (*&v11[v12])
      {
        v13 = swift_getKeyPath();
        MEMORY[0x28223BE20](v13);
        sub_2758ACDE0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
        sub_2759B8628();
      }

      else
      {
      }
    }
  }
}

uint64_t ManageStorageAppsListViewModel.expandedSubTitle(forDataclass:)(uint64_t a1)
{
  swift_getKeyPath();
  v27[0] = v1;
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (v3)
  {
    v4 = qword_280A0E310;
    v5 = v3;
    if (v4 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v6 = qword_280A23870;
      if (!*(qword_280A23870 + 16) || (v7 = sub_2758A342C(a1), (v8 & 1) == 0))
      {

        return 0;
      }

      v9 = (*(v6 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      v25 = v11;
      v26 = v10;
      v12 = *&v5[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps];
      v23 = v5;
      v5 = v12 >> 62 ? sub_2759BA9E8() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v5)
      {
        break;
      }

      v13 = 0;
      a1 = 0;
      v24 = v12 & 0xC000000000000001;
      while (1)
      {
        if (v24)
        {
          v14 = MEMORY[0x277C846A0](v13, v12);
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v17 = *&v14[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds];
        v27[0] = v25;
        v27[1] = v26;
        MEMORY[0x28223BE20](v14);
        v22[2] = v27;

        v18 = sub_2758A34DC(sub_2758AD6E8, v22, v17);

        if (v18)
        {

          v21 = *&v15[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel];
          v20 = *&v15[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel + 8];

          return v21;
        }

        ++v13;
        if (v16 == v5)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_18:
  }

  return 0;
}

Swift::String_optional __swiftcall ManageStorageAppsListViewModel.expandedSubTitle(forLiverpoolBundleId:)(Swift::String forLiverpoolBundleId)
{
  object = forLiverpoolBundleId._object;
  countAndFlagsBits = forLiverpoolBundleId._countAndFlagsBits;
  swift_getKeyPath();
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v4 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_apps);
    if (v5 >> 62)
    {
      v6 = sub_2759BA9E8();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v6)
    {
LABEL_22:

      goto LABEL_23;
    }

    v9 = 0;
    v10 = v5 + 32;
    while (2)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C846A0](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          break;
        }

        v7 = *(v10 + 8 * v9);
      }

      v11 = v7;
      if (!__OFADD__(v9++, 1))
      {
        v13 = *&v7[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds];
        v14 = (v13 + 40);
        v15 = *(v13 + 16) + 1;
        while (--v15)
        {
          if (*(v14 - 1) != countAndFlagsBits || *v14 != object)
          {
            v14 += 2;
            if ((sub_2759BAAC8() & 1) == 0)
            {
              continue;
            }
          }

          v17 = *&v11[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel];
          v18 = *&v11[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel + 8];

          goto LABEL_24;
        }

        v10 = v5 + 32;
        if (v9 != v6)
        {
          continue;
        }

        goto LABEL_22;
      }

      break;
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_23:
  v17 = 0;
  v18 = 0;
LABEL_24:
  v7 = v17;
  v8 = v18;
LABEL_28:
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void sub_2758AB5E4(double a1)
{
  v4 = v1;
  swift_getKeyPath();
  v6 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel___observationRegistrar;
  sub_2758ACDE0(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v7 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections;
  v8 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v24 = *(v1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections);
    }

    if (sub_2759BA9E8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = 0;
    goto LABEL_4;
  }

  swift_getKeyPath();
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    swift_getKeyPath();
    sub_2758ACDE0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    v27 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
    swift_beginAccess();
    v28 = *&v26[v27];
    v29 = v28;

    if (v28)
    {
      v30 = *&v29[OBJC_IVAR___ICSHomeDataModel_manageStorageViewInfo];

      v31 = *&v30[OBJC_IVAR____TtC14iCloudSettings21ManageStorageViewInfo_storageBarColors];
      swift_getKeyPath();
      sub_2759B8638();

      v32 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel);
      if (v32)
      {
        v65 = v7;
        v33 = v32;
        v2 = v6;
        sub_2758A4908(v31);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v9 = 0;
        sub_2759B8628();

        v35 = *&v33[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer];
        v7 = v65;
        v36 = *&v35[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel];
        v37 = *&v35[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_otherAppsDisplayLabel + 8];

        v38 = (v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel);
        v39 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel + 8);
        *v38 = v36;
        v38[1] = v37;

LABEL_4:
        v10 = swift_getKeyPath();
        sub_2759B8638();

        v11 = *(v4 + v7);
        if (v11 >> 62)
        {
          if (v11 < 0)
          {
            v44 = *(v4 + v7);
          }

          v45 = sub_2759BA9E8();
          v13 = v45 - 1;
          if (!__OFSUB__(v45, 1))
          {
LABEL_6:
            v10 = swift_getKeyPath();
            sub_2759B8638();

            v65 = v7;
            v2 = *(v4 + v7);
            if (!(v2 >> 62))
            {
              v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v14)
              {
                goto LABEL_18;
              }

LABEL_8:
              if (v14 < 1)
              {
                __break(1u);
LABEL_56:
                if (sub_2759BA9E8())
                {
                  goto LABEL_22;
                }

                goto LABEL_57;
              }

              a1 = a1 - v13;

              v15 = 0;
              v3 = 100.0;
              do
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v16 = MEMORY[0x277C846A0](v15, v2);
                }

                else
                {
                  v16 = *(v2 + 8 * v15 + 32);
                }

                v17 = a1 * (*(*(v16 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_storagePercentage) / 100.0);
                if (*(v16 + 40) == v17)
                {
                  *(v16 + 40) = v17;
                }

                else
                {
                  v18 = swift_getKeyPath();
                  MEMORY[0x28223BE20](v18);
                  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
                  sub_2759B8628();
                }

                ++v15;
              }

              while (v14 != v15);

LABEL_18:
              swift_getKeyPath();
              sub_2759B8638();

              v10 = v65;
              v19 = *(v4 + v65);
              if (v19 >> 62)
              {
                if (v19 < 0)
                {
                  v46 = *(v4 + v65);
                }

                if (sub_2759BA9E8() == 1)
                {
LABEL_20:
                  swift_getKeyPath();
                  sub_2759B8638();

                  v14 = *(v4 + v65);
                  if (!(v14 >> 62))
                  {
                    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
LABEL_22:
                      if ((v14 & 0xC000000000000001) != 0)
                      {

                        v20 = MEMORY[0x277C846A0](0, v14);

                        goto LABEL_25;
                      }

                      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v20 = *(v14 + 32);

LABEL_25:
                        swift_getKeyPath();
                        sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
                        sub_2759B8638();

                        v21 = *(v20 + 40);
                        if (v21 > 10.0)
                        {
                          v22 = *(v20 + 40);
                        }

                        else
                        {
                          v22 = 10.0;
                        }

                        if (v21 == v22)
                        {
                          *(v20 + 40) = v22;
                        }

                        else
                        {
                          v23 = swift_getKeyPath();
                          MEMORY[0x28223BE20](v23);
                          sub_2759B8628();
                        }

                        return;
                      }

                      __break(1u);
                      goto LABEL_92;
                    }

                    goto LABEL_57;
                  }

                  goto LABEL_56;
                }
              }

              else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
              {
                goto LABEL_20;
              }

LABEL_57:
              v66 = MEMORY[0x277D84F90];
              swift_getKeyPath();
              sub_2759B8638();

              v47 = *(v4 + v10);
              if (v47 >> 62)
              {
                v48 = sub_2759BA9E8();
                if (!v48)
                {
                  return;
                }
              }

              else
              {
                v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v48)
                {
                  return;
                }
              }

              if (v48 >= 1)
              {

                v49 = 0;
                v9 = MEMORY[0x277D84F90];
                a1 = 0.0;
                v50 = 0.0;
                v64 = v48;
                do
                {
                  if ((v47 & 0xC000000000000001) != 0)
                  {
                    v52 = MEMORY[0x277C846A0](v49, v47);
                  }

                  else
                  {
                    v52 = *(v47 + 8 * v49 + 32);
                  }

                  swift_getKeyPath();
                  sub_2758ACDE0(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
                  sub_2759B8638();

                  v53 = *(v52 + 40);
                  swift_getKeyPath();
                  if (v53 >= 6.0)
                  {
                    sub_2759B8638();

                    v55 = *(v52 + 40);

                    MEMORY[0x277C84160](v56);
                    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v57 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_2759BA3F8();
                    }

                    a1 = a1 + v55 + -6.0;
                    sub_2759BA418();

                    v9 = v66;
                  }

                  else
                  {
                    sub_2759B8638();

                    v54 = *(v52 + 40);
                    v50 = v50 + 6.0 - v54;
                    if (v54 == 6.0)
                    {
                      *(v52 + 40) = 0x4018000000000000;
                    }

                    else
                    {
                      v51 = swift_getKeyPath();
                      MEMORY[0x28223BE20](v51);
                      sub_2759B8628();

                      v48 = v64;
                    }
                  }

                  ++v49;
                }

                while (v48 != v49);

                if (a1 >= v50)
                {
                  v3 = v50;
                }

                else
                {
                  v3 = a1;
                }

                if (v3 <= 0.0)
                {
                  goto LABEL_84;
                }

                if (!(v9 >> 62))
                {
                  v58 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v58)
                  {
LABEL_84:

                    return;
                  }

LABEL_78:
                  if (v58 < 1)
                  {
                    __break(1u);
                    return;
                  }

                  v59 = 0;
                  v60 = v9;
                  v61 = v9 & 0xC000000000000001;
                  do
                  {
                    if (v61)
                    {
                      v62 = MEMORY[0x277C846A0](v59, v60);
                    }

                    else
                    {
                      v62 = *(v60 + 8 * v59 + 32);
                    }

                    ++v59;
                    swift_getKeyPath();
                    sub_2759B8638();

                    v63 = v3 * ((*(v62 + 40) + -6.0) / a1);
                    swift_getKeyPath();
                    sub_2759B8638();

                    swift_getKeyPath();
                    sub_2759B8658();

                    *(v62 + 40) = *(v62 + 40) - v63;
                    swift_getKeyPath();
                    sub_2759B8648();
                  }

                  while (v58 != v59);
                  goto LABEL_84;
                }

LABEL_92:
                v58 = sub_2759BA9E8();
                if (!v58)
                {
                  goto LABEL_84;
                }

                goto LABEL_78;
              }

              __break(1u);
              goto LABEL_89;
            }

LABEL_49:
            v14 = sub_2759BA9E8();
            if (!v14)
            {
              goto LABEL_18;
            }

            goto LABEL_8;
          }
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v13 = v12 - 1;
          if (!__OFSUB__(v12, 1))
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_49;
      }
    }
  }

  if (qword_280A0E338 != -1)
  {
LABEL_89:
    swift_once();
  }

  v40 = sub_2759B89A8();
  __swift_project_value_buffer(v40, qword_280A238A0);
  v41 = sub_2759B8988();
  v42 = sub_2759BA668();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_275819000, v41, v42, "Unable to initialize thermometer sections, missing data", v43, 2u);
    MEMORY[0x277C85860](v43, -1, -1);
  }
}