uint64_t sub_26B9D96B8()
{
  v1 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  v2 = sub_26B9DFDA4();
  if ((*(*(v2 - 8) + 48))(v0 + v1, 1, v2) != 1)
  {
    sub_26B9DDEE8(v0 + v1);
  }

  v3 = *(v0 + OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_scenes);

  v4 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventSource;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F58, &qword_26B9E0A00);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F30, &qword_26B9E09F0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26B9D99B8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_26B9E0054();
    v5 = v4;
    v6 = sub_26B9E00E4();
    v8 = v7;
    v9 = MEMORY[0x26D687E40](v3, v5, v6, v7);
    sub_26B9DDFC0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_26B9DDFC0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_26B9E0034();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_26B9DDB00(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_26B9DDFC0(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_26B9D9AD4()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20]();
  v4 = &v13 - v3;
  v5 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v6 = *(v0 + OBJC_IVAR___SBDDisplayProfileManager_storage);
  v14 = v0;
  type metadata accessor for SBDDisplayProfileManager(v2);
  sub_26B9DDE94();

  sub_26B9DFED4();
  v7 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  swift_beginAccess();
  v8 = sub_26B9DFDA4();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6 + v7, 1, v8) != 1)
  {
    sub_26B9DDEE8(v6 + v7);
  }

  sub_26B9DDF50(v4, v6 + v7);
  swift_endAccess();

  v10 = *(v0 + v5);
  v11 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  swift_beginAccess();
  result = (v9)(v10 + v11, 1, v8);
  if (result == 1)
  {
    result = sub_26B9E0124();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B9D9D00(__int128 *a1, void *a2)
{
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F30, &qword_26B9E09F0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F38, &qword_26B9E09F8);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v20[-v15];
  (*(v8 + 16))(v11, *(v2 + OBJC_IVAR___SBDDisplayProfileManager_storage) + OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventContinuation, v7);
  v17 = *a1;
  v21 = a1[1];
  *&v20[8] = v17;
  v22 = v5;
  v23 = v6;
  v24 = a2;
  v18 = a2;
  sub_26B9DFF64();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

id SBDDisplayProfileManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433E40, &unk_26B9E0940);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v14 - v4;
  v6 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v7 = _s7StorageCMa();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_registration;
  v12 = sub_26B9DFDA4();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_scenes) = MEMORY[0x277D84FA0];
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  sub_26B9DFF54();
  (*(v2 + 8))(v5, v1);
  *&v0[v6] = v10;
  swift_unknownObjectWeakInit();
  v14.receiver = v0;
  v14.super_class = SBDDisplayProfileManager;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _s7StorageCMa()
{
  result = qword_280433E80;
  if (!qword_280433E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26B9DA278(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26B9DE578;
  *(v7 + 24) = v6;
  v10[4] = sub_26B9DE6CC;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26B9DE6B0;
  v10[3] = &block_descriptor_63;
  v8 = _Block_copy(v10);
  sub_26B9DFE14();

  [a1 updateSettingsWithBlock_];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id sub_26B9DA3D8(id result, uint64_t a2, uint64_t a3)
{
  v5 = 0.0;
  if (a2 != 0xD00000000000001ALL || 0x800000026B9E0F90 != a3)
  {
    v6 = result;
    if ((sub_26B9E0164() & 1) == 0)
    {
      if (a2 == 0xD000000000000024 && 0x800000026B9E1010 == a3 || (sub_26B9E0164() & 1) != 0)
      {
        v7 = MEMORY[0x277D67FA8];
      }

      else
      {
        if ((a2 != 0xD00000000000002BLL || 0x800000026B9E0FE0 != a3) && (sub_26B9E0164() & 1) == 0)
        {
          if (a2 != 0xD00000000000001ELL || 0x800000026B9E1040 != a3)
          {
            v8 = sub_26B9E0164();
            result = v6;
            if ((v8 & 1) == 0)
            {
              return result;
            }

            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v7 = MEMORY[0x277D67FB8];
      }

      v5 = *v7;
    }

LABEL_9:
    result = v6;
  }

LABEL_10:

  return [result setLevel_];
}

void sub_26B9DA554(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_26B9DA5A0(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D67CE0]) init];
  v35 = objc_opt_self();
  v5 = [v35 localIdentity];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_26B9DFE04();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000001ALL;
  *(v8 + 24) = 0x800000026B9E0F90;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26B9DE570;
  *(v9 + 24) = v8;
  v40 = sub_26B9DE6CC;
  v41 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_26B9DE6B0;
  v39 = &block_descriptor_32;
  v10 = _Block_copy(&aBlock);

  [v7 configureParameters_];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = [v2 delegate];
  if (v12)
  {
    [v12 modifyInitialSceneParametersForScene_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v13 = v7;
  v14 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v14;
  sub_26B9DCC74(v13, 0xD00000000000001ALL, 0x800000026B9E0F90, isUniquelyReferenced_nonNull_native);
  v16 = aBlock;
  v34 = v13;
  if (![objc_opt_self() isSupported])
  {
    goto LABEL_11;
  }

  v17 = [objc_allocWithZone(MEMORY[0x277D67E18]) init];
  v18 = [v35 localIdentity];
  v19 = sub_26B9DFE04();
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000024;
  *(v20 + 24) = 0x800000026B9E1010;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26B9DE6D0;
  *(v21 + 24) = v20;
  v40 = sub_26B9DE6CC;
  v41 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_26B9DE6B0;
  v39 = &block_descriptor_54;
  v22 = _Block_copy(&aBlock);

  [v19 configureParameters_];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = [v2 delegate];
  if (v23)
  {
    [v23 modifyInitialSceneParametersForScene_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v16;
  sub_26B9DCC74(v19, 0xD000000000000024, 0x800000026B9E1010, v24);
  v16 = aBlock;
  v13 = v34;
LABEL_11:
  if (![objc_opt_self() isSupported])
  {

    return v16;
  }

  v25 = [objc_allocWithZone(MEMORY[0x277D67E08]) init];
  v26 = [v35 localIdentity];
  v27 = sub_26B9DFE04();
  v28 = swift_allocObject();
  *(v28 + 16) = 0xD00000000000002BLL;
  *(v28 + 24) = 0x800000026B9E0FE0;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_26B9DE6D0;
  *(v29 + 24) = v28;
  v40 = sub_26B9DE6CC;
  v41 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_26B9DE6B0;
  v39 = &block_descriptor_43;
  v30 = _Block_copy(&aBlock);

  [v27 configureParameters_];
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if ((v30 & 1) == 0)
  {
    v31 = [v2 delegate];
    if (v31)
    {
      [v31 modifyInitialSceneParametersForScene_];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v32 = v27;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v16;
    sub_26B9DCC74(v32, 0xD00000000000002BLL, 0x800000026B9E0FE0, v33);

    return aBlock;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26B9DAC94(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D67CE8]) init];
  v5 = [objc_opt_self() localIdentity];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_26B9DFE04();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000001ELL;
  *(v8 + 24) = 0x800000026B9E1040;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26B9DE6D0;
  *(v9 + 24) = v8;
  v15[4] = sub_26B9DE6CC;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_26B9DE6B0;
  v15[3] = &block_descriptor_75;
  v10 = _Block_copy(v15);

  [v7 configureParameters_];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = [v2 delegate];
    if (v12)
    {
      [v12 modifyInitialSceneParametersForScene_];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v13 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = v13;
    sub_26B9DCC74(v7, 0xD00000000000001ELL, 0x800000026B9E1040, isUniquelyReferenced_nonNull_native);
    return v15[0];
  }

  return result;
}

uint64_t sub_26B9DAF08()
{
  v1[27] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F58, &qword_26B9E0A00);
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F68, &qword_26B9E0A38);
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = *(v6 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = sub_26B9DFF44();
  v1[35] = sub_26B9DFF34();
  v9 = sub_26B9DFF24();
  v1[36] = v9;
  v1[37] = v8;

  return MEMORY[0x2822009F8](sub_26B9DB074, v9, v8);
}

uint64_t sub_26B9DB074()
{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[28];
  v4 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v0[38] = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v6 = v0[29];
  v5 = v0[30];
  (*(v6 + 16))(v5, *(v2 + v4) + OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_eventSource, v3);
  sub_26B9DFF74();
  (*(v6 + 8))(v5, v3);
  v0[39] = 0;
  v0[40] = 0;
  v7 = v0[34];
  v8 = sub_26B9DFF34();
  v0[41] = v8;
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[42] = v10;
  *v10 = v0;
  v10[1] = sub_26B9DB1A8;
  v11 = v0[33];
  v12 = v0[31];
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v8, v13, v12);
}

uint64_t sub_26B9DB1A8()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v7 = *v0;

  v4 = *(v1 + 296);
  v5 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_26B9DB2EC, v5, v4);
}

uint64_t sub_26B9DB2EC()
{
  v53 = *(v0 + 64);
  if (!v53)
  {
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v17 = *(v0 + 280);
    v18 = *(v0 + 240);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248), *(v0 + 16));

    sub_26B9DE38C(v15);

    v19 = *(v0 + 8);

    return v19();
  }

  v50 = *(v0 + 16);
  v49 = *(v0 + 32);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(*(v0 + 216) + *(v0 + 304));
  v4 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_scenes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v3 + v4);
    }

    sub_26B9DFE14();
    sub_26B9E0064();
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    sub_26B9DDFCC();
    v7 = sub_26B9DFFA4();
    v5 = *(v0 + 120);
    v11 = *(v0 + 128);
    v12 = *(v0 + 136);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
  }

  else
  {
    v21 = -1 << *(v5 + 32);
    v11 = v5 + 56;
    v12 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v14 = v23 & *(v5 + 56);
    v7 = sub_26B9DFE14();
    v13 = 0;
  }

  v24 = (v12 + 64) >> 6;
  v51 = *(v0 + 320);
  v52 = *(v0 + 312);
  v48 = v0 + 88;
LABEL_14:
  v25 = v13;
  while (v5 < 0)
  {
    v29 = sub_26B9E00D4();
    if (!v29)
    {
      goto LABEL_30;
    }

    *(v0 + 208) = v29;
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    swift_dynamicCast();
    v28 = *(v0 + 200);
    v13 = v25;
    v54 = v14;
    if (!v28)
    {
      goto LABEL_30;
    }

LABEL_25:
    v30 = [v28 settings];
    v31 = [v30 displayConfiguration];

    if (v31)
    {
      sub_26B9DE3A4(0, &qword_280433F70, 0x277D0ACE0);
      v32 = v53;
      v33 = sub_26B9E0004();

      if (v33)
      {
        v34 = [v28 identifier];
        v35 = sub_26B9DFF04();
        v37 = v36;

        *(v0 + 184) = v35;
        *(v0 + 192) = v37;
        sub_26B9DE3EC();
        LOBYTE(v34) = sub_26B9E0024();

        if ((v34 & 1) == 0)
        {
          v38 = swift_allocObject();
          *(v38 + 16) = v28;
          *(v38 + 40) = v49;
          *(v38 + 24) = v50;
          *(v38 + 56) = v1;
          *(v38 + 64) = v2;
          v47 = v28;
          sub_26B9DE38C(v52);
          v39 = swift_allocObject();
          v52 = sub_26B9DE478;
          *(v39 + 16) = sub_26B9DE478;
          *(v39 + 24) = v38;
          *(v0 + 104) = sub_26B9DE4B4;
          *(v0 + 112) = v39;
          *(v0 + 72) = MEMORY[0x277D85DD0];
          *(v0 + 80) = 1107296256;
          *(v0 + 88) = sub_26B9DE6B0;
          *(v0 + 96) = &block_descriptor;
          v40 = _Block_copy((v0 + 72));
          v41 = *(v0 + 112);

          [v47 updateSettingsWithBlock_];

          _Block_release(v40);
          LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

          v51 = v38;
          v14 = v54;
          if ((v40 & 1) == 0)
          {
            goto LABEL_14;
          }

          __break(1u);
LABEL_30:
          sub_26B9DE39C();

          *(v0 + 312) = v52;
          *(v0 + 320) = v51;
          v42 = *(v0 + 272);
          v43 = sub_26B9DFF34();
          *(v0 + 328) = v43;
          v44 = *(MEMORY[0x277D85798] + 4);
          v45 = swift_task_alloc();
          *(v0 + 336) = v45;
          *v45 = v0;
          v45[1] = sub_26B9DB1A8;
          v46 = *(v0 + 264);
          v10 = *(v0 + 248);
          v9 = MEMORY[0x277D85700];
          v7 = v0 + 16;
          v8 = v43;

          return MEMORY[0x2822003E8](v7, v8, v9, v10);
        }
      }
    }

    v25 = v13;
    v14 = v54;
  }

  v26 = v25;
  v27 = v14;
  v13 = v25;
  if (v14)
  {
LABEL_21:
    v54 = (v27 - 1) & v27;
    v28 = *(*(v5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v28)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  while (1)
  {
    v13 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v13 >= v24)
    {
      goto LABEL_30;
    }

    v27 = *(v11 + 8 * v13);
    ++v26;
    if (v27)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return MEMORY[0x2822003E8](v7, v8, v9, v10);
}

uint64_t sub_26B9DB8B8()
{
  v1 = *(*(sub_26B9DFEC4() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v2 = sub_26B9DFDF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-1] - v8;
  v10 = sub_26B9DFE94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26B9DFEA4();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D54F90])
  {
    sub_26B9DFDC4();
    *(swift_allocObject() + 16) = v0;
    v16 = v0;
    sub_26B9DFDE4();

    v17 = *(v3 + 8);
    v17(v7, v2);
    *(swift_allocObject() + 16) = v16;
    v26 = v2;
    v27 = MEMORY[0x277D54F78];
    __swift_allocate_boxed_opaque_existential_1(v25);
    v18 = v16;
    sub_26B9DFDB4();

    v17(v9, v2);
    sub_26B9DFE34();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_26B9DFE14();

    sub_26B9DFE14();
  }

  else
  {
    if (v15 != *MEMORY[0x277D54F88])
    {
      sub_26B9DFE14();
      sub_26B9DFE14();

      sub_26B9DFE14();

      (*(v11 + 8))(v14, v10);
      goto LABEL_7;
    }

    sub_26B9DFEB4();
    sub_26B9DFDD4();
    *(swift_allocObject() + 16) = v0;
    v19 = v0;
    sub_26B9DFDE4();

    v20 = *(v3 + 8);
    v20(v7, v2);
    *(swift_allocObject() + 16) = v19;
    v26 = v2;
    v27 = MEMORY[0x277D54F78];
    __swift_allocate_boxed_opaque_existential_1(v25);
    v21 = v19;
    sub_26B9DFDB4();

    v20(v9, v2);
    sub_26B9DFE34();
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_26B9DFE14();

    sub_26B9DFE14();
  }

  sub_26B9DFE14();

LABEL_7:
  v22 = sub_26B9DFE14();

  return v22;
}

uint64_t sub_26B9DBDE8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_26B9DFF44();
  v2[7] = sub_26B9DFF34();
  v4 = sub_26B9DFF24();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_26B9DBE80, v4, v3);
}

void sub_26B9DBE80()
{
  v21 = v0;
  v18 = *(v0 + 48);
  v1 = sub_26B9DA5A0(*(v0 + 40));
  v2 = 0;
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v19 = v1;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v17 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v8 = (63 - v6) >> 6;
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_9:
      v10 = *(v0 + 48);
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v19 + 56) + ((v9 << 9) | (8 * v11)));
      v13 = *(v18 + v17);
      swift_beginAccess();
      v14 = v12;

      sub_26B9DCF58(&v20, v14);
      swift_endAccess();

      [v14 setDelegate_];
      [v14 activate_];

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_26B9DC078;
  v16 = *(v0 + 48);

  sub_26B9DAF08();
}

uint64_t sub_26B9DC078()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_26B9DE6D4, v4, v3);
}

uint64_t sub_26B9DC198(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_26B9DFF44();
  v2[7] = sub_26B9DFF34();
  v4 = sub_26B9DFF24();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x2822009F8](sub_26B9DC230, v4, v3);
}

void sub_26B9DC230()
{
  v21 = v0;
  v18 = *(v0 + 48);
  v1 = sub_26B9DAC94(*(v0 + 40));
  v2 = 0;
  v4 = v1 + 64;
  v3 = *(v1 + 64);
  v19 = v1;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v3;
  v17 = OBJC_IVAR___SBDDisplayProfileManager_storage;
  v8 = (63 - v6) >> 6;
  if ((v5 & v3) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_9:
      v10 = *(v0 + 48);
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v19 + 56) + ((v9 << 9) | (8 * v11)));
      v13 = *(v18 + v17);
      swift_beginAccess();
      v14 = v12;

      sub_26B9DCF58(&v20, v14);
      swift_endAccess();

      [v14 setDelegate_];
      [v14 activate_];

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_9;
    }
  }

  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_26B9DC428;
  v16 = *(v0 + 48);

  sub_26B9DAF08();
}

uint64_t sub_26B9DC428()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_26B9DC548, v4, v3);
}

uint64_t sub_26B9DC548()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

id sub_26B9DC5AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + OBJC_IVAR___SBDDisplayProfileManager_storage);
  swift_beginAccess();

  v7 = a1;
  sub_26B9DCF58(&v9, v7);
  swift_endAccess();

  [v7 setDelegate_];
  return [v7 activate_];
}

void sub_26B9DC69C()
{
  sub_26B9DC7F4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26B9DE618(319, &qword_280433E98, &type metadata for Event, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26B9DE618(319, &qword_280433EA0, &type metadata for Event, MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26B9DC7F4()
{
  if (!qword_280433E90)
  {
    sub_26B9DFDA4();
    v0 = sub_26B9E0014();
    if (!v1)
    {
      atomic_store(v0, &qword_280433E90);
    }
  }
}

uint64_t sub_26B9DC84C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
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

uint64_t sub_26B9DC920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26B9DC968(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_26B9DC9D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F80, &qword_26B9E0A40);
  v39 = a2;
  result = sub_26B9E0144();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];
        sub_26B9DFE14();
        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_26B9E0194();
      sub_26B9DFF14();
      result = sub_26B9E01A4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26B9DCC74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B9DF364(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26B9DC9D0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26B9DF364(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26B9E0184();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26B9DCDEC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;

  return sub_26B9DFE14();
}

id sub_26B9DCDEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F80, &qword_26B9E0A40);
  v2 = *v0;
  v3 = sub_26B9E0134();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_26B9DFE14();
        result = v20;
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

uint64_t sub_26B9DCF58(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_26B9DFE14();
    v9 = sub_26B9E00B4();

    if (v9)
    {

      sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_26B9E00A4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_26B9DD190(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_26B9DD380(v22 + 1);
    }

    v20 = v8;
    sub_26B9DD5A8(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
  v11 = *(v6 + 40);
  v12 = sub_26B9DFFF4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_26B9DD62C(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_26B9E0004();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_26B9DD190(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
    v2 = sub_26B9E0114();
    v16 = v2;
    sub_26B9E0064();
    if (sub_26B9E00D4())
    {
      sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_26B9DD380(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_26B9DFFF4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_26B9E00D4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26B9DD380(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
  result = sub_26B9E0104();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_26B9DFFF4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_26B9DD5A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26B9DFFF4();
  v5 = -1 << *(a2 + 32);
  result = sub_26B9E0044();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_26B9DD62C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26B9DD380(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26B9DD79C();
      goto LABEL_12;
    }

    sub_26B9DD8EC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_26B9DFFF4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_26B9E0004();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26B9E0174();
  __break(1u);
}

id sub_26B9DD79C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
  v2 = *v0;
  v3 = sub_26B9E00F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_26B9DD8EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F60, &qword_26B9E0A28);
  result = sub_26B9E0104();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_26B9DFFF4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_26B9DDB00(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26D687E90](a1, a2, v7);
      sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
    if (sub_26B9E0084() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_26B9E0094();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_26B9DFFF4();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_26B9E0004();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void sub_26B9DDD24(void *a1, id a2)
{
  if (a2)
  {
    if ([a2 error])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280433F20, &qword_26B9E09E8);
      sub_26B9DE3A4(0, &qword_280433F28, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v3 = [v11 domain];
        v4 = sub_26B9DFF04();
        v6 = v5;

        v7 = *MEMORY[0x277D0AA48];
        if (v4 == sub_26B9DFF04() && v6 == v8)
        {
        }

        else
        {
          v10 = sub_26B9E0164();

          if ((v10 & 1) == 0)
          {
LABEL_13:

            return;
          }
        }

        if ([v11 code] == 5)
        {
          [a1 invalidate];
        }

        goto LABEL_13;
      }
    }
  }
}

unint64_t sub_26B9DDE94()
{
  result = qword_280433F40;
  if (!qword_280433F40)
  {
    type metadata accessor for SBDDisplayProfileManager(0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280433F40);
  }

  return result;
}

uint64_t sub_26B9DDEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B9DDF50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280433EA8, &qword_26B9E09B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9DDFC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_26B9DDFCC()
{
  result = qword_280433F50;
  if (!qword_280433F50)
  {
    sub_26B9DE3A4(255, &qword_280433F48, 0x277D0AAC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280433F50);
  }

  return result;
}

uint64_t sub_26B9DE05C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26B9DE094(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9DE130;

  return sub_26B9DC198(a1, v4);
}

uint64_t sub_26B9DE130()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26B9DE2D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B9DE6B4;

  return sub_26B9DBDE8(a1, v4);
}

uint64_t sub_26B9DE38C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B9DE3A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26B9DE3EC()
{
  result = qword_280433F78;
  if (!qword_280433F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280433F78);
  }

  return result;
}

uint64_t sub_26B9DE440()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26B9DE4B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26B9DE538()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26B9DE598(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26B9DE5B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_26B9DE618(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

SBDEmbeddedDisplayProfile __swiftcall SBDEmbeddedDisplayProfile.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SBDEmbeddedDisplayProfile()
{
  result = qword_280434050;
  if (!qword_280434050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434050);
  }

  return result;
}

char *sub_26B9DEA0C()
{
  v0 = sub_26B9DFD74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v41 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v41 = &v41 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v17 setPreferredLevel_];
  [objc_allocWithZone(MEMORY[0x277D67CE0]) init];
  v18 = objc_opt_self();
  v19 = v17;
  v47 = v18;
  v48 = v19;
  v20 = [v18 localIdentity];
  sub_26B9DFD64();
  v21 = *(v1 + 16);
  v49 = v16;
  v45 = v21;
  v21(v14, v16, v0);
  v22 = sub_26B9DF6C4(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_26B9DF6C4(v23 > 1, v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = *(v1 + 32);
  v44 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v43 = *(v1 + 72);
  v46 = v25;
  v25(&v22[v44 + v43 * v24], v14, v0);
  if ([objc_opt_self() isSupported])
  {
    v26 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v26 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67E18]) &selRef_settings];
    v27 = v26;
    v28 = [v47 localIdentity];
    sub_26B9DFD64();
    v29 = v41;
    v45(v41, v11, v0);
    v31 = *(v22 + 2);
    v30 = *(v22 + 3);
    if (v31 >= v30 >> 1)
    {
      v22 = sub_26B9DF6C4(v30 > 1, v31 + 1, 1, v22);
    }

    (*(v1 + 8))(v11, v0);
    *(v22 + 2) = v31 + 1;
    v46(&v22[v44 + v31 * v43], v29, v0);
  }

  if ([objc_opt_self() isSupported])
  {
    v32 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
    [v32 setPreferredLevel_];
    [objc_allocWithZone(MEMORY[0x277D67E08]) init];
    v33 = v32;
    v34 = [v47 localIdentity];
    v35 = v50;
    sub_26B9DFD64();
    v36 = v42;
    v45(v42, v35, v0);
    v38 = *(v22 + 2);
    v37 = *(v22 + 3);
    if (v38 >= v37 >> 1)
    {
      v22 = sub_26B9DF6C4(v37 > 1, v38 + 1, 1, v22);
    }

    v39 = *(v1 + 8);
    v39(v50, v0);
    v39(v49, v0);
    *(v22 + 2) = v38 + 1;
    v46(&v22[v44 + v38 * v43], v36, v0);
  }

  else
  {
    (*(v1 + 8))(v49, v0);
  }

  return v22;
}

uint64_t sub_26B9DEFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SBDExtendedDisplayProfile __swiftcall SBDExtendedDisplayProfile.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SBDExtendedDisplayProfile()
{
  result = qword_280434068;
  if (!qword_280434068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280434068);
  }

  return result;
}

unint64_t sub_26B9DF364(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26B9E0194();
  sub_26B9DFF14();
  v6 = sub_26B9E01A4();

  return sub_26B9DF460(a1, a2, v6);
}

unint64_t sub_26B9DF3DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26B9DFD94();
  sub_26B9DFD1C(&qword_280434078);
  v5 = sub_26B9DFEE4();

  return sub_26B9DF518(a1, v5);
}

unint64_t sub_26B9DF460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26B9E0164())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26B9DF518(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26B9DFD94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26B9DFD1C(&qword_280434080);
      v16 = sub_26B9DFEF4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

size_t sub_26B9DF6C4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434088, &qword_26B9E0AC0);
  v10 = *(sub_26B9DFD74() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26B9DFD74() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_26B9DF89C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434070, &qword_26B9E0AB8);
    v8 = sub_26B9E0154();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26B9DFCAC(v10, v6);
      result = sub_26B9DF3DC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_26B9DFD94();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

void *sub_26B9DFA70()
{
  v0 = sub_26B9DFD74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D75750]) init];
  [v8 setPreferredLevel_];
  [objc_allocWithZone(MEMORY[0x277D67CE8]) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 localIdentity];
  sub_26B9DFD64();
  (*(v1 + 16))(v5, v7, v0);
  v12 = sub_26B9DF6C4(0, 1, 1, MEMORY[0x277D84F90]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_26B9DF6C4(v13 > 1, v14 + 1, 1, v12);
  }

  (*(v1 + 8))(v7, v0);
  v12[2] = v14 + 1;
  (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v5, v0);
  return v12;
}

uint64_t sub_26B9DFCAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280434060, &qword_26B9E0AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26B9DFD1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26B9DFD94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}