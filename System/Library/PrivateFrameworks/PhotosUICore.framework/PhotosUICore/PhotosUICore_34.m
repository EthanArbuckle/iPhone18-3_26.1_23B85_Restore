uint64_t static PXSharedAlbumsUtilities.localizedSharedByDescription(forSharedAlbum:)(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = a1;
    if ([ObjCClassFromMetadata sharedAlbumIsOwned_])
    {
      v13 = sub_1A524C634();
      v14 = PXLocalizedSharedAlbumsString(v13);

      v15 = sub_1A524C674();
      return v15;
    }

    v21 = [ObjCClassFromMetadata ownerForSharedAlbum_];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 displayNameWithAddressAppended_];
      v24 = sub_1A524C674();
      v26 = v25;

      v27 = sub_1A524C634();
      v28 = PXLocalizedSharedAlbumsString(v27);

      sub_1A524C674();
      sub_1A3E072BC();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1A52F8E10;
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 64) = sub_1A3D710E8();
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v30 = sub_1A524C6C4();

      return v30;
    }

    v31 = sub_1A3C56D80();
    (*(v3 + 16))(v8, v31, v2);
    v32 = v12;
    v33 = sub_1A5246F04();
    v34 = sub_1A524D244();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v10;
      *v36 = v10;
      v37 = v32;
      _os_log_impl(&dword_1A3C1C000, v33, v34, "Could not retrieve owner for shared album: %@", v35, 0xCu);
      sub_1A3CB65E4(v36);
      MEMORY[0x1A590EEC0](v36, -1, -1);
      MEMORY[0x1A590EEC0](v35, -1, -1);
    }

    else
    {
      v37 = v33;
      v33 = v32;
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v17 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v17, v2);
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "An invalid asset collection was passed in to localizedSharedByDescription(forSharedAlbum:withAddressAppended:)", v20, 2u);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_1A407738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[30] = a7;
  v8[31] = a8;
  v8[28] = a5;
  v8[29] = a6;
  v8[27] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4077454, 0, 0);
}

uint64_t sub_1A4077454()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = 0;
  v3 = [v1 photoLibrary];
  v0[34] = v3;
  if (v3)
  {
    v5 = v0[28];
    v4 = v0[29];
    v6 = v0[27];
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v2;
    v7[4] = v5;
    v7[5] = v4;
    v0[22] = sub_1A408E660;
    v0[23] = v7;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_365;
    v0[35] = _Block_copy(v0 + 18);
    v8 = v6;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return MEMORY[0x1EEE6DEC8](0);
}

uint64_t sub_1A4077674()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_1A40779FC;
  }

  else
  {
    v2 = sub_1A4077784;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4077784()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 256);
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1A524CC54();
    sub_1A3C66EE8(v5);
    v7 = sub_1A524CC44();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v5;
    v8[5] = v4;
    sub_1A3EA52F4(0, 0, v3, &unk_1A53169D0, v8);
  }

  else
  {
    sub_1A408C0E8();
    v10 = swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 1;
    swift_willThrow();
    v12 = *(v0 + 256);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);

    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_1A524CC54();
    sub_1A3C66EE8(v14);
    v16 = v10;
    v17 = sub_1A524CC44();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v14;
    v18[5] = v13;
    v18[6] = v10;
    sub_1A3EA52F4(0, 0, v12, &unk_1A53169C0, v18);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1A40779FC()
{
  v1 = v0[35];
  v2 = v0[34];
  swift_willThrow();

  _Block_release(v1);
  v3 = v0[36];
  v4 = v0[32];
  v6 = v0[30];
  v5 = v0[31];

  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1A524CC54();
  sub_1A3C66EE8(v6);
  v8 = v3;
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v6;
  v10[5] = v5;
  v10[6] = v3;
  sub_1A3EA52F4(0, 0, v4, &unk_1A53169C0, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A4077B64(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x1EEE6DEE0](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE0](v5);
  }

  sub_1A3C34400(0, &qword_1EB126160);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x1EEE6DEE8](v6, v7);
}

uint64_t sub_1A4077C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1A524CC54();
  v5[5] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408EA48, v7, v6);
}

uint64_t sub_1A4077CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408EA4C, v8, v7);
}

void static PXSharedAlbumsUtilities.acceptInvitationToSharedAlbum(_:completionHandler:)(void *a1, void (*a2)(void, id), uint64_t a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = a1;
    sub_1A524CC74();
    v16 = sub_1A524CCB4();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = a2;
    v17[6] = a3;

    sub_1A3D4D930(0, 0, v12, &unk_1A53165A8, v17);
  }

  else
  {
    v18 = sub_1A3C56D80();
    (*(v7 + 16))(v9, v18, v6);
    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "An invalid asset collection was passed in to resendInvitationToParticipant:", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v22 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    a2(0, v22);
  }
}

uint64_t sub_1A4078148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407820C, 0, 0);
}

uint64_t sub_1A407820C()
{
  v1 = [*(v0 + 144) uuid];
  if (!v1)
  {
    sub_1A524C674();
    v1 = sub_1A524C634();
  }

  *(v0 + 176) = v1;
  v2 = [*(v0 + 144) photoLibrary];
  *(v0 + 184) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 200;
    *(v0 + 24) = sub_1A40783A8;
    v5 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB131250);
    *(v0 + 136) = v6;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A3FA485C;
    *(v0 + 104) = &block_descriptor_346;
    *(v0 + 112) = v5;
    [v4 acceptShareWithUUID:v1 photoLibrary:v3 completion:v0 + 80];
    v2 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1A40783A8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1A40785E4;
  }

  else
  {
    v2 = sub_1A40784B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40784B8()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);

  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v3;
  sub_1A3D4D930(0, 0, v2, &unk_1A53169A0, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1A40785E4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  swift_willThrow();

  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_1A524CC54();

  v8 = v1;
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v6;
  v10[5] = v5;
  v10[6] = v1;
  sub_1A3D4D930(0, 0, v3, &unk_1A5316990, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A4078744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1A524CC54();
  v5[4] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40787DC, v7, v6);
}

uint64_t sub_1A40787DC()
{
  v1 = *(v0 + 16);

  v1(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4078850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1A524CC54();
  v6[5] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40788EC, v8, v7);
}

uint64_t sub_1A40788EC()
{
  v1 = v0[4];
  v2 = v0[2];

  v2(0, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4078A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4078AD4, 0, 0);
}

uint64_t sub_1A4078AD4()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1A4078BF0;
  v2 = swift_continuation_init();
  sub_1A408E3EC(0, &qword_1EB147950);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4078F5C;
  v0[13] = &block_descriptor_329;
  v0[14] = v2;
  [v1 declineWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4078BF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1A4078E24;
  }

  else
  {
    v2 = sub_1A4078D00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4078D00()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = 0;
  sub_1A3EA52F4(0, 0, v1, &unk_1A5316978, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A4078E24()
{
  v1 = v0[22];
  swift_willThrow();
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();
  sub_1A3C66EE8(v4);
  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v1;
  sub_1A3EA52F4(0, 0, v2, &unk_1A5316978, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A4078F5C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1A3C34400(0, &qword_1EB126160);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1A407900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40790A8, v8, v7);
}

uint64_t sub_1A40790A8()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(*(v0 + 40) == 0);
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4079244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4079308, 0, 0);
}

uint64_t sub_1A4079308()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1A4079424;
  v2 = swift_continuation_init();
  sub_1A408E3EC(0, &qword_1EB147950);
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4078F5C;
  v0[13] = &block_descriptor_318;
  v0[14] = v2;
  [v1 reportWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4079424()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1A4079658;
  }

  else
  {
    v2 = sub_1A4079534;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4079534()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = 0;
  sub_1A3EA52F4(0, 0, v1, &unk_1A5316958, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A4079658()
{
  v1 = v0[22];
  swift_willThrow();
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();
  sub_1A3C66EE8(v4);
  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v1;
  sub_1A3EA52F4(0, 0, v2, &unk_1A5316958, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A4079790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408EA50, v8, v7);
}

uint64_t sub_1A4079900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A5246F24();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4079A20, 0, 0);
}

uint64_t sub_1A4079A20()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 16);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_1A4079BEC;
    v5 = *(v0 + 24);

    return sub_1A407A164(v5, v2);
  }

  else
  {
    v7 = *(v0 + 72);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = sub_1A524CCB4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1A524CC54();
    sub_1A3C66EE8(v9);
    v11 = sub_1A524CC44();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v9;
    v12[5] = v8;
    sub_1A3EA52F4(0, 0, v7, &unk_1A5316920, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1A4079BEC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1A4079E34;
  }

  else
  {
    v2 = sub_1A4079D00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4079D00()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  sub_1A3EA52F4(0, 0, v1, &unk_1A5316920, v6);

  v8 = *(v0 + 8);

  return v8();
}

void sub_1A4079E34()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = sub_1A3C56D80();
  (*(v2 + 16))(v1, v4, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A407A164(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A407A184, 0, 0);
}

id sub_1A407A184()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v2 = v0[9];
    sub_1A3C52C70(0, &qword_1EB12C1B0);
    v3 = sub_1A524CA14();
    PXSharedAlbumsRecordRecentContactEventsForParticipants(v3);

    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x1E69E7CC0];
    result = [v2 photoLibrary];
    if (result)
    {
      v6 = v0[8];
      v7 = v0[9];
      v8 = swift_allocObject();
      v8[2] = v6;
      v8[3] = v7;
      v8[4] = v4;
      v0[6] = sub_1A408DE78;
      v0[7] = v8;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1A3C2E0D0;
      v0[5] = &block_descriptor_302;
      _Block_copy(v0 + 2);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    return result;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A407A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[6] = swift_task_alloc();
  v8 = sub_1A5246F24();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407A61C, 0, 0);
}

uint64_t sub_1A407A61C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_1A3C56D80();
  *(v0 + 96) = v6;
  v7 = *(v3 + 16);
  *(v0 + 104) = v7;
  *(v0 + 112) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  v8 = v5;
  v9 = v4;
  v10 = sub_1A5246F04();
  LOBYTE(v4) = sub_1A524D264();

  v11 = os_log_type_enabled(v10, v4);
  v12 = *(v0 + 88);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  if (v11)
  {
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v15;
    *v18 = v15;
    *(v17 + 12) = 2082;
    v19 = v15;
    v20 = [v16 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v21 = *(v13 + 8);
  v21(v12, v14);
  *(v0 + 120) = v21;
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {
    return sub_1A524E6E4();
  }

  v23 = v22;
  v24 = *(v0 + 24);
  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_1A407A918;
  v26 = *(v0 + 16);

  return sub_1A407AF7C(v26, v23);
}

uint64_t sub_1A407A918()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A407AC88;
  }

  else
  {
    v2 = sub_1A407AA2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407AA2C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);

  v1(v3, v2, v4);
  v6 = v5;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "Successfully resent invitation to participant (%@)", v10, 0xCu);
    sub_1A3CB65E4(v11);
    MEMORY[0x1A590EEC0](v11, -1, -1);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 32);

  v13(v14, v15);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  sub_1A524CC54();
  sub_1A3C66EE8(v18);
  v20 = sub_1A524CC44();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v18;
  v21[5] = v17;
  sub_1A3EA52F4(0, 0, v16, &unk_1A5316900, v21);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1A407AC88()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  v2(v4, v3, v5);
  v7 = v6;
  v8 = v1;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 16);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2112;
    v15 = v12;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    v14[1] = v17;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Could not resend invitation to participant: %@ in shared album: %@", v13, 0x16u);
    sub_1A3C4B840(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    MEMORY[0x1A590EEC0](v14, -1, -1);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  v18 = *(v0 + 136);
  v19 = *(v0 + 120);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);

  v19(v20, v22);
  v25 = sub_1A524CCB4();
  (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  sub_1A524CC54();
  sub_1A3C66EE8(v24);
  v26 = v18;
  v27 = sub_1A524CC44();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v24;
  v28[5] = v23;
  v28[6] = v18;
  sub_1A3EA52F4(0, 0, v21, &unk_1A53168F0, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A407AF7C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1A5246F24();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407B03C, 0, 0);
}

uint64_t sub_1A407B03C()
{
  v1 = [*(v0 + 144) shareParticipant];
  *(v0 + 184) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 152);
    sub_1A3C4EDC8(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F9790;
    *(v4 + 32) = v2;
    sub_1A3C52C70(0, &qword_1EB1209C8);
    v5 = v2;
    v6 = sub_1A524CA14();
    *(v0 + 192) = v6;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1A407B484;
    v7 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950);
    *(v0 + 136) = v8;
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1A4078F5C;
    *(v0 + 104) = &block_descriptor_279;
    *(v0 + 112) = v7;
    [v3 sendInvitationsForParticipants:v6 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v10 = *(v0 + 168);
    v9 = *(v0 + 176);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v13 = *(v0 + 144);
    v14 = sub_1A3C56D80();
    (*(v10 + 16))(v9, v14, v11);
    v15 = v13;
    v16 = v12;
    v17 = sub_1A5246F04();
    LOBYTE(v13) = sub_1A524D244();

    v18 = os_log_type_enabled(v17, v13);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v21 = *(v0 + 160);
    if (v18)
    {
      v22 = *(v0 + 144);
      v23 = *(v0 + 152);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      swift_slowAlloc();
      *v24 = 138412802;
      *(v24 + 4) = v22;
      *v25 = v22;
      *(v24 + 12) = 2082;
      v26 = v22;
      v27 = [v23 uuid];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v20 + 8))(v19, v21);
    sub_1A408D9A4();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1A407B484()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1A407B608;
  }

  else
  {
    v2 = sub_1A407B594;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407B594()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A407B608()
{
  v1 = v0[24];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A407B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1A524CC54();
  v5[5] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A407B724, v7, v6);
}

uint64_t sub_1A407B724()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(1, 0);
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A407B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A407B84C, v8, v7);
}

uint64_t sub_1A407B84C()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(0, *(v0 + 40));
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A407B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[6] = swift_task_alloc();
  v8 = sub_1A5246F24();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407BAFC, 0, 0);
}

void sub_1A407BAFC()
{
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v22 = *(v0 + 104);
    v23 = *(v0 + 56);
    v24 = *(v0 + 64);
    v25 = *(v0 + 24);
    v26 = sub_1A3C56D80();
    (*(v24 + 16))(v22, v26, v23);
    v27 = v25;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (sub_1A524E2B4() != 1 || !sub_1A524E2B4())
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1A59097F0](0, *(v0 + 16));
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(*(v0 + 16) + 32);
  }

  v3 = v2;
  v4 = *(v0 + 112);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 24);
  v8 = sub_1A3C56D80();
  v9 = *(v6 + 16);
  v9(v4, v8, v5);
  v10 = v3;
  v11 = v7;
  v12 = sub_1A5246F04();
  LOBYTE(v6) = sub_1A524D264();

  v13 = os_log_type_enabled(v12, v6);
  v14 = *(v0 + 112);
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  if (v13)
  {
    v17 = *(v0 + 24);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    swift_slowAlloc();
    *v18 = 138412546;
    *(v18 + 4) = v10;
    *v19 = v10;
    *(v18 + 12) = 2082;
    v10;
    v20 = [v17 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v21 = *(v15 + 8);
  v21(v14, v16);
  *(v0 + 152) = 1;
  *(v0 + 120) = v21;
  *(v0 + 128) = v9;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v30 = *(v0 + 24);
    v31 = swift_task_alloc();
    *(v0 + 136) = v31;
    *v31 = v0;
    v31[1] = sub_1A407C054;
    v32 = *(v0 + 16);

    sub_1A407CD80(v32, v29);
  }

  else
  {
    sub_1A524E6E4();
  }
}

uint64_t sub_1A407C054()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1A407C70C;
  }

  else
  {
    v2 = sub_1A407C168;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407C168()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 16);
  if (v1 != 1)
  {
    goto LABEL_10;
  }

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:
    v22 = *(v0 + 128);
    v23 = *(v0 + 88);
    v24 = *(v0 + 56);
    v25 = *(v0 + 24);
    v26 = sub_1A3C56D80();
    v22(v23, v26, v24);
    v27 = v25;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  v2 = *(v0 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);
  v10 = sub_1A3C56D80();
  v6(v7, v10, v8);
  v11 = v9;
  v12 = v5;
  v13 = sub_1A5246F04();
  LOBYTE(v6) = sub_1A524D264();

  v14 = os_log_type_enabled(v13, v6);
  v15 = *(v0 + 120);
  v16 = *(v0 + 96);
  v17 = *(v0 + 56);
  if (v14)
  {
    v18 = *(v0 + 24);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v12;
    *v20 = v12;
    *(v19 + 12) = 2082;
    v12;
    v21 = [v18 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v15(v16, v17);
  v29 = *(v0 + 40);
  v28 = *(v0 + 48);
  v30 = *(v0 + 32);
  v31 = sub_1A524CCB4();
  (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
  sub_1A524CC54();
  sub_1A3C66EE8(v30);
  v32 = sub_1A524CC44();
  v33 = swift_allocObject();
  v34 = MEMORY[0x1E69E85E0];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v30;
  v33[5] = v29;
  sub_1A3EA52F4(0, 0, v28, &unk_1A53168C8, v33);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1A407C70C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 16);
  if (v1 != 1)
  {
    goto LABEL_10;
  }

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:
    v20 = *(v0 + 128);
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v0 + 24);
    v24 = sub_1A3C56D80();
    v20(v21, v24, v22);
    v25 = v23;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  v2 = *(v0 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);
  v10 = *(v0 + 24);
  v11 = sub_1A3C56D80();
  v7(v8, v11, v9);
  v12 = v10;
  v13 = v5;
  v14 = v6;
  v15 = sub_1A5246F04();
  LOBYTE(v7) = sub_1A524D244();

  if (os_log_type_enabled(v15, v7))
  {
    v16 = *(v0 + 24);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    swift_slowAlloc();
    *v17 = 138412802;
    *(v17 + 4) = v13;
    *v18 = v13;
    *(v17 + 12) = 2082;
    v13;
    v19 = [v16 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 80);
  v28 = *(v0 + 56);

  v26(v27, v28);
  v29 = *(v0 + 144);
  v31 = *(v0 + 40);
  v30 = *(v0 + 48);
  v32 = *(v0 + 32);
  v33 = sub_1A524CCB4();
  (*(*(v33 - 8) + 56))(v30, 1, 1, v33);
  sub_1A524CC54();
  sub_1A3C66EE8(v32);
  v34 = v29;
  v35 = sub_1A524CC44();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v32;
  v36[5] = v31;
  v36[6] = v29;
  sub_1A3EA52F4(0, 0, v30, &unk_1A53168B8, v36);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1A407CD80(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A407CDA0, 0, 0);
}

uint64_t sub_1A407CDA0()
{
  v1 = v0[18];
  v2 = swift_allocObject();
  v0[20] = v2;
  v23 = v2;
  *(v2 + 16) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_20:
    v4 = sub_1A524E2B4();
    v5 = v0[18];
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = v1;
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v8 = v5 + 32;
  v24 = MEMORY[0x1E69E7CC0];
  v1 = &selRef_setYearsHeadersFadeoutMinimumAlpha_;
  while (v4 != v6)
  {
    if (v7)
    {
      v9 = MEMORY[0x1A59097F0](v6, v0[18]);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_19;
      }

      v9 = *(v8 + 8 * v6);
    }

    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v12 = [v9 shareParticipant];

    ++v6;
    if (v12)
    {
      MEMORY[0x1A5907D70]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v24 = v25;
      v6 = v11;
    }
  }

  v13 = [v0[19] photoLibrary];
  v0[21] = v13;
  if (v13)
  {
    v14 = v13;
    v15 = v0[19];
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v23;
    v16[4] = v24;
    v0[14] = sub_1A408D8E4;
    v0[15] = v16;
    v17 = MEMORY[0x1E69E9820];
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A3C2E0D0;
    v0[13] = &block_descriptor_259;
    v18 = _Block_copy(v0 + 10);
    v0[22] = v18;
    v19 = v15;

    v0[2] = v0;
    v0[3] = sub_1A407D0C4;
    v20 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950);
    v0[17] = v21;
    v0[10] = v17;
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_262;
    v0[14] = v20;
    [v14 performChanges:v18 completionHandler:v0 + 10];
    v13 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t sub_1A407D0C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1A407D2BC;
  }

  else
  {
    v2 = sub_1A407D1D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407D1D4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  _Block_release(v1);
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    sub_1A408D9A4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A407D2BC()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

id static PXSharedAlbumsUtilities.multipleContributorsEnabled(forSharedAlbum:)()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    return ([v0 publicPermission] == 3);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result isCloudMultipleContributorsEnabled];
  }

  return result;
}

id static PXSharedAlbumsUtilities.canSetMultipleContributorsEnabled(forSharedAlbum:)(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 sharedAlbumIsOwned_];
  if (result)
  {
    return ([v2 sharedAlbumIsAppleFamily_] ^ 1);
  }

  return result;
}

uint64_t sub_1A407D644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 312) = a5;
  *(v7 + 216) = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v7 + 240) = swift_task_alloc();
  v8 = sub_1A5246F24();
  *(v7 + 248) = v8;
  *(v7 + 256) = *(v8 - 8);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407D774, 0, 0);
}

uint64_t sub_1A407D774()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[35] = v2;
  *(v2 + 16) = 1;
  v3 = [v1 photoLibrary];
  v0[36] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 312);
    v6 = v0[27];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    *(v7 + 32) = v2;
    v0[22] = sub_1A408D3A0;
    v0[23] = v7;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_228;
    v8 = _Block_copy(v0 + 18);
    v0[37] = v8;
    v9 = v6;

    v0[2] = v0;
    v0[3] = sub_1A407D98C;
    v10 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950);
    v0[17] = v11;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_231;
    v0[14] = v10;
    [v4 performChanges:v8 completionHandler:v0 + 10];
    v3 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A407D98C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1A407E07C;
  }

  else
  {
    v2 = sub_1A407DA9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407DA9C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 216);
    v7 = sub_1A3C56D80();
    (*(v5 + 16))(v3, v7, v4);
    v8 = v6;
    v9 = sub_1A5246F04();
    LOBYTE(v6) = sub_1A524D264();

    v10 = os_log_type_enabled(v9, v6);
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    if (v10)
    {
      v14 = *(v0 + 312);
      v15 = *(v0 + 216);
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      *v16 = 67109378;
      *(v16 + 4) = v14;
      *(v16 + 8) = 2082;
      v17 = [v15 uuid];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v12 + 8))(v11, v13);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v38 = *(v0 + 224);
    v39 = sub_1A524CCB4();
    (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
    sub_1A524CC54();
    sub_1A3C66EE8(v38);
    v40 = sub_1A524CC44();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v38;
    v41[5] = v37;
    sub_1A3EA52F4(0, 0, v36, &unk_1A5316890, v41);
  }

  else
  {
    sub_1A408C0E8();
    v18 = swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 1;
    swift_willThrow();
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);
    v22 = *(v0 + 248);
    v23 = *(v0 + 216);

    v24 = sub_1A3C56D80();
    (*(v21 + 16))(v20, v24, v22);
    v25 = v23;
    v26 = v18;
    v27 = sub_1A5246F04();
    LOBYTE(v23) = sub_1A524D244();

    v28 = os_log_type_enabled(v27, v23);
    v30 = *(v0 + 256);
    v29 = *(v0 + 264);
    v31 = *(v0 + 248);
    if (v28)
    {
      v32 = *(v0 + 312);
      v33 = *(v0 + 216);
      v34 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v34 = 67109634;
      *(v34 + 4) = v32;
      *(v34 + 8) = 2082;
      v35 = [v33 uuid];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v30 + 8))(v29, v31);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);
    v45 = *(v0 + 224);
    v46 = sub_1A524CCB4();
    (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
    sub_1A524CC54();
    sub_1A3C66EE8(v45);
    v47 = v18;
    v48 = sub_1A524CC44();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    v49[2] = v48;
    v49[3] = v50;
    v49[4] = v45;
    v49[5] = v44;
    v49[6] = v18;
    sub_1A3EA52F4(0, 0, v43, &unk_1A5316880, v49);
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1A407E07C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  swift_willThrow();

  _Block_release(v1);
  v3 = *(v0 + 304);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);

  v8 = sub_1A3C56D80();
  (*(v5 + 16))(v4, v8, v6);
  v9 = v7;
  v10 = v3;
  v11 = sub_1A5246F04();
  LOBYTE(v7) = sub_1A524D244();

  v12 = os_log_type_enabled(v11, v7);
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 248);
  if (v12)
  {
    v16 = *(v0 + 312);
    v17 = *(v0 + 216);
    v18 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v18 = 67109634;
    *(v18 + 4) = v16;
    *(v18 + 8) = 2082;
    v19 = [v17 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  (*(v14 + 8))(v13, v15);
  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = sub_1A524CCB4();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_1A524CC54();
  sub_1A3C66EE8(v22);
  v24 = v3;
  v25 = sub_1A524CC44();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v22;
  v26[5] = v21;
  v26[6] = v3;
  sub_1A3EA52F4(0, 0, v20, &unk_1A5316880, v26);

  v28 = *(v0 + 8);

  return v28();
}

id static PXSharedAlbumsUtilities.notificationsEnabled(forSharedAlbum:)()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    return ([v0 notificationState] == 0x7FFF);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result isCloudNotificationsEnabled];
  }

  return result;
}

uint64_t sub_1A407E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 312) = a5;
  *(v7 + 216) = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v7 + 240) = swift_task_alloc();
  v8 = sub_1A5246F24();
  *(v7 + 248) = v8;
  *(v7 + 256) = *(v8 - 8);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407E748, 0, 0);
}

uint64_t sub_1A407E748()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[35] = v2;
  *(v2 + 16) = 1;
  v3 = [v1 photoLibrary];
  v0[36] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 312);
    v6 = v0[27];
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    *(v7 + 32) = v2;
    v0[22] = sub_1A408CF94;
    v0[23] = v7;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_206;
    v8 = _Block_copy(v0 + 18);
    v0[37] = v8;
    v9 = v6;

    v0[2] = v0;
    v0[3] = sub_1A407E960;
    v10 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950);
    v0[17] = v11;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_209_0;
    v0[14] = v10;
    [v4 performChanges:v8 completionHandler:v0 + 10];
    v3 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A407E960()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1A407F050;
  }

  else
  {
    v2 = sub_1A407EA70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407EA70()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16))
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    v6 = *(v0 + 216);
    v7 = sub_1A3C56D80();
    (*(v5 + 16))(v3, v7, v4);
    v8 = v6;
    v9 = sub_1A5246F04();
    LOBYTE(v6) = sub_1A524D264();

    v10 = os_log_type_enabled(v9, v6);
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    if (v10)
    {
      v14 = *(v0 + 312);
      v15 = *(v0 + 216);
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      *v16 = 67109378;
      *(v16 + 4) = v14;
      *(v16 + 8) = 2082;
      v17 = [v15 uuid];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v12 + 8))(v11, v13);
    v37 = *(v0 + 232);
    v36 = *(v0 + 240);
    v38 = *(v0 + 224);
    v39 = sub_1A524CCB4();
    (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
    sub_1A524CC54();
    sub_1A3C66EE8(v38);
    v40 = sub_1A524CC44();
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    v41[2] = v40;
    v41[3] = v42;
    v41[4] = v38;
    v41[5] = v37;
    sub_1A3EA52F4(0, 0, v36, &unk_1A5316860, v41);
  }

  else
  {
    sub_1A408C0E8();
    v18 = swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 1;
    swift_willThrow();
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);
    v22 = *(v0 + 248);
    v23 = *(v0 + 216);

    v24 = sub_1A3C56D80();
    (*(v21 + 16))(v20, v24, v22);
    v25 = v23;
    v26 = v18;
    v27 = sub_1A5246F04();
    LOBYTE(v23) = sub_1A524D244();

    v28 = os_log_type_enabled(v27, v23);
    v30 = *(v0 + 256);
    v29 = *(v0 + 264);
    v31 = *(v0 + 248);
    if (v28)
    {
      v32 = *(v0 + 312);
      v33 = *(v0 + 216);
      v34 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v34 = 67109634;
      *(v34 + 4) = v32;
      *(v34 + 8) = 2082;
      v35 = [v33 uuid];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v30 + 8))(v29, v31);
    v44 = *(v0 + 232);
    v43 = *(v0 + 240);
    v45 = *(v0 + 224);
    v46 = sub_1A524CCB4();
    (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
    sub_1A524CC54();
    sub_1A3C66EE8(v45);
    v47 = v18;
    v48 = sub_1A524CC44();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E85E0];
    v49[2] = v48;
    v49[3] = v50;
    v49[4] = v45;
    v49[5] = v44;
    v49[6] = v18;
    sub_1A3EA52F4(0, 0, v43, &unk_1A5316850, v49);
  }

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1A407F050()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  swift_willThrow();

  _Block_release(v1);
  v3 = *(v0 + 304);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);

  v8 = sub_1A3C56D80();
  (*(v5 + 16))(v4, v8, v6);
  v9 = v7;
  v10 = v3;
  v11 = sub_1A5246F04();
  LOBYTE(v7) = sub_1A524D244();

  v12 = os_log_type_enabled(v11, v7);
  v14 = *(v0 + 256);
  v13 = *(v0 + 264);
  v15 = *(v0 + 248);
  if (v12)
  {
    v16 = *(v0 + 312);
    v17 = *(v0 + 216);
    v18 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v18 = 67109634;
    *(v18 + 4) = v16;
    *(v18 + 8) = 2082;
    v19 = [v17 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  (*(v14 + 8))(v13, v15);
  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = sub_1A524CCB4();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_1A524CC54();
  sub_1A3C66EE8(v22);
  v24 = v3;
  v25 = sub_1A524CC44();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v22;
  v26[5] = v21;
  v26[6] = v3;
  sub_1A3EA52F4(0, 0, v20, &unk_1A5316850, v26);

  v28 = *(v0 + 8);

  return v28();
}

id sub_1A407F4A0(uint64_t a1, SEL *a2, SEL *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    return ([v5 *a2] == 2);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result *a3];
  }

  return result;
}

id sub_1A407F538(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, const char **a5)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    return ([v7 *a4] == 2);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v9 = *a5;

    return [result v9];
  }

  return result;
}

uint64_t static PXSharedAlbumsUtilities.publicURL(forSharedAlbum:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A408BC44(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = a1;
    if ([ObjCClassFromMetadata publicURLEnabledForSharedAlbum_])
    {
      v11 = [v8 shareURL];
      if (v11)
      {
        v12 = v11;
        sub_1A5240DE4();

        v13 = sub_1A5240E64();
        (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
      }

      else
      {

        v22 = sub_1A5240E64();
        (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      }

      return sub_1A408A03C(v6, a2);
    }

    goto LABEL_10;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
LABEL_11:
    v20 = sub_1A5240E64();
    v21 = *(*(v20 - 8) + 56);

    return v21(a2, 1, 1, v20);
  }

  v15 = v14;
  v16 = a1;
  v17 = [v15 publicURL];
  if (!v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v18 = v17;
  sub_1A524C674();

  sub_1A5240E34();
}

uint64_t sub_1A407FA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 280) = a5;
  *(v7 + 192) = a4;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v7 + 216) = swift_task_alloc();
  v8 = sub_1A5246F24();
  *(v7 + 224) = v8;
  *(v7 + 232) = *(v8 - 8);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A407FB8C, 0, 0);
}

uint64_t sub_1A407FB8C()
{
  v1 = [v0[24] photoLibrary];
  v0[32] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 280);
    v4 = v0[24];
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v0[22] = sub_1A408CC38;
    v0[23] = v5;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_184;
    v6 = _Block_copy(v0 + 18);
    v0[33] = v6;
    v7 = v4;

    v0[2] = v0;
    v0[3] = sub_1A407FD70;
    v8 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950);
    v0[17] = v9;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_187;
    v0[14] = v8;
    [v2 performChanges:v6 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1A407FD70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_1A4080150;
  }

  else
  {
    v2 = sub_1A407FE80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A407FE80()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);

  _Block_release(v1);
  v6 = sub_1A3C56D80();
  (*(v4 + 16))(v2, v6, v3);
  v7 = v5;
  v8 = sub_1A5246F04();
  LOBYTE(v4) = sub_1A524D264();

  v9 = os_log_type_enabled(v8, v4);
  v10 = *(v0 + 248);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  if (v9)
  {
    v13 = *(v0 + 280);
    v14 = *(v0 + 192);
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = v13;
    *(v15 + 8) = 2082;
    v16 = [v14 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  (*(v11 + 8))(v10, v12);
  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = sub_1A524CCB4();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  sub_1A524CC54();
  sub_1A3C66EE8(v19);
  v21 = sub_1A524CC44();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v19;
  v22[5] = v18;
  sub_1A3EA52F4(0, 0, v17, &unk_1A5316830, v22);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1A4080150()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 192);
  swift_willThrow();

  _Block_release(v2);
  v8 = sub_1A3C56D80();
  (*(v5 + 16))(v4, v8, v6);
  v9 = v7;
  v10 = v1;
  v11 = sub_1A5246F04();
  LOBYTE(v4) = sub_1A524D244();

  if (os_log_type_enabled(v11, v4))
  {
    v31 = *(v0 + 232);
    v32 = *(v0 + 224);
    v33 = *(v0 + 240);
    v12 = *(v0 + 280);
    v13 = *(v0 + 192);
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 67109634;
    *(v14 + 4) = v12;
    *(v14 + 8) = 2082;
    v16 = [v13 uuid];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v18 = *(v0 + 232);
  v17 = *(v0 + 240);
  v19 = *(v0 + 224);

  (*(v18 + 8))(v17, v19);
  v20 = *(v0 + 272);
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v23 = *(v0 + 200);
  v24 = sub_1A524CCB4();
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  sub_1A524CC54();
  sub_1A3C66EE8(v23);
  v25 = v20;
  v26 = sub_1A524CC44();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v23;
  v27[5] = v22;
  v27[6] = v20;
  sub_1A3EA52F4(0, 0, v21, &unk_1A5316820, v27);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1A40805A4(int a1, uint64_t a2, void *a3)
{
  v44 = a3;
  LODWORD(v43) = a1;
  v3 = sub_1A5246F24();
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = sub_1A5240C64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CD0];
  v49 = MEMORY[0x1E69E7CD0];
  swift_unknownObjectRetain();
  sub_1A5240C74();
  sub_1A5240C54();
  v14 = MEMORY[0x1E69E7CA0];
  if (!v47)
  {
LABEL_7:
    sub_1A3C2C6B8(&v46, &qword_1EB126130, v14 + 8, MEMORY[0x1E69E6720], sub_1A3C4EDC8);
    objc_opt_self();
    sub_1A4086BDC(v13);
  }

  v40 = v10;
  v41 = v9;
  v15 = v3;
  while (1)
  {
    sub_1A3C57128(&v46, v48);
    sub_1A3C2F0BC(v48, &v46);
    sub_1A3C52C70(0, &qword_1EB126660);
    if (!swift_dynamicCast())
    {
      break;
    }

    v16 = v45[0];
    v17 = [v45[0] pl_managedAsset];
    if (!v17)
    {

      v25 = sub_1A3C56D80();
      v26 = v42;
      (*(v42 + 16))(v8, v25, v15);
      v27 = v16;
      v28 = sub_1A5246F04();
      v29 = sub_1A524D244();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&dword_1A3C1C000, v28, v29, "Could not get PL asset from PHAsset: %@", v30, 0xCu);
        sub_1A3CB65E4(v31);
        MEMORY[0x1A590EEC0](v31, -1, -1);
        MEMORY[0x1A590EEC0](v30, -1, -1);
      }

      (*(v26 + 8))(v8, v15);
      v33 = v40;
      v34 = v41;
      v35 = v44;
      if (v44)
      {
        sub_1A408C0E8();
        v36 = swift_allocError();
        *v37 = 1;
        *(v37 + 8) = 1;
        *v35 = sub_1A5240B74();

LABEL_16:
        __swift_destroy_boxed_opaque_existential_0(v48);
        (*(v33 + 8))(v12, v34);

        return 0;
      }

      goto LABEL_18;
    }

    sub_1A3EE81DC(&v46, v17);

    __swift_destroy_boxed_opaque_existential_0(v48);
    sub_1A5240C54();
    if (!v47)
    {
      v13 = v49;
      goto LABEL_7;
    }
  }

  v18 = sub_1A3C56D80();
  v19 = v42;
  (*(v42 + 16))(v5, v18, v15);
  sub_1A3C2F0BC(v48, &v46);
  v20 = sub_1A5246F04();
  v21 = sub_1A524D244();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v44;
  if (v22)
  {
    v24 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45[4] = v43;
    *v24 = 136315138;
    sub_1A3C2F0BC(&v46, v45);
    sub_1A524C714();
    __swift_destroy_boxed_opaque_existential_0(&v46);
    sub_1A3C2EF94();
  }

  __swift_destroy_boxed_opaque_existential_0(&v46);
  (*(v19 + 8))(v5, v15);
  v33 = v40;
  v34 = v41;
  if (v23)
  {
    sub_1A408C0E8();
    v36 = swift_allocError();
    *v38 = 1;
    *(v38 + 8) = 1;
    *v23 = sub_1A5240B74();
    goto LABEL_16;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v48);
  (*(v33 + 8))(v12, v34);
  return 0;
}

uint64_t sub_1A4080C28(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v7[4] = swift_task_alloc();
  if (a4)
  {
    v10 = swift_task_alloc();
    v7[5] = v10;
    *v10 = v7;
    v10[1] = sub_1A4080D8C;

    return sub_1A4081370(a5);
  }

  else
  {
    v12 = swift_task_alloc();
    v7[7] = v12;
    *v12 = v7;
    v12[1] = sub_1A4080EA0;

    return sub_1A40821A8(a5);
  }
}

uint64_t sub_1A4080D8C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1A40810D8;
  }

  else
  {
    v2 = sub_1A4080FB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4080EA0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1A4081224;
  }

  else
  {
    v2 = sub_1A408EA54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4080FB4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1A524CC54();
  sub_1A3C66EE8(v3);
  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  v6[5] = v2;
  sub_1A3EA52F4(0, 0, v1, &unk_1A53167F0, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A40810D8()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();
  sub_1A3C66EE8(v4);
  v6 = v1;
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v1;
  sub_1A3EA52F4(0, 0, v2, &unk_1A53167E0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A4081224()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1A524CC54();
  sub_1A3C66EE8(v4);
  v6 = v1;
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v1;
  sub_1A3EA52F4(0, 0, v2, &unk_1A53167E0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A4081370(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_1A5246F24();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4081460, 0, 0);
}

uint64_t sub_1A4081460(uint64_t a1)
{
  v2 = v1[24];
  if (v2 >> 62)
  {
    v36 = sub_1A524E2B4();
    if (v36 >= 1)
    {
      v3 = v36;
      a1 = sub_1A524E2B4();
      if (a1)
      {
        goto LABEL_3;
      }
    }

LABEL_19:

    v29 = v1[1];
    goto LABEL_20;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_3:
  v1[32] = v3;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v1[24]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](a1);
    }

    v4 = *(v1[24] + 32);
  }

  v5 = v4;
  v1[33] = v4;
  v6 = [v4 photoLibrary];
  v1[34] = v6;
  if (v6)
  {
    v7 = v1[26];
    v8 = sub_1A3C56D80();
    v9 = *(v7 + 16);
    v1[35] = v9;
    v10 = v1[25];
    if (v3 != 1)
    {
      v9(v1[30], v8, v10);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v9(v1[31], v8, v10);
    v11 = v5;
    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();
    if (!os_log_type_enabled(v12, v13))
    {
      v30 = v1[31];
      v31 = v1[25];
      v32 = v1[26];

      v33 = *(v32 + 8);
      v33(v30, v31);
      v1[36] = v33;
      v34 = v1[24];
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      v1[22] = sub_1A408C7C4;
      v1[23] = v35;
      v1[18] = MEMORY[0x1E69E9820];
      v1[19] = 1107296256;
      v1[20] = sub_1A3C2E0D0;
      v1[21] = &block_descriptor_151;
      v1[37] = _Block_copy(v1 + 18);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v14 = swift_slowAlloc();
    swift_slowAlloc();
    *v14 = 136446210;
    v15 = [v11 uuid];

    if (v15)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    goto LABEL_26;
  }

  v16 = v1[29];
  v17 = v1[25];
  v18 = v1[26];
  v19 = sub_1A3C56D80();
  (*(v18 + 16))(v16, v19, v17);
  v20 = v5;
  v21 = sub_1A5246F04();
  v22 = sub_1A524D244();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    swift_slowAlloc();
    *v23 = 136446210;
    v24 = [v20 uuid];

    if (v24)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    goto LABEL_25;
  }

  v25 = v1[29];
  v26 = v1[25];
  v27 = v1[26];

  (*(v27 + 8))(v25, v26);
  sub_1A408C0E8();
  swift_allocError();
  *v28 = 1;
  *(v28 + 8) = 1;
  swift_willThrow();

  v29 = v1[1];
LABEL_20:

  return v29();
}

uint64_t sub_1A4081BA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1A4081D60;
  }

  else
  {
    v2 = sub_1A4081CB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4081CB4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);

  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1A4081D60()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  swift_willThrow();
  _Block_release(v1);
  v3 = sub_1A3C56D80();
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  if (v2 != 1)
  {
    v5(*(v0 + 216), v3, *(v0 + 200));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = *(v0 + 264);
  v5(*(v0 + 224), v3, *(v0 + 200));
  v7 = v6;
  v8 = v4;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 264);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446466;
    v13 = [v11 uuid];
    v14 = *(v0 + 304);
    if (v13)
    {
      v15 = v13;
      v16 = *(v0 + 264);

      sub_1A524C674();
      sub_1A3C2EF94();
    }

    v24 = *(v0 + 264);

    __break(1u);
  }

  else
  {
    v17 = *(v0 + 304);
    v18 = *(v0 + 288);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);

    v18(v19, v20);
    v21 = *(v0 + 264);
    v22 = *(v0 + 272);
    swift_willThrow();

    v23 = *(v0 + 8);

    v23();
  }
}

uint64_t sub_1A40821A8(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_1A5246F24();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40822A4, 0, 0);
}

uint64_t sub_1A40822A4(id a1)
{
  v2 = v1[24];
  if (v2 >> 62)
  {
    goto LABEL_39;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = v3;
  if (!v3)
  {
LABEL_42:

    v59 = v1[1];
LABEL_43:

    return v59();
  }

  while (1)
  {
    v1[33] = v4;
    v67 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1A59097F0](0, v1[24]);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v5 = *(v1[24] + 32);
    }

    v6 = v5;
    v1[34] = v5;
    v7 = [v5 photoLibrary];
    v1[35] = v7;
    v63 = v1;
    if (!v7)
    {
      v19 = v1[29];
      v20 = v1[25];
      v21 = v1[26];
      v22 = sub_1A3C56D80();
      (*(v21 + 16))(v19, v22, v20);
      v23 = v6;
      v24 = sub_1A5246F04();
      v25 = sub_1A524D244();
      if (!os_log_type_enabled(v24, v25))
      {
        v28 = v1[29];
        v29 = v1[25];
        v30 = v1[26];

        (*(v30 + 8))(v28, v29);
        sub_1A408C0E8();
        swift_allocError();
        *v31 = 1;
        *(v31 + 8) = 1;
        swift_willThrow();

        v59 = v1[1];
        goto LABEL_43;
      }

      v26 = swift_slowAlloc();
      swift_slowAlloc();
      *v26 = 136446210;
      v27 = [v23 uuid];

      if (v27)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      goto LABEL_50;
    }

    v8 = v7;
    v9 = v1[26];
    v10 = sub_1A3C56D80();
    v11 = *(v9 + 16);
    v1[36] = v11;
    v12 = v1[25];
    v62 = v11;
    if (v4 != 1)
    {
      v11(v1[31], v10, v12);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v11(v1[32], v10, v12);
    v13 = v6;
    v14 = sub_1A5246F04();
    v15 = sub_1A524D264();
    v16 = v1;
    if (os_log_type_enabled(v14, v15))
    {
      break;
    }

    v32 = v1[32];
    v33 = v1[25];
    v34 = v1[26];

    v35 = *(v34 + 8);
    v35(v32, v33);
    v1 = v16;
    v16[37] = v35;
    v36 = v16[24];
    v66 = sub_1A408AB5C(MEMORY[0x1E69E7CC0]);
    v37 = 0;
    v68 = [v8 librarySpecificFetchOptions];
    v16[38] = v68;
    v64 = v36 + 32;
    v65 = v2 & 0xFFFFFFFFFFFFFF8;
    v2 = &selRef_internalReleaseAgreementTitle;
    while (1)
    {
      if (v67)
      {
        v38 = MEMORY[0x1A59097F0](v37, v1[24]);
      }

      else
      {
        if (v37 >= *(v65 + 16))
        {
          goto LABEL_38;
        }

        v38 = *(v64 + 8 * v37);
      }

      v39 = v38;
      if (__OFADD__(v37++, 1))
      {
        break;
      }

      a1 = [objc_opt_self() fetchLikesForAsset:v38 options:v68];
      if (!a1)
      {
        goto LABEL_48;
      }

      v41 = a1;
      v42 = [a1 count];
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      v43 = v42;
      if (v42)
      {
        v44 = 0;
        while (1)
        {
          v45 = [v41 objectAtIndexedSubscript_];
          if ([v45 isMyComment])
          {
            break;
          }

          if (v43 == ++v44)
          {
            goto LABEL_17;
          }
        }

        v46 = v3;
        a1 = [v39 uuid];
        if (!a1)
        {
          goto LABEL_49;
        }

        v47 = a1;
        v48 = sub_1A524C674();
        v50 = v49;

        v51 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1A40877E0(v51, v48, v50, isUniquelyReferenced_nonNull_native);

        v3 = v46;
        v53 = v37 == v46;
        v1 = v63;
        if (v53)
        {
LABEL_33:
          if (*(v66 + 16) == 1)
          {
            v54 = v1[24];
            v55 = swift_allocObject();
            *(v55 + 16) = v54;
            *(v55 + 24) = v66;
            v1[22] = sub_1A408C90C;
            v1[23] = v55;
            v1[18] = MEMORY[0x1E69E9820];
            v1[19] = 1107296256;
            v1[20] = sub_1A3C2E0D0;
            v1[21] = &block_descriptor_171_0;
            v1[39] = _Block_copy(v1 + 18);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v56 = v1[30];
          v57 = v1[25];
          v58 = sub_1A3C56D80();
          v62(v56, v58, v57);
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
LABEL_17:

        if (v37 == v3)
        {
          goto LABEL_33;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v60 = sub_1A524E2B4();
    if (v60 < 1)
    {
      goto LABEL_42;
    }

    v4 = v60;
    a1 = sub_1A524E2B4();
    if (!a1)
    {
      goto LABEL_42;
    }

    v3 = a1;
  }

  v17 = swift_slowAlloc();
  swift_slowAlloc();
  *v17 = 136446210;
  v18 = [v13 uuid];

  if (v18)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

LABEL_51:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](a1);
}

uint64_t sub_1A4082DEC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_1A4082FBC;
  }

  else
  {
    v2 = sub_1A4082EFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4082EFC()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);

  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_1A4082FBC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 264);
  swift_willThrow();
  _Block_release(v1);
  v3 = sub_1A3C56D80();
  v4 = *(v0 + 320);
  v5 = *(v0 + 288);
  if (v2 != 1)
  {
    v5(*(v0 + 216), v3, *(v0 + 200));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = *(v0 + 272);
  v5(*(v0 + 224), v3, *(v0 + 200));
  v7 = v6;
  v8 = v4;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 272);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446466;
    v13 = [v11 uuid];
    v14 = *(v0 + 320);
    if (v13)
    {
      v15 = v13;
      v16 = *(v0 + 272);

      sub_1A524C674();
      sub_1A3C2EF94();
    }

    v25 = *(v0 + 272);

    __break(1u);
  }

  else
  {
    v17 = *(v0 + 320);
    v18 = *(v0 + 296);
    v19 = *(v0 + 224);
    v20 = *(v0 + 200);

    v18(v19, v20);
    v21 = *(v0 + 304);
    v23 = *(v0 + 272);
    v22 = *(v0 + 280);
    swift_willThrow();

    v24 = *(v0 + 8);

    v24();
  }
}

uint64_t sub_1A4083410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1A524CC54();
  v6[6] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40834AC, v8, v7);
}

uint64_t sub_1A40834AC()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = sub_1A5240B74();
    v2(0, v3);
  }

  **(v0 + 16) = v1 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A4083604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v11;
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40836D4, 0, 0);
}

void sub_1A40836D4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = swift_allocObject();
  v0[31] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v4;
  v0[22] = sub_1A408C434;
  v0[23] = v5;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1A3C2E0D0;
  v0[21] = &block_descriptor_119_0;
  v0[32] = _Block_copy(v0 + 18);
  v6 = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40838CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1A4083B38;
  }

  else
  {
    v2 = sub_1A40839DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A40839DC()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  _Block_release(*(v0 + 256));
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  sub_1A524CC54();
  v7 = v5;

  sub_1A3C66EE8(v4);
  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = v4;
  v9[6] = v3;
  v9[7] = v1;
  sub_1A3D4D930(0, 0, v2, &unk_1A53167B8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A4083B38()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[25];
  swift_willThrow();
  _Block_release(v2);

  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_1A524CC54();
  v8 = v6;
  sub_1A3C66EE8(v5);
  v9 = v1;
  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v1;
  v11[6] = v5;
  v11[7] = v4;
  sub_1A3D4D930(0, 0, v3, &unk_1A53167A8, v11);

  v13 = v0[1];

  return v13();
}

void sub_1A4083CB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A3C56D80();
  (*(v9 + 16))(v11, v12, v8);
  v13 = a1;
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v32[2] = a2;
    v32[3] = a3;
    v32[4] = a4;
    v16 = swift_slowAlloc();
    v32[5] = swift_slowAlloc();
    *v16 = 136446210;
    v17 = [v13 uuid];
    v18 = v13;
    v19 = v17;
    v32[1] = v18;

    if (v19)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    v20 = sub_1A524C634();
    v21 = [objc_opt_self() creationRequestForAssetCommentWithText_];

    v22 = [objc_opt_self() changeRequestForAsset_];
    v23 = [v21 placeholderForCreatedAssetComment];
    sub_1A3C4EDC8(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1A52F9790;
    *(v24 + 32) = v23;
    sub_1A3C52C70(0, &qword_1EB131210);
    v25 = v23;
    v26 = sub_1A524CA14();

    [v22 addComments_];

    v27 = [v25 uuid];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1A524C674();
      v31 = v30;
    }

    else
    {

      v29 = 0;
      v31 = 0;
    }

    swift_beginAccess();
    *(a4 + 16) = v29;
    *(a4 + 24) = v31;
  }
}

uint64_t sub_1A4084098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_1A5246F24();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_1A524CC54();
  v7[12] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4084190, v10, v9);
}

void sub_1A4084190()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);

  v5 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v5, v2);
  v6 = v4;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    swift_slowAlloc();
    *v10 = 136446210;
    v11 = [v9 uuid];

    if (v11)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);

    (*(v13 + 8))(v12, v14);
    if (*(v0 + 48))
    {
      swift_beginAccess();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v15 = *(v0 + 8);

    v15();
  }
}

uint64_t sub_1A40843E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A5246F24();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1A524CC54();
  v7[9] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40844E0, v10, v9);
}

void sub_1A40844E0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v6 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v6, v2);
  v7 = v5;
  v8 = v4;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 16);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446466;
    v13 = [v11 uuid];
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 16);

      sub_1A524C674();
      sub_1A3C2EF94();
    }

    v23 = *(v0 + 16);

    __break(1u);
  }

  else
  {
    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = *(v0 + 48);
    v19 = *(v0 + 24);

    (*(v17 + 8))(v16, v18);
    v20 = *(v0 + 32);
    if (v20)
    {
      v21 = sub_1A5240B74();
      v20(0, 0, v21);
    }

    v22 = *(v0 + 8);

    v22();
  }
}

void sub_1A408485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1A524C634();
    if (a3)
    {
LABEL_3:
      v7 = sub_1A5240B74();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1A40848F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a8;
  v8[29] = v11;
  v8[26] = a6;
  v8[27] = a7;
  v8[24] = a4;
  v8[25] = a5;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40849C0, 0, 0);
}

uint64_t sub_1A40849C0()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[22] = sub_1A408C200;
  v0[23] = v4;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1A3C2E0D0;
  v0[21] = &block_descriptor_95;
  v5 = _Block_copy(v0 + 18);
  v0[31] = v5;

  v6 = v2;

  v0[2] = v0;
  v0[3] = sub_1A4084B84;
  v7 = swift_continuation_init();
  sub_1A408E3EC(0, &qword_1EB147950);
  v0[17] = v8;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A4077B64;
  v0[13] = &block_descriptor_98_0;
  v0[14] = v7;
  [v3 performChanges:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4084B84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1A4084DDC;
  }

  else
  {
    v2 = sub_1A4084C94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4084C94()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  _Block_release(*(v0 + 248));
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_1A524CC54();
  v7 = v5;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(v3);
  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v7;
  v9[6] = v3;
  v9[7] = v2;
  sub_1A3D4D930(0, 0, v1, &unk_1A5316788, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A4084DDC()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[26];
  swift_willThrow();
  _Block_release(v2);
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1A524CC54();
  v9 = v7;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(v5);
  v10 = v1;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v6;
  v12[5] = v9;
  v12[6] = v1;
  v12[7] = v5;
  v12[8] = v4;
  sub_1A3D4D930(0, 0, v3, &unk_1A5316778, v12);

  v14 = v0[1];

  return v14();
}

void sub_1A4084F60(uint64_t a1, void *a2)
{
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    if (sub_1A524E2B4() != 1)
    {
      goto LABEL_14;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:
    v21 = sub_1A3C56D80();
    (*(v6 + 16))(v8, v21, v5);
    v22 = a2;

    v23 = sub_1A5246F04();
    v24 = sub_1A524D264();
    if (!os_log_type_enabled(v23, v24))
    {

      (*(v6 + 8))(v8, v5);
LABEL_20:
      v28 = [objc_opt_self() changeRequestForAsset_];
      swift_beginAccess();
      sub_1A3C52C70(0, &unk_1EB131200);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v30 = v5;
    v25 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v25 = 134218242;
    swift_beginAccess();
    v26 = *(a1 + 16);
    if (v26 >> 62)
    {
      v27 = sub_1A524E2B4();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = a2;
    *(v25 + 4) = v27;

    *(v25 + 12) = 2082;
    v2 = [v22 uuid];

    if (v2)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v13 + 32);
  v15 = sub_1A3C56D80();
  (*(v6 + 16))(v11, v15, v5);
  v16 = v14;
  v2 = a2;
  v17 = sub_1A5246F04();
  v18 = sub_1A524D264();
  if (!os_log_type_enabled(v17, v18))
  {

    (*(v6 + 8))(v11, v5);
    goto LABEL_20;
  }

  v30 = v5;
  v31 = a2;
  v19 = swift_slowAlloc();
  v29[0] = swift_slowAlloc();
  v32 = v29[0];
  *v19 = 136315394;
  v20 = [v16 uuid];
  v29[1] = v16;

  if (v20)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

LABEL_25:

  __break(1u);
  __break(1u);
}

uint64_t sub_1A4085564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A5246F24();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  sub_1A524CC54();
  v7[9] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A408565C, v10, v9);
}

void sub_1A408565C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);

  v5 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v5, v2);
  swift_unknownObjectRetain();
  v6 = v4;
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = swift_slowAlloc();
    swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = [v10 count];
    swift_unknownObjectRelease();
    *(v11 + 12) = 2082;
    v12 = [v9 uuid];

    if (v12)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);

    swift_unknownObjectRelease();
    (*(v14 + 8))(v13, v15);
    v16 = *(v0 + 32);
    if (v16)
    {
      v16(1, 0);
    }

    v17 = *(v0 + 8);

    v17();
  }
}

uint64_t sub_1A40858A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1A5246F24();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  sub_1A524CC54();
  v8[10] = sub_1A524CC44();
  v11 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40859A4, v11, v10);
}

void sub_1A40859A4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);

  v6 = sub_1A3C56D80();
  (*(v3 + 16))(v1, v6, v2);
  swift_unknownObjectRetain();
  v7 = v5;
  v8 = v4;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = swift_slowAlloc();
    swift_slowAlloc();
    swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = [v12 count];
    swift_unknownObjectRelease();
    *(v13 + 12) = 2082;
    v14 = [v11 uuid];
    if (v14)
    {
      v15 = v14;
      v16 = *(v0 + 24);

      sub_1A524C674();
      sub_1A3C2EF94();
    }

    v24 = *(v0 + 24);

    __break(1u);
  }

  else
  {
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 56);
    v20 = *(v0 + 32);

    swift_unknownObjectRelease();
    (*(v18 + 8))(v17, v19);
    v21 = *(v0 + 40);
    if (v21)
    {
      v22 = sub_1A5240B74();
      v21(0, v22);
    }

    v23 = *(v0 + 8);

    v23();
  }
}

uint64_t sub_1A4085D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_1A5246F24();
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4085E20, 0, 0);
}

uint64_t sub_1A4085E20()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[32] = v2;
  *(v2 + 16) = 0;
  v3 = [v1 photoLibrary];
  v0[33] = v3;
  if (v3)
  {
    v4 = v3;
    v5 = v0[27];
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v0[22] = sub_1A408C05C;
    v0[23] = v6;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1A3C2E0D0;
    v0[21] = &block_descriptor_88;
    v7 = _Block_copy(v0 + 18);
    v0[34] = v7;
    v8 = v5;

    v0[2] = v0;
    v0[3] = sub_1A4086028;
    v9 = swift_continuation_init();
    sub_1A408E3EC(0, &qword_1EB147950);
    v0[17] = v10;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_82_1;
    v0[14] = v9;
    [v4 performChanges:v7 completionHandler:v0 + 10];
    v3 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1A4086028()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1A40863B0;
  }

  else
  {
    v2 = sub_1A4086138;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4086138()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);

  _Block_release(v1);
  swift_beginAccess();
  if ((*(v2 + 16) & 1) == 0)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v5 = *(v0 + 232);
    v6 = *(v0 + 216);
    v7 = sub_1A3C56D80();
    (*(v5 + 16))(v3, v7, v4);
    v8 = v6;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 248);
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    if (v11)
    {
      v15 = *(v0 + 216);
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v16 = 136446466;
      v17 = [v15 uuid];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v14 + 8))(v12, v13);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1A40863B0()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  swift_willThrow();

  _Block_release(v2);

  v7 = sub_1A3C56D80();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v1;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D244();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[35];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Could not mark collection share as viewed: %@", v13, 0xCu);
    sub_1A3CB65E4(v14);
    MEMORY[0x1A590EEC0](v14, -1, -1);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[29] + 8))(v0[30], v0[28]);

  v17 = v0[1];

  return v17();
}

PXSharedAlbumsUtilities __swiftcall PXSharedAlbumsUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A4086664(unint64_t a1, void *a2, uint64_t a3)
{
  v45 = sub_1A5246F24();
  v6 = *(v45 - 8);
  v7 = MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v9 = sub_1A524E2B4();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v43 = (v6 + 16);
    v41 = (v6 + 8);
    v7.n128_u64[0] = 138412546;
    v39 = v7;
    v46 = a1;
    v47 = a2;
    v48 = a1 & 0xC000000000000001;
    v49 = v9;
    v42 = a3;
    while (1)
    {
      if (v11)
      {
        v12 = MEMORY[0x1A59097F0](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v13 emailAddressString];
      if (v14)
      {
        v15 = v14;

        v16 = [objc_opt_self() changeRequestForCollectionShare_];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 addParticipantWithEmailAddress_];

          if (v18)
          {
            goto LABEL_17;
          }

LABEL_22:

          goto LABEL_6;
        }
      }

      else
      {
        v15 = [v13 phoneNumberString];

        if (!v15)
        {
          v29 = sub_1A3C56D80();
          v30 = v44;
          v31 = v45;
          (*v43)(v44, v29, v45);
          v32 = v13;
          v33 = a2;
          v34 = sub_1A5246F04();
          v35 = sub_1A524D244();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *v36 = v39.n128_u32[0];
            *(v36 + 4) = v32;
            *v37 = v32;
            *(v36 + 12) = 2082;
            v40 = v32;
            v38 = [v33 uuid];
            sub_1A524C674();

            sub_1A3C2EF94();
          }

          (*v41)(v30, v31);
          a3 = v42;
          goto LABEL_26;
        }

        v19 = [objc_opt_self() changeRequestForCollectionShare_];
        if (v19)
        {
          v17 = v19;
          v18 = [v19 addParticipantWithPhoneNumber_];

          if (v18)
          {
LABEL_17:
            v20 = [v18 localIdentifier];
            v21 = sub_1A524C674();
            v23 = v22;

            swift_beginAccess();
            v24 = *(a3 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a3 + 16) = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v24 = sub_1A3D3D914(0, *(v24 + 2) + 1, 1, v24);
              *(a3 + 16) = v24;
            }

            v27 = *(v24 + 2);
            v26 = *(v24 + 3);
            if (v27 >= v26 >> 1)
            {
              v24 = sub_1A3D3D914((v26 > 1), v27 + 1, 1, v24);
            }

            *(v24 + 2) = v27 + 1;
            v28 = &v24[16 * v27];
            *(v28 + 4) = v21;
            *(v28 + 5) = v23;
            *(a3 + 16) = v24;
            swift_endAccess();

            a1 = v46;
            a2 = v47;
LABEL_26:
            v11 = v48;
            v9 = v49;
            goto LABEL_6;
          }

          goto LABEL_22;
        }
      }

LABEL_6:
      if (v9 == ++v10)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_1A4086B70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1A4086BDC(uint64_t a1)
{
  v1 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_3:
    sub_1A408CB30();
    sub_1A524E3D4();
    if (v1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v1)
  {
LABEL_4:

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_7:

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t HostingViewControllerProvider.viewControllerReference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  swift_beginAccess();
  return sub_1A408BB20(v1 + v3, a1);
}

uint64_t HostingViewControllerProvider.viewControllerReference.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  swift_beginAccess();
  sub_1A408BB84(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t HostingViewControllerProvider.__deallocating_deinit()
{
  sub_1A408BBE8(v0 + OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference);

  return swift_deallocClassInstance();
}

uint64_t sub_1A40870F0()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1A4087198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

void View.embeddedInHostingViewController()(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v21 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(255, &qword_1EB131160, sub_1A408BCA8, MEMORY[0x1E6980A08]);
  v4 = sub_1A5248804();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  type metadata accessor for HostingViewControllerProvider();
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  v14 = *(v13 - 8);
  v19[0] = *(v14 + 56);
  v19[1] = v14 + 56;
  (v19[0])(v11 + v12, 1, 1, v13);
  sub_1A408E96C(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider);
  v15 = v20;
  sub_1A524AC44();
  v16 = sub_1A408BD28();
  v22 = v15;
  v23 = v16;
  swift_getWitnessTable();
  type metadata accessor for PXSwiftUIHostingViewController();
  (*(v5 + 16))(v7, v10, v4);
  v17 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v7);
  sub_1A3C52C70(0, &qword_1EB126B10);
  v18 = v17;
  sub_1A5245CA4();
}

uint64_t sub_1A4087548(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A408CAB8();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A40877E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A4087548(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A4087958();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a2;
    v24[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void *sub_1A4087958()
{
  v1 = v0;
  sub_1A408CAB8();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

id _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE06sharedB7Enabled3forSbSo14PHPhotoLibraryC_tFZ_0(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 photoLibrary];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  result = [v7 pathManager];
  if (result)
  {
    v10 = result;
    v11 = objc_opt_self();
    v12 = [v10 libraryURL];

    sub_1A5240DE4();
    v13 = sub_1A5240D44();
    (*(v3 + 8))(v6, v2);
    v14 = [v11 sharedStreamsEnabledForPhotoLibraryURL_];

    return v14;
  }

  __break(1u);
  return result;
}

id _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE20sharedAlbumIsPendingySbSo17PHAssetCollectionCFZ_0(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    return ([v2 status] == 2);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = a1;
    result = [v5 cloudRelationshipState];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result integerValue];

    return (v8 == 1);
  }
}

PXSharedAlbumParticipant *_sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE5owner14forSharedAlbumSo0aI11ParticipantCSgSo17PHAssetCollectionC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    result = [v7 photoLibrary];
    if (result)
    {
      v10 = result;
      v11 = objc_opt_self();
      v12 = [(PXSharedAlbumParticipant *)v10 px_standardLibrarySpecificFetchOptions];

      v13 = [v11 fetchOwnerParticipantInShare:v7 options:v12];
      v14 = [v13 firstObject];
      if (v14)
      {
        v15 = v14;
        v16 = PXSharedAlbumParticipantForShareParticipant(v14);

        return v16;
      }

LABEL_9:
      v21 = sub_1A3C56D80();
      (*(v3 + 16))(v5, v21, v2);
      v22 = a1;
      v23 = sub_1A5246F04();
      v24 = sub_1A524D244();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_1A3C1C000, v23, v24, "An invalid asset collection was passed in to owner(forSharedAlbum:): %@", v25, 0xCu);
        sub_1A3CB65E4(v26);
        MEMORY[0x1A590EEC0](v26, -1, -1);
        MEMORY[0x1A590EEC0](v25, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      return 0;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      goto LABEL_9;
    }

    v18 = v17;
    v19 = a1;
    result = [v18 pl_assetContainer];
    if (result)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClassUnconditional();
      v16 = PXSharedAlbumOwnerParticipantForAlbum(v20);

      swift_unknownObjectRelease();
      return v16;
    }
  }

  __break(1u);
  return result;
}

id _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE13ownerIsVetted14forSharedAlbumSbSo17PHAssetCollectionC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    result = [v7 photoLibrary];
    if (result)
    {
      v10 = result;
      v11 = objc_opt_self();
      v12 = [v10 px_standardLibrarySpecificFetchOptions];

      v13 = [v11 fetchOwnerParticipantInShare:v7 options:v12];
      v14 = [v13 firstObject];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 allowlistedState];

        return (v16 == 1);
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    result = [v18 pl_assetContainer];
    if (result)
    {
      objc_opt_self();
      v20 = [swift_dynamicCastObjCClassUnconditional() cloudOwnerIsWhitelisted];

      swift_unknownObjectRelease();
      return v20;
    }

    goto LABEL_14;
  }

LABEL_9:
  v21 = sub_1A3C56D80();
  (*(v3 + 16))(v5, v21, v2);
  v22 = a1;
  v23 = sub_1A5246F04();
  v24 = sub_1A524D244();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_1A3C1C000, v23, v24, "An invalid asset collection was passed in to ownerIsVetted(forSharedAlbum:): %@", v25, 0xCu);
    sub_1A3CB65E4(v26);
    MEMORY[0x1A590EEC0](v26, -1, -1);
    MEMORY[0x1A590EEC0](v25, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE15scopeIdentifier14forSharedAlbumSSSgSo17PHAssetCollectionC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = a1;
      v15 = [v13 cloudGUID];
      v11 = sub_1A524C674();

      return v11;
    }

    v16 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v16, v2);
    v17 = a1;
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "An invalid asset collection was passed in to scopeIdentifier(forSharedAlbum:): %@", v20, 0xCu);
      sub_1A3CB65E4(v21);
      MEMORY[0x1A590EEC0](v21, -1, -1);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v7 scopeIdentifier];
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = sub_1A524C674();

  return v11;
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setTitle_14forSharedAlbum17completionHandlerySS_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, id), uint64_t a5)
{
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v36 = a5;
    sub_1A3C52C70(0, &qword_1EB126910);
    v20 = [swift_getObjCClassFromMetadata() sharedInstance];
    v21 = [v20 simulateErrorWhileRenaming];

    if ((v21 & 1) == 0)
    {
      sub_1A524CC74();
      v32 = sub_1A524CCB4();
      (*(*(v32 - 8) + 56))(v19, 0, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = a3;
      v33[5] = a1;
      v33[6] = a2;
      v33[7] = a4;
      v33[8] = v36;
      v34 = a3;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v22 = sub_1A3C56D80();
    (*(v11 + 16))(v16, v22, v10);
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A3C1C000, v23, v24, "Simulating error during setTitle(_:forSharedAlbum:completionHandler:)", v25, 2u);
      MEMORY[0x1A590EEC0](v25, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    if (a4)
    {
      v26 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:1 userInfo:0];
      v27 = v26;
LABEL_11:
      a4(0, v27);
    }
  }

  else
  {
    v28 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v28, v10);
    v29 = sub_1A5246F04();
    v30 = sub_1A524D244();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1A3C1C000, v29, v30, "An invalid asset collection was passed in to setTitle(_:forSharedAlbum:completionHandler:)", v31, 2u);
      MEMORY[0x1A590EEC0](v31, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    if (a4)
    {
      v26 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      v27 = v26;
      goto LABEL_11;
    }
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE031hasReachedLimitOfAcceptedSharedB02inSbSo14PHPhotoLibraryC_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 simulateHasReachedLimitOfAcceptedSharedAlbums];

  if (v7)
  {
    v8 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Simulating user has reached max limit of subscribed shared albums", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  v12 = [a1 px_standardLibrarySpecificFetchOptions];
  sub_1A3C52C70(0, &unk_1EB120A20);
  v13 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:102 options:v12];
  v14 = [objc_opt_self() maxSubscribedStreams];
  if ([v13 count] < v14)
  {
LABEL_13:

    return;
  }

  v15 = [v13 count];
  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  v16 = v15;
  if (!v15)
  {
LABEL_14:

    return;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = [v13 objectAtIndex_];
    v20 = [v19 status];

    if (v20 != 3)
    {
      goto LABEL_9;
    }

    if (__OFADD__(v17++, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v16 == ++v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_1A4088D58()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4078148(v5, v6, v7, v2, v3, v4);
}

void sub_1A4088E00(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  _Block_copy(a2);
  if (v12)
  {
    v13 = a1;
    sub_1A524CC74();
    v14 = sub_1A524CCB4();
    (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    v15[5] = sub_1A3FABAE4;
    v15[6] = v11;

    sub_1A3D4D930(0, 0, v10, &unk_1A5316740, v15);
  }

  else
  {
    v16 = sub_1A3C56D80();
    (*(v5 + 16))(v7, v16, v4);
    v17 = sub_1A5246F04();
    v18 = sub_1A524D244();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1A3C1C000, v17, v18, "An invalid asset collection was passed in to resendInvitationToParticipant:", v19, 2u);
      MEMORY[0x1A590EEC0](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v20 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    v21 = sub_1A5240B74();
    (a2)[2](a2, 0, v21);
  }
}

void sub_1A4089140(void *a1, void (*a2)(void, id), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  v28 = a5;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    sub_1A524CC74();
    v20 = sub_1A524CCB4();
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v18;
    v21[5] = a2;
    v21[6] = a3;
    sub_1A3C66EE8(a2);
    sub_1A3D4D930(0, 0, v16, v28, v21);
  }

  else
  {
    v22 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v22, v10);
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A3C1C000, v23, v24, a6, v25, 2u);
      MEMORY[0x1A590EEC0](v25, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    if (a2)
    {
      v26 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      a2(0, v26);
    }
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18inviteParticipants_13toSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524CC74();
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = a1;
    v16[6] = a3;
    v16[7] = a4;
    v17 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18 = sub_1A3C56D80();
  (*(v9 + 16))(v11, v18, v8);
  v19 = sub_1A5246F04();
  v20 = sub_1A524D244();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1A3C1C000, v19, v20, "An invalid asset collection was passed in to inviteParticipants:", v21, 2u);
    MEMORY[0x1A590EEC0](v21, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (a3)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    a3(0, v22);
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE16resendInvitation2to13inSharedAlbum17completionHandlerySo0aK11ParticipantC_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(void *a1, void *a2, void (*a3)(void, id), uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524CC74();
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = a4;
    v17 = a1;
    v18 = a2;
    sub_1A3C66EE8(a3);
    sub_1A3D4D930(0, 0, v14, &unk_1A53168D8, v16);
  }

  else
  {
    v19 = sub_1A3C56D80();
    (*(v9 + 16))(v11, v19, v8);
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v20, v21, "An invalid asset collection was passed in to resendInvitationToParticipant:", v22, 2u);
      MEMORY[0x1A590EEC0](v22, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    if (a3)
    {
      v23 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      a3(0, v23);
    }
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE18removeParticipants_15fromSharedAlbum17completionHandlerySaySo0aJ11ParticipantCG_So17PHAssetCollectionCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1A524CC74();
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = a4;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v17 = sub_1A3C56D80();
  (*(v9 + 16))(v11, v17, v8);
  v18 = sub_1A5246F04();
  v19 = sub_1A524D244();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1A3C1C000, v18, v19, "An invalid asset collection was passed in to removeParticipants:", v20, 2u);
    MEMORY[0x1A590EEC0](v20, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (a3)
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
    a3(0, v21);
  }
}

void sub_1A4089D24(char a1, void *a2, void (*a3)(void, id), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v28 = a7;
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v27 - v17;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    sub_1A524CC74();
    v19 = sub_1A524CCB4();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = a2;
    *(v20 + 40) = a1 & 1;
    *(v20 + 48) = a3;
    *(v20 + 56) = a4;
    v21 = a2;
    sub_1A3C66EE8(a3);
    sub_1A3D4D930(0, 0, v18, a6, v20);
  }

  else
  {
    v22 = sub_1A3C56D80();
    (*(v13 + 16))(v15, v22, v12);
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A3C1C000, v23, v24, v28, v25, 2u);
      MEMORY[0x1A590EEC0](v25, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    if (a3)
    {
      v26 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"PXSharedAlbumsErrorDomain" code:2 userInfo:0];
      a3(0, v26);
    }
  }
}

uint64_t sub_1A408A03C(uint64_t a1, uint64_t a2)
{
  sub_1A408BC44(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE8setLiked2to9forAssets17completionHandlerySb_So17PXFastEnumeration_pySb_s5Error_pSgtcSgtFZ_0(int a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  v73 = *MEMORY[0x1E69E9840];
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v60 - v9;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = sub_1A5240C64();
  v66 = *(v20 - 8);
  v67 = v20;
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 count] < 1)
  {
    v27 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v27, v10);
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v63 = v10;
      *&v72[0] = v31;
      *v30 = 136315138;
      sub_1A3C2EF94();
    }

    (*(v11 + 8))(v13, v10);
    if (a3)
    {
      sub_1A408C0E8();
      v41 = swift_allocError();
      *v42 = 1;
      *(v42 + 8) = 1;
      a3(0, v41);
    }
  }

  else
  {
    v65 = a3;
    *&v72[0] = 0;
    v62 = a1;
    if (sub_1A40805A4(a1 & 1, a2, v72))
    {
      v61 = a4;
      v24 = MEMORY[0x1E69E7CC0];
      v68 = MEMORY[0x1E69E7CC0];
      v60 = *&v72[0];
      swift_unknownObjectRetain();
      sub_1A5240C74();
      sub_1A5240C54();
      v25 = MEMORY[0x1E69E7CA0];
      if (v71)
      {
        v63 = v10;
        sub_1A3C57128(&v70, v72);
        sub_1A3C2F0BC(v72, &v70);
        sub_1A3C52C70(0, &qword_1EB126660);
        if (!swift_dynamicCast())
        {
LABEL_22:

          v46 = sub_1A3C56D80();
          v47 = v63;
          (*(v11 + 16))(v19, v46, v63);
          sub_1A3C2F0BC(v72, &v70);
          v48 = sub_1A5246F04();
          v49 = sub_1A524D244();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v69[4] = swift_slowAlloc();
            *v50 = 136315138;
            sub_1A3C2F0BC(&v70, v69);
            sub_1A524C714();
            __swift_destroy_boxed_opaque_existential_0(&v70);
            sub_1A3C2EF94();
          }

          __swift_destroy_boxed_opaque_existential_0(&v70);
          (*(v11 + 8))(v19, v47);
          v53 = v65;
          if (v65)
          {
            sub_1A408C0E8();
            v54 = swift_allocError();
            *v55 = 1;
            *(v55 + 8) = 1;
            v56 = sub_1A5240B74();
            v53(0, v56);

            __swift_destroy_boxed_opaque_existential_0(v72);
            (*(v66 + 8))(v23, v67);

LABEL_31:
            return;
          }

          __swift_destroy_boxed_opaque_existential_0(v72);
LABEL_30:
          (*(v66 + 8))(v23, v67);
          goto LABEL_31;
        }

        while (1)
        {
          v26 = v69[0];
          MEMORY[0x1A5907D70]();
          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          __swift_destroy_boxed_opaque_existential_0(v72);
          v24 = v68;
          sub_1A5240C54();
          if (!v71)
          {
            break;
          }

          sub_1A3C57128(&v70, v72);
          sub_1A3C2F0BC(v72, &v70);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v52 = v62;
        v51 = v65;
      }

      else
      {
        v51 = v65;
        v52 = v62;
      }

      sub_1A3C2C6B8(&v70, &qword_1EB126130, v25 + 8, MEMORY[0x1E69E6720], sub_1A3C4EDC8);
      v57 = v64;
      sub_1A524CC74();
      v58 = sub_1A524CCB4();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      v59 = swift_allocObject();
      *(v59 + 16) = 0;
      *(v59 + 24) = 0;
      *(v59 + 32) = v52 & 1;
      *(v59 + 40) = v24;
      *(v59 + 48) = v51;
      *(v59 + 56) = v61;
      sub_1A3C66EE8(v51);
      sub_1A3D4D930(0, 0, v57, &unk_1A53167C8, v59);

      goto LABEL_30;
    }

    v32 = *&v72[0];
    v33 = sub_1A3C56D80();
    (*(v11 + 16))(v16, v33, v10);
    v34 = sub_1A5246F04();
    v35 = sub_1A524D244();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67 = v11;
      v64 = v37;
      v66 = swift_slowAlloc();
      *&v72[0] = v66;
      *v36 = 136315394;
      if (v62)
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v39 = v38;
      v63 = v10;
      v40 = v39;
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v11 + 8))(v16, v10);
    v43 = v65;
    if (v65)
    {
      sub_1A408C0E8();
      v44 = swift_allocError();
      *v45 = 1;
      *(v45 + 8) = 1;
      v43(0, v44);
    }
  }
}

uint64_t sub_1A408AB5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A408CAB8();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE10addComment_7toAsset17completionHandlerySS_So7PHAssetCySSSg_s5Error_pSgtcSgtFZ_0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void, void), uint64_t a5)
{
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *&v15 = MEMORY[0x1EEE9AC00](v14 - 8).n128_u64[0];
  v17 = v35 - v16;
  v18 = [a3 photoLibrary];
  if (v18)
  {
    v19 = v18;
    sub_1A524CC74();
    v20 = sub_1A524CCB4();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a3;
    v21[6] = a1;
    v21[7] = a2;
    v21[8] = a4;
    v21[9] = a5;
    v22 = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v23 = sub_1A3C56D80();
  (*(v11 + 16))(v13, v23, v10);
  v24 = a3;
  v25 = sub_1A5246F04();
  v26 = sub_1A524D244();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v27 = 136315138;
    v28 = v24;
    v29 = [v28 description];
    v35[1] = v26;
    v30 = v29;
    sub_1A524C674();
    v37 = a4;

    sub_1A3C2EF94();
  }

  (*(v11 + 8))(v13, v10);
  if (a4)
  {
    sub_1A408C0E8();
    v31 = a4;
    v32 = swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 1;
    v34 = sub_1A5240B74();
    v31(0, 0, v34);
  }
}

void _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE14removeComments_9fromAsset17completionHandlerySo17PXFastEnumeration_p_So7PHAssetCySb_s5Error_pSgtcSgtFZ_0(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4)
{
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v64 - v9;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v64 - v15;
  v16 = sub_1A5240C64();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a2 photoLibrary];
  if (v21)
  {
    v66 = a2;
    v68 = v21;
    v70 = v17;
    v71 = v16;
    v65 = v11;
    v67 = v10;
    v74 = a4;
    v75 = a3;
    v22 = swift_allocObject();
    v69 = v22;
    *(v22 + 16) = MEMORY[0x1E69E7CC0];
    v23 = (v22 + 16);
    swift_unknownObjectRetain();
    v24 = a1;
    sub_1A5240C74();
    sub_1A5240C54();
    v25 = MEMORY[0x1E69E7CA0];
    if (v78)
    {
      while (1)
      {
        sub_1A3C57128(&v77, v79);
        sub_1A3C2F0BC(v79, &v77);
        sub_1A3C52C70(0, &unk_1EB131200);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v26 = v76[0];
        MEMORY[0x1A5907D70]();
        if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();

        __swift_destroy_boxed_opaque_existential_0(v79);
        sub_1A5240C54();
        if (!v78)
        {
          goto LABEL_7;
        }
      }

      v48 = sub_1A3C56D80();
      v49 = v65;
      v50 = v72;
      v51 = v67;
      (*(v65 + 16))(v72, v48, v67);
      sub_1A3C2F0BC(v79, &v77);
      v52 = sub_1A5246F04();
      v53 = sub_1A524D244();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v76[4] = swift_slowAlloc();
        *v54 = 136315138;
        sub_1A3C2F0BC(&v77, v76);
        sub_1A524C714();
        __swift_destroy_boxed_opaque_existential_0(&v77);
        sub_1A3C2EF94();
      }

      __swift_destroy_boxed_opaque_existential_0(&v77);
      (*(v49 + 8))(v50, v51);
      v58 = v75;
      v60 = v70;
      v59 = v71;
      if (v75)
      {
        sub_1A408C0E8();
        v61 = swift_allocError();
        *v62 = 1;
        *(v62 + 8) = 1;
        v63 = sub_1A5240B74();
        v58(0, v63);

        __swift_destroy_boxed_opaque_existential_0(v79);
        (*(v60 + 8))(v20, v59);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v79);
        (*(v60 + 8))(v20, v59);
      }
    }

    else
    {
LABEL_7:
      sub_1A3C2C6B8(&v77, &qword_1EB126130, v25 + 8, MEMORY[0x1E69E6720], sub_1A3C4EDC8);
      v27 = v73;
      sub_1A524CC74();
      v28 = sub_1A524CCB4();
      (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v31 = v68;
      v30 = v69;
      v29[4] = v68;
      v29[5] = v30;
      v32 = v66;
      v29[6] = v66;
      v34 = v74;
      v33 = v75;
      v29[7] = v24;
      v29[8] = v33;
      v29[9] = v34;
      swift_unknownObjectRetain();
      v35 = v31;

      v36 = v32;
      sub_1A3C66EE8(v33);
      sub_1A3D4D930(0, 0, v27, &unk_1A5316768, v29);

      (*(v70 + 8))(v20, v71);
    }
  }

  else
  {
    v37 = a4;
    v38 = sub_1A3C56D80();
    (*(v11 + 16))(v13, v38, v10);
    v39 = a2;
    v40 = sub_1A5246F04();
    v41 = sub_1A524D244();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v75 = a3;
      v43 = v42;
      v44 = swift_slowAlloc();
      v74 = v37;
      *&v79[0] = v44;
      *v43 = 136315138;
      v45 = v39;
      v46 = [v45 description];
      v67 = v10;
      v47 = v46;
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v11 + 8))(v13, v10);
    if (a3)
    {
      sub_1A408C0E8();
      v55 = swift_allocError();
      *v56 = 1;
      *(v56 + 8) = 1;
      v57 = sub_1A5240B74();
      a3(0, v57);
    }
  }
}

uint64_t _sSo23PXSharedAlbumsUtilitiesC12PhotosUICoreE23markSharedAlbumAsViewedyySo17PHAssetCollectionCFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A408BC44(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    sub_1A524CC94();
    v12 = sub_1A524CCB4();
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v10;
    sub_1A3D4D930(0, 0, v8, &unk_1A5316750, v13);
  }

  else
  {
    v15 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v15, v2);
    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A3C1C000, v16, v17, "An invalid asset collection was passed in to markSharedAlbumAsViewed:", v18, 2u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A408BB20(uint64_t a1, uint64_t a2)
{
  sub_1A3D63A58(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A408BB84(uint64_t a1, uint64_t a2)
{
  sub_1A3D63A58(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A408BBE8(uint64_t a1)
{
  sub_1A3D63A58(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A408BC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for HostingViewControllerProvider()
{
  result = qword_1EB1A4428;
  if (!qword_1EB1A4428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A408BD28()
{
  result = qword_1EB131178;
  if (!qword_1EB131178)
  {
    sub_1A408BC44(255, &qword_1EB131160, sub_1A408BCA8, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131178);
  }

  return result;
}

unint64_t sub_1A408BDB4()
{
  result = qword_1EB131180;
  if (!qword_1EB131180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131180);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeGridStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LemonadeGridStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1A408BE58(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A408BE74(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1A408BED0()
{
  sub_1A3D63A58(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t objectdestroyTm_21()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A408BFC8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4085D54(v3, v4, v5, v2);
}

void sub_1A408C05C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    *(v2 + 16) = 1;
    [v4 markAsViewed];
  }
}

unint64_t sub_1A408C0E8()
{
  result = qword_1EB131190;
  if (!qword_1EB131190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131190);
  }

  return result;
}

uint64_t sub_1A408C13C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A40848F0(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A408C208()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A40858A8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A408C2C4()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4085564(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408C370()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4083604(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A408C45C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A40843E8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408C508()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4084098(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408C5B4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4080C28(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_1A408C664(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4083410(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408C718(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

void sub_1A408C7C4()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_1A524E2B4();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = objc_opt_self();
  v4 = objc_opt_self();
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    v6 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v6, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v3 creationRequestForAssetCommentLike];
      v10 = [v9 placeholderForCreatedAssetComment];
      v11 = [v5 changeRequestForAsset_];
      [v11 addLike_];
    }

    while (v2 != v6);
  }
}

void sub_1A408C90C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_17:
    v3 = sub_1A524E2B4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  for (i = 4; ; ++i)
  {
    v5 = i - 4;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](i - 4, v1);
    }

    else
    {
      if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * i);
    }

    v7 = v6;
    v8 = i - 3;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 uuid];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v11 = sub_1A524C674();
    v13 = v12;

    if (*(v2 + 16))
    {
      v14 = sub_1A3C5DCA4(v11, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v2 + 56) + 8 * v14);
        v18 = objc_opt_self();
        v19 = v17;
        v20 = [v18 changeRequestForAsset_];
        v21 = v19;
        [v20 removeLike_];
      }
    }

    else
    {
    }

    if (v8 == v3)
    {
      return;
    }
  }

  __break(1u);
}

void sub_1A408CAB8()
{
  if (!qword_1EB131218)
  {
    sub_1A3C52C70(255, &unk_1EB131200);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131218);
    }
  }
}

void sub_1A408CB30()
{
  if (!qword_1EB131238)
  {
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131238);
    }
  }
}

uint64_t sub_1A408CB88()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407FA5C(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A408CC38()
{
  v14 = *(v0 + 16);
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = objc_opt_self();
    v13 = v14;
    v6 = [v12 changeRequestForCloudSharedAlbum_];
    if (v6)
    {
      v7 = v6;
      v8 = sel_setIsPublic_;
      v9 = v1;
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = v14;
  v6 = [v4 changeRequestForCollectionShare_];
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sel_setPublicURLState_;
  if (v1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

LABEL_9:
  [v6 v8];
}

uint64_t sub_1A408CD84(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408CE38(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A408CEE4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407E618(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A408CF94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = v1;
    v8 = [v6 changeRequestForCollectionShare_];
    if (v8)
    {
      if (v2)
      {
        v9 = 0x7FFFLL;
      }

      else
      {
        v9 = 1;
      }

      [v8 setNotificationState_];
      goto LABEL_10;
    }

LABEL_13:

    swift_beginAccess();
    *(v3 + 16) = 0;
    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v7 = v1;
  v13 = [v12 changeRequestForCloudSharedAlbum_];
  if (!v13)
  {
    goto LABEL_13;
  }

  [v13 setCloudNotificationsEnabled_];
LABEL_10:
}

uint64_t sub_1A408D100(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408D1B4(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t objectdestroy_176Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408D2B0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407D644(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroy_202Tm()
{

  return swift_deallocObject();
}

void sub_1A408D3A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = v1;
    v8 = [v6 changeRequestForCollectionShare_];
    if (!v8)
    {

      swift_beginAccess();
      *(v3 + 16) = 0;
      return;
    }

    if (v2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    [v8 setPublicPermission_];
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = objc_opt_self();
    v15 = v1;
    v13 = [v12 changeRequestForCloudSharedAlbum_];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v7 = v13;
    [v13 setCloudMultipleContributorsEnabled_];
  }
}

uint64_t sub_1A408D510(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408D5C4(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t objectdestroy_104Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  if (*(v1 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408D6D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407B9A0(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408D784(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408D838(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

void sub_1A408D8E4()
{
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() changeRequestForCollectionShare_];
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    *(v1 + 16) = 1;
    sub_1A3C52C70(0, &qword_1EB1209C8);
    v4 = sub_1A524CA14();
    [v3 stopSharingWithParticipants_];
  }
}

unint64_t sub_1A408D9A4()
{
  result = qword_1EB131240;
  if (!qword_1EB131240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131240);
  }

  return result;
}

uint64_t sub_1A408D9F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A407A4E4(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408DAA4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A407B7B0(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1A408DB58(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A407B688(a1, v6, v7, v5, v4);
}

uint64_t objectdestroy_124Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));
  if (*(v1 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408DC6C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4079900(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1A408DD18(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A408DDC4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_91Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A408DEC4(uint64_t result)
{
  if (result)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A408E0E4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4079244(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A408E18C(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4079790(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_313Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408E290()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4078A10(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A408E338(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A407900C(a1, v7, v8, v4, v5, v6);
}

void sub_1A408E3EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1A3C34400(255, &qword_1EB126160);
    v3 = sub_1A524CDF4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1A408E464()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4078850(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1A408E50C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4078744(v4, v5, v6, v2, v3);
}

uint64_t sub_1A408E5A4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A407738C(v7, v8, v9, v2, v3, v4, v5, v6);
}

void sub_1A408E660()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v9 = v1;
    v6 = [v5 changeRequestForCollectionShare_];
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      *(v2 + 16) = 1;
      v8 = sub_1A524C634();
      [v7 setTitle_];
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_136Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408E7C4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3CA8098;

  return sub_1A4077CBC(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_141Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A408E8C0(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A4077C20(a1, v6, v7, v5, v4);
}

uint64_t sub_1A408E96C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A408EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v7;
  v39 = v8;
  v37 = a1;
  v11 = sub_1A408EE40(v9, v10, v7, v8);
  v12 = *(v11 + 2);
  if (v12)
  {
    v33 = v5 + 16;
    v32 = v6 + 7;
    v35 = v5;
    v31 = v5 + 32;
    v30 = v43;
    v13 = 32;
    v34 = v11;
    do
    {
      v25 = *&v11[v13 + 16];
      v24 = *&v11[v13 + 32];
      v26 = v11[v13 + 48];
      v45 = *&v11[v13];
      v46 = v25;
      v48 = v26;
      v47 = v24;
      v27 = *(&v25 + 1);
      sub_1A408EF48(&v45, v44);
      v28 = sub_1A524C634();
      if (v27)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v41 = v47;
      v14 = v35;
      v15 = v36;
      v16 = v38;
      (*(v35 + 16))(v36, v37, v38);
      v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v18 = (v32 + v17) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      v20 = v39;
      *(v19 + 16) = v16;
      *(v19 + 24) = v20;
      (*(v14 + 32))(v19 + v17, v15, v16);
      v21 = v19 + v18;
      v22 = v46;
      *v21 = v45;
      *(v21 + 16) = v22;
      *(v21 + 32) = v47;
      *(v21 + 48) = v48;
      v43[2] = sub_1A408EF80;
      v43[3] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v43[0] = sub_1A3F4ECC0;
      v43[1] = &block_descriptor_89;
      v23 = _Block_copy(aBlock);
      sub_1A408EF48(&v45, v44);

      [v40 addItemWithTitle:v28 systemImageName:0 state:v41 options:v23 handler:{v30, v31}];
      _Block_release(v23);

      sub_1A408F084(&v45);
      v13 += 56;
      --v12;
      v11 = v34;
    }

    while (v12);
  }
}

char *sub_1A408EE40(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  (*(v9 + 16))(&v20, a3, v9);
  v10 = v20;
  v11 = (*(v9 + 24))(a3, v9);
  v12 = (*(v9 + 32))(a3, v9);
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v11;
  v16 = a2;
  v17 = v4;
  v18 = v10;
  v19 = a1;
  v13 = sub_1A408F420(sub_1A408F0B4, v15, v12);

  return v13;
}

void sub_1A408EF80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v0 + ((*(*(v1 - 8) + 64) + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(v3 + 16);
  *(v4 + 32) = *v3;
  *(v4 + 48) = v5;
  *(v4 + 64) = *(v3 + 32);
  *(v4 + 80) = *(v3 + 48);
  sub_1A408EF48(v3, v6);
  sub_1A5245BF4();
}

unint64_t sub_1A408F0B4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v37 = *(v2 + 56);
  v8 = *(v2 + 57);
  v9 = *a1;
  result = sub_1A408F39C(*a1, v6);
  v11 = result;
  if ((v7 & 1) == 0 && (result & 1) == 0)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v35 = v8;
  sub_1A524E404();

  v36[0] = 0xD000000000000022;
  v36[1] = 0x80000001A53C5C50;
  v38 = v9;
  v12 = sub_1A41B8178();
  MEMORY[0x1A5907B60](v12);

  v13 = sub_1A524C634();

  v14 = PXLocalizedString(v13);

  v15 = sub_1A524C674();
  v17 = v16;

  LOBYTE(v36[0]) = v9;
  v18 = (*(*(v4 + 8) + 40))(v36, v5);
  if ((v19 & 1) == 0)
  {
    v20 = v18;
    v21 = sub_1A524C634();
    v22 = PXLocalizedString(v21);

    sub_1A524C674();
    sub_1A3E072BC();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A52FC9F0;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v24 = sub_1A3D710E8();
    *(v23 + 64) = v24;
    *(v23 + 32) = v15;
    *(v23 + 40) = v17;
    v25 = PXLocalizedStringFromInteger(v20);
    v26 = sub_1A524C674();
    v28 = v27;

    *(v23 + 96) = MEMORY[0x1E69E6158];
    *(v23 + 104) = v24;
    *(v23 + 72) = v26;
    *(v23 + 80) = v28;
    v15 = sub_1A524C6C4();
    v17 = v29;
  }

  v30 = v35;
  if (v9 == 6)
  {
    if (v37 != 6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v36[0]) = v9;
    if (v37 == 6 || (v38 = v37, sub_1A3F5F320(), v31 = sub_1A524C594(), v30 = v35, (v31 & 1) == 0))
    {
LABEL_13:
      v32 = 0;
      if (v30)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  v32 = 1;
  if (v30)
  {
LABEL_14:
    LOBYTE(v36[0]) = v9;
    result = LemonadeCurationKind.listedSystemImageName.getter();
    goto LABEL_15;
  }

LABEL_12:
  result = 0;
  v33 = 0;
LABEL_15:
  v34 = 4;
  if (v11)
  {
    v34 = 0;
  }

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = result;
  *(a2 + 24) = v33;
  *(a2 + 32) = v32;
  *(a2 + 40) = v34;
  *(a2 + 48) = v9;
  return result;
}

BOOL sub_1A408F39C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_1A3F5F320();
  }

  while ((sub_1A524C594() & 1) == 0);
  return v4 != 0;
}

char *sub_1A408F420(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *v5++;
    v28 = v7;
    a1(&v20, &v28);
    if (v3)
    {
      break;
    }

    v9 = v20;
    v8 = v21;
    v11 = v22;
    v10 = v23;
    if (v21)
    {
      v18 = v24;
      v19 = v25;
      v27 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1A408F794(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      v14 = v6;
      if (v13 >= v12 >> 1)
      {
        v14 = sub_1A408F794((v12 > 1), v13 + 1, 1, v6);
      }

      *(v14 + 2) = v13 + 1;
      v6 = v14;
      v15 = &v14[56 * v13];
      *(v15 + 4) = v9;
      *(v15 + 5) = v8;
      *(v15 + 6) = v11;
      *(v15 + 7) = v10;
      *(v15 + 8) = v18;
      *(v15 + 9) = v19;
      v15[80] = v27;
    }

    else
    {
      sub_1A408F8D0(v20, 0);
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_1A408F588(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1A408F5D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A408F6E8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXMenuItemOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1A408F794(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A408F914(0, &qword_1EB1312E8, &type metadata for LemonadeCurationSectionItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A408F8D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1A408F914(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A408F964()
{
  v5 = *(v0 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 16);
  v3 = swift_checkMetadataState();
  return v2(&v5, v3, AssociatedConformanceWitness);
}

char *LemonadeRootTitleSubtitleView.init(tabIdentifier:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = &v1[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleWindowConstraint] = 0;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAllowsDefaultTighteningForTruncation_];
  [v6 setAdjustsFontForContentSizeCategory_];
  *&v1[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel] = v6;
  v7 = [objc_allocWithZone(type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  *&v7[OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_horizontalHitAreaExpansion] = 0x4034000000000000;
  *&v7[OBJC_IVAR____TtCC12PhotosUICore29LemonadeRootTitleSubtitleViewP33_5C469E53BEB58F25AAF0461687BE66D120ExpandedHitAreaLabel_verticalHitAreaExpansion] = 0x4034000000000000;
  *&v1[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel] = v7;
  v1[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_tabIdentifier] = v4;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = *&v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel];
  v10 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel;
  v11 = v8;
  [v11 addSubview_];
  v12 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel;
  [v11 addSubview_];
  v13 = *&v8[v10];
  v14 = objc_opt_self();
  v15 = *MEMORY[0x1E69DDD58];
  v16 = *MEMORY[0x1E69DB958];
  v17 = v13;
  v18 = [v14 _preferredFontForTextStyle_weight_];
  [v17 setFont_];

  v19 = *MEMORY[0x1E69DDD80];
  v20 = *&v11[v12];
  v21 = [v14 _preferredFontForTextStyle_weight_];
  [v20 setFont_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
  [*&v11[v12] setShowsLargeContentViewer_];
  [*&v11[v12] addInteraction_];
  v47 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v11 action:sel_handleSubtitleLabelTapGesture];

  v23 = [v22 gestureRecognizerForExclusionRelationship];
  [v47 requireGestureRecognizerToFail_];

  [*&v11[v12] addGestureRecognizer_];
  [v11 setClipsToBounds_];

  v46 = objc_opt_self();
  sub_1A3C69A2C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A5316C10;
  v25 = v10;
  v26 = [*&v8[v10] centerYAnchor];
  v27 = [v11 centerYAnchor];

  v28 = [v26 constraintEqualToAnchor_];
  *(v24 + 32) = v28;
  v29 = [*&v8[v25] bottomAnchor];
  v30 = [*&v11[v12] topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v24 + 40) = v31;
  v32 = [*&v11[v12] bottomAnchor];
  v33 = [v11 bottomAnchor];

  v34 = [v32 constraintLessThanOrEqualToAnchor_];
  *(v24 + 48) = v34;
  v35 = [*&v8[v25] leadingAnchor];
  v36 = [v11 leadingAnchor];

  v37 = [v35 constraintEqualToAnchor_];
  *(v24 + 56) = v37;
  v38 = [*&v11[v12] leadingAnchor];
  v39 = [v11 leadingAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v24 + 64) = v40;
  v41 = [*&v8[v25] trailingAnchor];
  v42 = [v11 trailingAnchor];

  v43 = [v41 constraintLessThanOrEqualToAnchor_];
  *(v24 + 72) = v43;
  sub_1A3C52C70(0, &qword_1EB126A30);
  v44 = sub_1A524CA14();

  [v46 activateConstraints_];

  return v11;
}

Swift::Void __swiftcall LemonadeRootTitleSubtitleView.didMoveToSuperview()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  [v0 setNeedsUpdateConstraints];
}

Swift::Void __swiftcall LemonadeRootTitleSubtitleView.updateConstraints()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_updateConstraints);
  v1 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleWindowConstraint;
  v2 = *&v0[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleWindowConstraint];
  if (v2)
  {
    [v2 setActive_];
  }

  v3 = [v0 window];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 trailingAnchor];

    v6 = [*&v0[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel] trailingAnchor];
    v7 = [v5 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];
  }

  else
  {
    v7 = 0;
  }

  v8 = *&v0[v1];
  *&v0[v1] = v7;

  v9 = *&v0[v1];
  if (v9)
  {
    [v9 setActive_];
  }
}

id sub_1A40903B4(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_titleLabel];
  if (a2)
  {
    v4 = sub_1A524C634();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];

  [v2 invalidateIntrinsicContentSize];

  return [v2 setNeedsLayout];
}

void sub_1A409043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v65 = a7;
  v66 = a6;
  v68 = a1;
  sub_1A4091A20(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - v16;
  v18 = OBJC_IVAR___PXLemonadeRootTitleSubtitleView_tabIdentifier;
  LOBYTE(v70) = v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_tabIdentifier];
  LOBYTE(v72[0]) = 0;
  v19 = static LemonadeRootSubtitleTabIdentifier.== infix(_:_:)(&v70, v72);
  v20 = objc_opt_self();
  v21 = &selRef_labelColor;
  if (!v19)
  {
    v21 = &selRef_secondaryLabelColor;
  }

  v22 = [v20 *v21];
  LOBYTE(v70) = v8[v18];
  LOBYTE(v72[0]) = 0;
  if ((a5 == 0) | !static LemonadeRootSubtitleTabIdentifier.== infix(_:_:)(&v70, v72))
  {
    v23 = v22;
  }

  else
  {
    v23 = a5;
  }

  v24 = v22;
  v67 = v23;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  v72[0] = 0;
  if (a4)
  {
    v25 = sub_1A524C634();
    v26 = [objc_opt_self() systemImageNamed_];

    if (v26)
    {
      v27 = [objc_opt_self() configurationWithScale_];
      v28 = [v26 imageWithSymbolConfiguration_];

      if (v28)
      {
        if (a2)
        {
          v64 = v24;
          v63 = v28;
          if (v66)
          {
            v29 = sub_1A524C634();
            v62 = PXLocalizedAttributedString(v29);

            v30 = sub_1A5241284();
            v60 = *(v30 - 8);
            v61 = v30;
            (*(v60 + 56))(v17, 1, 1, v30);
            sub_1A4091A20(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1A52FF950;
            v70 = 0;
            v71 = 0xE000000000000000;
            sub_1A524ED54();
            v33 = v70;
            v32 = v71;
            v34 = MEMORY[0x1E69E6158];
            *(inited + 56) = MEMORY[0x1E69E6158];
            v35 = sub_1A3D710E8();
            *(inited + 32) = v33;
            *(inited + 40) = v32;
            *(inited + 96) = v34;
            *(inited + 104) = v35;
            v36 = v68;
            *(inited + 64) = v35;
            *(inited + 72) = v36;
            *(inited + 80) = a2;
            v70 = 0;
            v71 = 0xE000000000000000;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v43 = sub_1A524C634();
          v62 = PXLocalizedAttributedString(v43);

          v44 = sub_1A5241284();
          v61 = *(v44 - 8);
          (*(v61 + 56))(v15, 1, 1, v44);
          sub_1A4091A20(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
          v45 = swift_initStackObject();
          *(v45 + 16) = xmmword_1A52FC9F0;
          v70 = 0;
          v71 = 0xE000000000000000;
          sub_1A524ED54();
          v46 = v70;
          v47 = v71;
          v48 = MEMORY[0x1E69E6158];
          *(v45 + 56) = MEMORY[0x1E69E6158];
          v49 = sub_1A3D710E8();
          *(v45 + 32) = v46;
          *(v45 + 40) = v47;
          *(v45 + 96) = v48;
          *(v45 + 104) = v49;
          v50 = v68;
          *(v45 + 64) = v49;
          *(v45 + 72) = v50;
          *(v45 + 80) = a2;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v42 = objc_opt_self();
        v41 = v28;
        v38 = [v42 textAttachmentWithImage_];
        sub_1A409110C(v72, v8, v67);

        type metadata accessor for Key(0);
        sub_1A3C8C10C(&unk_1EB1208B0);
        v39 = sub_1A524C3D4();

        v40 = [objc_opt_self() attributedStringWithAttachment:v38 attributes:v39];

        goto LABEL_14;
      }
    }
  }

  if (a2)
  {
    sub_1A4090F6C(v69, v8, v24);
    v37 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v38 = sub_1A524C634();
    type metadata accessor for Key(0);
    sub_1A3C8C10C(&unk_1EB1208B0);
    v39 = sub_1A524C3D4();

    v40 = [v37 initWithString:v38 attributes:v39];
    v41 = 0;
LABEL_14:

    goto LABEL_18;
  }

  v40 = 0;
  v41 = 0;
LABEL_18:
  v51 = *&v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel];
  [v51 setAttributedText_];
  if (a2)
  {
    v52 = sub_1A524C634();
  }

  else
  {
    v52 = 0;
  }

  [v51 setLargeContentTitle_];

  [v51 setLargeContentImage_];
  v53 = v66;
  if (v66)
  {
    v54 = 1;
  }

  else
  {
    v54 = [objc_opt_self() isEnabled];
  }

  [v51 setUserInteractionEnabled_];
  [v51 setLineBreakMode_];
  [v51 setNumberOfLines_];
  v55 = &v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction];
  v56 = *&v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction];
  v57 = *&v8[OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabelAction + 8];
  v58 = v65;
  *v55 = v53;
  v55[1] = v58;
  sub_1A3D607F0(v53);
  sub_1A3C784D4(v56, v57);
  [v8 invalidateIntrinsicContentSize];
  [v8 setNeedsLayout];
}

id sub_1A4090F6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = (a1 + 16);
  sub_1A4091A20(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *(a2 + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel);
  v9 = v7;
  result = [v8 font];
  if (result)
  {
    v11 = result;
    v12 = sub_1A3C52C70(0, &qword_1EB120610);
    *(inited + 40) = v11;
    v13 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v12;
    *(inited + 72) = v13;
    *(inited + 104) = sub_1A3C52C70(0, &qword_1EB1205C0);
    *(inited + 80) = a3;
    v14 = v13;
    v15 = a3;
    v16 = sub_1A3C8BCC0(inited);
    swift_setDeallocating();
    sub_1A3C8BC40();
    swift_arrayDestroy();
    swift_beginAccess();
    *v5 = v16;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

id sub_1A409110C(unint64_t *a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4091A20(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *(a2 + OBJC_IVAR___PXLemonadeRootTitleSubtitleView_subtitleLabel);
  v9 = v7;
  result = [v8 font];
  if (result)
  {
    v11 = result;
    v12 = sub_1A3C52C70(0, &qword_1EB120610);
    *(inited + 40) = v11;
    v13 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v12;
    *(inited + 72) = v13;
    *(inited + 104) = sub_1A3C52C70(0, &qword_1EB1205C0);
    *(inited + 80) = a3;
    v14 = v13;
    v15 = a3;
    v16 = sub_1A3C8BCC0(inited);
    swift_setDeallocating();
    sub_1A3C8BC40();
    swift_arrayDestroy();
    swift_beginAccess();
    *a1 = v16;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A40912AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1A3C57128(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1A3C35B00(v13);
}

id sub_1A4091560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeRootTitleSubtitleView.ExpandedHitAreaLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LemonadeRootTitleSubtitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LemonadeRootTitleSubtitleView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4091700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  sub_1A3EBECA4(a1, v18);
  if (!v19)
  {
    sub_1A3C35B00(v18);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v16 == 0x6567616D69 && v17 == 0xE500000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    v9 = [objc_opt_self() textAttachmentWithImage_];
    [v6 addAttribute:*MEMORY[0x1E69DB5F8] value:v9 range:{a2, a3}];
    [v6 addAttribute:*MEMORY[0x1E69DB650] value:v8 range:{a2, a3}];

    return;
  }

  if (v16 == 0x6E6F7276656863 && v17 == 0xE700000000000000)
  {
  }

  else
  {
    v10 = sub_1A524EAB4();

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  v11 = sub_1A524C634();
  v12 = [objc_opt_self() systemImageNamed_];

  if (v12)
  {
    v13 = [objc_opt_self() configurationWithScale_];
    v14 = [v12 imageWithSymbolConfiguration_];

    if (v14)
    {
      v15 = [objc_opt_self() textAttachmentWithImage_];
      [v6 addAttribute:*MEMORY[0x1E69DB5F8] value:v15 range:{a2, a3}];
    }
  }
}

void sub_1A4091A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4091A84(double a1, double a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a3;
  v5.f64[1] = a4;
  v4[3] = vcvt_f32_f64(v5);
  sub_1A524D9E4();
}

uint64_t sub_1A4091B5C(unint64_t a1)
{
  if (a1 > 2)
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000043, 0x80000001A53B4830);
    type metadata accessor for PHPersonAssetSortOrder(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v1 = sub_1A524C634();
    v2 = PXLocalizedString(v1);

    v3 = sub_1A524C674();
    return v3;
  }

  return result;
}

uint64_t sub_1A4091E14()
{
  result = sub_1A524C634();
  qword_1EB15C828 = result;
  return result;
}

uint64_t sub_1A4091E4C()
{
  result = sub_1A524C634();
  qword_1EB15C838 = result;
  return result;
}

void sub_1A4091E84()
{
  v1 = v0;
  v2 = sub_1A409222C();
  v3 = [v0 sendingAction];
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  v5 = [v3 identifier];

  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = qword_1EB15C820;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_1A524C674();
  v10 = v9;
  if (v8 == sub_1A524C674() && v10 == v11)
  {

    goto LABEL_16;
  }

  v13 = sub_1A524EAB4();

  if (v13)
  {
LABEL_16:
    v18 = 1;
    goto LABEL_17;
  }

  if (qword_1EB15C830 != -1)
  {
    swift_once();
  }

  v14 = sub_1A524C674();
  v16 = v15;
  if (v14 != sub_1A524C674() || v16 != v17)
  {
    v19 = sub_1A524EAB4();

    if (v19)
    {
      v18 = 2;
      goto LABEL_21;
    }

LABEL_20:
    v20 = [v2 assetSortOrder];
    sub_1A3C52C70(0, &qword_1EB131328);
    v18 = static PXPeopleUtilities.oppositeSortOrder(of:)(v20);
    goto LABEL_21;
  }

  v18 = 2;
LABEL_17:

LABEL_21:
  v21 = [objc_allocWithZone(PXChangePersonAssetsSortOrderAction) initWithPerson:v2 sortOrder:v18];
  v22 = [v1 undoManager];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v23;
  v27[4] = sub_1A40929DC;
  v27[5] = v24;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1A3D6084C;
  v27[3] = &block_descriptor_91;
  v25 = _Block_copy(v27);
  v26 = v2;

  [v21 executeWithUndoManager:v22 completionHandler:v25];

  _Block_release(v25);
}

uint64_t sub_1A409222C()
{
  v1 = [v0 people];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 firstObject];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = [v3 localIdentifier];
  if (!v4)
  {
    sub_1A524C674();
    v4 = sub_1A524C634();
  }

  v5 = [v3 photoLibrary];
  if (!v5)
  {
    __break(1u);
LABEL_10:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = [objc_opt_self() personWithLocalIdentifier:v4 photoLibrary:v5];

  if (v7)
  {

    return v7;
  }

  return v3;
}

id sub_1A4092488()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoKitAssetCollectionChangePersonSortOrder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A40924C0(id result)
{
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      result = [v1 people];
      if (!result)
      {
        return result;
      }

      v2 = result;
      v3 = [result firstObject];
      if (v3)
      {
        v4 = v3;
        v5 = sub_1A4091B5C([v3 assetSortOrder]);

        return v5;
      }
    }

    return 0;
  }

  return result;
}

void sub_1A40925A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = [a1 people];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 firstObject];
  if (!v8)
  {

LABEL_12:
    __break(1u);
    return;
  }

  v30 = v8;
  v9 = [v8 assetSortOrder];
  sub_1A3C52C70(0, &qword_1EB126590);
  v10 = sub_1A524C634();
  v11 = PXLocalizedString(v10);

  sub_1A524C674();
  if (qword_1EB15C830 != -1)
  {
    swift_once();
  }

  v31 = v7;
  v12 = qword_1EB15C838;
  v13 = swift_allocObject();
  *(v13 + 16) = v9 != 1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = v12;

  v15 = sub_1A524DC64();
  v16 = sub_1A524C634();
  v17 = PXLocalizedString(v16);

  sub_1A524C674();
  if (qword_1EB15C820 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB15C828;
  v19 = swift_allocObject();
  *(v19 + 16) = v9 != 1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;

  v20 = v18;
  v21 = sub_1A524DC64();
  v22 = v21;
  if (v9 != 1)
  {
    v21 = v15;
  }

  [v21 setState_];
  v23 = sub_1A524C634();
  v24 = [objc_opt_self() systemImageNamed_];

  sub_1A3C52C70(0, &qword_1EB120608);
  v25 = sub_1A524C634();
  v26 = PXLocalizedString(v25);

  sub_1A524C674();
  sub_1A401FC1C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A52F9DE0;
  *(v27 + 32) = v22;
  *(v27 + 40) = v15;
  v28 = v22;
  v29 = v15;
  sub_1A524DAF4();
}

void sub_1A40929DC(char a1, id a2)
{
  if ((a1 & 1) == 0 && a2)
  {
    v5 = *(v2 + 16);
    v6 = a2;
    v7 = sub_1A524D244();
    v8 = PLPeopleGetLog();
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    if (os_log_type_enabled(v8, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v5;
      *v11 = v5;
      *(v10 + 12) = 2112;
      v12 = a2;
      v13 = v5;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      _os_log_impl(&dword_1A3C1C000, v9, v7, "Error changing sort order for person %@: %@", v10, 0x16u);
      sub_1A3D3F118();
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v11, -1, -1);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      v17 = sub_1A5240B74();
    }

    else
    {
      v17 = 0;
    }

    [v16 completeUserInteractionTaskWithSuccess:a1 & 1 error:v17];
  }
}

uint64_t sub_1A4092BB4()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return (*(v0 + 24))();
  }

  return result;
}

uint64_t sub_1A4092BE8()
{
  if (*(v0 + 16) == 1)
  {
    return (*(v0 + 24))();
  }

  return result;
}

uint64_t type metadata accessor for LemonadeFeatureAvailabilityProcessingView()
{
  result = qword_1EB15D710;
  if (!qword_1EB15D710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4092C6C@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a1;
  sub_1A524B694();
  *a9 = v24;
  *(a9 + 8) = v25;
  *(a9 + 16) = 0;
  v17 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView();
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  v18 = *(v17 + 60);
  v19 = *MEMORY[0x1E69C1E80];
  v20 = sub_1A5242524();
  result = (*(*(v20 - 8) + 104))(a9 + v18, v19, v20);
  *(a9 + 24) = v16;
  *(a9 + 34) = a2;
  *(a9 + 28) = a3;
  *(a9 + 32) = BYTE4(a3) & 1;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 33) = 2;
  *(a9 + 88) = a6;
  *(a9 + 89) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  return result;
}

void sub_1A4092D8C(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  sub_1A524B694();
  *a9 = v25;
  *(a9 + 8) = v26;
  *(a9 + 16) = 0;
  v19 = *(type metadata accessor for LemonadeFeatureAvailabilityProcessingView() + 60);
  v20 = *MEMORY[0x1E69C1E80];
  v21 = sub_1A5242524();
  (*(*(v21 - 8) + 104))(a9 + v19, v20, v21);
  *(a9 + 24) = a1[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature];
  *(a9 + 34) = 2;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v22 = [swift_getObjCClassFromMetadata() sharedInstance];
  LOBYTE(v19) = [v22 forceShowProcessingUI];

  if (v19)
  {
  }

  else
  {
    *(a9 + 16) = a1;
  }

  *(a9 + 28) = a2;
  *(a9 + 32) = BYTE4(a2) & 1;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 33) = a3;
  *(a9 + 88) = a8 & 1;
  *(a9 + 89) = a10 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
}

uint64_t sub_1A4092F30()
{
  if (qword_1EB176600 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EB0C8);
}

void sub_1A4092F94()
{
  v1 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4093F94();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v7 forceHideProcessingUI])
  {
    goto LABEL_2;
  }

  if (([v7 forceShowProcessingUI] & 1) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB120A48);
    v8 = [swift_getObjCClassFromMetadata() sharedInstance];
    v9 = [v8 forceIndexingFooter];

    if (!v9)
    {
      v14 = *(v0 + 16);
      if (!v14)
      {
LABEL_2:

        return;
      }

      v15 = v14;
      v16 = LemonadeFeatureAvailabilityMonitor.progress.getter();
      if (v16 == *sub_1A488BFBC())
      {

        goto LABEL_2;
      }

      v17 = LemonadeFeatureAvailabilityMonitor.progress.getter() * 100.0;
      if ((LODWORD(v17) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        __break(1u);
      }

      else if (v17 > -9.2234e18)
      {
        if (v17 < 9.2234e18)
        {
          v18[1] = v17;
          sub_1A5241234();
          sub_1A3DA24EC();
          sub_1A52408F4();
          sub_1A4093FF0(&qword_1EB12B0C8, sub_1A4093F94);
          sub_1A524E064();

          (*(v4 + 8))(v6, v3);
          return;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }
  }

  if (qword_1EB176600 != -1)
  {
    swift_once();
  }

  v10 = sub_1A5246F24();
  __swift_project_value_buffer(v10, qword_1EB1EB0C8);
  v11 = sub_1A524D224();
  v12 = sub_1A5246F04();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v11, "Force setting the processing percentage to 62%%.", v13, 2u);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }
}

uint64_t sub_1A4093344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = sub_1A5242524();
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v6 forceHideProcessingUI])
  {
    if (qword_1EB176600 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB1EB0C8);
    v8 = sub_1A524D224();
    v9 = sub_1A5246F04();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v8, "Force hiding all processing UI.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

LABEL_15:
    v16 = *(v2 + 48);
    v38 = v5;
    v39 = a1;
    if (v16)
    {
      goto LABEL_48;
    }

    v17 = *(v2 + 24);
    if (v17 > 3)
    {
      if (*(v2 + 24) > 5u)
      {
        if (v17 != 6)
        {
          goto LABEL_47;
        }

LABEL_35:
        sub_1A4092F94();
        if (!v30)
        {
          goto LABEL_47;
        }

        v22 = v29;
        v23 = v30;
LABEL_40:
        sub_1A3C38BD4();
        sub_1A4093F30(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1A52F8E10;
        *(v33 + 56) = MEMORY[0x1E69E6158];
        *(v33 + 64) = sub_1A3D710E8();
        *(v33 + 32) = v22;
        *(v33 + 40) = v23;
        sub_1A524C6C4();

        goto LABEL_48;
      }

      if (v17 == 4)
      {
        sub_1A4092F94();
        if (!v21)
        {
          goto LABEL_47;
        }

        v22 = v20;
        v23 = v21;
        goto LABEL_40;
      }

      sub_1A4092F94();
      if (v32)
      {
        v22 = v31;
        v23 = v32;
        goto LABEL_40;
      }
    }

    else
    {
      if (*(v2 + 24) <= 1u)
      {
        if (*(v2 + 24))
        {
          goto LABEL_47;
        }

        goto LABEL_35;
      }

      if (v17 == 2)
      {
        sub_1A4092F94();
        v26 = v25;
        if (v25)
        {
          v27 = v24;
          sub_1A4093F30(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1A52F8E10;
          *(v28 + 56) = MEMORY[0x1E69E6158];
          *(v28 + 64) = sub_1A3D710E8();
          *(v28 + 32) = v27;
          *(v28 + 40) = v26;
          sub_1A524C6C4();
        }

LABEL_48:
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

LABEL_47:
    sub_1A3C38BD4();
    goto LABEL_48;
  }

  if ([v6 forceShowProcessingUI])
  {
    if (qword_1EB176600 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB1EB0C8);
    v12 = sub_1A524D224();
    v13 = sub_1A5246F04();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, v12, "Force showing all processing UI.", v14, 2u);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    v15 = v6;
    goto LABEL_13;
  }

  if (*(v1 + 34) != 2 || (v18 = *(v1 + 16)) == 0)
  {

    goto LABEL_15;
  }

  if ((*(v1 + 32) & 1) == 0)
  {
    v34 = v18;
    LemonadeFeatureAvailabilityMonitor.progress.getter();

    goto LABEL_15;
  }

  v15 = v18;
  v19 = sub_1A488C1D8();
  switch(v19)
  {
    case 2:
      goto LABEL_50;
    case 1:
      v13 = v6;
LABEL_13:

      goto LABEL_15;
    case 0:
LABEL_50:

      goto LABEL_15;
  }

  v40 = v19;
  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t sub_1A4093BF8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB0C8);
  __swift_project_value_buffer(v0, qword_1EB1EB0C8);
  sub_1A524C814();
  return sub_1A5246F14();
}

void sub_1A4093CE0()
{
  sub_1A4093EE0(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1A4093F30(319, &qword_1EB125308, type metadata accessor for LemonadeFeatureAvailabilityMonitor, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A4093EE0(319, &qword_1EB120B50, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A4093EE0(319, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A4093EE0(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A4093F30(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A5242524();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A4093EE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A4093F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4093F94()
{
  if (!qword_1EB12B0C0)
  {
    sub_1A3DA24EC();
    v0 = sub_1A5240904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B0C0);
    }
  }
}

uint64_t sub_1A4093FF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4094038@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5246E54();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeShelvesStack();
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = v7;
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A3C56C94(&qword_1EB12A300, type metadata accessor for LemonadeShelvesStack);
  MEMORY[0x1A5905890](v6, v14);
  v15 = sub_1A5246E94();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1A40A5E60(v13, sub_1A3E73E5C);
  }

  else
  {
    sub_1A40A46A4(v1, v10, type metadata accessor for LemonadeShelvesStack);
    sub_1A5246E44();
    v17 = sub_1A5246E84();
    v35 = sub_1A524D664();
    v36 = v17;
    if (sub_1A524DEC4())
    {
      v18 = swift_slowAlloc();
      v33 = v18;
      v34 = swift_slowAlloc();
      v54 = v34;
      *v18 = 136446210;
      sub_1A524A694();
      sub_1A40A5E60(v10, type metadata accessor for LemonadeShelvesStack);
      sub_1A3C2EF94();
    }

    (*(v37 + 8))(v39, v38);
    sub_1A40A5E60(v10, type metadata accessor for LemonadeShelvesStack);
    (*(v16 + 8))(v13, v15);
  }

  v39 = sub_1A5249574();
  v48 = 0;
  v19 = *v2;
  v20 = *(v2 + 8);
  v21 = *(v2 + 16);
  KeyPath = swift_getKeyPath();
  v43[0] = 0;
  LOBYTE(v49) = 24;
  sub_1A40A60A0(0, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);

  sub_1A524B694();
  v23 = v54;
  v24 = v55;
  *&v49 = 0;
  sub_1A40A5034();
  sub_1A524B694();
  *(&v50 + 1) = *v46;
  DWORD1(v50) = *&v46[3];
  *(&v51 + 1) = *v45;
  DWORD1(v51) = *&v45[3];
  HIDWORD(v51) = *&v44[3];
  *(&v51 + 9) = *v44;
  *&v49 = v19;
  *(&v49 + 1) = v20;
  LOBYTE(v50) = v21;
  *(&v50 + 1) = KeyPath;
  LOBYTE(v51) = v43[0];
  BYTE8(v51) = v23;
  *&v52 = v24;
  *(&v52 + 1) = v54;
  v53 = v55;
  v54 = v19;
  v55 = v20;
  v56 = v21;
  *&v57[3] = *&v46[3];
  *v57 = *v46;
  v58 = KeyPath;
  v59 = v43[0];
  *&v60[3] = *&v45[3];
  *v60 = *v45;
  v61 = v23;
  *&v62[3] = *&v44[3];
  *v62 = *v44;
  v63 = __PAIR128__(*(&v52 + 1), v24);
  v64 = v53;
  sub_1A409470C(&v49, v43);
  sub_1A4094744(&v54);
  *(&v47[1] + 7) = v50;
  *(&v47[2] + 7) = v51;
  *(&v47[3] + 7) = v52;
  *(&v47[4] + 7) = v53;
  *(v47 + 7) = v49;
  LOBYTE(v20) = v48;
  v25 = swift_getKeyPath();
  v26 = *v2;
  v27 = v42;
  sub_1A40A46A4(v2, v42, type metadata accessor for LemonadeShelvesStack);
  v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v29 = swift_allocObject();
  sub_1A40A5DF8(v27, v29 + v28, type metadata accessor for LemonadeShelvesStack);
  v30 = v47[0];
  *(a1 + 33) = v47[1];
  v31 = v47[3];
  *(a1 + 49) = v47[2];
  *(a1 + 65) = v31;
  *(a1 + 80) = *(&v47[3] + 15);
  *a1 = v39;
  *(a1 + 8) = 0;
  *(a1 + 16) = v20;
  *(a1 + 17) = v30;
  *(a1 + 96) = v25;
  *(a1 + 104) = 1;
  *(a1 + 112) = v26;
  *(a1 + 120) = sub_1A40947CC;
  *(a1 + 128) = v29;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
}

uint64_t type metadata accessor for LemonadeShelvesStack()
{
  result = qword_1EB188CE0;
  if (!qword_1EB188CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4094774@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248E34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A409485C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  v5 = type metadata accessor for LemonadeShelvesStack();
  v6 = v5[7];
  *(a4 + v6) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v7 = a4 + v5[8];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = v5[9];
  *(a4 + v8) = swift_getKeyPath();
  sub_1A3E31270(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A409491C@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  sub_1A40A1080();
  v79 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v72[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4448(0);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A4670(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1A5246E54();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v87 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v13 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v72[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72[-v18];
  v20 = *(v1 + 16);
  v94 = *v1;
  v95 = v20;
  v21 = *(v1 + 48);
  v96 = *(v1 + 32);
  v97 = v21;
  v98 = *(v1 + 64);
  v22 = *(*v94 + 584);
  v88 = v94;
  v23 = v22();
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v84 = v13;
  v85 = v23;
  if (v24)
  {
    v26 = v23;
    v78 = v8;
    *&v92[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v24, 0);
    v25 = *&v92[0];
    v27 = v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v28 = *(v13 + 72);
    do
    {
      sub_1A40A46A4(v27, v19, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A40A5E60(v19, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v29 = v89[0];
      *&v92[0] = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1A3C4ED58((v30 > 1), v31 + 1, 1);
        v25 = *&v92[0];
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + v31 + 32) = v29;
      v27 += v28;
      --v24;
    }

    while (v24);
    v8 = v78;
  }

  if ((*(*v88 + 592))())
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v78 = MEMORY[0x1E69E7CC0];
  v32 = v85;
  v92[2] = v96;
  v92[3] = v97;
  v93 = v98;
  v92[0] = v94;
  v92[1] = v95;
  v33 = sub_1A40A0D38();
  v34 = v87;
  MEMORY[0x1A5905890](&type metadata for LemonadeOneColumnShelvesStack, v33);
  v35 = v34;
  v36 = sub_1A5246E94();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v37 = sub_1A40A5E60(v35, sub_1A3E73E5C);
  v38 = *(v32 + 16);
  v39 = v84;
  if (v38)
  {
    v40 = v76;
    sub_1A40A46A4(v32 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v76, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    sub_1A3C5322C();
    v37 = sub_1A40A5E60(v40, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v41 = v92[0];
  }

  else
  {
    v41 = 24;
  }

  result = (*(*v88 + 600))(v37);
  v43 = 24;
  if (v38 && (result & 1) != 0)
  {
    if (v38 > *(v32 + 16))
    {
      __break(1u);
      return result;
    }

    v44 = v73;
    sub_1A40A46A4(v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * (v38 - 1), v73, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    sub_1A3C5322C();
    result = sub_1A40A5E60(v44, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v43 = v92[0];
  }

  v45 = (*(*v88 + 256))(v89, result);
  MEMORY[0x1EEE9AC00](v45);
  sub_1A40956B8(sub_1A40A470C, v32, v8);
  if ((*(v39 + 48))(v8, 1, v77) == 1)
  {
    v46 = sub_1A40A5E60(v8, sub_1A40A4670);
    v47 = 24;
  }

  else
  {
    sub_1A3C5322C();
    v47 = v92[0];
    v46 = sub_1A40A5E60(v8, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  }

  (*(*v88 + 632))(v92, v46);
  LOBYTE(v90) = v92[0];
  v91[0] = 1;
  v48 = static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v90, v91);
  v90 = v32;
  swift_getKeyPath();
  sub_1A3C341C8(v89, v92);
  v49 = swift_allocObject();
  *(v49 + 16) = v41;
  *(v49 + 17) = v43;
  *(v49 + 18) = v48;
  sub_1A3C34460(v92, v49 + 24);
  v50 = v97;
  *(v49 + 96) = v96;
  *(v49 + 112) = v50;
  *(v49 + 128) = v98;
  v51 = v95;
  *(v49 + 64) = v94;
  *(v49 + 80) = v51;
  *(v49 + 136) = v47;
  sub_1A409470C(&v94, v92);
  sub_1A3F32024(0);
  sub_1A40A11F0();
  sub_1A3C56C94(&qword_1EB126F20, sub_1A3F32024);
  sub_1A3C3DEB4();
  sub_1A40A4204();
  v52 = v80;
  sub_1A524B9B4();
  v90 = v25;
  v53 = swift_allocObject();
  v54 = v97;
  *(v53 + 48) = v96;
  *(v53 + 64) = v54;
  *(v53 + 80) = v98;
  v55 = v95;
  *(v53 + 16) = v94;
  *(v53 + 32) = v55;
  sub_1A409470C(&v94, v92);
  v56 = MEMORY[0x1E69E62F8];
  sub_1A40A60A0(0, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
  sub_1A3C56C94(&qword_1EB125A30, sub_1A40A1080);
  sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v56);
  v57 = v82;
  sub_1A524B144();

  sub_1A40A554C(v52, sub_1A40A1080);

  v58 = swift_allocObject();
  v59 = v97;
  *(v58 + 48) = v96;
  *(v58 + 64) = v59;
  *(v58 + 80) = v98;
  v60 = v95;
  *(v58 + 16) = v94;
  *(v58 + 32) = v60;
  v61 = (v57 + *(v81 + 36));
  *v61 = 0;
  v61[1] = 0;
  v61[2] = sub_1A40A47C0;
  v61[3] = v58;
  LOBYTE(v90) = v41;
  v62 = swift_allocObject();
  v63 = v97;
  *(v62 + 48) = v96;
  *(v62 + 64) = v63;
  *(v62 + 80) = v98;
  v64 = v95;
  *(v62 + 16) = v94;
  *(v62 + 32) = v64;
  *(v62 + 88) = v41;
  sub_1A409470C(&v94, v92);
  sub_1A409470C(&v94, v92);
  v65 = MEMORY[0x1E69E6720];
  sub_1A40A60A0(0, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
  sub_1A40A48EC();
  sub_1A40A4600(&qword_1EB125868, &qword_1EB125870, v65);
  v66 = v83;
  sub_1A524B144();

  v67 = sub_1A40A554C(v57, sub_1A40A4448);
  v68 = MEMORY[0x1A5907080](v67, 0.5, 1.0, 0.0);
  sub_1A40A5AE8(0, &qword_1EB123E18, sub_1A40A4A44, sub_1A40A4B40, MEMORY[0x1E697E830]);
  v70 = (v66 + *(v69 + 36));
  v71 = v78;
  *v70 = v68;
  v70[1] = v71;
  return __swift_destroy_boxed_opaque_existential_0(v89);
}