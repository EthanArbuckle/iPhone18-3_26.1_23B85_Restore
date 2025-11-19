uint64_t sub_1AFC5CB04()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70F3C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70F70;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC70F7C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70F84;
  v10[5] = v8;
  v10[2] = sub_1AFC70FB8;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x706F745366;
  *(v11 + 24) = 0xE500000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70FC4;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3648 = v0;
  return result;
}

void sub_1AFC5CFF4(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  sub_1AFC73A9C(v1, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 camera];
      swift_unknownObjectRelease();
      if (v7)
      {
        v3 = [v7 chromaticTransform];

        if (v3)
        {
LABEL_3:
          [v3 *a1];
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AFC5D128(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      return;
    }

    v9 = [v8 camera];
    swift_unknownObjectRelease();
    v5 = [v9 *a2];

    if (!v5)
    {
      return;
    }

LABEL_7:
    [v5 *a1];

    return;
  }

  v5 = v2[4];
  v6 = v5;
  if (v5)
  {
    goto LABEL_7;
  }
}

double sub_1AFC5D27C(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
    if (!v3)
    {
      return 0.0;
    }

LABEL_7:
    [v3 *a1];
    v10 = v8;

    return v10;
  }

  sub_1AFC73A9C(v1, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v11);
  if (Strong)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 camera];
      swift_unknownObjectRelease();
      v3 = [v7 chromaticTransform];

      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0.0;
}

uint64_t sub_1AFC5D44C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFEA65A0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC7116C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC711A0;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  v7 = *(v4 + 64);
  *(v4 + 64) = sub_1AFC711AC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC711B4;
  v10[5] = v8;
  v10[2] = sub_1AFC711E8;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 210) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x7469736E65746E69;
  *(v11 + 24) = 0xE900000000000079;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  v110 = v12;
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v107 = v5;
  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  v14 = *(v11 + 64);
  *(v11 + 64) = sub_1AFC711F4;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(v14);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E7428];
  sub_1AFC703CC(0, &qword_1ED725C78, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v17 = swift_allocObject();
  v17[4] = sub_1AFC711FC;
  v17[5] = v15;
  v17[2] = sub_1AFC71230;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 104) = 0;
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 210) = 0;
  *(v18 + 216) = 0;
  v19 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], v16);
  v21 = v20;
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 0x7265746E6563;
  *(v18 + 24) = 0xE600000000000000;
  *(v18 + 32) = v15;
  *(v18 + 40) = v20;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 1;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x1000100000000;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v22 = swift_conformsToProtocol2();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  swift_retain_n();
  v24 = v21;
  if (v23)
  {
    v24 = (*(v22 + 8))(v23, v22);
  }

  v108 = v22;
  v109 = v23;
  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    *(v18 + 160) = (*(v25 + 8))(v24, v25);
  }

  v26 = *(v18 + 64);
  *(v18 + 64) = sub_1AFC7123C;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(v26);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;

  *(v0 + 48) = v18;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  v28[4] = sub_1AFC73AF8;
  v28[5] = v27;
  v28[2] = sub_1AFC73BF8;
  v28[3] = v27;
  v28[6] = v27;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 210) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0x5A6D6F7266;
  *(v29 + 24) = 0xE500000000000000;
  *(v29 + 32) = v27;
  *(v29 + 40) = v19;
  *(v29 + 48) = 0;
  *(v29 + 56) = 1;
  *(v29 + 58) = 0;
  *(v29 + 184) = 0;
  *(v29 + 188) = 1;
  *(v29 + 192) = 0;
  *(v29 + 196) = 1;
  *(v29 + 200) = 0x1000100000000;
  *(v29 + 208) = 1;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 96) = 0;
  *(v29 + 104) = 0;
  *(v29 + 144) = xmmword_1AFE22A20;
  *(v29 + 80) = v28;
  *(v29 + 88) = &off_1F2535378;
  *(v29 + 210) = 0;
  swift_retain_n();
  if (v110)
  {
    v31 = (*(v110 + 8))();
  }

  else
  {
    v31 = v19;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v29 + 160) = (*(v32 + 8))(v31, v32);
  }

  v33 = *(v29 + 64);
  *(v29 + 64) = sub_1AFC73B60;
  *(v29 + 72) = v27;
  sub_1AF0FB8EC(v33);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;

  *(v0 + 56) = v29;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  v35[4] = sub_1AFC73AF8;
  v35[5] = v34;
  v35[2] = sub_1AFC73BF8;
  v35[3] = v34;
  v35[6] = v34;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 160) = v30;
  *(v36 + 168) = 0;
  *(v36 + 210) = 0;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 0x6C676E416D6F7266;
  *(v36 + 24) = 0xE900000000000065;
  *(v36 + 32) = v34;
  *(v36 + 40) = v19;
  *(v36 + 48) = 0;
  *(v36 + 56) = 1;
  *(v36 + 58) = 0;
  *(v36 + 184) = 0;
  *(v36 + 188) = 1;
  *(v36 + 192) = 0;
  *(v36 + 196) = 1;
  *(v36 + 200) = 0x1000100000000;
  *(v36 + 208) = 1;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  *(v36 + 96) = 0;
  *(v36 + 104) = 0;
  *(v36 + 144) = xmmword_1AFE22A20;
  *(v36 + 80) = v35;
  *(v36 + 88) = &off_1F2535378;
  *(v36 + 210) = 0;
  swift_retain_n();
  if (v110)
  {
    v37 = (*(v110 + 8))();
  }

  else
  {
    v37 = v19;
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v36 + 160) = (*(v38 + 8))(v37, v38);
  }

  v39 = *(v36 + 64);
  *(v36 + 64) = sub_1AFC73B60;
  *(v36 + 72) = v34;
  sub_1AF0FB8EC(v39);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;

  *(v0 + 64) = v36;
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  v41[4] = sub_1AFC73C88;
  v41[5] = v40;
  v41[2] = sub_1AFC73BFC;
  v41[3] = v40;
  v41[6] = v40;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = v30;
  *(v42 + 168) = 0;
  *(v42 + 210) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  *(v42 + 16) = 0x666968536D6F7266;
  *(v42 + 24) = 0xE900000000000074;
  *(v42 + 32) = v40;
  *(v42 + 40) = v21;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = 0;
  *(v42 + 188) = 1;
  *(v42 + 192) = 0;
  *(v42 + 196) = 1;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  swift_retain_n();
  v43 = v21;
  if (v109)
  {
    v43 = (*(v108 + 8))(v109);
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v43)
  {
    *(v42 + 160) = (*(v44 + 8))(v43, v44);
  }

  v45 = *(v42 + 64);
  *(v42 + 64) = sub_1AFC73B64;
  *(v42 + 72) = v40;
  sub_1AF0FB8EC(v45);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;

  *(v0 + 72) = v42;
  v46 = swift_getKeyPath();
  v47 = swift_allocObject();
  v47[4] = sub_1AFC73AF8;
  v47[5] = v46;
  v47[2] = sub_1AFC73BF8;
  v47[3] = v46;
  v47[6] = v46;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = v30;
  *(v48 + 168) = 0;
  *(v48 + 210) = 0;
  *(v48 + 216) = 0;
  *(v48 + 176) = 0;
  *(v48 + 16) = 5926772;
  *(v48 + 24) = 0xE300000000000000;
  *(v48 + 32) = v46;
  *(v48 + 40) = v19;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 0;
  *(v48 + 184) = 0;
  *(v48 + 188) = 1;
  *(v48 + 192) = 0;
  *(v48 + 196) = 1;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  swift_retain_n();
  if (v110)
  {
    v49 = (*(v110 + 8))();
  }

  else
  {
    v49 = v19;
  }

  v50 = swift_conformsToProtocol2();
  if (v50 && v49)
  {
    *(v48 + 160) = (*(v50 + 8))(v49, v50);
  }

  v51 = *(v48 + 64);
  *(v48 + 64) = sub_1AFC73B60;
  *(v48 + 72) = v46;
  sub_1AF0FB8EC(v51);
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;

  *(v48 + 216) = 0;

  *(v0 + 80) = v48;
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  v53[4] = sub_1AFC73AF8;
  v53[5] = v52;
  v53[2] = sub_1AFC73BF8;
  v53[3] = v52;
  v53[6] = v52;
  v54 = swift_allocObject();
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = v30;
  *(v54 + 168) = 0;
  *(v54 + 210) = 0;
  *(v54 + 216) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 0x656C676E416F74;
  *(v54 + 24) = 0xE700000000000000;
  *(v54 + 32) = v52;
  *(v54 + 40) = v19;
  *(v54 + 48) = 0;
  *(v54 + 56) = 1;
  *(v54 + 58) = 0;
  *(v54 + 184) = 0;
  *(v54 + 188) = 1;
  *(v54 + 192) = 0;
  *(v54 + 196) = 1;
  *(v54 + 200) = 0x1000100000000;
  *(v54 + 208) = 1;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  *(v54 + 96) = 0;
  *(v54 + 104) = 0;
  *(v54 + 144) = xmmword_1AFE22A20;
  *(v54 + 80) = v53;
  *(v54 + 88) = &off_1F2535378;
  *(v54 + 210) = 0;
  swift_retain_n();
  if (v110)
  {
    v19 = (*(v110 + 8))();
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v19)
  {
    *(v54 + 160) = (*(v55 + 8))(v19, v55);
  }

  v56 = *(v54 + 64);
  *(v54 + 64) = sub_1AFC73B60;
  *(v54 + 72) = v52;
  sub_1AF0FB8EC(v56);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;

  *(v0 + 88) = v54;
  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  v58[4] = sub_1AFC73C88;
  v58[5] = v57;
  v58[2] = sub_1AFC73BFC;
  v58[3] = v57;
  v58[6] = v57;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = v30;
  *(v59 + 168) = 0;
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0x74666968536F74;
  *(v59 + 24) = 0xE700000000000000;
  *(v59 + 32) = v57;
  *(v59 + 40) = v21;
  *(v59 + 48) = 0;
  *(v59 + 56) = 1;
  *(v59 + 58) = 0;
  *(v59 + 184) = 0;
  *(v59 + 188) = 1;
  *(v59 + 192) = 0;
  *(v59 + 196) = 1;
  *(v59 + 200) = 0x1000100000000;
  *(v59 + 208) = 1;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  *(v59 + 96) = 0;
  *(v59 + 104) = 0;
  *(v59 + 144) = xmmword_1AFE22A20;
  *(v59 + 80) = v58;
  *(v59 + 88) = &off_1F2535378;
  *(v59 + 210) = 0;
  swift_retain_n();
  v60 = v21;
  if (v109)
  {
    v60 = (*(v108 + 8))(v109);
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v60)
  {
    *(v59 + 160) = (*(v61 + 8))(v60, v61);
  }

  v62 = *(v59 + 64);
  *(v59 + 64) = sub_1AFC73B64;
  *(v59 + 72) = v57;
  sub_1AF0FB8EC(v62);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = 0;

  *(v0 + 96) = v59;
  v63 = swift_getKeyPath();
  v64 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v65 = swift_allocObject();
  v65[4] = sub_1AFC71244;
  v65[5] = v63;
  v65[2] = sub_1AFC7125C;
  v65[3] = v63;
  v65[6] = v63;
  v66 = swift_allocObject();
  *(v66 + 104) = 0;
  *(v66 + 112) = 1;
  *(v66 + 128) = 0;
  *(v66 + 136) = 0;
  *(v66 + 120) = 0;
  *(v66 + 160) = MEMORY[0x1E69E7CC0];
  *(v66 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v64);
  v68 = v67;
  *(v66 + 168) = 0;
  *(v66 + 176) = 0;
  *(v66 + 16) = 0x31726F6C6F63;
  *(v66 + 24) = 0xE600000000000000;
  *(v66 + 32) = v63;
  *(v66 + 40) = v67;
  *(v66 + 48) = 0;
  *(v66 + 56) = 1;
  *(v66 + 58) = 0;
  *(v66 + 184) = 0;
  *(v66 + 188) = 1;
  *(v66 + 192) = 0;
  *(v66 + 196) = 1;
  *(v66 + 200) = 0x1000100000000;
  *(v66 + 208) = 1;
  *(v66 + 64) = 0;
  *(v66 + 72) = 0;
  *(v66 + 96) = 0;
  *(v66 + 144) = xmmword_1AFE22A20;
  *(v66 + 80) = v65;
  *(v66 + 88) = &off_1F2535378;
  *(v66 + 210) = 0;
  v69 = swift_conformsToProtocol2();
  if (v69)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0;
  }

  swift_retain_n();
  v71 = v68;
  if (v70)
  {
    v71 = (*(v69 + 8))(v70, v69);
  }

  v72 = swift_conformsToProtocol2();
  if (v72 && v71)
  {
    *(v66 + 160) = (*(v72 + 8))(v71, v72);
  }

  v73 = *(v66 + 64);
  *(v66 + 64) = sub_1AFC71268;
  *(v66 + 72) = v63;
  sub_1AF0FB8EC(v73);
  *(v66 + 168) = 0;
  *(v66 + 176) = 0;

  *(v66 + 216) = 0;

  *(v0 + 104) = v66;
  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  v75[4] = sub_1AFC73B68;
  v75[5] = v74;
  v75[2] = sub_1AFC73C00;
  v75[3] = v74;
  v75[6] = v74;
  v76 = swift_allocObject();
  *(v76 + 112) = 1;
  *(v76 + 128) = 0;
  *(v76 + 136) = 0;
  *(v76 + 120) = 0;
  *(v76 + 160) = MEMORY[0x1E69E7CC0];
  *(v76 + 168) = 0;
  *(v76 + 216) = 0;
  *(v76 + 176) = 0;
  *(v76 + 16) = 0x32726F6C6F63;
  *(v76 + 24) = 0xE600000000000000;
  *(v76 + 32) = v74;
  *(v76 + 40) = v68;
  *(v76 + 48) = 0;
  *(v76 + 56) = 1;
  *(v76 + 58) = 0;
  *(v76 + 184) = 0;
  *(v76 + 188) = 1;
  *(v76 + 192) = 0;
  *(v76 + 196) = 1;
  *(v76 + 200) = 0x1000100000000;
  *(v76 + 208) = 1;
  *(v76 + 64) = 0;
  *(v76 + 72) = 0;
  *(v76 + 96) = 0;
  *(v76 + 104) = 0;
  *(v76 + 144) = xmmword_1AFE22A20;
  *(v76 + 80) = v75;
  *(v76 + 88) = &off_1F2535378;
  *(v76 + 210) = 0;
  swift_retain_n();
  v77 = v68;
  if (v70)
  {
    v77 = (*(v69 + 8))(v70, v69);
  }

  v78 = swift_conformsToProtocol2();
  if (v78 && v77)
  {
    *(v76 + 160) = (*(v78 + 8))(v77, v78);
  }

  v79 = *(v76 + 64);
  *(v76 + 64) = sub_1AFC73B6C;
  *(v76 + 72) = v74;
  sub_1AF0FB8EC(v79);
  *(v76 + 168) = 0;
  *(v76 + 176) = 0;

  *(v76 + 216) = 0;

  *(v0 + 112) = v76;
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  v81[4] = sub_1AFC73B68;
  v81[5] = v80;
  v81[2] = sub_1AFC73C00;
  v81[3] = v80;
  v81[6] = v80;
  v82 = swift_allocObject();
  *(v82 + 112) = 1;
  *(v82 + 128) = 0;
  *(v82 + 136) = 0;
  *(v82 + 120) = 0;
  *(v82 + 160) = MEMORY[0x1E69E7CC0];
  *(v82 + 168) = 0;
  *(v82 + 216) = 0;
  *(v82 + 176) = 0;
  *(v82 + 16) = 0x33726F6C6F63;
  *(v82 + 24) = 0xE600000000000000;
  *(v82 + 32) = v80;
  *(v82 + 40) = v68;
  *(v82 + 48) = 0;
  *(v82 + 56) = 1;
  *(v82 + 58) = 0;
  *(v82 + 184) = 0;
  *(v82 + 188) = 1;
  *(v82 + 192) = 0;
  *(v82 + 196) = 1;
  *(v82 + 200) = 0x1000100000000;
  *(v82 + 208) = 1;
  *(v82 + 64) = 0;
  *(v82 + 72) = 0;
  *(v82 + 96) = 0;
  *(v82 + 104) = 0;
  *(v82 + 144) = xmmword_1AFE22A20;
  *(v82 + 80) = v81;
  *(v82 + 88) = &off_1F2535378;
  *(v82 + 210) = 0;
  swift_retain_n();
  if (v70)
  {
    v68 = (*(v69 + 8))(v70, v69);
  }

  v83 = swift_conformsToProtocol2();
  v84 = MEMORY[0x1E69E6370];
  if (v83 && v68)
  {
    *(v82 + 160) = (*(v83 + 8))(v68, v83);
  }

  v85 = *(v82 + 64);
  *(v82 + 64) = sub_1AFC73B6C;
  *(v82 + 72) = v80;
  sub_1AF0FB8EC(v85);
  *(v82 + 168) = 0;
  *(v82 + 176) = 0;

  *(v82 + 216) = 0;

  *(v0 + 120) = v82;
  v86 = swift_getKeyPath();
  v87 = swift_allocObject();
  v87[4] = sub_1AFC73C88;
  v87[5] = v86;
  v87[2] = sub_1AFC73BFC;
  v87[3] = v86;
  v87[6] = v86;
  v88 = swift_allocObject();
  *(v88 + 112) = 1;
  *(v88 + 128) = 0;
  *(v88 + 136) = 0;
  *(v88 + 120) = 0;
  v89 = MEMORY[0x1E69E7CC0];
  *(v88 + 160) = MEMORY[0x1E69E7CC0];
  *(v88 + 168) = 0;
  *(v88 + 216) = 0;
  *(v88 + 176) = 0;
  *(v88 + 16) = 0x746E65436B73616DLL;
  *(v88 + 24) = 0xEA00000000007265;
  *(v88 + 32) = v86;
  *(v88 + 40) = v21;
  *(v88 + 48) = 0;
  *(v88 + 56) = 1;
  *(v88 + 58) = 0;
  *(v88 + 184) = 0;
  *(v88 + 188) = 1;
  *(v88 + 192) = 0;
  *(v88 + 196) = 1;
  *(v88 + 200) = 0x1000100000000;
  *(v88 + 208) = 1;
  *(v88 + 64) = 0;
  *(v88 + 72) = 0;
  *(v88 + 96) = 0;
  *(v88 + 104) = 0;
  *(v88 + 144) = xmmword_1AFE22A20;
  *(v88 + 80) = v87;
  *(v88 + 88) = &off_1F2535378;
  *(v88 + 210) = 0;
  swift_retain_n();
  if (v109)
  {
    v21 = (*(v108 + 8))();
  }

  v90 = swift_conformsToProtocol2();
  if (v90 && v21)
  {
    *(v88 + 160) = (*(v90 + 8))(v21, v90);
  }

  v91 = *(v88 + 64);
  *(v88 + 64) = sub_1AFC73B64;
  *(v88 + 72) = v86;
  sub_1AF0FB8EC(v91);
  *(v88 + 168) = 0;
  *(v88 + 176) = 0;

  *(v88 + 216) = 0;

  *(v0 + 128) = v88;
  v92 = swift_getKeyPath();
  v93 = swift_allocObject();
  v93[4] = sub_1AFC73AF8;
  v93[5] = v92;
  v93[2] = sub_1AFC73BF8;
  v93[3] = v92;
  v93[6] = v92;
  v94 = swift_allocObject();
  *(v94 + 112) = 1;
  *(v94 + 128) = 0;
  *(v94 + 136) = 0;
  *(v94 + 120) = 0;
  *(v94 + 160) = v89;
  *(v94 + 168) = 0;
  *(v94 + 216) = 0;
  *(v94 + 176) = 0;
  *(v94 + 16) = 0x696461526B73616DLL;
  *(v94 + 24) = 0xEA00000000007375;
  *(v94 + 32) = v92;
  v95 = MEMORY[0x1E69E6448];
  *(v94 + 40) = MEMORY[0x1E69E6448];
  *(v94 + 48) = 0;
  *(v94 + 56) = 1;
  *(v94 + 58) = 0;
  *(v94 + 184) = 0;
  *(v94 + 188) = 1;
  *(v94 + 192) = 0;
  *(v94 + 196) = 1;
  *(v94 + 200) = 0x1000100000000;
  *(v94 + 208) = 1;
  *(v94 + 64) = 0;
  *(v94 + 72) = 0;
  *(v94 + 96) = 0;
  *(v94 + 104) = 0;
  *(v94 + 144) = xmmword_1AFE22A20;
  *(v94 + 80) = v93;
  *(v94 + 88) = &off_1F2535378;
  *(v94 + 210) = 0;
  swift_retain_n();
  if (v110)
  {
    v96 = (*(v110 + 8))();
  }

  else
  {
    v96 = v95;
  }

  v97 = swift_conformsToProtocol2();
  if (v97 && v96)
  {
    *(v94 + 160) = (*(v97 + 8))(v96, v97);
  }

  *(v94 + 64) = sub_1AFC73B60;
  *(v94 + 72) = v92;
  sub_1AF0FB8EC(0);
  *(v94 + 168) = 0;
  *(v94 + 176) = 0;

  *(v94 + 216) = 0;
  *(v0 + 136) = v94;
  v98 = swift_getKeyPath();
  v99 = swift_allocObject();
  v99[4] = sub_1AFC73C48;
  v99[5] = v98;
  v99[2] = sub_1AFC73C04;
  v99[3] = v98;
  v99[6] = v98;
  v100 = swift_allocObject();
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = v89;
  *(v100 + 168) = 0;
  *(v100 + 216) = 0;
  *(v100 + 176) = 0;
  *(v100 + 16) = 0x62616E456B73616DLL;
  *(v100 + 24) = 0xEB0000000064656CLL;
  *(v100 + 32) = v98;
  *(v100 + 40) = v84;
  *(v100 + 48) = 0;
  *(v100 + 56) = 1;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 1;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 96) = 0;
  *(v100 + 104) = 0;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;
  swift_retain_n();
  if (v107)
  {
    v84 = (*(v107 + 8))();
  }

  v101 = swift_conformsToProtocol2();
  if (v101 && v84)
  {
    *(v100 + 160) = (*(v101 + 8))(v84, v101);
  }

  *(v100 + 64) = sub_1AFC73B70;
  *(v100 + 72) = v98;
  sub_1AF0FB8EC(0);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;

  *(v100 + 216) = 0;
  *(v0 + 144) = v100;
  v102 = swift_getKeyPath();
  v103 = swift_allocObject();
  v103[4] = sub_1AFC73AF8;
  v103[5] = v102;
  v103[2] = sub_1AFC73BF8;
  v103[3] = v102;
  v103[6] = v102;
  v104 = swift_allocObject();
  *(v104 + 112) = 1;
  *(v104 + 128) = 0;
  *(v104 + 136) = 0;
  *(v104 + 120) = 0;
  *(v104 + 160) = v89;
  *(v104 + 168) = 0;
  *(v104 + 216) = 0;
  *(v104 + 176) = 0;
  strcpy((v104 + 16), "unMultBlending");
  *(v104 + 31) = -18;
  *(v104 + 32) = v102;
  *(v104 + 40) = v95;
  *(v104 + 48) = 0;
  *(v104 + 56) = 1;
  *(v104 + 58) = 0;
  *(v104 + 184) = 0;
  *(v104 + 188) = 1;
  *(v104 + 192) = 0;
  *(v104 + 196) = 1;
  *(v104 + 200) = 0x1000100000000;
  *(v104 + 208) = 1;
  *(v104 + 64) = 0;
  *(v104 + 72) = 0;
  *(v104 + 96) = 0;
  *(v104 + 104) = 0;
  *(v104 + 144) = xmmword_1AFE22A20;
  *(v104 + 80) = v103;
  *(v104 + 88) = &off_1F2535378;
  *(v104 + 210) = 0;
  swift_retain_n();
  if (v110)
  {
    v95 = (*(v110 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v95)
  {
    *(v104 + 160) = (*(v105 + 8))(v95, v105);
  }

  *(v104 + 64) = sub_1AFC73B60;
  *(v104 + 72) = v102;
  sub_1AF0FB8EC(0);
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;

  *(v104 + 216) = 0;
  *(v0 + 152) = v104;
  qword_1EB6C2708 = v0;
  return result;
}

uint64_t sub_1AFC5F28C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC71270;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC7129C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v34 = v5;
  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AFC712A8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC712B0;
  v10[5] = v8;
  v10[2] = sub_1AFC712E4;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x737569646172;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC712F0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E7428];
  sub_1AFC703CC(0, &qword_1ED725C78, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v16 = swift_allocObject();
  v16[4] = sub_1AFC713C8;
  v16[5] = v14;
  v16[2] = sub_1AFC713FC;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 104) = 0;
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 216) = 0;
  v18 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], v15);
  v20 = v19;
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x746E65436B73616DLL;
  *(v17 + 24) = 0xEA00000000007265;
  *(v17 + 32) = v14;
  *(v17 + 40) = v19;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v21 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v21)
  {
    v22 = MEMORY[0x1E69E6370];
    if (v20)
    {
      v20 = (*(v21 + 8))(v20, v21);
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E6370];
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v20)
  {
    *(v17 + 160) = (*(v23 + 8))(v20, v23);
  }

  v24 = *(v17 + 64);
  *(v17 + 64) = sub_1AFC71408;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(v24);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;

  *(v0 + 48) = v17;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AFC73AFC;
  v26[5] = v25;
  v26[2] = sub_1AFC73C08;
  v26[3] = v25;
  v26[6] = v25;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x696461526B73616DLL;
  *(v27 + 24) = 0xEA00000000007375;
  *(v27 + 32) = v25;
  *(v27 + 40) = v18;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  *(v27 + 58) = 0;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE22A20;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 0;
  swift_retain_n();
  if (v12)
  {
    v18 = (*(v12 + 8))();
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v18)
  {
    *(v27 + 160) = (*(v28 + 8))(v18, v28);
  }

  *(v27 + 64) = sub_1AFC73B74;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 56) = v27;
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AFC73C4C;
  v30[5] = v29;
  v30[2] = sub_1AFC73C0C;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0x62616E456B73616DLL;
  *(v31 + 24) = 0xEB0000000064656CLL;
  *(v31 + 32) = v29;
  *(v31 + 40) = v22;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 1;
  *(v31 + 192) = 0;
  *(v31 + 196) = 1;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  swift_retain_n();
  if (v34)
  {
    v22 = (*(v34 + 8))();
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v22)
  {
    *(v31 + 160) = (*(v32 + 8))(v22, v32);
  }

  *(v31 + 64) = sub_1AFC73B78;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  *(v0 + 64) = v31;
  qword_1EB6C3650 = v0;
  return result;
}

void sub_1AFC5FCE4(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t)@<X4>, const char **a3@<X5>, unsigned __int8 *a4@<X8>)
{
  v6 = a2(a1);
  if (v6)
  {
    v7 = *a3;
    v8 = v6;
    v9 = [v6 v7];
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

uint64_t sub_1AFC5FD98()
{
  sub_1AFC73A9C(v0, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 model];
      swift_unknownObjectRelease();
      if (v3)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1AFC5FE50()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC5FF3C(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = *(v1 + 32);
    v4 = v3;
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  v3 = sub_1AFC5FD98();
  if (v3)
  {
LABEL_3:
    [v3 *a1];
  }
}

uint64_t sub_1AFC5FFB8@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  v39 = 0;
  swift_unknownObjectWeakInit();
  v39 = 0;
  swift_unknownObjectWeakAssign();
  v40 = 0x3E6C6C756E3CLL;
  v41 = 0xE600000000000000;
  v42 = 0;
  v14 = a1[3];
  v15 = a1[4];
  sub_1AF441150(a1, v14);
  if (sub_1AF694FF8(2037, v14, v15))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v4)
    {
      sub_1AF441150(&v30, v33);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v16 = &v34;
LABEL_9:
      sub_1AF9B3A74(v16, v38);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v30);
LABEL_17:
      a2(v38, v43);
    }
  }

  else
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF694FF8(2029, v17, v18))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v4)
      {
        sub_1AF441150(&v30, v33);
        v21 = sub_1AFDFEE38();
        v23 = v22;
        v35 = 0;
        swift_unknownObjectWeakInit();
        v35 = 0;
        v16 = swift_unknownObjectWeakAssign();
        v36 = v21;
        v37 = v23;
        goto LABEL_9;
      }
    }

    else
    {
      v29 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v4)
      {
        v34 = 0;
        LOBYTE(v35) = 1;
        v36 = 0xD000000000000017;
        v37 = 0x80000001AFF4C150;
        v19 = sub_1AFDFE698();
        if (v20)
        {
          v24 = v19;
        }

        else
        {
          v24 = 0;
        }

        if (v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = 0xE000000000000000;
        }

        (*(v10 + 8))(v13, v9);
        v31 = 0;
        swift_unknownObjectWeakInit();
        v31 = 0;
        v26 = swift_unknownObjectWeakAssign();
        v32 = v24;
        v33 = v25;
        sub_1AF9B3A74(v26, v38);
        a2 = v29;
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a3(v38);
}

void sub_1AFC6038C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2, ObjectType, a2);
  sub_1AFC73A9C(v2, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v11);
  if (!Strong)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v8 = [v7 model];
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_10;
  }

  v10 = [v9 presentationModel];

  if (!v10)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
  }

LABEL_11:

  v3[4] = v8;
}

uint64_t sub_1AFC60510()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55190;
  KeyPath = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1EB63BB40, type metadata accessor for VFXParametricModelType);
  v2 = swift_allocObject();
  v2[4] = sub_1AFC71478;
  v2[5] = KeyPath;
  v2[2] = sub_1AFC714AC;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  type metadata accessor for VFXParametricModelType(0);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1701869940;
  *(v3 + 24) = 0xE400000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AFC714B8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AFC714C0;
  v12[5] = v9;
  v12[2] = sub_1AFC714F4;
  v12[3] = v9;
  v12[6] = v9;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 210) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x737569646172;
  *(v13 + 24) = 0xE600000000000000;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 96) = v10;
  *(v13 + 104) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v14)
  {
    v15 = (*(v14 + 8))();
  }

  else
  {
    v15 = v11;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    v17 = (*(v16 + 8))(v15, v16);

    *(v13 + 160) = v17;
  }

  else
  {
  }

  v18 = *(v13 + 64);
  *(v13 + 64) = sub_1AFC71500;
  *(v13 + 72) = v9;
  sub_1AF0FB8EC(v18);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  v21[4] = sub_1AFC73B00;
  v21[5] = v19;
  v21[2] = sub_1AFC73C10;
  v21[3] = v19;
  v21[6] = v19;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 168) = 0;
  *(v22 + 210) = 0;
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x7569646152706F74;
  *(v22 + 24) = 0xE900000000000073;
  *(v22 + 32) = v19;
  *(v22 + 40) = v11;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = v20;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v23 = (*(v14 + 8))();
  }

  else
  {
    v23 = v11;
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    v25 = (*(v24 + 8))(v23, v24);

    *(v22 + 160) = v25;
  }

  else
  {
  }

  v26 = *(v22 + 64);
  *(v22 + 64) = sub_1AFC73B7C;
  *(v22 + 72) = v19;
  sub_1AF0FB8EC(v26);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 48) = v22;
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AFC73B00;
  v29[5] = v27;
  v29[2] = sub_1AFC73C10;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 210) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0x6874646977;
  *(v30 + 24) = 0xE500000000000000;
  *(v30 + 32) = v27;
  *(v30 + 40) = v11;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 96) = v28;
  *(v30 + 104) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v31 = (*(v14 + 8))();
  }

  else
  {
    v31 = v11;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    v33 = (*(v32 + 8))(v31, v32);

    *(v30 + 160) = v33;
  }

  else
  {
  }

  v34 = *(v30 + 64);
  *(v30 + 64) = sub_1AFC73B7C;
  *(v30 + 72) = v27;
  sub_1AF0FB8EC(v34);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;

  *(v0 + 56) = v30;
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AFC73B00;
  v37[5] = v35;
  v37[2] = sub_1AFC73C10;
  v37[3] = v35;
  v37[6] = v35;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x746867696568;
  *(v38 + 24) = 0xE600000000000000;
  *(v38 + 32) = v35;
  *(v38 + 40) = v11;
  *(v38 + 48) = 0;
  *(v38 + 56) = 1;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = v36;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v39 = (*(v14 + 8))();
  }

  else
  {
    v39 = v11;
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v39)
  {
    v41 = (*(v40 + 8))(v39, v40);

    *(v38 + 160) = v41;
  }

  else
  {
  }

  *(v38 + 64) = sub_1AFC73B7C;
  *(v38 + 72) = v35;
  sub_1AF0FB8EC(0);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;
  *(v0 + 64) = v38;
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v44 = swift_allocObject();
  v44[4] = sub_1AFC73B00;
  v44[5] = v42;
  v44[2] = sub_1AFC73C10;
  v44[3] = v42;
  v44[6] = v42;
  v45 = swift_allocObject();
  *(v45 + 112) = 1;
  *(v45 + 128) = 0;
  *(v45 + 136) = 0;
  *(v45 + 120) = 0;
  *(v45 + 160) = MEMORY[0x1E69E7CC0];
  *(v45 + 168) = 0;
  *(v45 + 216) = 0;
  *(v45 + 176) = 0;
  *(v45 + 16) = 0x6874676E656CLL;
  *(v45 + 24) = 0xE600000000000000;
  *(v45 + 32) = v42;
  *(v45 + 40) = v11;
  *(v45 + 48) = 0;
  *(v45 + 56) = 1;
  *(v45 + 58) = 0;
  *(v45 + 184) = 0;
  *(v45 + 188) = 1;
  *(v45 + 192) = 0;
  *(v45 + 196) = 1;
  *(v45 + 200) = 0x1000100000000;
  *(v45 + 208) = 1;
  *(v45 + 64) = 0;
  *(v45 + 72) = 0;
  *(v45 + 96) = v43;
  *(v45 + 104) = 0;
  *(v45 + 144) = xmmword_1AFE22A20;
  *(v45 + 80) = v44;
  *(v45 + 88) = &off_1F2535378;
  *(v45 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v46 = (*(v14 + 8))();
  }

  else
  {
    v46 = v11;
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v46)
  {
    v48 = (*(v47 + 8))(v46, v47);

    *(v45 + 160) = v48;
  }

  else
  {
  }

  *(v45 + 64) = sub_1AFC73B7C;
  *(v45 + 72) = v42;
  sub_1AF0FB8EC(0);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;
  *(v0 + 72) = v45;
  v49 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  v51[4] = sub_1AFC73B00;
  v51[5] = v49;
  v51[2] = sub_1AFC73C10;
  v51[3] = v49;
  v51[6] = v49;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 168) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  strcpy((v52 + 16), "chamferRadius");
  *(v52 + 30) = -4864;
  *(v52 + 32) = v49;
  *(v52 + 40) = v11;
  *(v52 + 48) = 0;
  *(v52 + 56) = 1;
  *(v52 + 58) = 0;
  *(v52 + 184) = 0;
  *(v52 + 188) = 1;
  *(v52 + 192) = 0;
  *(v52 + 196) = 1;
  *(v52 + 200) = 0x1000100000000;
  *(v52 + 208) = 1;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 96) = v50;
  *(v52 + 104) = 0;
  *(v52 + 144) = xmmword_1AFE22A20;
  *(v52 + 80) = v51;
  *(v52 + 88) = &off_1F2535378;
  *(v52 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v53 = (*(v14 + 8))();
  }

  else
  {
    v53 = v11;
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v53)
  {
    v55 = (*(v54 + 8))(v53, v54);

    *(v52 + 160) = v55;
  }

  else
  {
  }

  *(v52 + 64) = sub_1AFC73B7C;
  *(v52 + 72) = v49;
  sub_1AF0FB8EC(0);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;
  *(v0 + 80) = v52;
  v56 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  v58[4] = sub_1AFC73B00;
  v58[5] = v56;
  v58[2] = sub_1AFC73C10;
  v58[3] = v56;
  v58[6] = v56;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 168) = 0;
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  strcpy((v59 + 16), "cornerRadius");
  *(v59 + 29) = 0;
  *(v59 + 30) = -5120;
  *(v59 + 32) = v56;
  *(v59 + 40) = v11;
  *(v59 + 48) = 0;
  *(v59 + 56) = 1;
  *(v59 + 58) = 0;
  *(v59 + 184) = 0;
  *(v59 + 188) = 1;
  *(v59 + 192) = 0;
  *(v59 + 196) = 1;
  *(v59 + 200) = 0x1000100000000;
  *(v59 + 208) = 1;
  *(v59 + 64) = 0;
  *(v59 + 72) = 0;
  *(v59 + 96) = v57;
  *(v59 + 104) = 0;
  *(v59 + 144) = xmmword_1AFE22A20;
  *(v59 + 80) = v58;
  *(v59 + 88) = &off_1F2535378;
  *(v59 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v60 = (*(v14 + 8))();
  }

  else
  {
    v60 = v11;
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v60)
  {
    v62 = (*(v61 + 8))(v60, v61);

    *(v59 + 160) = v62;
  }

  else
  {
  }

  *(v59 + 64) = sub_1AFC73B7C;
  *(v59 + 72) = v56;
  sub_1AF0FB8EC(0);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = 0;
  *(v0 + 88) = v59;
  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  v65 = swift_allocObject();
  v65[4] = sub_1AFC73B00;
  v65[5] = v63;
  v65[2] = sub_1AFC73C10;
  v65[3] = v63;
  v65[6] = v63;
  v66 = swift_allocObject();
  *(v66 + 112) = 1;
  *(v66 + 128) = 0;
  *(v66 + 136) = 0;
  *(v66 + 120) = 0;
  *(v66 + 160) = MEMORY[0x1E69E7CC0];
  *(v66 + 168) = 0;
  *(v66 + 216) = 0;
  *(v66 + 176) = 0;
  *(v66 + 16) = 0x64615272656E6E69;
  *(v66 + 24) = 0xEB00000000737569;
  *(v66 + 32) = v63;
  *(v66 + 40) = v11;
  *(v66 + 48) = 0;
  *(v66 + 56) = 1;
  *(v66 + 58) = 0;
  *(v66 + 184) = 0;
  *(v66 + 188) = 1;
  *(v66 + 192) = 0;
  *(v66 + 196) = 1;
  *(v66 + 200) = 0x1000100000000;
  *(v66 + 208) = 1;
  *(v66 + 64) = 0;
  *(v66 + 72) = 0;
  *(v66 + 96) = v64;
  *(v66 + 104) = 0;
  *(v66 + 144) = xmmword_1AFE22A20;
  *(v66 + 80) = v65;
  *(v66 + 88) = &off_1F2535378;
  *(v66 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v67 = (*(v14 + 8))();
  }

  else
  {
    v67 = v11;
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v67)
  {
    v69 = (*(v68 + 8))(v67, v68);

    *(v66 + 160) = v69;
  }

  else
  {
  }

  *(v66 + 64) = sub_1AFC73B7C;
  *(v66 + 72) = v63;
  sub_1AF0FB8EC(0);
  *(v66 + 168) = 0;
  *(v66 + 176) = 0;

  *(v66 + 216) = 0;
  *(v0 + 96) = v66;
  v70 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AFC73B00;
  v72[5] = v70;
  v72[2] = sub_1AFC73C10;
  v72[3] = v70;
  v72[6] = v70;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 216) = 0;
  *(v73 + 176) = 0;
  *(v73 + 16) = 0x6964615265706970;
  *(v73 + 24) = 0xEA00000000007375;
  *(v73 + 32) = v70;
  *(v73 + 40) = v11;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 96) = v71;
  *(v73 + 104) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v74 = (*(v14 + 8))();
  }

  else
  {
    v74 = v11;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    v76 = (*(v75 + 8))(v74, v75);

    *(v73 + 160) = v76;
  }

  else
  {
  }

  *(v73 + 64) = sub_1AFC73B7C;
  *(v73 + 72) = v70;
  sub_1AF0FB8EC(0);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;

  *(v73 + 216) = 0;
  *(v0 + 104) = v73;
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  v79 = swift_allocObject();
  v79[4] = sub_1AFC73B00;
  v79[5] = v77;
  v79[2] = sub_1AFC73C10;
  v79[3] = v77;
  v79[6] = v77;
  v80 = swift_allocObject();
  *(v80 + 112) = 1;
  *(v80 + 128) = 0;
  *(v80 + 136) = 0;
  *(v80 + 120) = 0;
  *(v80 + 160) = MEMORY[0x1E69E7CC0];
  *(v80 + 168) = 0;
  *(v80 + 216) = 0;
  *(v80 + 176) = 0;
  *(v80 + 16) = 0x70536C6169646172;
  *(v80 + 24) = 0xEA00000000006E61;
  *(v80 + 32) = v77;
  *(v80 + 40) = v11;
  *(v80 + 48) = 0;
  *(v80 + 56) = 1;
  *(v80 + 58) = 0;
  *(v80 + 184) = 0;
  *(v80 + 188) = 1;
  *(v80 + 192) = 0;
  *(v80 + 196) = 1;
  *(v80 + 200) = 0x1000100000000;
  *(v80 + 208) = 1;
  *(v80 + 64) = 0;
  *(v80 + 72) = 0;
  *(v80 + 96) = v78;
  *(v80 + 104) = 0;
  *(v80 + 144) = xmmword_1AFE22A20;
  *(v80 + 80) = v79;
  *(v80 + 88) = &off_1F2535378;
  *(v80 + 210) = 0;
  swift_retain_n();

  if (v14)
  {
    v11 = (*(v14 + 8))();
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v11)
  {
    v82 = (*(v81 + 8))(v11, v81);

    *(v80 + 160) = v82;
  }

  else
  {
  }

  *(v80 + 64) = sub_1AFC73B7C;
  *(v80 + 72) = v77;
  sub_1AF0FB8EC(0);
  *(v80 + 168) = 0;
  *(v80 + 176) = 0;

  *(v80 + 216) = 0;
  *(v0 + 112) = v80;
  qword_1EB6C3658 = v0;
  return result;
}

void sub_1AFC61ADC(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

LABEL_6:
  *a2 = v6;
}

void sub_1AFC61B60(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ([objc_opt_self() immediateMode])
  {
    v4 = *(a2 + 32);
  }

  else
  {
    v4 = sub_1AFC5FD98();
  }

  v5 = v4;
  [v4 setParametricType_];
}

BOOL sub_1AFC61BE0()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v5 = [v2 v4[52]];

  if (v5 == 1)
  {
    return 1;
  }

LABEL_6:
  if ([v1 immediateMode])
  {
    v6 = *(v0 + 32);
    v7 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = sub_1AFC5FD98();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v8 = [v6 v4[52]];

  if (v8 == 6)
  {
    return 1;
  }

LABEL_11:
  if ([v1 immediateMode])
  {
    v9 = *(v0 + 32);
    v10 = v9;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = sub_1AFC5FD98();
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  v11 = [v9 v4[52]];

  if (v11 == 7)
  {
    return 1;
  }

LABEL_16:
  if ([v1 immediateMode])
  {
    v12 = *(v0 + 32);
    v13 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v12 = sub_1AFC5FD98();
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v14 = [v12 v4[52]];

  if (v14 == 5)
  {
    return 1;
  }

LABEL_21:
  if (![v1 immediateMode])
  {
    v15 = sub_1AFC5FD98();
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_25:
    v17 = [v15 v4[52]];

    if (v17 != 4)
    {
      goto LABEL_27;
    }

    return 1;
  }

  v15 = *(v0 + 32);
  v16 = v15;
  if (v15)
  {
    goto LABEL_25;
  }

LABEL_27:
  if ([v1 immediateMode])
  {
    v19 = *(v0 + 32);
    v20 = v19;
    if (v19)
    {
LABEL_29:
      v21 = [v19 v4[52]];

      return v21 == 8;
    }
  }

  else
  {
    v19 = sub_1AFC5FD98();
    if (v19)
    {
      goto LABEL_29;
    }
  }

  return 0;
}

BOOL sub_1AFC61DE0()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 5;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC61E58(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 5;
LABEL_6:
  *a2 = v7;
}

BOOL sub_1AFC61EE4()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    if (!v2)
    {
      return 1;
    }
  }

  v4 = [v2 parametricType];

  if (!v4)
  {
    return 1;
  }

  if (![v1 immediateMode])
  {
    v5 = sub_1AFC5FD98();
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    v7 = [v5 parametricType];

    if (v7 != 3)
    {
      goto LABEL_12;
    }

    return 1;
  }

  v5 = *(v0 + 32);
  v6 = v5;
  if (v5)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ([v1 immediateMode])
  {
    v9 = *(v0 + 32);
    v10 = v9;
    if (v9)
    {
LABEL_14:
      v11 = [v9 parametricType];

      return v11 == 2;
    }
  }

  else
  {
    v9 = sub_1AFC5FD98();
    if (v9)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

BOOL sub_1AFC62004()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    if (!v2)
    {
      return 1;
    }
  }

  v4 = [v2 parametricType];

  if (!v4)
  {
    return 1;
  }

  if ([v1 immediateMode])
  {
    v5 = *(v0 + 32);
    v6 = v5;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = sub_1AFC5FD98();
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  v7 = [v5 parametricType];

  if (v7 == 6)
  {
    return 1;
  }

LABEL_11:
  if ([v1 immediateMode])
  {
    v8 = *(v0 + 32);
    v9 = v8;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = sub_1AFC5FD98();
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  v10 = [v8 parametricType];

  if (v10 == 7)
  {
    return 1;
  }

LABEL_16:
  if ([v1 immediateMode])
  {
    v11 = *(v0 + 32);
    v12 = v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = sub_1AFC5FD98();
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  v13 = [v11 parametricType];

  if (v13 == 3)
  {
    return 1;
  }

LABEL_21:
  if ([v1 immediateMode])
  {
    v14 = *(v0 + 32);
    v15 = v14;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v14 = sub_1AFC5FD98();
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  v16 = [v14 parametricType];

  if (v16 == 5)
  {
    return 1;
  }

LABEL_26:
  if (![v1 immediateMode])
  {
    v17 = sub_1AFC5FD98();
    if (!v17)
    {
      goto LABEL_32;
    }

LABEL_30:
    v19 = [v17 parametricType];

    if (v19 != 4)
    {
      goto LABEL_32;
    }

    return 1;
  }

  v17 = *(v0 + 32);
  v18 = v17;
  if (v17)
  {
    goto LABEL_30;
  }

LABEL_32:
  if ([v1 immediateMode])
  {
    v21 = *(v0 + 32);
    v22 = v21;
    if (v21)
    {
LABEL_34:
      v23 = [v21 parametricType];

      return v23 == 2;
    }
  }

  else
  {
    v21 = sub_1AFC5FD98();
    if (v21)
    {
      goto LABEL_34;
    }
  }

  return 0;
}

BOOL sub_1AFC62244()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    if (!v2)
    {
      return 1;
    }
  }

  v4 = [v2 parametricType];

  if (!v4)
  {
    return 1;
  }

  if ([v1 immediateMode])
  {
    v5 = *(v0 + 32);
    v6 = v5;
    if (v5)
    {
LABEL_8:
      v7 = [v5 parametricType];

      return v7 == 3;
    }
  }

  else
  {
    v5 = sub_1AFC5FD98();
    if (v5)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

BOOL sub_1AFC6231C()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 0;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

void sub_1AFC62394(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 0;
LABEL_6:
  *a2 = v7;
}

BOOL sub_1AFC62420()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 2;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC62498(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 2;
LABEL_6:
  *a2 = v7;
}

BOOL sub_1AFC62524()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 32);
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 parametricType];

      return v3 == 8;
    }
  }

  else
  {
    v1 = sub_1AFC5FD98();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_1AFC6259C(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v4 = sub_1AFC5FD98();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = [v4 parametricType];

  v7 = v6 == 8;
LABEL_6:
  *a2 = v7;
}

void sub_1AFC62628(uint64_t a1@<X0>, SEL *a2@<X3>, _DWORD *a3@<X8>)
{
  if (![objc_opt_self() immediateMode])
  {
    v6 = sub_1AFC5FD98();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = *(a1 + 32);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  [v6 *a2];
  v9 = v8;

LABEL_6:
  *a3 = v9;
}

void sub_1AFC626B4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  if ([objc_opt_self() immediateMode])
  {
    v8 = *(a2 + 32);
  }

  else
  {
    v8 = sub_1AFC5FD98();
  }

  v10 = v8;
  LODWORD(v9) = v7;
  [v8 *a5];
}

BOOL sub_1AFC6273C()
{
  v1 = objc_opt_self();
  if ([v1 immediateMode])
  {
    v2 = *(v0 + 32);
    v3 = v2;
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v2 = sub_1AFC5FD98();
    v4 = &selRef_numberWithBool_;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v5 = [v2 v4[52]];

  if (v5 == 1)
  {
    return 1;
  }

LABEL_6:
  if ([v1 immediateMode])
  {
    v6 = *(v0 + 32);
    v7 = v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = sub_1AFC5FD98();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v8 = [v6 v4[52]];

  if (v8 == 4)
  {
    return 1;
  }

LABEL_11:
  if (![v1 immediateMode])
  {
    v9 = sub_1AFC5FD98();
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_15:
    v11 = [v9 v4[52]];

    if (v11 != 6)
    {
      goto LABEL_17;
    }

    return 1;
  }

  v9 = *(v0 + 32);
  v10 = v9;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_17:
  if ([v1 immediateMode])
  {
    v13 = *(v0 + 32);
    v14 = v13;
    if (v13)
    {
LABEL_19:
      v15 = [v13 v4[52]];

      return v15 == 8;
    }
  }

  else
  {
    v13 = sub_1AFC5FD98();
    if (v13)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

id sub_1AFC628C8(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
  }

  else
  {
    sub_1AFC73A9C(v1, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v3 = [v6 *a1];
  }

  return v3;
}

double sub_1AFC629A0()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      [v1 angularVelocity];
      v7 = v3;

      return v7;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 physicsBody];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

double sub_1AFC62ABC(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = v1[4];
    v4 = v3;
    if (v3)
    {
LABEL_3:
      [v3 *a1];
      v9 = v5;

      return v9;
    }
  }

  else
  {
    sub_1AFC73A9C(v1, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (Strong)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v8 = 0;
    }

    v3 = [v8 physicsBody];

    if (v3)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

uint64_t sub_1AFC62C1C@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t (*a3)(char *)@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  v39 = 0;
  swift_unknownObjectWeakInit();
  v39 = 0;
  swift_unknownObjectWeakAssign();
  v40 = 0x3E6C6C756E3CLL;
  v41 = 0xE600000000000000;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v14 = a1[3];
  v15 = a1[4];
  sub_1AF441150(a1, v14);
  if (sub_1AF694FF8(2037, v14, v15))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v4)
    {
      sub_1AF441150(&v30, v33);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v16 = &v34;
LABEL_9:
      sub_1AF9B3A74(v16, v38);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v30);
LABEL_17:
      a2(v38, v45);
    }
  }

  else
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_1AF441150(a1, v17);
    if (sub_1AF694FF8(2029, v17, v18))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v4)
      {
        sub_1AF441150(&v30, v33);
        v21 = sub_1AFDFEE38();
        v23 = v22;
        v35 = 0;
        swift_unknownObjectWeakInit();
        v35 = 0;
        v16 = swift_unknownObjectWeakAssign();
        v36 = v21;
        v37 = v23;
        goto LABEL_9;
      }
    }

    else
    {
      v29 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v4)
      {
        v34 = 0;
        LOBYTE(v35) = 1;
        v36 = 0xD000000000000017;
        v37 = 0x80000001AFF4C150;
        v19 = sub_1AFDFE698();
        if (v20)
        {
          v24 = v19;
        }

        else
        {
          v24 = 0;
        }

        if (v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = 0xE000000000000000;
        }

        (*(v10 + 8))(v13, v9);
        v31 = 0;
        swift_unknownObjectWeakInit();
        v31 = 0;
        v26 = swift_unknownObjectWeakAssign();
        v32 = v24;
        v33 = v25;
        sub_1AF9B3A74(v26, v38);
        a2 = v29;
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a3(v38);
}

void sub_1AFC62FF4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v3, ObjectType, a2);
  sub_1AFC73A9C(v3, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v12);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = [v9 presentationNode];
  swift_unknownObjectRelease();
  v11 = [v10 *a3];

LABEL_6:
  v5[4] = v11;
}

void *sub_1AFC6314C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  result = swift_unknownObjectWeakAssign();
  result[2] = 0x3E6C6C756E3CLL;
  result[3] = 0xE600000000000000;
  result[5] = 0;
  result[6] = 0;
  result[4] = 0;
  return result;
}

uint64_t sub_1AFC63198()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55190;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC71508;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC71520;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v6 = v5;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x797469636F6C6576;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v5;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 256;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 256;
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  swift_retain_n();
  v9 = v6;
  if (v8)
  {
    v9 = (*(v7 + 8))(v8, v7);
  }

  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    *(v4 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v4 + 64);
  *(v4 + 64) = sub_1AFC7152C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v11);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v12 = swift_getKeyPath();
  v13 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v14 = swift_allocObject();
  v14[4] = sub_1AFC71508;
  v14[5] = v12;
  v14[2] = sub_1AFC71534;
  v14[3] = v12;
  v14[6] = v12;
  v15 = swift_allocObject();
  *(v15 + 104) = 0;
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 210) = 0;
  *(v15 + 216) = 0;
  v16 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v13);
  v18 = v17;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x5672616C75676E61;
  *(v15 + 24) = 0xEF797469636F6C65;
  *(v15 + 32) = v12;
  *(v15 + 40) = v17;
  *(v15 + 48) = 0;
  *(v15 + 56) = 1;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 1;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19 && v18)
  {
    v18 = (*(v19 + 8))(v18, v19);
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v18)
  {
    *(v15 + 160) = (*(v20 + 8))(v18, v20);
  }

  v21 = *(v15 + 64);
  *(v15 + 64) = sub_1AFC71540;
  *(v15 + 72) = v12;
  sub_1AF0FB8EC(v21);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v0 + 40) = v15;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AFC73B80;
  v23[5] = v22;
  v23[2] = sub_1AFC73C14;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 210) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  strcpy((v24 + 16), "velocityFactor");
  *(v24 + 31) = -18;
  *(v24 + 32) = v22;
  *(v24 + 40) = v6;
  *(v24 + 48) = 0;
  *(v24 + 56) = 1;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 1;
  *(v24 + 192) = 0;
  *(v24 + 196) = 1;
  *(v24 + 200) = 0x1000100000000;
  *(v24 + 208) = 1;
  *(v24 + 64) = 0;
  *(v24 + 72) = 0;
  *(v24 + 96) = 0;
  *(v24 + 104) = 0;
  *(v24 + 144) = xmmword_1AFE22A20;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  swift_retain_n();
  v25 = v6;
  if (v8)
  {
    v25 = (*(v7 + 8))(v8, v7);
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    *(v24 + 160) = (*(v26 + 8))(v25, v26);
  }

  v27 = *(v24 + 64);
  *(v24 + 64) = sub_1AFC73B84;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(v27);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;

  *(v0 + 48) = v24;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AFC73B80;
  v29[5] = v28;
  v29[2] = sub_1AFC73C14;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0xD000000000000015;
  *(v30 + 24) = 0x80000001AFF4BFF0;
  *(v30 + 32) = v28;
  *(v30 + 40) = v6;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v6 = (*(v7 + 8))(v8, v7);
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v6)
  {
    *(v30 + 160) = (*(v31 + 8))(v6, v31);
  }

  v32 = *(v30 + 64);
  *(v30 + 64) = sub_1AFC73B84;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(v32);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;

  *(v0 + 56) = v30;
  v33 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v16, type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AFC71618;
  v34[5] = v33;
  v34[2] = sub_1AFC7164C;
  v34[3] = v33;
  v34[6] = v33;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  v36 = MEMORY[0x1E69E7CC0];
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x676E69706D6164;
  *(v35 + 24) = 0xE700000000000000;
  *(v35 + 32) = v33;
  *(v35 + 40) = v16;
  *(v35 + 48) = 0;
  *(v35 + 56) = 1;
  *(v35 + 58) = 256;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 256;
  v37 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v37)
  {
    v38 = (*(v37 + 8))();
  }

  else
  {
    v38 = v16;
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v38)
  {
    *(v35 + 160) = (*(v39 + 8))(v38, v39);
  }

  *(v35 + 64) = sub_1AFC71658;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 64) = v35;
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  v41[4] = sub_1AFC73B04;
  v41[5] = v40;
  v41[2] = sub_1AFC73C18;
  v41[3] = v40;
  v41[6] = v40;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = v36;
  *(v42 + 168) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  strcpy((v42 + 16), "angularDamping");
  *(v42 + 31) = -18;
  *(v42 + 32) = v40;
  *(v42 + 40) = v16;
  *(v42 + 48) = 0;
  *(v42 + 56) = 1;
  *(v42 + 58) = 0;
  *(v42 + 184) = 0;
  *(v42 + 188) = 1;
  *(v42 + 192) = 0;
  *(v42 + 196) = 1;
  *(v42 + 200) = 0x1000100000000;
  *(v42 + 208) = 1;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  *(v42 + 144) = xmmword_1AFE22A20;
  *(v42 + 80) = v41;
  *(v42 + 88) = &off_1F2535378;
  *(v42 + 210) = 0;
  swift_retain_n();
  if (v37)
  {
    v43 = (*(v37 + 8))();
  }

  else
  {
    v43 = v16;
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v43)
  {
    *(v42 + 160) = (*(v44 + 8))(v43, v44);
  }

  *(v42 + 64) = sub_1AFC73B88;
  *(v42 + 72) = v40;
  sub_1AF0FB8EC(0);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;
  *(v0 + 72) = v42;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AFC73B04;
  v46[5] = v45;
  v46[2] = sub_1AFC73C18;
  v46[3] = v45;
  v46[6] = v45;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = v36;
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 1936941421;
  *(v47 + 24) = 0xE400000000000000;
  *(v47 + 32) = v45;
  *(v47 + 40) = v16;
  *(v47 + 48) = 0;
  *(v47 + 56) = 1;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 1;
  *(v47 + 192) = 0;
  *(v47 + 196) = 1;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = 0;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 0;
  swift_retain_n();
  if (v37)
  {
    v48 = (*(v37 + 8))();
  }

  else
  {
    v48 = v16;
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    *(v47 + 160) = (*(v49 + 8))(v48, v49);
  }

  *(v47 + 64) = sub_1AFC73B88;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v0 + 80) = v47;
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  v51[4] = sub_1AFC73B04;
  v51[5] = v50;
  v51[2] = sub_1AFC73C18;
  v51[3] = v50;
  v51[6] = v50;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = v36;
  *(v52 + 168) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 0x656772616863;
  *(v52 + 24) = 0xE600000000000000;
  *(v52 + 32) = v50;
  *(v52 + 40) = v16;
  *(v52 + 48) = 0;
  *(v52 + 56) = 1;
  *(v52 + 58) = 0;
  *(v52 + 184) = 0;
  *(v52 + 188) = 1;
  *(v52 + 192) = 0;
  *(v52 + 196) = 1;
  *(v52 + 200) = 0x1000100000000;
  *(v52 + 208) = 1;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 96) = 0;
  *(v52 + 104) = 0;
  *(v52 + 144) = xmmword_1AFE22A20;
  *(v52 + 80) = v51;
  *(v52 + 88) = &off_1F2535378;
  *(v52 + 210) = 0;
  swift_retain_n();
  if (v37)
  {
    v53 = (*(v37 + 8))();
  }

  else
  {
    v53 = v16;
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v53)
  {
    *(v52 + 160) = (*(v54 + 8))(v53, v54);
  }

  *(v52 + 64) = sub_1AFC73B88;
  *(v52 + 72) = v50;
  sub_1AF0FB8EC(0);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;
  *(v0 + 88) = v52;
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  v56[4] = sub_1AFC73B04;
  v56[5] = v55;
  v56[2] = sub_1AFC73C18;
  v56[3] = v55;
  v56[6] = v55;
  v57 = swift_allocObject();
  *(v57 + 112) = 1;
  *(v57 + 128) = 0;
  *(v57 + 136) = 0;
  *(v57 + 120) = 0;
  *(v57 + 160) = v36;
  *(v57 + 168) = 0;
  *(v57 + 216) = 0;
  *(v57 + 176) = 0;
  *(v57 + 16) = 0x6E6F697463697266;
  *(v57 + 24) = 0xE800000000000000;
  *(v57 + 32) = v55;
  *(v57 + 40) = v16;
  *(v57 + 48) = 0;
  *(v57 + 56) = 1;
  *(v57 + 58) = 0;
  *(v57 + 184) = 0;
  *(v57 + 188) = 1;
  *(v57 + 192) = 0;
  *(v57 + 196) = 1;
  *(v57 + 200) = 0x1000100000000;
  *(v57 + 208) = 1;
  *(v57 + 64) = 0;
  *(v57 + 72) = 0;
  *(v57 + 96) = 0;
  *(v57 + 104) = 0;
  *(v57 + 144) = xmmword_1AFE22A20;
  *(v57 + 80) = v56;
  *(v57 + 88) = &off_1F2535378;
  *(v57 + 210) = 0;
  swift_retain_n();
  if (v37)
  {
    v58 = (*(v37 + 8))();
  }

  else
  {
    v58 = v16;
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && v58)
  {
    *(v57 + 160) = (*(v59 + 8))(v58, v59);
  }

  *(v57 + 64) = sub_1AFC73B88;
  *(v57 + 72) = v55;
  sub_1AF0FB8EC(0);
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;

  *(v57 + 216) = 0;
  *(v0 + 96) = v57;
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  v61[4] = sub_1AFC73B04;
  v61[5] = v60;
  v61[2] = sub_1AFC73C18;
  v61[3] = v60;
  v61[6] = v60;
  v62 = swift_allocObject();
  *(v62 + 112) = 1;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 120) = 0;
  *(v62 + 160) = v36;
  *(v62 + 168) = 0;
  *(v62 + 216) = 0;
  *(v62 + 176) = 0;
  *(v62 + 16) = 0x7475746974736572;
  *(v62 + 24) = 0xEB000000006E6F69;
  *(v62 + 32) = v60;
  *(v62 + 40) = v16;
  *(v62 + 48) = 0;
  *(v62 + 56) = 1;
  *(v62 + 58) = 0;
  *(v62 + 184) = 0;
  *(v62 + 188) = 1;
  *(v62 + 192) = 0;
  *(v62 + 196) = 1;
  *(v62 + 200) = 0x1000100000000;
  *(v62 + 208) = 1;
  *(v62 + 64) = 0;
  *(v62 + 72) = 0;
  *(v62 + 96) = 0;
  *(v62 + 104) = 0;
  *(v62 + 144) = xmmword_1AFE22A20;
  *(v62 + 80) = v61;
  *(v62 + 88) = &off_1F2535378;
  *(v62 + 210) = 0;
  swift_retain_n();
  if (v37)
  {
    v63 = (*(v37 + 8))();
  }

  else
  {
    v63 = v16;
  }

  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    *(v62 + 160) = (*(v64 + 8))(v63, v64);
  }

  *(v62 + 64) = sub_1AFC73B88;
  *(v62 + 72) = v60;
  sub_1AF0FB8EC(0);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 216) = 0;
  *(v0 + 104) = v62;
  v65 = swift_getKeyPath();
  v66 = swift_allocObject();
  v66[4] = sub_1AFC73B04;
  v66[5] = v65;
  v66[2] = sub_1AFC73C18;
  v66[3] = v65;
  v66[6] = v65;
  v67 = swift_allocObject();
  *(v67 + 112) = 1;
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 120) = 0;
  *(v67 + 160) = v36;
  *(v67 + 168) = 0;
  *(v67 + 216) = 0;
  *(v67 + 176) = 0;
  *(v67 + 16) = 0x46676E696C6C6F72;
  *(v67 + 24) = 0xEF6E6F6974636972;
  *(v67 + 32) = v65;
  *(v67 + 40) = v16;
  *(v67 + 48) = 0;
  *(v67 + 56) = 1;
  *(v67 + 58) = 0;
  *(v67 + 184) = 0;
  *(v67 + 188) = 1;
  *(v67 + 192) = 0;
  *(v67 + 196) = 1;
  *(v67 + 200) = 0x1000100000000;
  *(v67 + 208) = 1;
  *(v67 + 64) = 0;
  *(v67 + 72) = 0;
  *(v67 + 96) = 0;
  *(v67 + 104) = 0;
  *(v67 + 144) = xmmword_1AFE22A20;
  *(v67 + 80) = v66;
  *(v67 + 88) = &off_1F2535378;
  *(v67 + 210) = 0;
  swift_retain_n();
  if (v37)
  {
    v16 = (*(v37 + 8))();
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v16)
  {
    *(v67 + 160) = (*(v68 + 8))(v16, v68);
  }

  *(v67 + 64) = sub_1AFC73B88;
  *(v67 + 72) = v65;
  sub_1AF0FB8EC(0);
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 216) = 0;
  *(v0 + 112) = v67;
  qword_1EB6C3660 = v0;
  return result;
}

void sub_1AFC64620(uint64_t a1@<X3>, uint64_t (*a2)(uint64_t)@<X4>, SEL *a3@<X5>, _DWORD *a4@<X8>)
{
  v6 = a2(a1);
  if (v6)
  {
    v7 = v6;
    [v6 *a3];
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
}

id sub_1AFC646A8(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (Strong)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = [v9 *a2];

    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = v2[4];
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v7 = [v5 *a1];

  return v7;
}

double sub_1AFC647FC(SEL *a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = v2[4];
    v6 = v5;
    if (v5)
    {
LABEL_3:
      [v5 *a1];
      v11 = v7;

      return v11;
    }
  }

  else
  {
    sub_1AFC73A9C(v2, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v12);
    if (Strong)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    v5 = [v10 *a2];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

uint64_t sub_1AFC6499C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_1AFEA6590;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AFC7246C(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC716C8;
  v3[5] = v1;
  v3[2] = sub_1AFC716FC;
  v3[3] = v1;
  v3[6] = v1;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 136) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 160) = v5;
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  strcpy((v4 + 16), "fieldTypeIndex");
  *(v4 + 31) = -18;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  v122 = v6;
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = sub_1AFC71708;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  sub_1AFC700D0(0, &unk_1EB643A40, type metadata accessor for VFXForceFieldType);
  v9 = swift_allocObject();
  v9[4] = sub_1AFC71710;
  v9[5] = KeyPath;
  v9[2] = sub_1AFC71744;
  v9[3] = KeyPath;
  v9[6] = KeyPath;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 210) = 0;
  *(v10 + 216) = 0;
  type metadata accessor for VFXForceFieldType(0);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x707954646C656966;
  *(v10 + 24) = 0xE900000000000065;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 96) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v14 = v123;
    if (v12)
    {
      v12 = (*(v13 + 8))(v12, v13);
    }
  }

  else
  {
    v14 = v123;
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v12)
  {
    *(v10 + 160) = (*(v15 + 8))(v12, v15);
  }

  v16 = *(v10 + 64);
  *(v10 + 64) = sub_1AFC71750;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(v16);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v4;

  v14[4] = v10;
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AFC71758;
  v19[5] = v17;
  v19[2] = sub_1AFC7178C;
  v19[3] = v17;
  v19[6] = v17;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 210) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6874676E65727473;
  *(v20 + 24) = 0xE800000000000000;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = 0;
  *(v20 + 56) = 1;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 1;
  *(v20 + 192) = 0;
  *(v20 + 196) = 1;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  v21 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v21)
  {
    v22 = (*(v21 + 8))();
  }

  else
  {
    v22 = v18;
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v22)
  {
    *(v20 + 160) = (*(v23 + 8))(v22, v23);
  }

  v24 = *(v20 + 64);
  *(v20 + 64) = sub_1AFC71798;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(v24);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  v14[5] = v20;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AFC73B08;
  v26[5] = v25;
  v26[2] = sub_1AFC73C1C;
  v26[3] = v25;
  v26[6] = v25;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 210) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x4566666F6C6C6166;
  *(v27 + 24) = 0xEF746E656E6F7078;
  *(v27 + 32) = v25;
  *(v27 + 40) = v18;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  *(v27 + 58) = 0;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE22A20;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 0;
  swift_retain_n();
  if (v21)
  {
    v18 = (*(v21 + 8))();
  }

  v121 = v21;
  v28 = swift_conformsToProtocol2();
  if (v28 && v18)
  {
    *(v27 + 160) = (*(v28 + 8))(v18, v28);
  }

  v29 = *(v27 + 64);
  *(v27 + 64) = sub_1AFC73B8C;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(v29);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;

  v14[6] = v27;
  v30 = swift_getKeyPath();
  v31 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AFC717A0;
  v32[5] = v30;
  v32[2] = sub_1AFC717CC;
  v32[3] = v30;
  v32[6] = v30;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 210) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x657669746361;
  *(v33 + 24) = 0xE600000000000000;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = 0;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v34 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v34)
  {
    v35 = (*(v34 + 8))();
  }

  else
  {
    v35 = v31;
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v35)
  {
    *(v33 + 160) = (*(v36 + 8))(v35, v36);
  }

  v37 = *(v33 + 64);
  *(v33 + 64) = sub_1AFC717D8;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(v37);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v123 + 56) = v33;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AFC73C50;
  v39[5] = v38;
  v39[2] = sub_1AFC73C20;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 168) = 0;
  *(v40 + 210) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x6C61636F6CLL;
  *(v40 + 24) = 0xE500000000000000;
  *(v40 + 32) = v38;
  *(v40 + 40) = v31;
  *(v40 + 48) = 0;
  *(v40 + 56) = 1;
  *(v40 + 58) = 0;
  *(v40 + 184) = 0;
  *(v40 + 188) = 1;
  *(v40 + 192) = 0;
  *(v40 + 196) = 1;
  *(v40 + 200) = 0x1000100000000;
  *(v40 + 208) = 1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 96) = 0;
  *(v40 + 104) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  swift_retain_n();
  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v31)
  {
    *(v40 + 160) = (*(v41 + 8))(v31, v41);
  }

  v42 = *(v40 + 64);
  *(v40 + 64) = sub_1AFC73B90;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(v42);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;

  *(v123 + 64) = v40;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AFC73C8C;
  v45[5] = v44;
  v45[2] = sub_1AFC73C24;
  v45[3] = v44;
  v45[6] = v44;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 210) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0x646E496570616873;
  *(v46 + 24) = 0xEA00000000007865;
  *(v46 + 32) = v44;
  v47 = MEMORY[0x1E69E7360];
  *(v46 + 40) = MEMORY[0x1E69E7360];
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  swift_retain_n();
  if (v122)
  {
    v48 = (*(v122 + 8))();
  }

  else
  {
    v48 = v47;
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    *(v46 + 160) = (*(v49 + 8))(v48, v49);
  }

  v50 = *(v46 + 64);
  *(v46 + 64) = sub_1AFC73B94;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(v50);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;

  sub_1AFC700D0(0, &qword_1EB63BBC8, type metadata accessor for VFXForceFieldShape);
  v51 = swift_allocObject();
  v51[4] = sub_1AFC71710;
  v51[5] = v43;
  v51[2] = sub_1AFC71844;
  v51[3] = v43;
  v51[6] = v43;
  v52 = swift_allocObject();
  *(v52 + 104) = 0;
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 210) = 0;
  *(v52 + 216) = 0;
  type metadata accessor for VFXForceFieldShape(0);
  v54 = v53;
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 0x6570616873;
  *(v52 + 24) = 0xE500000000000000;
  *(v52 + 32) = v43;
  *(v52 + 40) = v53;
  *(v52 + 48) = 0;
  *(v52 + 56) = 1;
  *(v52 + 58) = 0;
  *(v52 + 184) = 0;
  *(v52 + 188) = 1;
  *(v52 + 192) = 0;
  *(v52 + 196) = 1;
  *(v52 + 200) = 0x1000100000000;
  *(v52 + 208) = 1;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 96) = 0;
  *(v52 + 144) = xmmword_1AFE22A20;
  *(v52 + 80) = v51;
  *(v52 + 88) = &off_1F2535378;
  *(v52 + 210) = 0;
  v55 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v55 && v54)
  {
    v54 = (*(v55 + 8))(v54, v55);
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v54)
  {
    *(v52 + 160) = (*(v56 + 8))(v54, v56);
  }

  v57 = *(v52 + 64);
  *(v52 + 64) = sub_1AFC71850;
  *(v52 + 72) = v43;
  sub_1AF0FB8EC(v57);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = v46;

  *(v123 + 72) = v52;
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v60 = swift_allocObject();
  v60[4] = sub_1AFC71858;
  v60[5] = v58;
  v60[2] = sub_1AFC71870;
  v60[3] = v58;
  v60[6] = v58;
  v61 = swift_allocObject();
  *(v61 + 104) = 0;
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v59);
  v63 = v62;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x65747845666C6168;
  *(v61 + 24) = 0xEA0000000000746ELL;
  *(v61 + 32) = v58;
  *(v61 + 40) = v62;
  *(v61 + 48) = 0;
  *(v61 + 56) = 1;
  *(v61 + 58) = 0;
  *(v61 + 184) = 0;
  *(v61 + 188) = 1;
  *(v61 + 192) = 0;
  *(v61 + 196) = 1;
  *(v61 + 200) = 0x1000100000000;
  *(v61 + 208) = 1;
  *(v61 + 64) = 0;
  *(v61 + 72) = 0;
  *(v61 + 96) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v64 = swift_conformsToProtocol2();
  if (v64)
  {
    v65 = v63;
  }

  else
  {
    v65 = 0;
  }

  swift_retain_n();
  v66 = v63;
  if (v65)
  {
    v66 = (*(v64 + 8))(v65, v64);
  }

  v119 = v64;
  v120 = v65;
  v67 = swift_conformsToProtocol2();
  v68 = MEMORY[0x1E69E7360];
  if (v67 && v66)
  {
    *(v61 + 160) = (*(v67 + 8))(v66, v67);
  }

  v69 = *(v61 + 64);
  *(v61 + 64) = sub_1AFC7187C;
  *(v61 + 72) = v58;
  sub_1AF0FB8EC(v69);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  *(v123 + 80) = v61;
  v70 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AFC73C8C;
  v72[5] = v71;
  v72[2] = sub_1AFC73C24;
  v72[3] = v71;
  v72[6] = v71;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 216) = 0;
  *(v73 + 176) = 0;
  *(v73 + 16) = 0x646E4965706F6373;
  *(v73 + 24) = 0xEA00000000007865;
  *(v73 + 32) = v71;
  *(v73 + 40) = v68;
  *(v73 + 48) = 0;
  *(v73 + 56) = 1;
  *(v73 + 58) = 0;
  *(v73 + 184) = 0;
  *(v73 + 188) = 1;
  *(v73 + 192) = 0;
  *(v73 + 196) = 1;
  *(v73 + 200) = 0x1000100000000;
  *(v73 + 208) = 1;
  *(v73 + 64) = 0;
  *(v73 + 72) = 0;
  *(v73 + 96) = 0;
  *(v73 + 104) = 0;
  *(v73 + 144) = xmmword_1AFE22A20;
  *(v73 + 80) = v72;
  *(v73 + 88) = &off_1F2535378;
  *(v73 + 210) = 0;
  swift_retain_n();
  if (v122)
  {
    v74 = (*(v122 + 8))();
  }

  else
  {
    v74 = v68;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    *(v73 + 160) = (*(v75 + 8))(v74, v75);
  }

  *(v73 + 64) = sub_1AFC73B94;
  *(v73 + 72) = v71;
  sub_1AF0FB8EC(0);
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;

  *(v73 + 216) = 0;
  sub_1AFC700D0(0, &qword_1EB63BBA0, type metadata accessor for VFXForceFieldScope);
  v76 = swift_allocObject();
  v76[4] = sub_1AFC71710;
  v76[5] = v70;
  v76[2] = sub_1AFC71884;
  v76[3] = v70;
  v76[6] = v70;
  v77 = swift_allocObject();
  *(v77 + 104) = 0;
  *(v77 + 112) = 1;
  *(v77 + 128) = 0;
  *(v77 + 136) = 0;
  *(v77 + 120) = 0;
  *(v77 + 160) = MEMORY[0x1E69E7CC0];
  *(v77 + 216) = 0;
  type metadata accessor for VFXForceFieldScope(0);
  v79 = v78;
  *(v77 + 168) = 0;
  *(v77 + 176) = 0;
  *(v77 + 16) = 0x65706F6373;
  *(v77 + 24) = 0xE500000000000000;
  *(v77 + 32) = v70;
  *(v77 + 40) = v78;
  *(v77 + 48) = 0;
  *(v77 + 56) = 1;
  *(v77 + 58) = 0;
  *(v77 + 184) = 0;
  *(v77 + 188) = 1;
  *(v77 + 192) = 0;
  *(v77 + 196) = 1;
  *(v77 + 200) = 0x1000100000000;
  *(v77 + 208) = 1;
  *(v77 + 64) = 0;
  *(v77 + 72) = 0;
  *(v77 + 96) = 0;
  *(v77 + 144) = xmmword_1AFE22A20;
  *(v77 + 80) = v76;
  *(v77 + 88) = &off_1F2535378;
  *(v77 + 210) = 0;
  v80 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v80 && v79)
  {
    v79 = (*(v80 + 8))(v79, v80);
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v79)
  {
    *(v77 + 160) = (*(v81 + 8))(v79, v81);
  }

  v82 = *(v77 + 64);
  *(v77 + 64) = sub_1AFC71890;
  *(v77 + 72) = v70;
  sub_1AF0FB8EC(v82);
  *(v77 + 168) = 0;
  *(v77 + 176) = 0;

  *(v77 + 216) = v73;

  *(v123 + 88) = v77;
  v83 = swift_getKeyPath();
  v84 = swift_getKeyPath();
  v85 = swift_allocObject();
  v85[4] = sub_1AFC73C8C;
  v85[5] = v84;
  v85[2] = sub_1AFC73C24;
  v85[3] = v84;
  v85[6] = v84;
  v86 = swift_allocObject();
  *(v86 + 112) = 1;
  *(v86 + 128) = 0;
  *(v86 + 136) = 0;
  *(v86 + 120) = 0;
  *(v86 + 160) = MEMORY[0x1E69E7CC0];
  *(v86 + 168) = 0;
  *(v86 + 216) = 0;
  *(v86 + 176) = 0;
  strcpy((v86 + 16), "cullModeIndex");
  *(v86 + 30) = -4864;
  *(v86 + 32) = v84;
  v87 = MEMORY[0x1E69E7360];
  *(v86 + 40) = MEMORY[0x1E69E7360];
  *(v86 + 48) = 0;
  *(v86 + 56) = 1;
  *(v86 + 58) = 0;
  *(v86 + 184) = 0;
  *(v86 + 188) = 1;
  *(v86 + 192) = 0;
  *(v86 + 196) = 1;
  *(v86 + 200) = 0x1000100000000;
  *(v86 + 208) = 1;
  *(v86 + 64) = 0;
  *(v86 + 72) = 0;
  *(v86 + 96) = 0;
  *(v86 + 104) = 0;
  *(v86 + 144) = xmmword_1AFE22A20;
  *(v86 + 80) = v85;
  *(v86 + 88) = &off_1F2535378;
  *(v86 + 210) = 0;
  swift_retain_n();
  if (v122)
  {
    v87 = (*(v122 + 8))();
  }

  v88 = swift_conformsToProtocol2();
  if (v88 && v87)
  {
    *(v86 + 160) = (*(v88 + 8))(v87, v88);
  }

  *(v86 + 64) = sub_1AFC73B94;
  *(v86 + 72) = v84;
  sub_1AF0FB8EC(0);
  *(v86 + 168) = 0;
  *(v86 + 176) = 0;

  *(v86 + 216) = 0;
  sub_1AFC700D0(0, &qword_1EB63BB80, type metadata accessor for VFXForceFieldCullMode);
  v89 = swift_allocObject();
  v89[4] = sub_1AFC71710;
  v89[5] = v83;
  v89[2] = sub_1AFC71898;
  v89[3] = v83;
  v89[6] = v83;
  v90 = swift_allocObject();
  *(v90 + 104) = 0;
  *(v90 + 112) = 1;
  *(v90 + 128) = 0;
  *(v90 + 136) = 0;
  *(v90 + 120) = 0;
  *(v90 + 160) = MEMORY[0x1E69E7CC0];
  *(v90 + 216) = 0;
  type metadata accessor for VFXForceFieldCullMode(0);
  v92 = v91;
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;
  *(v90 + 16) = 0x65646F4D6C6C7563;
  *(v90 + 24) = 0xE800000000000000;
  *(v90 + 32) = v83;
  *(v90 + 40) = v91;
  *(v90 + 48) = 0;
  *(v90 + 56) = 1;
  *(v90 + 58) = 0;
  *(v90 + 184) = 0;
  *(v90 + 188) = 1;
  *(v90 + 192) = 0;
  *(v90 + 196) = 1;
  *(v90 + 200) = 0x1000100000000;
  *(v90 + 208) = 1;
  *(v90 + 64) = 0;
  *(v90 + 72) = 0;
  *(v90 + 96) = 0;
  *(v90 + 144) = xmmword_1AFE22A20;
  *(v90 + 80) = v89;
  *(v90 + 88) = &off_1F2535378;
  *(v90 + 210) = 0;
  v93 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v93)
  {
    v94 = v120;
    if (v92)
    {
      v92 = (*(v93 + 8))(v92, v93);
    }
  }

  else
  {
    v94 = v120;
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v92)
  {
    *(v90 + 160) = (*(v95 + 8))(v92, v95);
  }

  v96 = *(v90 + 64);
  *(v90 + 64) = sub_1AFC718A4;
  *(v90 + 72) = v83;
  sub_1AF0FB8EC(v96);
  *(v90 + 168) = 0;
  *(v90 + 176) = 0;

  *(v90 + 216) = v86;

  *(v123 + 96) = v90;
  v97 = swift_getKeyPath();
  v98 = swift_allocObject();
  v98[4] = sub_1AFC73B98;
  v98[5] = v97;
  v98[2] = sub_1AFC73C28;
  v98[3] = v97;
  v98[6] = v97;
  v99 = swift_allocObject();
  *(v99 + 112) = 1;
  *(v99 + 128) = 0;
  *(v99 + 136) = 0;
  *(v99 + 120) = 0;
  *(v99 + 160) = MEMORY[0x1E69E7CC0];
  *(v99 + 168) = 0;
  *(v99 + 216) = 0;
  *(v99 + 176) = 0;
  *(v99 + 16) = 0x74657366666FLL;
  *(v99 + 24) = 0xE600000000000000;
  *(v99 + 32) = v97;
  *(v99 + 40) = v63;
  *(v99 + 48) = 0;
  *(v99 + 56) = 1;
  *(v99 + 58) = 0;
  *(v99 + 184) = 0;
  *(v99 + 188) = 1;
  *(v99 + 192) = 0;
  *(v99 + 196) = 1;
  *(v99 + 200) = 0x1000100000000;
  *(v99 + 208) = 1;
  *(v99 + 64) = 0;
  *(v99 + 72) = 0;
  *(v99 + 96) = 0;
  *(v99 + 104) = 0;
  *(v99 + 144) = xmmword_1AFE22A20;
  *(v99 + 80) = v98;
  *(v99 + 88) = &off_1F2535378;
  *(v99 + 210) = 0;
  swift_retain_n();
  if (v94)
  {
    v63 = (*(v119 + 8))(v94);
  }

  v100 = swift_conformsToProtocol2();
  if (v100 && v63)
  {
    *(v99 + 160) = (*(v100 + 8))(v63, v100);
  }

  v101 = *(v99 + 64);
  *(v99 + 64) = sub_1AFC73B9C;
  *(v99 + 72) = v97;
  sub_1AF0FB8EC(v101);
  *(v99 + 168) = 0;
  *(v99 + 176) = 0;

  *(v99 + 216) = 0;

  *(v123 + 104) = v99;
  v102 = swift_getKeyPath();
  v103 = MEMORY[0x1E69E76D8];
  sub_1AFC7246C(0, &unk_1EB643A50, MEMORY[0x1E69E76D8], type metadata accessor for EntityGetSet);
  v104 = swift_allocObject();
  v104[4] = sub_1AFC716C8;
  v104[5] = v102;
  v104[2] = sub_1AFC719D8;
  v104[3] = v102;
  v104[6] = v102;
  v105 = swift_allocObject();
  *(v105 + 112) = 1;
  *(v105 + 128) = 0;
  *(v105 + 136) = 0;
  *(v105 + 120) = 0;
  *(v105 + 160) = MEMORY[0x1E69E7CC0];
  *(v105 + 168) = 0;
  *(v105 + 216) = 0;
  *(v105 + 176) = 0;
  *(v105 + 16) = 0x79726F6765746163;
  *(v105 + 24) = 0xEF6B73614D746942;
  *(v105 + 32) = v102;
  *(v105 + 40) = v103;
  *(v105 + 48) = 0;
  *(v105 + 56) = 1;
  *(v105 + 58) = 0;
  *(v105 + 184) = 0;
  *(v105 + 188) = 1;
  *(v105 + 192) = 0;
  *(v105 + 196) = 1;
  *(v105 + 200) = 0x1000100000000;
  *(v105 + 208) = 1;
  *(v105 + 64) = 0;
  *(v105 + 72) = 0;
  *(v105 + 96) = 0;
  *(v105 + 104) = 0;
  *(v105 + 144) = xmmword_1AFE22A20;
  *(v105 + 80) = v104;
  *(v105 + 88) = &off_1F2535378;
  *(v105 + 210) = 0;
  v106 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v106)
  {
    v103 = (*(v106 + 8))();
  }

  v107 = swift_conformsToProtocol2();
  if (v107 && v103)
  {
    *(v105 + 160) = (*(v107 + 8))(v103, v107);
  }

  *(v105 + 64) = sub_1AFC719E4;
  *(v105 + 72) = v102;
  sub_1AF0FB8EC(0);
  *(v105 + 168) = 0;
  *(v105 + 176) = 0;

  *(v105 + 216) = 0;
  *(v123 + 112) = v105;
  v108 = swift_getKeyPath();
  v109 = swift_allocObject();
  v109[4] = sub_1AFC73B08;
  v109[5] = v108;
  v109[2] = sub_1AFC73C1C;
  v109[3] = v108;
  v109[6] = v108;
  v110 = swift_allocObject();
  *(v110 + 112) = 1;
  *(v110 + 128) = 0;
  *(v110 + 136) = 0;
  *(v110 + 120) = 0;
  *(v110 + 160) = MEMORY[0x1E69E7CC0];
  *(v110 + 168) = 0;
  *(v110 + 216) = 0;
  *(v110 + 176) = 0;
  *(v110 + 16) = 0x656E68746F6F6D73;
  *(v110 + 24) = 0xEA00000000007373;
  *(v110 + 32) = v108;
  v111 = MEMORY[0x1E69E6448];
  *(v110 + 40) = MEMORY[0x1E69E6448];
  *(v110 + 48) = 0;
  *(v110 + 56) = 1;
  *(v110 + 58) = 0;
  *(v110 + 184) = 0;
  *(v110 + 188) = 1;
  *(v110 + 192) = 0;
  *(v110 + 196) = 1;
  *(v110 + 200) = 0x1000100000000;
  *(v110 + 208) = 1;
  *(v110 + 64) = 0;
  *(v110 + 72) = 0;
  *(v110 + 96) = 0;
  *(v110 + 104) = 0;
  *(v110 + 144) = xmmword_1AFE22A20;
  *(v110 + 80) = v109;
  *(v110 + 88) = &off_1F2535378;
  *(v110 + 210) = 0;
  swift_retain_n();
  if (v121)
  {
    v112 = (*(v121 + 8))();
  }

  else
  {
    v112 = v111;
  }

  v113 = swift_conformsToProtocol2();
  if (v113 && v112)
  {
    *(v110 + 160) = (*(v113 + 8))(v112, v113);
  }

  *(v110 + 64) = sub_1AFC73B8C;
  *(v110 + 72) = v108;
  sub_1AF0FB8EC(0);
  *(v110 + 168) = 0;
  *(v110 + 176) = 0;

  *(v110 + 216) = 0;
  *(v123 + 120) = v110;
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AFC73B08;
  v115[5] = v114;
  v115[2] = sub_1AFC73C1C;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 216) = 0;
  *(v116 + 176) = 0;
  *(v116 + 16) = 0x6465657073;
  *(v116 + 24) = 0xE500000000000000;
  *(v116 + 32) = v114;
  *(v116 + 40) = v111;
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;
  swift_retain_n();
  if (v121)
  {
    v111 = (*(v121 + 8))();
  }

  v117 = swift_conformsToProtocol2();
  if (v117 && v111)
  {
    *(v116 + 160) = (*(v117 + 8))(v111, v117);
  }

  *(v116 + 64) = sub_1AFC73B8C;
  *(v116 + 72) = v114;
  sub_1AF0FB8EC(0);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;

  *(v116 + 216) = 0;
  *(v123 + 128) = v116;
  qword_1EB6C3668 = v123;
  return result;
}

void sub_1AFC669F0(SEL *a1@<X3>, const char **a2@<X4>, unsigned __int8 *a3@<X8>)
{
  v5 = sub_1AFC628C8(a1);
  if (v5)
  {
    v6 = *a2;
    v7 = v5;
    v8 = [v5 v6];
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void sub_1AFC66A4C(uint64_t *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_forceField);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 shape];
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
}

uint64_t sub_1AFC66AB4()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v5 = 0;
    }

    v1 = [v5 forceField];

    if (v1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 1;
  }

LABEL_3:
  v3 = [v1 shape];

  return v3;
}

void sub_1AFC66BB0(const char **a1@<X3>, void *a2@<X8>)
{
  v4 = sub_1AFC628C8(&selRef_forceField);
  if (v4)
  {
    v5 = *a1;
    v6 = v4;
    v7 = [v4 v5];
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

void sub_1AFC66C28(SEL *a1@<X3>, const char **a2@<X4>, void *a3@<X8>)
{
  v5 = sub_1AFC628C8(a1);
  if (v5)
  {
    v6 = *a2;
    v7 = v5;
    v8 = [v5 v6];
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

void sub_1AFC66C84(SEL *a1@<X3>, SEL *a2@<X4>, _DWORD *a3@<X8>)
{
  v5 = sub_1AFC628C8(a1);
  if (v5)
  {
    v6 = v5;
    [v5 *a2];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

id sub_1AFC66D40()
{
  v1 = *&v0[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable];
  swift_unknownObjectRetain();
  v2 = v0;
  v3 = sub_1AFDFCEC8();
  [v1 removeObserver:v2 forKeyPath:v3];

  swift_unknownObjectRelease();
  v5.receiver = v2;
  v5.super_class = type metadata accessor for ShadableShaderModifierObserver();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void *sub_1AFC66FBC()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    v2 = v1;
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v5);
    if (Strong)
    {
      objc_opt_self();
      v1 = swift_dynamicCastObjCClass();
      if (!v1)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

double sub_1AFC67078(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = *(v1 + 40);
    if (v3)
    {
      v4 = v3;
LABEL_6:
      v6 = v4;
      v7 = [v4 *a1];

      [v7 linearExtendedSRGBColor];
      v10 = v8;

      return v10;
    }
  }

  else
  {
    sub_1AFC73A9C((v1 + 8), v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (Strong)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0.0;
}

void sub_1AFC6715C(SEL *a1, __n128 a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v4 = *(v2 + 40);
    if (!v4)
    {
      return;
    }

    v5 = v4;
  }

  else
  {
    sub_1AFC73A9C((v2 + 8), v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      swift_unknownObjectRelease();
      return;
    }
  }

  v7 = v5;
  v8 = [v5 *a1];

  [v8 setLinearExtendedSRGBColor_];
}

void sub_1AFC67260(SEL *a1, float a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = *(v2 + 40);
    if (!v5)
    {
      return;
    }

    v6 = v5;
  }

  else
  {
    sub_1AFC73A9C((v2 + 8), v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v13);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
      return;
    }
  }

  v8 = v6;
  v9 = [v6 *a1];

  v10 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v11 = a2;
  v12 = [v10 initWithFloat_];
  [v9 setContents_];
}

void sub_1AFC67384(SEL *a1)
{
  if ([objc_opt_self() immediateMode])
  {
    v3 = *(v1 + 40);
    if (!v3)
    {
      return;
    }

    v4 = v3;
LABEL_6:
    v6 = v4;
    v7 = [v4 *a1];

    [v7 intensity];
    return;
  }

  sub_1AFC73A9C((v1 + 8), v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (!Strong)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
}

void sub_1AFC67470(SEL *a1, float a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = *(v2 + 40);
    if (!v5)
    {
      return;
    }

    v6 = v5;
  }

  else
  {
    sub_1AFC73A9C((v2 + 8), v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
      return;
    }
  }

  v8 = v6;
  v9 = [v6 *a1];

  *&v10 = a2;
  [v9 setIntensity_];
}

void sub_1AFC67564(const char **a1)
{
  v2 = sub_1AFC66FBC();
  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_1AFC723FC(&v9, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    return;
  }

  v3 = *a1;
  v4 = v2;
  v5 = [v2 v3];

  v6 = [v5 contents];
  if (v6)
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
  }

  v9 = *v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  sub_1AF0D4478(0, &qword_1ED721F80);
  if (swift_dynamicCast())
  {
    [v7[0] floatValue];
  }
}

void sub_1AFC67698()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    if (!v1)
    {
      return;
    }

    v2 = v1;
LABEL_6:
    v4 = v2;
    [v2 alphaCutoff];

    return;
  }

  sub_1AFC73A9C((v0 + 8), v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (!Strong)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
}

BOOL sub_1AFC67768()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = v1;
LABEL_6:
      v4 = v2;
      v5 = [v2 shadingModel];

      return v5 == 0;
    }
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

BOOL sub_1AFC67828()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = v1;
LABEL_6:
      v4 = v2;
      v5 = [v2 shadingModel];

      return v5 != 2;
    }
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_1AFC678E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  v34 = 0;
  v36 = 0;
  swift_unknownObjectWeakInit();
  v36 = 0;
  swift_unknownObjectWeakAssign();
  v37 = 0x3E6C6C756E3CLL;
  v38 = 0xE600000000000000;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (sub_1AF694FF8(2037, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v26, v29);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v13 = &v30;
LABEL_9:
      sub_1AF9B3A74(v13, &v35);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
LABEL_17:
      sub_1AF5A828C(&v34, a2);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF694FF8(2029, v14, v15))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v26, v29);
        v18 = sub_1AFDFEE38();
        v20 = v19;
        v31 = 0;
        swift_unknownObjectWeakInit();
        v31 = 0;
        v13 = swift_unknownObjectWeakAssign();
        v32 = v18;
        v33 = v20;
        goto LABEL_9;
      }
    }

    else
    {
      v42 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v30 = 0;
        LOBYTE(v31) = 1;
        v32 = 0xD000000000000017;
        v33 = 0x80000001AFF4C150;
        v16 = sub_1AFDFE698();
        a2 = v42;
        if (v17)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        if (v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = 0xE000000000000000;
        }

        (*(v7 + 8))(v10, v6);
        v27 = 0;
        swift_unknownObjectWeakInit();
        v27 = 0;
        v23 = swift_unknownObjectWeakAssign();
        v28 = v21;
        v29 = v22;
        sub_1AF9B3A74(v23, &v35);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF5A82E8(&v34);
}

void sub_1AFC67CBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2 + 8, ObjectType, a2);
  sub_1AFC73A9C((v2 + 8), v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v19);
  if (Strong)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 presentationMaterial];
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v8 = 0;
LABEL_6:

  *(v3 + 40) = v8;
  sub_1AFC73A9C((v3 + 8), v19);
  v9 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v19);
  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for ShadableShaderModifierObserver();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache] = MEMORY[0x1E69E7CC0];
      *&v13[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable] = v11;
      v18.receiver = v13;
      v18.super_class = v12;
      swift_unknownObjectRetain_n();
      v14 = objc_msgSendSuper2(&v18, sel_init);
      v15 = *&v14[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable];
      v16 = v14;
      swift_unknownObjectRetain();
      v17 = sub_1AFDFCEC8();
      [v15 addObserver:v16 forKeyPath:v17 options:0 context:{0, v18.receiver, v18.super_class}];
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();

      *v3 = v16;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AFC67EC0()
{
  sub_1AFC73A9C((v0 + 8), v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v7);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 presentationObject];
      swift_unknownObjectRelease();
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      sub_1AF0D4478(0, &qword_1ED72E0B0);
      if (swift_dynamicCast())
      {
        v4 = v7[0];
        v5 = [v7[0] materialRef];
        if (v5)
        {
          v6 = v5;
          sub_1AF1A1580(v6);
        }

        else
        {
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFC68010(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF9B3AD0();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFC680BC@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[2] = 0;
  swift_unknownObjectWeakInit();
  a1[2] = 0;
  result = swift_unknownObjectWeakAssign();
  a1[3] = 0x3E6C6C756E3CLL;
  a1[4] = 0xE600000000000000;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  return result;
}

uint64_t sub_1AFC6811C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1AFE55220;
  KeyPath = swift_getKeyPath();
  v1 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v2 = swift_allocObject();
  v2[4] = sub_1AFC71FC4;
  v2[5] = KeyPath;
  v2[2] = sub_1AFC71FDC;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  v4 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v1);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  strcpy((v3 + 16), "albedo color");
  *(v3 + 29) = 0;
  *(v3 + 30) = -5120;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE55160;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  swift_retain_n();
  v9 = v6;
  if (v8)
  {
    v9 = (*(v7 + 8))(v8, v7);
  }

  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    *(v3 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v3 + 64);
  *(v3 + 64) = sub_1AFC71FE8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v11);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v66 + 32) = v3;
  v12 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v4, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AFC71FF0;
  v13[5] = v12;
  v13[2] = sub_1AFC72024;
  v13[3] = v12;
  v13[6] = v12;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 168) = 0;
  *(v14 + 210) = 0;
  *(v14 + 216) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0xD000000000000010;
  *(v14 + 24) = 0x80000001AFF4C010;
  *(v14 + 32) = v12;
  *(v14 + 40) = v4;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 1;
  *(v14 + 192) = 0;
  *(v14 + 196) = 1;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15)
  {
    v16 = (*(v15 + 8))();
  }

  else
  {
    v16 = v4;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v14 + 160) = (*(v17 + 8))(v16, v17);
  }

  v18 = *(v14 + 64);
  *(v14 + 64) = sub_1AFC72030;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v18);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v66 + 40) = v14;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AFC73BA0;
  v20[5] = v19;
  v20[2] = sub_1AFC73C2C;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 210) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x6E6F697373696D65;
  *(v21 + 24) = 0xE800000000000000;
  *(v21 + 32) = v19;
  *(v21 + 40) = v6;
  *(v21 + 48) = 0;
  *(v21 + 56) = 1;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 1;
  *(v21 + 192) = 0;
  *(v21 + 196) = 1;
  *(v21 + 200) = 0x1000100000000;
  *(v21 + 208) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE55160;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  swift_retain_n();
  v22 = v6;
  if (v8)
  {
    v22 = (*(v7 + 8))(v8, v7);
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v22)
  {
    *(v21 + 160) = (*(v23 + 8))(v22, v23);
  }

  v24 = *(v21 + 64);
  *(v21 + 64) = sub_1AFC73BA4;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v24);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v66 + 48) = v21;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AFC73BA0;
  v26[5] = v25;
  v26[2] = sub_1AFC73C2C;
  v26[3] = v25;
  v26[6] = v25;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x796C7069746C756DLL;
  *(v27 + 24) = 0xE800000000000000;
  *(v27 + 32) = v25;
  *(v27 + 40) = v6;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  *(v27 + 58) = 0;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE55160;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v6 = (*(v7 + 8))(v8, v7);
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v6)
  {
    *(v27 + 160) = (*(v28 + 8))(v6, v28);
  }

  v29 = *(v27 + 64);
  *(v27 + 64) = sub_1AFC73BA4;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(v29);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;

  *(v66 + 56) = v27;
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AFC73B0C;
  v32[5] = v30;
  v32[2] = sub_1AFC73C30;
  v32[3] = v30;
  v32[6] = v30;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x73656E6C6174656DLL;
  *(v33 + 24) = 0xE900000000000073;
  *(v33 + 32) = v30;
  *(v33 + 40) = v4;
  *(v33 + 48) = 0;
  *(v33 + 56) = 1;
  *(v33 + 58) = 0;
  *(v33 + 184) = 0;
  *(v33 + 188) = 1;
  *(v33 + 192) = 0;
  *(v33 + 196) = 1;
  *(v33 + 200) = 0x1000100000000;
  *(v33 + 208) = 1;
  *(v33 + 64) = 0;
  *(v33 + 72) = 0;
  *(v33 + 96) = v31;
  *(v33 + 104) = 0;
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v34 = (*(v15 + 8))();
  }

  else
  {
    v34 = v4;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    v36 = (*(v35 + 8))(v34, v35);

    *(v33 + 160) = v36;
  }

  else
  {
  }

  *(v33 + 64) = sub_1AFC73BA8;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v66 + 64) = v33;
  v37 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AFC73B0C;
  v39[5] = v37;
  v39[2] = sub_1AFC73C30;
  v39[3] = v37;
  v39[6] = v37;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 168) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x73656E6867756F72;
  *(v40 + 24) = 0xE900000000000073;
  *(v40 + 32) = v37;
  *(v40 + 40) = v4;
  *(v40 + 48) = 0;
  *(v40 + 56) = 1;
  *(v40 + 58) = 0;
  *(v40 + 184) = 0;
  *(v40 + 188) = 1;
  *(v40 + 192) = 0;
  *(v40 + 196) = 1;
  *(v40 + 200) = 0x1000100000000;
  *(v40 + 208) = 1;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 96) = v38;
  *(v40 + 104) = 0;
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  swift_retain_n();

  if (v15)
  {
    v41 = (*(v15 + 8))();
  }

  else
  {
    v41 = v4;
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v41)
  {
    v43 = (*(v42 + 8))(v41, v42);

    *(v40 + 160) = v43;
  }

  else
  {
  }

  *(v40 + 64) = sub_1AFC73BA8;
  *(v40 + 72) = v37;
  sub_1AF0FB8EC(0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;
  *(v66 + 72) = v40;
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AFC73B0C;
  v46[5] = v44;
  v46[2] = sub_1AFC73C30;
  v46[3] = v44;
  v46[6] = v44;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = MEMORY[0x1E69E7CC0];
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0xD000000000000010;
  *(v47 + 24) = 0x80000001AFF4C030;
  *(v47 + 32) = v44;
  *(v47 + 40) = v4;
  *(v47 + 48) = 0;
  *(v47 + 56) = 1;
  *(v47 + 58) = 256;
  *(v47 + 184) = 0;
  *(v47 + 188) = 1;
  *(v47 + 192) = 0;
  *(v47 + 196) = 1;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = v45;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 256;
  swift_retain_n();

  if (v15)
  {
    v48 = (*(v15 + 8))();
  }

  else
  {
    v48 = v4;
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    v50 = (*(v49 + 8))(v48, v49);

    *(v47 + 160) = v50;
  }

  else
  {
  }

  *(v47 + 64) = sub_1AFC73BA8;
  *(v47 + 72) = v44;
  sub_1AF0FB8EC(0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v66 + 80) = v47;
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  v52[4] = sub_1AFC73B0C;
  v52[5] = v51;
  v52[2] = sub_1AFC73C30;
  v52[3] = v51;
  v52[6] = v51;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 216) = 0;
  *(v53 + 176) = 0;
  *(v53 + 16) = 0xD000000000000016;
  *(v53 + 24) = 0x80000001AFF4C050;
  *(v53 + 32) = v51;
  *(v53 + 40) = v4;
  *(v53 + 48) = 0;
  *(v53 + 56) = 1;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 1;
  *(v53 + 192) = 0;
  *(v53 + 196) = 1;
  *(v53 + 200) = 0x1000100000000;
  *(v53 + 208) = 1;
  *(v53 + 64) = 0;
  *(v53 + 72) = 0;
  *(v53 + 96) = 0;
  *(v53 + 104) = 0;
  *(v53 + 144) = xmmword_1AFE22A20;
  *(v53 + 80) = v52;
  *(v53 + 88) = &off_1F2535378;
  *(v53 + 210) = 0;
  swift_retain_n();
  if (v15)
  {
    v54 = (*(v15 + 8))();
  }

  else
  {
    v54 = v4;
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v54)
  {
    *(v53 + 160) = (*(v55 + 8))(v54, v55);
  }

  *(v53 + 64) = sub_1AFC73BA8;
  *(v53 + 72) = v51;
  sub_1AF0FB8EC(0);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;
  *(v66 + 88) = v53;
  v56 = swift_getKeyPath();
  v57 = swift_allocObject();
  v57[4] = sub_1AFC73B0C;
  v57[5] = v56;
  v57[2] = sub_1AFC73C30;
  v57[3] = v56;
  v57[6] = v56;
  v58 = swift_allocObject();
  *(v58 + 112) = 1;
  *(v58 + 128) = 0;
  *(v58 + 136) = 0;
  *(v58 + 120) = 0;
  *(v58 + 160) = MEMORY[0x1E69E7CC0];
  *(v58 + 168) = 0;
  *(v58 + 216) = 0;
  *(v58 + 176) = 0;
  *(v58 + 16) = 0x726170736E617274;
  *(v58 + 24) = 0xEB00000000746E65;
  *(v58 + 32) = v56;
  *(v58 + 40) = v4;
  *(v58 + 48) = 0;
  *(v58 + 56) = 1;
  *(v58 + 58) = 0;
  *(v58 + 184) = 0;
  *(v58 + 188) = 1;
  *(v58 + 192) = 0;
  *(v58 + 196) = 1;
  *(v58 + 200) = 0x1000100000000;
  *(v58 + 208) = 1;
  *(v58 + 64) = 0;
  *(v58 + 72) = 0;
  *(v58 + 96) = 0;
  *(v58 + 104) = 0;
  *(v58 + 144) = xmmword_1AFE22A20;
  *(v58 + 80) = v57;
  *(v58 + 88) = &off_1F2535378;
  *(v58 + 210) = 0;
  swift_retain_n();
  if (v15)
  {
    v59 = (*(v15 + 8))();
  }

  else
  {
    v59 = v4;
  }

  v60 = swift_conformsToProtocol2();
  if (v60 && v59)
  {
    *(v58 + 160) = (*(v60 + 8))(v59, v60);
  }

  *(v58 + 64) = sub_1AFC73BA8;
  *(v58 + 72) = v56;
  sub_1AF0FB8EC(0);
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;

  *(v58 + 216) = 0;
  *(v66 + 96) = v58;
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AFC73B0C;
  v62[5] = v61;
  v62[2] = sub_1AFC73C30;
  v62[3] = v61;
  v62[6] = v61;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 216) = 0;
  *(v63 + 176) = 0;
  *(v63 + 16) = 0x7475436168706C61;
  *(v63 + 24) = 0xEB0000000066666FLL;
  *(v63 + 32) = v61;
  *(v63 + 40) = v4;
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 0;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = 0;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 0;
  swift_retain_n();
  if (v15)
  {
    v4 = (*(v15 + 8))();
  }

  v64 = swift_conformsToProtocol2();
  if (v64 && v4)
  {
    *(v63 + 160) = (*(v64 + 8))(v4, v64);
  }

  *(v63 + 64) = sub_1AFC73BA8;
  *(v63 + 72) = v61;
  sub_1AF0FB8EC(0);
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;

  *(v63 + 216) = 0;
  *(v66 + 104) = v63;
  qword_1EB6C2770 = v66;
  return result;
}

void sub_1AFC69458(SEL *a1@<X3>, _OWORD *a2@<X8>)
{
  v4 = sub_1AFC66FBC();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 *a1];

    [v6 linearExtendedSRGBColor];
    v9 = v7;

    v8 = v9;
  }

  else
  {
    v8 = 0uLL;
  }

  *a2 = v8;
}

void sub_1AFC694DC(SEL *a1@<X3>, _DWORD *a2@<X8>)
{
  v4 = sub_1AFC66FBC();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 *a1];

    [v6 intensity];
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
}

void sub_1AFC6955C(_DWORD *a1@<X8>)
{
  v2 = sub_1AFC66FBC();
  if (v2)
  {
    v3 = v2;
    [v2 alphaCutoff];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

uint64_t sub_1AFC695B4()
{
  v1 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  sub_1AFC73A9C((v0 + 8), v42);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v42);
  if (!Strong)
  {
    return v1;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    return v1;
  }

  v4 = [v3 shaderModifiersArguments];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return v1;
  }

  sub_1AF0D4478(0, &unk_1EB630CE0);
  v5 = sub_1AFDFCC08();

  v6 = sub_1AFC4F780(v5);
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_1AFDFE108();
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_42:

    return v1;
  }

LABEL_6:
  v9 = 0;
  v41 = v7 & 0xC000000000000001;
  v39 = v7;
  v40 = MEMORY[0x1E69E7CC0];
  v10 = 256;
  v38 = v8;
  while (1)
  {
    v11 = v41 ? MEMORY[0x1B2719C70](v9, v7) : *(v7 + 8 * v9 + 32);
    v12 = v11;
    v13 = [v11 type];
    if (v13 <= 4)
    {
      v15 = MEMORY[0x1E69E6448];
      if (v13 == 3)
      {
        goto LABEL_25;
      }

      if (v13 != 4)
      {
LABEL_36:

        goto LABEL_9;
      }

      v16 = MEMORY[0x1E69E7428];
      v17 = &unk_1ED72F770;
    }

    else
    {
      switch(v13)
      {
        case 5:
          v16 = MEMORY[0x1E69E7450];
          v17 = &qword_1ED72F740;
          break;
        case 6:
          v16 = MEMORY[0x1E69E74A8];
          v17 = &qword_1ED72F6E0;
          break;
        case 15:
          type metadata accessor for simd_float4x4(0);
          goto LABEL_24;
        default:
          goto LABEL_36;
      }
    }

    sub_1AFC739C4(0, v17, sub_1AF43A0C8, MEMORY[0x1E69E6448], v16);
LABEL_24:
    v15 = v14;
LABEL_25:
    v18 = [v12 name];
    v19 = sub_1AFDFCEF8();
    v21 = v20;

    memset(v42, 0, 32);
    v22 = sub_1AF493834(v15, v42, v19, v21, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, v10, &type metadata for MaterialController, v15, &off_1F256AC40);

    sub_1AFC723FC(v42, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    v24 = *(v22 + 16);
    v23 = *(v22 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = v1;
    v27 = sub_1AF419914(v24, v23);
    v28 = v26;
    v29 = v1[2] + ((v26 & 1) == 0);
    if (v1[3] < v29)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = *&v42[0];
      if ((v26 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_1AF844B24();
      v1 = *&v42[0];
      if ((v28 & 1) == 0)
      {
LABEL_31:
        v1[(v27 >> 6) + 8] |= 1 << v27;
        v32 = (v1[6] + 16 * v27);
        *v32 = v24;
        v32[1] = v23;
        *(v1[7] + 8 * v27) = v22;
        ++v1[2];

        v33 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1AF420554(0, *(v40 + 2) + 1, 1, v40);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = sub_1AF420554(v34 > 1, v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v40 = v33;
        v36 = &v33[16 * v35];
        *(v36 + 4) = v24;
        *(v36 + 5) = v23;

        goto LABEL_8;
      }
    }

LABEL_7:
    *(v1[7] + 8 * v27) = v22;

LABEL_8:
    v10 = 0;
    v8 = v38;
    v7 = v39;
LABEL_9:
    if (v8 == ++v9)
    {
      goto LABEL_42;
    }
  }

  sub_1AF82CE44(v29, isUniquelyReferenced_nonNull_native);
  v30 = sub_1AF419914(v24, v23);
  if ((v28 & 1) == (v31 & 1))
  {
    v27 = v30;
    v1 = *&v42[0];
    if ((v28 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_7;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFC69AF0()
{
  v1 = *v0;
  if (!*v0)
  {
    if (qword_1EB631B38 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB6C2770;
    goto LABEL_8;
  }

  v2 = OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache;
  v3 = *&v1[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache];
  if (v3 >> 62)
  {
    if (sub_1AFDFE108() >= 1)
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_4:
    v4 = *&v1[v2];
LABEL_8:

    return v4;
  }

  v5 = qword_1EB631B38;
  v6 = v1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB6C2770;

  v8 = sub_1AFC695B4();
  v10 = sub_1AF428E18(v8, v9, sub_1AF56F254);

  sub_1AF48FA18(v10);
  *&v1[v2] = v7;

  v4 = *&v1[v2];

  return v4;
}

uint64_t sub_1AFC69C74(uint64_t a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C((v1 + 8), v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {

        swift_unknownObjectRelease();
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      }

      goto LABEL_6;
    }

LABEL_7:

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v3 = *(v1 + 40);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
LABEL_6:
  v6 = v4;
  sub_1AF0D5A54(a1, v8);
  sub_1AF44C010(v8);

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

_OWORD *sub_1AFC69D70@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AFC66FBC();
  if (result)
  {
    v3 = result;
    sub_1AF44BA60(v4);

    return sub_1AF449D40(v4, a1);
  }

  else
  {
    *(a1 + 24) = MEMORY[0x1E69E6448];
    *a1 = 0;
  }

  return result;
}

uint64_t sub_1AFC69E68()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1AFDFCEF8();

  return v3;
}

void sub_1AFC69ED0()
{
  sub_1AFC73A9C((v0 + 8), v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v16);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 presentationNode];
      swift_unknownObjectRelease();
      v4 = [v3 model];

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v4 = 0;
LABEL_6:

  *(v0 + 40) = v4;
  sub_1AFC73A9C((v0 + 8), v16);
  v5 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v16);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 model];

  if (v7)
  {
    v8 = type metadata accessor for ShadableShaderModifierObserver();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache] = MEMORY[0x1E69E7CC0];
    *&v9[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable] = v7;
    v15.receiver = v9;
    v15.super_class = v8;
    v10 = v7;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    v12 = *&v11[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_shadable];
    v13 = v11;
    swift_unknownObjectRetain();
    v14 = sub_1AFDFCEC8();
    [v12 addObserver:v13 forKeyPath:v14 options:0 context:{0, v15.receiver, v15.super_class}];

    swift_unknownObjectRelease();
    *v0 = v13;
  }
}

id sub_1AFC6A0E4()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = *(v0 + 40);
    v2 = v1;
  }

  else
  {
    sub_1AFC73A9C((v0 + 8), v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v6);
    if (Strong)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v4 = 0;
    }

    v1 = [v4 model];
  }

  return v1;
}

uint64_t sub_1AFC6A1A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  v34 = 0;
  v36 = 0;
  swift_unknownObjectWeakInit();
  v36 = 0;
  swift_unknownObjectWeakAssign();
  v37 = 0x3E6C6C756E3CLL;
  v38 = 0xE600000000000000;
  v39 = 0;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (sub_1AF694FF8(2037, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v26, v29);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v13 = &v30;
LABEL_9:
      sub_1AF9B3A74(v13, &v35);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v26);
LABEL_17:
      sub_1AFC73A64(&v34, a2);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF694FF8(2029, v14, v15))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v26, v29);
        v18 = sub_1AFDFEE38();
        v20 = v19;
        v31 = 0;
        swift_unknownObjectWeakInit();
        v31 = 0;
        v13 = swift_unknownObjectWeakAssign();
        v32 = v18;
        v33 = v20;
        goto LABEL_9;
      }
    }

    else
    {
      v40 = a2;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v30 = 0;
        LOBYTE(v31) = 1;
        v32 = 0xD000000000000017;
        v33 = 0x80000001AFF4C150;
        v16 = sub_1AFDFE698();
        a2 = v40;
        if (v17)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        if (v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = 0xE000000000000000;
        }

        (*(v7 + 8))(v10, v6);
        v27 = 0;
        swift_unknownObjectWeakInit();
        v27 = 0;
        v23 = swift_unknownObjectWeakAssign();
        v28 = v21;
        v29 = v22;
        sub_1AF9B3A74(v23, &v35);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF644A40(&v34);
}

void sub_1AFC6A590(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2 + 8, ObjectType, a2);

  sub_1AFC69ED0();
}

uint64_t sub_1AFC6A5F4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[2] = 0;
  swift_unknownObjectWeakInit();
  a1[2] = 0;
  result = swift_unknownObjectWeakAssign();
  a1[3] = 0x3E6C6C756E3CLL;
  a1[4] = 0xE600000000000000;
  a1[5] = 0;
  return result;
}

uint64_t sub_1AFC6A664()
{
  v1 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  sub_1AFC73A9C((v0 + 8), v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v43);
  if (Strong)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 model];

  if (!v4)
  {
    return v1;
  }

  v5 = [v4 shaderModifiersArguments];

  if (!v5)
  {
    return v1;
  }

  sub_1AF0D4478(0, &unk_1EB630CE0);
  v6 = sub_1AFDFCC08();

  v7 = sub_1AFC4F780(v6);
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_1AFDFE108();
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_44:

    return v1;
  }

LABEL_9:
  v10 = 0;
  v42 = v8 & 0xC000000000000001;
  v40 = v8;
  v41 = MEMORY[0x1E69E7CC0];
  v11 = 256;
  v39 = v9;
  while (1)
  {
    v12 = v42 ? MEMORY[0x1B2719C70](v10, v8) : *(v8 + 8 * v10 + 32);
    v13 = v12;
    v14 = [v12 type];
    if (v14 <= 4)
    {
      v16 = MEMORY[0x1E69E6448];
      if (v14 == 3)
      {
        goto LABEL_28;
      }

      if (v14 != 4)
      {
LABEL_39:

        goto LABEL_12;
      }

      v17 = MEMORY[0x1E69E7428];
      v18 = &unk_1ED72F770;
    }

    else
    {
      switch(v14)
      {
        case 5:
          v17 = MEMORY[0x1E69E7450];
          v18 = &qword_1ED72F740;
          break;
        case 6:
          v17 = MEMORY[0x1E69E74A8];
          v18 = &qword_1ED72F6E0;
          break;
        case 15:
          type metadata accessor for simd_float4x4(0);
          goto LABEL_27;
        default:
          goto LABEL_39;
      }
    }

    sub_1AFC739C4(0, v18, sub_1AF43A0C8, MEMORY[0x1E69E6448], v17);
LABEL_27:
    v16 = v15;
LABEL_28:
    v19 = [v13 name];
    v20 = sub_1AFDFCEF8();
    v22 = v21;

    memset(v43, 0, 32);
    v23 = sub_1AF493834(v16, v43, v20, v22, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, v11, &type metadata for ModelController, v16, &off_1F256AAC8);

    sub_1AFC723FC(v43, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    v25 = *(v23 + 16);
    v24 = *(v23 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43[0] = v1;
    v28 = sub_1AF419914(v25, v24);
    v29 = v27;
    v30 = v1[2] + ((v27 & 1) == 0);
    if (v1[3] < v30)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = *&v43[0];
      if ((v27 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_1AF844B24();
      v1 = *&v43[0];
      if ((v29 & 1) == 0)
      {
LABEL_34:
        v1[(v28 >> 6) + 8] |= 1 << v28;
        v33 = (v1[6] + 16 * v28);
        *v33 = v25;
        v33[1] = v24;
        *(v1[7] + 8 * v28) = v23;
        ++v1[2];

        v34 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1AF420554(0, *(v41 + 2) + 1, 1, v41);
        }

        v36 = *(v34 + 2);
        v35 = *(v34 + 3);
        if (v36 >= v35 >> 1)
        {
          v34 = sub_1AF420554(v35 > 1, v36 + 1, 1, v34);
        }

        *(v34 + 2) = v36 + 1;
        v41 = v34;
        v37 = &v34[16 * v36];
        *(v37 + 4) = v25;
        *(v37 + 5) = v24;

        goto LABEL_11;
      }
    }

LABEL_10:
    *(v1[7] + 8 * v28) = v23;

LABEL_11:
    v11 = 0;
    v9 = v39;
    v8 = v40;
LABEL_12:
    if (v9 == ++v10)
    {
      goto LABEL_44;
    }
  }

  sub_1AF82CE44(v30, isUniquelyReferenced_nonNull_native);
  v31 = sub_1AF419914(v25, v24);
  if ((v29 & 1) == (v32 & 1))
  {
    v28 = v31;
    v1 = *&v43[0];
    if ((v29 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_10;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFC6ABC8()
{
  v1 = *v0;
  if (!*v0)
  {
    if (qword_1EB637390 != -1)
    {
      swift_once();
    }

    v4 = qword_1EB6C3670;
    goto LABEL_8;
  }

  v2 = OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache;
  v3 = *&v1[OBJC_IVAR____TtC3VFX30ShadableShaderModifierObserver_propertyCache];
  if (v3 >> 62)
  {
    if (sub_1AFDFE108() >= 1)
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_4:
    v4 = *&v1[v2];
LABEL_8:

    return v4;
  }

  v5 = qword_1EB637390;
  v6 = v1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB6C3670;

  v8 = sub_1AFC6A664();
  v10 = sub_1AF428E18(v8, v9, sub_1AF56F254);

  sub_1AF48FA18(v10);
  *&v1[v2] = v7;

  v4 = *&v1[v2];

  return v4;
}

void sub_1AFC6AD4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([objc_opt_self() immediateMode])
  {
    v7 = *(v3 + 40);
    v8 = v7;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1AFC73A9C((v3 + 8), &v63);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(&v63);
    if (Strong)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = [v10 model];

    if (!v7)
    {
      goto LABEL_16;
    }
  }

  v11 = [v7 shaderModifiersArguments];

  if (!v11)
  {
LABEL_16:
    *(a3 + 24) = MEMORY[0x1E69E6448];
    *a3 = 0;
    return;
  }

  sub_1AF0D4478(0, &unk_1EB630CE0);
  v12 = sub_1AFDFCC08();

  if (!*(v12 + 16) || (v13 = sub_1AF419914(a1, a2), (v14 & 1) == 0))
  {

    goto LABEL_16;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = sub_1AFC6A0E4();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1AFDFCEC8();
    v19 = [v17 valueForKey_];

    if (v19)
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v20 = [v15 type];
  if (v20 <= 4)
  {
    if (v20 != 3)
    {
      if (v20 != 4)
      {
        goto LABEL_41;
      }

      sub_1AF44CBE4(&v63, &v61);
      if (*(&v62 + 1))
      {
        sub_1AF0D4478(0, &qword_1EB632950);
        if (swift_dynamicCast())
        {
          [v60 VFXFloat2Value];
          v28 = v27;

LABEL_66:
          sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
          *(a3 + 24) = v53;

          *a3 = v28;
          goto LABEL_67;
        }
      }

      else
      {
        sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      }

      v28 = 0;
      goto LABEL_66;
    }

    sub_1AF44CBE4(&v63, &v61);
    if (*(&v62 + 1))
    {
      sub_1AF0D4478(0, &qword_1ED721F80);
      if (swift_dynamicCast())
      {
        [v60 floatValue];
        v35 = v34;

LABEL_57:
        *(a3 + 24) = MEMORY[0x1E69E6448];

        *a3 = v35;
LABEL_67:
        sub_1AFC723FC(&v63, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        return;
      }
    }

    else
    {
      sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    v35 = 0;
    goto LABEL_57;
  }

  if (v20 == 5)
  {
    sub_1AF44CBE4(&v63, &v61);
    if (*(&v62 + 1))
    {
      sub_1AF0D4478(0, &qword_1EB632950);
      if (swift_dynamicCast())
      {
        [v60 VFXFloat3Value];
        v58 = v29;

        v30 = 0;
        v32 = *(&v58 + 1);
        v31 = v58;
LABEL_44:
        v36 = &qword_1ED72F740;
        v37 = MEMORY[0x1E69E6448];
        v38 = MEMORY[0x1E69E7450];
LABEL_48:
        sub_1AFC739C4(0, v36, sub_1AF43A0C8, v37, v38);
        *(a3 + 24) = v39;
        v40 = swift_allocObject();
        *a3 = v40;

        if (v30)
        {
          v41 = 0;
        }

        else
        {
          v41 = v31;
        }

        if (v30)
        {
          v42 = 0;
        }

        else
        {
          v42 = v32;
        }

        *(v40 + 16) = v41;
        *(v40 + 24) = v42;
        goto LABEL_67;
      }
    }

    else
    {
      sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    v31 = 0;
    v32 = 0;
    v30 = 1;
    goto LABEL_44;
  }

  if (v20 == 6)
  {
    sub_1AF44CBE4(&v63, &v61);
    if (*(&v62 + 1))
    {
      sub_1AF0D4478(0, &qword_1EB632950);
      if (swift_dynamicCast())
      {
        [v60 VFXFloat4Value];
        v59 = v33;

        v30 = 0;
        v32 = *(&v59 + 1);
        v31 = v59;
LABEL_47:
        v36 = &qword_1ED72F6E0;
        v37 = MEMORY[0x1E69E6448];
        v38 = MEMORY[0x1E69E74A8];
        goto LABEL_48;
      }
    }

    else
    {
      sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    v31 = 0;
    v32 = 0;
    v30 = 1;
    goto LABEL_47;
  }

  if (v20 != 15)
  {
LABEL_41:
    sub_1AFC723FC(&v63, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);

    goto LABEL_16;
  }

  sub_1AF44CBE4(&v63, &v61);
  v21 = MEMORY[0x1E69E7CA0];
  if (!*(&v62 + 1))
  {
    sub_1AFC723FC(&v61, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_59;
  }

  sub_1AF0D4478(0, &qword_1EB632950);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    v56 = 0u;
    v57 = 0u;
    v26 = 1;
    v54 = 0u;
    v55 = 0u;
    goto LABEL_60;
  }

  [v60 VFXMatrix4Value];
  v56 = v23;
  v57 = v22;
  v54 = v24;
  v55 = v25;

  v26 = 0;
LABEL_60:
  type metadata accessor for simd_float4x4(0);
  *(a3 + 24) = v43;
  v44 = swift_allocObject();
  *a3 = v44;

  if (v26)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0x3F80000000000000;
    v50 = 1065353216;
    v51 = 1065353216;
    v52 = 0x3F80000000000000;
  }

  else
  {
    v45 = *(&v57 + 1);
    v50 = v57;
    v46 = *(&v54 + 1);
    v49 = v54;
    v51 = *(&v55 + 1);
    v47 = v55;
    v52 = *(&v56 + 1);
    v48 = v56;
  }

  v44[2] = v50;
  v44[3] = v45;
  v44[4] = v49;
  v44[5] = v46;
  v44[6] = v47;
  v44[7] = v51;
  v44[8] = v48;
  v44[9] = v52;
  sub_1AFC723FC(&v63, &qword_1ED726850, v21 + 8);
}

uint64_t sub_1AFC6B4C0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFC6A0E4();
  if (!v6 || (v7 = v6, v8 = [v6 shaderModifiersArguments], v7, !v8))
  {
LABEL_12:
    v16 = sub_1AFC6A0E4();
    if (v16)
    {
      v17 = v16;
      sub_1AF441150(a1, *(a1 + 3));
      v18 = sub_1AFDFEE08();
      v19 = sub_1AFDFCEC8();

      [v17 setValue:v18 forKey:v19];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v20 = a1;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  }

  sub_1AF0D4478(0, &unk_1EB630CE0);
  v9 = sub_1AFDFCC08();

  if (!*(v9 + 16) || (v10 = sub_1AF419914(a2, a3), (v11 & 1) == 0))
  {

    goto LABEL_12;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v41 = 0u;
  v42 = 0u;
  v13 = [v12 type];
  if (v13 <= 4)
  {
    if (v13 == 3)
    {
      sub_1AF0D5A54(a1, &v34);
      v14 = MEMORY[0x1E69E7CA0];
      if (swift_dynamicCast())
      {
        v24 = LODWORD(v39[0]);
        v25 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        LODWORD(v26) = v24;
        v27 = [v25 initWithFloat_];
      }

      else
      {
        sub_1AF0D5A54(a1, &v34);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      }

      v22 = v27;
      v23 = &qword_1ED721F80;
      goto LABEL_31;
    }

    if (v13 == 4)
    {
      sub_1AF0D5A54(a1, &v34);
      sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
      v14 = MEMORY[0x1E69E7CA0];
      if (swift_dynamicCast())
      {
        v15 = [objc_opt_self() valueWithVFXFloat2_];
        goto LABEL_25;
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 5:
        sub_1AF0D5A54(a1, &v34);
        sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v14 = MEMORY[0x1E69E7CA0];
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v15 = [objc_opt_self() valueWithVFXFloat3_];
        goto LABEL_25;
      case 6:
        sub_1AF0D5A54(a1, &v34);
        sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v14 = MEMORY[0x1E69E7CA0];
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v15 = [objc_opt_self() valueWithVFXFloat4_];
        goto LABEL_25;
      case 15:
        sub_1AF0D5A54(a1, v39);
        type metadata accessor for simd_float4x4(0);
        v14 = MEMORY[0x1E69E7CA0];
        if (swift_dynamicCast())
        {
          v15 = [objc_opt_self() valueWithVFXMatrix4_];
LABEL_25:
          v22 = v15;
          v23 = &qword_1EB632950;
LABEL_31:
          v28 = sub_1AF0D4478(0, v23);
          sub_1AFC723FC(&v41, &qword_1ED726850, v14 + 8);
          *&v41 = v22;
          *(&v42 + 1) = v28;
        }

        break;
    }
  }

LABEL_32:
  sub_1AF44CBE4(&v41, v39);
  if (v40)
  {
    sub_1AF449D40(v39, &v34);
    v29 = sub_1AFC6A0E4();
    if (v29)
    {
      v30 = v29;
      sub_1AF441150(&v34, v36);
      v31 = sub_1AFDFEE08();
      v32 = sub_1AFDFCEC8();

      [v30 setValue:v31 forKey:v32];

      swift_unknownObjectRelease();
      sub_1AFC723FC(&v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    else
    {
      sub_1AFC723FC(&v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v20 = &v34;
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  }

  v33 = MEMORY[0x1E69E7CA0];
  sub_1AFC723FC(&v41, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AFC723FC(v39, &qword_1ED726850, v33 + 8);
}

uint64_t sub_1AFC6BB60()
{
  v1 = [v0 presentationObject];
  sub_1AFDFDFB8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFC6BBCC()
{
  v1 = [v0 identifier];
  v2 = sub_1AFDFCEF8();

  return v2;
}

uint64_t sub_1AFC6BCC0()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC72038;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC7206C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC72078;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v9 = swift_allocObject();
  v9[4] = sub_1AFC72080;
  v9[5] = v8;
  v9[2] = sub_1AFC720CC;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = v5;
  *(v10 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x726F66736E617274;
  *(v10 + 24) = 0xE90000000000006DLL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 2048;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 2048;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13 && v12)
  {
    v12 = (*(v13 + 8))(v12, v13);
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v12)
  {
    *(v10 + 160) = (*(v14 + 8))(v12, v14);
  }

  v15 = *(v10 + 64);
  *(v10 + 64) = sub_1AFC720DC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C3678 = v0;
  return result;
}

void sub_1AFC6C184(SEL *a1)
{
  sub_1AFC73A9C(v1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 *a1];
      swift_unknownObjectRelease();
      [v5 intensity];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AFC6C244(SEL *a1, SEL *a2, float a3)
{
  sub_1AFC73A9C(v3, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v11);
  if (Strong)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 *a1];
      swift_unknownObjectRelease();
      *&v10 = a3;
      [v9 *a2];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

double sub_1AFC6C30C(SEL *a1)
{
  sub_1AFC73A9C(v1, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v9);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 *a1];
      swift_unknownObjectRelease();
      [v5 contentsTransform];
      v8 = v6;

      return v8;
    }

    swift_unknownObjectRelease();
  }

  *&result = 1065353216;
  return result;
}

void sub_1AFC6C3E8(SEL *a1, double a2, double a3, double a4, double a5)
{
  sub_1AFC73A9C(v5, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v14);
  if (Strong)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 *a1];
      swift_unknownObjectRelease();
      [v9 setContentsTransform_];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFC6C49C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, void *a3@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - v11;
  v37 = 0;
  swift_unknownObjectWeakInit();
  v37 = 0;
  swift_unknownObjectWeakAssign();
  v38 = 0x3E6C6C756E3CLL;
  v39 = 0xE600000000000000;
  v13 = a1[3];
  v14 = a1[4];
  sub_1AF441150(a1, v13);
  if (sub_1AF694FF8(2037, v13, v14))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v3)
    {
      sub_1AF441150(&v28, v31);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v15 = &v32;
LABEL_9:
      sub_1AF9B3A74(v15, &v36);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v28);
LABEL_17:
      sub_1AFC73A9C(&v36, a3);
    }
  }

  else
  {
    v16 = a1[3];
    v17 = a1[4];
    sub_1AF441150(a1, v16);
    if (sub_1AF694FF8(2029, v16, v17))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v3)
      {
        sub_1AF441150(&v28, v31);
        v20 = sub_1AFDFEE38();
        v22 = v21;
        v33 = 0;
        swift_unknownObjectWeakInit();
        v33 = 0;
        v15 = swift_unknownObjectWeakAssign();
        v34 = v20;
        v35 = v22;
        goto LABEL_9;
      }
    }

    else
    {
      v40 = a3;
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v3)
      {
        v32 = 0;
        LOBYTE(v33) = 1;
        v34 = 0xD000000000000017;
        v35 = 0x80000001AFF4C150;
        v18 = sub_1AFDFE698();
        a3 = v40;
        if (v19)
        {
          v23 = v18;
        }

        else
        {
          v23 = 0;
        }

        if (v19)
        {
          v24 = v19;
        }

        else
        {
          v24 = 0xE000000000000000;
        }

        (*(v9 + 8))(v12, v8);
        v29 = 0;
        swift_unknownObjectWeakInit();
        v29 = 0;
        v25 = swift_unknownObjectWeakAssign();
        v30 = v23;
        v31 = v24;
        sub_1AF9B3A74(v25, &v36);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a2(&v36);
}

uint64_t sub_1AFC6C890()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC720E4;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC72118;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC72124;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v9 = swift_allocObject();
  v9[4] = sub_1AFC72160;
  v9[5] = v8;
  v9[2] = sub_1AFC721AC;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = v5;
  *(v10 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x726F66736E617274;
  *(v10 + 24) = 0xE90000000000006DLL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 2048;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 2048;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13 && v12)
  {
    v12 = (*(v13 + 8))(v12, v13);
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v12)
  {
    *(v10 + 160) = (*(v14 + 8))(v12, v14);
  }

  v15 = *(v10 + 64);
  *(v10 + 64) = sub_1AFC721BC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C3680 = v0;
  return result;
}

void sub_1AFC6CD2C(void *a1@<X0>, SEL *a2@<X3>, _DWORD *a3@<X8>)
{
  sub_1AFC73A9C(a1, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v10);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v7 = [v6 *a2];
  swift_unknownObjectRelease();
  [v7 intensity];
  v9 = v8;

LABEL_6:
  *a3 = v9;
}

double sub_1AFC6CDEC()
{
  sub_1AFC73A9C(v0, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v7);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 physicsWorld];
      swift_unknownObjectRelease();
      [v3 gravity];
      v6 = v4;

      return v6;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

void sub_1AFC6CE9C(double a1)
{
  sub_1AFC73A9C(v1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 physicsWorld];
      swift_unknownObjectRelease();
      [v4 setGravity_];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1AFC6CF48()
{
  sub_1AFC73A9C(v0, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v4);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 physicsWorld];
      swift_unknownObjectRelease();
      [v3 speed];
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFC6D02C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC721C4;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC721DC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  v5 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v7 = v6;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x79746976617267;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v6;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v8 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v8 && v7)
  {
    v7 = (*(v8 + 8))(v7, v8);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && v7)
  {
    *(v4 + 160) = (*(v9 + 8))(v7, v9);
  }

  v10 = *(v4 + 64);
  *(v4 + 64) = sub_1AFC721E8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v11 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v5, type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AFC721F0;
  v12[5] = v11;
  v12[2] = sub_1AFC72224;
  v12[3] = v11;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x6465657073;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = v11;
  *(v13 + 40) = v5;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v5 = (*(v14 + 8))();
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v5)
  {
    *(v13 + 160) = (*(v15 + 8))(v5, v15);
  }

  *(v13 + 64) = sub_1AFC72230;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;
  *(v0 + 40) = v13;
  qword_1EB6C3688 = v0;
  return result;
}

void sub_1AFC6D4E4(void *a1@<X0>, float *a2@<X8>)
{
  sub_1AFC73A9C(a1, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 1.0;
    goto LABEL_6;
  }

  v5 = [v4 physicsWorld];
  swift_unknownObjectRelease();
  [v5 speed];
  v7 = v6;

LABEL_6:
  *a2 = v7;
}

double sub_1AFC6D5BC()
{
  sub_1AFC73A9C(v0, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 fogColor_linearExtendedSRGB];
      v5 = v3;
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

uint64_t sub_1AFC6D664(SEL *a1)
{
  sub_1AFC73A9C(v1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 *a1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AFC6D728@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  result = swift_unknownObjectWeakAssign();
  *(result + 16) = 0x3E6C6C756E3CLL;
  *(result + 24) = 0xE600000000000000;
  return result;
}

uint64_t sub_1AFC6D76C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC72238;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC7228C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  v5 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v7 = v6;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x726F6C6F63;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v6;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE55160;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v8 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v8 && v7)
  {
    v7 = (*(v8 + 8))(v7, v8);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && v7)
  {
    *(v4 + 160) = (*(v9 + 8))(v7, v9);
  }

  v10 = *(v4 + 64);
  *(v4 + 64) = sub_1AFC72298;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v11 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v5, type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AFC722A0;
  v12[5] = v11;
  v12[2] = sub_1AFC722D4;
  v12[3] = v11;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  strcpy((v13 + 16), "start distance");
  *(v13 + 31) = -18;
  *(v13 + 32) = v11;
  *(v13 + 40) = v5;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v15 = (*(v14 + 8))();
  }

  else
  {
    v15 = v5;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v13 + 160) = (*(v16 + 8))(v15, v16);
  }

  *(v13 + 64) = sub_1AFC722E0;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;
  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AFC73B10;
  v18[5] = v17;
  v18[2] = sub_1AFC73C34;
  v18[3] = v17;
  v18[6] = v17;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  strcpy((v19 + 16), "end distance");
  *(v19 + 29) = 0;
  *(v19 + 30) = -5120;
  *(v19 + 32) = v17;
  *(v19 + 40) = v5;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  swift_retain_n();
  if (v14)
  {
    v5 = (*(v14 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v5)
  {
    *(v19 + 160) = (*(v20 + 8))(v5, v20);
  }

  *(v19 + 64) = sub_1AFC73BAC;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v0 + 48) = v19;
  qword_1EB6C3690 = v0;
  return result;
}

uint64_t sub_1AFC6DDFC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFC73A9C(a1, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1AF0F2990(v9);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    v7 = 0uLL;
    goto LABEL_6;
  }

  [v5 fogColor_linearExtendedSRGB];
  v8 = v6;
  result = swift_unknownObjectRelease();
  v7 = v8;
LABEL_6:
  *a2 = v7;
  return result;
}

void sub_1AFC6DE90(__int128 *a1, void *a2)
{
  v4 = *a1;
  sub_1AFC73A9C(a2, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (Strong)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  [v3 setFogColor:*&v4 linearExtendedSRGB:v4];
}

uint64_t sub_1AFC6DF2C@<X0>(void *a1@<X0>, SEL *a2@<X3>, _DWORD *a3@<X8>)
{
  sub_1AFC73A9C(a1, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1AF0F2990(v10);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  [v7 *a2];
  v9 = v8;
  result = swift_unknownObjectRelease();
LABEL_6:
  *a3 = v9;
  return result;
}

void sub_1AFC6DFCC(int *a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  sub_1AFC73A9C(a2, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v10);
  if (Strong)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = 0;
  }

  LODWORD(v8) = v6;
  [v9 *a5];
}

uint64_t sub_1AFC6E084@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  v9 = 0;
  swift_unknownObjectWeakAssign();
  v10 = 0x3E6C6C756E3CLL;
  v11 = 0xE600000000000000;
  v12 = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v7, v7[3]);
    sub_1AF9B3A20();
    sub_1AFDFEE88();
    sub_1AF9B3A74(&v6, v8);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
    sub_1AF5A8A70(v8, a2);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AF5A8ACC(v8);
}