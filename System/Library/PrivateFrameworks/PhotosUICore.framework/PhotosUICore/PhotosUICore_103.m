void sub_1A4980A28(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  *(swift_allocObject() + 16) = a3;
  _Block_copy(a3);
  if ([a1 px_isCloudKitSharedAlbum])
  {
    SharedCollectionsAddAssetsToSharedCollection(sharedCollection:assets:completionHandler:)(a1);
  }

  sub_1A3C712BC(0, &qword_1EB1261F0, &qword_1EB126F70, MEMORY[0x1E69E7CA0] + 8, sub_1A4980D64);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v6;
  *(inited + 48) = 0xD00000000000002CLL;
  *(inited + 56) = 0x80000001A53F46C0;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A498087C(inited + 32, &qword_1EB126F70);
  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_1A524C634();
  v9 = sub_1A524C3D4();

  v10 = [v7 initWithDomain:v8 code:0 userInfo:v9];

  v11 = v10;
  v12 = sub_1A5240B74();
  (a3)[2](a3, 0, v12);
}

id _s12PhotosUICore38SharedCollectionsCKContainerForSharingSo0E0CyF_0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695B8A0]);
  v1 = sub_1A524C634();
  v2 = [v0 initWithContainerIdentifier:v1 environment:1];

  v3 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  [v3 setUseZoneWidePCS_];
  [v3 setMmcsEncryptionSupport_];
  v4 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v2 options:v3];

  return v4;
}

void sub_1A4980D64(uint64_t a1, unint64_t *a2)
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

uint64_t _s12PhotosUICore019SharedCollectionsIsC13CollectionURLySb10Foundation0G0VF_0()
{
  v0 = sub_1A5241C44();
  v4[3] = v0;
  v4[4] = sub_1A4981CAC(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v0);
  LOBYTE(v0) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v0)
  {
    if (*(sub_1A5240CE4() + 16) > 1uLL)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v2 = sub_1A524EAB4();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A4980F4C()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3CA8098;

  return sub_1A4979470(v11, v12, v13, v0 + v3, v6, v7, v9, v10);
}

void sub_1A4981078()
{
  if (!qword_1EB146140)
  {
    sub_1A3C52C70(255, &unk_1EB120A20);
    sub_1A3C34400(255, &qword_1EB126160);
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146140);
    }
  }
}

uint64_t objectdestroy_10Tm_2()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A4981238()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3D60150;

  return sub_1A4979470(v11, v12, v13, v0 + v3, v6, v7, v9, v10);
}

void sub_1A49813E8()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v2)
  {
    v6 = v2;
    sub_1A3C52C70(0, &qword_1EB126660);
    v3 = sub_1A524CA14();
    sub_1A4976C7C(v1);
    sub_1A3C52C70(0, &qword_1EB12B618);
    v4 = v3;
    v5 = sub_1A524C3D4();

    [v6 addAssetsToCollectionShareByCopyingSourceAssets:v4 creationOptionsMappedToSourceAssets:v5 withBatchCommentText:0];
  }
}

void sub_1A4981554()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  sub_1A3C52C70(0, &unk_1EB120A20);
  v3 = sub_1A524CA14();
  v4 = &selRef_expungeCollectionShares_;
  if (!v1)
  {
    v4 = &selRef_trashCollectionShares_;
  }

  [v2 *v4];

  v5 = objc_opt_self();
  v6 = sub_1A524CA14();
  [v5 unsubscribeCollectionShares_];
}

uint64_t objectdestroy_72Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_47Tm_0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A49816E4()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v3 = sub_1A524C634();
  v4 = [v2 creationRequestForOwnedCollectionShareWithTitle:v3 subtype:103];

  v5 = [v4 placeholderForCreatedCollectionShare];
  v6 = [v5 localIdentifier];

  v7 = sub_1A524C674();
  v9 = v8;

  swift_beginAccess();
  *(v1 + 16) = v7;
  *(v1 + 24) = v9;
}

uint64_t block_copy_helper_104_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1A4981860(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A49818E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1A4981AA0;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_133_1;
  _Block_copy(aBlock);
  v4 = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4981AA0()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v3)
  {
    v7 = v3;
    sub_1A3C52C70(0, &qword_1EB126660);
    v4 = sub_1A524CA14();
    sub_1A4976C7C(v1);
    sub_1A3C52C70(0, &qword_1EB12B618);
    v5 = v4;
    v6 = sub_1A524C3D4();

    [v7 addAssetsToCollectionShareByCopyingSourceAssets:v5 creationOptionsMappedToSourceAssets:v6 withBatchCommentText:0];
  }
}

void sub_1A4981C34()
{
  if (!qword_1EB146158)
  {
    sub_1A3C52C70(255, &qword_1EB12B618);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146158);
    }
  }
}

uint64_t sub_1A4981CAC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A4981D68(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___PXPeoplePromoteAsMagicInternalAction_localIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithPhotoLibrary_, a3);

  return v9;
}

uint64_t sub_1A4981E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1A524CC54();
  v8[8] = sub_1A524CC44();
  v10 = sub_1A524CBC4();
  v8[9] = v10;
  v8[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A4981EF4, v10, v9);
}

uint64_t sub_1A4981F9C(char a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = sub_1A4982230;
  }

  else
  {

    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    v6 = sub_1A49820BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A49820BC()
{
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    v2 = sub_1A524D264();
  }

  else
  {
    v2 = sub_1A524D244();
  }

  v3 = v2;
  v4 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315394;
    sub_1A3C2EF94();
  }

  (*(v0 + 48))(*(v0 + 112), 0);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A4982230()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4982374(uint64_t a1, const void *a2)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A52453E4();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  *(swift_allocObject() + 16) = a2;
  _Block_copy(a2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t objectdestroyTm_88()
{
  v1 = sub_1A52453E4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A4982A8C()
{
  v2 = *(sub_1A52453E4() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A3D60150;

  return sub_1A4981E4C(v10, v11, v12, v0 + v3, v6, v7, v8, v9);
}

id sub_1A4982BD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t (*sub_1A4982C2C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  if ((sub_1A3C7A634() & 1) != 0 && MEMORY[0x1A590D320]())
  {
    sub_1A3C52C70(0, &unk_1EB120978);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    v4 = [v3 pinCollectionsTabTitle];
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4;
  return sub_1A4982CDC;
}

void sub_1A4982D04()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_viewDidLoad);
  v2 = *sub_1A48763F4();
  sub_1A52442F4();
  v3 = sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata sharedInstance];
  sub_1A498712C(&qword_1EB126A18);
  sub_1A52443C4();
  v6 = [ObjCClassFromMetadata sharedInstance];
  v13 = v3;
  v14 = sub_1A498712C(&qword_1EB1209A0);
  sub_1A5244284();
  v7 = [v1 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    v9 = sub_1A4655D24(1);
  }

  if (MEMORY[0x1A590D320](v9))
  {
    [v1 px_enableBarAppearance];
    v10 = [v1 px_barAppearance];
    v14 = sub_1A4982F30;
    v15 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1A421179C;
    v13 = &block_descriptor_60_6;
    v11 = _Block_copy(v12);
    [v10 performChangesWithAnimationOptions:0 changes:v11];
    _Block_release(v11);
  }
}

id sub_1A4982F30(void *a1)
{
  [a1 setPrefersNavigationBarVisible_];
  [a1 setPrefersToolbarVisible_];

  return [a1 setPrefersTabBarVisible_];
}

void sub_1A4982F94(void *a1)
{
  v1 = a1;
  sub_1A4982D04();
}

void sub_1A4982FDC(char a1)
{
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1A590D320]())
  {
    v4 = objc_opt_self();
    v5 = *MEMORY[0x1E6991CD0];
    sub_1A3C47744(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v7;
    sub_1A3C52C70(0, &unk_1EB1265F0);
    v8 = v5;
    *(inited + 48) = sub_1A524DC24();
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3C7A418(inited + 32, sub_1A3F24E98);
    sub_1A3C52C70(0, &qword_1EB12B160);
    v9 = sub_1A524C3D4();

    [v4 sendEvent:v8 withPayload:v9];
  }

  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_viewIsAppearing_, a1 & 1);
  v10 = [v1 px_splitViewController];
  if (v10)
  {
    v11 = v10;
    v12 = *&v1[qword_1EB129BB8];
    v13 = [v10 isSidebarVisible];
    if ([v11 isCollapsed])
    {
      v14 = 0;
    }

    else
    {
      v14 = ([v11 splitBehavior] == 2) | v13 ^ 1;
    }

    (*(*v12 + 360))(v14 & 1);
  }
}

void sub_1A498324C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A4982FDC(a3);
}

id sub_1A49832A0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A524BF64();
  v9 = *(v27 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v2;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidAppear_, a1 & 1, v10);
  v13 = [v2 viewIfLoaded];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 window];

    if (v15)
    {
      v16 = [v15 windowScene];

      if (v16)
      {
        v17 = [v16 screenshotService];
        if (v17)
        {
          v18 = v17;
          type metadata accessor for FullPageScreenshotter();
          v19 = v2;
          v20 = sub_1A42B3838(v19);
          v21 = v20;
          v26 = v6;
          v22 = v21;
          [v18 setDelegate_];

          v6 = v26;
          v16 = *&v19[qword_1EB129BF8];
          *&v19[qword_1EB129BF8] = v20;
        }
      }
    }
  }

  sub_1A3C52C70(0, &qword_1EB12B180);
  v23 = sub_1A524D474();
  aBlock[4] = sub_1A4983688;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_42_5;
  v24 = _Block_copy(aBlock);
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C3834C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C3834C(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v8, v24);
  _Block_release(v24);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v12, v27);
  return [*&v2[qword_1EB129C50] setIsActive_];
}

uint64_t sub_1A4983688()
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1A524CC54();
  v4 = sub_1A524CC44();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_1A3D4D930(0, 0, v2, &unk_1A5377C80, v5);
}

uint64_t sub_1A498378C()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A498387C, v3, v2);
}

uint64_t sub_1A498387C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3D7F3F4();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A8838;

  return MEMORY[0x1EEDE6BA0]();
}

void sub_1A4983940(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A49832A0(a3);
}

void sub_1A4983994(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a3);
  [*&v4[qword_1EB129C50] setIsActive_];
}

void sub_1A4983A10(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewWillLayoutSubviews);
  sub_1A5247F84();
  sub_1A5248914();

  v1[qword_1EB1256A8] = 1;
}

void sub_1A4983AC8(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = [v3 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    if ([a1 isAnimated])
    {
      [v8 bounds];
      v9 = [v8 traitCollection];
      v10 = [v9 userInterfaceIdiom];

      if (v10 == 1)
      {
        sub_1A524DA74();
      }
    }
  }
}

void sub_1A4983D88(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1A4983AC8(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1A4983E20(void *a1, uint64_t a2, SEL *a3)
{
  if (*(a1 + qword_1EB1256A8) == 1)
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = a1;
    v8.super_class = swift_getObjectType();
    v6 = objc_msgSendSuper2(&v8, *a3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A4983EA0(void *a1)
{
  v1 = a1;
  v2 = sub_1A4653D84(v5);
  ++*v3;
  (v2)(v5, 0);

  return 1;
}

uint64_t sub_1A4983F18(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(**&a1[qword_1EB129BB8] + 528);
  v5 = a1;
  v4(a3);

  return 1;
}

uint64_t sub_1A4983F94(void *a1)
{
  v2 = PXLemonadeReroutedProgrammaticDestination(a1);
  v3 = [v1 navigationController];
  if (v3)
  {

    v4 = *(*&v1[qword_1EB129BB8] + 96);
    v10 = 0;

    sub_1A465C514(v2, v4, &v10);
    v6 = v5;

    LODWORD(v4) = *(v6 + 16) != 0;

    v7 = 2 * v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1A465A2B8(v2);

  return v7 | v8 & 1;
}

uint64_t sub_1A4984080(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A4983F94(v4);

  return v6;
}

uint64_t sub_1A49840D0(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A498416C, v5, v4);
}

uint64_t sub_1A498416C()
{
  v1 = PXLemonadeReroutedProgrammaticDestination(*(v0 + 152));
  *(v0 + 200) = v1;
  if (sub_1A48D52B0(v1))
  {

    v2 = *(v0 + 8);

    return v2(6);
  }

  else
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    sub_1A48D530C(v1);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1A49842F8;
    v6 = swift_continuation_init();
    sub_1A43A6C50();
    *(v0 + 136) = v7;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A43A6168;
    *(v0 + 104) = &block_descriptor_312;
    *(v0 + 112) = v6;
    [v4 px:v5 dismissPresentedViewControllerWithOptions:v0 + 80 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1A49842F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A46C4D84;
  }

  else
  {
    v5 = sub_1A4984428;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4984428()
{
  v1 = v0[18];
  if (v1 == 1)
  {
    v0[27] = *(v0[21] + qword_1EB129C20);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_1A4984534;
    v3 = v0[25];
    v4 = v0[20];

    return sub_1A465A32C(v3, v4);
  }

  else
  {
    v6 = v0[25];

    sub_1A48D5578(v6);

    v7 = v0[1];

    return v7(v1);
  }
}

uint64_t sub_1A4984534(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 232) = a1;
  *(v4 + 240) = v1;

  v5 = *(v3 + 192);
  v6 = *(v3 + 184);
  if (v1)
  {
    v7 = sub_1A4984914;
  }

  else
  {
    v7 = sub_1A4984678;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A4984678()
{
  if (v0[29] == 1)
  {
    v1 = swift_task_alloc();
    v0[31] = v1;
    *v1 = v0;
    v1[1] = sub_1A4984774;
    v2 = v0[25];
    v3 = v0[20];

    return sub_1A465A8EC(v2, v3);
  }

  else
  {
    v5 = v0[25];

    sub_1A48D5578(v5);

    v6 = v0[29];
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_1A4984774(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A4984988;
  }

  else
  {
    v4[33] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A498489C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A498489C()
{
  v1 = v0[25];

  sub_1A48D5578(v1);

  v2 = v0[33];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A4984914()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4984988()
{

  v1 = *(v0 + 200);
  sub_1A48D5578(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A49849FC(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A5377C40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A5377C50;
  v16[5] = v15;
  v17 = a3;
  v18 = a1;
  sub_1A403AC74(0, 0, v11, &unk_1A5377C60, v16);
}

uint64_t sub_1A4984B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4984C1C, v6, v5);
}

uint64_t sub_1A4984C1C()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1A44D8140;
  v8 = v0[2];
  v7 = v0[3];

  return sub_1A49840D0(v8, v7);
}

void sub_1A4984CE4(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v8 = a3;
  v9 = a1;
  sub_1A4986720(v8, v9, v7);
  _Block_release(v7);
  _Block_release(v7);
}

void sub_1A4984D84(char *a1, uint64_t a2, void *a3, char a4)
{
  v6 = *&a1[qword_1EB129BB8];
  v9 = a3;
  v7 = a1;
  if ([v9 isCollapsed])
  {
    v8 = 0;
  }

  else
  {
    v8 = ([v9 splitBehavior] == 2) | a4 ^ 1;
  }

  (*(*v6 + 360))(v8 & 1);
}

void sub_1A4984E58(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a1;
  sub_1A4655DC0(a4);
}

uint64_t sub_1A4984EB0()
{
  v1 = qword_1EB129BC0;
  if (*(v0 + qword_1EB129BC0))
  {
    v2 = *(v0 + qword_1EB129BC0);
  }

  else
  {
    v3 = *(*(v0 + qword_1EB129BB8) + 16);

    sub_1A3DBEE48(v3, 1, &v9);
    v12 = v10;
    v4 = v9;
    v7[0] = v9;
    v7[1] = v10;
    v8 = v11;
    v5 = sub_1A3C3F140();
    v2 = sub_1A3C66934(v7, &type metadata for LemonadeNotificationsFeature.ShelfProvider, v5);

    sub_1A3C651B8(&v12);
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1A4984FA0()
{
  v1 = qword_1EB129BD8;
  v2 = *(v0 + qword_1EB129BD8);
  if (v2)
  {
    v3 = *(v0 + qword_1EB129BD8);
  }

  else
  {
    v4 = [objc_allocWithZone(PXCPLUIStatusProvider) initWithPhotoLibrary_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1A4985028()
{
  if (!*(v0 + qword_1EB129BD0))
  {
    type metadata accessor for LemonadeProfileBadgeProvider();
    v2 = *(*(v0 + qword_1EB129BB8) + 16);
    v3 = sub_1A4984FA0();
    v4 = sub_1A4984EB0();
    sub_1A3D35FFC(v2, v3, v4);
  }

  v1 = *(v0 + qword_1EB129BD0);

  return v1;
}

uint64_t sub_1A49850D4()
{
  if (!*(v0 + qword_1EB129C58))
  {
    type metadata accessor for LemonadeStatusViewVisibility();
    sub_1A3D38898([*(v0 + qword_1EB129C50) footerViewModel]);
  }

  v1 = *(v0 + qword_1EB129C58);

  return v1;
}

uint64_t sub_1A49851C8()
{
  sub_1A44DAF9C(v0 + qword_1EB129BE8);
}

uint64_t sub_1A49852C8(uint64_t a1)
{
  sub_1A44DAF9C(a1 + qword_1EB129BE8);
}

uint64_t sub_1A49853DC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1A44D9D88(MEMORY[0x1E69E7CC0]);
    type metadata accessor for PXActionParameterKey();
    sub_1A3C3834C(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
    v6 = sub_1A524C3D4();

    [v5 performActionWithType:a1 objects:a2 parameters:v6];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A49854FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for LemonadeDnDUtilities();
  Strong = swift_unknownObjectWeakLoadStrong();
  static LemonadeDnDUtilities.performActionForDragging(containerObject:sourceObjects:targetObject:actionProviderDelegate:merging:)(a1, a2, a3, Strong, a6);

  return swift_unknownObjectRelease();
}

double sub_1A4985590@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5246E54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A4986D98();
  MEMORY[0x1A5905890](&type metadata for LemonadeRootViewControllerView, v10);
  v11 = sub_1A5246E94();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1A3C7A418(v9, sub_1A3E73E5C);
  }

  else
  {
    v23 = v4;
    sub_1A4986E24(v1, v25);
    sub_1A5246E44();
    v13 = sub_1A5246E84();
    v22 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v14 = swift_slowAlloc();
      v21[1] = a1;
      v15 = v14;
      v16 = swift_slowAlloc();
      v21[0] = v3;
      v24 = v16;
      *v15 = 136446210;
      sub_1A524A694();
      sub_1A4986E5C(v25);
      sub_1A3C2EF94();
    }

    (*(v23 + 8))(v6, v3);
    sub_1A4986E5C(v25);
    (*(v12 + 8))(v9, v11);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_unknownObjectWeakInit();
    v29 = [objc_allocWithZone(sub_1A5243314()) init];
    swift_unknownObjectWeakAssign();
    v26 = *&v18[qword_1EB129C18];

    v27 = sub_1A49850D4();
    v19 = sub_1A4985028();

    v28 = v19;
    sub_1A4986DEC(v25, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A498593C()
{
  v1 = v0;
  sub_1A49872EC();
  v3 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5246E54();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A498727C();
  MEMORY[0x1A5905890](&type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter, v12);
  v13 = sub_1A5246E94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_1A3C7A418(v11, sub_1A3E73E5C);
  }

  else
  {
    v24 = v3;
    sub_1A49877DC(v0, &v29);
    sub_1A5246E44();
    v15 = sub_1A5246E84();
    v23 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v16 = swift_slowAlloc();
      v21[1] = v16;
      v22 = swift_slowAlloc();
      v28 = v22;
      *v16 = 136446210;
      sub_1A524A694();
      sub_1A4987814(&v29);
      sub_1A3C2EF94();
    }

    (*(v25 + 8))(v8, v26);
    sub_1A4987814(&v29);
    (*(v14 + 8))(v11, v13);
    v3 = v24;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(result + qword_1EB129C20);
    v29 = *(result + qword_1EB129BB8);
    v30 = v19;
    v20 = sub_1A498736C();

    sub_1A49E2648(v18, &type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter.RootViewWrapper, v20);

    v26 = *(v1 + 32);
    sub_1A5243304();
    v29 = &type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter.RootViewWrapper;
    v30 = v20;
    swift_getOpaqueTypeConformance2();
    sub_1A524A574();

    (*(v27 + 8))(v5, v3);
    swift_getKeyPath();
    sub_1A49873C0(0);
    sub_1A3D63A24(0);
    sub_1A3C52C70(0, &qword_1EB126B10);
    sub_1A5245CA4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4985FDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248EB4();
  *a1 = result;
  return result;
}

uint64_t sub_1A4986034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5246E54();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  v28 = a2;
  v12 = sub_1A498736C();
  MEMORY[0x1A5905890](&type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter.RootViewWrapper, v12);
  v13 = sub_1A5246E94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    v15 = sub_1A3C7A418(v11, sub_1A3E73E5C);
  }

  else
  {
    v22 = a3;

    sub_1A5246E44();
    v16 = sub_1A5246E84();
    v21 = sub_1A524D664();

    if (sub_1A524DEC4())
    {
      v17 = swift_slowAlloc();
      v20[1] = v6;
      v18 = v17;
      v20[0] = swift_slowAlloc();
      v25 = a2;
      v26 = v20[0];
      *v18 = 136446210;
      v24 = a1;
      sub_1A524A694();
      sub_1A3C2EF94();
    }

    (*(v23 + 8))(v8, v6);
    v15 = (*(v14 + 8))(v11, v13);
  }

  MEMORY[0x1EEE9AC00](v15);
  v20[-2] = a1;
  v20[-1] = a2;
  type metadata accessor for LemonadeRootView();
  sub_1A3C3834C(&qword_1EB12A4E8, type metadata accessor for LemonadeRootView);
  return sub_1A5242284();
}

void sub_1A49863F0()
{
  sub_1A4987E90();

  JUMPOUT(0x1A58FF620);
}

void sub_1A498643C()
{
  sub_1A4987E90();

  JUMPOUT(0x1A58FF630);
}

uint64_t sub_1A4986490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4987DC8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A49864F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4987DC8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A4986558()
{
  sub_1A4987DC8();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A4986608()
{
  swift_unknownObjectWeakInit();
  v1 = qword_1EB129C18;
  sub_1A52422E4();
  swift_allocObject();
  *(v0 + v1) = sub_1A52422D4();
  *(v0 + qword_1EB129BF8) = 0;
  *(v0 + qword_1EB1256A0) = 0;
  *(v0 + qword_1EB129C08) = 0;
  *(v0 + qword_1EB129C30) = 0;
  *(v0 + qword_1EB1256A8) = 0;
  *(v0 + qword_1EB129BC0) = 0;
  *(v0 + qword_1EB129BD8) = 0;
  *(v0 + qword_1EB129BD0) = 0;
  *(v0 + qword_1EB129C58) = 0;
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A4986720(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for LemonadeNavigationDestination();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A498722C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F9790;
  *(v10 + 32) = a2;
  v30 = v10;
  v11 = *(*&a2[qword_1EB129BB8] + 96);
  v29 = 0;
  v27 = a2;

  sub_1A465C514(a1, v11, &v29);
  v13 = v12;

  v14 = v13;
  v15 = *(v13 + 16);
  if (v15)
  {
    v25[1] = v14;
    v26 = a3;
    v16 = v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    do
    {
      sub_1A3C798A0(v16, v9, type metadata accessor for LemonadeNavigationDestination);
      _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v28);
      v18 = sub_1A4656D64(v9, &v28);
      Strong = swift_unknownObjectWeakLoadStrong();
      v20 = sub_1A3EEB3C0(v18, Strong);
      swift_unknownObjectRelease();
      sub_1A3C7A418(v9, type metadata accessor for LemonadeNavigationDestination);
      if (v20)
      {
        v21 = v20;
        MEMORY[0x1A5907D70]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        v10 = v30;
      }

      else
      {
      }

      v16 += v17;
      --v15;
    }

    while (v15);

    a3 = v26;
    if (!(v10 >> 62))
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (!(v10 >> 62))
    {
LABEL_10:
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  v22 = sub_1A524E2B4();
LABEL_11:
  if (v22 >= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  sub_1A3C52C70(0, &qword_1EB126B10);
  v24 = sub_1A524CA14();
  (*(a3 + 16))(a3, v24, v23, 0);
}

uint64_t sub_1A4986A4C(uint64_t a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = Strong;
  v5 = sub_1A524CA14();
  if (a2)
  {
    a2 = sub_1A524CF34();
  }

  v6 = [v4 actionMenuElementsForObjects:v5 allowedActionTypes:a2];

  swift_unknownObjectRelease();
  sub_1A4986D34();
  v7 = sub_1A524CA34();

  return v7;
}

uint64_t sub_1A4986B28(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *off_1E77219D8;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v5 = sub_1A524EA94();
    v6 = [objc_opt_self() arrayWithObject_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1A3C47744(0, &unk_1EB146250, sub_1A44D9E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v8 = *off_1E77219C0;
    *(inited + 32) = *off_1E77219C0;
    *(inited + 64) = swift_getObjectType();
    *(inited + 40) = a1;
    v9 = v8;
    swift_unknownObjectRetain();
    sub_1A44D9D88(inited);
    swift_setDeallocating();
    sub_1A3C7A418(inited + 32, sub_1A44D9E98);
    type metadata accessor for PXActionParameterKey();
    sub_1A3C3834C(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
    v10 = sub_1A524C3D4();

    [v3 performActionWithType:v4 objects:v6 parameters:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A4986D34()
{
  result = qword_1EB120AE0;
  if (!qword_1EB120AE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120AE0);
  }

  return result;
}

unint64_t sub_1A4986D98()
{
  result = qword_1EB1937D0[0];
  if (!qword_1EB1937D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1937D0);
  }

  return result;
}

uint64_t sub_1A4986E8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4984B80(v2, v3, v5, v4);
}

uint64_t block_copy_helper_31_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1A4986F64()
{
  v1 = *(v0 + 16);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 safeAreaInsets];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      type metadata accessor for LemonadeRootViewModel();
      sub_1A3C3834C(&qword_1EB125900, type metadata accessor for LemonadeRootViewModel);
      v18.top = v11;
      v18.left = v13;
      v18.bottom = v15;
      v18.right = v17;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v7, v5), v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A49870A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A498378C();
}

uint64_t sub_1A498712C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C52C70(255, &qword_1EB126A10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4987190()
{
  result = qword_1EB146260;
  if (!qword_1EB146260)
  {
    sub_1A498722C(255, &qword_1EB146268, &type metadata for LemonadeRootViewControllerView.RootViewEnvironmentWriter, MEMORY[0x1E69E6720]);
    sub_1A498727C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146260);
  }

  return result;
}

void sub_1A498722C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A498727C()
{
  result = qword_1EB193860[0];
  if (!qword_1EB193860[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB193860);
  }

  return result;
}

void sub_1A49872EC()
{
  if (!qword_1EB127640)
  {
    sub_1A498736C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127640);
    }
  }
}

unint64_t sub_1A498736C()
{
  result = qword_1EB1938F0[0];
  if (!qword_1EB1938F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1938F0);
  }

  return result;
}

void sub_1A49873F4()
{
  if (!qword_1EB127670)
  {
    sub_1A49872EC();
    sub_1A498736C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127670);
    }
  }
}

void sub_1A49874D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong px_splitViewController];
    [v2 toggleSidebarVisibilityAnimated];
  }
}

void sub_1A49876B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A498772C()
{
  if (!qword_1EB122D90)
  {
    sub_1A4987788();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122D90);
    }
  }
}

unint64_t sub_1A4987788()
{
  result = qword_1EB174648;
  if (!qword_1EB174648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB174648);
  }

  return result;
}

unint64_t sub_1A4987864()
{
  result = qword_1EB122FD8;
  if (!qword_1EB122FD8)
  {
    sub_1A49876B8(255, &unk_1EB122FC8, sub_1A4987650, sub_1A498772C);
    sub_1A4987944();
    sub_1A3C3834C(&unk_1EB122DA0, sub_1A498772C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122FD8);
  }

  return result;
}

unint64_t sub_1A4987944()
{
  result = qword_1EB1280C0;
  if (!qword_1EB1280C0)
  {
    sub_1A4987650(255);
    sub_1A49879F4();
    sub_1A3C3834C(&unk_1EB1278F8, sub_1A4987684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1280C0);
  }

  return result;
}

unint64_t sub_1A49879F4()
{
  result = qword_1EB1280D8;
  if (!qword_1EB1280D8)
  {
    sub_1A49875E8(255);
    sub_1A4987AA4();
    sub_1A3C3834C(&qword_1EB1278E0, sub_1A498761C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1280D8);
  }

  return result;
}

unint64_t sub_1A4987AA4()
{
  result = qword_1EB128140;
  if (!qword_1EB128140)
  {
    sub_1A4987580(255);
    sub_1A4987B54();
    sub_1A3C3834C(&qword_1EB1279D8, sub_1A49875B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128140);
  }

  return result;
}

unint64_t sub_1A4987B54()
{
  result = qword_1EB128208;
  if (!qword_1EB128208)
  {
    sub_1A498754C(255);
    sub_1A4987C04();
    sub_1A3C3834C(&qword_1EB127720, sub_1A429D6BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128208);
  }

  return result;
}

unint64_t sub_1A4987C04()
{
  result = qword_1EB128380;
  if (!qword_1EB128380)
  {
    sub_1A49874A4(255);
    sub_1A4987CB4();
    sub_1A3C3834C(&qword_1EB127A20, sub_1A3D63B0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128380);
  }

  return result;
}

unint64_t sub_1A4987CB4()
{
  result = qword_1EB1286A8;
  if (!qword_1EB1286A8)
  {
    sub_1A49873C0(255);
    sub_1A49872EC();
    sub_1A498736C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C3834C(&qword_1EB1278C0, sub_1A3D63A24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1286A8);
  }

  return result;
}

unint64_t sub_1A4987DC8()
{
  result = qword_1EB174630[0];
  if (!qword_1EB174630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB174630);
  }

  return result;
}

uint64_t sub_1A4987E38@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  return sub_1A4470B1C(v4, v3, a1);
}

unint64_t sub_1A4987E90()
{
  result = qword_1EB174650[0];
  if (!qword_1EB174650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB174650);
  }

  return result;
}

void sub_1A4987EE4()
{
  if (!qword_1EB124F68)
  {
    type metadata accessor for LemonadeRootView();
    sub_1A3C3834C(&qword_1EB12A4E8, type metadata accessor for LemonadeRootView);
    v0 = sub_1A5242294();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124F68);
    }
  }
}

id sub_1A4987F98()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A4987FEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id StoryAssetPicker.__allocating_init(withViewModel:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper] = 0;
  v4 = &v3[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id StoryAssetPicker.init(withViewModel:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper] = 0;
  v2 = &v1[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_viewModel] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for StoryAssetPicker();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_1A4988198(void (*a1)(id), uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  v16 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x68))();
  v6 = [v16 mainAssetCollection];
  if (v6)
  {
    v7 = v6;
    v8 = [v16 presentingViewController];
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = v16;
      v11 = swift_allocObject();
      v11[2] = v9;
      v11[3] = a1;
      v11[4] = a2;
      v11[5] = v7;
      v11[6] = v2;
      v11[7] = v8;
      v11[8] = v16;
      v15 = *((*v5 & *v2) + 0xC0);
      swift_retain_n();
      v12 = v16;
      sub_1A3D607F0(a1);
      swift_unknownObjectRetain();
      v13 = v2;
      v14 = v8;
      v15(sub_1A49883FC, v10, v14, sub_1A49884C8, v11);

      swift_unknownObjectRelease();

      return;
    }

    v6 = swift_unknownObjectRelease();
  }

  if (a1)
  {
    a1(v6);
  }
}

BOOL sub_1A49883FC()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) mainModel];
  v3 = [v2 recipeManager];

  v4 = [v3 recipe];
  v5 = [v4 curatedAssets];

  swift_beginAccess();
  *(v1 + 16) = v5;
  swift_unknownObjectRelease();
  return v5 != 0;
}

void sub_1A49884C8(char a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if ((a1 & 1) != 0 && (v5 = v2[2], v7 = v2[5], v6 = v2[6], v9 = v2[7], v8 = v2[8], swift_beginAccess(), (v10 = *(v5 + 16)) != 0) && [v10 count] >= 1)
  {
    swift_beginAccess();
    v11 = [objc_allocWithZone(PXStoryAssetPickerHelper) initWithContainerAssetCollection:v7 preselectedAssets:*(v5 + 16)];
    [v11 setDelegate_];
    v12 = [v11 pickerViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 presentationController];
      if (v14)
      {
        v15 = v14;
        [v14 setDelegate_];
      }

      [v9 px:v13 presentOverTopmostPresentedViewController:1 animated:0 completion:?];
      v16 = [v8 mainModel];
      v22[4] = sub_1A4988708;
      v22[5] = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 1107296256;
      v22[2] = sub_1A3D59380;
      v22[3] = &block_descriptor_54_3;
      v17 = _Block_copy(v22);
      [v16 performChanges_];

      _Block_release(v17);
      v18 = *(v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper);
      *(v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper) = v11;

      v19 = (v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion);
      v20 = *(v6 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion);
      v21 = v19[1];
      *v19 = v3;
      v19[1] = v4;
      sub_1A3D607F0(v3);
      sub_1A3C784D4(v20, v21);
    }

    else
    {
      if (v3)
      {
        v3();
      }
    }
  }

  else if (v3)
  {
    v3();
  }
}

void sub_1A4988718(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1())
  {
    a4(1);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1A49889C0;
    *(v11 + 24) = v9;
    v23 = sub_1A3D78DD0;
    v24 = v11;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A3D35A90;
    v22 = &block_descriptor_313;
    v12 = _Block_copy(&v19);

    v13 = [v10 show_];
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = objc_opt_self();
      v15 = swift_allocObject();
      v15[2] = v9;
      v15[3] = a4;
      v15[4] = a5;
      v15[5] = a1;
      v15[6] = a2;
      v15[7] = v13;
      v23 = sub_1A4988B64;
      v24 = v15;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1A3D7692C;
      v22 = &block_descriptor_18_6;
      v16 = _Block_copy(&v19);

      v17 = v13;

      v18 = [v14 scheduledTimerWithTimeInterval:1 repeats:v16 block:1.0];
      _Block_release(v16);
    }
  }
}

void sub_1A49889C0(void *a1)
{
  [a1 setStyle_];
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  [a1 setTitle_];

  v5 = sub_1A524C634();
  v6 = PXLocalizedString(v5);

  if (!v6)
  {
    sub_1A524C674();
    v6 = sub_1A524C634();
  }

  v8[4] = sub_1A48FC52C;
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3C2E0D0;
  v8[3] = &block_descriptor_51_4;
  v7 = _Block_copy(v8);

  [a1 addActionWithTitle:v6 style:1 action:v7];
  _Block_release(v7);
}

void sub_1A4988B64(void *a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[7];
  v8 = swift_beginAccess();
  if (*(v4 + 16) == 1)
  {
    [a1 invalidate];
    v3(0);
  }

  else if (v6(v8))
  {
    [a1 invalidate];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v5;
    aBlock[4] = sub_1A4989700;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_48_4;
    v10 = _Block_copy(aBlock);

    [v7 dismissWithCompletionHandler_];
    _Block_release(v10);
  }
}

void sub_1A4988CC4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper);
  *(v4 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper) = 0;

  v10 = MEMORY[0x1E69E7D40];
  if ((!a3 || [a3 count] <= 0) && (!a4 || objc_msgSend(a4, sel_count) < 1))
  {
    goto LABEL_32;
  }

  v45 = a2;
  v11 = [objc_msgSend(a1 containerCollection)];
  swift_unknownObjectRelease();
  v12 = sub_1A524C674();
  v14 = v13;

  v15 = *((*v10 & *v4) + 0x68);
  v16 = v15();
  v17 = [v16 mainAssetCollection];

  if (v17)
  {
    v18 = [v17 uuid];
    swift_unknownObjectRelease();
    v19 = sub_1A524C674();
    v21 = v20;

    if (v12 == v19 && v14 == v21)
    {

LABEL_16:
      v27 = (v15)(v24);
      v28 = [v27 mainModel];

      v29 = [v28 recipeManager];
      if (!a3)
      {
        v35 = 0;
LABEL_30:
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        *(v37 + 24) = v45;
        v50 = sub_1A498925C;
        v51 = v37;
        aBlock = MEMORY[0x1E69E9820];
        v47 = 1107296256;
        v48 = sub_1A421179C;
        v49 = &block_descriptor_30_6;
        v38 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        [v29 performChanges_];

        _Block_release(v38);
        goto LABEL_31;
      }

      swift_unknownObjectRetain();
      v30 = [v29 recipe];
      v31 = [v30 allAssets];

      if (!v31)
      {
        v35 = 0;
LABEL_29:
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      v44 = v29;
      if ([a3 count] < 1)
      {
        v35 = 0;
LABEL_28:
        swift_unknownObjectRelease();
        v29 = v44;
        goto LABEL_29;
      }

      v32 = [a3 count];
      if ((v32 & 0x8000000000000000) == 0)
      {
        v33 = v32;
        v34 = 0;
        while (1)
        {
          v35 = v33 != v34;
          if (v33 == v34)
          {
            goto LABEL_28;
          }

          if (__OFADD__(v34, 1))
          {
            __break(1u);
            break;
          }

          v36 = [v31 containsObject_];
          swift_unknownObjectRelease();
          ++v34;
          if ((v36 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v23 = sub_1A524EAB4();

    if (v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  sub_1A524D244();
  v25 = PLStoryGetLog();
  if (!v25)
  {
    goto LABEL_38;
  }

  v26 = v25;
  sub_1A5246DF4();

LABEL_31:
  v10 = MEMORY[0x1E69E7D40];
LABEL_32:
  v39 = [a1 pickerViewController];
  if (v39)
  {
    v40 = v39;
    v41 = swift_allocObject();
    *(v41 + 16) = v4;
    v50 = sub_1A4989208;
    v51 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1A3C2E0D0;
    v49 = &block_descriptor_24_6;
    v42 = _Block_copy(&aBlock);
    v43 = v4;

    [v40 dismissViewControllerAnimated:1 completion:v42];
    _Block_release(v42);
  }

  else
  {
    (*((*v10 & *v4) + 0xD0))();
  }
}

id sub_1A498925C(void *a1)
{
  if (*(v1 + 16))
  {
    v2 = &selRef_applyCustomUserAssets_;
  }

  else
  {
    v2 = &selRef_applyManuallyCuratedAssets_;
  }

  return [a1 *v2];
}

void sub_1A498933C()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  v2 = [v1 mainModel];

  v7[4] = sub_1A4989474;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3D59380;
  v7[3] = &block_descriptor_33_7;
  v3 = _Block_copy(v7);
  [v2 performChanges_];
  _Block_release(v3);

  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_completion + 8);

    v4(v6);
    sub_1A3C784D4(v4, v5);
  }
}

id StoryAssetPicker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryAssetPicker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StoryAssetPicker.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  v2 = v1;
  v7 = [(objc_class *)a1.super.isa presentedViewController];
  v3 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAssetPicker_pickerHelper) pickerViewController];
  if (v3)
  {
    v4 = v3;
    sub_1A3D63AC0();
    v5 = v7;
    v6 = sub_1A524DBF4();

    if (v6)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))();
    }
  }
}

id sub_1A4989758(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v9 = v8();
  v10 = sub_1A440737C(v9);

  result = 0;
  if (v10)
  {
    v12 = *((*v7 & *v2) + 0x108);
    v13 = a1;
    v14 = v12();
    v15 = v8();
    v16 = sub_1A4406828(v13, v14, v15);
    v17 = sub_1A49899B0();
    (*((*v7 & *v16) + 0x110))(v17 & 1);
    v18 = sub_1A4989B00();
    (*((*v7 & *v16) + 0x128))(v18 & 1);
    (*((*v7 & *v2) + 0xE0))(v16);
    sub_1A4989BEC();
    v19 = v16;
    sub_1A3FA5410(v6);
    v20 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

    return v20;
  }

  return result;
}

uint64_t sub_1A49899B0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetAbove;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetAbove);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v5 = type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
      v6 = *((*v4 & *v1) + 0xA8);
      v7 = v6();
      v8 = (*(v5 + 440))();

      if (v8)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        v9 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel();
        v10 = v6();
        LOBYTE(v3) = (*(v9 + 376))();
      }
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

uint64_t sub_1A4989B00()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetBelow;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosDetailsSavedFromAppsWidget____lazy_storage___hasSiblingWidgetBelow);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))())
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      type metadata accessor for PhotosDetailsAssetProvenanceViewModel();
      v5 = (*((*v4 & *v1) + 0xA8))();
      LOBYTE(v3) = sub_1A3FBD1E0(v5);
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

void sub_1A4989BEC()
{
  if (!qword_1EB1462E8)
  {
    type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
    sub_1A4989C50();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1462E8);
    }
  }
}

unint64_t sub_1A4989C50()
{
  result = qword_1EB12F8D8;
  if (!qword_1EB12F8D8)
  {
    type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F8D8);
  }

  return result;
}

uint64_t sub_1A4989D94()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x168))())
  {
    return 2;
  }

  if (sub_1A49899B0())
  {
    return 2;
  }

  return 0;
}

double sub_1A4989E04()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsSavedFromAppsWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6D7980);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A498A160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsSavedFromAppsWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A498A19C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A52411C4();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  *(a4 + *(v9 + 20)) = a2;
  *(a4 + *(v9 + 24)) = a3;
  sub_1A5245BA4();
}

uint64_t LemonadeMemoryPlayerConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A498A3E8()
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A498A470()
{
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);

  return sub_1A524C4B4();
}

uint64_t LemonadeMemoryPlayerConfiguration.hash(into:)()
{
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);

  return sub_1A524C4B4();
}

uint64_t sub_1A498A578()
{
  sub_1A524EC94();
  sub_1A52411C4();
  sub_1A498A974(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A498A85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A498A8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A498A974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A498AA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A498A974(&qword_1EB146308, type metadata accessor for LemonadeMemoryPlayerView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A498AAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A498A974(&qword_1EB146308, type metadata accessor for LemonadeMemoryPlayerView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A498AB54()
{
  sub_1A498A974(&qword_1EB146308, type metadata accessor for LemonadeMemoryPlayerView);
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A498ABFC()
{
  result = type metadata accessor for LemonadeMemoryPlayerConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A498AC68()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B4F8);
  __swift_project_value_buffer(v0, qword_1EB15B4F8);
  return sub_1A5246F14();
}

unint64_t sub_1A498AD08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A4992494(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A498AF64()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A498AFFC(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A498B04C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A498B1A8()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A498B240(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A498B290@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A498B3EC()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A498B484(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A498B4D4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A498B63C()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A498B6D4(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A498B724@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

void *sub_1A498B898()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A498B944(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A498B99C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_1A498BA00(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x130);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A498BB18()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A498BBB0(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A498BC00@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x140))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A498BD70()
{
  v1 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A498BE08(char a1)
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A498BE58@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result & 1;
  return result;
}

id PhotosFileProviderRegister.Configuration.init(usage:)(uint64_t a1)
{
  v2 = v1;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  *&v1[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy] = 0;
  *&v1[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy] = 0;
  *&v1[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension] = 0;
  v9 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_livePhotoContentType;
  v10 = sub_1A5246D14();
  v11 = *(*(v10 - 8) + 56);
  v11(&v1[v9], 1, 1, v10);
  v12 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_autoLoopAsGIFContentType;
  v11(&v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_autoLoopAsGIFContentType], 1, 1, v10);
  *&v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage] = a1;
  sub_1A5246D24();
  swift_beginAccess();
  sub_1A49924A4(v8, &v2[v12]);
  swift_endAccess();
  v13 = PLIsLockdownMode() ^ 1;
  if ((v13 & 1) == 0)
  {
    v27 = v9;
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v14 = sub_1A5246F24();
    __swift_project_value_buffer(v14, qword_1EB15B4F8);
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "Lockdown mode is enabled, excluding location and caption metadata by default.", v17, 2u);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v9 = v27;
  }

  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation] = v13;
  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption] = v13;
  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection] = 0;
  v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection] = 0;
  if (a1 > 1)
  {
    goto LABEL_11;
  }

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_15:
      sub_1A5246D24();
      swift_beginAccess();
      v22 = &v2[v9];
      v23 = v8;
      goto LABEL_18;
    }

    while (1)
    {
      v30 = a1;
      sub_1A524EB44();
      __break(1u);
LABEL_11:
      if (a1 == 2)
      {
        break;
      }

      if (a1 == 3)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = PFCurrentPlatformLivePhotoBundleType();
  if (v18)
  {
    v19 = v28;
    v20 = v18;
    sub_1A5246C44();

    v21 = 0;
  }

  else
  {
    v21 = 1;
    v19 = v28;
  }

  v11(v19, v21, 1, v10);
  swift_beginAccess();
  v22 = &v2[v9];
  v23 = v19;
LABEL_18:
  sub_1A49924A4(v23, v22);
  swift_endAccess();
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_liveWallpaperContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_spatialWallpaperContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType], sub_1A435B518);
  sub_1A5246D24();
  sub_1A4992614(v8, &v2[OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_mailMovieExportContentType], sub_1A435B518);
  v24 = type metadata accessor for PhotosFileProviderRegister.Configuration(0);
  v29.receiver = v2;
  v29.super_class = v24;
  return objc_msgSendSuper2(&v29, sel_init);
}

id sub_1A498C684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = (*(v9 + 16))(&v16 - v11, a1 + *a4, v8, v10);
  v14 = a5(v13);
  (*(v9 + 8))(v12, v8);

  return v14;
}

uint64_t sub_1A498C7B8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id PhotosFileProviderRegister.FileRepresentation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A498C9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id PhotosFileProviderRegister.__allocating_init(configuration:fileProviderManager:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PXPhotosFileProviderRegister_configuration] = a1;
  *&v7[OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager] = a2;
  *&v7[OBJC_IVAR___PXPhotosFileProviderRegister_domain] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id PhotosFileProviderRegister.init(configuration:fileProviderManager:domain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___PXPhotosFileProviderRegister_configuration] = a1;
  *&v3[OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager] = a2;
  *&v3[OBJC_IVAR___PXPhotosFileProviderRegister_domain] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PhotosFileProviderRegister();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1A498CE30(void *a1, void *a2)
{
  v121 = a1;
  v3 = sub_1A5246D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v101 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499256C();
  v120 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v91 - v9;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v91 - v20;
  v112 = sub_1A5240E64();
  v98 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v103 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v26 = &v91 - v25;
  v27 = [a2 originalFilename];
  v91 = a2;
  if (v27)
  {
    v28 = v27;
    v29 = [v27 stringByDeletingPathExtension];

    if (!v29)
    {
      sub_1A524C674();
      v29 = sub_1A524C634();
    }

    [v121 setSuggestedName_];

    a2 = v91;
  }

  v30 = (*((*MEMORY[0x1E69E7D40] & *v92) + 0x88))(a2);
  v32 = v30;
  if (v30 >> 62)
  {
    v33 = sub_1A524E2B4();
  }

  else
  {
    v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v33)
  {

    v114 = MEMORY[0x1E69E7CC0];
LABEL_43:
    if (v114[2])
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v111 = v33;
  if (v33 >= 1)
  {
    v113 = v21;
    v104 = v16;
    v94 = v13;
    v108 = v10;
    v34 = 0;
    v35 = *(v92 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration);
    v117 = v32 & 0xC000000000000001;
    v122 = (v4 + 16);
    v116 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage;
    v118 = (v4 + 48);
    v119 = (v4 + 56);
    v106 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType;
    v97 = (v4 + 32);
    v109 = (v4 + 8);
    v99 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType;
    v96 = (v98 + 16);
    v105 = (v98 + 8);
    v95 = v98 + 32;
    v114 = MEMORY[0x1E69E7CC0];
    *&v31 = 136315138;
    v93 = v31;
    v123 = v35;
    v124 = v3;
    v110 = v32;
    v36 = v111;
    v107 = v26;
    while (1)
    {
      if (v117)
      {
        v37 = MEMORY[0x1A59097F0](v34, v32);
      }

      else
      {
        v37 = *(v32 + 8 * v34 + 32);
      }

      v38 = v37;
      v39 = [v121 registerFileRepresentation:v37 usage:{*(v35 + v116), v91}];
      if (!v39)
      {
        if (qword_1EB15B4F0 != -1)
        {
          swift_once();
        }

        v50 = sub_1A5246F24();
        __swift_project_value_buffer(v50, qword_1EB15B4F8);
        v51 = v38;
        v52 = sub_1A5246F04();
        v53 = sub_1A524D244();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          *v54 = v93;
          v55 = v101;
          (*v122)(v101, &v51[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v124);
          sub_1A49925D0(&qword_1EB1390F8);
          sub_1A524EA44();
          (*v109)(v55, v124);
          sub_1A3C2EF94();
        }

        goto LABEL_11;
      }

      v40 = v39;
      sub_1A5240DE4();

      v41 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType;
      v42 = *v122;
      v125 = v38;
      v43 = v113;
      v115 = v42;
      v42(v113, &v38[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v3);
      v44 = *v119;
      (*v119)(v43, 0, 1, v3);
      v45 = *(v120 + 48);
      v46 = v108;
      sub_1A499267C(v43, v108, sub_1A435B518);
      sub_1A499267C(v35 + v106, v46 + v45, sub_1A435B518);
      v47 = *v118;
      if ((*v118)(v46, 1, v3) == 1)
      {
        break;
      }

      v56 = v102;
      sub_1A499267C(v46, v102, sub_1A435B518);
      if (v47(v46 + v45, 1, v3) == 1)
      {
        sub_1A4996FE0(v113, sub_1A435B518);
        (*v109)(v56, v3);
LABEL_25:
        sub_1A4996FE0(v46, sub_1A499256C);
        v48 = v107;
        v49 = v125;
        goto LABEL_26;
      }

      v68 = v46 + v45;
      v69 = v101;
      (*v97)(v101, v68, v3);
      sub_1A49925D0(&qword_1EB124A40);
      v70 = sub_1A524C594();
      v71 = *v109;
      (*v109)(v69, v3);
      sub_1A4996FE0(v113, sub_1A435B518);
      v71(v102, v3);
      sub_1A4996FE0(v46, sub_1A435B518);
      v48 = v107;
      v49 = v125;
      if (v70)
      {
        goto LABEL_38;
      }

LABEL_26:
      v57 = v104;
      v3 = v124;
      v115(v104, &v49[v41], v124);
      v44(v57, 0, 1, v3);
      v58 = *(v120 + 48);
      v59 = v100;
      sub_1A499267C(v57, v100, sub_1A435B518);
      sub_1A499267C(v123 + v99, v59 + v58, sub_1A435B518);
      if (v47(v59, 1, v3) == 1)
      {
        sub_1A4996FE0(v57, sub_1A435B518);
        v60 = v47(v59 + v58, 1, v3);
        v32 = v110;
        v35 = v123;
        if (v60 != 1)
        {
          goto LABEL_31;
        }

        sub_1A4996FE0(v59, sub_1A435B518);
        v36 = v111;
        v61 = v125;
      }

      else
      {
        v62 = v94;
        sub_1A499267C(v59, v94, sub_1A435B518);
        if (v47(v59 + v58, 1, v3) == 1)
        {
          sub_1A4996FE0(v104, sub_1A435B518);
          (*v109)(v62, v3);
          v32 = v110;
LABEL_31:
          sub_1A4996FE0(v59, sub_1A499256C);
          v36 = v111;
          v61 = v125;
LABEL_32:
          (*v96)(v103, v48, v112);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1A49922A0(0, v114[2] + 1, 1, v114, &qword_1EB1203C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
          }

          v64 = v114[2];
          v63 = v114[3];
          if (v64 >= v63 >> 1)
          {
            v114 = sub_1A49922A0(v63 > 1, v64 + 1, 1, v114, &qword_1EB1203C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
          }

          v65 = v98;
          v66 = v112;
          (*(v98 + 8))(v48, v112);
          v67 = v114;
          v114[2] = v64 + 1;
          (*(v65 + 32))(v67 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64, v103, v66);
          v35 = v123;
          goto LABEL_11;
        }

        v72 = v59 + v58;
        v73 = v101;
        (*v97)(v101, v72, v3);
        sub_1A49925D0(&qword_1EB124A40);
        v74 = sub_1A524C594();
        v75 = *v109;
        (*v109)(v73, v3);
        sub_1A4996FE0(v104, sub_1A435B518);
        v75(v62, v3);
        sub_1A4996FE0(v59, sub_1A435B518);
        v32 = v110;
        v36 = v111;
        v35 = v123;
        v61 = v125;
        if ((v74 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      (*v105)(v48, v112);

LABEL_11:
      if (v36 == ++v34)
      {

        goto LABEL_43;
      }
    }

    sub_1A4996FE0(v43, sub_1A435B518);
    if (v47(v46 + v45, 1, v3) == 1)
    {
      sub_1A4996FE0(v46, sub_1A435B518);
      v48 = v107;
      v49 = v125;
LABEL_38:
      (*v105)(v48, v112);

      v35 = v123;
      v3 = v124;
      v32 = v110;
      v36 = v111;
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  __break(1u);
  swift_once();
  v76 = sub_1A5246F24();
  __swift_project_value_buffer(v76, qword_1EB15B4F8);
  v77 = a2;
  v78 = sub_1A5246F04();
  v79 = sub_1A524D244();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v80 = 136446210;
    v81 = [v77 uuid];

    if (v81)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }
  }

  else
  {

    v82 = v91;
    if (*(*(v92 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage) == 1)
    {
      v83 = [objc_opt_self() referenceForAsset_];
      [v121 registerObject:v83 visibility:3];
    }

    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v84 = sub_1A5246F24();
    __swift_project_value_buffer(v84, qword_1EB15B4F8);
    v85 = v82;
    v86 = v121;
    v87 = sub_1A5246F04();
    v88 = sub_1A524D264();
    if (!os_log_type_enabled(v87, v88))
    {

      return;
    }

    v89 = swift_slowAlloc();
    swift_slowAlloc();
    v126 = swift_slowAlloc();
    *v89 = 136446466;
    v90 = [v85 uuid];

    if (v90)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1A498E054(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1A5246D14();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v48 - v14;
  v16 = [a2 px_exportFolderName];
  [a1 setSuggestedName_];

  v17 = sub_1A5240E64();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v53 = a3;
  v19(a3, 1, 1, v17);
  v20 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x80);
  v54 = a2;
  v21 = a2;
  v22 = v4;
  v23 = v20(v21);
  if (v23)
  {
    v24 = v23;
    v25 = *(*(v4 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage);
    v51 = a1;
    v26 = [a1 registerFileRepresentation:v23 usage:v25];
    if (v26)
    {
      v27 = v26;
      sub_1A5240DE4();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v53;
    sub_1A4996FE0(v53, sub_1A3EE53E0);
    v19(v15, v28, 1, v17);
    sub_1A4992614(v15, v29, sub_1A3EE53E0);
    v30 = v52;
    sub_1A499267C(v29, v52, sub_1A3EE53E0);
    if ((*(v18 + 48))(v30, 1, v17) == 1)
    {
      sub_1A4996FE0(v30, sub_1A3EE53E0);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v31 = sub_1A5246F24();
      __swift_project_value_buffer(v31, qword_1EB15B4F8);
      v32 = v24;
      v33 = sub_1A5246F04();
      v34 = sub_1A524D244();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v35 = 136315138;
        v36 = v48;
        v37 = v49;
        v38 = v50;
        (*(v49 + 16))(v48, v32 + OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType, v50);
        sub_1A49925D0(&qword_1EB1390F8);
        sub_1A524EA44();
        (*(v37 + 8))(v36, v38);
        sub_1A3C2EF94();
      }

      a1 = v51;
    }

    else
    {

      sub_1A4996FE0(v30, sub_1A3EE53E0);
      a1 = v51;
    }
  }

  v39 = v54;
  if (*(*(v22 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration) + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_usage) == 1)
  {
    v40 = [objc_opt_self() referenceForObject_];
    [a1 registerObject:v40 visibility:3];
  }

  if (qword_1EB15B4F0 != -1)
  {
    swift_once();
  }

  v41 = sub_1A5246F24();
  __swift_project_value_buffer(v41, qword_1EB15B4F8);
  v42 = v39;
  v43 = a1;
  v44 = sub_1A5246F04();
  v45 = sub_1A524D264();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v46 = 136446466;
    v47 = [v42 uuid];

    if (v47)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
  }
}

id sub_1A498E8BC(void *a1)
{
  v2 = sub_1A5246D14();
  result = [a1 uuid];
  if (result)
  {
    v4 = result;
    sub_1A524C674();

    v5 = [a1 localIdentifier];
    sub_1A524C674();

    sub_1A3D5F9DC();
    v6 = sub_1A524DF84();

    if (*(v6 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  return result;
}

id sub_1A498EB88(void *a1)
{
  v2 = v1;
  sub_1A4996354(0);
  v5 = *(v4 - 1);
  v36 = v4;
  v37 = v5;
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 uuid];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = result;
  v35 = sub_1A524C674();
  v40 = v11;

  v12 = [a1 localIdentifier];
  v13 = sub_1A524C674();
  v15 = v14;

  v43 = v13;
  v44 = v15;
  v41 = 47;
  v42 = 0xE100000000000000;
  sub_1A3D5F9DC();
  v16 = sub_1A524DF84();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 16 + 16 * v17);
    v19 = v18[1];
    v34 = *v18;
    v39 = v19;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v39 = 0xE300000000000000;
  v34 = 3223600;

  v20 = [a1 photoLibrary];
  if (v20)
  {
    v21 = v20;
    if ([a1 px_isMomentSharedAsset])
    {

      v38 = 0xE300000000000000;
      v33 = 7171427;
    }

    else
    {
      if ([v21 isSystemPhotoLibrary])
      {
        v43 = 1;
      }

      else
      {
        v43 = [v21 wellKnownPhotoLibraryIdentifier];
      }

      v33 = sub_1A524EA44();
      v38 = v23;
    }
  }

  else
  {
    v43 = 0;
    v33 = sub_1A524EA44();
    v38 = v22;
  }

  sub_1A499436C(a1, *(v2 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration));
  v25 = v24;
  v26 = *(v24 + 16);
  if (v26)
  {
    v43 = MEMORY[0x1E69E7CC0];
    result = sub_1A524E554();
    v27 = 0;
    v32 = v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x90);
    while (v27 < *(v25 + 16))
    {
      v29 = v27 + 1;
      sub_1A499267C(v32 + *(v37 + 72) * v27, v8, sub_1A4996354);
      LOBYTE(v30) = v8[v36[20]];
      v28(v8, v35, v40, v34, v39, v33, v38, *&v8[v36[12]], *&v8[v36[16]], v30);
      sub_1A4996FE0(v8, sub_1A4996354);
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      result = sub_1A524E524();
      v27 = v29;
      if (v26 == v29)
      {

        return v43;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t PHAssetExportRequestVariant.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x74616E7265746C61;
      }

      goto LABEL_8;
    }

    return 0x62697461706D6F63;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x746E6572727563;
      }

LABEL_8:
      v2 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v2);

      return 0x206E776F6E6B6E75;
    }

    return 0x6669636570736E75;
  }
}

void sub_1A498F250(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t), void (*a6)(_BYTE *, uint64_t, uint64_t), uint64_t (*a7)(_BYTE *, uint64_t), void *a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = v10;
  v112 = a8;
  v113 = a4;
  v110 = a7;
  v108 = a6;
  v114 = a5;
  v115 = a2;
  v116 = a3;
  v13 = a9;
  v14 = sub_1A5246D14();
  v118 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A499256C();
  v109 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v89[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v89[-v19];
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v91 = &v89[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v89[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v89[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v89[-v28];
  v29 = sub_1A5240E64();
  v111 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32);
  v119 = &v89[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v89[-v35];
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v89[-v38];
  v104 = sub_1A52405C4();
  v102 = *(v104 - 8);
  v40 = MEMORY[0x1EEE9AC00](v104);
  v42 = &v89[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a9)
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & **(v11 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration)) + 0xE0))(v40);
  }

  v96 = v20;
  sub_1A52405B4();
  v117 = a1;
  sub_1A498FE80(v115, v116, v113, v114, v108, v110, v112, v13, v11, a1);
  sub_1A5240594();
  v43 = [*(v11 + OBJC_IVAR___PXPhotosFileProviderRegister_fileProviderManager) documentStorageURL];
  sub_1A5240DE4();

  v97 = v11;
  v44 = [*(v11 + OBJC_IVAR___PXPhotosFileProviderRegister_domain) pathRelativeToDocumentStorage];
  sub_1A524C674();

  v112 = v39;
  sub_1A5240D84();

  v45 = v111 + 8;
  v110 = *(v111 + 8);
  v46 = v110(v36, v29);
  v101 = v42;
  MEMORY[0x1A58FB910](v46);
  v103 = v36;
  if (!v47)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v48 = v109;
  v99 = a10;
  sub_1A5240D84();

  v49 = v117;
  sub_1A5240D64();
  v105 = v29;
  v100 = v45;
  v110(v31, v29);
  v50 = v118;
  v51 = v118 + 16;
  v52 = v107;
  v108 = *(v118 + 16);
  v108(v107, v49, v14);
  v92 = *(v50 + 56);
  v92(v52, 0, 1, v14);
  v53 = *(v97 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration);
  v54 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType;
  v55 = *(v48 + 48);
  v56 = v96;
  sub_1A499267C(v52, v96, sub_1A435B518);
  v97 = v53;
  sub_1A499267C(v53 + v54, v56 + v55, sub_1A435B518);
  v57 = *(v50 + 48);
  v58 = v57(v56, 1, v14);
  v98 = v51;
  if (v58 == 1)
  {
    sub_1A4996FE0(v52, sub_1A435B518);
    if (v57(v56 + v55, 1, v14) == 1)
    {
      v59 = v14;
      v60 = v56;
LABEL_15:
      sub_1A4996FE0(v60, sub_1A435B518);
      LODWORD(v109) = 1;
LABEL_22:
      v62 = v117;
LABEL_23:
      v78 = *(v111 + 16);
      v79 = v103;
      v80 = v105;
      v78(v103, v119, v105);
      v81 = v106;
      v82 = v108;
      v108(v106, v62, v59);
      v83 = type metadata accessor for PhotosFileProviderRegister.FileRepresentation(0);
      v84 = objc_allocWithZone(v83);
      v78(&v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL], v79, v80);
      v82(&v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v81, v59);
      v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_hasLimitedVisibility] = v99 & 1;
      v85 = &v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_uuid];
      v86 = v116;
      *v85 = v115;
      v85[1] = v86;
      v87 = &v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_identifierCode];
      v88 = v114;
      *v87 = v113;
      v87[1] = v88;
      v84[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_isThumbnail] = v109 & 1;
      v120.receiver = v84;
      v120.super_class = v83;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v61 = v95;
    sub_1A499267C(v56, v95, sub_1A435B518);
    if (v57(v56 + v55, 1, v14) != 1)
    {
      v70 = v118;
      v71 = v56 + v55;
      v72 = v106;
      (*(v118 + 32))(v106, v71, v14);
      sub_1A49925D0(&qword_1EB124A40);
      v90 = sub_1A524C594();
      v73 = *(v70 + 8);
      v73(v72, v14);
      sub_1A4996FE0(v107, sub_1A435B518);
      v73(v95, v14);
      v63 = v109;
      sub_1A4996FE0(v56, sub_1A435B518);
      v62 = v117;
      if (v90)
      {
        v59 = v14;
        LODWORD(v109) = 1;
        goto LABEL_23;
      }

LABEL_12:
      v64 = v93;
      v108(v93, v62, v14);
      v92(v64, 0, 1, v14);
      v65 = v64;
      v66 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType;
      v67 = *(v63 + 48);
      v68 = v94;
      sub_1A499267C(v64, v94, sub_1A435B518);
      sub_1A499267C(v97 + v66, &v68[v67], sub_1A435B518);
      if (v57(v68, 1, v14) == 1)
      {
        sub_1A4996FE0(v64, sub_1A435B518);
        if (v57(&v68[v67], 1, v14) == 1)
        {
          v59 = v14;
          v60 = v68;
          goto LABEL_15;
        }
      }

      else
      {
        v69 = v91;
        sub_1A499267C(v68, v91, sub_1A435B518);
        if (v57(&v68[v67], 1, v14) != 1)
        {
          v74 = v118;
          v75 = v14;
          v76 = v106;
          (*(v118 + 32))(v106, &v68[v67], v75);
          sub_1A49925D0(&qword_1EB124A40);
          LODWORD(v109) = sub_1A524C594();
          v77 = *(v74 + 8);
          v77(v76, v75);
          sub_1A4996FE0(v65, sub_1A435B518);
          v59 = v75;
          v77(v69, v75);
          sub_1A4996FE0(v68, sub_1A435B518);
          goto LABEL_22;
        }

        sub_1A4996FE0(v64, sub_1A435B518);
        (*(v118 + 8))(v69, v14);
      }

      v59 = v14;
      sub_1A4996FE0(v68, sub_1A499256C);
      LODWORD(v109) = 0;
      goto LABEL_22;
    }

    sub_1A4996FE0(v107, sub_1A435B518);
    (*(v118 + 8))(v61, v14);
  }

  sub_1A4996FE0(v56, sub_1A499256C);
  v62 = v117;
  v63 = v109;
  goto LABEL_12;
}

char *sub_1A498FE80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v164 = a7;
  v165 = a8;
  v155 = a6;
  v154 = a5;
  v153 = a4;
  v152 = a3;
  v10 = sub_1A5240584();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5246D14();
  v14 = *(v13 - 8);
  v162 = v13;
  v163 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499256C();
  v161 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v145 - v19;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v146 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v151 = &v145 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v145 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v160 = &v145 - v27;
  sub_1A4996EC8(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v145 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v172 = &v145 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v145 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v158 = &v145 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v149 = &v145 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v156 = (&v145 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v170 = &v145 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v166 = &v145 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v145 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v145 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v145 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v145 - v56;
  sub_1A5240574();
  v171 = v11;
  v58 = *(v11 + 56);
  v167 = v11 + 56;
  v168 = v58;
  v58(v57, 0, 1, v10);
  v59 = sub_1A49922A0(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  v61 = v59[2];
  v60 = v59[3];
  v62 = v59;
  if (v61 >= v60 >> 1)
  {
    v62 = sub_1A49922A0(v60 > 1, v61 + 1, 1, v59, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  *(v62 + 16) = v61 + 1;
  v169 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v63 = *(v29 + 72);
  v64 = v62;
  sub_1A4992614(v57, v62 + v169 + v63 * v61, sub_1A4996EC8);
  sub_1A5240574();
  v168(v54, 0, 1, v10);
  v66 = v64[2];
  v65 = v64[3];
  if (v66 >= v65 >> 1)
  {
    v64 = sub_1A49922A0(v65 > 1, v66 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v64[2] = v66 + 1;
  sub_1A4992614(v54, v64 + v169 + v66 * v63, sub_1A4996EC8);
  sub_1A5240574();
  v168(v51, 0, 1, v10);
  v68 = v64[2];
  v67 = v64[3];
  if (v68 >= v67 >> 1)
  {
    v64 = sub_1A49922A0(v67 > 1, v68 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v64[2] = v68 + 1;
  sub_1A4992614(v51, v64 + v169 + v68 * v63, sub_1A4996EC8);
  v176 = v164;
  sub_1A524EA44();
  sub_1A5240574();

  v168(v48, 0, 1, v10);
  v70 = v64[2];
  v69 = v64[3];
  if (v70 >= v69 >> 1)
  {
    v64 = sub_1A49922A0(v69 > 1, v70 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v64[2] = v70 + 1;
  sub_1A4992614(v48, v64 + v169 + v70 * v63, sub_1A4996EC8);
  v176 = v165;
  sub_1A524EA44();
  v71 = v166;
  sub_1A5240574();

  v168(v71, 0, 1, v10);
  v73 = v64[2];
  v72 = v64[3];
  v74 = v64;
  if (v73 >= v72 >> 1)
  {
    v74 = sub_1A49922A0(v72 > 1, v73 + 1, 1, v64, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v165 = a10;
  v75 = v74;
  *(v74 + 16) = v73 + 1;
  v76 = sub_1A4992614(v166, v74 + v169 + v73 * v63, sub_1A4996EC8);
  v77 = *((*MEMORY[0x1E69E7D40] & **(a9 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration)) + 0xF8);
  v166 = *(a9 + OBJC_IVAR___PXPhotosFileProviderRegister_configuration);
  v77(v76);
  v78 = v75;
  v79 = v170;
  sub_1A5240574();

  v168(v79, 0, 1, v10);
  v81 = v75[2];
  v80 = v75[3];
  if (v81 >= v80 >> 1)
  {
    v78 = sub_1A49922A0(v80 > 1, v81 + 1, 1, v75, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v78[2] = v81 + 1;
  v82 = sub_1A4992614(v170, v78 + v169 + v81 * v63, sub_1A4996EC8);
  (*((*MEMORY[0x1E69E7D40] & *v166) + 0x110))(v82);
  v83 = v156;
  sub_1A5240574();

  v168(v83, 0, 1, v10);
  v85 = v78[2];
  v84 = v78[3];
  if (v85 >= v84 >> 1)
  {
    v78 = sub_1A49922A0(v84 > 1, v85 + 1, 1, v78, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v86 = v160;
  v78[2] = v85 + 1;
  v164 = v78;
  sub_1A4992614(v83, v78 + v169 + v85 * v63, sub_1A4996EC8);
  v87 = v162;
  v88 = v163;
  v89 = *(v163 + 16);
  v155 = v163 + 16;
  v153 = v89;
  v89(v86, v165, v162);
  v90 = *(v88 + 56);
  v154 = v88 + 56;
  v152 = v90;
  v90(v86, 0, 1, v87);
  v91 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType;
  v92 = *(v161 + 48);
  v93 = v86;
  v94 = v86;
  v95 = v157;
  sub_1A499267C(v93, v157, sub_1A435B518);
  sub_1A499267C(&v166[v91], v95 + v92, sub_1A435B518);
  v96 = *(v88 + 48);
  v97 = v96(v95, 1, v87);
  v170 = v63;
  v156 = v96;
  if (v97 == 1)
  {
    sub_1A4996FE0(v94, sub_1A435B518);
    v98 = v96(v95 + v92, 1, v87);
    v99 = v159;
    v100 = v164;
    if (v98 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v101 = v148;
  sub_1A499267C(v95, v148, sub_1A435B518);
  if (v96(v95 + v92, 1, v87) == 1)
  {
    sub_1A4996FE0(v160, sub_1A435B518);
    (*(v163 + 8))(v101, v87);
LABEL_20:
    sub_1A4996FE0(v95, sub_1A499256C);
    goto LABEL_21;
  }

  v108 = v163;
  v109 = v95 + v92;
  v110 = v147;
  (*(v163 + 32))(v147, v109, v87);
  sub_1A49925D0(&qword_1EB124A40);
  v111 = sub_1A524C594();
  v112 = *(v108 + 8);
  v112(v110, v87);
  sub_1A4996FE0(v160, sub_1A435B518);
  v112(v101, v87);
  v63 = v170;
  sub_1A4996FE0(v95, sub_1A435B518);
  v99 = v159;
  v100 = v164;
  if (v111)
  {
    goto LABEL_31;
  }

LABEL_21:
  v102 = v151;
  v103 = v162;
  v153(v151, v165, v162);
  v152(v102, 0, 1, v103);
  v104 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType;
  v105 = *(v161 + 48);
  v95 = v150;
  sub_1A499267C(v102, v150, sub_1A435B518);
  sub_1A499267C(&v166[v104], v95 + v105, sub_1A435B518);
  v106 = v156;
  if (v156(v95, 1, v103) != 1)
  {
    v107 = v146;
    sub_1A499267C(v95, v146, sub_1A435B518);
    if (v106(v95 + v105, 1, v103) != 1)
    {
      v113 = v163;
      v114 = v95 + v105;
      v115 = v147;
      (*(v163 + 32))(v147, v114, v103);
      sub_1A49925D0(&qword_1EB124A40);
      v116 = sub_1A524C594();
      v117 = *(v113 + 8);
      v117(v115, v103);
      sub_1A4996FE0(v151, sub_1A435B518);
      v117(v107, v103);
      sub_1A4996FE0(v95, sub_1A435B518);
      v100 = v164;
      v99 = v159;
      if ((v116 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    sub_1A4996FE0(v151, sub_1A435B518);
    (*(v163 + 8))(v107, v103);
LABEL_27:
    sub_1A4996FE0(v95, sub_1A499256C);
    v100 = v164;
    v99 = v159;
    goto LABEL_36;
  }

  sub_1A4996FE0(v102, sub_1A435B518);
  if (v106(v95 + v105, 1, v103) != 1)
  {
    goto LABEL_27;
  }

  v100 = v164;
  v99 = v159;
LABEL_24:
  sub_1A4996FE0(v95, sub_1A435B518);
LABEL_31:
  v176 = sub_1A5246BF4();
  v177 = v118;
  v174 = 0xD000000000000012;
  v175 = 0x80000001A53F5830;
  sub_1A3D5F9DC();
  v119 = sub_1A524E044();

  v120 = 1;
  if (v119)
  {
    v120 = 2;
  }

  v176 = v120;
  sub_1A524EA44();
  v121 = v149;
  sub_1A5240574();

  v168(v121, 0, 1, v10);
  v123 = v100[2];
  v122 = v100[3];
  if (v123 >= v122 >> 1)
  {
    v100 = sub_1A49922A0(v122 > 1, v123 + 1, 1, v100, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
  }

  v100[2] = v123 + 1;
  sub_1A4992614(v121, v100 + v169 + v123 * v63, sub_1A4996EC8);
LABEL_36:
  v176 = sub_1A5246BF4();
  v177 = v124;
  v174 = 0xD000000000000011;
  v175 = 0x80000001A53F5810;
  sub_1A3D5F9DC();
  v125 = sub_1A524E044();

  if (v125)
  {
    v176 = 1;
    sub_1A524EA44();
    v127 = v158;
    sub_1A5240574();

    v168(v127, 0, 1, v10);
    v129 = v100[2];
    v128 = v100[3];
    if (v129 >= v128 >> 1)
    {
      v100 = sub_1A49922A0(v128 > 1, v129 + 1, 1, v100, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
    }

    v100[2] = v129 + 1;
    v126 = sub_1A4992614(v158, v100 + v169 + v129 * v63, sub_1A4996EC8);
  }

  v130 = (*((*MEMORY[0x1E69E7D40] & *v166) + 0x128))(v126);
  if (v130)
  {
    v131 = v130;
    v132 = [v130 stringValue];
    sub_1A524C674();

    sub_1A5240574();

    v168(v99, 0, 1, v10);
    v134 = v100[2];
    v133 = v100[3];
    if (v134 >= v133 >> 1)
    {
      v100 = sub_1A49922A0(v133 > 1, v134 + 1, 1, v100, &qword_1EB1203C8, sub_1A4996EC8, sub_1A4996EC8);
    }

    v100[2] = v134 + 1;
    sub_1A4992614(v99, v100 + v169 + v134 * v63, sub_1A4996EC8);
  }

  v135 = v100[2];
  if (v135)
  {
    v164 = v100;
    v136 = v100 + v169;
    v137 = (v171 + 48);
    v138 = (v171 + 32);
    v139 = MEMORY[0x1E69E7CC0];
    do
    {
      v140 = v172;
      sub_1A499267C(v136, v172, sub_1A4996EC8);
      sub_1A4992614(v140, v31, sub_1A4996EC8);
      if ((*v137)(v31, 1, v10) == 1)
      {
        sub_1A4996FE0(v31, sub_1A4996EC8);
      }

      else
      {
        v141 = *v138;
        (*v138)(v173, v31, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1A49922A0(0, *(v139 + 2) + 1, 1, v139, &unk_1EB1203D0, MEMORY[0x1E6968178], MEMORY[0x1E6968178]);
        }

        v143 = *(v139 + 2);
        v142 = *(v139 + 3);
        if (v143 >= v142 >> 1)
        {
          v139 = sub_1A49922A0(v142 > 1, v143 + 1, 1, v139, &unk_1EB1203D0, MEMORY[0x1E6968178], MEMORY[0x1E6968178]);
        }

        *(v139 + 2) = v143 + 1;
        v141(&v139[((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v143], v173, v10);
        v63 = v170;
      }

      v136 += v63;
      --v135;
    }

    while (v135);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v139;
}

uint64_t sub_1A4991874@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A5246D14();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 registeredContentTypes];
  v12 = sub_1A524CA34();

  v13 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType;
  LOBYTE(v11) = sub_1A4991CF0(&a1[OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_contentType], v12);

  if (v11)
  {
    v14 = sub_1A5240E64();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  else
  {
    v39 = v7;
    v17 = [v3 userInfo];
    v40 = a2;
    if (v17)
    {
      v18 = v17;
      v19 = sub_1A524C3E4();
    }

    else
    {
      v19 = sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    }

    *&v43 = sub_1A5246BF4();
    *(&v43 + 1) = v20;
    v21 = MEMORY[0x1E69E6158];
    sub_1A524E384();
    v22 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL;
    v23 = sub_1A5240E14();
    v44 = v21;
    *&v43 = v23;
    *(&v43 + 1) = v24;
    sub_1A3C57128(&v43, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v19;
    sub_1A44A1BB0(v42, v45, isUniquelyReferenced_nonNull_native);
    sub_1A3D5FAFC(v45);
    v26 = sub_1A524C3D4();

    [v3 setUserInfo_];

    v27 = objc_opt_self();
    v28 = [v27 defaultManager];
    sub_1A5240E14();
    v29 = sub_1A524C634();

    v30 = [v28 fileExistsAtPath_];

    if ((v30 & 1) == 0)
    {
      v31 = [v27 defaultManager];
      sub_1A5240E14();
      v32 = sub_1A524C634();

      [v31 createFileAtPath:v32 contents:0 attributes:0];
    }

    v33 = v39;
    (*(v39 + 16))(v10, &a1[v13], v6);
    *(swift_allocObject() + 16) = a1;
    v34 = a1;
    sub_1A524D284();

    (*(v33 + 8))(v10, v6);
    v35 = sub_1A5240E64();
    v36 = *(v35 - 8);
    v37 = &a1[v22];
    v38 = v40;
    (*(v36 + 16))(v40, v37, v35);
    return (*(v36 + 56))(v38, 0, 1, v35);
  }
}

BOOL sub_1A4991CF0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1A5246D14();
    ++v2;
    sub_1A49925D0(&qword_1EB124A40);
  }

  while ((sub_1A524C594() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1A4991DE8(void (*a1)(char *, uint64_t, void), uint64_t a2, uint64_t a3)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL;
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a3 + v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  a1(v7, 1, 0);
  return sub_1A4996FE0(v7, sub_1A3EE53E0);
}

id sub_1A4991F1C(void *a1, uint64_t a2, void *a3)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3;
  v9 = a1;
  sub_1A4991874(v8, v7);

  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1A5240D44();
    (*(v11 + 8))(v7, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t PXPhotosFileProviderEncodingPolicy.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6974616D6F747561;
    case 1:
      return 0x746E6572727563;
    case 2:
      return 0x62697461706D6F63;
  }

  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  return 0x206E776F6E6B6E75;
}

void *sub_1A4992140(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A49970BC(0, &unk_1EB120290, sub_1A4996EFC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A4996EFC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A49922A0(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A49970BC(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A4992494(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A49924A4(uint64_t a1, uint64_t a2)
{
  sub_1A435B518(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A499256C()
{
  if (!qword_1EB124A38)
  {
    sub_1A435B518(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB124A38);
    }
  }
}

uint64_t sub_1A49925D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A5246D14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4992614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A499267C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49926E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A4997040();
    sub_1A524E794();

    v2 = *(a1 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

id sub_1A49927D8(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() exportRequestForAsset:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1A5240B84();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1A499289C(void *a1, void *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A5246D14();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A49926E4(MEMORY[0x1E69E7CC0]);
  sub_1A3C52C70(0, &qword_1EB120928);
  v10 = a1;
  v19 = sub_1A49927D8(v10);
  v58 = v8;
  v59 = v6;
  v65 = v5;
  v62 = v10;

  v20 = v19;
  v21 = [v20 variants];
  v22 = sub_1A3C52C70(0, &qword_1EB126610);
  v57[0] = sub_1A3D92850();
  v23 = sub_1A524C3E4();

  v61 = v22;
  v24 = sub_1A524DBD4();
  v25 = [objc_allocWithZone(MEMORY[0x1E69786B0]) init];
  v26 = [v25 setVariant_];
  v27 = MEMORY[0x1E69E7D40];
  v28 = [v25 setShouldStripLocation_];
  v29 = *((*v27 & *a2) + 0x110);
  v60 = a2;
  [v25 setShouldStripCaption_];
  v66[0] = 0;
  v57[3] = v25;
  [v20 preflightExportWithOptions:v25 assetAvailability:0 isProcessingRequired:v66 fileURLs:0 info:0];
  v57[4] = v20;

  if ((v66[0] & 1) != 0 && *(v23 + 16))
  {
    v31 = v24;
    v30 = sub_1A3DAC918(v24);
    if (v32)
    {
      v64 = v23;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v31 = v24;
  }

  v33 = v60;
  v34 = MEMORY[0x1E69E7D40];
  v35 = (*((*MEMORY[0x1E69E7D40] & *v60) + 0xC8))(v30);
  v36 = (*((*v34 & *v33) + 0xE0))();
  v57[2] = v35;
  v57[1] = v36;
  v37 = PXPhotosFileProviderVariantsSortedByEncodingPolicy(v35, v36, v62);
  v38 = sub_1A524CA34();

  v58 = (v38 >> 62);
  if (v38 >> 62)
  {
    v39 = sub_1A524E2B4();
  }

  else
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v31;
  v64 = v23;
  v40 = MEMORY[0x1E69E7CC0];
  v65 = v38;
  if (!v39)
  {
LABEL_36:
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v54 = sub_1A5246F24();
    __swift_project_value_buffer(v54, qword_1EB15B4F8);
    v55 = v62;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v41 = 0;
  v42 = v38 & 0xC000000000000001;
  v43 = v38 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v42)
    {
      v44 = MEMORY[0x1A59097F0](v41, v38);
    }

    else
    {
      if (v41 >= *(v43 + 16))
      {
        goto LABEL_40;
      }

      v44 = *(v38 + 8 * v41 + 32);
    }

    v45 = v44;
    v46 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    v47 = [v44 integerValue];
    if (v47 > 1)
    {
      if (v47 == 2)
      {

        v49 = 0x62697461706D6F63;
        v48 = 0xEA0000000000656CLL;
        goto LABEL_29;
      }

      if (v47 != 3)
      {
        goto LABEL_26;
      }

      v48 = 0xE900000000000065;
      v49 = 0x74616E7265746C61;
    }

    else
    {
      if (!v47)
      {

        v49 = 0x6669636570736E75;
        v48 = 0xEB00000000646569;
        goto LABEL_29;
      }

      if (v47 != 1)
      {
LABEL_26:
        v67 = v47;
        v68 = 0x206E776F6E6B6E75;
        v69 = 0xE900000000000028;
        v50 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v50);

        v49 = v68;
        v48 = v69;
        goto LABEL_29;
      }

      v48 = 0xE700000000000000;
      v49 = 0x746E6572727563;
    }

LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1A3D3D914(0, *(v40 + 2) + 1, 1, v40);
    }

    v52 = *(v40 + 2);
    v51 = *(v40 + 3);
    if (v52 >= v51 >> 1)
    {
      v40 = sub_1A3D3D914((v51 > 1), v52 + 1, 1, v40);
    }

    *(v40 + 2) = v52 + 1;
    v53 = &v40[16 * v52];
    *(v53 + 4) = v49;
    *(v53 + 5) = v48;
    ++v41;
    v38 = v65;
    if (v46 == v39)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  __break(1u);
  __break(1u);
  swift_once();
  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB15B4F8);
  v12 = v40;
  v13 = v38;
  v14 = sub_1A5246F04();
  v15 = sub_1A524D244();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v16 = 136446466;
    v17 = [v12 uuid];
    if (v17)
    {
      v18 = v17;

      sub_1A524C674();
      sub_1A3C2EF94();
    }

    __break(1u);

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1A499436C(id a1, void *a2)
{
  sub_1A4996354(0);
  v5 = *(v4 - 1);
  v223 = v4;
  v224 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v213 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v211 = &v201 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v209 = &v201 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v227 = &v201 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v220 = (&v201 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v205 = &v201 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v218 = (&v201 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v201 - v20;
  sub_1A435B518(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v212 = &v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v214 = &v201 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v201 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v221 = &v201 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v226 = &v201 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v203 = &v201 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v201 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v201 - v39;
  v41 = sub_1A5246D14();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v207 = &v201 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v210 = &v201 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v208 = &v201 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v228 = &v201 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v219 = &v201 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v204 = &v201 - v53;
  MEMORY[0x1EEE9AC00](v54);
  *&v217 = &v201 - v55;
  v57 = MEMORY[0x1EEE9AC00](v56);
  v59 = &v201 - v58;
  v60 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x158))(v57);
  v225 = v41;
  v222 = a1;
  v216 = a2;
  v215 = v28;
  if (v60)
  {
    sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_spatialWallpaperContentType, v40, sub_1A435B518);
    if ((*(v42 + 48))(v40, 1, v41) == 1)
    {
      sub_1A4996FE0(v40, sub_1A435B518);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v61 = sub_1A5246F24();
      __swift_project_value_buffer(v61, qword_1EB15B4F8);
      v62 = sub_1A5246F04();
      v63 = sub_1A524D264();
      v64 = v42;
      if (os_log_type_enabled(v62, v63))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_1A3C1C000, v62, v63, "Didn't register Spatial Wallpaper variant because content type is nil.", v65, 2u);
        MEMORY[0x1A590EEC0](v65, -1, -1);
      }

      v66 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      (*(v42 + 32))(v59, v40, v41);
      v67 = v223[12];
      v68 = v223[16];
      v69 = v223[20];
      (*(v42 + 16))(v21, v59, v41);
      *&v21[v67] = 1;
      *&v21[v68] = 0;
      v21[v69] = 1;
      v70 = sub_1A49922A0(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      v72 = v70[2];
      v71 = v70[3];
      v73 = v70;
      v64 = v42;
      if (v72 >= v71 >> 1)
      {
        v73 = sub_1A49922A0(v71 > 1, v72 + 1, 1, v70, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      a1 = v222;
      (*(v42 + 8))(v59, v225);
      v66 = v73;
      *(v73 + 16) = v72 + 1;
      sub_1A4992614(v21, v73 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v72, sub_1A4996354);
      a2 = v216;
      v28 = v215;
    }
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
    v64 = v42;
  }

  if ([a1 playbackStyle] == 3)
  {
    v74 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_livePhotoContentType;
    swift_beginAccess();
    sub_1A499267C(a2 + v74, v37, sub_1A435B518);
    v75 = *(v64 + 48);
    v76 = v225;
    if (v75(v37, 1, v225) == 1)
    {
      sub_1A4996FE0(v37, sub_1A435B518);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v77 = sub_1A5246F24();
      __swift_project_value_buffer(v77, qword_1EB15B4F8);
      v78 = sub_1A5246F04();
      v79 = sub_1A524D264();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = v66;
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1A3C1C000, v78, v79, "Didn't register Live Photo variant because content type is nil.", v81, 2u);
        v82 = v81;
        v66 = v80;
        MEMORY[0x1A590EEC0](v82, -1, -1);
      }

      v84 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v202 = v75;
      v86 = v217;
      (*(v64 + 32))(v217, v37, v76);
      v87 = v223[12];
      v88 = v66;
      v89 = v223[16];
      v90 = v223[20];
      v206 = v64;
      v91 = *(v64 + 16);
      v92 = v218;
      v91(v218, v86, v76);
      *(v92 + v87) = 2;
      *(v92 + v89) = 0;
      v66 = v88;
      *(v92 + v90) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1A49922A0(0, v88[2] + 1, 1, v88, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      v94 = v66[2];
      v93 = v66[3];
      a1 = v222;
      v28 = v215;
      v75 = v202;
      if (v94 >= v93 >> 1)
      {
        v66 = sub_1A49922A0(v93 > 1, v94 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      v64 = v206;
      v84 = MEMORY[0x1E69E7D40];
      (*(v206 + 8))(v217, v225);
      v66[2] = v94 + 1;
      v83 = sub_1A4992614(v218, v66 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v94, sub_1A4996354);
    }

    v95 = v216;
    if ((*((*v84 & *v216) + 0x140))(v83))
    {
      v96 = v95 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_liveWallpaperContentType;
      v97 = v203;
      sub_1A499267C(v96, v203, sub_1A435B518);
      v98 = v225;
      if (v75(v97, 1, v225) == 1)
      {
        sub_1A4996FE0(v97, sub_1A435B518);
        if (qword_1EB15B4F0 != -1)
        {
          swift_once();
        }

        v99 = sub_1A5246F24();
        __swift_project_value_buffer(v99, qword_1EB15B4F8);
        v100 = sub_1A5246F04();
        v101 = sub_1A524D264();
        v102 = os_log_type_enabled(v100, v101);
        v85 = v225;
        a2 = v216;
        if (v102)
        {
          v103 = v66;
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&dword_1A3C1C000, v100, v101, "Didn't register Live Wallpaper variant because content type is nil.", v104, 2u);
          v105 = v104;
          v66 = v103;
          MEMORY[0x1A590EEC0](v105, -1, -1);
        }
      }

      else
      {
        v106 = v204;
        (*(v64 + 32))(v204, v97, v98);
        v107 = v223[12];
        v108 = v66;
        v109 = v223[16];
        v110 = v223[20];
        v111 = v205;
        (*(v64 + 16))(v205, v106, v98);
        *(v111 + v107) = 2;
        *(v111 + v109) = 0;
        v66 = v108;
        *(v111 + v110) = 1;
        v85 = v98;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1A49922A0(0, v108[2] + 1, 1, v108, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        a2 = v216;
        v113 = v66[2];
        v112 = v66[3];
        if (v113 >= v112 >> 1)
        {
          v66 = sub_1A49922A0(v112 > 1, v113 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        (*(v64 + 8))(v204, v98);
        v66[2] = v113 + 1;
        sub_1A4992614(v205, v66 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v113, sub_1A4996354);
      }
    }

    else
    {
      v85 = v225;
      a2 = v95;
    }
  }

  else
  {
    v85 = v225;
  }

  v114 = v226;
  if ([a1 playbackStyle] == 5)
  {
    v115 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_autoLoopAsGIFContentType;
    swift_beginAccess();
    sub_1A499267C(a2 + v115, v114, sub_1A435B518);
    if ((*(v64 + 48))(v114, 1, v85) == 1)
    {
      sub_1A4996FE0(v114, sub_1A435B518);
      if (qword_1EB15B4F0 != -1)
      {
        swift_once();
      }

      v116 = sub_1A5246F24();
      __swift_project_value_buffer(v116, qword_1EB15B4F8);
      v117 = sub_1A5246F04();
      v118 = sub_1A524D264();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = v66;
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_1A3C1C000, v117, v118, "Didn't register auto loop GIF variant because content type is nil.", v120, 2u);
        v121 = v120;
        v66 = v119;
        MEMORY[0x1A590EEC0](v121, -1, -1);
      }
    }

    else
    {
      v122 = a2;
      v123 = v219;
      (*(v64 + 32))(v219, v114, v85);
      v124 = v223[12];
      v125 = v66;
      v126 = v223[16];
      v127 = v223[20];
      v128 = v220;
      (*(v64 + 16))(v220, v123, v85);
      *(v128 + v124) = 1;
      *(v128 + v126) = 0;
      v66 = v125;
      *(v128 + v127) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1A49922A0(0, v125[2] + 1, 1, v125, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      v130 = v66[2];
      v129 = v66[3];
      a2 = v122;
      v28 = v215;
      if (v130 >= v129 >> 1)
      {
        v66 = sub_1A49922A0(v129 > 1, v130 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
      }

      a1 = v222;
      (*(v64 + 8))(v219, v85);
      v66[2] = v130 + 1;
      sub_1A4992614(v220, v66 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v130, sub_1A4996354);
    }
  }

  if ([a1 playbackStyle])
  {
    v131 = sub_1A499289C(a1, a2);
    v133 = *(v131 + 16);
    if (v133)
    {
      v226 = v66;
      v134 = (v64 + 48);
      v219 = (v64 + 16);
      v220 = (v64 + 32);
      v206 = v64;
      v218 = (v64 + 8);
      v205 = v131;
      v135 = (v131 + 48);
      *&v132 = 136446210;
      v217 = v132;
      v136 = v221;
      do
      {
        v137 = *v135;
        swift_bridgeObjectRetain_n();
        sub_1A5246D24();
        if ((*v134)(v136, 1, v85) == 1)
        {
          sub_1A4996FE0(v136, sub_1A435B518);
          if (qword_1EB15B4F0 != -1)
          {
            swift_once();
          }

          v138 = sub_1A5246F24();
          __swift_project_value_buffer(v138, qword_1EB15B4F8);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        (*v220)(v228, v136, v85);
        v139 = [v222 playbackStyle];

        if (v139 > 5)
        {
          v140 = 0;
        }

        else
        {
          v140 = qword_1A5378580[v139];
        }

        v141 = v223[12];
        v142 = v223[16];
        v143 = v223[20];
        v144 = v227;
        (*v219)(v227, v228, v85);
        *(v144 + v141) = v140;
        *(v144 + v142) = v137;
        *(v144 + v143) = 0;
        v145 = v226;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1A49922A0(0, *(v145 + 2) + 1, 1, v145, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        v147 = *(v145 + 2);
        v146 = *(v145 + 3);
        v136 = v221;
        if (v147 >= v146 >> 1)
        {
          v145 = sub_1A49922A0(v146 > 1, v147 + 1, 1, v145, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
        }

        (*v218)(v228, v85);
        *(v145 + 2) = v147 + 1;
        v148 = (*(v224 + 80) + 32) & ~*(v224 + 80);
        v226 = v145;
        sub_1A4992614(v227, &v145[v148 + *(v224 + 72) * v147], sub_1A4996354);
        v135 += 3;
        --v133;
      }

      while (v133);

      a1 = v222;
      a2 = v216;
      v64 = v206;
      v66 = v226;
    }

    else
    {

      a2 = v216;
    }

    v28 = v215;
  }

  else
  {
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v149 = sub_1A5246F24();
    __swift_project_value_buffer(v149, qword_1EB15B4F8);
    v150 = a1;
    v151 = sub_1A5246F04();
    v152 = sub_1A524D244();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      *v153 = 136446210;
      v154 = [v150 uuid];

      if (v154)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      __break(1u);
      __break(1u);
      return;
    }

    v85 = v225;
  }

  if (![a1 isVideo])
  {
    goto LABEL_78;
  }

  sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_mailMovieExportContentType, v28, sub_1A435B518);
  if ((*(v64 + 48))(v28, 1, v85) == 1)
  {
    sub_1A4996FE0(v28, sub_1A435B518);
LABEL_78:
    v155 = v214;
    goto LABEL_84;
  }

  v156 = a2;
  v157 = v208;
  (*(v64 + 32))(v208, v28, v85);
  v158 = v223[12];
  v159 = v66;
  v160 = v223[16];
  v161 = v223[20];
  v162 = v209;
  (*(v64 + 16))(v209, v157, v85);
  *(v162 + v158) = 3;
  *(v162 + v160) = 2;
  v66 = v159;
  *(v162 + v161) = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v66 = sub_1A49922A0(0, v159[2] + 1, 1, v159, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
  }

  v155 = v214;
  v164 = v66[2];
  v163 = v66[3];
  a2 = v156;
  if (v164 >= v163 >> 1)
  {
    v66 = sub_1A49922A0(v163 > 1, v164 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
  }

  (*(v64 + 8))(v208, v85);
  v66[2] = v164 + 1;
  sub_1A4992614(v209, v66 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v164, sub_1A4996354);
LABEL_84:
  sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailStandardContentType, v155, sub_1A435B518);
  v165 = *(v64 + 48);
  if ((v165)(v155, 1, v85) == 1)
  {
    sub_1A4996FE0(v155, sub_1A435B518);
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v166 = sub_1A5246F24();
    __swift_project_value_buffer(v166, qword_1EB15B4F8);
    v167 = sub_1A5246F04();
    v168 = sub_1A524D264();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = v165;
      v170 = v66;
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_1A3C1C000, v167, v168, "Didn't register Large Thumbnail variant because content type is nil.", v171, 2u);
      v172 = v171;
      v66 = v170;
      v165 = v169;
      MEMORY[0x1A590EEC0](v172, -1, -1);
    }
  }

  else
  {
    v228 = v165;
    v173 = v155;
    v174 = v210;
    (*(v64 + 32))(v210, v173, v85);
    v175 = v223[12];
    v176 = v66;
    v177 = v223[16];
    v178 = v85;
    v179 = v223[20];
    v180 = v64;
    v181 = *(v64 + 16);
    v182 = v211;
    v181(v211, v174, v178);
    *(v182 + v175) = 1;
    *(v182 + v177) = 1;
    v66 = v176;
    *(v182 + v179) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1A49922A0(0, v176[2] + 1, 1, v176, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    v184 = v66[2];
    v183 = v66[3];
    v85 = v225;
    v64 = v180;
    if (v184 >= v183 >> 1)
    {
      v66 = sub_1A49922A0(v183 > 1, v184 + 1, 1, v66, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    a2 = v216;
    v165 = v228;
    (*(v64 + 8))(v210, v85);
    v66[2] = v184 + 1;
    sub_1A4992614(v211, v66 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v184, sub_1A4996354);
  }

  v185 = v212;
  sub_1A499267C(a2 + OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_thumbnailLowContentType, v212, sub_1A435B518);
  if ((v165)(v185, 1, v85) == 1)
  {
    sub_1A4996FE0(v185, sub_1A435B518);
    if (qword_1EB15B4F0 != -1)
    {
      swift_once();
    }

    v186 = sub_1A5246F24();
    __swift_project_value_buffer(v186, qword_1EB15B4F8);
    v187 = sub_1A5246F04();
    v188 = sub_1A524D264();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = v66;
      v190 = swift_slowAlloc();
      *v190 = 0;
      _os_log_impl(&dword_1A3C1C000, v187, v188, "Didn't register Small Thumbnail variant because content type is nil.", v190, 2u);
      v191 = v190;
      v66 = v189;
      MEMORY[0x1A590EEC0](v191, -1, -1);
    }

    if (!v66[2])
    {
      goto LABEL_107;
    }
  }

  else
  {
    v192 = v207;
    (*(v64 + 32))(v207, v185, v85);
    v193 = v223[12];
    v194 = v66;
    v195 = v223[16];
    v196 = v223[20];
    v197 = v213;
    (*(v64 + 16))(v213, v192, v85);
    *(v197 + v193) = 1;
    *(v197 + v195) = 1;
    v198 = v194;
    *(v197 + v196) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v198 = sub_1A49922A0(0, v194[2] + 1, 1, v194, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    v200 = v198[2];
    v199 = v198[3];
    if (v200 >= v199 >> 1)
    {
      v198 = sub_1A49922A0(v199 > 1, v200 + 1, 1, v198, &qword_1EB1202D8, sub_1A4996354, sub_1A4996354);
    }

    (*(v64 + 8))(v192, v85);
    v198[2] = v200 + 1;
    sub_1A4992614(v213, v198 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v200, sub_1A4996354);
    if (!v198[2])
    {
LABEL_107:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

void sub_1A4996354(uint64_t a1)
{
  if (!qword_1EB124A48)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1A5246D14();
    type metadata accessor for PXPhotosFileProviderItemType(255);
    type metadata accessor for PXPhotosFileProviderEncodingPolicy(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB124A48);
    }
  }
}

void _s12PhotosUICore0A20FileProviderRegisterC03caneC15Representations3for11contentType13configurationSbSo7PHAssetC_07UniformJ11Identifiers6UTTypeVAC13ConfigurationCtFZ_0(void *a1, uint64_t a2, void *a3)
{
  sub_1A4996354(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499436C(a1, a3);
  v10 = v9;
  v11 = 0;
  v12 = *(v9 + 16);
  while (1)
  {
    if (v12 == v11)
    {
LABEL_5:

      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    sub_1A499267C(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11++, v8, sub_1A4996354);
    v13 = sub_1A5246CF4();
    sub_1A4996FE0(v8, sub_1A4996354);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

unint64_t sub_1A499664C()
{
  result = qword_1EB146368;
  if (!qword_1EB146368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146368);
  }

  return result;
}

void sub_1A49967E8()
{
  sub_1A435B518(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A4996DA4()
{
  result = sub_1A5240E64();
  if (v1 <= 0x3F)
  {
    result = sub_1A5246D14();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A4996EFC()
{
  if (!qword_1EB120D68)
  {
    type metadata accessor for PXPhotosFileProviderEncodingPolicy(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120D68);
    }
  }
}

void sub_1A4996F68()
{
  if (!qword_1EB146380)
  {
    sub_1A3C52C70(255, &qword_1EB126610);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146380);
    }
  }
}

uint64_t sub_1A4996FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4997040()
{
  if (!qword_1EB146388)
  {
    sub_1A3C52C70(255, &qword_1EB126610);
    sub_1A3D92850();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146388);
    }
  }
}

void sub_1A49970BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4997120(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A49973F8()
{
  result = qword_1EB1463A0;
  if (!qword_1EB1463A0)
  {
    sub_1A3C69D9C(255, &qword_1EB146390, MEMORY[0x1E69E6158], off_1E7721230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1463A0);
  }

  return result;
}

void sub_1A4997474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A3C69D9C(255, &qword_1EB146390, MEMORY[0x1E69E6158], off_1E7721230);
    v7 = v6;
    v8 = sub_1A49973F8();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4997860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 96))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A49978E4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1A3C69D9C(0, &qword_1EB146390, MEMORY[0x1E69E6158], off_1E7721230);
    v4 = sub_1A524CAC4();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

unint64_t sub_1A49979AC()
{
  result = qword_1EB1463B0;
  if (!qword_1EB1463B0)
  {
    sub_1A4997474(255, &qword_1EB1463A8, off_1E7721068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1463B0);
  }

  return result;
}

void sub_1A4997A44(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_1A44FE8B8();
}

uint64_t sub_1A4997B4C()
{
  result = sub_1A524C634();
  qword_1EB1EB6F0 = result;
  return result;
}

uint64_t *sub_1A4997B84()
{
  if (qword_1EB192810 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB6F0;
}

void sub_1A4997F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A41B7CE0();
    v7 = a3(a1, &type metadata for LemonadePhotosChallengeItem, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_1A49983A8(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if ((sub_1A3C611C0() & 1) == 0)
  {
    return 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38LemonadePhotosChallengeItemListManager_gadgetProvider);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38LemonadePhotosChallengeItemListManager_horizontalGadgetProvider);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v4 gadgets];
  sub_1A41B7928();
  v7 = sub_1A524CA34();

  if (v7 >> 62)
  {
    v8 = sub_1A524E2B4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    [v4 generateGadgets];
  }

  v9 = v5;
  v10 = [v9 gadgets];
  v11 = sub_1A524CA34();

  if (v11 >> 62)
  {
    v12 = sub_1A524E2B4();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    [v9 generateGadgets];
  }

  v13 = [v9 gadgets];

  v14 = sub_1A524CA34();
  if (v14 >> 62)
  {
    v15 = sub_1A524E2B4();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v15 > 0;
}

void sub_1A49986AC(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore38LemonadePhotosChallengeItemListManager_horizontalGadgetProvider);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = [v3 gadgets];
  sub_1A41B7928();
  v5 = sub_1A524CA34();
  v6 = v5;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_9;
  }

LABEL_4:

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_10:
    MEMORY[0x1A59097F0](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_7:

    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() *a1];
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1A4998964(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4997F8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4998A8C()
{
  sub_1A4997F8C(0, &qword_1EB128D40, off_1E7721068);
  sub_1A4998964(&unk_1EB128D58, &qword_1EB128D40, off_1E7721068);

  sub_1A5245C54();
}

char *sub_1A4998B70(char *a1, int64_t a2, char a3)
{
  result = sub_1A4998B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4998B90(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A4998C90();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A4998C90()
{
  if (!qword_1EB1262B0)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1262B0);
    }
  }
}

uint64_t sub_1A4998D68(void *a1)
{
  v1 = a1;
  v2 = sub_1A4998D9C();

  return v2 & 1;
}

id sub_1A4998D9C()
{
  result = *(v0 + qword_1EB12AB78);
  if (result)
  {
    return [result canBecomeFirstResponder];
  }

  __break(1u);
  return result;
}

void sub_1A4998DD0()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for PhotosPagingViewController();
  objc_msgSendSuper2(&v24, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor_];

  if (!*&v0[qword_1EB12AB78])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v0 addChildViewController_];
  v4 = *&v0[qword_1EB12AB78];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = [v4 view];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  [v5 setPreservesSuperviewLayoutMargins_];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame_];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  [v17 addSubview_];

  v19 = *&v0[qword_1EB12AB78];
  if (!v19)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if ((MEMORY[0x1A590D320]([v19 didMoveToParentViewController_]) & 1) == 0)
  {
    v20 = *MEMORY[0x1E69DDF10];
    v21 = objc_opt_self();
    v22 = [v21 keyCommandWithInput:v20 modifierFlags:0x100000 action:sel_goToPreviousPage_];
    [v0 addKeyCommand_];

    v23 = [v21 keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0x100000 action:sel_goToNextPage_];
    [v0 addKeyCommand_];
  }

  sub_1A499A5D8();
}

void sub_1A4999094(void *a1)
{
  v1 = a1;
  sub_1A4998DD0();
}

void sub_1A49990DC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A4999154(a3, &selRef_viewWillAppear_);
}

id sub_1A4999154(char a1, SEL *a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v11.receiver = v2;
  v11.super_class = type metadata accessor for PhotosPagingViewController();
  result = objc_msgSendSuper2(&v11, *a2, a1 & 1);
  v8 = *(v2 + qword_1EB12AB70);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v6;
    type metadata accessor for PhotosPagingViewModel();
    v10 = v8;
    swift_getWitnessTable();
    sub_1A5245F44();
  }

  __break(1u);
  return result;
}

void sub_1A4999288(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A4999154(a3, &selRef_viewDidAppear_);
}

id sub_1A4999300(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PhotosPagingViewController();
  return objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
}

void sub_1A4999380(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A4999300(a3);
}

id sub_1A49993D4(void *a1)
{
  v1 = a1;
  v2 = sub_1A4999418();

  return v2;
}

id sub_1A4999418()
{
  if (MEMORY[0x1A590D320]())
  {
    v3.receiver = v0;
    v3.super_class = type metadata accessor for PhotosPagingViewController();
    v1 = objc_msgSendSuper2(&v3, sel_navigationItem);
  }

  else
  {
    result = *&v0[qword_1EB12AB78];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v1 = [result navigationItem];
  }

  return v1;
}

void sub_1A49994D8()
{
  v1 = MEMORY[0x1E69E7D40];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PhotosPagingViewController();
  objc_msgSendSuper2(&v4, sel_viewWillLayoutSubviews);
  v2 = sub_1A499A498();
  if (v2)
  {
    v3 = v2;
    (*((*v1 & *v2) + 0x100))();
  }
}

void sub_1A4999594(void *a1)
{
  v1 = a1;
  sub_1A49994D8();
}

void sub_1A49995DC()
{
  v1 = MEMORY[0x1E69E7D40];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PhotosPagingViewController();
  objc_msgSendSuper2(&v4, sel_px_containedViewControllerModalStateChanged);
  v2 = sub_1A499A498();
  if (v2)
  {
    v3 = v2;
    (*((*v1 & *v2) + 0x108))();
  }
}

void sub_1A4999698(void *a1)
{
  v1 = a1;
  sub_1A49995DC();
}

id sub_1A49996E0()
{
  v0 = sub_1A3D2E23C();

  return v0;
}

void sub_1A499975C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1A499B3DC(a4);
  swift_unknownObjectRelease();
}

uint64_t sub_1A49997CC(uint64_t result)
{
  v2 = *(v1 + qword_1EB12AB78);
  if (v2)
  {
    v3 = result;
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x480);
    v5 = v2;
    v6 = v4(v3);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A499985C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v3 = sub_1A49997CC(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}

void sub_1A49998D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_1EB12AB78);
  if (v4)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x488);
    v9 = v4;
    v8(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4999998(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v8 = a3;
    swift_unknownObjectRetain();
    v9 = a1;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v10 = a3;
    swift_unknownObjectRetain();
    v11 = a1;
  }

  sub_1A49998D8(a3, a4, v13);

  swift_unknownObjectRelease();
  return sub_1A3C2CD6C(v13, sub_1A3C35B84);
}

void sub_1A4999A58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + qword_1EB12AB78);
  if (v4)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x490);
    v9 = v4;
    v8(a1, a2, a3 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4999B18(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1A4999A58(v8, a4, a5);

  swift_unknownObjectRelease();
}

void sub_1A4999BBC(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1A524DF24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v9 = *(v1 + qword_1EB12AB70);
  if (v9)
  {
    v10 = *((*v9 & v3) + 0xF0);
    v11 = v9;
    v10();

    v12 = *(AssociatedTypeWitness - 8);
    if ((*(v12 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v6 + 8))(v8, v5);
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    else
    {
      *(a1 + 24) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(v12 + 32))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1A4999E0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4(v15);
  swift_unknownObjectRelease();

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1A524EA94();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id sub_1A4999F68()
{
  sub_1A499B4A0();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_1A4999FA0()
{
  sub_1A499B4A0();

  return swift_unknownObjectRetain();
}

void sub_1A4999FC8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1A499A028(a3);
}

uint64_t sub_1A499A028(uint64_t a1)
{
  v3 = qword_1EB125F40;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A499A080@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A499A0DC(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t sub_1A499A1A0(void *a1)
{
  v1 = a1;
  sub_1A499A1D4();
  v3 = v2;

  return v3;
}

void sub_1A499A1D4()
{
  v1 = *MEMORY[0x1E69E7D40];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = *(v0 + qword_1EB12AB70);
  if (v3)
  {
    v4 = *((*v3 & v1) + 0xD8);
    v5 = v3;
    v4();

    swift_getAssociatedConformanceWitness();
    sub_1A5246344();
  }

  __break(1u);
}

id sub_1A499A36C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A499B4E4();
  v7 = v6;
  swift_unknownObjectRetain();

  return v7;
}

id sub_1A499A3CC(void *a1)
{
  v1 = a1;
  sub_1A499A410();
  v3 = v2;

  return v3;
}

void sub_1A499A410()
{
  v1 = *(v0 + qword_1EB12AB78);
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1E8);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

void *sub_1A499A498()
{
  v1 = qword_1EB12AB80;
  v2 = *&v0[qword_1EB12AB80];
  v3 = v2;
  if (v2 == 1)
  {
    if ([v0 shouldUseSystemSwipeToDismiss])
    {
      v3 = 0;
    }

    else
    {
      type metadata accessor for ViewControllerDismissalInteractionController();
      v4 = v0;
      v3 = sub_1A482ACE4(v0);
      sub_1A3C52C70(0, &qword_1EB126740);
      v5 = [swift_getObjCClassFromMetadata() sharedInstance];
      v6 = [v5 allowScreenEdgeSwipeToDismiss];

      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x148))(v6);
      v0 = v4;
    }

    v7 = *&v0[v1];
    *&v0[v1] = v3;
    v8 = v3;
    sub_1A3C327F4(v7);
  }

  sub_1A3C327E4(v2);
  return v3;
}

void sub_1A499A5D8()
{
  v1 = sub_1A499A498();
  if (v1)
  {
    v2 = MEMORY[0x1E69E7D40];
    v8 = v1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(0);
    v3 = *(v0 + qword_1EB12AB78);
    if (v3)
    {
      v4 = *((*v2 & *v3) + 0x1E8);
      v5 = v3;
      v6 = v4();

      if (v6)
      {
        v7 = &off_1F1728F50;
      }

      else
      {
        v7 = 0;
      }

      (*((*v2 & *v8) + 0x178))(v6, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A499A73C(void *a1, char a2)
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v5 = [a1 toolbarItems];
    [v2 setToolbarItems:v5 animated:a2 & 1];
  }
}

void *sub_1A499A7D4()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  if (result)
  {
    [result pagingViewControllerDidUpdateItemList_];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A499A85C()
{
  v1 = v0;
  v2 = [v0 splitViewController];
  if (!v2)
  {
    return v1;
  }

  v3 = [v0 parentViewController];
  v4 = [v0 navigationController];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_1A3C52C70(0, &qword_1EB126B10);
      v6 = sub_1A524DBF4();

      if ((v6 & 1) == 0)
      {
        return [v1 parentViewController];
      }

      return v1;
    }

    v5 = v3;
  }

  else if (!v4)
  {
    return v1;
  }

  return [v1 parentViewController];
}

uint64_t sub_1A499A950@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x158))();
  *a2 = result;
  return result;
}

uint64_t sub_1A499A9B4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x160);
  v4 = *a1;
  return v3(v2);
}

void sub_1A499AA24()
{
  v1 = *(v0 + qword_1EB12AB78);
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x528);
    v3 = v1;
    v2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A499AAAC(uint64_t a1)
{
  v2 = *(v1 + qword_1EB12AB78);
  if (v2)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x530);
    v5 = v2;
    v4(a1);
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1A499AB54(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_1A499AA24();
  *a1 = v3;
  return sub_1A499AB9C;
}

void sub_1A499AB9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A499AAAC(v2);
  }

  else
  {
    sub_1A499AAAC(*a1);
  }
}

id PhotosPagingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1A499ACB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1A499B5B8();
}

id PhotosPagingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPagingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A499AD98(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1EB12AB80);

  sub_1A3C327F4(v2);
}

void (*sub_1A499AF6C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x168))();
  return sub_1A3D3D728;
}

void sub_1A499B014(uint64_t a1)
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *&v1[qword_1EB125F40] = 0;
  *&v1[qword_1EB12AB70] = 0;
  *&v1[qword_1EB12AB78] = 0;
  *&v1[qword_1EB12AB80] = 1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PhotosPagingViewController();
  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  [v4 px_enableExtendedTraitCollection];
  type metadata accessor for PhotosPagingLayoutSpecManager();
  v5 = [v4 px_extendedTraitCollection];
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithExtendedTraitCollection_];

  type metadata accessor for PhotosPagingViewModel();

  sub_1A48C1164(a1, v6);
}

void sub_1A499B2D0()
{
  *(v0 + qword_1EB125F40) = 0;
  *(v0 + qword_1EB12AB70) = 0;
  *(v0 + qword_1EB12AB78) = 0;
  *(v0 + qword_1EB12AB80) = 1;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A499B388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 56))(a2, ObjectType, v3);
}

void sub_1A499B3DC(uint64_t a1)
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v3 = *(v1 + qword_1EB12AB70);
    if (v3)
    {
      v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x180);
      v5 = v3;
      v4(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A499B4A0()
{
  v1 = qword_1EB125F40;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A499B4E4()
{
  if (*(v0 + qword_1EB12AB70))
  {
    swift_unknownObjectRetain();
    sub_1A5245914();
  }

  __break(1u);
}

uint64_t type metadata accessor for PhotosDetailsFilenameWidgetView()
{
  result = qword_1EB1E3880;
  if (!qword_1EB1E3880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A499BA20(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x403C000000000000;
  v4 = type metadata accessor for PhotosDetailsFilenameWidgetView();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1A499C5F8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + *(v4 + 24));
  type metadata accessor for PhotosDetailsFilenameWidgetViewModel();
  sub_1A499EFB8(&qword_1EB146568, type metadata accessor for PhotosDetailsFilenameWidgetViewModel);
  v9 = a1;
  v7 = sub_1A5248494();
  *v6 = v7;
  v6[1] = v8;
  PXDisplayCollectionDetailedCountsMake(v7);
}

void sub_1A499BB40(uint64_t a1@<X8>)
{
  v3 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v3);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A499EE04(0, &qword_1EB146570, sub_1A499C5C4);
  sub_1A499BEA4(v1, a1 + *(v4 + 44));
}

void sub_1A499BEA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[6] = a2;
  sub_1A3EE1D04();
  v23[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23[12] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB1286B0);
  v23[9] = v5;
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v23[11] = v23 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v23[10] = v23 - v9;
  sub_1A4647D18();
  v23[1] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v23[5] = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v23[4] = v23 - v13;
  sub_1A499C6D4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v23[3] = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  *v18 = sub_1A52492F4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_1A499EE04(0, &qword_1EB146648, sub_1A499C738);
  v20 = *(v19 + 44);
  v23[2] = v18;
  sub_1A499CE5C(a1, &v18[v20]);
  v21 = (*(a1 + *(type metadata accessor for PhotosDetailsFilenameWidgetView() + 24) + 8) + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_fileName);
  v22 = v21[1];
  v23[17] = *v21;
  v23[18] = v22;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A499C5F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A499C65C()
{
  if (!qword_1EB146580)
  {
    sub_1A499C6D4();
    sub_1A4647D18();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB146580);
    }
  }
}

void sub_1A499C6D4()
{
  if (!qword_1EB146588)
  {
    sub_1A499C738();
    sub_1A499C920();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146588);
    }
  }
}

void sub_1A499C738()
{
  if (!qword_1EB146590)
  {
    sub_1A499EECC(255, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146590);
    }
  }
}

void sub_1A499C878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A499C920()
{
  result = qword_1EB1465C0;
  if (!qword_1EB1465C0)
  {
    sub_1A499C738();
    sub_1A499C998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465C0);
  }

  return result;
}

unint64_t sub_1A499C998()
{
  result = qword_1EB1465C8;
  if (!qword_1EB1465C8)
  {
    sub_1A499EECC(255, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
    sub_1A499CBB4(&qword_1EB1465D0, sub_1A44E10A0, sub_1A4650ED0);
    sub_1A499CA8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465C8);
  }

  return result;
}

unint64_t sub_1A499CA8C()
{
  result = qword_1EB1465D8;
  if (!qword_1EB1465D8)
  {
    sub_1A499C7D4(255);
    sub_1A499CB0C();
    sub_1A499CCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465D8);
  }

  return result;
}

unint64_t sub_1A499CB0C()
{
  result = qword_1EB1465E0;
  if (!qword_1EB1465E0)
  {
    sub_1A499C81C(255);
    sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465E0);
  }

  return result;
}

uint64_t sub_1A499CBB4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A499CC38(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A4647C7C(255, a2);
    sub_1A499EFB8(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A499CCDC()
{
  result = qword_1EB1465F0;
  if (!qword_1EB1465F0)
  {
    sub_1A499C8E4(255);
    sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1465F0);
  }

  return result;
}

void sub_1A499CDC8()
{
  if (!qword_1EB146600)
  {
    sub_1A499C5C4(255);
    sub_1A499EFB8(&qword_1EB146608, sub_1A499C5C4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146600);
    }
  }
}

uint64_t sub_1A499CE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  sub_1A499C878(0, &qword_1EB146650, sub_1A499C83C, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v173 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v174 = v170 - v4;
  sub_1A499C8E4(0);
  v191 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v175 = v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697F948];
  sub_1A499EECC(0, &qword_1EB146658, sub_1A499C81C, sub_1A499C8E4, MEMORY[0x1E697F948]);
  v187 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = v170 - v9;
  sub_1A499EE68(0, &qword_1EB146660, MEMORY[0x1E697F948]);
  v176 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v177 = v170 - v11;
  sub_1A499C81C(0);
  v188 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v178 = v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_1A5249524();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v15 = v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4647C7C(0, &qword_1EB128528);
  v184 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v170 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v181 = v170 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v182 = v170 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v183 = v170 - v27;
  sub_1A499C83C(0);
  v186 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v185 = v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499C7D4(0);
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v189 = v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A499EECC(0, &qword_1EB146668, sub_1A44E10A0, sub_1A499C7D4, v7);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v36 = v170 - v35;
  sub_1A44E10A0(0);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + *(type metadata accessor for PhotosDetailsFilenameWidgetView() + 24) + 8);
  if (*(v41 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isSyndicatedGuestAsset) == 1)
  {
    v192 = a1;
    v42 = sub_1A524B544();
    v43 = sub_1A4448728();
    KeyPath = swift_getKeyPath();
    *&v195 = v42;
    *(&v195 + 1) = KeyPath;
    *&v196 = v43;
    sub_1A429B9D8();
    sub_1A3E7440C();
    sub_1A524AAE4();

    sub_1A524BC74();
    sub_1A52481F4();
    v45 = &v40[*(v38 + 36)];
    v46 = v196;
    *v45 = v195;
    *(v45 + 1) = v46;
    *(v45 + 2) = v197;
    sub_1A499EF50(v40, v36, sub_1A44E10A0);
    swift_storeEnumTagMultiPayload();
    sub_1A499CBB4(&qword_1EB1465D0, sub_1A44E10A0, sub_1A4650ED0);
    sub_1A499CA8C();
    v47 = v193;
    sub_1A5249744();
    v48 = sub_1A44E10A0;
    v49 = v40;
LABEL_16:
    sub_1A499F000(v49, v48);
    sub_1A499EECC(0, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
    return (*(*(v169 - 8) + 56))(v47, 0, 1, v169);
  }

  v170[0] = v34;
  v170[1] = v38;
  v171 = v36;
  v172 = v31;
  if (*(v41 + OBJC_IVAR____TtC12PhotosUICore36PhotosDetailsFilenameWidgetViewModel_isiCloudEnabled) == 1)
  {
    v192 = a1;
    v50 = sub_1A4728304();
    if (v50 < 2)
    {
      *&v195 = sub_1A524B544();
      sub_1A499C5F8(0, &qword_1EB146670, MEMORY[0x1E697F5E0], MEMORY[0x1E69E6F90]);
      v101 = v179;
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1A52FC9F0;
      sub_1A52494F4();
      sub_1A52494E4();
      v194 = v102;
      sub_1A499EFB8(&qword_1EB12EC88, MEMORY[0x1E697F5E0]);
      sub_1A3F37230(0);
      sub_1A499EFB8(&qword_1EB12EC98, sub_1A3F37230);
      v103 = v180;
      sub_1A524E224();
      v104 = v181;
      sub_1A524AAA4();
      (*(v101 + 8))(v15, v103);

      v105 = sub_1A524C634();
      v106 = PXLocalizedString(v105);

      v107 = sub_1A524C674();
      v109 = v108;

      *&v195 = v107;
      *(&v195 + 1) = v109;
      sub_1A3D5F9DC();
      v110 = sub_1A524A464();
      v112 = v111;
      v114 = v113;
      v115 = v182;
      sub_1A5248764();
      sub_1A3E04DF4(v110, v112, v114 & 1);

      sub_1A465075C(v104, &qword_1EB128528);
      v116 = sub_1A524C634();
      v117 = PXLocalizedString(v116);

      v118 = sub_1A524C674();
      v120 = v119;

      *&v195 = v118;
      *(&v195 + 1) = v120;
      v121 = sub_1A524A464();
      v123 = v122;
      LOBYTE(v120) = v124;
      v125 = v183;
      sub_1A5248774();
      sub_1A3E04DF4(v121, v123, v120 & 1);

      sub_1A465075C(v115, &qword_1EB128528);
      v126 = v185;
      sub_1A5248744();
      sub_1A465075C(v125, &qword_1EB128528);
      v127 = sub_1A4448728();
      v128 = swift_getKeyPath();
      sub_1A4647BEC();
      v130 = (v126 + *(v129 + 36));
      *v130 = v128;
      v130[1] = v127;
      sub_1A524BC74();
      sub_1A52481F4();
      v131 = (v126 + *(v186 + 36));
      v132 = v196;
      *v131 = v195;
      v131[1] = v132;
      v131[2] = v197;
      sub_1A499EF50(v126, v174, sub_1A499C83C);
      swift_storeEnumTagMultiPayload();
      sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
      v133 = v175;
      sub_1A5249744();
      sub_1A499EF50(v133, v190, sub_1A499C8E4);
      swift_storeEnumTagMultiPayload();
      sub_1A499CB0C();
      sub_1A499CCDC();
      v94 = v189;
      sub_1A5249744();
      sub_1A499F000(v133, sub_1A499C8E4);
      v134 = sub_1A499C83C;
      v135 = v126;
    }

    else
    {
      if (v50 - 3 < 2)
      {
        *&v195 = sub_1A524B544();
        sub_1A499C5F8(0, &qword_1EB146670, MEMORY[0x1E697F5E0], MEMORY[0x1E69E6F90]);
        v51 = v179;
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1A52FC9F0;
        sub_1A52494F4();
        sub_1A52494E4();
        v194 = v52;
        sub_1A499EFB8(&qword_1EB12EC88, MEMORY[0x1E697F5E0]);
        sub_1A3F37230(0);
        sub_1A499EFB8(&qword_1EB12EC98, sub_1A3F37230);
        v53 = v180;
        sub_1A524E224();
        sub_1A524AAA4();
        v54 = *(v51 + 8);
        v54(v15, v53);

        sub_1A5249504();
        sub_1A5248784();
        v54(v15, v53);
        sub_1A465075C(v18, &qword_1EB128528);
        v55 = sub_1A524C634();
        v56 = PXLocalizedString(v55);

        v57 = sub_1A524C674();
        v59 = v58;

        *&v195 = v57;
        *(&v195 + 1) = v59;
        sub_1A3D5F9DC();
        v60 = sub_1A524A464();
        v62 = v61;
        v64 = v63;
        v65 = v181;
        sub_1A5248764();
        sub_1A3E04DF4(v60, v62, v64 & 1);

        sub_1A465075C(v21, &qword_1EB128528);
        v66 = sub_1A524C634();
        v67 = PXLocalizedString(v66);

        v68 = sub_1A524C674();
        v70 = v69;

        *&v195 = v68;
        *(&v195 + 1) = v70;
        v71 = sub_1A524A464();
        v73 = v72;
        LOBYTE(v54) = v74;
        v75 = v182;
        sub_1A5248754();
        sub_1A3E04DF4(v71, v73, v54 & 1);

        sub_1A465075C(v65, &qword_1EB128528);
        v76 = sub_1A524C634();
        v77 = PXLocalizedString(v76);

        v78 = sub_1A524C674();
        v80 = v79;

        *&v195 = v78;
        *(&v195 + 1) = v80;
        v81 = sub_1A524A464();
        v83 = v82;
        LOBYTE(v80) = v84;
        v85 = v183;
        sub_1A5248774();
        sub_1A3E04DF4(v81, v83, v80 & 1);

        sub_1A465075C(v75, &qword_1EB128528);
        v86 = v185;
        sub_1A5248744();
        sub_1A465075C(v85, &qword_1EB128528);
        v87 = sub_1A444872C();
        v88 = swift_getKeyPath();
        sub_1A4647BEC();
        v90 = (v86 + *(v89 + 36));
        *v90 = v88;
        v90[1] = v87;
        sub_1A524BC74();
        sub_1A52481F4();
        v91 = (v86 + *(v186 + 36));
        v92 = v196;
        *v91 = v195;
        v91[1] = v92;
        v91[2] = v197;
        sub_1A499EF50(v86, v177, sub_1A499C83C);
        swift_storeEnumTagMultiPayload();
        sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
        v93 = v178;
        sub_1A5249744();
        sub_1A499EF50(v93, v190, sub_1A499C81C);
        swift_storeEnumTagMultiPayload();
        sub_1A499CB0C();
        sub_1A499CCDC();
        v94 = v189;
        sub_1A5249744();
        sub_1A499F000(v93, sub_1A499C81C);
        v95 = sub_1A499C83C;
LABEL_14:
        v134 = v95;
        v135 = v86;
        goto LABEL_15;
      }

      if (v50 != 2)
      {
        swift_storeEnumTagMultiPayload();
        sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
        v86 = v175;
        sub_1A5249744();
        sub_1A499EF50(v86, v190, sub_1A499C8E4);
        swift_storeEnumTagMultiPayload();
        sub_1A499CB0C();
        sub_1A499CCDC();
        v94 = v189;
        sub_1A5249744();
        v95 = sub_1A499C8E4;
        goto LABEL_14;
      }

      *&v195 = sub_1A524B544();
      sub_1A499C5F8(0, &qword_1EB146670, MEMORY[0x1E697F5E0], MEMORY[0x1E69E6F90]);
      v136 = v179;
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1A52FC9F0;
      sub_1A52494F4();
      sub_1A52494E4();
      v194 = v137;
      sub_1A499EFB8(&qword_1EB12EC88, MEMORY[0x1E697F5E0]);
      sub_1A3F37230(0);
      sub_1A499EFB8(&qword_1EB12EC98, sub_1A3F37230);
      v138 = v180;
      sub_1A524E224();
      v139 = v181;
      sub_1A524AAA4();
      (*(v136 + 8))(v15, v138);

      v140 = sub_1A524C634();
      v141 = PXLocalizedString(v140);

      v142 = sub_1A524C674();
      v144 = v143;

      *&v195 = v142;
      *(&v195 + 1) = v144;
      sub_1A3D5F9DC();
      v145 = sub_1A524A464();
      v147 = v146;
      v149 = v148;
      v150 = v182;
      sub_1A5248764();
      sub_1A3E04DF4(v145, v147, v149 & 1);

      sub_1A465075C(v139, &qword_1EB128528);
      v151 = sub_1A524C634();
      v152 = PXLocalizedString(v151);

      v153 = sub_1A524C674();
      v155 = v154;

      *&v195 = v153;
      *(&v195 + 1) = v155;
      v156 = sub_1A524A464();
      v158 = v157;
      LOBYTE(v152) = v159;
      v160 = v183;
      sub_1A5248774();
      sub_1A3E04DF4(v156, v158, v152 & 1);

      sub_1A465075C(v150, &qword_1EB128528);
      v161 = v185;
      sub_1A5248744();
      sub_1A465075C(v160, &qword_1EB128528);
      v162 = sub_1A4448728();
      v163 = swift_getKeyPath();
      sub_1A4647BEC();
      v165 = (v161 + *(v164 + 36));
      *v165 = v163;
      v165[1] = v162;
      sub_1A524BC74();
      sub_1A52481F4();
      v166 = (v161 + *(v186 + 36));
      v167 = v196;
      *v166 = v195;
      v166[1] = v167;
      v166[2] = v197;
      sub_1A499EF50(v161, v177, sub_1A499C83C);
      swift_storeEnumTagMultiPayload();
      sub_1A499CBB4(&qword_1EB1465E8, sub_1A499C83C, sub_1A4650C54);
      v168 = v178;
      sub_1A5249744();
      sub_1A499EF50(v168, v190, sub_1A499C81C);
      swift_storeEnumTagMultiPayload();
      sub_1A499CB0C();
      sub_1A499CCDC();
      v94 = v189;
      sub_1A5249744();
      sub_1A499F000(v168, sub_1A499C81C);
      v134 = sub_1A499C83C;
      v135 = v161;
    }

LABEL_15:
    sub_1A499F000(v135, v134);
    v47 = v193;
    sub_1A499EF50(v94, v171, sub_1A499C7D4);
    swift_storeEnumTagMultiPayload();
    sub_1A499CBB4(&qword_1EB1465D0, sub_1A44E10A0, sub_1A4650ED0);
    sub_1A499CA8C();
    sub_1A5249744();
    v48 = sub_1A499C7D4;
    v49 = v94;
    goto LABEL_16;
  }

  sub_1A499EECC(0, &qword_1EB146598, sub_1A44E10A0, sub_1A499C7D4, MEMORY[0x1E697F960]);
  v97 = *(*(v96 - 8) + 56);
  v98 = v96;
  v99 = v193;

  return v97(v99, 1, 1, v98);
}

void sub_1A499E8CC(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  *a3 = 0x403C000000000000;
  v6 = *(a2 + 20);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A499C5F8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = (a3 + *(a2 + 24));
  type metadata accessor for PhotosDetailsFilenameWidgetViewModel();
  sub_1A499EFB8(&qword_1EB146568, type metadata accessor for PhotosDetailsFilenameWidgetViewModel);
  v10 = v5;
  v8 = sub_1A5248494();
  *v7 = v8;
  v7[1] = v9;
  PXDisplayCollectionDetailedCountsMake(v8);
}

uint64_t sub_1A499EA34(uint64_t a1)
{
  result = sub_1A499EFB8(&qword_1EB1442A8, type metadata accessor for PhotosDetailsFilenameWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A499EAD0()
{
  sub_1A499C5F8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A499EB9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A499EB9C()
{
  if (!qword_1EB146620)
  {
    type metadata accessor for PhotosDetailsFilenameWidgetViewModel();
    sub_1A499EFB8(&qword_1EB146568, type metadata accessor for PhotosDetailsFilenameWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146620);
    }
  }
}

unint64_t sub_1A499EC30()
{
  result = qword_1EB146628;
  if (!qword_1EB146628)
  {
    sub_1A499EECC(255, &qword_1EB146618, sub_1A499E9F8, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A499CBB4(&qword_1EB146630, sub_1A499E9F8, sub_1A499ED54);
    sub_1A499EFB8(&qword_1EB122308, sub_1A3EC447C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146628);
  }

  return result;
}

unint64_t sub_1A499ED54()
{
  result = qword_1EB146638;
  if (!qword_1EB146638)
  {
    sub_1A499CD8C(255);
    sub_1A499EFB8(&qword_1EB146640, sub_1A499CDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146638);
  }

  return result;
}

void sub_1A499EE04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A499EE68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A499C83C(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A499EECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A499EF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A499EFB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A499F000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static CGImageRef.forTexture(with:opaque:drawBlock:)(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A499F134;
  v11[3] = &block_descriptor_315;
  v8 = _Block_copy(v11);

  v9 = MEMORY[0x1A590CA90](a1 & 1, 0, v8, a4, a5);
  _Block_release(v8);
  return v9;
}

void sub_1A499F134(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  v11(a3, a4, a5, a6);
}

uint64_t static CGImageRef.forTexture(with:solidColor:)(void *a1, double a2, double a3)
{
  v6 = [a1 CGColor];
  Alpha = CGColorGetAlpha(v6);

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v13[4] = sub_1A499F36C;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A499F134;
  v13[3] = &block_descriptor_3_12;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = MEMORY[0x1A590CA90](Alpha >= 1.0, 0, v9, a2, a3);
  _Block_release(v9);

  return v11;
}

BOOL sub_1A499F314()
{
  v1 = [v0 CGColor];
  Alpha = CGColorGetAlpha(v1);

  return Alpha >= 1.0;
}

void sub_1A499F36C(CGContext *a1, double a2, double a3, double a4, double a5)
{
  v11 = [*(v5 + 16) CGColor];
  CGContextSetFillColorWithColor(a1, v11);

  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  CGContextFillRect(a1, *&v12);
}

uint64_t sub_1A499F404(void *a1, void *a2)
{
  if (qword_1EB1E38B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = sub_1A499F578(a1, qword_1EB1E38B8);
  if (v5)
  {
    v6 = v5;
LABEL_13:
    swift_endAccess();
    return v6;
  }

  swift_endAccess();
  v7 = *(v2 + 168);
  v8 = a1;
  v6 = v7(v8, a2);
  swift_beginAccess();
  if ((qword_1EB1E38B8 & 0xC000000000000001) == 0)
  {

    goto LABEL_12;
  }

  if (qword_1EB1E38B8 < 0)
  {
    v9 = qword_1EB1E38B8;
  }

  else
  {
    v9 = qword_1EB1E38B8 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1A524E2B4();
  if (!__OFADD__(result, 1))
  {
    qword_1EB1E38B8 = sub_1A499FC0C(v9, result + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = qword_1EB1E38B8;
    sub_1A49A0080(v6, v8, isUniquelyReferenced_nonNull_native);
    qword_1EB1E38B8 = v12;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A499F578(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1A524E6B4();

    if (v3)
    {
      type metadata accessor for LemonadePickerShelvesDataSource();
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1A3C39EA4(a1);
    if (v5)
    {
    }
  }

  return 0;
}

unint64_t sub_1A499F624()
{
  result = sub_1A49A0510(MEMORY[0x1E69E7CC0]);
  qword_1EB1E38B8 = result;
  return result;
}

uint64_t sub_1A499F64C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 40);
  return result;
}

uint64_t sub_1A499F690(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1A499F720(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 40) = 1;
  *(v4 + 48) = [objc_allocWithZone(off_1E77217D8) init];
  *(v4 + 16) = a1;
  type metadata accessor for LemonadeFeatureLibrary(0);
  v5 = a1;
  v6 = sub_1A3D8FF1C(v5, a2);

  *(v4 + 24) = v6;
  return v4;
}

uint64_t sub_1A499F7BC()
{
  if (*(v0 + 32))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 1;
}

char *sub_1A499F834(char *result)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = *result;
    v14 = *(v1 + 32);
    LOBYTE(v13) = v3;
    swift_bridgeObjectRetain_n();
    v4 = LemonadeShelfIdentifier.rawValue.getter();
    v6 = sub_1A3C62374(v4, v5, v2);

    if (v6)
    {
      LOBYTE(v13) = v3;
      v7 = LemonadeShelfIdentifier.rawValue.getter();
      sub_1A3C57714(v7, v8);

      *(v1 + 32) = v14;

      v11 = *sub_1A42F823C();
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      *(v12 + 24) = v11;

      sub_1A524D1B4();
    }

    v9 = LemonadeShelfIdentifier.rawValue.getter();
    sub_1A3C44714(&v13, v9, v10);
  }

  return result;
}

uint64_t sub_1A499F978()
{

  return swift_deallocClassInstance();
}

void (*sub_1A499FAF0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(**v1 + 160))();
  return sub_1A3D3D728;
}

void sub_1A499FB84()
{
  type metadata accessor for LemonadePickerShelvesDataSource();
  sub_1A49A04C8(&qword_1EB146680, v0, type metadata accessor for LemonadePickerShelvesDataSource);

    ;
  }
}

uint64_t sub_1A499FC0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A49A041C();
    v2 = sub_1A524E784();
    v19 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3C4B4AC();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for LemonadePickerShelvesDataSource();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A499FE1C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A524DBE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A499FE1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A49A041C();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1A524DBE4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1A49A0080(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1A3C39EA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1A499FE1C(v13, a3 & 1);
      v8 = sub_1A3C39EA4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1A3C4B4AC();
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1A49A01EC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void *sub_1A49A01EC()
{
  v1 = v0;
  sub_1A49A041C();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A49A0358(uint64_t a1, uint64_t a2)
{
  result = sub_1A49A04C8(&qword_1EB146678, a2, type metadata accessor for LemonadePickerShelvesDataSource);
  *(a1 + 8) = result;
  return result;
}

void sub_1A49A041C()
{
  if (!qword_1EB146688)
  {
    sub_1A3C4B4AC();
    type metadata accessor for LemonadePickerShelvesDataSource();
    sub_1A49A04C8(&qword_1EB126BD0, 255, sub_1A3C4B4AC);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146688);
    }
  }
}

uint64_t sub_1A49A04C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49A0510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A49A041C();
    v3 = sub_1A524E794();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A3C39EA4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A49A05FC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_1A5249574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1A49A0D60();
  sub_1A49A085C(a1, a2 + *(v4 + 44));
}

void sub_1A49A085C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[3] = a1;
  v12[5] = a2;
  sub_1A49A1424();
  MEMORY[0x1EEE9AC00](v2);
  v12[4] = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v12[2] = v12 - v5;
  sub_1A49A0E6C();
  MEMORY[0x1EEE9AC00](v6);
  v12[6] = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  *v10 = sub_1A5249314();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A49A3404();
  sub_1A49A2728(&v10[*(v11 + 44)]);
}

void sub_1A49A0D60()
{
  if (!qword_1EB146698)
  {
    sub_1A49A0FD0(255, &qword_1EB1466A0, sub_1A49A0DE4);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146698);
    }
  }
}

void sub_1A49A0DE4()
{
  if (!qword_1EB1466A8)
  {
    sub_1A49A0E6C();
    sub_1A3E435C4();
    sub_1A49A1424();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1466A8);
    }
  }
}

void sub_1A49A0E6C()
{
  if (!qword_1EB1466B0)
  {
    sub_1A49A13C0(255, &qword_1EB1466B8, sub_1A49A0F30);
    sub_1A49A1160(255, &qword_1EB127FB8, &qword_1EB128688, sub_1A49A1258, sub_1A49A12D8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1466B0);
    }
  }
}

void sub_1A49A0F30()
{
  if (!qword_1EB1466C0)
  {
    sub_1A49A0FD0(255, &qword_1EB1466C8, sub_1A49A1024);
    sub_1A49A2E38(&qword_1EB1466E0, &qword_1EB1466C8, sub_1A49A1024);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1466C0);
    }
  }
}

void sub_1A49A0FD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524BE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49A1024()
{
  if (!qword_1EB1466D0)
  {
    sub_1A3DF14C0();
    sub_1A49A109C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1466D0);
    }
  }
}

void sub_1A49A109C()
{
  if (!qword_1EB1466D8)
  {
    sub_1A4108874(255, &qword_1EB128720, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A49A1160(255, &qword_1EB127FC0, &qword_1EB128738, MEMORY[0x1E697EAF0], sub_1A3E33BE8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1466D8);
    }
  }
}

void sub_1A49A1160(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1A49A11D4(255, a3, a4);
    a5();
    v7 = sub_1A5249724();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49A11D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A405D430(255, &qword_1EB1277F0, &qword_1EB127560);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49A1258()
{
  if (!qword_1EB127658)
  {
    sub_1A3E43880();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127658);
    }
  }
}

unint64_t sub_1A49A12D8()
{
  result = qword_1EB128690;
  if (!qword_1EB128690)
  {
    sub_1A49A11D4(255, &qword_1EB128688, sub_1A49A1258);
    sub_1A3E43880();
    swift_getOpaqueTypeConformance2();
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128690);
  }

  return result;
}

void sub_1A49A13C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49A1424()
{
  if (!qword_1EB1466E8)
  {
    sub_1A49A3550(255, &qword_1EB1466F0, MEMORY[0x1E697F960]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1466E8);
    }
  }
}

void sub_1A49A14A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E697F960];
    sub_1A49A35DC(255, &qword_1EB146700, sub_1A419A5C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v8 = v7;
    sub_1A49A35DC(255, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A49A157C()
{
  if (!qword_1EB146710)
  {
    sub_1A5249C04();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146710);
    }
  }
}

uint64_t sub_1A49A1614@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v107 = sub_1A5249C04();
  v89 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v88 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A157C();
  v108 = v4;
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411848C();
  v100 = v6;
  v91 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6981148];
  v9 = MEMORY[0x1E697F948];
  sub_1A49A35DC(0, &qword_1EB146788, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F948]);
  v97 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  v13 = MEMORY[0x1E697F960];
  sub_1A49A35DC(0, &qword_1EB146708, sub_1A411848C, v8, MEMORY[0x1E697F960]);
  v104 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v84 - v15;
  v95 = sub_1A5249544();
  v86 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4108874(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v94 = v18;
  v85 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  sub_1A419A5C4();
  v98 = v21;
  v87 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49A3550(0, &qword_1EB146790, MEMORY[0x1E697F948]);
  v105 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v84 - v24;
  sub_1A49A14A0(0, &qword_1EB146798, MEMORY[0x1E697F948]);
  v101 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v84 - v26;
  v27 = MEMORY[0x1E6981E70];
  sub_1A49A35DC(0, &qword_1EB1467A0, sub_1A419A5C4, MEMORY[0x1E6981E70], v9);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  sub_1A49A35DC(0, &qword_1EB146700, sub_1A419A5C4, v27, v13);
  v102 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v84 - v32;
  sub_1A49A14A0(0, &qword_1EB1466F8, MEMORY[0x1E697F960]);
  v35 = v34;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v84 - v37);
  v39 = (*(**&a1[OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAssetDescriptionWidgetViewModel_content] + 120))(v36);
  if (v40 > 1)
  {
    if (v40 != 2)
    {
      if (v40 == 3)
      {
        sub_1A5249434();
        v48 = sub_1A524A444();
        v91 = v35;
        v49 = v48;
        v51 = v50;
        v93 = v38;
        v53 = v52;
        sub_1A524B3B4();
        v54 = sub_1A524A364();
        v56 = v55;
        v58 = v57;
        v60 = v59;

        sub_1A3E04DF4(v49, v51, v53 & 1);

        *v12 = v54;
        *(v12 + 1) = v56;
        v12[16] = v58 & 1;
        *(v12 + 3) = v60;
        swift_storeEnumTagMultiPayload();
        sub_1A3E75E68(v54, v56, v58 & 1);
        sub_1A49A3928(&qword_1EB1289A0, sub_1A411848C);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

LABEL_8:
      v110 = v39;
      v111 = v40;
      sub_1A3D5F9DC();
      v61 = sub_1A524A464();
      v63 = v62;
      v110 = v61;
      v111 = v62;
      v91 = v35;
      v65 = v64 & 1;
      LOBYTE(v112) = v64 & 1;
      v113 = v66;
      v67 = v88;
      sub_1A5249BF4();
      v68 = v92;
      v69 = MEMORY[0x1E6981148];
      v70 = v107;
      v71 = MEMORY[0x1E6981138];
      sub_1A524AB14();
      (*(v89 + 8))(v67, v70);
      sub_1A3E04DF4(v61, v63, v65);

      v72 = v93;
      v73 = v108;
      (v93[2])(v106, v68, v108);
      swift_storeEnumTagMultiPayload();
      sub_1A49A3648();
      v110 = v69;
      v111 = v70;
      v112 = v71;
      v113 = MEMORY[0x1E69803B8];
      swift_getOpaqueTypeConformance2();
      sub_1A5249744();
      return v72[1](v68, v73);
    }

    v100 = sub_1A5249434();
    v91 = v35;
    v93 = v38;
    *(swift_allocObject() + 16) = a1;
    v76 = a1;
    sub_1A524B744();
    sub_1A5249534();
    v100 = sub_1A3D6E520();
    v77 = sub_1A49A3928(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    v79 = v95;
    v78 = v96;
    v80 = v94;
    sub_1A524A934();
    (*(v86 + 8))(v17, v79);
    (*(v85 + 8))(v20, v80);
    v81 = v87;
    v82 = v98;
    (*(v87 + 16))(v30, v78, v98);
    swift_storeEnumTagMultiPayload();
    v110 = v80;
    v111 = v79;
    v112 = v100;
    v113 = v77;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A3D2E6FC(v33, v103);
    swift_storeEnumTagMultiPayload();
    sub_1A49A36E4();
    sub_1A49A3840();
    v83 = v93;
    sub_1A5249744();
    sub_1A3D2E798(v33);
    sub_1A3D2E5CC(v83, v106);
    swift_storeEnumTagMultiPayload();
    sub_1A49A3648();
    v110 = MEMORY[0x1E6981148];
    v111 = v107;
    v112 = MEMORY[0x1E6981138];
    v113 = MEMORY[0x1E69803B8];
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A3D2E64C(v83);
    return (*(v81 + 8))(v96, v82);
  }

  else
  {
    if (v40)
    {
      if (v40 == 1)
      {
        v41 = v90;
        sub_1A5248074();
        v42 = v91;
        v43 = v100;
        (*(v91 + 16))(v12, v41, v100);
        swift_storeEnumTagMultiPayload();
        sub_1A49A3928(&qword_1EB1289A0, sub_1A411848C);
        v44 = v99;
        v45 = MEMORY[0x1E6981148];
        v46 = MEMORY[0x1E6981138];
        sub_1A5249744();
        sub_1A49A3970(v44, v103);
        swift_storeEnumTagMultiPayload();
        sub_1A49A36E4();
        sub_1A49A3840();
        sub_1A5249744();
        sub_1A49A3A0C(v44);
        sub_1A3D2E5CC(v38, v106);
        swift_storeEnumTagMultiPayload();
        sub_1A49A3648();
        v110 = v45;
        v111 = v107;
        v112 = v46;
        v113 = MEMORY[0x1E69803B8];
        swift_getOpaqueTypeConformance2();
        sub_1A5249744();
        sub_1A3D2E64C(v38);
        return (*(v42 + 8))(v41, v43);
      }

      goto LABEL_8;
    }

    swift_storeEnumTagMultiPayload();
    v74 = sub_1A3D6E520();
    v75 = sub_1A49A3928(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    v110 = v94;
    v111 = v95;
    v112 = v74;
    v113 = v75;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A3D2E6FC(v33, v103);
    swift_storeEnumTagMultiPayload();
    sub_1A49A36E4();
    sub_1A49A3840();
    sub_1A5249744();
    sub_1A3D2E798(v33);
    sub_1A3D2E5CC(v38, v106);
    swift_storeEnumTagMultiPayload();
    sub_1A49A3648();
    v110 = MEMORY[0x1E6981148];
    v111 = v107;
    v112 = MEMORY[0x1E6981138];
    v113 = MEMORY[0x1E69803B8];
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return sub_1A3D2E64C(v38);
  }
}

uint64_t sub_1A49A2678()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A3E5387C;

  return sub_1A45E153C();
}

void sub_1A49A2728(uint64_t *a1@<X8>)
{
  v70 = a1;
  sub_1A49A109C();
  v63 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v69 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v61 - v4;
  sub_1A5249434();
  v6 = sub_1A524A444();
  v8 = v7;
  v10 = v9;
  v62 = objc_opt_self();
  v11 = [v62 labelColor];
  sub_1A524B284();
  v12 = sub_1A524A364();
  v65 = v13;
  v66 = v12;
  v67 = v14;
  v68 = v15;

  sub_1A3E04DF4(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  sub_1A5249434();
  v16 = sub_1A524A444();
  v18 = v17;
  v20 = v19;
  sub_1A524A184();
  v21 = sub_1A3FE1A88();
  sub_1A3FE1A98(v21);

  v22 = sub_1A524A3C4();
  v24 = v23;
  v26 = v25;

  sub_1A3E04DF4(v16, v18, v20 & 1);

  sub_1A524B434();
  v27 = sub_1A524A364();
  v29 = v28;
  v31 = v30;
  v61 = v32;

  sub_1A3E04DF4(v22, v24, v26 & 1);

  v33 = sub_1A524A064();
  v72 = v31 & 1;
  v71 = 0;
  v34 = &v5[*(v63 + 44)];
  v35 = *(sub_1A5248A14() + 20);
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_1A52494A4();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #3.0 }

  *v34 = _Q0;
  v43 = [v62 separatorColor];
  v44 = sub_1A524B284();
  v45 = swift_getKeyPath();
  v46 = MEMORY[0x1E697EAF0];
  sub_1A49A11D4(0, &qword_1EB128738, MEMORY[0x1E697EAF0]);
  v48 = &v34[*(v47 + 36)];
  *v48 = v45;
  v48[1] = v44;
  v49 = sub_1A524BC74();
  v51 = v50;
  sub_1A49A1160(0, &qword_1EB127FC0, &qword_1EB128738, v46, sub_1A3E33BE8);
  v53 = &v34[*(v52 + 36)];
  *v53 = v49;
  v53[1] = v51;
  *v5 = v27;
  *(v5 + 1) = v29;
  v5[16] = v31 & 1;
  *(v5 + 5) = *&v74[3];
  *(v5 + 17) = *v74;
  *(v5 + 3) = v61;
  v5[32] = v33;
  *(v5 + 9) = *&v73[3];
  *(v5 + 33) = *v73;
  *(v5 + 40) = xmmword_1A53522F0;
  *(v5 + 56) = xmmword_1A53522F0;
  v5[72] = 0;
  v54 = v69;
  sub_1A49A3AC4(v5, v69, sub_1A49A109C);
  v55 = v70;
  v57 = v65;
  v56 = v66;
  *v70 = v66;
  v55[1] = v57;
  LOBYTE(v51) = v67 & 1;
  *(v55 + 16) = v67 & 1;
  v58 = KeyPath;
  v55[3] = v68;
  v55[4] = v58;
  v55[5] = 1;
  *(v55 + 48) = 0;
  v55[7] = 0;
  *(v55 + 64) = 1;
  v59 = v55;
  sub_1A49A1024();
  sub_1A49A3AC4(v54, v59 + *(v60 + 64), sub_1A49A109C);
  sub_1A3E75E68(v56, v57, v51);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49A2C14()
{
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
  sub_1A49A3928(&qword_1EB146690, type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel);

  return sub_1A5248494();
}

uint64_t sub_1A49A2C90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel(0);
  sub_1A49A3928(&qword_1EB146690, type metadata accessor for PhotosDetailsAssetDescriptionWidgetViewModel);
  result = sub_1A5248494();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1A49A2D18()
{
  if (!qword_1EB146718)
  {
    sub_1A49A2D98();
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146718);
    }
  }
}

void sub_1A49A2D98()
{
  if (!qword_1EB146720)
  {
    sub_1A49A0FD0(255, &qword_1EB1466A0, sub_1A49A0DE4);
    sub_1A49A2E38(&qword_1EB146728, &qword_1EB1466A0, sub_1A49A0DE4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146720);
    }
  }
}

uint64_t sub_1A49A2E38(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A49A0FD0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A49A2EB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49A2F24()
{
  if (!qword_1EB146740)
  {
    sub_1A49A2EB0(255, &qword_1EB146738, sub_1A49A2E88, sub_1A3FA9268);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146740);
    }
  }
}

uint64_t sub_1A49A2FB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A49A2678();
}

unint64_t sub_1A49A3048(uint64_t a1)
{
  result = sub_1A484EB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A49A309C()
{
  result = qword_1EB146750;
  if (!qword_1EB146750)
  {
    sub_1A49A2EB0(255, &qword_1EB146748, sub_1A49A2F24, MEMORY[0x1E697C028]);
    sub_1A49A32B4(&qword_1EB146758, sub_1A49A2F24, sub_1A49A31A8);
    sub_1A49A3928(&qword_1EB128940, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146750);
  }

  return result;
}

unint64_t sub_1A49A31A8()
{
  result = qword_1EB146760;
  if (!qword_1EB146760)
  {
    sub_1A49A2EB0(255, &qword_1EB146738, sub_1A49A2E88, sub_1A3FA9268);
    sub_1A49A32B4(&qword_1EB146768, sub_1A49A2E88, sub_1A49A3334);
    sub_1A49A3928(&qword_1EB12F910, sub_1A3FA9268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146760);
  }

  return result;
}

uint64_t sub_1A49A32B4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A49A3334()
{
  result = qword_1EB146770;
  if (!qword_1EB146770)
  {
    sub_1A49A2D18();
    sub_1A49A3928(&qword_1EB146778, sub_1A49A2D98);
    sub_1A405D6B4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146770);
  }

  return result;
}

void sub_1A49A3404()
{
  if (!qword_1EB146780)
  {
    sub_1A49A0FD0(255, &qword_1EB1466C8, sub_1A49A1024);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146780);
    }
  }
}

uint64_t sub_1A49A3488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49A34F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49A3550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A49A14A0(255, &qword_1EB1466F8, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A49A157C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A49A35DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A49A3648()
{
  result = qword_1EB1467A8;
  if (!qword_1EB1467A8)
  {
    sub_1A49A14A0(255, &qword_1EB1466F8, MEMORY[0x1E697F960]);
    sub_1A49A36E4();
    sub_1A49A3840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467A8);
  }

  return result;
}

unint64_t sub_1A49A36E4()
{
  result = qword_1EB1467B0;
  if (!qword_1EB1467B0)
  {
    sub_1A49A35DC(255, &qword_1EB146700, sub_1A419A5C4, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A4108874(255, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5249544();
    sub_1A3D6E520();
    sub_1A49A3928(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467B0);
  }

  return result;
}

unint64_t sub_1A49A3840()
{
  result = qword_1EB1467B8;
  if (!qword_1EB1467B8)
  {
    sub_1A49A35DC(255, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A49A3928(&qword_1EB1289A0, sub_1A411848C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1467B8);
  }

  return result;
}

uint64_t sub_1A49A3928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A49A3970(uint64_t a1, uint64_t a2)
{
  sub_1A49A35DC(0, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49A3A0C(uint64_t a1)
{
  sub_1A49A35DC(0, &qword_1EB146708, sub_1A411848C, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A49A3AC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49A3B2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void ConcatenatingAssetsDataSourceManager.init(dataSourceManagers:mode:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers) = a1;
  *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_mode) = a2;
  v3 = v2;
  v4 = type metadata accessor for ConcatenatingAssetsDataSourceManager();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49A3DE4(void *a1@<X8>, double a2@<D0>)
{
  v5 = *(v2 + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_12:
    sub_1A49A5D54();
    a1[3] = v15;
    *a1 = v7;
    return;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1A3D3E490(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v7 = v17;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = sub_1A524C634();
      v12 = [v10 pauseChangeDeliveryWithTimeout:v11 identifier:a2];

      sub_1A524E0B4();
      swift_unknownObjectRelease();
      v17 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1A3D3E490((v13 > 1), v14 + 1, 1);
        v7 = v17;
      }

      ++v8;
      *(v7 + 16) = v14 + 1;
      sub_1A3C57128(&v16, (v7 + 32 * v14 + 32));
    }

    while (v6 != v8);
    goto LABEL_12;
  }

  __break(1u);
}