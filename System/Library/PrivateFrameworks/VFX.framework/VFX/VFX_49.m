uint64_t sub_1AF4D1FBC(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 29) = v2;
  return result;
}

uint64_t sub_1AF4D2090()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58F084;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58F0B8;
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
  *(v4 + 16) = 0x636143746E696F70;
  *(v4 + 24) = 0xEA00000000006568;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
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
  *(v4 + 144) = xmmword_1AFE55250;
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

  *(v4 + 64) = sub_1AF58F114;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58F154;
  v9[5] = v7;
  v9[2] = sub_1AF58F180;
  v9[3] = v7;
  v9[6] = v7;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0xD000000000000013;
  *(v10 + 24) = 0x80000001AFF29580;
  *(v10 + 32) = v7;
  *(v10 + 40) = v8;
  *(v10 + 48) = 8;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11)
  {
    v12 = (*(v11 + 8))();
  }

  else
  {
    v12 = v8;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v10 + 160) = (*(v13 + 8))(v12, v13);
  }

  *(v10 + 64) = sub_1AF58F1DC;
  *(v10 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA15C;
  v15[5] = v14;
  v15[2] = sub_1AF5A9CCC;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  strcpy((v16 + 16), "inheritColor");
  *(v16 + 29) = 0;
  *(v16 + 30) = -5120;
  *(v16 + 32) = v14;
  *(v16 + 40) = v8;
  *(v16 + 48) = 9;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  swift_retain_n();
  if (v11)
  {
    v17 = (*(v11 + 8))();
  }

  else
  {
    v17 = v8;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    *(v16 + 160) = (*(v18 + 8))(v17, v18);
  }

  *(v16 + 64) = sub_1AF5A97D8;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5AA15C;
  v20[5] = v19;
  v20[2] = sub_1AF5A9CCC;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0xD000000000000012;
  *(v21 + 24) = 0x80000001AFF23530;
  *(v21 + 32) = v19;
  *(v21 + 40) = v8;
  *(v21 + 48) = 10;
  *(v21 + 56) = 0;
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
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  swift_retain_n();
  if (v11)
  {
    v22 = (*(v11 + 8))();
  }

  else
  {
    v22 = v8;
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v22)
  {
    *(v21 + 160) = (*(v23 + 8))(v22, v23);
  }

  *(v21 + 64) = sub_1AF5A97D8;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;
  *(v0 + 56) = v21;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AF5AA15C;
  v25[5] = v24;
  v25[2] = sub_1AF5A9CCC;
  v25[3] = v24;
  v25[6] = v24;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 168) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x5374697265686E69;
  *(v26 + 24) = 0xEB00000000657A69;
  *(v26 + 32) = v24;
  *(v26 + 40) = v8;
  *(v26 + 48) = 11;
  *(v26 + 56) = 0;
  *(v26 + 58) = 0;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x1000100000000;
  *(v26 + 208) = 1;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 144) = xmmword_1AFE22A20;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 0;
  swift_retain_n();
  if (v11)
  {
    v8 = (*(v11 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v8)
  {
    *(v26 + 160) = (*(v27 + 8))(v8, v27);
  }

  *(v26 + 64) = sub_1AF5A97D8;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(0);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;
  *(v0 + 64) = v26;
  qword_1EB6C2EC0 = v0;
  return result;
}

uint64_t sub_1AF4D2B2C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58F2DC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58F320;
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
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x74657366664F78;
  *(v3 + 24) = 0xE700000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
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
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  swift_retain_n();
  v8 = v5;
  if (v7)
  {
    v8 = (*(v6 + 8))(v7, v6);
  }

  v9 = swift_conformsToProtocol2();
  if (v9 && v8)
  {
    *(v3 + 160) = (*(v9 + 8))(v8, v9);
  }

  v10 = *(v3 + 64);
  *(v3 + 64) = sub_1AF58F37C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA368;
  v12[5] = v11;
  v12[2] = sub_1AF5AA4DC;
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
  *(v13 + 16) = 0x74657366664F79;
  *(v13 + 24) = 0xE700000000000000;
  *(v13 + 32) = v11;
  *(v13 + 40) = v5;
  *(v13 + 48) = 8;
  *(v13 + 56) = 0;
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
  swift_retain_n();
  v14 = v5;
  if (v7)
  {
    v14 = (*(v6 + 8))(v7, v6);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v13 + 160) = (*(v15 + 8))(v14, v15);
  }

  v16 = *(v13 + 64);
  *(v13 + 64) = sub_1AF5A97DC;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v16);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5AA368;
  v18[5] = v17;
  v18[2] = sub_1AF5AA4DC;
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
  *(v19 + 16) = 0x74657366664F7ALL;
  *(v19 + 24) = 0xE700000000000000;
  *(v19 + 32) = v17;
  *(v19 + 40) = v5;
  *(v19 + 48) = 16;
  *(v19 + 56) = 0;
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
  if (v7)
  {
    v5 = (*(v6 + 8))(v7, v6);
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v5)
  {
    *(v19 + 160) = (*(v20 + 8))(v5, v20);
  }

  v21 = *(v19 + 64);
  *(v19 + 64) = sub_1AF5A97DC;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  qword_1EB6C2EC8 = v0;
  return result;
}

uint64_t sub_1AF4D3210()
{
  if (swift_dynamicCastMetatype())
  {
    return 0x61656E694C746553;
  }

  v0 = 0xD000000000000010;
  if (swift_dynamicCastMetatype())
  {
    return v0;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0xD000000000000011;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF4D3310()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  type metadata accessor for PropertyDescription();
  KeyPath = swift_getKeyPath();
  type metadata accessor for ParticleFloat3Init();
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_1AF6ACF1C(120, 0xE100000000000000, KeyPath, v2, 1, 0, 0, 0, 1, 0, 1, 0, 1, v11, 0, 0, 1, v14, 0, 0, 1, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, &off_1F254D3D8);

  *(v0 + 32) = v5;
  v6 = swift_getKeyPath();
  v7 = sub_1AF6ACF1C(121, 0xE100000000000000, v6, v3, 1, 0, 0, 0, 1, 0, 1, 0, 1, v12, 0, 0, 1, v15, 0, 0, 1, 0, 0, 0, v4, 0, &off_1F254D3D8);

  *(v0 + 40) = v7;
  v8 = swift_getKeyPath();
  v9 = sub_1AF6ACF1C(122, 0xE100000000000000, v8, v3, 1, 0, 0, 0, 1, 0, 1, 0, 1, v13, 0, 0, 1, v16, 0, 0, 1, 0, 0, 0, v4, 0, &off_1F254D3D8);

  *(v0 + 48) = v9;
  return v0;
}

uint64_t sub_1AF4D35CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF58F454;
  v4[5] = v2;
  v4[2] = sub_1AF58F488;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 136) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 160) = v6;
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  strcpy((v5 + 16), "operationIndex");
  *(v5 + 31) = -18;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    *(v5 + 160) = (*(v8 + 8))(v3, v8);
  }

  *(v5 + 64) = sub_1AF58F4E4;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF58F524;
  v10[5] = KeyPath;
  v10[2] = sub_1AF58F550;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v6;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
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

  *(v11 + 64) = sub_1AF58F5AC;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF58F5EC;
  v16[5] = v14;
  v16[2] = sub_1AF58F620;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x100003C23D70ALL;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19)
  {
    v15 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v15)
  {
    *(v17 + 160) = (*(v20 + 8))(v15, v20);
  }

  *(v17 + 64) = sub_1AF58F67C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v21 = swift_getKeyPath();
  v22 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v23 = swift_allocObject();
  v23[4] = sub_1AF58F6BC;
  v23[5] = v21;
  v23[2] = sub_1AF58F6D4;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = v18;
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 1886216562;
  *(v24 + 24) = 0xE400000000000000;
  *(v24 + 32) = v21;
  *(v24 + 40) = &type metadata for ColorRamp;
  *(v24 + 48) = 8;
  *(v24 + 56) = 0;
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
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25)
  {
    v22 = (*(v25 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v22)
  {
    *(v24 + 160) = (*(v26 + 8))(v22, v26);
  }

  *(v24 + 64) = sub_1AF58F704;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 48) = v24;
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF58F744;
  v29[5] = v27;
  v29[2] = sub_1AF58F770;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = v18;
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  strcpy((v30 + 16), "affectsAlpha");
  *(v30 + 29) = 0;
  *(v30 + 30) = -5120;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 25;
  *(v30 + 56) = 0;
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
  v31 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v31)
  {
    v28 = (*(v31 + 8))();
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v28)
  {
    *(v30 + 160) = (*(v32 + 8))(v28, v32);
  }

  *(v30 + 64) = sub_1AF58F7CC;
  *(v30 + 72) = v27;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 56) = v30;
  qword_1EB6C28E8 = v0;
  return result;
}

uint64_t sub_1AF4D40CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58FA9C;
  v3[5] = v1;
  v3[2] = sub_1AF58FAD0;
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
  strcpy((v4 + 16), "operationIndex");
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
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  *(v4 + 64) = sub_1AF58FB2C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF58FB6C;
  v10[5] = KeyPath;
  v10[2] = sub_1AF58FB98;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
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

  *(v11 + 64) = sub_1AF58FBF4;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;
  *(v56 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF58FC34;
  v16[5] = v14;
  v16[2] = sub_1AF58FC68;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x100003C23D70ALL;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF58FCC4;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v56 + 40) = v17;
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5AA370;
  v22[5] = v21;
  v22[2] = sub_1AF5A9CE4;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x65646E4965646F6DLL;
  *(v23 + 24) = 0xE900000000000078;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 1;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v2)
  {
    *(v23 + 160) = (*(v24 + 8))(v2, v24);
  }

  *(v23 + 64) = sub_1AF5A97E8;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  v25 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF58FD04;
  v26[5] = v20;
  v26[2] = sub_1AF58FD30;
  v26[3] = v20;
  v26[6] = v20;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 1701080941;
  *(v27 + 24) = 0xE400000000000000;
  *(v27 + 32) = v20;
  *(v27 + 40) = &type metadata for ScaleMode;
  *(v27 + 48) = 8;
  *(v27 + 56) = 0;
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
  v28 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v28)
  {
    v25 = (*(v28 + 8))();
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v25)
  {
    *(v27 + 160) = (*(v29 + 8))(v25, v29);
  }

  *(v27 + 64) = sub_1AF58FD8C;
  *(v27 + 72) = v20;
  sub_1AF0FB8EC(0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = v23;
  *(v56 + 48) = v27;
  v30 = swift_getKeyPath();
  sub_1AF581BEC();
  v31 = swift_allocObject();
  v31[4] = sub_1AF58FDCC;
  v31[5] = v30;
  v31[2] = sub_1AF58FE20;
  v31[3] = v30;
  v31[6] = v30;
  v32 = swift_allocObject();
  *(v32 + 104) = 0;
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 216) = 0;
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v34 = v33;
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 120;
  *(v32 + 24) = 0xE100000000000000;
  *(v32 + 32) = v30;
  *(v32 + 40) = v33;
  *(v32 + 48) = 16;
  *(v32 + 56) = 0;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 0;
  *(v32 + 192) = 0;
  *(v32 + 196) = 1;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  v35 = swift_conformsToProtocol2();
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  swift_retain_n();
  v37 = v34;
  if (v36)
  {
    v37 = (*(v35 + 8))(v36, v35);
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v32 + 160) = (*(v38 + 8))(v37, v38);
  }

  v39 = *(v32 + 64);
  *(v32 + 64) = sub_1AF58FE50;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(v39);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v56 + 56) = v32;
  v40 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  v42[4] = sub_1AF5A97EC;
  v42[5] = v40;
  v42[2] = sub_1AF5A97F0;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 121;
  *(v43 + 24) = 0xE100000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = v34;
  *(v43 + 48) = 48;
  *(v43 + 56) = 0;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 0;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = v41;
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  swift_retain_n();

  v44 = v34;
  if (v36)
  {
    v44 = (*(v35 + 8))(v36, v35);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v44)
  {
    v46 = (*(v45 + 8))(v44, v45);

    *(v43 + 160) = v46;
  }

  else
  {
  }

  v47 = *(v43 + 64);
  *(v43 + 64) = sub_1AF5A97F4;
  *(v43 + 72) = v40;
  sub_1AF0FB8EC(v47);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;

  *(v56 + 64) = v43;
  v48 = swift_getKeyPath();
  v49 = swift_getKeyPath();
  v50 = swift_allocObject();
  v50[4] = sub_1AF5A97EC;
  v50[5] = v48;
  v50[2] = sub_1AF5A97F0;
  v50[3] = v48;
  v50[6] = v48;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 168) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 122;
  *(v51 + 24) = 0xE100000000000000;
  *(v51 + 32) = v48;
  *(v51 + 40) = v34;
  *(v51 + 48) = 80;
  *(v51 + 56) = 0;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 0;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = v49;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  swift_retain_n();

  if (v36)
  {
    v34 = (*(v35 + 8))(v36, v35);
  }

  v52 = swift_conformsToProtocol2();
  if (v52 && v34)
  {
    v53 = (*(v52 + 8))(v34, v52);

    *(v51 + 160) = v53;
  }

  else
  {
  }

  v54 = *(v51 + 64);
  *(v51 + 64) = sub_1AF5A97F4;
  *(v51 + 72) = v48;
  sub_1AF0FB8EC(v54);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = 0;

  *(v56 + 72) = v51;
  qword_1EB6C2ED0 = v56;
  return result;
}

uint64_t sub_1AF4D50B0(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1AF4D517C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF581BEC();
  v2 = swift_allocObject();
  v2[4] = sub_1AF590158;
  v2[5] = KeyPath;
  v2[2] = sub_1AF590180;
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
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x7974696361706FLL;
  *(v3 + 24) = 0xE700000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1065353216;
  *(v3 + 196) = 0;
  *(v3 + 200) = 0x100003C23D70ALL;
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
  *(v3 + 64) = sub_1AF5901B0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2ED8 = v0;
  return result;
}

uint64_t sub_1AF4D54DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5902E4;
  v4[5] = v2;
  v4[2] = sub_1AF590318;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 136) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  *(v5 + 160) = v6;
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  strcpy((v5 + 16), "operationIndex");
  *(v5 + 31) = -18;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    *(v5 + 160) = (*(v8 + 8))(v3, v8);
  }

  *(v5 + 64) = sub_1AF590374;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5903B4;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5903E0;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
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

  *(v11 + 64) = sub_1AF59043C;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF59047C;
  v16[5] = v14;
  v16[2] = sub_1AF5904B0;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x100003C23D70ALL;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF59050C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v20 = swift_getKeyPath();
  sub_1AF57F2F4();
  v21 = swift_allocObject();
  v21[4] = sub_1AF5902E4;
  v21[5] = v20;
  v21[2] = sub_1AF59054C;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 104) = 0;
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v24 = v23;
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x65676E6172;
  *(v22 + 24) = 0xE500000000000000;
  *(v22 + 32) = v20;
  *(v22 + 40) = v23;
  *(v22 + 48) = 8;
  *(v22 + 56) = 0;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25 && v24)
  {
    v24 = (*(v25 + 8))(v24, v25);
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v24)
  {
    *(v22 + 160) = (*(v26 + 8))(v24, v26);
  }

  v27 = *(v22 + 64);
  *(v22 + 64) = sub_1AF5905A8;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(v27);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 48) = v22;
  v28 = swift_getKeyPath();
  v29 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v30 = swift_allocObject();
  v30[4] = sub_1AF5905EC;
  v30[5] = v28;
  v30[2] = sub_1AF590604;
  v30[3] = v28;
  v30[6] = v28;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 1886216562;
  *(v31 + 24) = 0xE400000000000000;
  *(v31 + 32) = v28;
  *(v31 + 40) = &type metadata for ColorRamp;
  *(v31 + 48) = 16;
  *(v31 + 56) = 0;
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
  v32 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v32)
  {
    v29 = (*(v32 + 8))();
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v29)
  {
    *(v31 + 160) = (*(v33 + 8))(v29, v33);
  }

  *(v31 + 64) = sub_1AF590634;
  *(v31 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  *(v0 + 56) = v31;
  qword_1EB6C2EE0 = v0;
  return result;
}

uint64_t sub_1AF4D5FE8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF5908E4;
  v2[5] = KeyPath;
  v2[2] = sub_1AF590918;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 28;
  *(v3 + 56) = 0;
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
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7 && v6)
  {
    v6 = (*(v7 + 8))(v6, v7);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v6)
  {
    *(v3 + 160) = (*(v8 + 8))(v6, v8);
  }

  v9 = *(v3 + 64);
  *(v3 + 64) = sub_1AF590974;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  sub_1AF581BEC();
  v11 = swift_allocObject();
  v11[4] = sub_1AF5909B8;
  v11[5] = v10;
  v11[2] = sub_1AF5909D0;
  v11[3] = v10;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = v4;
  *(v12 + 216) = 0;
  sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  v14 = v13;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6576727563;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = v10;
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 0;
  *(v12 + 192) = 1065353216;
  *(v12 + 196) = 0;
  *(v12 + 200) = 0x100003C23D70ALL;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 96) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 210) = 0;
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15 && v14)
  {
    v14 = (*(v15 + 8))(v14, v15);
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v14)
  {
    *(v12 + 160) = (*(v16 + 8))(v14, v16);
  }

  v17 = *(v12 + 64);
  *(v12 + 64) = sub_1AF590A00;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v17);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  qword_1EB6C2EE8 = v0;
  return result;
}

uint64_t sub_1AF4D653C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF590BC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF590C0C;
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
  *(v4 + 16) = 0x726F74636166;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
  *(v4 + 196) = 0;
  *(v4 + 200) = 0x100003C23D70ALL;
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

  *(v4 + 64) = sub_1AF590C68;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF590CA8;
  v10[5] = v8;
  v10[2] = sub_1AF590CDC;
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
  *(v11 + 16) = 0xD000000000000012;
  *(v11 + 24) = 0x80000001AFF2AA90;
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

  *(v11 + 64) = sub_1AF590D38;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  v14 = &type metadata for OrientationOverVelocity.DirectionAxis;
  sub_1AF5A9240(0, &qword_1EB63AD58, &type metadata for OrientationOverVelocity.DirectionAxis, type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF590D78;
  v15[5] = v7;
  v15[2] = sub_1AF590DB4;
  v15[3] = v7;
  v15[6] = v7;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  strcpy((v16 + 16), "directionAxis");
  *(v16 + 30) = -4864;
  *(v16 + 32) = v7;
  *(v16 + 40) = &type metadata for OrientationOverVelocity.DirectionAxis;
  *(v16 + 48) = 4;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v17)
  {
    v14 = (*(v17 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v14)
  {
    *(v16 + 160) = (*(v18 + 8))(v14, v18);
  }

  *(v16 + 64) = sub_1AF590E10;
  *(v16 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = v11;
  *(v0 + 40) = v16;
  qword_1EB6C2EF0 = v0;
  return result;
}

uint64_t sub_1AF4D6C84()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF590FA0;
  v3[5] = v1;
  v3[2] = sub_1AF590FD4;
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
  strcpy((v4 + 16), "operationIndex");
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
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v4 + 64);
  *(v4 + 64) = sub_1AF591030;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v10 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF591070;
  v11[5] = KeyPath;
  v11[2] = sub_1AF59109C;
  v11[3] = KeyPath;
  v11[6] = KeyPath;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6F6974617265706FLL;
  *(v12 + 24) = 0xE90000000000006ELL;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = &type metadata for Composition.Operation;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  *(v12 + 64) = sub_1AF5910F8;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v4;
  *(v63 + 32) = v12;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF591138;
  v17[5] = v15;
  v17[2] = sub_1AF59116C;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 0x726F74636166;
  *(v18 + 24) = 0xE600000000000000;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 4;
  *(v18 + 56) = 0;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 0;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x100003C23D70ALL;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v16)
  {
    *(v18 + 160) = (*(v20 + 8))(v16, v20);
  }

  *(v18 + 64) = sub_1AF5911C8;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v63 + 40) = v18;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5AA380;
  v23[5] = v22;
  v23[2] = sub_1AF5A9D08;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x65646E4965646F6DLL;
  *(v24 + 24) = 0xE900000000000078;
  *(v24 + 32) = v22;
  *(v24 + 40) = v2;
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
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v2)
  {
    *(v24 + 160) = (*(v25 + 8))(v2, v25);
  }

  *(v24 + 64) = sub_1AF5A9810;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  v26 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF591208;
  v27[5] = v21;
  v27[2] = sub_1AF591234;
  v27[3] = v21;
  v27[6] = v21;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 1701080941;
  *(v28 + 24) = 0xE400000000000000;
  *(v28 + 32) = v21;
  *(v28 + 40) = &type metadata for ScaleMode;
  *(v28 + 48) = 8;
  *(v28 + 56) = 0;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  v29 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v29)
  {
    v26 = (*(v29 + 8))();
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v26)
  {
    *(v28 + 160) = (*(v30 + 8))(v26, v30);
  }

  *(v28 + 64) = sub_1AF591290;
  *(v28 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = v24;
  *(v63 + 48) = v28;
  v31 = swift_getKeyPath();
  sub_1AF57F2F4();
  v32 = swift_allocObject();
  v32[4] = sub_1AF590FA0;
  v32[5] = v31;
  v32[2] = sub_1AF5912D0;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 104) = 0;
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v35 = v34;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  strcpy((v33 + 16), "velocityRange");
  *(v33 + 30) = -4864;
  *(v33 + 32) = v31;
  *(v33 + 40) = v34;
  *(v33 + 48) = 12;
  *(v33 + 56) = 0;
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
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v36 = swift_conformsToProtocol2();
  if (v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0;
  }

  swift_retain_n();
  v38 = v35;
  if (v37)
  {
    v38 = (*(v36 + 8))(v37, v36);
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v38)
  {
    *(v33 + 160) = (*(v39 + 8))(v38, v39);
  }

  v40 = *(v33 + 64);
  *(v33 + 64) = sub_1AF59132C;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(v40);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v63 + 56) = v33;
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  v42[4] = sub_1AF5AA380;
  v42[5] = v41;
  v42[2] = sub_1AF5AA4E8;
  v42[3] = v41;
  v42[6] = v41;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 120;
  *(v43 + 24) = 0xE100000000000000;
  *(v43 + 32) = v41;
  *(v43 + 40) = v35;
  *(v43 + 48) = 20;
  *(v43 + 56) = 0;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  swift_retain_n();
  v44 = v35;
  if (v37)
  {
    v44 = (*(v36 + 8))(v37, v36);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v44)
  {
    *(v43 + 160) = (*(v45 + 8))(v44, v45);
  }

  v46 = *(v43 + 64);
  *(v43 + 64) = sub_1AF5A9814;
  *(v43 + 72) = v41;
  sub_1AF0FB8EC(v46);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;

  *(v63 + 64) = v43;
  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  v49[4] = sub_1AF5AA380;
  v49[5] = v47;
  v49[2] = sub_1AF5AA4E8;
  v49[3] = v47;
  v49[6] = v47;
  v50 = swift_allocObject();
  *(v50 + 112) = 1;
  *(v50 + 128) = 0;
  *(v50 + 136) = 0;
  *(v50 + 120) = 0;
  *(v50 + 160) = MEMORY[0x1E69E7CC0];
  *(v50 + 168) = 0;
  *(v50 + 216) = 0;
  *(v50 + 176) = 0;
  *(v50 + 16) = 121;
  *(v50 + 24) = 0xE100000000000000;
  *(v50 + 32) = v47;
  *(v50 + 40) = v35;
  *(v50 + 48) = 28;
  *(v50 + 56) = 0;
  *(v50 + 58) = 0;
  *(v50 + 184) = 0;
  *(v50 + 188) = 1;
  *(v50 + 192) = 0;
  *(v50 + 196) = 1;
  *(v50 + 200) = 0x1000100000000;
  *(v50 + 208) = 1;
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 96) = v48;
  *(v50 + 104) = 0;
  *(v50 + 144) = xmmword_1AFE22A20;
  *(v50 + 80) = v49;
  *(v50 + 88) = &off_1F2535378;
  *(v50 + 210) = 0;
  swift_retain_n();

  v51 = v35;
  if (v37)
  {
    v51 = (*(v36 + 8))(v37, v36);
  }

  v52 = swift_conformsToProtocol2();
  if (v52 && v51)
  {
    v53 = (*(v52 + 8))(v51, v52);

    *(v50 + 160) = v53;
  }

  else
  {
  }

  v54 = *(v50 + 64);
  *(v50 + 64) = sub_1AF5A9814;
  *(v50 + 72) = v47;
  sub_1AF0FB8EC(v54);
  *(v50 + 168) = 0;
  *(v50 + 176) = 0;

  *(v50 + 216) = 0;

  *(v63 + 72) = v50;
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  v57 = swift_allocObject();
  v57[4] = sub_1AF5AA380;
  v57[5] = v55;
  v57[2] = sub_1AF5AA4E8;
  v57[3] = v55;
  v57[6] = v55;
  v58 = swift_allocObject();
  *(v58 + 112) = 1;
  *(v58 + 128) = 0;
  *(v58 + 136) = 0;
  *(v58 + 120) = 0;
  *(v58 + 160) = MEMORY[0x1E69E7CC0];
  *(v58 + 168) = 0;
  *(v58 + 216) = 0;
  *(v58 + 176) = 0;
  *(v58 + 16) = 122;
  *(v58 + 24) = 0xE100000000000000;
  *(v58 + 32) = v55;
  *(v58 + 40) = v35;
  *(v58 + 48) = 36;
  *(v58 + 56) = 0;
  *(v58 + 58) = 0;
  *(v58 + 184) = 0;
  *(v58 + 188) = 1;
  *(v58 + 192) = 0;
  *(v58 + 196) = 1;
  *(v58 + 200) = 0x1000100000000;
  *(v58 + 208) = 1;
  *(v58 + 64) = 0;
  *(v58 + 72) = 0;
  *(v58 + 96) = v56;
  *(v58 + 104) = 0;
  *(v58 + 144) = xmmword_1AFE22A20;
  *(v58 + 80) = v57;
  *(v58 + 88) = &off_1F2535378;
  *(v58 + 210) = 0;
  swift_retain_n();

  if (v37)
  {
    v35 = (*(v36 + 8))(v37, v36);
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && v35)
  {
    v60 = (*(v59 + 8))(v35, v59);

    *(v58 + 160) = v60;
  }

  else
  {
  }

  v61 = *(v58 + 64);
  *(v58 + 64) = sub_1AF5A9814;
  *(v58 + 72) = v55;
  sub_1AF0FB8EC(v61);
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;

  *(v58 + 216) = 0;

  *(v63 + 80) = v58;
  qword_1EB6C2EF8 = v63;
  return result;
}

uint64_t sub_1AF4D7ED4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF591584;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5915B8;
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
  *(v4 + 16) = 0x7366664F7466656CLL;
  *(v4 + 24) = 0xEA00000000007465;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
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

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF591614;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9488;
  v9[5] = v8;
  v9[2] = sub_1AF5A9D18;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x66664F7468676972;
  *(v10 + 24) = 0xEB00000000746573;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v11 = (*(v5 + 8))();
  }

  else
  {
    v11 = v2;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v11)
  {
    *(v10 + 160) = (*(v12 + 8))(v11, v12);
  }

  *(v10 + 64) = sub_1AF5A9818;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9488;
  v14[5] = v13;
  v14[2] = sub_1AF5A9D18;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x657366664F706F74;
  *(v15 + 24) = 0xE900000000000074;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
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
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v16 = (*(v5 + 8))();
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v15 + 160) = (*(v17 + 8))(v16, v17);
  }

  *(v15 + 64) = sub_1AF5A9818;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A9488;
  v19[5] = v18;
  v19[2] = sub_1AF5A9D18;
  v19[3] = v18;
  v19[6] = v18;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  strcpy((v20 + 16), "bottomOffset");
  *(v20 + 29) = 0;
  *(v20 + 30) = -5120;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 12;
  *(v20 + 56) = 0;
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
  swift_retain_n();
  if (v5)
  {
    v21 = (*(v5 + 8))();
  }

  else
  {
    v21 = v2;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v20 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v20 + 64) = sub_1AF5A9818;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9488;
  v24[5] = v23;
  v24[2] = sub_1AF5A9D18;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 1918985582;
  *(v25 + 24) = 0xE400000000000000;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 16;
  *(v25 + 56) = 0;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v26 = (*(v5 + 8))();
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A9818;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A9488;
  v29[5] = v28;
  v29[2] = sub_1AF5A9D18;
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
  *(v30 + 16) = 7496038;
  *(v30 + 24) = 0xE300000000000000;
  *(v30 + 32) = v28;
  *(v30 + 40) = v2;
  *(v30 + 48) = 20;
  *(v30 + 56) = 0;
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
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v2)
  {
    *(v30 + 160) = (*(v31 + 8))(v2, v31);
  }

  *(v30 + 64) = sub_1AF5A9818;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 72) = v30;
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF591654;
  v34[5] = v32;
  v34[2] = sub_1AF591680;
  v34[3] = v32;
  v34[6] = v32;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  strcpy((v35 + 16), "usePerspective");
  *(v35 + 31) = -18;
  *(v35 + 32) = v32;
  *(v35 + 40) = v33;
  *(v35 + 48) = 24;
  *(v35 + 56) = 0;
  *(v35 + 58) = 0;
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
  *(v35 + 210) = 0;
  v36 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v36)
  {
    v37 = (*(v36 + 8))();
  }

  else
  {
    v37 = v33;
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v35 + 160) = (*(v38 + 8))(v37, v38);
  }

  *(v35 + 64) = sub_1AF5916DC;
  *(v35 + 72) = v32;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 80) = v35;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AF5AA180;
  v40[5] = v39;
  v40[2] = sub_1AF5A9D1C;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x756C6F56776F6873;
  *(v41 + 24) = 0xEA0000000000656DLL;
  *(v41 + 32) = v39;
  *(v41 + 40) = v33;
  *(v41 + 48) = 25;
  *(v41 + 56) = 0;
  *(v41 + 58) = 0;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 0;
  swift_retain_n();
  if (v36)
  {
    v33 = (*(v36 + 8))();
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v33)
  {
    *(v41 + 160) = (*(v42 + 8))(v33, v42);
  }

  *(v41 + 64) = sub_1AF5A981C;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 88) = v41;
  qword_1EB6C2F00 = v0;
  return result;
}

uint64_t sub_1AF4D8E80()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5917DC;
  v3[5] = v1;
  v3[2] = sub_1AF591810;
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
  strcpy((v4 + 16), "operationIndex");
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
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v4 + 64);
  *(v4 + 64) = sub_1AF59186C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v10 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF5AA184;
  v11[5] = KeyPath;
  v11[2] = sub_1AF5918AC;
  v11[3] = KeyPath;
  v11[6] = KeyPath;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6F6974617265706FLL;
  *(v12 + 24) = 0xE90000000000006ELL;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = &type metadata for Composition.Operation;
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v10)
  {
    *(v12 + 160) = (*(v14 + 8))(v10, v14);
  }

  *(v12 + 64) = sub_1AF591908;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v4;
  *(v59 + 32) = v12;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF591948;
  v17[5] = v15;
  v17[2] = sub_1AF59197C;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 0x726F74636166;
  *(v18 + 24) = 0xE600000000000000;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 4;
  *(v18 + 56) = 0;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 0;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x100003C23D70ALL;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v58 = v19;
  v20 = swift_conformsToProtocol2();
  if (v20 && v16)
  {
    *(v18 + 160) = (*(v20 + 8))(v16, v20);
  }

  *(v18 + 64) = sub_1AF5919D8;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v59 + 40) = v18;
  v21 = swift_getKeyPath();
  v22 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v23 = swift_allocObject();
  v23[4] = sub_1AF5917DC;
  v23[5] = v21;
  v23[2] = sub_1AF591A18;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 168) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x65727574786574;
  *(v24 + 24) = 0xE700000000000000;
  *(v24 + 32) = v21;
  *(v24 + 40) = &type metadata for Entity;
  *(v24 + 48) = 8;
  *(v24 + 56) = 0;
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
  *(v24 + 144) = xmmword_1AFE551B0;
  *(v24 + 80) = v23;
  *(v24 + 88) = &off_1F2535378;
  *(v24 + 210) = 0;
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25)
  {
    v22 = (*(v25 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v22)
  {
    *(v24 + 160) = (*(v26 + 8))(v22, v26);
  }

  *(v24 + 64) = sub_1AF591A74;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v59 + 48) = v24;
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA384;
  v29[5] = v28;
  v29[2] = sub_1AF5A9D20;
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
  *(v30 + 16) = 0xD000000000000010;
  *(v30 + 24) = 0x80000001AFF2A940;
  *(v30 + 32) = v28;
  *(v30 + 40) = v2;
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
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v2)
  {
    *(v30 + 160) = (*(v31 + 8))(v2, v31);
  }

  *(v30 + 64) = sub_1AF5A9820;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  v32 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v33 = swift_allocObject();
  v33[4] = sub_1AF591AB4;
  v33[5] = v27;
  v33[2] = sub_1AF591AE0;
  v33[3] = v27;
  v33[6] = v27;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0x4D73736572646461;
  *(v34 + 24) = 0xEB0000000065646FLL;
  *(v34 + 32) = v27;
  *(v34 + 40) = &type metadata for AddressMode;
  *(v34 + 48) = 16;
  *(v34 + 56) = 0;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 1;
  *(v34 + 192) = 0;
  *(v34 + 196) = 1;
  *(v34 + 200) = 0x1000100000000;
  *(v34 + 208) = 1;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;
  v35 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v35)
  {
    v32 = (*(v35 + 8))();
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v32)
  {
    *(v34 + 160) = (*(v36 + 8))(v32, v36);
  }

  *(v34 + 64) = sub_1AF591B3C;
  *(v34 + 72) = v27;
  sub_1AF0FB8EC(0);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = v30;
  *(v59 + 56) = v34;
  v37 = swift_getKeyPath();
  sub_1AF57C8C8();
  v38 = swift_allocObject();
  v38[4] = sub_1AF5917DC;
  v38[5] = v37;
  v38[2] = sub_1AF591B7C;
  v38[3] = v37;
  v38[6] = v37;
  v39 = swift_allocObject();
  *(v39 + 104) = 0;
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 216) = 0;
  v40 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v42 = v41;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 16) = 0x656C616373;
  *(v39 + 24) = 0xE500000000000000;
  *(v39 + 32) = v37;
  *(v39 + 40) = v41;
  *(v39 + 48) = 24;
  *(v39 + 56) = 0;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 96) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v43 = swift_conformsToProtocol2();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  swift_retain_n();
  v45 = v42;
  if (v44)
  {
    v45 = (*(v43 + 8))(v44, v43);
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v45)
  {
    *(v39 + 160) = (*(v46 + 8))(v45, v46);
  }

  v47 = *(v39 + 64);
  *(v39 + 64) = sub_1AF591BD8;
  *(v39 + 72) = v37;
  sub_1AF0FB8EC(v47);
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;

  *(v39 + 216) = 0;

  *(v59 + 64) = v39;
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  v49[4] = sub_1AF5AA384;
  v49[5] = v48;
  v49[2] = sub_1AF5A9D24;
  v49[3] = v48;
  v49[6] = v48;
  v50 = swift_allocObject();
  *(v50 + 112) = 1;
  *(v50 + 128) = 0;
  *(v50 + 136) = 0;
  *(v50 + 120) = 0;
  *(v50 + 160) = MEMORY[0x1E69E7CC0];
  *(v50 + 168) = 0;
  *(v50 + 216) = 0;
  *(v50 + 176) = 0;
  *(v50 + 16) = 1935763810;
  *(v50 + 24) = 0xE400000000000000;
  *(v50 + 32) = v48;
  *(v50 + 40) = v42;
  *(v50 + 48) = 32;
  *(v50 + 56) = 0;
  *(v50 + 58) = 0;
  *(v50 + 184) = 0;
  *(v50 + 188) = 1;
  *(v50 + 192) = 0;
  *(v50 + 196) = 1;
  *(v50 + 200) = 0x1000100000000;
  *(v50 + 208) = 1;
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 96) = 0;
  *(v50 + 104) = 0;
  *(v50 + 144) = xmmword_1AFE22A20;
  *(v50 + 80) = v49;
  *(v50 + 88) = &off_1F2535378;
  *(v50 + 210) = 0;
  swift_retain_n();
  if (v44)
  {
    v42 = (*(v43 + 8))(v44, v43);
  }

  v51 = swift_conformsToProtocol2();
  if (v51 && v42)
  {
    *(v50 + 160) = (*(v51 + 8))(v42, v51);
  }

  v52 = *(v50 + 64);
  *(v50 + 64) = sub_1AF5A9824;
  *(v50 + 72) = v48;
  sub_1AF0FB8EC(v52);
  *(v50 + 168) = 0;
  *(v50 + 176) = 0;

  *(v50 + 216) = 0;

  *(v59 + 72) = v50;
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  v54[4] = sub_1AF5A948C;
  v54[5] = v53;
  v54[2] = sub_1AF5A9D28;
  v54[3] = v53;
  v54[6] = v53;
  v55 = swift_allocObject();
  *(v55 + 112) = 1;
  *(v55 + 128) = 0;
  *(v55 + 136) = 0;
  *(v55 + 120) = 0;
  *(v55 + 160) = MEMORY[0x1E69E7CC0];
  *(v55 + 168) = 0;
  *(v55 + 216) = 0;
  *(v55 + 176) = 0;
  *(v55 + 16) = 0x656C676E61;
  *(v55 + 24) = 0xE500000000000000;
  *(v55 + 32) = v53;
  *(v55 + 40) = v40;
  *(v55 + 48) = 40;
  *(v55 + 56) = 0;
  *(v55 + 58) = 0;
  *(v55 + 184) = 0;
  *(v55 + 188) = 1;
  *(v55 + 192) = 0;
  *(v55 + 196) = 1;
  *(v55 + 200) = 0x1000100000000;
  *(v55 + 208) = 1;
  *(v55 + 64) = 0;
  *(v55 + 72) = 0;
  *(v55 + 96) = 0;
  *(v55 + 104) = 0;
  *(v55 + 144) = xmmword_1AFE22A20;
  *(v55 + 80) = v54;
  *(v55 + 88) = &off_1F2535378;
  *(v55 + 210) = 0;
  swift_retain_n();
  if (v58)
  {
    v40 = (*(v58 + 8))();
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v40)
  {
    *(v55 + 160) = (*(v56 + 8))(v40, v56);
  }

  *(v55 + 64) = sub_1AF5A9828;
  *(v55 + 72) = v53;
  sub_1AF0FB8EC(0);
  *(v55 + 168) = 0;
  *(v55 + 176) = 0;

  *(v55 + 216) = 0;
  *(v59 + 80) = v55;
  qword_1EB6C2F08 = v59;
  return result;
}

uint64_t sub_1AF4DA0DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1AFE55270;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF591E9C;
  v3[5] = v1;
  v3[2] = sub_1AF591ED0;
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
  strcpy((v4 + 16), "operationIndex");
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
  *(v4 + 64) = sub_1AF591F2C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA188;
  v10[5] = KeyPath;
  v10[2] = sub_1AF591F6C;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
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
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
  *(v11 + 48) = 12;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
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
  v14 = MEMORY[0x1E69E7360];
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  v15 = *(v11 + 64);
  *(v11 + 64) = sub_1AF591FC8;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(v15);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;

  *(v113 + 32) = v11;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF592008;
  v18[5] = v16;
  v18[2] = sub_1AF59203C;
  v18[3] = v16;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 210) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x726F74636166;
  *(v19 + 24) = 0xE600000000000000;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = 16;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 0;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x100003C23D70ALL;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v17)
  {
    *(v19 + 160) = (*(v21 + 8))(v17, v21);
  }

  v22 = *(v19 + 64);
  *(v19 + 64) = sub_1AF592098;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(v22);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v113 + 40) = v19;
  v23 = swift_getKeyPath();
  v24 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v25 = swift_allocObject();
  v25[4] = sub_1AF591E9C;
  v25[5] = v23;
  v25[2] = sub_1AF5920D8;
  v25[3] = v23;
  v25[6] = v23;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 168) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 210) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x65727574786574;
  *(v26 + 24) = 0xE700000000000000;
  *(v26 + 32) = v23;
  *(v26 + 40) = &type metadata for Entity;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  *(v26 + 58) = 0;
  *(v26 + 184) = 0;
  *(v26 + 188) = 1;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 0x1000100000000;
  *(v26 + 208) = 1;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 96) = 0;
  *(v26 + 104) = 0;
  *(v26 + 144) = xmmword_1AFE551B0;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 0;
  v27 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v27)
  {
    v24 = (*(v27 + 8))();
  }

  v112 = v20;
  v28 = swift_conformsToProtocol2();
  if (v28 && v24)
  {
    *(v26 + 160) = (*(v28 + 8))(v24, v28);
  }

  v29 = *(v26 + 64);
  *(v26 + 64) = sub_1AF592134;
  *(v26 + 72) = v23;
  sub_1AF0FB8EC(v29);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;

  *(v113 + 48) = v26;
  v30 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF5AA388;
  v32[5] = v31;
  v32[2] = sub_1AF5A9D38;
  v32[3] = v31;
  v32[6] = v31;
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
  strcpy((v33 + 16), "channelIndex");
  *(v33 + 29) = 0;
  *(v33 + 30) = -5120;
  *(v33 + 32) = v31;
  *(v33 + 40) = v14;
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
  swift_retain_n();
  if (v6)
  {
    v34 = (*(v6 + 8))();
  }

  else
  {
    v34 = v14;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    *(v33 + 160) = (*(v35 + 8))(v34, v35);
  }

  v36 = *(v33 + 64);
  *(v33 + 64) = sub_1AF5A982C;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(v36);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  v37 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF592174;
  v38[5] = v30;
  v38[2] = sub_1AF5921A0;
  v38[3] = v30;
  v38[6] = v30;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 160) = MEMORY[0x1E69E7CC0];
  *(v39 + 168) = 0;
  *(v39 + 210) = 0;
  *(v39 + 216) = 0;
  *(v39 + 176) = 0;
  *(v39 + 16) = 0x6C656E6E616863;
  *(v39 + 24) = 0xE700000000000000;
  *(v39 + 32) = v30;
  *(v39 + 40) = &type metadata for TextureChannel;
  *(v39 + 48) = 8;
  *(v39 + 56) = 0;
  *(v39 + 58) = 0;
  *(v39 + 184) = 0;
  *(v39 + 188) = 1;
  *(v39 + 192) = 0;
  *(v39 + 196) = 1;
  *(v39 + 200) = 0x1000100000000;
  *(v39 + 208) = 1;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 96) = 0;
  *(v39 + 104) = 0;
  *(v39 + 144) = xmmword_1AFE22A20;
  *(v39 + 80) = v38;
  *(v39 + 88) = &off_1F2535378;
  *(v39 + 210) = 0;
  v40 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v40)
  {
    v37 = (*(v40 + 8))();
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v37)
  {
    *(v39 + 160) = (*(v41 + 8))(v37, v41);
  }

  v42 = *(v39 + 64);
  *(v39 + 64) = sub_1AF5921FC;
  *(v39 + 72) = v30;
  sub_1AF0FB8EC(v42);
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;

  *(v39 + 216) = v33;

  *(v113 + 56) = v39;
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AF5AA388;
  v45[5] = v44;
  v45[2] = sub_1AF5A9D38;
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
  *(v46 + 16) = 0xD000000000000010;
  *(v46 + 24) = 0x80000001AFF2A940;
  *(v46 + 32) = v44;
  *(v46 + 40) = v14;
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
  if (v6)
  {
    v47 = (*(v6 + 8))();
  }

  else
  {
    v47 = v14;
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v47)
  {
    *(v46 + 160) = (*(v48 + 8))(v47, v48);
  }

  v49 = *(v46 + 64);
  *(v46 + 64) = sub_1AF5A982C;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(v49);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;

  v50 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v51 = swift_allocObject();
  v51[4] = sub_1AF59223C;
  v51[5] = v43;
  v51[2] = sub_1AF592268;
  v51[3] = v43;
  v51[6] = v43;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 168) = 0;
  *(v52 + 210) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 0x4D73736572646461;
  *(v52 + 24) = 0xEB0000000065646FLL;
  *(v52 + 32) = v43;
  *(v52 + 40) = &type metadata for AddressMode;
  *(v52 + 48) = 9;
  *(v52 + 56) = 0;
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
  v53 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v53)
  {
    v50 = (*(v53 + 8))();
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v50)
  {
    *(v52 + 160) = (*(v54 + 8))(v50, v54);
  }

  v55 = *(v52 + 64);
  *(v52 + 64) = sub_1AF5922C4;
  *(v52 + 72) = v43;
  sub_1AF0FB8EC(v55);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = v46;

  *(v113 + 64) = v52;
  v56 = swift_getKeyPath();
  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  v58[4] = sub_1AF5AA388;
  v58[5] = v57;
  v58[2] = sub_1AF5A9D38;
  v58[3] = v57;
  v58[6] = v57;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 168) = 0;
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0x65646E4965646F6DLL;
  *(v59 + 24) = 0xE900000000000078;
  *(v59 + 32) = v57;
  *(v59 + 40) = v14;
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
  if (v6)
  {
    v14 = (*(v6 + 8))();
  }

  v60 = swift_conformsToProtocol2();
  if (v60 && v14)
  {
    *(v59 + 160) = (*(v60 + 8))(v14, v60);
  }

  *(v59 + 64) = sub_1AF5A982C;
  *(v59 + 72) = v57;
  sub_1AF0FB8EC(0);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = 0;
  v61 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v62 = swift_allocObject();
  v62[4] = sub_1AF592304;
  v62[5] = v56;
  v62[2] = sub_1AF592330;
  v62[3] = v56;
  v62[6] = v56;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 216) = 0;
  *(v63 + 176) = 0;
  *(v63 + 16) = 1701080941;
  *(v63 + 24) = 0xE400000000000000;
  *(v63 + 32) = v56;
  *(v63 + 40) = &type metadata for ScaleMode;
  *(v63 + 48) = 20;
  *(v63 + 56) = 0;
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
  v64 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v64)
  {
    v61 = (*(v64 + 8))();
  }

  v65 = swift_conformsToProtocol2();
  if (v65 && v61)
  {
    *(v63 + 160) = (*(v65 + 8))(v61, v65);
  }

  *(v63 + 64) = sub_1AF59238C;
  *(v63 + 72) = v56;
  sub_1AF0FB8EC(0);
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;

  *(v63 + 216) = v59;
  *(v113 + 72) = v63;
  v66 = swift_getKeyPath();
  sub_1AF57F2F4();
  v67 = swift_allocObject();
  v67[4] = sub_1AF591E9C;
  v67[5] = v66;
  v67[2] = sub_1AF5923CC;
  v67[3] = v66;
  v67[6] = v66;
  v68 = swift_allocObject();
  *(v68 + 104) = 0;
  *(v68 + 112) = 1;
  *(v68 + 128) = 0;
  *(v68 + 136) = 0;
  *(v68 + 120) = 0;
  *(v68 + 160) = MEMORY[0x1E69E7CC0];
  *(v68 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v70 = v69;
  *(v68 + 168) = 0;
  *(v68 + 176) = 0;
  *(v68 + 16) = 120;
  *(v68 + 24) = 0xE100000000000000;
  *(v68 + 32) = v66;
  *(v68 + 40) = v69;
  *(v68 + 48) = 24;
  *(v68 + 56) = 0;
  *(v68 + 58) = 0;
  *(v68 + 184) = 0;
  *(v68 + 188) = 1;
  *(v68 + 192) = 0;
  *(v68 + 196) = 1;
  *(v68 + 200) = 0x1000100000000;
  *(v68 + 208) = 1;
  *(v68 + 64) = 0;
  *(v68 + 72) = 0;
  *(v68 + 96) = 0;
  *(v68 + 144) = xmmword_1AFE22A20;
  *(v68 + 80) = v67;
  *(v68 + 88) = &off_1F2535378;
  *(v68 + 210) = 0;
  v71 = swift_conformsToProtocol2();
  if (v71)
  {
    v72 = v70;
  }

  else
  {
    v72 = 0;
  }

  swift_retain_n();
  v73 = v70;
  if (v72)
  {
    v73 = (*(v71 + 8))(v72, v71);
  }

  v74 = swift_conformsToProtocol2();
  if (v74 && v73)
  {
    *(v68 + 160) = (*(v74 + 8))(v73, v74);
  }

  v75 = *(v68 + 64);
  *(v68 + 64) = sub_1AF592428;
  *(v68 + 72) = v66;
  sub_1AF0FB8EC(v75);
  *(v68 + 168) = 0;
  *(v68 + 176) = 0;

  *(v68 + 216) = 0;

  *(v113 + 80) = v68;
  v76 = swift_getKeyPath();
  v77 = swift_getKeyPath();
  v78 = swift_allocObject();
  v78[4] = sub_1AF5AA388;
  v78[5] = v76;
  v78[2] = sub_1AF5AA4EC;
  v78[3] = v76;
  v78[6] = v76;
  v79 = swift_allocObject();
  *(v79 + 112) = 1;
  *(v79 + 128) = 0;
  *(v79 + 136) = 0;
  *(v79 + 120) = 0;
  *(v79 + 160) = MEMORY[0x1E69E7CC0];
  *(v79 + 168) = 0;
  *(v79 + 216) = 0;
  *(v79 + 176) = 0;
  *(v79 + 16) = 121;
  *(v79 + 24) = 0xE100000000000000;
  *(v79 + 32) = v76;
  *(v79 + 40) = v70;
  *(v79 + 48) = 32;
  *(v79 + 56) = 0;
  *(v79 + 58) = 0;
  *(v79 + 184) = 0;
  *(v79 + 188) = 1;
  *(v79 + 192) = 0;
  *(v79 + 196) = 1;
  *(v79 + 200) = 0x1000100000000;
  *(v79 + 208) = 1;
  *(v79 + 64) = 0;
  *(v79 + 72) = 0;
  *(v79 + 96) = v77;
  *(v79 + 104) = 0;
  *(v79 + 144) = xmmword_1AFE22A20;
  *(v79 + 80) = v78;
  *(v79 + 88) = &off_1F2535378;
  *(v79 + 210) = 0;
  swift_retain_n();

  v80 = v70;
  if (v72)
  {
    v80 = (*(v71 + 8))(v72, v71);
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v80)
  {
    v82 = (*(v81 + 8))(v80, v81);

    *(v79 + 160) = v82;
  }

  else
  {
  }

  v83 = *(v79 + 64);
  *(v79 + 64) = sub_1AF5A9830;
  *(v79 + 72) = v76;
  sub_1AF0FB8EC(v83);
  *(v79 + 168) = 0;
  *(v79 + 176) = 0;

  *(v79 + 216) = 0;

  *(v113 + 88) = v79;
  v84 = swift_getKeyPath();
  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  v86[4] = sub_1AF5AA388;
  v86[5] = v84;
  v86[2] = sub_1AF5AA4EC;
  v86[3] = v84;
  v86[6] = v84;
  v87 = swift_allocObject();
  *(v87 + 112) = 1;
  *(v87 + 128) = 0;
  *(v87 + 136) = 0;
  *(v87 + 120) = 0;
  *(v87 + 160) = MEMORY[0x1E69E7CC0];
  *(v87 + 168) = 0;
  *(v87 + 216) = 0;
  *(v87 + 176) = 0;
  *(v87 + 16) = 122;
  *(v87 + 24) = 0xE100000000000000;
  *(v87 + 32) = v84;
  *(v87 + 40) = v70;
  *(v87 + 48) = 40;
  *(v87 + 56) = 0;
  *(v87 + 58) = 0;
  *(v87 + 184) = 0;
  *(v87 + 188) = 1;
  *(v87 + 192) = 0;
  *(v87 + 196) = 1;
  *(v87 + 200) = 0x1000100000000;
  *(v87 + 208) = 1;
  *(v87 + 64) = 0;
  *(v87 + 72) = 0;
  *(v87 + 96) = v85;
  *(v87 + 104) = 0;
  *(v87 + 144) = xmmword_1AFE22A20;
  *(v87 + 80) = v86;
  *(v87 + 88) = &off_1F2535378;
  *(v87 + 210) = 0;
  swift_retain_n();

  if (v72)
  {
    v70 = (*(v71 + 8))(v72, v71);
  }

  v88 = swift_conformsToProtocol2();
  if (v88 && v70)
  {
    v89 = (*(v88 + 8))(v70, v88);

    *(v87 + 160) = v89;
  }

  else
  {
  }

  v90 = *(v87 + 64);
  *(v87 + 64) = sub_1AF5A9830;
  *(v87 + 72) = v84;
  sub_1AF0FB8EC(v90);
  *(v87 + 168) = 0;
  *(v87 + 176) = 0;

  *(v87 + 216) = 0;

  *(v113 + 96) = v87;
  v91 = swift_getKeyPath();
  sub_1AF57C8C8();
  v92 = swift_allocObject();
  v92[4] = sub_1AF591E9C;
  v92[5] = v91;
  v92[2] = sub_1AF59246C;
  v92[3] = v91;
  v92[6] = v91;
  v93 = swift_allocObject();
  *(v93 + 104) = 0;
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 216) = 0;
  v94 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v96 = v95;
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 16) = 0x656C616373;
  *(v93 + 24) = 0xE500000000000000;
  *(v93 + 32) = v91;
  *(v93 + 40) = v95;
  *(v93 + 48) = 48;
  *(v93 + 56) = 0;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 96) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  v97 = swift_conformsToProtocol2();
  if (v97)
  {
    v98 = v96;
  }

  else
  {
    v98 = 0;
  }

  swift_retain_n();
  v99 = v96;
  if (v98)
  {
    v99 = (*(v97 + 8))(v98, v97);
  }

  v100 = swift_conformsToProtocol2();
  if (v100 && v99)
  {
    *(v93 + 160) = (*(v100 + 8))(v99, v100);
  }

  v101 = *(v93 + 64);
  *(v93 + 64) = sub_1AF5924C8;
  *(v93 + 72) = v91;
  sub_1AF0FB8EC(v101);
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;

  *(v93 + 216) = 0;

  *(v113 + 104) = v93;
  v102 = swift_getKeyPath();
  v103 = swift_allocObject();
  v103[4] = sub_1AF5AA388;
  v103[5] = v102;
  v103[2] = sub_1AF5A9D3C;
  v103[3] = v102;
  v103[6] = v102;
  v104 = swift_allocObject();
  *(v104 + 112) = 1;
  *(v104 + 128) = 0;
  *(v104 + 136) = 0;
  *(v104 + 120) = 0;
  *(v104 + 160) = MEMORY[0x1E69E7CC0];
  *(v104 + 168) = 0;
  *(v104 + 216) = 0;
  *(v104 + 176) = 0;
  *(v104 + 16) = 1935763810;
  *(v104 + 24) = 0xE400000000000000;
  *(v104 + 32) = v102;
  *(v104 + 40) = v96;
  *(v104 + 48) = 56;
  *(v104 + 56) = 0;
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
  if (v98)
  {
    v96 = (*(v97 + 8))(v98, v97);
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v96)
  {
    *(v104 + 160) = (*(v105 + 8))(v96, v105);
  }

  v106 = *(v104 + 64);
  *(v104 + 64) = sub_1AF5A9834;
  *(v104 + 72) = v102;
  sub_1AF0FB8EC(v106);
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;

  *(v104 + 216) = 0;

  *(v113 + 112) = v104;
  v107 = swift_getKeyPath();
  v108 = swift_allocObject();
  v108[4] = sub_1AF5A9490;
  v108[5] = v107;
  v108[2] = sub_1AF5A9D40;
  v108[3] = v107;
  v108[6] = v107;
  v109 = swift_allocObject();
  *(v109 + 112) = 1;
  *(v109 + 128) = 0;
  *(v109 + 136) = 0;
  *(v109 + 120) = 0;
  *(v109 + 160) = MEMORY[0x1E69E7CC0];
  *(v109 + 168) = 0;
  *(v109 + 176) = 0;
  *(v109 + 216) = 0;
  *(v109 + 16) = 0x656C676E61;
  *(v109 + 24) = 0xE500000000000000;
  *(v109 + 32) = v107;
  *(v109 + 40) = v94;
  *(v109 + 48) = 64;
  *(v109 + 56) = 0;
  *(v109 + 58) = 0;
  *(v109 + 184) = 0;
  *(v109 + 188) = 1;
  *(v109 + 192) = 0;
  *(v109 + 196) = 1;
  *(v109 + 200) = 0x1000100000000;
  *(v109 + 208) = 1;
  *(v109 + 64) = 0;
  *(v109 + 72) = 0;
  *(v109 + 96) = 0;
  *(v109 + 104) = 0;
  *(v109 + 144) = xmmword_1AFE22A20;
  *(v109 + 80) = v108;
  *(v109 + 88) = &off_1F2535378;
  *(v109 + 210) = 0;
  swift_retain_n();
  if (v112)
  {
    v94 = (*(v112 + 8))();
  }

  v110 = swift_conformsToProtocol2();
  if (v110 && v94)
  {
    *(v109 + 160) = (*(v110 + 8))(v94, v110);
  }

  *(v109 + 64) = sub_1AF5A9838;
  *(v109 + 72) = v107;
  sub_1AF0FB8EC(0);
  *(v109 + 168) = 0;
  *(v109 + 176) = 0;

  *(v109 + 216) = 0;
  *(v113 + 120) = v109;
  qword_1EB6C2F10 = v113;
  return result;
}

uint64_t sub_1AF4DBF90(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 12) = v2;
  return result;
}

uint64_t sub_1AF4DBFA8(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1AF4DBFC8(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 9) = v2;
  return result;
}

uint64_t sub_1AF4DBFE0(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_1AF4DC014()
{
  if (qword_1EB636F00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4DC104()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF592910;
  v3[5] = KeyPath;
  v3[2] = sub_1AF592944;
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
  *(v4 + 16) = 0x65727574786574;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
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
  *(v4 + 144) = xmmword_1AFE551B0;
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
  *(v4 + 64) = sub_1AF5929A0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v61 = v0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF592910;
  v11[5] = v9;
  v11[2] = sub_1AF5929E0;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  strcpy((v12 + 16), "channelIndex");
  *(v12 + 29) = 0;
  *(v12 + 30) = -5120;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v14 = (*(v13 + 8))();
  }

  else
  {
    v14 = v10;
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v12 + 160) = (*(v15 + 8))(v14, v15);
  }

  *(v12 + 64) = sub_1AF592A3C;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;
  v16 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF592A7C;
  v17[5] = v8;
  v17[2] = sub_1AF592AA8;
  v17[3] = v8;
  v17[6] = v8;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 0x6C656E6E616863;
  *(v18 + 24) = 0xE700000000000000;
  *(v18 + 32) = v8;
  *(v18 + 40) = &type metadata for TextureChannel;
  *(v18 + 48) = 8;
  *(v18 + 56) = 0;
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
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v16)
  {
    *(v18 + 160) = (*(v20 + 8))(v16, v20);
  }

  *(v18 + 64) = sub_1AF592B04;
  *(v18 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = v12;
  *(v0 + 40) = v18;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5AA38C;
  v23[5] = v22;
  v23[2] = sub_1AF5A9D58;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0xD000000000000010;
  *(v24 + 24) = 0x80000001AFF2A940;
  *(v24 + 32) = v22;
  *(v24 + 40) = v10;
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
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v10)
  {
    *(v24 + 160) = (*(v25 + 8))(v10, v25);
  }

  *(v24 + 64) = sub_1AF5A983C;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  v26 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF592B44;
  v27[5] = v21;
  v27[2] = sub_1AF592B70;
  v27[3] = v21;
  v27[6] = v21;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 0x4D73736572646461;
  *(v28 + 24) = 0xEB0000000065646FLL;
  *(v28 + 32) = v21;
  *(v28 + 40) = &type metadata for AddressMode;
  *(v28 + 48) = 9;
  *(v28 + 56) = 0;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  v29 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v29)
  {
    v26 = (*(v29 + 8))();
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v26)
  {
    *(v28 + 160) = (*(v30 + 8))(v26, v30);
  }

  *(v28 + 64) = sub_1AF592BCC;
  *(v28 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = v24;
  *(v0 + 48) = v28;
  v31 = swift_getKeyPath();
  sub_1AF57F2F4();
  v32 = swift_allocObject();
  v32[4] = sub_1AF592910;
  v32[5] = v31;
  v32[2] = sub_1AF592C0C;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 104) = 0;
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v35 = v34;
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 0x65676E6172;
  *(v33 + 24) = 0xE500000000000000;
  *(v33 + 32) = v31;
  *(v33 + 40) = v34;
  *(v33 + 48) = 12;
  *(v33 + 56) = 0;
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
  *(v33 + 144) = xmmword_1AFE22A20;
  *(v33 + 80) = v32;
  *(v33 + 88) = &off_1F2535378;
  *(v33 + 210) = 0;
  v36 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v36 && v35)
  {
    v35 = (*(v36 + 8))(v35, v36);
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v35)
  {
    *(v33 + 160) = (*(v37 + 8))(v35, v37);
  }

  v38 = *(v33 + 64);
  *(v33 + 64) = sub_1AF592C68;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(v38);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v0 + 56) = v33;
  v39 = swift_getKeyPath();
  sub_1AF57C8C8();
  v40 = swift_allocObject();
  v40[4] = sub_1AF592910;
  v40[5] = v39;
  v40[2] = sub_1AF592CAC;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 104) = 0;
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 216) = 0;
  v42 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v44 = v43;
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x656C616373;
  *(v41 + 24) = 0xE500000000000000;
  *(v41 + 32) = v39;
  *(v41 + 40) = v43;
  *(v41 + 48) = 24;
  *(v41 + 56) = 0;
  *(v41 + 58) = 0;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 0;
  v45 = swift_conformsToProtocol2();
  if (v45)
  {
    v46 = v44;
  }

  else
  {
    v46 = 0;
  }

  swift_retain_n();
  v47 = v44;
  if (v46)
  {
    v47 = (*(v45 + 8))(v46, v45);
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v47)
  {
    *(v41 + 160) = (*(v48 + 8))(v47, v48);
  }

  v49 = *(v41 + 64);
  *(v41 + 64) = sub_1AF592D08;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(v49);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;

  *(v0 + 64) = v41;
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  v51[4] = sub_1AF5AA38C;
  v51[5] = v50;
  v51[2] = sub_1AF5A9D5C;
  v51[3] = v50;
  v51[6] = v50;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 168) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 1935763810;
  *(v52 + 24) = 0xE400000000000000;
  *(v52 + 32) = v50;
  *(v52 + 40) = v44;
  *(v52 + 48) = 32;
  *(v52 + 56) = 0;
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
  if (v46)
  {
    v44 = (*(v45 + 8))(v46, v45);
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v44)
  {
    *(v52 + 160) = (*(v53 + 8))(v44, v53);
  }

  v54 = *(v52 + 64);
  *(v52 + 64) = sub_1AF5A9840;
  *(v52 + 72) = v50;
  sub_1AF0FB8EC(v54);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;

  *(v0 + 72) = v52;
  v55 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v42, type metadata accessor for EntityGetSet);
  v56 = swift_allocObject();
  v56[4] = sub_1AF592D4C;
  v56[5] = v55;
  v56[2] = sub_1AF592D80;
  v56[3] = v55;
  v56[6] = v55;
  v57 = swift_allocObject();
  *(v57 + 112) = 1;
  *(v57 + 128) = 0;
  *(v57 + 136) = 0;
  *(v57 + 120) = 0;
  *(v57 + 160) = MEMORY[0x1E69E7CC0];
  *(v57 + 168) = 0;
  *(v57 + 216) = 0;
  *(v57 + 176) = 0;
  *(v57 + 16) = 0x656C676E61;
  *(v57 + 24) = 0xE500000000000000;
  *(v57 + 32) = v55;
  *(v57 + 40) = v42;
  *(v57 + 48) = 40;
  *(v57 + 56) = 0;
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
  v58 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v58)
  {
    v42 = (*(v58 + 8))();
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && v42)
  {
    *(v57 + 160) = (*(v59 + 8))(v42, v59);
  }

  *(v57 + 64) = sub_1AF592DDC;
  *(v57 + 72) = v55;
  sub_1AF0FB8EC(0);
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;

  *(v57 + 216) = 0;
  *(v61 + 80) = v57;
  qword_1EB6C2F18 = v61;
  return result;
}

uint64_t sub_1AF4DD384()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF593130;
  v3[5] = v1;
  v3[2] = sub_1AF593164;
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
  strcpy((v4 + 16), "operationIndex");
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
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  *(v4 + 64) = sub_1AF5931C0;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v9 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA19C;
  v10[5] = KeyPath;
  v10[2] = sub_1AF593200;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x6F6974617265706FLL;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Composition.Operation;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
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

  *(v11 + 64) = sub_1AF59325C;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;
  *(v48 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF59329C;
  v16[5] = v14;
  v16[2] = sub_1AF5932D0;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 8;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x100003C23D70ALL;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF59332C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v48 + 40) = v17;
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5AA390;
  v22[5] = v21;
  v22[2] = sub_1AF5A9D70;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x65646E4965646F6DLL;
  *(v23 + 24) = 0xE900000000000078;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 1;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v24 = (*(v6 + 8))();
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    *(v23 + 160) = (*(v25 + 8))(v24, v25);
  }

  *(v23 + 64) = sub_1AF5A9844;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  v26 = &type metadata for ParticleColorOverPosition.GradientMode;
  sub_1AF5A9240(0, &qword_1EB63AE70, &type metadata for ParticleColorOverPosition.GradientMode, type metadata accessor for EntityGetSet);
  v27 = swift_allocObject();
  v27[4] = sub_1AF5AA19C;
  v27[5] = v20;
  v27[2] = sub_1AF59336C;
  v27[3] = v20;
  v27[6] = v20;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 1701080941;
  *(v28 + 24) = 0xE400000000000000;
  *(v28 + 32) = v20;
  *(v28 + 40) = &type metadata for ParticleColorOverPosition.GradientMode;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  v29 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v29)
  {
    v26 = (*(v29 + 8))();
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v26)
  {
    *(v28 + 160) = (*(v30 + 8))(v26, v30);
  }

  *(v28 + 64) = sub_1AF5933C8;
  *(v28 + 72) = v20;
  sub_1AF0FB8EC(0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = v23;
  *(v48 + 48) = v28;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA390;
  v33[5] = v32;
  v33[2] = sub_1AF5A9D70;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0xD000000000000010;
  *(v34 + 24) = 0x80000001AFF2A940;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 1;
  *(v34 + 192) = 0;
  *(v34 + 196) = 1;
  *(v34 + 200) = 0x1000100000000;
  *(v34 + 208) = 1;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    *(v34 + 160) = (*(v35 + 8))(v2, v35);
  }

  *(v34 + 64) = sub_1AF5A9844;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(0);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;
  v36 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v37 = swift_allocObject();
  v37[4] = sub_1AF593408;
  v37[5] = v31;
  v37[2] = sub_1AF593434;
  v37[3] = v31;
  v37[6] = v31;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x4D73736572646461;
  *(v38 + 24) = 0xEB0000000065646FLL;
  *(v38 + 32) = v31;
  *(v38 + 40) = &type metadata for AddressMode;
  *(v38 + 48) = 1;
  *(v38 + 56) = 0;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    *(v38 + 160) = (*(v40 + 8))(v36, v40);
  }

  *(v38 + 64) = sub_1AF593490;
  *(v38 + 72) = v31;
  sub_1AF0FB8EC(0);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = v34;
  *(v48 + 56) = v38;
  v41 = swift_getKeyPath();
  v42 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v43 = swift_allocObject();
  v43[4] = sub_1AF5934D0;
  v43[5] = v41;
  v43[2] = sub_1AF5934E8;
  v43[3] = v41;
  v43[6] = v41;
  v44 = swift_allocObject();
  *(v44 + 112) = 1;
  *(v44 + 128) = 0;
  *(v44 + 136) = 0;
  *(v44 + 120) = 0;
  *(v44 + 160) = MEMORY[0x1E69E7CC0];
  *(v44 + 168) = 0;
  *(v44 + 216) = 0;
  *(v44 + 176) = 0;
  *(v44 + 16) = 1886216562;
  *(v44 + 24) = 0xE400000000000000;
  *(v44 + 32) = v41;
  *(v44 + 40) = &type metadata for ColorRamp;
  *(v44 + 48) = 16;
  *(v44 + 56) = 0;
  *(v44 + 58) = 0;
  *(v44 + 184) = 0;
  *(v44 + 188) = 1;
  *(v44 + 192) = 0;
  *(v44 + 196) = 1;
  *(v44 + 200) = 0x1000100000000;
  *(v44 + 208) = 1;
  *(v44 + 64) = 0;
  *(v44 + 72) = 0;
  *(v44 + 96) = 0;
  *(v44 + 104) = 0;
  *(v44 + 144) = xmmword_1AFE22A20;
  *(v44 + 80) = v43;
  *(v44 + 88) = &off_1F2535378;
  *(v44 + 210) = 0;
  v45 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v45)
  {
    v42 = (*(v45 + 8))();
  }

  v46 = swift_conformsToProtocol2();
  if (v46 && v42)
  {
    *(v44 + 160) = (*(v46 + 8))(v42, v46);
  }

  *(v44 + 64) = sub_1AF593518;
  *(v44 + 72) = v41;
  sub_1AF0FB8EC(0);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;
  *(v48 + 64) = v44;
  qword_1EB6C2F20 = v48;
  return result;
}

uint64_t sub_1AF4DE348(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 4) = v2;
  return result;
}

uint64_t sub_1AF4DE368(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 1) = v2;
  return result;
}

uint64_t sub_1AF4DE43C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5938E4;
  v4[5] = v2;
  v4[2] = sub_1AF593918;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x65646E4965646F6DLL;
  *(v5 + 24) = 0xE900000000000078;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    *(v5 + 160) = (*(v8 + 8))(v3, v8);
  }

  *(v5 + 64) = sub_1AF593974;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for OrientationConstraint.Mode;
  sub_1AF5A9240(0, &qword_1EB63AEB8, &type metadata for OrientationConstraint.Mode, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5939B4;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5939E0;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v6;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 1701080941;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for OrientationConstraint.Mode;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
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

  *(v11 + 64) = sub_1AF593A3C;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF593A7C;
  v16[5] = v14;
  v16[2] = sub_1AF593AB0;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x726F74636166;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 4;
  *(v17 + 56) = 0;
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
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  v18 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v15)
  {
    *(v17 + 160) = (*(v19 + 8))(v15, v19);
  }

  *(v17 + 64) = sub_1AF593B0C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  qword_1EB6C2F28 = v0;
  return result;
}

uint64_t sub_1AF4DEB54()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF593C9C;
  v4[5] = KeyPath;
  v4[2] = sub_1AF593CE0;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x797469636F6C6576;
  *(v5 + 24) = 0xE800000000000000;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = v2;
  *(v5 + 104) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    v9 = (*(v8 + 8))(v3, v8);

    *(v5 + 160) = v9;
  }

  else
  {
  }

  *(v5 + 64) = sub_1AF593D3C;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  *(v0 + 32) = v5;
  v10 = swift_getKeyPath();
  if (qword_1EB636F28 != -1)
  {
    swift_once();
  }

  v12 = sub_1AF3C3E84(v11);

  sub_1AF51B13C(0, &qword_1EB63AEE8, sub_1AF593DD4, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AF593D7C;
  v13[5] = v10;
  v13[2] = sub_1AF593DA4;
  v13[3] = v10;
  v13[6] = v10;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = v6;
  *(v14 + 216) = 0;
  sub_1AF593DD4();
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x6576727563;
  *(v14 + 24) = 0xE500000000000000;
  *(v14 + 32) = v10;
  *(v14 + 40) = v15;
  *(v14 + 48) = 8;
  *(v14 + 56) = 0;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 1;
  *(v14 + 192) = 0;
  *(v14 + 196) = 1;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 96) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 210) = 0;
  v16 = *(v12 + 16);
  swift_retain_n();
  if (v16)
  {
    *(v14 + 160) = v12;

    v17 = 0;
  }

  else
  {

    sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v19 = v18;
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = v20;
      v17 = 0;
      if (v19)
      {
        *(v14 + 160) = (*(v21 + 8))(v19, v21);

        v17 = *(v14 + 64);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  *(v14 + 64) = sub_1AF593E58;
  *(v14 + 72) = v10;
  sub_1AF0FB8EC(v17);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  qword_1EB6C2F30 = v0;
  return result;
}

char *sub_1AF4DF164()
{
  sub_1AF51B13C(0, &unk_1EB63AF10, sub_1AF43A260, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = 0x75207261656E694CLL;
  *(v0 + 40) = 0xE900000000000070;
  *(v0 + 48) = sub_1AF9D3914(&unk_1F24F4FD0);
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0x64207261656E694CLL;
  *(v0 + 88) = 0xEB000000006E776FLL;
  result = sub_1AF9D3914(&unk_1F24F5000);
  *(v0 + 96) = result;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  qword_1EB6C2F38 = v0;
  return result;
}

uint64_t sub_1AF4DF24C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF594048;
  v4[5] = KeyPath;
  v4[2] = sub_1AF59408C;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x6E6F697461727564;
  *(v5 + 24) = 0xE800000000000000;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 0;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = v2;
  *(v5 + 104) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v7)
  {
    v3 = (*(v7 + 8))();
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v3)
  {
    v9 = (*(v8 + 8))(v3, v8);

    *(v5 + 160) = v9;
  }

  else
  {
  }

  *(v5 + 64) = sub_1AF5940E8;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  *(v0 + 32) = v5;
  v10 = swift_getKeyPath();
  if (qword_1EB636F28 != -1)
  {
    swift_once();
  }

  v12 = sub_1AF3C3E84(v11);

  sub_1AF51B13C(0, &qword_1EB63AEE8, sub_1AF593DD4, type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AF594128;
  v13[5] = v10;
  v13[2] = sub_1AF594150;
  v13[3] = v10;
  v13[6] = v10;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = v6;
  *(v14 + 216) = 0;
  sub_1AF593DD4();
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x6576727563;
  *(v14 + 24) = 0xE500000000000000;
  *(v14 + 32) = v10;
  *(v14 + 40) = v15;
  *(v14 + 48) = 8;
  *(v14 + 56) = 0;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 0;
  *(v14 + 192) = 1065353216;
  *(v14 + 196) = 0;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 96) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 210) = 0;
  v16 = *(v12 + 16);
  swift_retain_n();
  if (v16)
  {
    *(v14 + 160) = v12;

    v17 = 0;
  }

  else
  {

    sub_1AF589E74(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v19 = v18;
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = v20;
      v17 = 0;
      if (v19)
      {
        *(v14 + 160) = (*(v21 + 8))(v19, v21);

        v17 = *(v14 + 64);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  *(v14 + 64) = sub_1AF594180;
  *(v14 + 72) = v10;
  sub_1AF0FB8EC(v17);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  qword_1EB6C2F40 = v0;
  return result;
}

__n128 sub_1AF4DF848()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55240;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF59436C;
  v4[5] = v2;
  v4[2] = sub_1AF5943A0;
  v4[3] = v2;
  v4[6] = v2;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x65646E49646E696BLL;
  *(v5 + 24) = 0xE900000000000078;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v3;
  }

  v164 = v6;
  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v5 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v5 + 64);
  *(v5 + 64) = sub_1AF5943FC;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(v9);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63AF38, type metadata accessor for ForceFieldType, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59436C;
  v10[5] = KeyPath;
  v10[2] = sub_1AF59443C;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 210) = 0;
  *(v11 + 216) = 0;
  type metadata accessor for ForceFieldType(0);
  v13 = v12;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 1684957547;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = v12;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14 && v13)
  {
    v13 = (*(v14 + 8))(v13, v14);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v13)
  {
    *(v11 + 160) = (*(v15 + 8))(v13, v15);
  }

  v16 = *(v11 + 64);
  *(v11 + 64) = sub_1AF594498;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(v16);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;

  *(v0 + 32) = v11;
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF5944E4;
  v19[5] = v17;
  v19[2] = sub_1AF594510;
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
  *(v20 + 16) = 0x657669746361;
  *(v20 + 24) = 0xE600000000000000;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = 8;
  *(v20 + 56) = 0;
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
  *(v20 + 64) = sub_1AF59456C;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(v24);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  *(v0 + 40) = v20;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AF5AA1A4;
  v26[5] = v25;
  v26[2] = sub_1AF5A9D94;
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
  *(v27 + 16) = 0x6C61636F6CLL;
  *(v27 + 24) = 0xE500000000000000;
  *(v27 + 32) = v25;
  *(v27 + 40) = v18;
  *(v27 + 48) = 9;
  *(v27 + 56) = 0;
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

  v28 = swift_conformsToProtocol2();
  if (v28 && v18)
  {
    *(v27 + 160) = (*(v28 + 8))(v18, v28);
  }

  v29 = *(v27 + 64);
  *(v27 + 64) = sub_1AF5A9860;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(v29);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;

  *(v0 + 48) = v27;
  v30 = swift_getKeyPath();
  v31 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AF5945AC;
  v32[5] = v30;
  v32[2] = sub_1AF5945E0;
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
  *(v33 + 16) = 0x6874676E65727473;
  *(v33 + 24) = 0xE800000000000000;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  *(v33 + 48) = 12;
  *(v33 + 56) = 0;
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
  *(v33 + 64) = sub_1AF59463C;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(v37);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;

  *(v0 + 56) = v33;
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AF5A94A8;
  v40[5] = v38;
  v40[2] = sub_1AF5A9D98;
  v40[3] = v38;
  v40[6] = v38;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 210) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x6E696E65706D6164;
  *(v41 + 24) = 0xE900000000000067;
  *(v41 + 32) = v38;
  *(v41 + 40) = v31;
  *(v41 + 48) = 16;
  *(v41 + 56) = 0;
  *(v41 + 58) = 0;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = v39;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 0;
  swift_retain_n();

  if (v34)
  {
    v42 = (*(v34 + 8))();
  }

  else
  {
    v42 = v31;
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v42)
  {
    v44 = (*(v43 + 8))(v42, v43);

    *(v41 + 160) = v44;
  }

  else
  {
  }

  v45 = *(v41 + 64);
  *(v41 + 64) = sub_1AF5A9864;
  *(v41 + 72) = v38;
  sub_1AF0FB8EC(v45);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;

  *(v0 + 64) = v41;
  v46 = swift_getKeyPath();
  v47 = swift_getKeyPath();
  v48 = swift_allocObject();
  v48[4] = sub_1AF5A94A8;
  v48[5] = v46;
  v48[2] = sub_1AF5A9D98;
  v48[3] = v46;
  v48[6] = v46;
  v49 = swift_allocObject();
  *(v49 + 112) = 1;
  *(v49 + 128) = 0;
  *(v49 + 136) = 0;
  *(v49 + 120) = 0;
  *(v49 + 160) = MEMORY[0x1E69E7CC0];
  *(v49 + 168) = 0;
  *(v49 + 210) = 0;
  *(v49 + 216) = 0;
  *(v49 + 176) = 0;
  *(v49 + 16) = 0x6F6D416573696F6ELL;
  *(v49 + 24) = 0xEB00000000746E75;
  *(v49 + 32) = v46;
  *(v49 + 40) = v31;
  *(v49 + 48) = 20;
  *(v49 + 56) = 0;
  *(v49 + 58) = 0;
  *(v49 + 184) = 0;
  *(v49 + 188) = 1;
  *(v49 + 192) = 0;
  *(v49 + 196) = 1;
  *(v49 + 200) = 0x1000100000000;
  *(v49 + 208) = 1;
  *(v49 + 64) = 0;
  *(v49 + 72) = 0;
  *(v49 + 96) = v47;
  *(v49 + 104) = 0;
  *(v49 + 144) = xmmword_1AFE22A20;
  *(v49 + 80) = v48;
  *(v49 + 88) = &off_1F2535378;
  *(v49 + 210) = 0;
  swift_retain_n();

  if (v34)
  {
    v50 = (*(v34 + 8))();
  }

  else
  {
    v50 = v31;
  }

  v51 = swift_conformsToProtocol2();
  v165 = v34;
  if (v51 && v50)
  {
    v52 = (*(v51 + 8))(v50, v51);

    *(v49 + 160) = v52;
  }

  else
  {
  }

  v53 = *(v49 + 64);
  *(v49 + 64) = sub_1AF5A9864;
  *(v49 + 72) = v46;
  sub_1AF0FB8EC(v53);
  *(v49 + 168) = 0;
  *(v49 + 176) = 0;

  *(v49 + 216) = 0;

  *(v0 + 72) = v49;
  v54 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v56 = MEMORY[0x1E69E76D8];
  sub_1AF5A9240(0, &unk_1EB643A50, MEMORY[0x1E69E76D8], type metadata accessor for EntityGetSet);
  v57 = swift_allocObject();
  v57[4] = sub_1AF5AA398;
  v57[5] = v54;
  v57[2] = sub_1AF59467C;
  v57[3] = v54;
  v57[6] = v54;
  v58 = swift_allocObject();
  *(v58 + 112) = 1;
  *(v58 + 128) = 0;
  *(v58 + 136) = 0;
  *(v58 + 120) = 0;
  *(v58 + 160) = MEMORY[0x1E69E7CC0];
  *(v58 + 168) = 0;
  *(v58 + 210) = 0;
  *(v58 + 216) = 0;
  *(v58 + 176) = 0;
  *(v58 + 16) = 0x6565536573696F6ELL;
  *(v58 + 24) = 0xE900000000000064;
  *(v58 + 32) = v54;
  *(v58 + 40) = v56;
  *(v58 + 48) = 24;
  *(v58 + 56) = 0;
  *(v58 + 58) = 0;
  *(v58 + 184) = 0;
  *(v58 + 188) = 1;
  *(v58 + 192) = 0;
  *(v58 + 196) = 1;
  *(v58 + 200) = 0x1000100000000;
  *(v58 + 208) = 1;
  *(v58 + 64) = 0;
  *(v58 + 72) = 0;
  *(v58 + 96) = v55;
  *(v58 + 104) = 0;
  *(v58 + 144) = xmmword_1AFE22A20;
  *(v58 + 80) = v57;
  *(v58 + 88) = &off_1F2535378;
  *(v58 + 210) = 0;
  v59 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v59)
  {
    v56 = (*(v59 + 8))();
  }

  v60 = swift_conformsToProtocol2();
  if (v60 && v56)
  {
    v61 = (*(v60 + 8))(v56, v60);

    *(v58 + 160) = v61;
  }

  else
  {
  }

  v62 = *(v58 + 64);
  *(v58 + 64) = sub_1AF5946D8;
  *(v58 + 72) = v54;
  sub_1AF0FB8EC(v62);
  *(v58 + 168) = 0;
  *(v58 + 176) = 0;

  *(v58 + 216) = 0;

  *(v0 + 80) = v58;
  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  v65 = swift_allocObject();
  v65[4] = sub_1AF5AA398;
  v65[5] = v64;
  v65[2] = sub_1AF5A9D9C;
  v65[3] = v64;
  v65[6] = v64;
  v66 = swift_allocObject();
  *(v66 + 112) = 1;
  *(v66 + 128) = 0;
  *(v66 + 136) = 0;
  *(v66 + 120) = 0;
  *(v66 + 160) = MEMORY[0x1E69E7CC0];
  *(v66 + 168) = 0;
  *(v66 + 210) = 0;
  *(v66 + 216) = 0;
  *(v66 + 176) = 0;
  *(v66 + 16) = 0x6570616873;
  *(v66 + 24) = 0xE500000000000000;
  *(v66 + 32) = v64;
  *(v66 + 40) = v3;
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
  *(v66 + 104) = 0;
  *(v66 + 144) = xmmword_1AFE22A20;
  *(v66 + 80) = v65;
  *(v66 + 88) = &off_1F2535378;
  *(v66 + 210) = 0;
  swift_retain_n();
  if (v164)
  {
    v67 = (*(v164 + 8))();
  }

  else
  {
    v67 = v3;
  }

  v166 = v0;
  v68 = swift_conformsToProtocol2();
  if (v68 && v67)
  {
    *(v66 + 160) = (*(v68 + 8))(v67, v68);
  }

  v69 = *(v66 + 64);
  *(v66 + 64) = sub_1AF5A9868;
  *(v66 + 72) = v64;
  sub_1AF0FB8EC(v69);
  *(v66 + 168) = 0;
  *(v66 + 176) = 0;

  *(v66 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63AF40, type metadata accessor for ForceFieldShape, type metadata accessor for EntityGetSet);
  v70 = swift_allocObject();
  v70[4] = sub_1AF5AA398;
  v70[5] = v63;
  v70[2] = sub_1AF594718;
  v70[3] = v63;
  v70[6] = v63;
  v71 = swift_allocObject();
  *(v71 + 104) = 0;
  *(v71 + 112) = 1;
  *(v71 + 128) = 0;
  *(v71 + 136) = 0;
  *(v71 + 120) = 0;
  *(v71 + 160) = MEMORY[0x1E69E7CC0];
  *(v71 + 210) = 0;
  *(v71 + 216) = 0;
  type metadata accessor for ForceFieldShape(0);
  v73 = v72;
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;
  *(v71 + 16) = 0x6570616873;
  *(v71 + 24) = 0xE500000000000000;
  *(v71 + 32) = v63;
  *(v71 + 40) = v72;
  *(v71 + 48) = 40;
  *(v71 + 56) = 0;
  *(v71 + 58) = 0;
  *(v71 + 184) = 0;
  *(v71 + 188) = 1;
  *(v71 + 192) = 0;
  *(v71 + 196) = 1;
  *(v71 + 200) = 0x1000100000000;
  *(v71 + 208) = 1;
  *(v71 + 64) = 0;
  *(v71 + 72) = 0;
  *(v71 + 96) = 0;
  *(v71 + 144) = xmmword_1AFE22A20;
  *(v71 + 80) = v70;
  *(v71 + 88) = &off_1F2535378;
  *(v71 + 210) = 0;
  v74 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v74 && v73)
  {
    v73 = (*(v74 + 8))(v73, v74);
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v73)
  {
    *(v71 + 160) = (*(v75 + 8))(v73, v75);
  }

  v76 = *(v71 + 64);
  *(v71 + 64) = sub_1AF594774;
  *(v71 + 72) = v63;
  sub_1AF0FB8EC(v76);
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;

  *(v71 + 216) = v66;

  *(v0 + 88) = v71;
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  v79 = swift_allocObject();
  v79[4] = sub_1AF5AA398;
  v79[5] = v78;
  v79[2] = sub_1AF5A9D9C;
  v79[3] = v78;
  v79[6] = v78;
  v80 = swift_allocObject();
  *(v80 + 112) = 1;
  *(v80 + 128) = 0;
  *(v80 + 136) = 0;
  *(v80 + 120) = 0;
  *(v80 + 160) = MEMORY[0x1E69E7CC0];
  *(v80 + 168) = 0;
  *(v80 + 210) = 0;
  *(v80 + 216) = 0;
  *(v80 + 176) = 0;
  *(v80 + 16) = 0x65646F4D6C6C7563;
  *(v80 + 24) = 0xE800000000000000;
  *(v80 + 32) = v78;
  *(v80 + 40) = v3;
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
  *(v80 + 96) = 0;
  *(v80 + 104) = 0;
  *(v80 + 144) = xmmword_1AFE22A20;
  *(v80 + 80) = v79;
  *(v80 + 88) = &off_1F2535378;
  *(v80 + 210) = 0;
  swift_retain_n();
  if (v164)
  {
    v3 = (*(v164 + 8))();
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v3)
  {
    *(v80 + 160) = (*(v81 + 8))(v3, v81);
  }

  v82 = *(v80 + 64);
  *(v80 + 64) = sub_1AF5A9868;
  *(v80 + 72) = v78;
  sub_1AF0FB8EC(v82);
  *(v80 + 168) = 0;
  *(v80 + 176) = 0;

  *(v80 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63AF48, type metadata accessor for ForceFieldCullMode, type metadata accessor for EntityGetSet);
  v83 = swift_allocObject();
  v83[4] = sub_1AF5AA398;
  v83[5] = v77;
  v83[2] = sub_1AF5947C0;
  v83[3] = v77;
  v83[6] = v77;
  v84 = swift_allocObject();
  *(v84 + 104) = 0;
  *(v84 + 112) = 1;
  *(v84 + 128) = 0;
  *(v84 + 136) = 0;
  *(v84 + 120) = 0;
  *(v84 + 160) = MEMORY[0x1E69E7CC0];
  *(v84 + 210) = 0;
  *(v84 + 216) = 0;
  type metadata accessor for ForceFieldCullMode(0);
  v86 = v85;
  *(v84 + 168) = 0;
  *(v84 + 176) = 0;
  *(v84 + 16) = 0x65646F4D6C6C7563;
  *(v84 + 24) = 0xE800000000000000;
  *(v84 + 32) = v77;
  *(v84 + 40) = v85;
  *(v84 + 48) = 56;
  *(v84 + 56) = 0;
  *(v84 + 58) = 0;
  *(v84 + 184) = 0;
  *(v84 + 188) = 1;
  *(v84 + 192) = 0;
  *(v84 + 196) = 1;
  *(v84 + 200) = 0x1000100000000;
  *(v84 + 208) = 1;
  *(v84 + 64) = 0;
  *(v84 + 72) = 0;
  *(v84 + 96) = 0;
  *(v84 + 144) = xmmword_1AFE22A20;
  *(v84 + 80) = v83;
  *(v84 + 88) = &off_1F2535378;
  *(v84 + 210) = 0;
  v87 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v87)
  {
    v88 = v0;
    if (v86)
    {
      v86 = (*(v87 + 8))(v86, v87);
    }
  }

  else
  {
    v88 = v0;
  }

  v89 = swift_conformsToProtocol2();
  if (v89 && v86)
  {
    *(v84 + 160) = (*(v89 + 8))(v86, v89);
  }

  v90 = *(v84 + 64);
  *(v84 + 64) = sub_1AF59481C;
  *(v84 + 72) = v77;
  sub_1AF0FB8EC(v90);
  *(v84 + 168) = 0;
  *(v84 + 176) = 0;

  *(v84 + 216) = v80;

  *(v88 + 96) = v84;
  v91 = swift_getKeyPath();
  v92 = swift_getKeyPath();
  v93 = swift_allocObject();
  v93[4] = sub_1AF5A94A8;
  v93[5] = v91;
  v93[2] = sub_1AF5A9D98;
  v93[3] = v91;
  v93[6] = v91;
  v94 = swift_allocObject();
  *(v94 + 112) = 1;
  *(v94 + 128) = 0;
  *(v94 + 136) = 0;
  *(v94 + 120) = 0;
  *(v94 + 160) = MEMORY[0x1E69E7CC0];
  *(v94 + 168) = 0;
  *(v94 + 216) = 0;
  *(v94 + 176) = 0;
  *(v94 + 16) = 0x4566664F6C6C6166;
  *(v94 + 24) = 0xEF746E656E6F7078;
  *(v94 + 32) = v91;
  *(v94 + 40) = v31;
  *(v94 + 48) = 64;
  *(v94 + 56) = 0;
  *(v94 + 58) = 0;
  *(v94 + 184) = 0;
  *(v94 + 188) = 1;
  *(v94 + 192) = 0;
  *(v94 + 196) = 1;
  *(v94 + 200) = 0x1000100000000;
  *(v94 + 208) = 1;
  *(v94 + 64) = 0;
  *(v94 + 72) = 0;
  *(v94 + 96) = v92;
  *(v94 + 104) = 0;
  *(v94 + 144) = xmmword_1AFE22A20;
  *(v94 + 80) = v93;
  *(v94 + 88) = &off_1F2535378;
  *(v94 + 210) = 0;
  swift_retain_n();

  if (v165)
  {
    v31 = (*(v165 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v31)
  {
    v96 = (*(v95 + 8))(v31, v95);

    *(v94 + 160) = v96;
  }

  else
  {
  }

  *(v94 + 64) = sub_1AF5A9864;
  *(v94 + 72) = v91;
  sub_1AF0FB8EC(0);
  *(v94 + 168) = 0;
  *(v94 + 176) = 0;

  *(v94 + 216) = 0;
  *(v88 + 104) = v94;
  v97 = swift_getKeyPath();
  v98 = swift_getKeyPath();
  sub_1AF57AAE8();
  v99 = swift_allocObject();
  v99[4] = sub_1AF594868;
  v99[5] = v97;
  v99[2] = sub_1AF594880;
  v99[3] = v97;
  v99[6] = v97;
  v100 = swift_allocObject();
  *(v100 + 104) = 0;
  *(v100 + 112) = 1;
  *(v100 + 128) = 0;
  *(v100 + 136) = 0;
  *(v100 + 120) = 0;
  *(v100 + 160) = MEMORY[0x1E69E7CC0];
  *(v100 + 216) = 0;
  v101 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v103 = v102;
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;
  *(v100 + 16) = 0x65747845666C6168;
  *(v100 + 24) = 0xEB0000000073746ELL;
  *(v100 + 32) = v97;
  *(v100 + 40) = v102;
  *(v100 + 48) = 80;
  *(v100 + 56) = 0;
  *(v100 + 58) = 0;
  *(v100 + 184) = 0;
  *(v100 + 188) = 0;
  *(v100 + 192) = 0;
  *(v100 + 196) = 1;
  *(v100 + 200) = 0x1000100000000;
  *(v100 + 208) = 1;
  *(v100 + 64) = 0;
  *(v100 + 72) = 0;
  *(v100 + 96) = v98;
  *(v100 + 144) = xmmword_1AFE22A20;
  *(v100 + 80) = v99;
  *(v100 + 88) = &off_1F2535378;
  *(v100 + 210) = 0;
  v104 = swift_conformsToProtocol2();
  if (v104)
  {
    v105 = v103;
  }

  else
  {
    v105 = 0;
  }

  swift_retain_n();

  v106 = v103;
  if (v105)
  {
    v106 = (*(v104 + 8))(v105, v104);
  }

  v107 = swift_conformsToProtocol2();
  if (v107 && v106)
  {
    v108 = (*(v107 + 8))(v106, v107);

    *(v100 + 160) = v108;
  }

  else
  {
  }

  v109 = *(v100 + 64);
  *(v100 + 64) = sub_1AF5948E4;
  *(v100 + 72) = v97;
  sub_1AF0FB8EC(v109);
  *(v100 + 168) = 0;
  *(v100 + 176) = 0;

  *(v100 + 216) = 0;

  v166[14] = v100;
  v110 = swift_getKeyPath();
  v111 = swift_getKeyPath();
  v112 = swift_allocObject();
  v112[4] = sub_1AF5A986C;
  v112[5] = v110;
  v112[2] = sub_1AF5A9DA0;
  v112[3] = v110;
  v112[6] = v110;
  v113 = swift_allocObject();
  *(v113 + 112) = 1;
  *(v113 + 128) = 0;
  *(v113 + 136) = 0;
  *(v113 + 120) = 0;
  *(v113 + 160) = MEMORY[0x1E69E7CC0];
  *(v113 + 168) = 0;
  *(v113 + 216) = 0;
  *(v113 + 176) = 0;
  *(v113 + 16) = 0x74657366666FLL;
  *(v113 + 24) = 0xE600000000000000;
  *(v113 + 32) = v110;
  *(v113 + 40) = v103;
  *(v113 + 48) = 96;
  *(v113 + 56) = 0;
  *(v113 + 58) = 0;
  *(v113 + 184) = 0;
  *(v113 + 188) = 1;
  *(v113 + 192) = 0;
  *(v113 + 196) = 1;
  *(v113 + 200) = 0x1000100000000;
  *(v113 + 208) = 1;
  *(v113 + 64) = 0;
  *(v113 + 72) = 0;
  *(v113 + 96) = v111;
  *(v113 + 104) = 0;
  *(v113 + 144) = xmmword_1AFE22A20;
  *(v113 + 80) = v112;
  *(v113 + 88) = &off_1F2535378;
  *(v113 + 210) = 0;
  swift_retain_n();

  if (v105)
  {
    v103 = (*(v104 + 8))(v105, v104);
  }

  v114 = swift_conformsToProtocol2();
  if (v114 && v103)
  {
    v115 = (*(v114 + 8))(v103, v114);

    *(v113 + 160) = v115;
  }

  else
  {
  }

  v116 = *(v113 + 64);
  *(v113 + 64) = sub_1AF5A9870;
  *(v113 + 72) = v110;
  sub_1AF0FB8EC(v116);
  *(v113 + 168) = 0;
  *(v113 + 176) = 0;

  *(v113 + 216) = 0;

  v166[15] = v113;
  v117 = swift_getKeyPath();
  v118 = swift_getKeyPath();
  v119 = swift_allocObject();
  v119[4] = sub_1AF5A94A8;
  v119[5] = v117;
  v119[2] = sub_1AF5A9D98;
  v119[3] = v117;
  v119[6] = v117;
  v120 = swift_allocObject();
  *(v120 + 112) = 1;
  *(v120 + 128) = 0;
  *(v120 + 136) = 0;
  *(v120 + 120) = 0;
  *(v120 + 160) = MEMORY[0x1E69E7CC0];
  *(v120 + 168) = 0;
  *(v120 + 176) = 0;
  *(v120 + 216) = 0;
  *(v120 + 16) = 0x656E68746F6F6D73;
  *(v120 + 24) = 0xEA00000000007373;
  *(v120 + 32) = v117;
  *(v120 + 40) = v101;
  *(v120 + 48) = 112;
  *(v120 + 56) = 0;
  *(v120 + 58) = 0;
  *(v120 + 184) = 0;
  *(v120 + 188) = 0;
  *(v120 + 192) = 0;
  *(v120 + 196) = 1;
  *(v120 + 200) = 0x1000100000000;
  *(v120 + 208) = 1;
  *(v120 + 64) = 0;
  *(v120 + 72) = 0;
  *(v120 + 96) = v118;
  *(v120 + 104) = 0;
  *(v120 + 144) = xmmword_1AFE22A20;
  *(v120 + 80) = v119;
  *(v120 + 88) = &off_1F2535378;
  *(v120 + 210) = 0;
  swift_retain_n();

  if (v165)
  {
    v121 = (*(v165 + 8))();
  }

  else
  {
    v121 = v101;
  }

  v122 = swift_conformsToProtocol2();
  if (v122 && v121)
  {
    v123 = (*(v122 + 8))(v121, v122);

    *(v120 + 160) = v123;
  }

  else
  {
  }

  *(v120 + 64) = sub_1AF5A9864;
  *(v120 + 72) = v117;
  sub_1AF0FB8EC(0);
  *(v120 + 168) = 0;
  *(v120 + 176) = 0;

  *(v120 + 216) = 0;
  v166[16] = v120;
  v124 = swift_getKeyPath();
  v125 = swift_getKeyPath();
  v126 = swift_allocObject();
  v126[4] = sub_1AF5A94A8;
  v126[5] = v124;
  v126[2] = sub_1AF5A9D98;
  v126[3] = v124;
  v126[6] = v124;
  v127 = swift_allocObject();
  *(v127 + 112) = 1;
  *(v127 + 128) = 0;
  *(v127 + 136) = 0;
  *(v127 + 120) = 0;
  *(v127 + 160) = MEMORY[0x1E69E7CC0];
  *(v127 + 168) = 0;
  *(v127 + 176) = 0;
  *(v127 + 216) = 0;
  *(v127 + 16) = 0x6465657073;
  *(v127 + 24) = 0xE500000000000000;
  *(v127 + 32) = v124;
  *(v127 + 40) = v101;
  *(v127 + 48) = 116;
  *(v127 + 56) = 0;
  *(v127 + 58) = 0;
  *(v127 + 184) = 0;
  *(v127 + 188) = 0;
  *(v127 + 192) = 0;
  *(v127 + 196) = 1;
  *(v127 + 200) = 0x1000100000000;
  *(v127 + 208) = 1;
  *(v127 + 64) = 0;
  *(v127 + 72) = 0;
  *(v127 + 96) = v125;
  *(v127 + 104) = 0;
  *(v127 + 144) = xmmword_1AFE22A20;
  *(v127 + 80) = v126;
  *(v127 + 88) = &off_1F2535378;
  *(v127 + 210) = 0;
  swift_retain_n();

  if (v165)
  {
    v101 = (*(v165 + 8))();
  }

  v128 = swift_conformsToProtocol2();
  if (v128 && v101)
  {
    v129 = (*(v128 + 8))(v101, v128);

    *(v127 + 160) = v129;
  }

  else
  {
  }

  *(v127 + 64) = sub_1AF5A9864;
  *(v127 + 72) = v124;
  sub_1AF0FB8EC(0);
  *(v127 + 168) = 0;
  *(v127 + 176) = 0;

  *(v127 + 216) = 0;
  v166[17] = v127;
  v130 = swift_getKeyPath();
  v131 = swift_getKeyPath();
  v132 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v133 = swift_allocObject();
  v133[4] = sub_1AF59436C;
  v133[5] = v130;
  v133[2] = sub_1AF594928;
  v133[3] = v130;
  v133[6] = v130;
  v134 = swift_allocObject();
  *(v134 + 112) = 1;
  *(v134 + 128) = 0;
  *(v134 + 136) = 0;
  *(v134 + 120) = 0;
  *(v134 + 168) = 0;
  *(v134 + 160) = MEMORY[0x1E69E7CC0];
  *(v134 + 176) = 0;
  *(v134 + 216) = 0;
  *(v134 + 16) = 0x65727574786574;
  *(v134 + 24) = 0xE700000000000000;
  *(v134 + 32) = v130;
  *(v134 + 40) = &type metadata for Entity;
  *(v134 + 48) = 132;
  *(v134 + 56) = 0;
  *(v134 + 58) = 0;
  *(v134 + 184) = 0;
  *(v134 + 188) = 1;
  *(v134 + 192) = 0;
  *(v134 + 196) = 1;
  *(v134 + 200) = 0x1000100000000;
  *(v134 + 208) = 1;
  *(v134 + 64) = 0;
  *(v134 + 72) = 0;
  *(v134 + 96) = v131;
  *(v134 + 104) = 0;
  *(v134 + 144) = xmmword_1AFE551B0;
  *(v134 + 80) = v133;
  *(v134 + 88) = &off_1F2535378;
  *(v134 + 210) = 0;
  v135 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v135)
  {
    v132 = (*(v135 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v132)
  {
    v137 = (*(v136 + 8))(v132, v136);

    *(v134 + 160) = v137;
  }

  else
  {
  }

  *(v134 + 64) = sub_1AF594984;
  *(v134 + 72) = v130;
  sub_1AF0FB8EC(0);
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;

  *(v134 + 216) = 0;
  v166[18] = v134;
  v138 = swift_getKeyPath();
  v139 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v140 = swift_allocObject();
  v140[4] = sub_1AF5945AC;
  v140[5] = v138;
  v140[2] = sub_1AF5949C4;
  v140[3] = v138;
  v140[6] = v138;
  v141 = swift_allocObject();
  *(v141 + 112) = 1;
  *(v141 + 128) = 0;
  *(v141 + 136) = 0;
  *(v141 + 120) = 0;
  *(v141 + 160) = MEMORY[0x1E69E7CC0];
  *(v141 + 168) = 0;
  *(v141 + 176) = 0;
  *(v141 + 216) = 0;
  *(v141 + 16) = 0x73726579616CLL;
  *(v141 + 24) = 0xE600000000000000;
  *(v141 + 32) = v138;
  *(v141 + 40) = &type metadata for CollisionLayerSet;
  *(v141 + 48) = 0;
  *(v141 + 56) = 1;
  *(v141 + 58) = 0;
  *(v141 + 184) = 0;
  *(v141 + 188) = 1;
  *(v141 + 192) = 0;
  *(v141 + 196) = 1;
  *(v141 + 200) = 0x1000100000000;
  *(v141 + 208) = 1;
  *(v141 + 64) = 0;
  *(v141 + 72) = 0;
  *(v141 + 96) = 0;
  *(v141 + 104) = 0;
  *(v141 + 144) = xmmword_1AFE22A20;
  *(v141 + 80) = v140;
  *(v141 + 88) = &off_1F2535378;
  *(v141 + 210) = 0;
  v142 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v142)
  {
    v139 = (*(v142 + 8))();
  }

  v143 = swift_conformsToProtocol2();
  if (v143 && v139)
  {
    *(v141 + 160) = (*(v143 + 8))(v139, v143);
  }

  *(v141 + 64) = sub_1AF594A34;
  *(v141 + 72) = v138;
  sub_1AF0FB8EC(0);
  *(v141 + 168) = 0;
  *(v141 + 176) = 0;

  *(v141 + 216) = 0;
  v166[19] = v141;
  v144 = swift_getKeyPath();
  v145 = swift_allocObject();
  *(v145 + 216) = 0;
  *(v145 + 80) = 0;
  *(v145 + 88) = 0;
  *(v145 + 128) = 0;
  *(v145 + 136) = 0;
  *(v145 + 120) = 0;
  *(v145 + 16) = 0xD000000000000011;
  *(v145 + 24) = 0x80000001AFF236A0;
  v146 = MEMORY[0x1E69E73E0];
  *(v145 + 32) = v144;
  *(v145 + 40) = v146;
  v147 = v146;
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 58) = 4;
  *(v145 + 184) = 0;
  *(v145 + 188) = 1;
  *(v145 + 192) = 0;
  *(v145 + 196) = 1;
  *(v145 + 200) = 0x1000100000000;
  *(v145 + 208) = 1;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0;
  *(v145 + 210) = 4;
  *(v145 + 144) = xmmword_1AFE22A20;
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  v148 = MEMORY[0x1E69E7CC0];
  *(v145 + 160) = MEMORY[0x1E69E7CC0];
  *(v145 + 96) = 0;
  *(v145 + 104) = 2025;
  *(v145 + 112) = 0;
  v166[20] = v145;
  v149 = swift_getKeyPath();
  v150 = swift_allocObject();
  *(v150 + 216) = 0;
  *(v150 + 80) = 0;
  *(v150 + 88) = 0;
  *(v150 + 128) = 0;
  *(v150 + 136) = 0;
  *(v150 + 120) = 0;
  strcpy((v150 + 16), "fallOffShape");
  *(v150 + 29) = 0;
  *(v150 + 30) = -5120;
  *(v150 + 32) = v149;
  *(v150 + 40) = v147;
  *(v150 + 48) = 0;
  *(v150 + 56) = 1;
  *(v150 + 58) = 4;
  *(v150 + 184) = 0;
  *(v150 + 188) = 1;
  *(v150 + 192) = 0;
  *(v150 + 196) = 1;
  *(v150 + 200) = 0x1000100000000;
  *(v150 + 208) = 1;
  *(v150 + 64) = 0;
  *(v150 + 72) = 0;
  *(v150 + 210) = 4;
  *(v150 + 144) = xmmword_1AFE22A20;
  *(v150 + 168) = 0;
  *(v150 + 176) = 0;
  *(v150 + 160) = v148;
  *(v150 + 96) = 0;
  *(v150 + 104) = 2025;
  *(v150 + 112) = 0;
  v166[21] = v150;
  v151 = swift_getKeyPath();
  v152 = swift_allocObject();
  *(v152 + 216) = 0;
  *(v152 + 80) = 0;
  *(v152 + 88) = 0;
  *(v152 + 128) = 0;
  *(v152 + 136) = 0;
  *(v152 + 120) = 0;
  *(v152 + 16) = 0xD000000000000010;
  *(v152 + 24) = 0x80000001AFF2AB90;
  *(v152 + 32) = v151;
  *(v152 + 40) = v147;
  *(v152 + 48) = 0;
  *(v152 + 56) = 1;
  *(v152 + 58) = 4;
  *(v152 + 184) = 0;
  *(v152 + 188) = 1;
  *(v152 + 192) = 0;
  *(v152 + 196) = 1;
  *(v152 + 200) = 0x1000100000000;
  *(v152 + 208) = 1;
  *(v152 + 64) = 0;
  *(v152 + 72) = 0;
  *(v152 + 210) = 4;
  *(v152 + 144) = xmmword_1AFE22A20;
  *(v152 + 168) = 0;
  *(v152 + 176) = 0;
  *(v152 + 160) = v148;
  *(v152 + 96) = 0;
  *(v152 + 104) = 2025;
  *(v152 + 112) = 0;
  v166[22] = v152;
  v153 = swift_getKeyPath();
  v154 = swift_allocObject();
  *(v154 + 216) = 0;
  *(v154 + 80) = 0;
  *(v154 + 88) = 0;
  *(v154 + 128) = 0;
  *(v154 + 136) = 0;
  *(v154 + 120) = 0;
  strcpy((v154 + 16), "fallOffRadius");
  *(v154 + 30) = -4864;
  *(v154 + 32) = v153;
  *(v154 + 40) = v147;
  *(v154 + 48) = 0;
  *(v154 + 56) = 1;
  *(v154 + 58) = 4;
  *(v154 + 184) = 0;
  *(v154 + 188) = 1;
  *(v154 + 192) = 0;
  *(v154 + 196) = 1;
  *(v154 + 200) = 0x1000100000000;
  *(v154 + 208) = 1;
  *(v154 + 64) = 0;
  *(v154 + 72) = 0;
  *(v154 + 210) = 4;
  *(v154 + 144) = xmmword_1AFE22A20;
  *(v154 + 168) = 0;
  *(v154 + 176) = 0;
  *(v154 + 160) = v148;
  *(v154 + 96) = 0;
  *(v154 + 104) = 2025;
  *(v154 + 112) = 0;
  v166[23] = v154;
  v155 = swift_getKeyPath();
  v156 = swift_allocObject();
  *(v156 + 216) = 0;
  *(v156 + 80) = 0;
  *(v156 + 88) = 0;
  *(v156 + 128) = 0;
  *(v156 + 136) = 0;
  *(v156 + 120) = 0;
  *(v156 + 16) = 0xD000000000000012;
  *(v156 + 24) = 0x80000001AFF23650;
  *(v156 + 32) = v155;
  *(v156 + 40) = v147;
  *(v156 + 48) = 0;
  *(v156 + 56) = 1;
  *(v156 + 58) = 4;
  *(v156 + 184) = 0;
  *(v156 + 188) = 1;
  *(v156 + 192) = 0;
  *(v156 + 196) = 1;
  *(v156 + 200) = 0x1000100000000;
  *(v156 + 208) = 1;
  *(v156 + 64) = 0;
  *(v156 + 72) = 0;
  *(v156 + 210) = 4;
  *(v156 + 144) = xmmword_1AFE22A20;
  *(v156 + 168) = 0;
  *(v156 + 176) = 0;
  *(v156 + 160) = v148;
  *(v156 + 96) = 0;
  *(v156 + 104) = 2025;
  *(v156 + 112) = 0;
  v166[24] = v156;
  v157 = swift_getKeyPath();
  v158 = swift_allocObject();
  *(v158 + 216) = 0;
  *(v158 + 80) = 0;
  *(v158 + 88) = 0;
  *(v158 + 128) = 0;
  *(v158 + 136) = 0;
  *(v158 + 120) = 0;
  strcpy((v158 + 16), "fallOffRange");
  *(v158 + 29) = 0;
  *(v158 + 30) = -5120;
  *(v158 + 32) = v157;
  *(v158 + 40) = v147;
  *(v158 + 48) = 0;
  *(v158 + 56) = 1;
  *(v158 + 58) = 4;
  *(v158 + 184) = 0;
  *(v158 + 188) = 1;
  *(v158 + 192) = 0;
  *(v158 + 196) = 1;
  *(v158 + 200) = 0x1000100000000;
  *(v158 + 208) = 1;
  *(v158 + 64) = 0;
  *(v158 + 72) = 0;
  *(v158 + 210) = 4;
  *(v158 + 144) = xmmword_1AFE22A20;
  *(v158 + 168) = 0;
  *(v158 + 176) = 0;
  *(v158 + 160) = v148;
  *(v158 + 96) = 0;
  *(v158 + 104) = 2025;
  *(v158 + 112) = 0;
  v166[25] = v158;
  v159 = swift_getKeyPath();
  v160 = swift_allocObject();
  *(v160 + 216) = 0;
  *(v160 + 80) = 0;
  *(v160 + 88) = 0;
  *(v160 + 128) = 0;
  *(v160 + 136) = 0;
  *(v160 + 120) = 0;
  strcpy((v160 + 16), "fallOffPower");
  *(v160 + 29) = 0;
  *(v160 + 30) = -5120;
  *(v160 + 32) = v159;
  *(v160 + 40) = v147;
  *(v160 + 48) = 0;
  *(v160 + 56) = 1;
  *(v160 + 58) = 4;
  *(v160 + 184) = 0;
  *(v160 + 188) = 1;
  *(v160 + 192) = 0;
  *(v160 + 196) = 1;
  *(v160 + 200) = 0x1000100000000;
  *(v160 + 208) = 1;
  *(v160 + 64) = 0;
  *(v160 + 72) = 0;
  *(v160 + 210) = 4;
  *(v160 + 144) = xmmword_1AFE22A20;
  *(v160 + 168) = 0;
  *(v160 + 176) = 0;
  *(v160 + 160) = v148;
  *(v160 + 96) = 0;
  *(v160 + 104) = 2025;
  *(v160 + 112) = 0;
  v166[26] = v160;
  v161 = swift_getKeyPath();
  v162 = swift_allocObject();
  *(v162 + 216) = 0;
  *(v162 + 80) = 0;
  *(v162 + 88) = 0;
  *(v162 + 128) = 0;
  *(v162 + 136) = 0;
  *(v162 + 120) = 0;
  *(v162 + 16) = 0x5073746365666661;
  *(v162 + 24) = 0xEF6E6F697469736FLL;
  *(v162 + 32) = v161;
  *(v162 + 40) = v147;
  *(v162 + 48) = 0;
  *(v162 + 56) = 1;
  *(v162 + 58) = 4;
  *(v162 + 184) = 0;
  *(v162 + 188) = 1;
  *(v162 + 192) = 0;
  *(v162 + 196) = 1;
  *(v162 + 200) = 0x1000100000000;
  *(v162 + 208) = 1;
  *(v162 + 64) = 0;
  *(v162 + 72) = 0;
  *(v162 + 210) = 4;
  result = xmmword_1AFE22A20;
  *(v162 + 144) = xmmword_1AFE22A20;
  *(v162 + 168) = 0;
  *(v162 + 176) = 0;
  *(v162 + 160) = v148;
  *(v162 + 96) = 0;
  *(v162 + 104) = 2025;
  *(v162 + 112) = 0;
  v166[27] = v162;
  qword_1EB6C2F48 = v166;
  return result;
}

uint64_t sub_1AF4E23B8()
{
  if (qword_1EB636F38 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4E24A8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55190;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF594F90;
  v3[5] = KeyPath;
  v3[2] = sub_1AF594FC4;
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
  *(v4 + 16) = 0x6C6169646172;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 4;
  *(v4 + 56) = 0;
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

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = sub_1AF595020;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94AC;
  v10[5] = v9;
  v10[2] = sub_1AF5A9DBC;
  v10[3] = v9;
  v10[6] = v9;
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
  *(v11 + 16) = 0x7261656E696CLL;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
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
  swift_retain_n();
  if (v5)
  {
    v12 = (*(v5 + 8))();
  }

  else
  {
    v12 = v2;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v11 + 160) = (*(v13 + 8))(v12, v13);
  }

  v14 = *(v11 + 64);
  *(v11 + 64) = sub_1AF5A9874;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(v14);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  *(v0 + 48) = sub_1AF577370(2025, 1684957559, 0xE400000000000000, &type metadata for ParticleForceField, &off_1F2561400, 0x7261656E696CLL, 0xE600000000000000);
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5A94AC;
  v16[5] = v15;
  v16[2] = sub_1AF5A9DBC;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x786574726F76;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v15;
  *(v17 + 40) = v2;
  *(v17 + 48) = 8;
  *(v17 + 56) = 0;
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
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v18 = (*(v5 + 8))();
  }

  else
  {
    v18 = v2;
  }

  v19 = swift_conformsToProtocol2();
  v20 = MEMORY[0x1E69E7CC0];
  if (v19 && v18)
  {
    *(v17 + 160) = (*(v19 + 8))(v18, v19);
  }

  *(v17 + 64) = sub_1AF5A9874;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 56) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A94AC;
  v22[5] = v21;
  v22[2] = sub_1AF5A9DBC;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = v20;
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x636974656E67616DLL;
  *(v23 + 24) = 0xE800000000000000;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 12;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 1;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v24 = (*(v5 + 8))();
  }

  else
  {
    v24 = v2;
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v24)
  {
    *(v23 + 160) = (*(v25 + 8))(v24, v25);
  }

  *(v23 + 64) = sub_1AF5A9874;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 64) = v23;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AF5A94AC;
  v27[5] = v26;
  v27[2] = sub_1AF5A9DBC;
  v27[3] = v26;
  v27[6] = v26;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = v20;
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 0x63696E6F6D726168;
  *(v28 + 24) = 0xE800000000000000;
  *(v28 + 32) = v26;
  *(v28 + 40) = v2;
  *(v28 + 48) = 16;
  *(v28 + 56) = 0;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v29 = (*(v5 + 8))();
  }

  else
  {
    v29 = v2;
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v29)
  {
    *(v28 + 160) = (*(v30 + 8))(v29, v30);
  }

  *(v28 + 64) = sub_1AF5A9874;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 72) = v28;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF5A94AC;
  v32[5] = v31;
  v32[2] = sub_1AF5A9DBC;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = v20;
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 1734439524;
  *(v33 + 24) = 0xE400000000000000;
  *(v33 + 32) = v31;
  *(v33 + 40) = v2;
  *(v33 + 48) = 20;
  *(v33 + 56) = 0;
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
  swift_retain_n();
  if (v5)
  {
    v34 = (*(v5 + 8))();
  }

  else
  {
    v34 = v2;
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v34)
  {
    *(v33 + 160) = (*(v35 + 8))(v34, v35);
  }

  *(v33 + 64) = sub_1AF5A9874;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 80) = v33;
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AF5A94AC;
  v37[5] = v36;
  v37[2] = sub_1AF5A9DBC;
  v37[3] = v36;
  v37[6] = v36;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = v20;
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x6573696F6ELL;
  *(v38 + 24) = 0xE500000000000000;
  *(v38 + 32) = v36;
  *(v38 + 40) = v2;
  *(v38 + 48) = 28;
  *(v38 + 56) = 0;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v39 = (*(v5 + 8))();
  }

  else
  {
    v39 = v2;
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v39)
  {
    *(v38 + 160) = (*(v40 + 8))(v39, v40);
  }

  *(v38 + 64) = sub_1AF5A9874;
  *(v38 + 72) = v36;
  sub_1AF0FB8EC(0);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;
  *(v0 + 88) = v38;
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  v42[4] = sub_1AF5A94AC;
  v42[5] = v41;
  v42[2] = sub_1AF5A9DBC;
  v42[3] = v41;
  v42[6] = v41;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = v20;
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x6E656C7562727574;
  *(v43 + 24) = 0xEA00000000006563;
  *(v43 + 32) = v41;
  *(v43 + 40) = v2;
  *(v43 + 48) = 32;
  *(v43 + 56) = 0;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v44 = (*(v5 + 8))();
  }

  else
  {
    v44 = v2;
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v44)
  {
    *(v43 + 160) = (*(v45 + 8))(v44, v45);
  }

  *(v43 + 64) = sub_1AF5A9874;
  *(v43 + 72) = v41;
  sub_1AF0FB8EC(0);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;
  *(v0 + 96) = v43;
  v46 = swift_getKeyPath();
  v47 = swift_allocObject();
  v47[4] = sub_1AF5A94AC;
  v47[5] = v46;
  v47[2] = sub_1AF5A9DBC;
  v47[3] = v46;
  v47[6] = v46;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = v20;
  *(v48 + 168) = 0;
  *(v48 + 216) = 0;
  *(v48 + 176) = 0;
  *(v48 + 16) = 0x676E69727073;
  *(v48 + 24) = 0xE600000000000000;
  *(v48 + 32) = v46;
  *(v48 + 40) = v2;
  *(v48 + 48) = 36;
  *(v48 + 56) = 0;
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
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v2)
  {
    *(v48 + 160) = (*(v49 + 8))(v2, v49);
  }

  *(v48 + 64) = sub_1AF5A9874;
  *(v48 + 72) = v46;
  sub_1AF0FB8EC(0);
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;

  *(v48 + 216) = 0;
  *(v0 + 104) = v48;
  v50 = swift_getKeyPath();
  v51 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v52 = swift_allocObject();
  v52[4] = sub_1AF594F90;
  v52[5] = v50;
  v52[2] = sub_1AF595060;
  v52[3] = v50;
  v52[6] = v50;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 160) = v20;
  *(v53 + 168) = 0;
  *(v53 + 216) = 0;
  *(v53 + 176) = 0;
  *(v53 + 16) = 0x73726579616CLL;
  *(v53 + 24) = 0xE600000000000000;
  *(v53 + 32) = v50;
  *(v53 + 40) = &type metadata for CollisionLayerSet;
  *(v53 + 48) = 40;
  *(v53 + 56) = 0;
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
  v54 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v54)
  {
    v51 = (*(v54 + 8))();
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v51)
  {
    *(v53 + 160) = (*(v55 + 8))(v51, v55);
  }

  *(v53 + 64) = sub_1AF5950D0;
  *(v53 + 72) = v50;
  sub_1AF0FB8EC(0);
  *(v53 + 168) = 0;
  *(v53 + 176) = 0;

  *(v53 + 216) = 0;
  *(v0 + 112) = v53;
  qword_1EB6C2F50 = v0;
  return result;
}

uint64_t sub_1AF4E3790()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5951D0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF595214;
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
  *(v4 + 16) = 0x737569646172;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
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

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF595270;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94B0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9DC4;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x7053646E756F7261;
  *(v10 + 24) = 0xEB00000000646565;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v11 = (*(v5 + 8))();
  }

  else
  {
    v11 = v2;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v11)
  {
    *(v10 + 160) = (*(v12 + 8))(v11, v12);
  }

  *(v10 + 64) = sub_1AF5A9878;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A94B0;
  v14[5] = v13;
  v14[2] = sub_1AF5A9DC4;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 168) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x64656570536E69;
  *(v15 + 24) = 0xE700000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
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
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v16 = (*(v5 + 8))();
  }

  else
  {
    v16 = v2;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v15 + 160) = (*(v17 + 8))(v16, v17);
  }

  *(v15 + 64) = sub_1AF5A9878;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A94B0;
  v19[5] = v18;
  v19[2] = sub_1AF5A9DC4;
  v19[3] = v18;
  v19[6] = v18;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x73656E7468676974;
  *(v20 + 24) = 0xE900000000000073;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 12;
  *(v20 + 56) = 0;
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
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v2)
  {
    *(v20 + 160) = (*(v21 + 8))(v2, v21);
  }

  *(v20 + 64) = sub_1AF5A9878;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  qword_1EB6C2F58 = v0;
  return result;
}

uint64_t sub_1AF4E4064()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57AAE8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF595310;
  v2[5] = KeyPath;
  v2[2] = sub_1AF595328;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6563726F66;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
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
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7 && v6)
  {
    v6 = (*(v7 + 8))(v6, v7);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v6)
  {
    *(v3 + 160) = (*(v8 + 8))(v6, v8);
  }

  v9 = *(v3 + 64);
  *(v3 + 64) = sub_1AF59538C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v13 = swift_allocObject();
  v13[4] = sub_1AF5953D0;
  v13[5] = v11;
  v13[2] = sub_1AF595404;
  v13[3] = v11;
  v13[6] = v11;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = v4;
  *(v14 + 168) = 0;
  *(v14 + 216) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x646E496563617073;
  *(v14 + 24) = 0xEA00000000007865;
  *(v14 + 32) = v11;
  *(v14 + 40) = v12;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 1;
  *(v14 + 192) = 0;
  *(v14 + 196) = 1;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  v15 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v15)
  {
    v12 = (*(v15 + 8))();
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v12)
  {
    *(v14 + 160) = (*(v16 + 8))(v12, v16);
  }

  *(v14 + 64) = sub_1AF595460;
  *(v14 + 72) = v11;
  sub_1AF0FB8EC(0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  v17 = &type metadata for EntitySpace;
  sub_1AF5A9240(0, &qword_1EB63A130, &type metadata for EntitySpace, type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF5954A0;
  v18[5] = v10;
  v18[2] = sub_1AF5954CC;
  v18[3] = v10;
  v18[6] = v10;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x6563617073;
  *(v19 + 24) = 0xE500000000000000;
  *(v19 + 32) = v10;
  *(v19 + 40) = &type metadata for EntitySpace;
  *(v19 + 48) = 16;
  *(v19 + 56) = 0;
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
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v17)
  {
    *(v19 + 160) = (*(v21 + 8))(v17, v21);
  }

  *(v19 + 64) = sub_1AF595528;
  *(v19 + 72) = v10;
  sub_1AF0FB8EC(0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = v14;
  *(v0 + 40) = v19;
  qword_1EB6C2F60 = v0;
  return result;
}

uint64_t sub_1AF4E4794()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5956C8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59570C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = v5;
  *(v4 + 16) = 0x6E6968746F6F6D73;
  *(v4 + 24) = 0xEF73756964615267;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 1036831949;
  *(v4 + 188) = 0;
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
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v2;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  *(v4 + 64) = sub_1AF595768;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0xD000000000000072;
  *(v4 + 176) = 0x80000001AFF2AC50;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94B4;
  v10[5] = v9;
  v10[2] = sub_1AF5A9DD4;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 16) = 0x736E654474736572;
  *(v11 + 24) = 0xEB00000000797469;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 1084227584;
  *(v11 + 188) = 0;
  *(v11 + 192) = 1101004800;
  *(v11 + 196) = 0;
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
  swift_retain_n();
  if (v6)
  {
    v12 = (*(v6 + 8))();
  }

  else
  {
    v12 = v2;
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v12)
  {
    *(v11 + 160) = (*(v13 + 8))(v12, v13);
  }

  *(v11 + 64) = sub_1AF5A9880;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0xD00000000000009CLL;
  *(v11 + 176) = 0x80000001AFF2ACD0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A94B4;
  v15[5] = v14;
  v15[2] = sub_1AF5A9DD4;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 16) = 0x73656E6666697473;
  *(v16 + 24) = 0xE900000000000073;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 8;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1036831949;
  *(v16 + 196) = 0;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v17 = (*(v6 + 8))();
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    *(v16 + 160) = (*(v18 + 8))(v17, v18);
  }

  *(v16 + 64) = sub_1AF5A9880;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0xD000000000000088;
  *(v16 + 176) = 0x80000001AFF2AD70;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AF5A94B4;
  v20[5] = v19;
  v20[2] = sub_1AF5A9DD4;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 16) = 0x7469736F63736976;
  *(v21 + 24) = 0xE900000000000079;
  *(v21 + 32) = v19;
  *(v21 + 40) = v2;
  *(v21 + 48) = 12;
  *(v21 + 56) = 0;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 0;
  *(v21 + 192) = 1075838976;
  *(v21 + 196) = 0;
  *(v21 + 200) = 0x1000100000000;
  *(v21 + 208) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v2)
  {
    *(v21 + 160) = (*(v22 + 8))(v2, v22);
  }

  *(v21 + 64) = sub_1AF5A9880;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(0);
  *(v21 + 168) = 0xD00000000000003BLL;
  *(v21 + 176) = 0x80000001AFF2AE00;

  *(v21 + 216) = 0;
  *(v0 + 56) = v21;
  qword_1EB6C2F68 = v0;
  return result;
}

uint64_t sub_1AF4E5094()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF595808;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59583C;
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
  *(v4 + 16) = 0x656372756F73;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
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
  *(v4 + 144) = xmmword_1AFE55230;
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

  *(v4 + 64) = sub_1AF595898;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF5795B0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 72) = MEMORY[0x1E69E6530];
  *(v8 + 48) = 10;
  sub_1AF57A3F8();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5958D8;
  v10[5] = v7;
  v10[2] = sub_1AF5958F0;
  v10[3] = v7;
  v10[6] = v7;
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED72F970, v9, MEMORY[0x1E69E6720]);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0xD000000000000012;
  *(v11 + 24) = 0x80000001AFF23CF0;
  *(v11 + 32) = v7;
  *(v11 + 40) = v12;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0x40000000;
  *(v11 + 188) = 0;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 96) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v13 = *(v8 + 16);
  swift_retain_n();
  if (!v13)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    *(v8 + 32) = 48;
    *(v8 + 40) = 0xE100000000000000;
    *(v8 + 72) = v9;
    *(v8 + 48) = 0;
  }

  *(v11 + 160) = v8;
  v14 = MEMORY[0x1E69E7CC0];

  *(v11 + 64) = sub_1AF595954;
  *(v11 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF595998;
  v17[5] = v15;
  v17[2] = sub_1AF5959CC;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = v14;
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  strcpy((v18 + 16), "ribbonLength");
  *(v18 + 29) = 0;
  *(v18 + 30) = -5120;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 20;
  *(v18 + 56) = 0;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 0;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x1000100000000;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19)
  {
    v20 = (*(v19 + 8))();
  }

  else
  {
    v20 = v16;
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v20)
  {
    *(v18 + 160) = (*(v21 + 8))(v20, v21);
  }

  *(v18 + 64) = sub_1AF595A28;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A94B8;
  v23[5] = v22;
  v23[2] = sub_1AF5A9DD8;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x6963697473616C65;
  *(v24 + 24) = 0xEA00000000007974;
  *(v24 + 32) = v22;
  *(v24 + 40) = v16;
  *(v24 + 48) = 28;
  *(v24 + 56) = 0;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 0;
  *(v24 + 192) = 1065353216;
  *(v24 + 196) = 0;
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
  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v16)
  {
    *(v24 + 160) = (*(v25 + 8))(v16, v25);
  }

  *(v24 + 64) = sub_1AF5A9884;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v26 = swift_getKeyPath();
  v27 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF595A68;
  v28[5] = v26;
  v28[2] = sub_1AF595A94;
  v28[3] = v26;
  v28[6] = v26;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0xD000000000000012;
  *(v29 + 24) = 0x80000001AFF23D10;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  *(v29 + 48) = 24;
  *(v29 + 56) = 0;
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
  v30 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v30)
  {
    v31 = (*(v30 + 8))();
  }

  else
  {
    v31 = v27;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v29 + 160) = (*(v32 + 8))(v31, v32);
  }

  *(v29 + 64) = sub_1AF595AF0;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v0 + 64) = v29;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AF5AA1AC;
  v34[5] = v33;
  v34[2] = sub_1AF5A9DDC;
  v34[3] = v33;
  v34[6] = v33;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0xD000000000000014;
  *(v35 + 24) = 0x80000001AFF23D30;
  *(v35 + 32) = v33;
  *(v35 + 40) = v27;
  *(v35 + 48) = 25;
  *(v35 + 56) = 0;
  *(v35 + 58) = 0;
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
  *(v35 + 210) = 0;
  swift_retain_n();
  if (v30)
  {
    v36 = (*(v30 + 8))();
  }

  else
  {
    v36 = v27;
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v36)
  {
    *(v35 + 160) = (*(v37 + 8))(v36, v37);
  }

  *(v35 + 64) = sub_1AF5A9888;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 72) = v35;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AF5AA1AC;
  v39[5] = v38;
  v39[2] = sub_1AF5A9DDC;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 168) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x6F666E49676F6CLL;
  *(v40 + 24) = 0xE700000000000000;
  *(v40 + 32) = v38;
  *(v40 + 40) = v27;
  *(v40 + 48) = 26;
  *(v40 + 56) = 0;
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
  if (v30)
  {
    v27 = (*(v30 + 8))();
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v27)
  {
    *(v40 + 160) = (*(v41 + 8))(v27, v41);
  }

  *(v40 + 64) = sub_1AF5A9888;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;
  *(v0 + 80) = v40;
  qword_1EB6C2F70 = v0;
  return result;
}