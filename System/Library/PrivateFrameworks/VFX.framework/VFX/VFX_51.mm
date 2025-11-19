uint64_t sub_1AF4FA634()
{
  result = sub_1AF4F8054();
  qword_1EB6C3018 = result;
  return result;
}

uint64_t sub_1AF4FA704()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B944;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B988;
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
  *(v4 + 16) = 6710387;
  *(v4 + 24) = 0xE300000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 24;
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

  *(v4 + 64) = sub_1AF59B9E4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = sub_1AF4F5414();
  result = sub_1AF48F810(v7, sub_1AF56E184);
  qword_1EB6C3020 = v0;
  return result;
}

uint64_t sub_1AF4FAA68()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59BCD4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59BD18;
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
  *(v4 + 16) = 1752393069;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 24;
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
  *(v4 + 144) = xmmword_1AFE551D0;
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

  *(v4 + 64) = sub_1AF59BD74;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = sub_1AF4F5F24();
  result = sub_1AF48F810(v7, sub_1AF56E184);
  qword_1EB6C3028 = v0;
  return result;
}

uint64_t sub_1AF4FADD4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for AABB;
  sub_1AF5A9240(0, &qword_1EB632F68, &type metadata for AABB, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59C0BC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59C100;
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
  *(v4 + 16) = 7892834;
  *(v4 + 24) = 0xE300000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for AABB;
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

  *(v4 + 64) = sub_1AF59C164;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59C1A4;
  v10[5] = v8;
  v10[2] = sub_1AF59C1D0;
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
  strcpy((v11 + 16), "inwardNormal");
  *(v11 + 29) = 0;
  *(v11 + 30) = -5120;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 40;
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

  *(v11 + 64) = sub_1AF59C22C;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF59C26C;
  v16[5] = v14;
  v16[2] = sub_1AF59C2A0;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = v5;
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x6963697473616C65;
  *(v17 + 24) = 0xEA00000000007974;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 32;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = -1082130432;
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
    v19 = (*(v18 + 8))();
  }

  else
  {
    v19 = v15;
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v19)
  {
    *(v17 + 160) = (*(v20 + 8))(v19, v20);
  }

  *(v17 + 64) = sub_1AF59C2FC;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A9528;
  v22[5] = v21;
  v22[2] = sub_1AF5A9F0C;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 168) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x6E6F697463697266;
  *(v23 + 24) = 0xE800000000000000;
  *(v23 + 32) = v21;
  *(v23 + 40) = v15;
  *(v23 + 48) = 36;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = -1082130432;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1065353216;
  *(v23 + 196) = 0;
  *(v23 + 200) = 1008981770;
  *(v23 + 204) = 0x10000;
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
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v15)
  {
    *(v23 + 160) = (*(v24 + 8))(v15, v24);
  }

  *(v23 + 64) = sub_1AF5A9928;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 56) = v23;
  qword_1EB6C3030 = v0;
  return result;
}

uint64_t sub_1AF4FB6C8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF59C45C;
  v4[5] = v2;
  v4[2] = sub_1AF59C490;
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
  *(v5 + 16) = 0x646E496570616873;
  *(v5 + 24) = 0xEA00000000007865;
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

  *(v5 + 64) = sub_1AF59C4EC;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for KillShape.Shape;
  sub_1AF5A9240(0, &qword_1EB63B3A8, &type metadata for KillShape.Shape, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59C52C;
  v10[5] = KeyPath;
  v10[2] = sub_1AF59C558;
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
  *(v11 + 16) = 0x6570616873;
  *(v11 + 24) = 0xE500000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for KillShape.Shape;
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

  *(v11 + 64) = sub_1AF59C5B4;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v5;
  *(v0 + 32) = v11;
  v14 = swift_getKeyPath();
  v15 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v16 = swift_allocObject();
  v16[4] = sub_1AF59C5F4;
  v16[5] = v14;
  v16[2] = sub_1AF59C630;
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
  *(v17 + 16) = 0x6564697374756FLL;
  *(v17 + 24) = 0xE700000000000000;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 1;
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

  *(v17 + 64) = sub_1AF59C68C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  qword_1EB6C3038 = v0;
  return result;
}

uint64_t sub_1AF4FBE48()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Language;
  sub_1AF5A9240(0, &qword_1EB63B3D8, &type metadata for Language, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59C81C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59C88C;
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
  *(v4 + 16) = 0x65676175676E616CLL;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Language;
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

  *(v4 + 64) = sub_1AF59C8C0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59C900;
  v10[5] = v8;
  v10[2] = sub_1AF59C970;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 16) = 1701080931;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = &type metadata for EmitterScript.Info;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 152) = &off_1F255CAA8;
  *(v11 + 160) = v5;
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

  *(v11 + 64) = sub_1AF59C9A0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3040 = v0;
  return result;
}

uint64_t sub_1AF4FC36C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Language;
  sub_1AF5A9240(0, &qword_1EB63B3D8, &type metadata for Language, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CA7C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59CAEC;
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
  *(v4 + 16) = 0x65676175676E616CLL;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Language;
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

  *(v4 + 64) = sub_1AF59CB20;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59CB60;
  v10[5] = v8;
  v10[2] = sub_1AF59CBD0;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 16) = 1701080931;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = &type metadata for ParticleInitScript.Info;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 152) = &off_1F255CA78;
  *(v11 + 160) = v5;
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

  *(v11 + 64) = sub_1AF59CC00;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3048 = v0;
  return result;
}

uint64_t sub_1AF4FC874()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Language;
  sub_1AF5A9240(0, &qword_1EB63B3D8, &type metadata for Language, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CC84;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59CCF4;
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
  *(v4 + 16) = 0x65676175676E616CLL;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Language;
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

  *(v4 + 64) = sub_1AF59CD28;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59CD68;
  v10[5] = v8;
  v10[2] = sub_1AF59CDD8;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 120) = 0;
  *(v11 + 128) = 0;
  *(v11 + 16) = 1701080931;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 136) = 0;
  *(v11 + 144) = &type metadata for ParticleUpdateScript.Info;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 152) = &off_1F255CA48;
  *(v11 + 160) = v5;
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

  *(v11 + 64) = sub_1AF59CE08;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3050 = v0;
  return result;
}

uint64_t sub_1AF4FCD7C(uint64_t a1, uint64_t a2)
{
  if (!sub_1AF9FA388(a1, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a2 + 56);

  return v4(a1, a2);
}

void *sub_1AF4FCDF0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1AFE55190;
  sub_1AF59F330();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59F384;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59F3C8;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59F424;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v13 = v152;
  *(v152 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AF5AA3DC;
  v17[5] = v14;
  v17[2] = sub_1AF5A9F98;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v18 + 216) = 0;
  *(v18 + 16) = 0x65727574786574;
  *(v18 + 24) = 0xE700000000000000;
  *(v18 + 32) = v14;
  *(v18 + 40) = &type metadata for Entity;
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
  *(v18 + 96) = v16;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE551B0;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v2)
  {
    v20 = *(v19 + 8);
    v21 = v19;
    swift_retain_n();
    v22 = v20(v2, v21);
    *(v18 + 160) = v22;
  }

  else
  {
    v22 = swift_retain_n();
  }

  *(v18 + 64) = sub_1AF5A997C;
  *(v18 + 72) = v14;
  *(v18 + 216) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v152 + 40) = v18;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v24, v25);
  v153 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v153, v26);
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF59F384;
  v29[5] = v27;
  v29[2] = sub_1AF59F464;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 216) = 0;
  strcpy((v30 + 16), "blendModeIndex");
  *(v30 + 31) = -18;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  v31 = swift_conformsToProtocol2();

  if (v31)
  {
    v32 = (*(v31 + 8))();
  }

  else
  {
    v32 = v28;
  }

  v33 = swift_conformsToProtocol2();
  v155 = v31;
  if (v33 && v32)
  {
    v34 = *(v33 + 8);
    v35 = v33;
    swift_retain_n();
    *(v30 + 160) = v34(v32, v35);
  }

  else
  {
    swift_retain_n();
  }

  *(v30 + 64) = sub_1AF59F4C0;
  *(v30 + 72) = v27;
  *(v30 + 216) = 0;
  v36 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  v37 = swift_allocObject();
  v37[4] = sub_1AF59F500;
  v37[5] = v24;
  v37[2] = sub_1AF59F54C;
  v37[3] = v24;
  v37[6] = v24;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = 0;
  *(v38 + 16) = 0x646F4D646E656C62;
  *(v38 + 24) = 0xE900000000000065;
  *(v38 + 32) = v24;
  *(v38 + 40) = &type metadata for BlendMode;
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
  *(v38 + 96) = v153;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();

  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    v41 = *(v40 + 8);
    v42 = v40;
    swift_retain_n();
    v43 = v41(v36, v42);
    *(v38 + 160) = v43;
  }

  else
  {
    v43 = swift_retain_n();
  }

  *(v38 + 64) = sub_1AF59F58C;
  *(v38 + 72) = v24;
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = v30;
  *(v152 + 48) = v38;
  MEMORY[0x1EEE9AC00](v43, v44);
  v45 = swift_getKeyPath();
  v46 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF59F5CC;
  v47[5] = v45;
  v47[2] = sub_1AF59F610;
  v47[3] = v45;
  v47[6] = v45;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 216) = 0;
  *(v48 + 16) = 0x685466666F747563;
  *(v48 + 24) = 0xEF646C6F68736572;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 0;
  *(v48 + 184) = -1082130432;
  *(v48 + 188) = 0;
  *(v48 + 192) = 1065353216;
  *(v48 + 196) = 0;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v49 = swift_conformsToProtocol2();

  if (v49)
  {
    v50 = (*(v49 + 8))();
  }

  else
  {
    v50 = v46;
  }

  v51 = swift_conformsToProtocol2();
  v151 = v49;
  if (v51 && v50)
  {
    v52 = *(v51 + 8);
    v53 = v51;
    swift_retain_n();
    v54 = v52(v50, v53);
    *(v48 + 160) = v54;
  }

  else
  {
    v54 = swift_retain_n();
  }

  *(v48 + 64) = sub_1AF59F66C;
  *(v48 + 72) = v45;
  *(v48 + 216) = 0;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v152 + 56) = v48;
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF59F6AC;
  v60[5] = v56;
  v60[2] = sub_1AF59F6E8;
  v60[3] = v56;
  v60[6] = v56;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 216) = 0;
  *(v61 + 16) = 0x676E69746867696CLL;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v56;
  *(v61 + 40) = v59;
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
  *(v61 + 96) = v58;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();

  if (v62)
  {
    v63 = (*(v62 + 8))();
  }

  else
  {
    v63 = v59;
  }

  v154 = v62;
  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    v65 = *(v64 + 8);
    v66 = v64;
    swift_retain_n();
    v67 = v65(v63, v66);
    *(v61 + 160) = v67;
  }

  else
  {
    v67 = swift_retain_n();
  }

  *(v61 + 64) = sub_1AF59F744;
  *(v61 + 72) = v56;
  *(v61 + 216) = 0;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v152 + 64) = v61;
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v69, v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA248;
  v72[5] = v69;
  v72[2] = sub_1AF5A9F9C;
  v72[3] = v69;
  v72[6] = v69;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  *(v73 + 16) = 0x72616C7563657073;
  *(v73 + 24) = 0xE800000000000000;
  *(v73 + 32) = v69;
  *(v73 + 40) = v59;
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

  if (v62)
  {
    v74 = (*(v62 + 8))();
  }

  else
  {
    v74 = v59;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    v76 = *(v75 + 8);
    v77 = v75;
    swift_retain_n();
    v78 = v76(v74, v77);
    *(v73 + 160) = v78;
  }

  else
  {
    v78 = swift_retain_n();
  }

  v80 = MEMORY[0x1E69E7360];
  *(v73 + 64) = sub_1AF5A9980;
  *(v73 + 72) = v69;
  *(v73 + 216) = 0;
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v152 + 72) = v73;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  v84[4] = sub_1AF5AA3DC;
  v84[5] = v83;
  v84[2] = sub_1AF5A9FA0;
  v84[3] = v83;
  v84[6] = v83;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  *(v85 + 216) = 0;
  strcpy((v85 + 16), "sortModeIndex");
  *(v85 + 30) = -4864;
  *(v85 + 32) = v83;
  *(v85 + 40) = v80;
  *(v85 + 48) = 0;
  *(v85 + 56) = 1;
  *(v85 + 58) = 0;
  *(v85 + 184) = 0;
  *(v85 + 188) = 1;
  *(v85 + 192) = 0;
  *(v85 + 196) = 1;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;

  if (v155)
  {
    v86 = (*(v155 + 8))();
  }

  else
  {
    v86 = v80;
  }

  v87 = swift_conformsToProtocol2();
  v88 = MEMORY[0x1E69E6370];
  if (v87 && v86)
  {
    v89 = *(v87 + 8);
    v90 = v87;
    swift_retain_n();
    *(v85 + 160) = v89(v86, v90);
  }

  else
  {
    swift_retain_n();
  }

  *(v85 + 64) = sub_1AF5A9984;
  *(v85 + 72) = v83;
  *(v85 + 216) = 0;
  v91 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  v92 = swift_allocObject();
  v92[4] = sub_1AF59F784;
  v92[5] = v81;
  v92[2] = sub_1AF59F7C0;
  v92[3] = v81;
  v92[6] = v81;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = 0;
  *(v93 + 16) = 0x65646F4D74726F73;
  *(v93 + 24) = 0xE800000000000000;
  *(v93 + 32) = v81;
  *(v93 + 40) = &type metadata for ParticleSortMode;
  *(v93 + 48) = 0;
  *(v93 + 56) = 1;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 96) = 0;
  *(v93 + 104) = 0;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  v94 = swift_conformsToProtocol2();

  if (v94)
  {
    v91 = (*(v94 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v91)
  {
    v96 = *(v95 + 8);
    v97 = v95;
    swift_retain_n();
    v98 = v96(v91, v97);
    *(v93 + 160) = v98;
  }

  else
  {
    v98 = swift_retain_n();
  }

  *(v93 + 64) = sub_1AF59F81C;
  *(v93 + 72) = v81;
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = v85;
  *(v152 + 80) = v93;
  MEMORY[0x1EEE9AC00](v98, v99);
  v100 = swift_getKeyPath();
  v101 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v102 = swift_allocObject();
  v102[4] = sub_1AF59F5CC;
  v102[5] = v100;
  v102[2] = sub_1AF59F85C;
  v102[3] = v100;
  v102[6] = v100;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 168) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 176) = 0;
  *(v103 + 216) = 0;
  *(v103 + 16) = 0x647265764F78616DLL;
  *(v103 + 24) = 0xEB00000000776172;
  *(v103 + 32) = v100;
  *(v103 + 40) = v101;
  *(v103 + 48) = 0;
  *(v103 + 56) = 1;
  *(v103 + 58) = 4;
  *(v103 + 184) = 1065353216;
  *(v103 + 188) = 0;
  *(v103 + 192) = 1132462080;
  *(v103 + 196) = 0;
  *(v103 + 200) = 0x1000100000000;
  *(v103 + 208) = 1;
  *(v103 + 96) = 0;
  *(v103 + 104) = 0;
  *(v103 + 64) = 0;
  *(v103 + 72) = 0;
  *(v103 + 144) = xmmword_1AFE22A20;
  *(v103 + 80) = v102;
  *(v103 + 88) = &off_1F2535378;
  *(v103 + 210) = 4;
  v104 = swift_conformsToProtocol2();

  if (v104)
  {
    v101 = (*(v104 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v101)
  {
    v106 = *(v105 + 8);
    v107 = v105;
    swift_retain_n();
    v108 = v106(v101, v107);
    *(v103 + 160) = v108;
  }

  else
  {
    v108 = swift_retain_n();
  }

  *(v103 + 64) = sub_1AF59F8CC;
  *(v103 + 72) = v100;
  *(v103 + 216) = 0;
  *(v103 + 168) = 0;
  *(v103 + 176) = 0;
  *(v152 + 88) = v103;
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v112, v113);
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AF5AA3DC;
  v115[5] = v114;
  v115[2] = sub_1AF5A9FA0;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  *(v116 + 216) = 0;
  *(v116 + 16) = 0xD000000000000012;
  *(v116 + 24) = 0x80000001AFF2BB80;
  *(v116 + 32) = v114;
  v117 = MEMORY[0x1E69E7360];
  *(v116 + 40) = MEMORY[0x1E69E7360];
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;

  if (v155)
  {
    v117 = (*(v155 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v117)
  {
    v119 = v118;
    v120 = *(v118 + 8);
    swift_retain_n();
    v121 = v120(v117, v119);
    v13 = v152;
    *(v116 + 160) = v121;
  }

  else
  {
    swift_retain_n();
  }

  *(v116 + 64) = sub_1AF5A9984;
  *(v116 + 72) = v114;
  *(v116 + 216) = 0;
  v122 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  v123 = swift_allocObject();
  v123[4] = sub_1AF59F90C;
  v123[5] = v110;
  v123[2] = sub_1AF59F948;
  v123[3] = v110;
  v123[6] = v110;
  v124 = swift_allocObject();
  *(v124 + 112) = 1;
  *(v124 + 128) = 0;
  *(v124 + 136) = 0;
  *(v124 + 120) = 0;
  *(v124 + 160) = MEMORY[0x1E69E7CC0];
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = 0;
  strcpy((v124 + 16), "animationMode");
  *(v124 + 30) = -4864;
  *(v124 + 32) = v110;
  *(v124 + 40) = &type metadata for ParticleAnimationMode;
  *(v124 + 48) = 0;
  *(v124 + 56) = 1;
  *(v124 + 58) = 0;
  *(v124 + 184) = 0;
  *(v124 + 188) = 1;
  *(v124 + 192) = 0;
  *(v124 + 196) = 1;
  *(v124 + 200) = 0x1000100000000;
  *(v124 + 208) = 1;
  *(v124 + 64) = 0;
  *(v124 + 72) = 0;
  *(v124 + 96) = v112;
  *(v124 + 104) = 0;
  *(v124 + 144) = xmmword_1AFE22A20;
  *(v124 + 80) = v123;
  *(v124 + 88) = &off_1F2535378;
  *(v124 + 210) = 0;
  v125 = swift_conformsToProtocol2();

  if (v125)
  {
    v122 = (*(v125 + 8))();
  }

  v126 = swift_conformsToProtocol2();
  if (v126 && v122)
  {
    v127 = *(v126 + 8);
    v128 = v126;
    swift_retain_n();
    v129 = v127(v122, v128);
    *(v124 + 160) = v129;
  }

  else
  {
    v129 = swift_retain_n();
  }

  *(v124 + 64) = sub_1AF59F9A4;
  *(v124 + 72) = v110;
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = v116;
  v13[12] = v124;
  MEMORY[0x1EEE9AC00](v129, v130);
  v131 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v131, v132);
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA248;
  v134[5] = v131;
  v134[2] = sub_1AF5A9F9C;
  v134[3] = v131;
  v134[6] = v131;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000017;
  *(v135 + 24) = 0x80000001AFF24730;
  *(v135 + 32) = v131;
  *(v135 + 40) = v88;
  *(v135 + 48) = 0;
  *(v135 + 56) = 1;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;

  if (v154)
  {
    v88 = (*(v154 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v88)
  {
    v137 = *(v136 + 8);
    v138 = v136;
    swift_retain_n();
    v139 = v137(v88, v138);
    *(v135 + 160) = v139;
  }

  else
  {
    v139 = swift_retain_n();
  }

  *(v135 + 64) = sub_1AF5A9980;
  *(v135 + 72) = v131;
  *(v135 + 216) = 0;
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  v13[13] = v135;
  MEMORY[0x1EEE9AC00](v139, v140);
  v141 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v141, v142);
  v143 = swift_getKeyPath();
  v144 = swift_allocObject();
  v144[4] = sub_1AF5A9544;
  v144[5] = v141;
  v144[2] = sub_1AF5A9FA4;
  v144[3] = v141;
  v144[6] = v141;
  v145 = swift_allocObject();
  *(v145 + 112) = 1;
  *(v145 + 128) = 0;
  *(v145 + 136) = 0;
  *(v145 + 120) = 0;
  *(v145 + 160) = MEMORY[0x1E69E7CC0];
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  *(v145 + 216) = 0;
  strcpy((v145 + 16), "softDistance");
  *(v145 + 29) = 0;
  *(v145 + 30) = -5120;
  *(v145 + 32) = v141;
  v146 = MEMORY[0x1E69E6448];
  *(v145 + 40) = MEMORY[0x1E69E6448];
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 58) = 0;
  *(v145 + 184) = 0;
  *(v145 + 188) = 0;
  *(v145 + 192) = 0;
  *(v145 + 196) = 1;
  *(v145 + 200) = 0x1000100000000;
  *(v145 + 208) = 1;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0;
  *(v145 + 96) = v143;
  *(v145 + 104) = 0;
  *(v145 + 144) = xmmword_1AFE22A20;
  *(v145 + 80) = v144;
  *(v145 + 88) = &off_1F2535378;
  *(v145 + 210) = 0;

  if (v151)
  {
    v146 = (*(v151 + 8))();
  }

  v147 = swift_conformsToProtocol2();
  if (v147 && v146)
  {
    v148 = *(v147 + 8);
    v149 = v147;
    swift_retain_n();
    *(v145 + 160) = v148(v146, v149);
  }

  else
  {
    swift_retain_n();
  }

  *(v145 + 64) = sub_1AF5A9988;
  *(v145 + 72) = v141;
  *(v145 + 216) = 0;
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  v13[14] = v145;
  return v13;
}

void *sub_1AF4FECEC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1AFE55190;
  sub_1AF59DA84();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59DAD8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59DB0C;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59DB68;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v13 = v152;
  *(v152 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AF5AA3D4;
  v17[5] = v14;
  v17[2] = sub_1AF5A9F4C;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v18 + 216) = 0;
  *(v18 + 16) = 0x65727574786574;
  *(v18 + 24) = 0xE700000000000000;
  *(v18 + 32) = v14;
  *(v18 + 40) = &type metadata for Entity;
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
  *(v18 + 96) = v16;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE551B0;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v2)
  {
    v20 = *(v19 + 8);
    v21 = v19;
    swift_retain_n();
    v22 = v20(v2, v21);
    *(v18 + 160) = v22;
  }

  else
  {
    v22 = swift_retain_n();
  }

  *(v18 + 64) = sub_1AF5A994C;
  *(v18 + 72) = v14;
  *(v18 + 216) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v152 + 40) = v18;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v24, v25);
  v153 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v153, v26);
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF59DAD8;
  v29[5] = v27;
  v29[2] = sub_1AF59DBA8;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 216) = 0;
  strcpy((v30 + 16), "blendModeIndex");
  *(v30 + 31) = -18;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  v31 = swift_conformsToProtocol2();

  if (v31)
  {
    v32 = (*(v31 + 8))();
  }

  else
  {
    v32 = v28;
  }

  v33 = swift_conformsToProtocol2();
  v155 = v31;
  if (v33 && v32)
  {
    v34 = *(v33 + 8);
    v35 = v33;
    swift_retain_n();
    *(v30 + 160) = v34(v32, v35);
  }

  else
  {
    swift_retain_n();
  }

  *(v30 + 64) = sub_1AF59DC04;
  *(v30 + 72) = v27;
  *(v30 + 216) = 0;
  v36 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  v37 = swift_allocObject();
  v37[4] = sub_1AF59DC44;
  v37[5] = v24;
  v37[2] = sub_1AF59DC80;
  v37[3] = v24;
  v37[6] = v24;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = 0;
  *(v38 + 16) = 0x646F4D646E656C62;
  *(v38 + 24) = 0xE900000000000065;
  *(v38 + 32) = v24;
  *(v38 + 40) = &type metadata for BlendMode;
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
  *(v38 + 96) = v153;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();

  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    v41 = *(v40 + 8);
    v42 = v40;
    swift_retain_n();
    v43 = v41(v36, v42);
    *(v38 + 160) = v43;
  }

  else
  {
    v43 = swift_retain_n();
  }

  *(v38 + 64) = sub_1AF59DCC0;
  *(v38 + 72) = v24;
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = v30;
  *(v152 + 48) = v38;
  MEMORY[0x1EEE9AC00](v43, v44);
  v45 = swift_getKeyPath();
  v46 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF5A9534;
  v47[5] = v45;
  v47[2] = sub_1AF5A9F48;
  v47[3] = v45;
  v47[6] = v45;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 216) = 0;
  *(v48 + 16) = 0x685466666F747563;
  *(v48 + 24) = 0xEF646C6F68736572;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 0;
  *(v48 + 184) = -1082130432;
  *(v48 + 188) = 0;
  *(v48 + 192) = 1065353216;
  *(v48 + 196) = 0;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v49 = swift_conformsToProtocol2();

  if (v49)
  {
    v50 = (*(v49 + 8))();
  }

  else
  {
    v50 = v46;
  }

  v51 = swift_conformsToProtocol2();
  v151 = v49;
  if (v51 && v50)
  {
    v52 = *(v51 + 8);
    v53 = v51;
    swift_retain_n();
    v54 = v52(v50, v53);
    *(v48 + 160) = v54;
  }

  else
  {
    v54 = swift_retain_n();
  }

  *(v48 + 64) = sub_1AF5A9950;
  *(v48 + 72) = v45;
  *(v48 + 216) = 0;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v152 + 56) = v48;
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF59DD00;
  v60[5] = v56;
  v60[2] = sub_1AF59DD2C;
  v60[3] = v56;
  v60[6] = v56;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 216) = 0;
  *(v61 + 16) = 0x676E69746867696CLL;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v56;
  *(v61 + 40) = v59;
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
  *(v61 + 96) = v58;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();

  if (v62)
  {
    v63 = (*(v62 + 8))();
  }

  else
  {
    v63 = v59;
  }

  v154 = v62;
  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    v65 = *(v64 + 8);
    v66 = v64;
    swift_retain_n();
    v67 = v65(v63, v66);
    *(v61 + 160) = v67;
  }

  else
  {
    v67 = swift_retain_n();
  }

  *(v61 + 64) = sub_1AF59DD88;
  *(v61 + 72) = v56;
  *(v61 + 216) = 0;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v152 + 64) = v61;
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v69, v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA22C;
  v72[5] = v69;
  v72[2] = sub_1AF5A9F50;
  v72[3] = v69;
  v72[6] = v69;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  *(v73 + 16) = 0x72616C7563657073;
  *(v73 + 24) = 0xE800000000000000;
  *(v73 + 32) = v69;
  *(v73 + 40) = v59;
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

  if (v62)
  {
    v74 = (*(v62 + 8))();
  }

  else
  {
    v74 = v59;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    v76 = *(v75 + 8);
    v77 = v75;
    swift_retain_n();
    v78 = v76(v74, v77);
    *(v73 + 160) = v78;
  }

  else
  {
    v78 = swift_retain_n();
  }

  v80 = MEMORY[0x1E69E7360];
  *(v73 + 64) = sub_1AF5A9954;
  *(v73 + 72) = v69;
  *(v73 + 216) = 0;
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v152 + 72) = v73;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  v84[4] = sub_1AF5AA3D4;
  v84[5] = v83;
  v84[2] = sub_1AF5A9F54;
  v84[3] = v83;
  v84[6] = v83;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  *(v85 + 216) = 0;
  strcpy((v85 + 16), "sortModeIndex");
  *(v85 + 30) = -4864;
  *(v85 + 32) = v83;
  *(v85 + 40) = v80;
  *(v85 + 48) = 0;
  *(v85 + 56) = 1;
  *(v85 + 58) = 0;
  *(v85 + 184) = 0;
  *(v85 + 188) = 1;
  *(v85 + 192) = 0;
  *(v85 + 196) = 1;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;

  if (v155)
  {
    v86 = (*(v155 + 8))();
  }

  else
  {
    v86 = v80;
  }

  v87 = swift_conformsToProtocol2();
  v88 = MEMORY[0x1E69E6370];
  if (v87 && v86)
  {
    v89 = *(v87 + 8);
    v90 = v87;
    swift_retain_n();
    *(v85 + 160) = v89(v86, v90);
  }

  else
  {
    swift_retain_n();
  }

  *(v85 + 64) = sub_1AF5A9958;
  *(v85 + 72) = v83;
  *(v85 + 216) = 0;
  v91 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  v92 = swift_allocObject();
  v92[4] = sub_1AF59DDC8;
  v92[5] = v81;
  v92[2] = sub_1AF59DDF4;
  v92[3] = v81;
  v92[6] = v81;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = 0;
  *(v93 + 16) = 0x65646F4D74726F73;
  *(v93 + 24) = 0xE800000000000000;
  *(v93 + 32) = v81;
  *(v93 + 40) = &type metadata for ParticleSortMode;
  *(v93 + 48) = 0;
  *(v93 + 56) = 1;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 96) = 0;
  *(v93 + 104) = 0;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  v94 = swift_conformsToProtocol2();

  if (v94)
  {
    v91 = (*(v94 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v91)
  {
    v96 = *(v95 + 8);
    v97 = v95;
    swift_retain_n();
    v98 = v96(v91, v97);
    *(v93 + 160) = v98;
  }

  else
  {
    v98 = swift_retain_n();
  }

  *(v93 + 64) = sub_1AF59DE50;
  *(v93 + 72) = v81;
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = v85;
  *(v152 + 80) = v93;
  MEMORY[0x1EEE9AC00](v98, v99);
  v100 = swift_getKeyPath();
  v101 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v102 = swift_allocObject();
  v102[4] = sub_1AF59D954;
  v102[5] = v100;
  v102[2] = sub_1AF59DE90;
  v102[3] = v100;
  v102[6] = v100;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 168) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 176) = 0;
  *(v103 + 216) = 0;
  *(v103 + 16) = 0x647265764F78616DLL;
  *(v103 + 24) = 0xEB00000000776172;
  *(v103 + 32) = v100;
  *(v103 + 40) = v101;
  *(v103 + 48) = 0;
  *(v103 + 56) = 1;
  *(v103 + 58) = 4;
  *(v103 + 184) = 1065353216;
  *(v103 + 188) = 0;
  *(v103 + 192) = 1132462080;
  *(v103 + 196) = 0;
  *(v103 + 200) = 0x1000100000000;
  *(v103 + 208) = 1;
  *(v103 + 96) = 0;
  *(v103 + 104) = 0;
  *(v103 + 64) = 0;
  *(v103 + 72) = 0;
  *(v103 + 144) = xmmword_1AFE22A20;
  *(v103 + 80) = v102;
  *(v103 + 88) = &off_1F2535378;
  *(v103 + 210) = 4;
  v104 = swift_conformsToProtocol2();

  if (v104)
  {
    v101 = (*(v104 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v101)
  {
    v106 = *(v105 + 8);
    v107 = v105;
    swift_retain_n();
    v108 = v106(v101, v107);
    *(v103 + 160) = v108;
  }

  else
  {
    v108 = swift_retain_n();
  }

  *(v103 + 64) = sub_1AF59DF00;
  *(v103 + 72) = v100;
  *(v103 + 216) = 0;
  *(v103 + 168) = 0;
  *(v103 + 176) = 0;
  *(v152 + 88) = v103;
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v112, v113);
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AF5AA3D4;
  v115[5] = v114;
  v115[2] = sub_1AF5A9F54;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  *(v116 + 216) = 0;
  *(v116 + 16) = 0xD000000000000012;
  *(v116 + 24) = 0x80000001AFF2BB80;
  *(v116 + 32) = v114;
  v117 = MEMORY[0x1E69E7360];
  *(v116 + 40) = MEMORY[0x1E69E7360];
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;

  if (v155)
  {
    v117 = (*(v155 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v117)
  {
    v119 = v118;
    v120 = *(v118 + 8);
    swift_retain_n();
    v121 = v120(v117, v119);
    v13 = v152;
    *(v116 + 160) = v121;
  }

  else
  {
    swift_retain_n();
  }

  *(v116 + 64) = sub_1AF5A9958;
  *(v116 + 72) = v114;
  *(v116 + 216) = 0;
  v122 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  v123 = swift_allocObject();
  v123[4] = sub_1AF59DF40;
  v123[5] = v110;
  v123[2] = sub_1AF59DF6C;
  v123[3] = v110;
  v123[6] = v110;
  v124 = swift_allocObject();
  *(v124 + 112) = 1;
  *(v124 + 128) = 0;
  *(v124 + 136) = 0;
  *(v124 + 120) = 0;
  *(v124 + 160) = MEMORY[0x1E69E7CC0];
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = 0;
  strcpy((v124 + 16), "animationMode");
  *(v124 + 30) = -4864;
  *(v124 + 32) = v110;
  *(v124 + 40) = &type metadata for ParticleAnimationMode;
  *(v124 + 48) = 0;
  *(v124 + 56) = 1;
  *(v124 + 58) = 0;
  *(v124 + 184) = 0;
  *(v124 + 188) = 1;
  *(v124 + 192) = 0;
  *(v124 + 196) = 1;
  *(v124 + 200) = 0x1000100000000;
  *(v124 + 208) = 1;
  *(v124 + 64) = 0;
  *(v124 + 72) = 0;
  *(v124 + 96) = v112;
  *(v124 + 104) = 0;
  *(v124 + 144) = xmmword_1AFE22A20;
  *(v124 + 80) = v123;
  *(v124 + 88) = &off_1F2535378;
  *(v124 + 210) = 0;
  v125 = swift_conformsToProtocol2();

  if (v125)
  {
    v122 = (*(v125 + 8))();
  }

  v126 = swift_conformsToProtocol2();
  if (v126 && v122)
  {
    v127 = *(v126 + 8);
    v128 = v126;
    swift_retain_n();
    v129 = v127(v122, v128);
    *(v124 + 160) = v129;
  }

  else
  {
    v129 = swift_retain_n();
  }

  *(v124 + 64) = sub_1AF59DFC8;
  *(v124 + 72) = v110;
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = v116;
  v13[12] = v124;
  MEMORY[0x1EEE9AC00](v129, v130);
  v131 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v131, v132);
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA22C;
  v134[5] = v131;
  v134[2] = sub_1AF5A9F50;
  v134[3] = v131;
  v134[6] = v131;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000017;
  *(v135 + 24) = 0x80000001AFF24730;
  *(v135 + 32) = v131;
  *(v135 + 40) = v88;
  *(v135 + 48) = 0;
  *(v135 + 56) = 1;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;

  if (v154)
  {
    v88 = (*(v154 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v88)
  {
    v137 = *(v136 + 8);
    v138 = v136;
    swift_retain_n();
    v139 = v137(v88, v138);
    *(v135 + 160) = v139;
  }

  else
  {
    v139 = swift_retain_n();
  }

  *(v135 + 64) = sub_1AF5A9954;
  *(v135 + 72) = v131;
  *(v135 + 216) = 0;
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  v13[13] = v135;
  MEMORY[0x1EEE9AC00](v139, v140);
  v141 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v141, v142);
  v143 = swift_getKeyPath();
  v144 = swift_allocObject();
  v144[4] = sub_1AF5A9534;
  v144[5] = v141;
  v144[2] = sub_1AF5A9F48;
  v144[3] = v141;
  v144[6] = v141;
  v145 = swift_allocObject();
  *(v145 + 112) = 1;
  *(v145 + 128) = 0;
  *(v145 + 136) = 0;
  *(v145 + 120) = 0;
  *(v145 + 160) = MEMORY[0x1E69E7CC0];
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  *(v145 + 216) = 0;
  strcpy((v145 + 16), "softDistance");
  *(v145 + 29) = 0;
  *(v145 + 30) = -5120;
  *(v145 + 32) = v141;
  v146 = MEMORY[0x1E69E6448];
  *(v145 + 40) = MEMORY[0x1E69E6448];
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 58) = 0;
  *(v145 + 184) = 0;
  *(v145 + 188) = 0;
  *(v145 + 192) = 0;
  *(v145 + 196) = 1;
  *(v145 + 200) = 0x1000100000000;
  *(v145 + 208) = 1;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0;
  *(v145 + 96) = v143;
  *(v145 + 104) = 0;
  *(v145 + 144) = xmmword_1AFE22A20;
  *(v145 + 80) = v144;
  *(v145 + 88) = &off_1F2535378;
  *(v145 + 210) = 0;

  if (v151)
  {
    v146 = (*(v151 + 8))();
  }

  v147 = swift_conformsToProtocol2();
  if (v147 && v146)
  {
    v148 = *(v147 + 8);
    v149 = v147;
    swift_retain_n();
    *(v145 + 160) = v148(v146, v149);
  }

  else
  {
    swift_retain_n();
  }

  *(v145 + 64) = sub_1AF5A9950;
  *(v145 + 72) = v141;
  *(v145 + 216) = 0;
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  v13[14] = v145;
  return v13;
}

void *sub_1AF500BE8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1AFE55190;
  sub_1AF59EE8C();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5AA3D8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A9F74;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF5A9970;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v13 = v152;
  *(v152 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AF5AA3D8;
  v17[5] = v14;
  v17[2] = sub_1AF5A9F74;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v18 + 216) = 0;
  *(v18 + 16) = 0x65727574786574;
  *(v18 + 24) = 0xE700000000000000;
  *(v18 + 32) = v14;
  *(v18 + 40) = &type metadata for Entity;
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
  *(v18 + 96) = v16;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE551B0;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v2)
  {
    v20 = *(v19 + 8);
    v21 = v19;
    swift_retain_n();
    v22 = v20(v2, v21);
    *(v18 + 160) = v22;
  }

  else
  {
    v22 = swift_retain_n();
  }

  *(v18 + 64) = sub_1AF5A9970;
  *(v18 + 72) = v14;
  *(v18 + 216) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v152 + 40) = v18;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v24, v25);
  v153 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v153, v26);
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA3D8;
  v29[5] = v27;
  v29[2] = sub_1AF5A9F64;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 216) = 0;
  strcpy((v30 + 16), "blendModeIndex");
  *(v30 + 31) = -18;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  v31 = swift_conformsToProtocol2();

  if (v31)
  {
    v32 = (*(v31 + 8))();
  }

  else
  {
    v32 = v28;
  }

  v33 = swift_conformsToProtocol2();
  v155 = v31;
  if (v33 && v32)
  {
    v34 = *(v33 + 8);
    v35 = v33;
    swift_retain_n();
    *(v30 + 160) = v34(v32, v35);
  }

  else
  {
    swift_retain_n();
  }

  *(v30 + 64) = sub_1AF5A9960;
  *(v30 + 72) = v27;
  *(v30 + 216) = 0;
  v36 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  v37 = swift_allocObject();
  v37[4] = sub_1AF59EEE0;
  v37[5] = v24;
  v37[2] = sub_1AF59EF1C;
  v37[3] = v24;
  v37[6] = v24;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = 0;
  *(v38 + 16) = 0x646F4D646E656C62;
  *(v38 + 24) = 0xE900000000000065;
  *(v38 + 32) = v24;
  *(v38 + 40) = &type metadata for BlendMode;
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
  *(v38 + 96) = v153;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();

  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    v41 = *(v40 + 8);
    v42 = v40;
    swift_retain_n();
    v43 = v41(v36, v42);
    *(v38 + 160) = v43;
  }

  else
  {
    v43 = swift_retain_n();
  }

  *(v38 + 64) = sub_1AF59EF5C;
  *(v38 + 72) = v24;
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = v30;
  *(v152 + 48) = v38;
  MEMORY[0x1EEE9AC00](v43, v44);
  v45 = swift_getKeyPath();
  v46 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF5A953C;
  v47[5] = v45;
  v47[2] = sub_1AF5A9F6C;
  v47[3] = v45;
  v47[6] = v45;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 216) = 0;
  *(v48 + 16) = 0x685466666F747563;
  *(v48 + 24) = 0xEF646C6F68736572;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 0;
  *(v48 + 184) = -1082130432;
  *(v48 + 188) = 0;
  *(v48 + 192) = 1065353216;
  *(v48 + 196) = 0;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v49 = swift_conformsToProtocol2();

  if (v49)
  {
    v50 = (*(v49 + 8))();
  }

  else
  {
    v50 = v46;
  }

  v51 = swift_conformsToProtocol2();
  v151 = v49;
  if (v51 && v50)
  {
    v52 = *(v51 + 8);
    v53 = v51;
    swift_retain_n();
    v54 = v52(v50, v53);
    *(v48 + 160) = v54;
  }

  else
  {
    v54 = swift_retain_n();
  }

  *(v48 + 64) = sub_1AF5A9968;
  *(v48 + 72) = v45;
  *(v48 + 216) = 0;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v152 + 56) = v48;
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF5AA238;
  v60[5] = v56;
  v60[2] = sub_1AF5A9F68;
  v60[3] = v56;
  v60[6] = v56;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 216) = 0;
  *(v61 + 16) = 0x676E69746867696CLL;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v56;
  *(v61 + 40) = v59;
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
  *(v61 + 96) = v58;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();

  if (v62)
  {
    v63 = (*(v62 + 8))();
  }

  else
  {
    v63 = v59;
  }

  v154 = v62;
  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    v65 = *(v64 + 8);
    v66 = v64;
    swift_retain_n();
    v67 = v65(v63, v66);
    *(v61 + 160) = v67;
  }

  else
  {
    v67 = swift_retain_n();
  }

  *(v61 + 64) = sub_1AF5A9964;
  *(v61 + 72) = v56;
  *(v61 + 216) = 0;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v152 + 64) = v61;
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v69, v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA238;
  v72[5] = v69;
  v72[2] = sub_1AF5A9F68;
  v72[3] = v69;
  v72[6] = v69;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  *(v73 + 16) = 0x72616C7563657073;
  *(v73 + 24) = 0xE800000000000000;
  *(v73 + 32) = v69;
  *(v73 + 40) = v59;
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

  if (v62)
  {
    v74 = (*(v62 + 8))();
  }

  else
  {
    v74 = v59;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    v76 = *(v75 + 8);
    v77 = v75;
    swift_retain_n();
    v78 = v76(v74, v77);
    *(v73 + 160) = v78;
  }

  else
  {
    v78 = swift_retain_n();
  }

  v80 = MEMORY[0x1E69E7360];
  *(v73 + 64) = sub_1AF5A9964;
  *(v73 + 72) = v69;
  *(v73 + 216) = 0;
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v152 + 72) = v73;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  v84[4] = sub_1AF5AA3D8;
  v84[5] = v83;
  v84[2] = sub_1AF5A9F64;
  v84[3] = v83;
  v84[6] = v83;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  *(v85 + 216) = 0;
  strcpy((v85 + 16), "sortModeIndex");
  *(v85 + 30) = -4864;
  *(v85 + 32) = v83;
  *(v85 + 40) = v80;
  *(v85 + 48) = 0;
  *(v85 + 56) = 1;
  *(v85 + 58) = 0;
  *(v85 + 184) = 0;
  *(v85 + 188) = 1;
  *(v85 + 192) = 0;
  *(v85 + 196) = 1;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;

  if (v155)
  {
    v86 = (*(v155 + 8))();
  }

  else
  {
    v86 = v80;
  }

  v87 = swift_conformsToProtocol2();
  v88 = MEMORY[0x1E69E6370];
  if (v87 && v86)
  {
    v89 = *(v87 + 8);
    v90 = v87;
    swift_retain_n();
    *(v85 + 160) = v89(v86, v90);
  }

  else
  {
    swift_retain_n();
  }

  *(v85 + 64) = sub_1AF5A9960;
  *(v85 + 72) = v83;
  *(v85 + 216) = 0;
  v91 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  v92 = swift_allocObject();
  v92[4] = sub_1AF59EF9C;
  v92[5] = v81;
  v92[2] = sub_1AF59EFC8;
  v92[3] = v81;
  v92[6] = v81;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = 0;
  *(v93 + 16) = 0x65646F4D74726F73;
  *(v93 + 24) = 0xE800000000000000;
  *(v93 + 32) = v81;
  *(v93 + 40) = &type metadata for ParticleSortMode;
  *(v93 + 48) = 0;
  *(v93 + 56) = 1;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 96) = 0;
  *(v93 + 104) = 0;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  v94 = swift_conformsToProtocol2();

  if (v94)
  {
    v91 = (*(v94 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v91)
  {
    v96 = *(v95 + 8);
    v97 = v95;
    swift_retain_n();
    v98 = v96(v91, v97);
    *(v93 + 160) = v98;
  }

  else
  {
    v98 = swift_retain_n();
  }

  *(v93 + 64) = sub_1AF59F024;
  *(v93 + 72) = v81;
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = v85;
  *(v152 + 80) = v93;
  MEMORY[0x1EEE9AC00](v98, v99);
  v100 = swift_getKeyPath();
  v101 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v102 = swift_allocObject();
  v102[4] = sub_1AF59E70C;
  v102[5] = v100;
  v102[2] = sub_1AF59F064;
  v102[3] = v100;
  v102[6] = v100;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 168) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 176) = 0;
  *(v103 + 216) = 0;
  *(v103 + 16) = 0x647265764F78616DLL;
  *(v103 + 24) = 0xEB00000000776172;
  *(v103 + 32) = v100;
  *(v103 + 40) = v101;
  *(v103 + 48) = 0;
  *(v103 + 56) = 1;
  *(v103 + 58) = 4;
  *(v103 + 184) = 1065353216;
  *(v103 + 188) = 0;
  *(v103 + 192) = 1132462080;
  *(v103 + 196) = 0;
  *(v103 + 200) = 0x1000100000000;
  *(v103 + 208) = 1;
  *(v103 + 96) = 0;
  *(v103 + 104) = 0;
  *(v103 + 64) = 0;
  *(v103 + 72) = 0;
  *(v103 + 144) = xmmword_1AFE22A20;
  *(v103 + 80) = v102;
  *(v103 + 88) = &off_1F2535378;
  *(v103 + 210) = 4;
  v104 = swift_conformsToProtocol2();

  if (v104)
  {
    v101 = (*(v104 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v101)
  {
    v106 = *(v105 + 8);
    v107 = v105;
    swift_retain_n();
    v108 = v106(v101, v107);
    *(v103 + 160) = v108;
  }

  else
  {
    v108 = swift_retain_n();
  }

  *(v103 + 64) = sub_1AF59F0D4;
  *(v103 + 72) = v100;
  *(v103 + 216) = 0;
  *(v103 + 168) = 0;
  *(v103 + 176) = 0;
  *(v152 + 88) = v103;
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v112, v113);
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AF5AA3D8;
  v115[5] = v114;
  v115[2] = sub_1AF5A9F64;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  *(v116 + 216) = 0;
  *(v116 + 16) = 0xD000000000000012;
  *(v116 + 24) = 0x80000001AFF2BB80;
  *(v116 + 32) = v114;
  v117 = MEMORY[0x1E69E7360];
  *(v116 + 40) = MEMORY[0x1E69E7360];
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;

  if (v155)
  {
    v117 = (*(v155 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v117)
  {
    v119 = v118;
    v120 = *(v118 + 8);
    swift_retain_n();
    v121 = v120(v117, v119);
    v13 = v152;
    *(v116 + 160) = v121;
  }

  else
  {
    swift_retain_n();
  }

  *(v116 + 64) = sub_1AF5A9960;
  *(v116 + 72) = v114;
  *(v116 + 216) = 0;
  v122 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  v123 = swift_allocObject();
  v123[4] = sub_1AF5AA240;
  v123[5] = v110;
  v123[2] = sub_1AF59F114;
  v123[3] = v110;
  v123[6] = v110;
  v124 = swift_allocObject();
  *(v124 + 112) = 1;
  *(v124 + 128) = 0;
  *(v124 + 136) = 0;
  *(v124 + 120) = 0;
  *(v124 + 160) = MEMORY[0x1E69E7CC0];
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = 0;
  strcpy((v124 + 16), "animationMode");
  *(v124 + 30) = -4864;
  *(v124 + 32) = v110;
  *(v124 + 40) = &type metadata for ParticleAnimationMode;
  *(v124 + 48) = 0;
  *(v124 + 56) = 1;
  *(v124 + 58) = 0;
  *(v124 + 184) = 0;
  *(v124 + 188) = 1;
  *(v124 + 192) = 0;
  *(v124 + 196) = 1;
  *(v124 + 200) = 0x1000100000000;
  *(v124 + 208) = 1;
  *(v124 + 64) = 0;
  *(v124 + 72) = 0;
  *(v124 + 96) = v112;
  *(v124 + 104) = 0;
  *(v124 + 144) = xmmword_1AFE22A20;
  *(v124 + 80) = v123;
  *(v124 + 88) = &off_1F2535378;
  *(v124 + 210) = 0;
  v125 = swift_conformsToProtocol2();

  if (v125)
  {
    v122 = (*(v125 + 8))();
  }

  v126 = swift_conformsToProtocol2();
  if (v126 && v122)
  {
    v127 = *(v126 + 8);
    v128 = v126;
    swift_retain_n();
    v129 = v127(v122, v128);
    *(v124 + 160) = v129;
  }

  else
  {
    v129 = swift_retain_n();
  }

  *(v124 + 64) = sub_1AF59F170;
  *(v124 + 72) = v110;
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = v116;
  v13[12] = v124;
  MEMORY[0x1EEE9AC00](v129, v130);
  v131 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v131, v132);
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA238;
  v134[5] = v131;
  v134[2] = sub_1AF5A9F68;
  v134[3] = v131;
  v134[6] = v131;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000017;
  *(v135 + 24) = 0x80000001AFF24730;
  *(v135 + 32) = v131;
  *(v135 + 40) = v88;
  *(v135 + 48) = 0;
  *(v135 + 56) = 1;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;

  if (v154)
  {
    v88 = (*(v154 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v88)
  {
    v137 = *(v136 + 8);
    v138 = v136;
    swift_retain_n();
    v139 = v137(v88, v138);
    *(v135 + 160) = v139;
  }

  else
  {
    v139 = swift_retain_n();
  }

  *(v135 + 64) = sub_1AF5A9964;
  *(v135 + 72) = v131;
  *(v135 + 216) = 0;
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  v13[13] = v135;
  MEMORY[0x1EEE9AC00](v139, v140);
  v141 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v141, v142);
  v143 = swift_getKeyPath();
  v144 = swift_allocObject();
  v144[4] = sub_1AF5A953C;
  v144[5] = v141;
  v144[2] = sub_1AF5A9F6C;
  v144[3] = v141;
  v144[6] = v141;
  v145 = swift_allocObject();
  *(v145 + 112) = 1;
  *(v145 + 128) = 0;
  *(v145 + 136) = 0;
  *(v145 + 120) = 0;
  *(v145 + 160) = MEMORY[0x1E69E7CC0];
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  *(v145 + 216) = 0;
  strcpy((v145 + 16), "softDistance");
  *(v145 + 29) = 0;
  *(v145 + 30) = -5120;
  *(v145 + 32) = v141;
  v146 = MEMORY[0x1E69E6448];
  *(v145 + 40) = MEMORY[0x1E69E6448];
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 58) = 0;
  *(v145 + 184) = 0;
  *(v145 + 188) = 0;
  *(v145 + 192) = 0;
  *(v145 + 196) = 1;
  *(v145 + 200) = 0x1000100000000;
  *(v145 + 208) = 1;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0;
  *(v145 + 96) = v143;
  *(v145 + 104) = 0;
  *(v145 + 144) = xmmword_1AFE22A20;
  *(v145 + 80) = v144;
  *(v145 + 88) = &off_1F2535378;
  *(v145 + 210) = 0;

  if (v151)
  {
    v146 = (*(v151 + 8))();
  }

  v147 = swift_conformsToProtocol2();
  if (v147 && v146)
  {
    v148 = *(v147 + 8);
    v149 = v147;
    swift_retain_n();
    *(v145 + 160) = v148(v146, v149);
  }

  else
  {
    swift_retain_n();
  }

  *(v145 + 64) = sub_1AF5A9968;
  *(v145 + 72) = v141;
  *(v145 + 216) = 0;
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  v13[14] = v145;
  return v13;
}

void *sub_1AF502AE4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1AFE55190;
  sub_1AF59D124();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CF5C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59D178;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59D1D4;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v13 = v152;
  *(v152 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AF5AA3D0;
  v17[5] = v14;
  v17[2] = sub_1AF5A9F30;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v18 + 216) = 0;
  *(v18 + 16) = 0x65727574786574;
  *(v18 + 24) = 0xE700000000000000;
  *(v18 + 32) = v14;
  *(v18 + 40) = &type metadata for Entity;
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
  *(v18 + 96) = v16;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE551B0;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v2)
  {
    v20 = *(v19 + 8);
    v21 = v19;
    swift_retain_n();
    v22 = v20(v2, v21);
    *(v18 + 160) = v22;
  }

  else
  {
    v22 = swift_retain_n();
  }

  *(v18 + 64) = sub_1AF5A9938;
  *(v18 + 72) = v14;
  *(v18 + 216) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v152 + 40) = v18;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v24, v25);
  v153 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v153, v26);
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF59CF5C;
  v29[5] = v27;
  v29[2] = sub_1AF59D214;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 216) = 0;
  strcpy((v30 + 16), "blendModeIndex");
  *(v30 + 31) = -18;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  v31 = swift_conformsToProtocol2();

  if (v31)
  {
    v32 = (*(v31 + 8))();
  }

  else
  {
    v32 = v28;
  }

  v33 = swift_conformsToProtocol2();
  v155 = v31;
  if (v33 && v32)
  {
    v34 = *(v33 + 8);
    v35 = v33;
    swift_retain_n();
    *(v30 + 160) = v34(v32, v35);
  }

  else
  {
    swift_retain_n();
  }

  *(v30 + 64) = sub_1AF59D270;
  *(v30 + 72) = v27;
  *(v30 + 216) = 0;
  v36 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  v37 = swift_allocObject();
  v37[4] = sub_1AF59D2B0;
  v37[5] = v24;
  v37[2] = sub_1AF59D2EC;
  v37[3] = v24;
  v37[6] = v24;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = 0;
  *(v38 + 16) = 0x646F4D646E656C62;
  *(v38 + 24) = 0xE900000000000065;
  *(v38 + 32) = v24;
  *(v38 + 40) = &type metadata for BlendMode;
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
  *(v38 + 96) = v153;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();

  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    v41 = *(v40 + 8);
    v42 = v40;
    swift_retain_n();
    v43 = v41(v36, v42);
    *(v38 + 160) = v43;
  }

  else
  {
    v43 = swift_retain_n();
  }

  *(v38 + 64) = sub_1AF59D32C;
  *(v38 + 72) = v24;
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = v30;
  *(v152 + 48) = v38;
  MEMORY[0x1EEE9AC00](v43, v44);
  v45 = swift_getKeyPath();
  v46 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF5A952C;
  v47[5] = v45;
  v47[2] = sub_1AF5A9F2C;
  v47[3] = v45;
  v47[6] = v45;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 216) = 0;
  *(v48 + 16) = 0x685466666F747563;
  *(v48 + 24) = 0xEF646C6F68736572;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 0;
  *(v48 + 184) = -1082130432;
  *(v48 + 188) = 0;
  *(v48 + 192) = 1065353216;
  *(v48 + 196) = 0;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v49 = swift_conformsToProtocol2();

  if (v49)
  {
    v50 = (*(v49 + 8))();
  }

  else
  {
    v50 = v46;
  }

  v51 = swift_conformsToProtocol2();
  v151 = v49;
  if (v51 && v50)
  {
    v52 = *(v51 + 8);
    v53 = v51;
    swift_retain_n();
    v54 = v52(v50, v53);
    *(v48 + 160) = v54;
  }

  else
  {
    v54 = swift_retain_n();
  }

  *(v48 + 64) = sub_1AF5A993C;
  *(v48 + 72) = v45;
  *(v48 + 216) = 0;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v152 + 56) = v48;
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF59D36C;
  v60[5] = v56;
  v60[2] = sub_1AF59D398;
  v60[3] = v56;
  v60[6] = v56;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 216) = 0;
  *(v61 + 16) = 0x676E69746867696CLL;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v56;
  *(v61 + 40) = v59;
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
  *(v61 + 96) = v58;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();

  if (v62)
  {
    v63 = (*(v62 + 8))();
  }

  else
  {
    v63 = v59;
  }

  v154 = v62;
  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    v65 = *(v64 + 8);
    v66 = v64;
    swift_retain_n();
    v67 = v65(v63, v66);
    *(v61 + 160) = v67;
  }

  else
  {
    v67 = swift_retain_n();
  }

  *(v61 + 64) = sub_1AF59D3F4;
  *(v61 + 72) = v56;
  *(v61 + 216) = 0;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v152 + 64) = v61;
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v69, v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA220;
  v72[5] = v69;
  v72[2] = sub_1AF5A9F34;
  v72[3] = v69;
  v72[6] = v69;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  *(v73 + 16) = 0x72616C7563657073;
  *(v73 + 24) = 0xE800000000000000;
  *(v73 + 32) = v69;
  *(v73 + 40) = v59;
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

  if (v62)
  {
    v74 = (*(v62 + 8))();
  }

  else
  {
    v74 = v59;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    v76 = *(v75 + 8);
    v77 = v75;
    swift_retain_n();
    v78 = v76(v74, v77);
    *(v73 + 160) = v78;
  }

  else
  {
    v78 = swift_retain_n();
  }

  v80 = MEMORY[0x1E69E7360];
  *(v73 + 64) = sub_1AF5A9940;
  *(v73 + 72) = v69;
  *(v73 + 216) = 0;
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v152 + 72) = v73;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  v84[4] = sub_1AF5AA3D0;
  v84[5] = v83;
  v84[2] = sub_1AF5A9F38;
  v84[3] = v83;
  v84[6] = v83;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  *(v85 + 216) = 0;
  strcpy((v85 + 16), "sortModeIndex");
  *(v85 + 30) = -4864;
  *(v85 + 32) = v83;
  *(v85 + 40) = v80;
  *(v85 + 48) = 0;
  *(v85 + 56) = 1;
  *(v85 + 58) = 0;
  *(v85 + 184) = 0;
  *(v85 + 188) = 1;
  *(v85 + 192) = 0;
  *(v85 + 196) = 1;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;

  if (v155)
  {
    v86 = (*(v155 + 8))();
  }

  else
  {
    v86 = v80;
  }

  v87 = swift_conformsToProtocol2();
  v88 = MEMORY[0x1E69E6370];
  if (v87 && v86)
  {
    v89 = *(v87 + 8);
    v90 = v87;
    swift_retain_n();
    *(v85 + 160) = v89(v86, v90);
  }

  else
  {
    swift_retain_n();
  }

  *(v85 + 64) = sub_1AF5A9944;
  *(v85 + 72) = v83;
  *(v85 + 216) = 0;
  v91 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  v92 = swift_allocObject();
  v92[4] = sub_1AF59D434;
  v92[5] = v81;
  v92[2] = sub_1AF59D460;
  v92[3] = v81;
  v92[6] = v81;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = 0;
  *(v93 + 16) = 0x65646F4D74726F73;
  *(v93 + 24) = 0xE800000000000000;
  *(v93 + 32) = v81;
  *(v93 + 40) = &type metadata for ParticleSortMode;
  *(v93 + 48) = 0;
  *(v93 + 56) = 1;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 96) = 0;
  *(v93 + 104) = 0;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  v94 = swift_conformsToProtocol2();

  if (v94)
  {
    v91 = (*(v94 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v91)
  {
    v96 = *(v95 + 8);
    v97 = v95;
    swift_retain_n();
    v98 = v96(v91, v97);
    *(v93 + 160) = v98;
  }

  else
  {
    v98 = swift_retain_n();
  }

  *(v93 + 64) = sub_1AF59D4BC;
  *(v93 + 72) = v81;
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = v85;
  *(v152 + 80) = v93;
  MEMORY[0x1EEE9AC00](v98, v99);
  v100 = swift_getKeyPath();
  v101 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v102 = swift_allocObject();
  v102[4] = sub_1AF59CE8C;
  v102[5] = v100;
  v102[2] = sub_1AF59D4FC;
  v102[3] = v100;
  v102[6] = v100;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 168) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 176) = 0;
  *(v103 + 216) = 0;
  *(v103 + 16) = 0x647265764F78616DLL;
  *(v103 + 24) = 0xEB00000000776172;
  *(v103 + 32) = v100;
  *(v103 + 40) = v101;
  *(v103 + 48) = 0;
  *(v103 + 56) = 1;
  *(v103 + 58) = 4;
  *(v103 + 184) = 1065353216;
  *(v103 + 188) = 0;
  *(v103 + 192) = 1132462080;
  *(v103 + 196) = 0;
  *(v103 + 200) = 0x1000100000000;
  *(v103 + 208) = 1;
  *(v103 + 96) = 0;
  *(v103 + 104) = 0;
  *(v103 + 64) = 0;
  *(v103 + 72) = 0;
  *(v103 + 144) = xmmword_1AFE22A20;
  *(v103 + 80) = v102;
  *(v103 + 88) = &off_1F2535378;
  *(v103 + 210) = 4;
  v104 = swift_conformsToProtocol2();

  if (v104)
  {
    v101 = (*(v104 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v101)
  {
    v106 = *(v105 + 8);
    v107 = v105;
    swift_retain_n();
    v108 = v106(v101, v107);
    *(v103 + 160) = v108;
  }

  else
  {
    v108 = swift_retain_n();
  }

  *(v103 + 64) = sub_1AF59D56C;
  *(v103 + 72) = v100;
  *(v103 + 216) = 0;
  *(v103 + 168) = 0;
  *(v103 + 176) = 0;
  *(v152 + 88) = v103;
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v112, v113);
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AF5AA3D0;
  v115[5] = v114;
  v115[2] = sub_1AF5A9F38;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  *(v116 + 216) = 0;
  *(v116 + 16) = 0xD000000000000012;
  *(v116 + 24) = 0x80000001AFF2BB80;
  *(v116 + 32) = v114;
  v117 = MEMORY[0x1E69E7360];
  *(v116 + 40) = MEMORY[0x1E69E7360];
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;

  if (v155)
  {
    v117 = (*(v155 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v117)
  {
    v119 = v118;
    v120 = *(v118 + 8);
    swift_retain_n();
    v121 = v120(v117, v119);
    v13 = v152;
    *(v116 + 160) = v121;
  }

  else
  {
    swift_retain_n();
  }

  *(v116 + 64) = sub_1AF5A9944;
  *(v116 + 72) = v114;
  *(v116 + 216) = 0;
  v122 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  v123 = swift_allocObject();
  v123[4] = sub_1AF59D5AC;
  v123[5] = v110;
  v123[2] = sub_1AF59D5D8;
  v123[3] = v110;
  v123[6] = v110;
  v124 = swift_allocObject();
  *(v124 + 112) = 1;
  *(v124 + 128) = 0;
  *(v124 + 136) = 0;
  *(v124 + 120) = 0;
  *(v124 + 160) = MEMORY[0x1E69E7CC0];
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = 0;
  strcpy((v124 + 16), "animationMode");
  *(v124 + 30) = -4864;
  *(v124 + 32) = v110;
  *(v124 + 40) = &type metadata for ParticleAnimationMode;
  *(v124 + 48) = 0;
  *(v124 + 56) = 1;
  *(v124 + 58) = 0;
  *(v124 + 184) = 0;
  *(v124 + 188) = 1;
  *(v124 + 192) = 0;
  *(v124 + 196) = 1;
  *(v124 + 200) = 0x1000100000000;
  *(v124 + 208) = 1;
  *(v124 + 64) = 0;
  *(v124 + 72) = 0;
  *(v124 + 96) = v112;
  *(v124 + 104) = 0;
  *(v124 + 144) = xmmword_1AFE22A20;
  *(v124 + 80) = v123;
  *(v124 + 88) = &off_1F2535378;
  *(v124 + 210) = 0;
  v125 = swift_conformsToProtocol2();

  if (v125)
  {
    v122 = (*(v125 + 8))();
  }

  v126 = swift_conformsToProtocol2();
  if (v126 && v122)
  {
    v127 = *(v126 + 8);
    v128 = v126;
    swift_retain_n();
    v129 = v127(v122, v128);
    *(v124 + 160) = v129;
  }

  else
  {
    v129 = swift_retain_n();
  }

  *(v124 + 64) = sub_1AF59D634;
  *(v124 + 72) = v110;
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = v116;
  v13[12] = v124;
  MEMORY[0x1EEE9AC00](v129, v130);
  v131 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v131, v132);
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA220;
  v134[5] = v131;
  v134[2] = sub_1AF5A9F34;
  v134[3] = v131;
  v134[6] = v131;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000017;
  *(v135 + 24) = 0x80000001AFF24730;
  *(v135 + 32) = v131;
  *(v135 + 40) = v88;
  *(v135 + 48) = 0;
  *(v135 + 56) = 1;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;

  if (v154)
  {
    v88 = (*(v154 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v88)
  {
    v137 = *(v136 + 8);
    v138 = v136;
    swift_retain_n();
    v139 = v137(v88, v138);
    *(v135 + 160) = v139;
  }

  else
  {
    v139 = swift_retain_n();
  }

  *(v135 + 64) = sub_1AF5A9940;
  *(v135 + 72) = v131;
  *(v135 + 216) = 0;
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  v13[13] = v135;
  MEMORY[0x1EEE9AC00](v139, v140);
  v141 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v141, v142);
  v143 = swift_getKeyPath();
  v144 = swift_allocObject();
  v144[4] = sub_1AF5A952C;
  v144[5] = v141;
  v144[2] = sub_1AF5A9F2C;
  v144[3] = v141;
  v144[6] = v141;
  v145 = swift_allocObject();
  *(v145 + 112) = 1;
  *(v145 + 128) = 0;
  *(v145 + 136) = 0;
  *(v145 + 120) = 0;
  *(v145 + 160) = MEMORY[0x1E69E7CC0];
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  *(v145 + 216) = 0;
  strcpy((v145 + 16), "softDistance");
  *(v145 + 29) = 0;
  *(v145 + 30) = -5120;
  *(v145 + 32) = v141;
  v146 = MEMORY[0x1E69E6448];
  *(v145 + 40) = MEMORY[0x1E69E6448];
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 58) = 0;
  *(v145 + 184) = 0;
  *(v145 + 188) = 0;
  *(v145 + 192) = 0;
  *(v145 + 196) = 1;
  *(v145 + 200) = 0x1000100000000;
  *(v145 + 208) = 1;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0;
  *(v145 + 96) = v143;
  *(v145 + 104) = 0;
  *(v145 + 144) = xmmword_1AFE22A20;
  *(v145 + 80) = v144;
  *(v145 + 88) = &off_1F2535378;
  *(v145 + 210) = 0;

  if (v151)
  {
    v146 = (*(v151 + 8))();
  }

  v147 = swift_conformsToProtocol2();
  if (v147 && v146)
  {
    v148 = *(v147 + 8);
    v149 = v147;
    swift_retain_n();
    *(v145 + 160) = v148(v146, v149);
  }

  else
  {
    swift_retain_n();
  }

  *(v145 + 64) = sub_1AF5A993C;
  *(v145 + 72) = v141;
  *(v145 + 216) = 0;
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  v13[14] = v145;
  return v13;
}

void *sub_1AF5049E0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1AFE55190;
  sub_1AF59FD90();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59FDE4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59FE28;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59FE84;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v13 = v152;
  *(v152 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AF5AA3E0;
  v17[5] = v14;
  v17[2] = sub_1AF5A9FB4;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v18 + 216) = 0;
  *(v18 + 16) = 0x65727574786574;
  *(v18 + 24) = 0xE700000000000000;
  *(v18 + 32) = v14;
  *(v18 + 40) = &type metadata for Entity;
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
  *(v18 + 96) = v16;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE551B0;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v2)
  {
    v20 = *(v19 + 8);
    v21 = v19;
    swift_retain_n();
    v22 = v20(v2, v21);
    *(v18 + 160) = v22;
  }

  else
  {
    v22 = swift_retain_n();
  }

  *(v18 + 64) = sub_1AF5A9990;
  *(v18 + 72) = v14;
  *(v18 + 216) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v152 + 40) = v18;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v24, v25);
  v153 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v153, v26);
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF59FDE4;
  v29[5] = v27;
  v29[2] = sub_1AF59FEC4;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 216) = 0;
  strcpy((v30 + 16), "blendModeIndex");
  *(v30 + 31) = -18;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  v31 = swift_conformsToProtocol2();

  if (v31)
  {
    v32 = (*(v31 + 8))();
  }

  else
  {
    v32 = v28;
  }

  v33 = swift_conformsToProtocol2();
  v155 = v31;
  if (v33 && v32)
  {
    v34 = *(v33 + 8);
    v35 = v33;
    swift_retain_n();
    *(v30 + 160) = v34(v32, v35);
  }

  else
  {
    swift_retain_n();
  }

  *(v30 + 64) = sub_1AF59FF20;
  *(v30 + 72) = v27;
  *(v30 + 216) = 0;
  v36 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  v37 = swift_allocObject();
  v37[4] = sub_1AF59FF60;
  v37[5] = v24;
  v37[2] = sub_1AF59FFAC;
  v37[3] = v24;
  v37[6] = v24;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = 0;
  *(v38 + 16) = 0x646F4D646E656C62;
  *(v38 + 24) = 0xE900000000000065;
  *(v38 + 32) = v24;
  *(v38 + 40) = &type metadata for BlendMode;
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
  *(v38 + 96) = v153;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();

  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    v41 = *(v40 + 8);
    v42 = v40;
    swift_retain_n();
    v43 = v41(v36, v42);
    *(v38 + 160) = v43;
  }

  else
  {
    v43 = swift_retain_n();
  }

  *(v38 + 64) = sub_1AF59FFEC;
  *(v38 + 72) = v24;
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = v30;
  *(v152 + 48) = v38;
  MEMORY[0x1EEE9AC00](v43, v44);
  v45 = swift_getKeyPath();
  v46 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF5A002C;
  v47[5] = v45;
  v47[2] = sub_1AF5A0070;
  v47[3] = v45;
  v47[6] = v45;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 216) = 0;
  *(v48 + 16) = 0x685466666F747563;
  *(v48 + 24) = 0xEF646C6F68736572;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 0;
  *(v48 + 184) = -1082130432;
  *(v48 + 188) = 0;
  *(v48 + 192) = 1065353216;
  *(v48 + 196) = 0;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v49 = swift_conformsToProtocol2();

  if (v49)
  {
    v50 = (*(v49 + 8))();
  }

  else
  {
    v50 = v46;
  }

  v51 = swift_conformsToProtocol2();
  v151 = v49;
  if (v51 && v50)
  {
    v52 = *(v51 + 8);
    v53 = v51;
    swift_retain_n();
    v54 = v52(v50, v53);
    *(v48 + 160) = v54;
  }

  else
  {
    v54 = swift_retain_n();
  }

  *(v48 + 64) = sub_1AF5A00CC;
  *(v48 + 72) = v45;
  *(v48 + 216) = 0;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v152 + 56) = v48;
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF5A010C;
  v60[5] = v56;
  v60[2] = sub_1AF5A0148;
  v60[3] = v56;
  v60[6] = v56;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 216) = 0;
  *(v61 + 16) = 0x676E69746867696CLL;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v56;
  *(v61 + 40) = v59;
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
  *(v61 + 96) = v58;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();

  if (v62)
  {
    v63 = (*(v62 + 8))();
  }

  else
  {
    v63 = v59;
  }

  v154 = v62;
  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    v65 = *(v64 + 8);
    v66 = v64;
    swift_retain_n();
    v67 = v65(v63, v66);
    *(v61 + 160) = v67;
  }

  else
  {
    v67 = swift_retain_n();
  }

  *(v61 + 64) = sub_1AF5A01A4;
  *(v61 + 72) = v56;
  *(v61 + 216) = 0;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v152 + 64) = v61;
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v69, v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA254;
  v72[5] = v69;
  v72[2] = sub_1AF5A9FB8;
  v72[3] = v69;
  v72[6] = v69;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  *(v73 + 16) = 0x72616C7563657073;
  *(v73 + 24) = 0xE800000000000000;
  *(v73 + 32) = v69;
  *(v73 + 40) = v59;
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

  if (v62)
  {
    v74 = (*(v62 + 8))();
  }

  else
  {
    v74 = v59;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    v76 = *(v75 + 8);
    v77 = v75;
    swift_retain_n();
    v78 = v76(v74, v77);
    *(v73 + 160) = v78;
  }

  else
  {
    v78 = swift_retain_n();
  }

  v80 = MEMORY[0x1E69E7360];
  *(v73 + 64) = sub_1AF5A9994;
  *(v73 + 72) = v69;
  *(v73 + 216) = 0;
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v152 + 72) = v73;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  v84[4] = sub_1AF5AA3E0;
  v84[5] = v83;
  v84[2] = sub_1AF5A9FBC;
  v84[3] = v83;
  v84[6] = v83;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  *(v85 + 216) = 0;
  strcpy((v85 + 16), "sortModeIndex");
  *(v85 + 30) = -4864;
  *(v85 + 32) = v83;
  *(v85 + 40) = v80;
  *(v85 + 48) = 0;
  *(v85 + 56) = 1;
  *(v85 + 58) = 0;
  *(v85 + 184) = 0;
  *(v85 + 188) = 1;
  *(v85 + 192) = 0;
  *(v85 + 196) = 1;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;

  if (v155)
  {
    v86 = (*(v155 + 8))();
  }

  else
  {
    v86 = v80;
  }

  v87 = swift_conformsToProtocol2();
  v88 = MEMORY[0x1E69E6370];
  if (v87 && v86)
  {
    v89 = *(v87 + 8);
    v90 = v87;
    swift_retain_n();
    *(v85 + 160) = v89(v86, v90);
  }

  else
  {
    swift_retain_n();
  }

  *(v85 + 64) = sub_1AF5A9998;
  *(v85 + 72) = v83;
  *(v85 + 216) = 0;
  v91 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  v92 = swift_allocObject();
  v92[4] = sub_1AF5A01E4;
  v92[5] = v81;
  v92[2] = sub_1AF5A0220;
  v92[3] = v81;
  v92[6] = v81;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = 0;
  *(v93 + 16) = 0x65646F4D74726F73;
  *(v93 + 24) = 0xE800000000000000;
  *(v93 + 32) = v81;
  *(v93 + 40) = &type metadata for ParticleSortMode;
  *(v93 + 48) = 0;
  *(v93 + 56) = 1;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 96) = 0;
  *(v93 + 104) = 0;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  v94 = swift_conformsToProtocol2();

  if (v94)
  {
    v91 = (*(v94 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v91)
  {
    v96 = *(v95 + 8);
    v97 = v95;
    swift_retain_n();
    v98 = v96(v91, v97);
    *(v93 + 160) = v98;
  }

  else
  {
    v98 = swift_retain_n();
  }

  *(v93 + 64) = sub_1AF5A027C;
  *(v93 + 72) = v81;
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = v85;
  *(v152 + 80) = v93;
  MEMORY[0x1EEE9AC00](v98, v99);
  v100 = swift_getKeyPath();
  v101 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v102 = swift_allocObject();
  v102[4] = sub_1AF5A002C;
  v102[5] = v100;
  v102[2] = sub_1AF5A02BC;
  v102[3] = v100;
  v102[6] = v100;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 168) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 176) = 0;
  *(v103 + 216) = 0;
  *(v103 + 16) = 0x647265764F78616DLL;
  *(v103 + 24) = 0xEB00000000776172;
  *(v103 + 32) = v100;
  *(v103 + 40) = v101;
  *(v103 + 48) = 0;
  *(v103 + 56) = 1;
  *(v103 + 58) = 4;
  *(v103 + 184) = 1065353216;
  *(v103 + 188) = 0;
  *(v103 + 192) = 1132462080;
  *(v103 + 196) = 0;
  *(v103 + 200) = 0x1000100000000;
  *(v103 + 208) = 1;
  *(v103 + 96) = 0;
  *(v103 + 104) = 0;
  *(v103 + 64) = 0;
  *(v103 + 72) = 0;
  *(v103 + 144) = xmmword_1AFE22A20;
  *(v103 + 80) = v102;
  *(v103 + 88) = &off_1F2535378;
  *(v103 + 210) = 4;
  v104 = swift_conformsToProtocol2();

  if (v104)
  {
    v101 = (*(v104 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v101)
  {
    v106 = *(v105 + 8);
    v107 = v105;
    swift_retain_n();
    v108 = v106(v101, v107);
    *(v103 + 160) = v108;
  }

  else
  {
    v108 = swift_retain_n();
  }

  *(v103 + 64) = sub_1AF5A032C;
  *(v103 + 72) = v100;
  *(v103 + 216) = 0;
  *(v103 + 168) = 0;
  *(v103 + 176) = 0;
  *(v152 + 88) = v103;
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v112, v113);
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AF5AA3E0;
  v115[5] = v114;
  v115[2] = sub_1AF5A9FBC;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  *(v116 + 216) = 0;
  *(v116 + 16) = 0xD000000000000012;
  *(v116 + 24) = 0x80000001AFF2BB80;
  *(v116 + 32) = v114;
  v117 = MEMORY[0x1E69E7360];
  *(v116 + 40) = MEMORY[0x1E69E7360];
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;

  if (v155)
  {
    v117 = (*(v155 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v117)
  {
    v119 = v118;
    v120 = *(v118 + 8);
    swift_retain_n();
    v121 = v120(v117, v119);
    v13 = v152;
    *(v116 + 160) = v121;
  }

  else
  {
    swift_retain_n();
  }

  *(v116 + 64) = sub_1AF5A9998;
  *(v116 + 72) = v114;
  *(v116 + 216) = 0;
  v122 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  v123 = swift_allocObject();
  v123[4] = sub_1AF5A036C;
  v123[5] = v110;
  v123[2] = sub_1AF5A03A8;
  v123[3] = v110;
  v123[6] = v110;
  v124 = swift_allocObject();
  *(v124 + 112) = 1;
  *(v124 + 128) = 0;
  *(v124 + 136) = 0;
  *(v124 + 120) = 0;
  *(v124 + 160) = MEMORY[0x1E69E7CC0];
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = 0;
  strcpy((v124 + 16), "animationMode");
  *(v124 + 30) = -4864;
  *(v124 + 32) = v110;
  *(v124 + 40) = &type metadata for ParticleAnimationMode;
  *(v124 + 48) = 0;
  *(v124 + 56) = 1;
  *(v124 + 58) = 0;
  *(v124 + 184) = 0;
  *(v124 + 188) = 1;
  *(v124 + 192) = 0;
  *(v124 + 196) = 1;
  *(v124 + 200) = 0x1000100000000;
  *(v124 + 208) = 1;
  *(v124 + 64) = 0;
  *(v124 + 72) = 0;
  *(v124 + 96) = v112;
  *(v124 + 104) = 0;
  *(v124 + 144) = xmmword_1AFE22A20;
  *(v124 + 80) = v123;
  *(v124 + 88) = &off_1F2535378;
  *(v124 + 210) = 0;
  v125 = swift_conformsToProtocol2();

  if (v125)
  {
    v122 = (*(v125 + 8))();
  }

  v126 = swift_conformsToProtocol2();
  if (v126 && v122)
  {
    v127 = *(v126 + 8);
    v128 = v126;
    swift_retain_n();
    v129 = v127(v122, v128);
    *(v124 + 160) = v129;
  }

  else
  {
    v129 = swift_retain_n();
  }

  *(v124 + 64) = sub_1AF5A0404;
  *(v124 + 72) = v110;
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = v116;
  v13[12] = v124;
  MEMORY[0x1EEE9AC00](v129, v130);
  v131 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v131, v132);
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA254;
  v134[5] = v131;
  v134[2] = sub_1AF5A9FB8;
  v134[3] = v131;
  v134[6] = v131;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000017;
  *(v135 + 24) = 0x80000001AFF24730;
  *(v135 + 32) = v131;
  *(v135 + 40) = v88;
  *(v135 + 48) = 0;
  *(v135 + 56) = 1;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;

  if (v154)
  {
    v88 = (*(v154 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v88)
  {
    v137 = *(v136 + 8);
    v138 = v136;
    swift_retain_n();
    v139 = v137(v88, v138);
    *(v135 + 160) = v139;
  }

  else
  {
    v139 = swift_retain_n();
  }

  *(v135 + 64) = sub_1AF5A9994;
  *(v135 + 72) = v131;
  *(v135 + 216) = 0;
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  v13[13] = v135;
  MEMORY[0x1EEE9AC00](v139, v140);
  v141 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v141, v142);
  v143 = swift_getKeyPath();
  v144 = swift_allocObject();
  v144[4] = sub_1AF5A954C;
  v144[5] = v141;
  v144[2] = sub_1AF5A9FC0;
  v144[3] = v141;
  v144[6] = v141;
  v145 = swift_allocObject();
  *(v145 + 112) = 1;
  *(v145 + 128) = 0;
  *(v145 + 136) = 0;
  *(v145 + 120) = 0;
  *(v145 + 160) = MEMORY[0x1E69E7CC0];
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  *(v145 + 216) = 0;
  strcpy((v145 + 16), "softDistance");
  *(v145 + 29) = 0;
  *(v145 + 30) = -5120;
  *(v145 + 32) = v141;
  v146 = MEMORY[0x1E69E6448];
  *(v145 + 40) = MEMORY[0x1E69E6448];
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 58) = 0;
  *(v145 + 184) = 0;
  *(v145 + 188) = 0;
  *(v145 + 192) = 0;
  *(v145 + 196) = 1;
  *(v145 + 200) = 0x1000100000000;
  *(v145 + 208) = 1;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0;
  *(v145 + 96) = v143;
  *(v145 + 104) = 0;
  *(v145 + 144) = xmmword_1AFE22A20;
  *(v145 + 80) = v144;
  *(v145 + 88) = &off_1F2535378;
  *(v145 + 210) = 0;

  if (v151)
  {
    v146 = (*(v151 + 8))();
  }

  v147 = swift_conformsToProtocol2();
  if (v147 && v146)
  {
    v148 = *(v147 + 8);
    v149 = v147;
    swift_retain_n();
    *(v145 + 160) = v148(v146, v149);
  }

  else
  {
    swift_retain_n();
  }

  *(v145 + 64) = sub_1AF5A999C;
  *(v145 + 72) = v141;
  *(v145 + 216) = 0;
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  v13[14] = v145;
  return v13;
}

void *sub_1AF5068DC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v152 = swift_allocObject();
  *(v152 + 16) = xmmword_1AFE55190;
  sub_1AF5A0C3C();
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A09B4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A0C90;
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
  *(v4 + 176) = 0;
  *(v4 + 216) = 0;
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF22E00;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Entity;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 96) = v1;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE551E0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 8))(&type metadata for Entity, v5);
  }

  else
  {
    v7 = &type metadata for Entity;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = *(v8 + 8);
    v10 = v8;
    swift_retain_n();
    v11 = v9(v7, v10);
    *(v4 + 160) = v11;
  }

  else
  {
    v11 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF5A0CEC;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  v13 = v152;
  *(v152 + 32) = v4;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v14, v15);
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AF5AA3E4;
  v17[5] = v14;
  v17[2] = sub_1AF5A9FE0;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v18 + 216) = 0;
  *(v18 + 16) = 0x65727574786574;
  *(v18 + 24) = 0xE700000000000000;
  *(v18 + 32) = v14;
  *(v18 + 40) = &type metadata for Entity;
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
  *(v18 + 96) = v16;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE551B0;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;

  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v2)
  {
    v20 = *(v19 + 8);
    v21 = v19;
    swift_retain_n();
    v22 = v20(v2, v21);
    *(v18 + 160) = v22;
  }

  else
  {
    v22 = swift_retain_n();
  }

  *(v18 + 64) = sub_1AF5A99AC;
  *(v18 + 72) = v14;
  *(v18 + 216) = 0;
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;
  *(v152 + 40) = v18;
  MEMORY[0x1EEE9AC00](v22, v23);
  v24 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v24, v25);
  v153 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v153, v26);
  v27 = swift_getKeyPath();
  v28 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA3E4;
  v29[5] = v27;
  v29[2] = sub_1AF5A9FDC;
  v29[3] = v27;
  v29[6] = v27;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  *(v30 + 216) = 0;
  strcpy((v30 + 16), "blendModeIndex");
  *(v30 + 31) = -18;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  v31 = swift_conformsToProtocol2();

  if (v31)
  {
    v32 = (*(v31 + 8))();
  }

  else
  {
    v32 = v28;
  }

  v33 = swift_conformsToProtocol2();
  v155 = v31;
  if (v33 && v32)
  {
    v34 = *(v33 + 8);
    v35 = v33;
    swift_retain_n();
    *(v30 + 160) = v34(v32, v35);
  }

  else
  {
    swift_retain_n();
  }

  *(v30 + 64) = sub_1AF5A99B0;
  *(v30 + 72) = v27;
  *(v30 + 216) = 0;
  v36 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;
  v37 = swift_allocObject();
  v37[4] = sub_1AF5A0D2C;
  v37[5] = v24;
  v37[2] = sub_1AF5A0D68;
  v37[3] = v24;
  v37[6] = v24;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = 0;
  *(v38 + 16) = 0x646F4D646E656C62;
  *(v38 + 24) = 0xE900000000000065;
  *(v38 + 32) = v24;
  *(v38 + 40) = &type metadata for BlendMode;
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
  *(v38 + 96) = v153;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 0;
  v39 = swift_conformsToProtocol2();

  if (v39)
  {
    v36 = (*(v39 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v36)
  {
    v41 = *(v40 + 8);
    v42 = v40;
    swift_retain_n();
    v43 = v41(v36, v42);
    *(v38 + 160) = v43;
  }

  else
  {
    v43 = swift_retain_n();
  }

  *(v38 + 64) = sub_1AF5A0DA8;
  *(v38 + 72) = v24;
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;
  *(v38 + 216) = v30;
  *(v152 + 48) = v38;
  MEMORY[0x1EEE9AC00](v43, v44);
  v45 = swift_getKeyPath();
  v46 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF5A0DE8;
  v47[5] = v45;
  v47[2] = sub_1AF5A0E1C;
  v47[3] = v45;
  v47[6] = v45;
  v48 = swift_allocObject();
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 216) = 0;
  *(v48 + 16) = 0x685466666F747563;
  *(v48 + 24) = 0xEF646C6F68736572;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  *(v48 + 48) = 0;
  *(v48 + 56) = 1;
  *(v48 + 58) = 0;
  *(v48 + 184) = -1082130432;
  *(v48 + 188) = 0;
  *(v48 + 192) = 1065353216;
  *(v48 + 196) = 0;
  *(v48 + 200) = 0x1000100000000;
  *(v48 + 208) = 1;
  *(v48 + 96) = 0;
  *(v48 + 104) = 0;
  *(v48 + 64) = 0;
  *(v48 + 72) = 0;
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v49 = swift_conformsToProtocol2();

  if (v49)
  {
    v50 = (*(v49 + 8))();
  }

  else
  {
    v50 = v46;
  }

  v51 = swift_conformsToProtocol2();
  v151 = v49;
  if (v51 && v50)
  {
    v52 = *(v51 + 8);
    v53 = v51;
    swift_retain_n();
    v54 = v52(v50, v53);
    *(v48 + 160) = v54;
  }

  else
  {
    v54 = swift_retain_n();
  }

  *(v48 + 64) = sub_1AF5A0E78;
  *(v48 + 72) = v45;
  *(v48 + 216) = 0;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v152 + 56) = v48;
  MEMORY[0x1EEE9AC00](v54, v55);
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF5A0EB8;
  v60[5] = v56;
  v60[2] = sub_1AF5A0EE4;
  v60[3] = v56;
  v60[6] = v56;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v61 + 216) = 0;
  *(v61 + 16) = 0x676E69746867696CLL;
  *(v61 + 24) = 0xE800000000000000;
  *(v61 + 32) = v56;
  *(v61 + 40) = v59;
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
  *(v61 + 96) = v58;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();

  if (v62)
  {
    v63 = (*(v62 + 8))();
  }

  else
  {
    v63 = v59;
  }

  v154 = v62;
  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    v65 = *(v64 + 8);
    v66 = v64;
    swift_retain_n();
    v67 = v65(v63, v66);
    *(v61 + 160) = v67;
  }

  else
  {
    v67 = swift_retain_n();
  }

  *(v61 + 64) = sub_1AF5A0F40;
  *(v61 + 72) = v56;
  *(v61 + 216) = 0;
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;
  *(v152 + 64) = v61;
  MEMORY[0x1EEE9AC00](v67, v68);
  v69 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v69, v70);
  v71 = swift_getKeyPath();
  v72 = swift_allocObject();
  v72[4] = sub_1AF5AA264;
  v72[5] = v69;
  v72[2] = sub_1AF5A9FE4;
  v72[3] = v69;
  v72[6] = v69;
  v73 = swift_allocObject();
  *(v73 + 112) = 1;
  *(v73 + 128) = 0;
  *(v73 + 136) = 0;
  *(v73 + 120) = 0;
  *(v73 + 160) = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v73 + 216) = 0;
  *(v73 + 16) = 0x72616C7563657073;
  *(v73 + 24) = 0xE800000000000000;
  *(v73 + 32) = v69;
  *(v73 + 40) = v59;
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

  if (v62)
  {
    v74 = (*(v62 + 8))();
  }

  else
  {
    v74 = v59;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    v76 = *(v75 + 8);
    v77 = v75;
    swift_retain_n();
    v78 = v76(v74, v77);
    *(v73 + 160) = v78;
  }

  else
  {
    v78 = swift_retain_n();
  }

  v80 = MEMORY[0x1E69E7360];
  *(v73 + 64) = sub_1AF5A99B4;
  *(v73 + 72) = v69;
  *(v73 + 216) = 0;
  *(v73 + 168) = 0;
  *(v73 + 176) = 0;
  *(v152 + 72) = v73;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81, v82);
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  v84[4] = sub_1AF5AA3E4;
  v84[5] = v83;
  v84[2] = sub_1AF5A9FDC;
  v84[3] = v83;
  v84[6] = v83;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  *(v85 + 216) = 0;
  strcpy((v85 + 16), "sortModeIndex");
  *(v85 + 30) = -4864;
  *(v85 + 32) = v83;
  *(v85 + 40) = v80;
  *(v85 + 48) = 0;
  *(v85 + 56) = 1;
  *(v85 + 58) = 0;
  *(v85 + 184) = 0;
  *(v85 + 188) = 1;
  *(v85 + 192) = 0;
  *(v85 + 196) = 1;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;

  if (v155)
  {
    v86 = (*(v155 + 8))();
  }

  else
  {
    v86 = v80;
  }

  v87 = swift_conformsToProtocol2();
  v88 = MEMORY[0x1E69E6370];
  if (v87 && v86)
  {
    v89 = *(v87 + 8);
    v90 = v87;
    swift_retain_n();
    *(v85 + 160) = v89(v86, v90);
  }

  else
  {
    swift_retain_n();
  }

  *(v85 + 64) = sub_1AF5A99B0;
  *(v85 + 72) = v83;
  *(v85 + 216) = 0;
  v91 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  *(v85 + 168) = 0;
  *(v85 + 176) = 0;
  v92 = swift_allocObject();
  v92[4] = sub_1AF5A0F80;
  v92[5] = v81;
  v92[2] = sub_1AF5A0FAC;
  v92[3] = v81;
  v92[6] = v81;
  v93 = swift_allocObject();
  *(v93 + 112) = 1;
  *(v93 + 128) = 0;
  *(v93 + 136) = 0;
  *(v93 + 120) = 0;
  *(v93 + 160) = MEMORY[0x1E69E7CC0];
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = 0;
  *(v93 + 16) = 0x65646F4D74726F73;
  *(v93 + 24) = 0xE800000000000000;
  *(v93 + 32) = v81;
  *(v93 + 40) = &type metadata for ParticleSortMode;
  *(v93 + 48) = 0;
  *(v93 + 56) = 1;
  *(v93 + 58) = 0;
  *(v93 + 184) = 0;
  *(v93 + 188) = 1;
  *(v93 + 192) = 0;
  *(v93 + 196) = 1;
  *(v93 + 200) = 0x1000100000000;
  *(v93 + 208) = 1;
  *(v93 + 96) = 0;
  *(v93 + 104) = 0;
  *(v93 + 64) = 0;
  *(v93 + 72) = 0;
  *(v93 + 144) = xmmword_1AFE22A20;
  *(v93 + 80) = v92;
  *(v93 + 88) = &off_1F2535378;
  *(v93 + 210) = 0;
  v94 = swift_conformsToProtocol2();

  if (v94)
  {
    v91 = (*(v94 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v91)
  {
    v96 = *(v95 + 8);
    v97 = v95;
    swift_retain_n();
    v98 = v96(v91, v97);
    *(v93 + 160) = v98;
  }

  else
  {
    v98 = swift_retain_n();
  }

  *(v93 + 64) = sub_1AF5A1008;
  *(v93 + 72) = v81;
  *(v93 + 168) = 0;
  *(v93 + 176) = 0;
  *(v93 + 216) = v85;
  *(v152 + 80) = v93;
  MEMORY[0x1EEE9AC00](v98, v99);
  v100 = swift_getKeyPath();
  v101 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v102 = swift_allocObject();
  v102[4] = sub_1AF5A0DE8;
  v102[5] = v100;
  v102[2] = sub_1AF5A1048;
  v102[3] = v100;
  v102[6] = v100;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 168) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 176) = 0;
  *(v103 + 216) = 0;
  *(v103 + 16) = 0x647265764F78616DLL;
  *(v103 + 24) = 0xEB00000000776172;
  *(v103 + 32) = v100;
  *(v103 + 40) = v101;
  *(v103 + 48) = 0;
  *(v103 + 56) = 1;
  *(v103 + 58) = 4;
  *(v103 + 184) = 1065353216;
  *(v103 + 188) = 0;
  *(v103 + 192) = 1132462080;
  *(v103 + 196) = 0;
  *(v103 + 200) = 0x1000100000000;
  *(v103 + 208) = 1;
  *(v103 + 96) = 0;
  *(v103 + 104) = 0;
  *(v103 + 64) = 0;
  *(v103 + 72) = 0;
  *(v103 + 144) = xmmword_1AFE22A20;
  *(v103 + 80) = v102;
  *(v103 + 88) = &off_1F2535378;
  *(v103 + 210) = 4;
  v104 = swift_conformsToProtocol2();

  if (v104)
  {
    v101 = (*(v104 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v101)
  {
    v106 = *(v105 + 8);
    v107 = v105;
    swift_retain_n();
    v108 = v106(v101, v107);
    *(v103 + 160) = v108;
  }

  else
  {
    v108 = swift_retain_n();
  }

  *(v103 + 64) = sub_1AF5A10B8;
  *(v103 + 72) = v100;
  *(v103 + 216) = 0;
  *(v103 + 168) = 0;
  *(v103 + 176) = 0;
  *(v152 + 88) = v103;
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v112, v113);
  v114 = swift_getKeyPath();
  v115 = swift_allocObject();
  v115[4] = sub_1AF5AA3E4;
  v115[5] = v114;
  v115[2] = sub_1AF5A9FDC;
  v115[3] = v114;
  v115[6] = v114;
  v116 = swift_allocObject();
  *(v116 + 112) = 1;
  *(v116 + 128) = 0;
  *(v116 + 136) = 0;
  *(v116 + 120) = 0;
  *(v116 + 160) = MEMORY[0x1E69E7CC0];
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  *(v116 + 216) = 0;
  *(v116 + 16) = 0xD000000000000012;
  *(v116 + 24) = 0x80000001AFF2BB80;
  *(v116 + 32) = v114;
  v117 = MEMORY[0x1E69E7360];
  *(v116 + 40) = MEMORY[0x1E69E7360];
  *(v116 + 48) = 0;
  *(v116 + 56) = 1;
  *(v116 + 58) = 0;
  *(v116 + 184) = 0;
  *(v116 + 188) = 1;
  *(v116 + 192) = 0;
  *(v116 + 196) = 1;
  *(v116 + 200) = 0x1000100000000;
  *(v116 + 208) = 1;
  *(v116 + 96) = 0;
  *(v116 + 104) = 0;
  *(v116 + 64) = 0;
  *(v116 + 72) = 0;
  *(v116 + 144) = xmmword_1AFE22A20;
  *(v116 + 80) = v115;
  *(v116 + 88) = &off_1F2535378;
  *(v116 + 210) = 0;

  if (v155)
  {
    v117 = (*(v155 + 8))();
  }

  v118 = swift_conformsToProtocol2();
  if (v118 && v117)
  {
    v119 = v118;
    v120 = *(v118 + 8);
    swift_retain_n();
    v121 = v120(v117, v119);
    v13 = v152;
    *(v116 + 160) = v121;
  }

  else
  {
    swift_retain_n();
  }

  *(v116 + 64) = sub_1AF5A99B0;
  *(v116 + 72) = v114;
  *(v116 + 216) = 0;
  v122 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  *(v116 + 168) = 0;
  *(v116 + 176) = 0;
  v123 = swift_allocObject();
  v123[4] = sub_1AF5A10F8;
  v123[5] = v110;
  v123[2] = sub_1AF5A1124;
  v123[3] = v110;
  v123[6] = v110;
  v124 = swift_allocObject();
  *(v124 + 112) = 1;
  *(v124 + 128) = 0;
  *(v124 + 136) = 0;
  *(v124 + 120) = 0;
  *(v124 + 160) = MEMORY[0x1E69E7CC0];
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = 0;
  strcpy((v124 + 16), "animationMode");
  *(v124 + 30) = -4864;
  *(v124 + 32) = v110;
  *(v124 + 40) = &type metadata for ParticleAnimationMode;
  *(v124 + 48) = 0;
  *(v124 + 56) = 1;
  *(v124 + 58) = 0;
  *(v124 + 184) = 0;
  *(v124 + 188) = 1;
  *(v124 + 192) = 0;
  *(v124 + 196) = 1;
  *(v124 + 200) = 0x1000100000000;
  *(v124 + 208) = 1;
  *(v124 + 64) = 0;
  *(v124 + 72) = 0;
  *(v124 + 96) = v112;
  *(v124 + 104) = 0;
  *(v124 + 144) = xmmword_1AFE22A20;
  *(v124 + 80) = v123;
  *(v124 + 88) = &off_1F2535378;
  *(v124 + 210) = 0;
  v125 = swift_conformsToProtocol2();

  if (v125)
  {
    v122 = (*(v125 + 8))();
  }

  v126 = swift_conformsToProtocol2();
  if (v126 && v122)
  {
    v127 = *(v126 + 8);
    v128 = v126;
    swift_retain_n();
    v129 = v127(v122, v128);
    *(v124 + 160) = v129;
  }

  else
  {
    v129 = swift_retain_n();
  }

  *(v124 + 64) = sub_1AF5A1180;
  *(v124 + 72) = v110;
  *(v124 + 168) = 0;
  *(v124 + 176) = 0;
  *(v124 + 216) = v116;
  v13[12] = v124;
  MEMORY[0x1EEE9AC00](v129, v130);
  v131 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v131, v132);
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA264;
  v134[5] = v131;
  v134[2] = sub_1AF5A9FE4;
  v134[3] = v131;
  v134[6] = v131;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000017;
  *(v135 + 24) = 0x80000001AFF24730;
  *(v135 + 32) = v131;
  *(v135 + 40) = v88;
  *(v135 + 48) = 0;
  *(v135 + 56) = 1;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;

  if (v154)
  {
    v88 = (*(v154 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v88)
  {
    v137 = *(v136 + 8);
    v138 = v136;
    swift_retain_n();
    v139 = v137(v88, v138);
    *(v135 + 160) = v139;
  }

  else
  {
    v139 = swift_retain_n();
  }

  *(v135 + 64) = sub_1AF5A99B4;
  *(v135 + 72) = v131;
  *(v135 + 216) = 0;
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  v13[13] = v135;
  MEMORY[0x1EEE9AC00](v139, v140);
  v141 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v141, v142);
  v143 = swift_getKeyPath();
  v144 = swift_allocObject();
  v144[4] = sub_1AF5A955C;
  v144[5] = v141;
  v144[2] = sub_1AF5A9FE8;
  v144[3] = v141;
  v144[6] = v141;
  v145 = swift_allocObject();
  *(v145 + 112) = 1;
  *(v145 + 128) = 0;
  *(v145 + 136) = 0;
  *(v145 + 120) = 0;
  *(v145 + 160) = MEMORY[0x1E69E7CC0];
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  *(v145 + 216) = 0;
  strcpy((v145 + 16), "softDistance");
  *(v145 + 29) = 0;
  *(v145 + 30) = -5120;
  *(v145 + 32) = v141;
  v146 = MEMORY[0x1E69E6448];
  *(v145 + 40) = MEMORY[0x1E69E6448];
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 58) = 0;
  *(v145 + 184) = 0;
  *(v145 + 188) = 0;
  *(v145 + 192) = 0;
  *(v145 + 196) = 1;
  *(v145 + 200) = 0x1000100000000;
  *(v145 + 208) = 1;
  *(v145 + 64) = 0;
  *(v145 + 72) = 0;
  *(v145 + 96) = v143;
  *(v145 + 104) = 0;
  *(v145 + 144) = xmmword_1AFE22A20;
  *(v145 + 80) = v144;
  *(v145 + 88) = &off_1F2535378;
  *(v145 + 210) = 0;

  if (v151)
  {
    v146 = (*(v151 + 8))();
  }

  v147 = swift_conformsToProtocol2();
  if (v147 && v146)
  {
    v148 = *(v147 + 8);
    v149 = v147;
    swift_retain_n();
    *(v145 + 160) = v148(v146, v149);
  }

  else
  {
    swift_retain_n();
  }

  *(v145 + 64) = sub_1AF5A99B8;
  *(v145 + 72) = v141;
  *(v145 + 216) = 0;
  *(v145 + 168) = 0;
  *(v145 + 176) = 0;
  v13[14] = v145;
  return v13;
}

uint64_t sub_1AF5087D8(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 8) + 32))();
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF508814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 112))(v7);
  if (a1 == 3)
  {
    if (*(v4 + 4))
    {
      *v4 = 1056964608;
      *(v4 + 4) = 0;
    }
  }

  else
  {
    if (a1 == 2)
    {
      *v4 = 2;
    }

    else
    {
      *v4 = a1 == 1;
    }

    *(v4 + 4) = 1;
  }

  return v5(v7, 0);
}

uint64_t sub_1AF5088F4(uint64_t result)
{
  v2 = result;
  if (result >= 7u)
  {
    v2 = 7;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_1AF50890C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 144))(v8);
  v6 = a1;
  if (a1 >= 7u)
  {
    v6 = 7;
  }

  *v4 = v6;
  return v5(v8, 0);
}

uint64_t sub_1AF5089B0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 192))(v8);
  v6 = a1;
  if (a1 >= 3u)
  {
    v6 = 3;
  }

  *v4 = v6;
  return v5(v8, 0);
}

uint64_t sub_1AF508A28()
{
  v17 = sub_1AF502AE4();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59CE8C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59CEC0;
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
  *(v4 + 16) = 0x616353746E696F70;
  *(v4 + 24) = 0xEA0000000000656CLL;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 36;
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

  *(v4 + 64) = sub_1AF59CF1C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(inited + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF57F2F4();
  v9 = swift_allocObject();
  v9[4] = sub_1AF59CF5C;
  v9[5] = v8;
  v9[2] = sub_1AF59CF90;
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
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x69536E6565726373;
  *(v10 + 24) = 0xEF65676E6152657ALL;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 40;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x10100003DCCCCCDLL;
  *(v10 + 208) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
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
  *(v10 + 64) = sub_1AF59CFEC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(inited + 40) = v10;
  result = sub_1AF48F810(inited, sub_1AF56E184);
  qword_1EB6C3058 = v17;
  return result;
}

uint64_t sub_1AF508FC0()
{
  v0 = sub_1AF4FECEC();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF59D954;
  v4[5] = KeyPath;
  v4[2] = sub_1AF59D988;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
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
  *(v5 + 16) = 0x73656E6B63696874;
  *(v5 + 24) = 0xE900000000000073;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 28;
  *(v5 + 56) = 0;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 0;
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
    v3 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v3)
  {
    *(v5 + 160) = (*(v7 + 8))(v3, v7);
  }

  *(v5 + 64) = sub_1AF59D9E4;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  *(inited + 32) = v5;
  result = sub_1AF48F810(inited, sub_1AF56E184);
  qword_1EB6C3060 = v0;
  return result;
}

uint64_t sub_1AF509340()
{
  v159 = sub_1AF500BE8();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE55110;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  v4 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v5 = swift_allocObject();
  v5[4] = sub_1AF59E2A8;
  v5[5] = v3;
  v5[2] = sub_1AF59E2DC;
  v5[3] = v3;
  v5[6] = v3;
  type metadata accessor for PropertyDescription();
  v6 = swift_allocObject();
  *(v6 + 112) = 1;
  *(v6 + 136) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 160) = v7;
  *(v6 + 168) = 0;
  *(v6 + 216) = 0;
  *(v6 + 176) = 0;
  strcpy((v6 + 16), "cullModeIndex");
  *(v6 + 30) = -4864;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = 0;
  *(v6 + 56) = 1;
  *(v6 + 58) = 0;
  *(v6 + 184) = 0;
  *(v6 + 188) = 1;
  *(v6 + 192) = 0;
  *(v6 + 196) = 1;
  *(v6 + 200) = 0x1000100000000;
  *(v6 + 208) = 1;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 144) = xmmword_1AFE22A20;
  *(v6 + 80) = v5;
  *(v6 + 88) = &off_1F2535378;
  *(v6 + 210) = 0;
  v8 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v8)
  {
    v9 = (*(v8 + 8))();
  }

  else
  {
    v9 = v4;
  }

  v161 = v8;
  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    *(v6 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v6 + 64);
  *(v6 + 64) = sub_1AF59E338;
  *(v6 + 72) = v3;
  sub_1AF0FB8EC(v11);
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;

  *(v6 + 216) = 0;

  sub_1AF51B13C(0, &unk_1EB632F50, type metadata accessor for MTLCullMode, type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF59E2A8;
  v12[5] = KeyPath;
  v12[2] = sub_1AF59E378;
  v12[3] = KeyPath;
  v12[6] = KeyPath;
  v13 = swift_allocObject();
  *(v13 + 104) = 0;
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = MEMORY[0x1E69E7CC0];
  *(v13 + 210) = 0;
  *(v13 + 216) = 0;
  type metadata accessor for MTLCullMode(0);
  v15 = v14;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0x65646F4D6C6C7563;
  *(v13 + 24) = 0xE800000000000000;
  *(v13 + 32) = KeyPath;
  *(v13 + 40) = v14;
  *(v13 + 48) = 16;
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
  *(v13 + 96) = v2;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v16 = swift_conformsToProtocol2();
  swift_retain_n();

  v17 = MEMORY[0x1E69E7360];
  if (v16 && v15)
  {
    v15 = (*(v16 + 8))(v15, v16);
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v15)
  {
    v19 = (*(v18 + 8))(v15, v18);

    *(v13 + 160) = v19;
  }

  else
  {
  }

  v20 = *(v13 + 64);
  *(v13 + 64) = sub_1AF59E3D4;
  *(v13 + 72) = KeyPath;
  sub_1AF0FB8EC(v20);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = v6;

  *(inited + 32) = v13;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5AA3D8;
  v23[5] = v22;
  v23[2] = sub_1AF5A9F64;
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
  *(v24 + 16) = 0x646E496570616873;
  *(v24 + 24) = 0xEA00000000007865;
  *(v24 + 32) = v22;
  *(v24 + 40) = v17;
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
  if (v8)
  {
    v25 = (*(v8 + 8))();
  }

  else
  {
    v25 = v17;
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    *(v24 + 160) = (*(v26 + 8))(v25, v26);
  }

  v27 = *(v24 + 64);
  *(v24 + 64) = sub_1AF5A9960;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(v27);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;

  v28 = &type metadata for ParticleQuadRenderer.Shape;
  sub_1AF5A9240(0, &qword_1EB632F88, &type metadata for ParticleQuadRenderer.Shape, type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF59E420;
  v29[5] = v21;
  v29[2] = sub_1AF59E44C;
  v29[3] = v21;
  v29[6] = v21;
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
  *(v30 + 16) = 0x6570616873;
  *(v30 + 24) = 0xE500000000000000;
  *(v30 + 32) = v21;
  *(v30 + 40) = &type metadata for ParticleQuadRenderer.Shape;
  *(v30 + 48) = 96;
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

  v33 = *(v30 + 64);
  *(v30 + 64) = sub_1AF59E4A8;
  *(v30 + 72) = v21;
  sub_1AF0FB8EC(v33);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = v24;

  *(inited + 40) = v30;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  v36[4] = sub_1AF5AA3D8;
  v36[5] = v35;
  v36[2] = sub_1AF5A9F64;
  v36[3] = v35;
  v36[6] = v35;
  v37 = swift_allocObject();
  *(v37 + 112) = 1;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(v37 + 120) = 0;
  *(v37 + 160) = MEMORY[0x1E69E7CC0];
  *(v37 + 168) = 0;
  *(v37 + 210) = 0;
  *(v37 + 216) = 0;
  *(v37 + 176) = 0;
  *(v37 + 16) = 0xD000000000000010;
  *(v37 + 24) = 0x80000001AFF2A2B0;
  *(v37 + 32) = v35;
  *(v37 + 40) = v17;
  *(v37 + 48) = 0;
  *(v37 + 56) = 1;
  *(v37 + 58) = 0;
  *(v37 + 184) = 0;
  *(v37 + 188) = 1;
  *(v37 + 192) = 0;
  *(v37 + 196) = 1;
  *(v37 + 200) = 0x1000100000000;
  *(v37 + 208) = 1;
  *(v37 + 64) = 0;
  *(v37 + 72) = 0;
  *(v37 + 96) = 0;
  *(v37 + 104) = 0;
  *(v37 + 144) = xmmword_1AFE22A20;
  *(v37 + 80) = v36;
  *(v37 + 88) = &off_1F2535378;
  *(v37 + 210) = 0;
  swift_retain_n();
  if (v8)
  {
    v38 = (*(v8 + 8))();
  }

  else
  {
    v38 = v17;
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v38)
  {
    *(v37 + 160) = (*(v39 + 8))(v38, v39);
  }

  v40 = *(v37 + 64);
  *(v37 + 64) = sub_1AF5A9960;
  *(v37 + 72) = v35;
  sub_1AF0FB8EC(v40);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;

  v41 = &type metadata for ParticleOrientationMode;
  sub_1AF5A9240(0, &unk_1EB632F70, &type metadata for ParticleOrientationMode, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF5AA23C;
  v42[5] = v34;
  v42[2] = sub_1AF59E4E8;
  v42[3] = v34;
  v42[6] = v34;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 210) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x7461746E6569726FLL;
  *(v43 + 24) = 0xEB000000006E6F69;
  *(v43 + 32) = v34;
  *(v43 + 40) = &type metadata for ParticleOrientationMode;
  *(v43 + 48) = 76;
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
  v44 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v44)
  {
    v41 = (*(v44 + 8))();
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    *(v43 + 160) = (*(v45 + 8))(v41, v45);
  }

  v46 = *(v43 + 64);
  *(v43 + 64) = sub_1AF59E544;
  *(v43 + 72) = v34;
  sub_1AF0FB8EC(v46);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = v37;

  *(inited + 48) = v43;
  v47 = swift_getKeyPath();
  v48 = swift_getKeyPath();
  sub_1AF57AAE8();
  v49 = swift_allocObject();
  v49[4] = sub_1AF59E584;
  v49[5] = v47;
  v49[2] = sub_1AF59E59C;
  v49[3] = v47;
  v49[6] = v47;
  v50 = swift_allocObject();
  *(v50 + 104) = 0;
  *(v50 + 112) = 1;
  *(v50 + 128) = 0;
  *(v50 + 136) = 0;
  *(v50 + 120) = 0;
  *(v50 + 160) = MEMORY[0x1E69E7CC0];
  *(v50 + 210) = 0;
  *(v50 + 216) = 0;
  v51 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v53 = v52;
  *(v50 + 168) = 0;
  *(v50 + 176) = 0;
  *(v50 + 16) = 0x736978417075;
  *(v50 + 24) = 0xE600000000000000;
  *(v50 + 32) = v47;
  *(v50 + 40) = v52;
  *(v50 + 48) = 80;
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
  *(v50 + 144) = xmmword_1AFE22A20;
  *(v50 + 80) = v49;
  *(v50 + 88) = &off_1F2535378;
  *(v50 + 210) = 0;
  v54 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v54 && v53)
  {
    v53 = (*(v54 + 8))(v53, v54);
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v53)
  {
    v56 = (*(v55 + 8))(v53, v55);

    *(v50 + 160) = v56;
  }

  else
  {
  }

  v57 = *(v50 + 64);
  *(v50 + 64) = sub_1AF59E600;
  *(v50 + 72) = v47;
  sub_1AF0FB8EC(v57);
  *(v50 + 168) = 0;
  *(v50 + 176) = 0;

  *(v50 + 216) = 0;

  *(inited + 56) = v50;
  v58 = swift_getKeyPath();
  v59 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF59E644;
  v60[5] = v58;
  v60[2] = sub_1AF59E670;
  v60[3] = v58;
  v60[6] = v58;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0xD00000000000001DLL;
  *(v61 + 24) = 0x80000001AFF2BBA0;
  *(v61 + 32) = v58;
  *(v61 + 40) = v59;
  *(v61 + 48) = 105;
  *(v61 + 56) = 0;
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
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v62)
  {
    v63 = (*(v62 + 8))();
  }

  else
  {
    v63 = v59;
  }

  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    *(v61 + 160) = (*(v64 + 8))(v63, v64);
  }

  v65 = *(v61 + 64);
  *(v61 + 64) = sub_1AF59E6CC;
  *(v61 + 72) = v58;
  sub_1AF0FB8EC(v65);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  *(inited + 64) = v61;
  v66 = swift_getKeyPath();
  v67 = swift_allocObject();
  v67[4] = sub_1AF5AA238;
  v67[5] = v66;
  v67[2] = sub_1AF5A9F68;
  v67[3] = v66;
  v67[6] = v66;
  v68 = swift_allocObject();
  *(v68 + 112) = 1;
  *(v68 + 128) = 0;
  *(v68 + 136) = 0;
  *(v68 + 120) = 0;
  *(v68 + 160) = MEMORY[0x1E69E7CC0];
  *(v68 + 168) = 0;
  *(v68 + 210) = 0;
  *(v68 + 216) = 0;
  *(v68 + 176) = 0;
  *(v68 + 16) = 0xD000000000000013;
  *(v68 + 24) = 0x80000001AFF24830;
  *(v68 + 32) = v66;
  v69 = MEMORY[0x1E69E6370];
  *(v68 + 40) = MEMORY[0x1E69E6370];
  *(v68 + 48) = 104;
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
  *(v68 + 104) = 0;
  *(v68 + 144) = xmmword_1AFE22A20;
  *(v68 + 80) = v67;
  *(v68 + 88) = &off_1F2535378;
  *(v68 + 210) = 0;
  swift_retain_n();
  if (v62)
  {
    v70 = (*(v62 + 8))();
  }

  else
  {
    v70 = v69;
  }

  v71 = swift_conformsToProtocol2();
  if (v71 && v70)
  {
    *(v68 + 160) = (*(v71 + 8))(v70, v71);
  }

  v72 = *(v68 + 64);
  *(v68 + 64) = sub_1AF5A9964;
  *(v68 + 72) = v66;
  sub_1AF0FB8EC(v72);
  *(v68 + 168) = 0;
  *(v68 + 176) = 0;

  *(v68 + 216) = 0;

  *(inited + 72) = v68;
  v73 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v51, type metadata accessor for EntityGetSet);
  v74 = swift_allocObject();
  v74[4] = sub_1AF59E70C;
  v74[5] = v73;
  v74[2] = sub_1AF59E740;
  v74[3] = v73;
  v74[6] = v73;
  v75 = swift_allocObject();
  *(v75 + 112) = 1;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;
  *(v75 + 120) = 0;
  *(v75 + 160) = MEMORY[0x1E69E7CC0];
  *(v75 + 168) = 0;
  *(v75 + 210) = 0;
  *(v75 + 216) = 0;
  *(v75 + 176) = 0;
  strcpy((v75 + 16), "stretchFactor");
  *(v75 + 30) = -4864;
  *(v75 + 32) = v73;
  *(v75 + 40) = v51;
  *(v75 + 48) = 100;
  *(v75 + 56) = 0;
  *(v75 + 58) = 0;
  *(v75 + 184) = 0;
  *(v75 + 188) = 0;
  *(v75 + 192) = 0;
  *(v75 + 196) = 1;
  *(v75 + 200) = 0x1000100000000;
  *(v75 + 208) = 1;
  *(v75 + 64) = 0;
  *(v75 + 72) = 0;
  *(v75 + 96) = 0;
  *(v75 + 104) = 0;
  *(v75 + 144) = xmmword_1AFE22A20;
  *(v75 + 80) = v74;
  *(v75 + 88) = &off_1F2535378;
  *(v75 + 210) = 0;
  v76 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v76)
  {
    v77 = (*(v76 + 8))();
  }

  else
  {
    v77 = v51;
  }

  v78 = swift_conformsToProtocol2();
  if (v78 && v77)
  {
    *(v75 + 160) = (*(v78 + 8))(v77, v78);
  }

  v79 = *(v75 + 64);
  *(v75 + 64) = sub_1AF59E79C;
  *(v75 + 72) = v73;
  sub_1AF0FB8EC(v79);
  *(v75 + 168) = 0;
  *(v75 + 176) = 0;

  *(v75 + 216) = 0;

  *(inited + 80) = v75;
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  v81[4] = sub_1AF5A953C;
  v81[5] = v80;
  v81[2] = sub_1AF5A9F6C;
  v81[3] = v80;
  v81[6] = v80;
  v82 = swift_allocObject();
  *(v82 + 112) = 1;
  *(v82 + 128) = 0;
  *(v82 + 136) = 0;
  *(v82 + 120) = 0;
  *(v82 + 160) = MEMORY[0x1E69E7CC0];
  *(v82 + 168) = 0;
  *(v82 + 210) = 0;
  *(v82 + 216) = 0;
  *(v82 + 176) = 0;
  *(v82 + 16) = 0x7275746176727563;
  *(v82 + 24) = 0xE900000000000065;
  *(v82 + 32) = v80;
  *(v82 + 40) = v51;
  *(v82 + 48) = 108;
  *(v82 + 56) = 0;
  *(v82 + 58) = 0;
  *(v82 + 184) = 0;
  *(v82 + 188) = 0;
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
  if (v76)
  {
    v83 = (*(v76 + 8))();
  }

  else
  {
    v83 = v51;
  }

  v84 = swift_conformsToProtocol2();
  if (v84 && v83)
  {
    *(v82 + 160) = (*(v84 + 8))(v83, v84);
  }

  v85 = *(v82 + 64);
  *(v82 + 64) = sub_1AF5A9968;
  *(v82 + 72) = v80;
  sub_1AF0FB8EC(v85);
  *(v82 + 168) = 0;
  *(v82 + 176) = 0;

  *(v82 + 216) = 0;

  *(inited + 88) = v82;
  v86 = swift_getKeyPath();
  v87 = swift_getKeyPath();
  v88 = swift_allocObject();
  v88[4] = sub_1AF5A953C;
  v88[5] = v86;
  v88[2] = sub_1AF5A9F6C;
  v88[3] = v86;
  v88[6] = v86;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 168) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 210) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  *(v89 + 16) = 0x73656E6B63696874;
  *(v89 + 24) = 0xE900000000000073;
  *(v89 + 32) = v86;
  *(v89 + 40) = v51;
  *(v89 + 48) = 116;
  *(v89 + 56) = 0;
  *(v89 + 58) = 0;
  *(v89 + 184) = 0;
  *(v89 + 188) = 0;
  *(v89 + 192) = 1065353216;
  *(v89 + 196) = 0;
  *(v89 + 200) = 0x1000100000000;
  *(v89 + 208) = 1;
  *(v89 + 64) = 0;
  *(v89 + 72) = 0;
  *(v89 + 96) = v87;
  *(v89 + 104) = 0;
  *(v89 + 144) = xmmword_1AFE22A20;
  *(v89 + 80) = v88;
  *(v89 + 88) = &off_1F2535378;
  *(v89 + 210) = 0;
  swift_retain_n();

  if (v76)
  {
    v51 = (*(v76 + 8))();
  }

  v90 = swift_conformsToProtocol2();
  if (v90 && v51)
  {
    v91 = (*(v90 + 8))(v51, v90);

    *(v89 + 160) = v91;
  }

  else
  {
  }

  v92 = *(v89 + 64);
  *(v89 + 64) = sub_1AF5A9968;
  *(v89 + 72) = v86;
  sub_1AF0FB8EC(v92);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = 0;

  *(inited + 96) = v89;
  v93 = swift_getKeyPath();
  sub_1AF57C8C8();
  v94 = swift_allocObject();
  v94[4] = sub_1AF59E2A8;
  v94[5] = v93;
  v94[2] = sub_1AF59E7DC;
  v94[3] = v93;
  v94[6] = v93;
  v95 = swift_allocObject();
  *(v95 + 104) = 0;
  *(v95 + 112) = 1;
  *(v95 + 128) = 0;
  *(v95 + 136) = 0;
  *(v95 + 120) = 0;
  *(v95 + 160) = MEMORY[0x1E69E7CC0];
  *(v95 + 210) = 0;
  *(v95 + 216) = 0;
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v97 = v96;
  *(v95 + 168) = 0;
  *(v95 + 176) = 0;
  strcpy((v95 + 16), "textureScale");
  *(v95 + 29) = 0;
  *(v95 + 30) = -5120;
  *(v95 + 32) = v93;
  *(v95 + 40) = v96;
  *(v95 + 48) = 48;
  *(v95 + 56) = 0;
  *(v95 + 58) = 0;
  *(v95 + 184) = 0;
  *(v95 + 188) = 1;
  *(v95 + 192) = 0;
  *(v95 + 196) = 1;
  *(v95 + 200) = 0x1000100000000;
  *(v95 + 208) = 1;
  *(v95 + 64) = 0;
  *(v95 + 72) = 0;
  *(v95 + 96) = 0;
  *(v95 + 144) = xmmword_1AFE22A20;
  *(v95 + 80) = v94;
  *(v95 + 88) = &off_1F2535378;
  *(v95 + 210) = 0;
  v98 = swift_conformsToProtocol2();
  if (v98)
  {
    v99 = v97;
  }

  else
  {
    v99 = 0;
  }

  swift_retain_n();
  v100 = v97;
  if (v99)
  {
    v100 = (*(v98 + 8))(v99, v98);
  }

  v101 = swift_conformsToProtocol2();
  if (v101 && v100)
  {
    *(v95 + 160) = (*(v101 + 8))(v100, v101);
  }

  v102 = *(v95 + 64);
  *(v95 + 64) = sub_1AF59E838;
  *(v95 + 72) = v93;
  sub_1AF0FB8EC(v102);
  *(v95 + 168) = 0;
  *(v95 + 176) = 0;

  *(v95 + 216) = 0;

  v160 = inited;
  *(inited + 104) = v95;
  v103 = swift_getKeyPath();
  v104 = swift_allocObject();
  v104[4] = sub_1AF5AA3D8;
  v104[5] = v103;
  v104[2] = sub_1AF5A9F70;
  v104[3] = v103;
  v104[6] = v103;
  v105 = swift_allocObject();
  *(v105 + 112) = 1;
  *(v105 + 128) = 0;
  *(v105 + 136) = 0;
  *(v105 + 120) = 0;
  *(v105 + 160) = MEMORY[0x1E69E7CC0];
  *(v105 + 168) = 0;
  *(v105 + 210) = 0;
  *(v105 + 216) = 0;
  *(v105 + 176) = 0;
  *(v105 + 16) = 0x4265727574786574;
  *(v105 + 24) = 0xEB00000000736169;
  *(v105 + 32) = v103;
  *(v105 + 40) = v97;
  *(v105 + 48) = 56;
  *(v105 + 56) = 0;
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
  swift_retain_n();
  if (v99)
  {
    v97 = (*(v98 + 8))(v99, v98);
  }

  v106 = swift_conformsToProtocol2();
  if (v106 && v97)
  {
    *(v105 + 160) = (*(v106 + 8))(v97, v106);
  }

  v107 = *(v105 + 64);
  *(v105 + 64) = sub_1AF5A996C;
  *(v105 + 72) = v103;
  sub_1AF0FB8EC(v107);
  *(v105 + 168) = 0;
  *(v105 + 176) = 0;

  *(v105 + 216) = 0;

  *(inited + 112) = v105;
  v108 = swift_getKeyPath();
  v109 = swift_getKeyPath();
  v110 = swift_allocObject();
  v110[4] = sub_1AF5AA238;
  v110[5] = v108;
  v110[2] = sub_1AF5A9F68;
  v110[3] = v108;
  v110[6] = v108;
  v111 = swift_allocObject();
  *(v111 + 112) = 1;
  *(v111 + 128) = 0;
  *(v111 + 136) = 0;
  *(v111 + 120) = 0;
  *(v111 + 160) = MEMORY[0x1E69E7CC0];
  *(v111 + 168) = 0;
  *(v111 + 216) = 0;
  *(v111 + 176) = 0;
  *(v111 + 16) = 0xD000000000000018;
  *(v111 + 24) = 0x80000001AFF24780;
  *(v111 + 32) = v108;
  v112 = MEMORY[0x1E69E6370];
  *(v111 + 40) = MEMORY[0x1E69E6370];
  *(v111 + 48) = 112;
  *(v111 + 56) = 0;
  *(v111 + 58) = 0;
  *(v111 + 184) = 0;
  *(v111 + 188) = 1;
  *(v111 + 192) = 0;
  *(v111 + 196) = 1;
  *(v111 + 200) = 0x1000100000000;
  *(v111 + 208) = 1;
  *(v111 + 64) = 0;
  *(v111 + 72) = 0;
  *(v111 + 96) = v109;
  *(v111 + 104) = 0;
  *(v111 + 144) = xmmword_1AFE22A20;
  *(v111 + 80) = v110;
  *(v111 + 88) = &off_1F2535378;
  *(v111 + 210) = 0;
  swift_retain_n();

  if (v62)
  {
    v113 = (*(v62 + 8))();
  }

  else
  {
    v113 = v112;
  }

  v114 = swift_conformsToProtocol2();
  if (v114 && v113)
  {
    v115 = (*(v114 + 8))(v113, v114);

    *(v111 + 160) = v115;
  }

  else
  {
  }

  *(v111 + 64) = sub_1AF5A9964;
  *(v111 + 72) = v108;
  sub_1AF0FB8EC(0);
  *(v111 + 168) = 0;
  *(v111 + 176) = 0;

  *(v111 + 216) = 0;
  *(inited + 120) = v111;
  v116 = swift_getKeyPath();
  v117 = swift_getKeyPath();
  v118 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v119 = swift_allocObject();
  v119[4] = sub_1AF59E2A8;
  v119[5] = v116;
  v119[2] = sub_1AF59E87C;
  v119[3] = v116;
  v119[6] = v116;
  v120 = swift_allocObject();
  *(v120 + 112) = 1;
  *(v120 + 128) = 0;
  *(v120 + 136) = 0;
  *(v120 + 120) = 0;
  *(v120 + 160) = MEMORY[0x1E69E7CC0];
  *(v120 + 168) = 0;
  *(v120 + 176) = 0;
  *(v120 + 216) = 0;
  *(v120 + 16) = 0xD000000000000014;
  *(v120 + 24) = 0x80000001AFF2BBC0;
  *(v120 + 32) = v116;
  *(v120 + 40) = &type metadata for Entity;
  *(v120 + 48) = 120;
  *(v120 + 56) = 0;
  *(v120 + 58) = 0;
  *(v120 + 184) = 0;
  *(v120 + 188) = 1;
  *(v120 + 192) = 0;
  *(v120 + 196) = 1;
  *(v120 + 200) = 0x1000100000000;
  *(v120 + 208) = 1;
  *(v120 + 64) = 0;
  *(v120 + 72) = 0;
  *(v120 + 96) = v117;
  *(v120 + 104) = 0;
  *(v120 + 144) = xmmword_1AFE551B0;
  *(v120 + 80) = v119;
  *(v120 + 88) = &off_1F2535378;
  *(v120 + 210) = 0;
  v121 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v121)
  {
    v122 = (*(v121 + 8))();
  }

  else
  {
    v122 = &type metadata for Entity;
  }

  v123 = swift_conformsToProtocol2();
  if (v123 && v122)
  {
    v124 = (*(v123 + 8))(v122, v123);

    *(v120 + 160) = v124;
  }

  else
  {
  }

  *(v120 + 64) = sub_1AF59E8D8;
  *(v120 + 72) = v116;
  sub_1AF0FB8EC(0);
  *(v120 + 168) = 0;
  *(v120 + 176) = 0;

  *(v120 + 216) = 0;
  *(inited + 128) = v120;
  v125 = swift_getKeyPath();
  v126 = swift_getKeyPath();
  v127 = swift_allocObject();
  v127[4] = sub_1AF5AA3D8;
  v127[5] = v125;
  v127[2] = sub_1AF5A9F74;
  v127[3] = v125;
  v127[6] = v125;
  v128 = swift_allocObject();
  *(v128 + 112) = 1;
  *(v128 + 128) = 0;
  *(v128 + 136) = 0;
  *(v128 + 120) = 0;
  *(v128 + 160) = MEMORY[0x1E69E7CC0];
  *(v128 + 168) = 0;
  *(v128 + 176) = 0;
  *(v128 + 216) = 0;
  *(v128 + 16) = 0xD000000000000014;
  *(v128 + 24) = 0x80000001AFF2BBE0;
  *(v128 + 32) = v125;
  *(v128 + 40) = &type metadata for Entity;
  *(v128 + 48) = 128;
  *(v128 + 56) = 0;
  *(v128 + 58) = 0;
  *(v128 + 184) = 0;
  *(v128 + 188) = 1;
  *(v128 + 192) = 0;
  *(v128 + 196) = 1;
  *(v128 + 200) = 0x1000100000000;
  *(v128 + 208) = 1;
  *(v128 + 64) = 0;
  *(v128 + 72) = 0;
  *(v128 + 96) = v126;
  *(v128 + 104) = 0;
  *(v128 + 144) = xmmword_1AFE551B0;
  *(v128 + 80) = v127;
  *(v128 + 88) = &off_1F2535378;
  *(v128 + 210) = 0;
  swift_retain_n();

  if (v121)
  {
    v118 = (*(v121 + 8))();
  }

  v129 = MEMORY[0x1E69E6370];
  v130 = swift_conformsToProtocol2();
  if (v130 && v118)
  {
    v131 = (*(v130 + 8))(v118, v130);

    *(v128 + 160) = v131;
  }

  else
  {
  }

  *(v128 + 64) = sub_1AF5A9970;
  *(v128 + 72) = v125;
  sub_1AF0FB8EC(0);
  *(v128 + 168) = 0;
  *(v128 + 176) = 0;

  *(v128 + 216) = 0;
  v160[17] = v128;
  v132 = swift_getKeyPath();
  v133 = swift_getKeyPath();
  v134 = swift_allocObject();
  v134[4] = sub_1AF5AA238;
  v134[5] = v132;
  v134[2] = sub_1AF5A9F68;
  v134[3] = v132;
  v134[6] = v132;
  v135 = swift_allocObject();
  *(v135 + 112) = 1;
  *(v135 + 128) = 0;
  *(v135 + 136) = 0;
  *(v135 + 120) = 0;
  *(v135 + 160) = MEMORY[0x1E69E7CC0];
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;
  *(v135 + 216) = 0;
  *(v135 + 16) = 0xD000000000000015;
  *(v135 + 24) = 0x80000001AFF247E0;
  *(v135 + 32) = v132;
  *(v135 + 40) = v129;
  *(v135 + 48) = 136;
  *(v135 + 56) = 0;
  *(v135 + 58) = 0;
  *(v135 + 184) = 0;
  *(v135 + 188) = 1;
  *(v135 + 192) = 0;
  *(v135 + 196) = 1;
  *(v135 + 200) = 0x1000100000000;
  *(v135 + 208) = 1;
  *(v135 + 64) = 0;
  *(v135 + 72) = 0;
  *(v135 + 96) = v133;
  *(v135 + 104) = 0;
  *(v135 + 144) = xmmword_1AFE22A20;
  *(v135 + 80) = v134;
  *(v135 + 88) = &off_1F2535378;
  *(v135 + 210) = 0;
  swift_retain_n();

  if (v62)
  {
    v136 = (*(v62 + 8))();
  }

  else
  {
    v136 = v129;
  }

  v137 = swift_conformsToProtocol2();
  if (v137 && v136)
  {
    v138 = (*(v137 + 8))(v136, v137);

    *(v135 + 160) = v138;
  }

  else
  {
  }

  *(v135 + 64) = sub_1AF5A9964;
  *(v135 + 72) = v132;
  sub_1AF0FB8EC(0);
  *(v135 + 168) = 0;
  *(v135 + 176) = 0;

  *(v135 + 216) = 0;
  v160[18] = v135;
  v139 = swift_getKeyPath();
  v140 = swift_getKeyPath();
  v141 = swift_allocObject();
  v141[4] = sub_1AF5AA238;
  v141[5] = v139;
  v141[2] = sub_1AF5A9F68;
  v141[3] = v139;
  v141[6] = v139;
  v142 = swift_allocObject();
  *(v142 + 112) = 1;
  *(v142 + 128) = 0;
  *(v142 + 136) = 0;
  *(v142 + 120) = 0;
  *(v142 + 160) = MEMORY[0x1E69E7CC0];
  *(v142 + 168) = 0;
  *(v142 + 176) = 0;
  *(v142 + 216) = 0;
  *(v142 + 16) = 0xD000000000000019;
  *(v142 + 24) = 0x80000001AFF24800;
  *(v142 + 32) = v139;
  *(v142 + 40) = v129;
  *(v142 + 48) = 137;
  *(v142 + 56) = 0;
  *(v142 + 58) = 0;
  *(v142 + 184) = 0;
  *(v142 + 188) = 1;
  *(v142 + 192) = 0;
  *(v142 + 196) = 1;
  *(v142 + 200) = 0x1000100000000;
  *(v142 + 208) = 1;
  *(v142 + 64) = 0;
  *(v142 + 72) = 0;
  *(v142 + 96) = v140;
  *(v142 + 104) = 0;
  *(v142 + 144) = xmmword_1AFE22A20;
  *(v142 + 80) = v141;
  *(v142 + 88) = &off_1F2535378;
  *(v142 + 210) = 0;
  swift_retain_n();

  if (v62)
  {
    v129 = (*(v62 + 8))();
  }

  v143 = MEMORY[0x1E69E7360];
  v144 = swift_conformsToProtocol2();
  if (v144 && v129)
  {
    v145 = (*(v144 + 8))(v129, v144);

    *(v142 + 160) = v145;
  }

  else
  {
  }

  *(v142 + 64) = sub_1AF5A9964;
  *(v142 + 72) = v139;
  sub_1AF0FB8EC(0);
  *(v142 + 168) = 0;
  *(v142 + 176) = 0;

  *(v142 + 216) = 0;
  v160[19] = v142;
  v146 = swift_getKeyPath();
  v147 = swift_getKeyPath();
  v148 = swift_getKeyPath();
  v149 = swift_allocObject();
  v149[4] = sub_1AF5AA3D8;
  v149[5] = v148;
  v149[2] = sub_1AF5A9F64;
  v149[3] = v148;
  v149[6] = v148;
  v150 = swift_allocObject();
  *(v150 + 112) = 1;
  *(v150 + 128) = 0;
  *(v150 + 136) = 0;
  *(v150 + 120) = 0;
  *(v150 + 160) = MEMORY[0x1E69E7CC0];
  *(v150 + 168) = 0;
  *(v150 + 176) = 0;
  *(v150 + 216) = 0;
  strcpy((v150 + 16), "channelIndex");
  *(v150 + 29) = 0;
  *(v150 + 30) = -5120;
  *(v150 + 32) = v148;
  *(v150 + 40) = v143;
  *(v150 + 48) = 0;
  *(v150 + 56) = 1;
  *(v150 + 58) = 0;
  *(v150 + 184) = 0;
  *(v150 + 188) = 1;
  *(v150 + 192) = 0;
  *(v150 + 196) = 1;
  *(v150 + 200) = 0x1000100000000;
  *(v150 + 208) = 1;
  *(v150 + 64) = 0;
  *(v150 + 72) = 0;
  *(v150 + 96) = 0;
  *(v150 + 104) = 0;
  *(v150 + 144) = xmmword_1AFE22A20;
  *(v150 + 80) = v149;
  *(v150 + 88) = &off_1F2535378;
  *(v150 + 210) = 0;
  swift_retain_n();
  if (v161)
  {
    v143 = (*(v161 + 8))();
  }

  v151 = swift_conformsToProtocol2();
  if (v151 && v143)
  {
    *(v150 + 160) = (*(v151 + 8))(v143, v151);
  }

  *(v150 + 64) = sub_1AF5A9960;
  *(v150 + 72) = v148;
  sub_1AF0FB8EC(0);
  *(v150 + 168) = 0;
  *(v150 + 176) = 0;

  *(v150 + 216) = 0;
  v152 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v153 = swift_allocObject();
  v153[4] = sub_1AF59E918;
  v153[5] = v146;
  v153[2] = sub_1AF59E944;
  v153[3] = v146;
  v153[6] = v146;
  v154 = swift_allocObject();
  *(v154 + 112) = 1;
  *(v154 + 128) = 0;
  *(v154 + 136) = 0;
  *(v154 + 120) = 0;
  *(v154 + 160) = MEMORY[0x1E69E7CC0];
  *(v154 + 168) = 0;
  *(v154 + 176) = 0;
  *(v154 + 216) = 0;
  *(v154 + 16) = 0x6C656E6E616863;
  *(v154 + 24) = 0xE700000000000000;
  *(v154 + 32) = v146;
  *(v154 + 40) = &type metadata for TextureChannel;
  *(v154 + 48) = 138;
  *(v154 + 56) = 0;
  *(v154 + 58) = 0;
  *(v154 + 184) = 0;
  *(v154 + 188) = 1;
  *(v154 + 192) = 0;
  *(v154 + 196) = 1;
  *(v154 + 200) = 0x1000100000000;
  *(v154 + 208) = 1;
  *(v154 + 64) = 0;
  *(v154 + 72) = 0;
  *(v154 + 96) = v147;
  *(v154 + 104) = 0;
  *(v154 + 144) = xmmword_1AFE22A20;
  *(v154 + 80) = v153;
  *(v154 + 88) = &off_1F2535378;
  *(v154 + 210) = 0;
  v155 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v155)
  {
    v152 = (*(v155 + 8))();
  }

  v156 = swift_conformsToProtocol2();
  if (v156 && v152)
  {
    v157 = (*(v156 + 8))(v152, v156);

    *(v154 + 160) = v157;
  }

  else
  {
  }

  *(v154 + 64) = sub_1AF59E9A0;
  *(v154 + 72) = v146;
  sub_1AF0FB8EC(0);
  *(v154 + 168) = 0;
  *(v154 + 176) = 0;

  *(v154 + 216) = v150;
  v160[20] = v154;
  result = sub_1AF48F810(v160, sub_1AF56E184);
  qword_1EB6C28F0 = v159;
  return result;
}

uint64_t sub_1AF50BD28(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1AF50BD48(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 76) = v2;
  return result;
}

uint64_t sub_1AF50BD68(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 138) = v2;
  return result;
}

uint64_t sub_1AF50BD90()
{
  if (qword_1EB632D18 != -1)
  {
    swift_once();
  }
}

void *sub_1AF50BE80()
{
  result = sub_1AF4FCDF0();
  qword_1EB6C3068 = result;
  return result;
}

void *sub_1AF50BF44()
{
  result = sub_1AF5049E0();
  qword_1EB6C3070 = result;
  return result;
}

uint64_t sub_1AF50C00C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A0744;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A0788;
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
  *(v4 + 16) = 0x656E68746F6F6D73;
  *(v4 + 24) = 0xEA00000000007373;
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

  *(v4 + 64) = sub_1AF5A07E4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9554;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FD0;
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
  *(v10 + 16) = 0xD000000000000012;
  *(v10 + 24) = 0x80000001AFF29620;
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
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
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

  *(v10 + 64) = sub_1AF5A99A4;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9554;
  v14[5] = v13;
  v14[2] = sub_1AF5A9FD0;
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
  *(v15 + 16) = 0xD000000000000011;
  *(v15 + 24) = 0x80000001AFF29600;
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
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
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

  *(v15 + 64) = sub_1AF5A99A4;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A9554;
  v19[5] = v18;
  v19[2] = sub_1AF5A9FD0;
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
  *(v20 + 16) = 0xD000000000000010;
  *(v20 + 24) = 0x80000001AFF295E0;
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
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
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

  *(v20 + 64) = sub_1AF5A99A4;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9554;
  v24[5] = v23;
  v24[2] = sub_1AF5A9FD0;
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
  *(v25 + 16) = 0xD000000000000015;
  *(v25 + 24) = 0x80000001AFF295C0;
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
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
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

  *(v25 + 64) = sub_1AF5A99A4;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A9554;
  v29[5] = v28;
  v29[2] = sub_1AF5A9FD0;
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
  *(v30 + 16) = 0xD000000000000011;
  *(v30 + 24) = 0x80000001AFF295A0;
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
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
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

  *(v30 + 64) = sub_1AF5A99A4;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 72) = v30;
  qword_1EB6C3078 = v0;
  return result;
}

uint64_t sub_1AF50CC14()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A0884;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A08B8;
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
  *(v4 + 16) = 0x656E68746F6F6D73;
  *(v4 + 24) = 0xEA00000000007373;
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

  *(v4 + 64) = sub_1AF5A0914;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9558;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FD4;
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
  *(v10 + 16) = 0xD000000000000015;
  *(v10 + 24) = 0x80000001AFF295C0;
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
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
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

  *(v10 + 64) = sub_1AF5A99A8;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9558;
  v14[5] = v13;
  v14[2] = sub_1AF5A9FD4;
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
  *(v15 + 16) = 0xD000000000000011;
  *(v15 + 24) = 0x80000001AFF295A0;
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
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 144) = xmmword_1AFE22A20;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v2)
  {
    *(v15 + 160) = (*(v16 + 8))(v2, v16);
  }

  *(v15 + 64) = sub_1AF5A99A8;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  qword_1EB6C3080 = v0;
  return result;
}

uint64_t sub_1AF50D2F0()
{
  v14 = sub_1AF5068DC();
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5A09B4;
  v4[5] = v2;
  v4[2] = sub_1AF5A09E8;
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
  *(v5 + 16) = 0x646E496570616873;
  *(v5 + 24) = 0xEA00000000007865;
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
    v3 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v3)
  {
    *(v5 + 160) = (*(v7 + 8))(v3, v7);
  }

  *(v5 + 64) = sub_1AF5A0A44;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for ParticlePrimitiveRenderer.Shape;
  sub_1AF5A9240(0, &qword_1EB63B610, &type metadata for ParticlePrimitiveRenderer.Shape, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A0A84;
  v9[5] = KeyPath;
  v9[2] = sub_1AF5A0AB0;
  v9[3] = KeyPath;
  v9[6] = KeyPath;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6570616873;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for ParticlePrimitiveRenderer.Shape;
  *(v10 + 48) = 36;
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
    v8 = (*(v11 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v8)
  {
    *(v10 + 160) = (*(v12 + 8))(v8, v12);
  }

  *(v10 + 64) = sub_1AF5A0B0C;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  *(inited + 32) = v10;
  result = sub_1AF48F810(inited, sub_1AF56E184);
  qword_1EB6C3088 = v14;
  return result;
}

uint64_t sub_1AF50D7A8(uint64_t result)
{
  v2 = result;
  if (result >= 5u)
  {
    v2 = 5;
  }

  *(v1 + 36) = v2;
  return result;
}

uint64_t sub_1AF50D870()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A1460;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A14A4;
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
  *(v4 + 16) = 0x656C616373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
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

  *(v4 + 64) = sub_1AF5A1500;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9564;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FF8;
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
  *(v10 + 16) = 0x7469736E65746E69;
  *(v10 + 24) = 0xE900000000000079;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 1008981770;
  *(v10 + 204) = 0x10000;
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
    v2 = (*(v5 + 8))();
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A99C0;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C3090 = v0;
  return result;
}

uint64_t sub_1AF50DD90()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A15A0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A15E4;
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
  *(v4 + 16) = 0x656C616373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
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

  *(v4 + 64) = sub_1AF5A1640;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9568;
  v9[5] = v8;
  v9[2] = sub_1AF5A9FFC;
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
  *(v10 + 16) = 0x7469736E65746E69;
  *(v10 + 24) = 0xE900000000000079;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 1008981770;
  *(v10 + 204) = 0x10000;
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
    v2 = (*(v5 + 8))();
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A99C4;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C3098 = v0;
  return result;
}

uint64_t sub_1AF50E2B0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A16E0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A1724;
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

  *(v4 + 64) = sub_1AF5A1780;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C30A0 = v0;
  return result;
}

uint64_t sub_1AF50E5E0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_1AFE55280;
  KeyPath = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v1 = swift_allocObject();
  v1[4] = sub_1AF5A1820;
  v1[5] = KeyPath;
  v1[2] = sub_1AF5A1854;
  v1[3] = KeyPath;
  v1[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 112) = 1;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 168) = 0;
  *(v2 + 216) = 0;
  *(v2 + 176) = 0;
  *(v2 + 16) = 0x65727574786574;
  *(v2 + 24) = 0xE700000000000000;
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = &type metadata for Entity;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 58) = 0;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 144) = xmmword_1AFE551B0;
  *(v2 + 80) = v1;
  *(v2 + 88) = &off_1F2535378;
  *(v2 + 210) = 0;
  v3 = swift_conformsToProtocol2();
  swift_retain_n();
  v184 = v3;
  if (v3)
  {
    v4 = (*(v3 + 8))();
  }

  else
  {
    v4 = &type metadata for Entity;
  }

  v5 = swift_conformsToProtocol2();
  if (v5 && v4)
  {
    *(v2 + 160) = (*(v5 + 8))(v4, v5);
  }

  v6 = *(v2 + 64);
  *(v2 + 64) = sub_1AF5A18B0;
  *(v2 + 72) = KeyPath;
  sub_1AF0FB8EC(v6);
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;

  *(v2 + 216) = 0;

  *(v186 + 32) = v2;
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA3EC;
  v10[5] = v8;
  v10[2] = sub_1AF5A18F0;
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
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x80000001AFF2A2B0;
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
  v185 = v12;
  if (v12)
  {
    v13 = (*(v12 + 8))();
  }

  else
  {
    v13 = v9;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v11 + 160) = (*(v14 + 8))(v13, v14);
  }

  v15 = *(v11 + 64);
  *(v11 + 64) = sub_1AF5A194C;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  v16 = &type metadata for ParticleOrientationMode;
  sub_1AF5A9240(0, &unk_1EB632F70, &type metadata for ParticleOrientationMode, type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF5AA274;
  v17[5] = v7;
  v17[2] = sub_1AF5A198C;
  v17[3] = v7;
  v17[6] = v7;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 210) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 0x7461746E6569726FLL;
  *(v18 + 24) = 0xEB000000006E6F69;
  *(v18 + 32) = v7;
  *(v18 + 40) = &type metadata for ParticleOrientationMode;
  *(v18 + 48) = 36;
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

  v21 = *(v18 + 64);
  *(v18 + 64) = sub_1AF5A19E8;
  *(v18 + 72) = v7;
  sub_1AF0FB8EC(v21);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = v11;

  *(v186 + 40) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA3EC;
  v24[5] = v23;
  v24[2] = sub_1AF5AA004;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 210) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  strcpy((v25 + 16), "blendModeIndex");
  *(v25 + 31) = -18;
  *(v25 + 32) = v23;
  v26 = MEMORY[0x1E69E7360];
  *(v25 + 40) = MEMORY[0x1E69E7360];
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
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
  if (v185)
  {
    v27 = (*(v185 + 8))();
  }

  else
  {
    v27 = v26;
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    *(v25 + 160) = (*(v28 + 8))(v27, v28);
  }

  v29 = *(v25 + 64);
  *(v25 + 64) = sub_1AF5A99C8;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(v29);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;

  v30 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  v31 = swift_allocObject();
  v31[4] = sub_1AF5A1A28;
  v31[5] = v22;
  v31[2] = sub_1AF5A1A64;
  v31[3] = v22;
  v31[6] = v22;
  v32 = swift_allocObject();
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 168) = 0;
  *(v32 + 210) = 0;
  *(v32 + 216) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x646F4D646E656C62;
  *(v32 + 24) = 0xE900000000000065;
  *(v32 + 32) = v22;
  *(v32 + 40) = &type metadata for BlendMode;
  *(v32 + 48) = 8;
  *(v32 + 56) = 0;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 1;
  *(v32 + 192) = 0;
  *(v32 + 196) = 1;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 104) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  v33 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v33)
  {
    v30 = (*(v33 + 8))();
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v30)
  {
    *(v32 + 160) = (*(v34 + 8))(v30, v34);
  }

  v35 = *(v32 + 64);
  *(v32 + 64) = sub_1AF5A1AA4;
  *(v32 + 72) = v22;
  sub_1AF0FB8EC(v35);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = v25;

  *(v186 + 48) = v32;
  v36 = swift_getKeyPath();
  v37 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF5A1AE4;
  v38[5] = v36;
  v38[2] = sub_1AF5A1B18;
  v38[3] = v36;
  v38[6] = v36;
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
  *(v39 + 16) = 0x685466666F747563;
  *(v39 + 24) = 0xEF646C6F68736572;
  *(v39 + 32) = v36;
  *(v39 + 40) = v37;
  *(v39 + 48) = 16;
  *(v39 + 56) = 0;
  *(v39 + 58) = 0;
  *(v39 + 184) = -1082130432;
  *(v39 + 188) = 0;
  *(v39 + 192) = 1065353216;
  *(v39 + 196) = 0;
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
    v41 = (*(v40 + 8))();
  }

  else
  {
    v41 = v37;
  }

  v182 = v40;
  v42 = swift_conformsToProtocol2();
  if (v42 && v41)
  {
    *(v39 + 160) = (*(v42 + 8))(v41, v42);
  }

  v43 = *(v39 + 64);
  *(v39 + 64) = sub_1AF5A1B74;
  *(v39 + 72) = v36;
  sub_1AF0FB8EC(v43);
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;

  *(v39 + 216) = 0;

  *(v186 + 56) = v39;
  v44 = swift_getKeyPath();
  v45 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v46 = swift_allocObject();
  v46[4] = sub_1AF5A1BB4;
  v46[5] = v44;
  v46[2] = sub_1AF5A1BE0;
  v46[3] = v44;
  v46[6] = v44;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = MEMORY[0x1E69E7CC0];
  *(v47 + 168) = 0;
  *(v47 + 210) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0x676E69746867696CLL;
  *(v47 + 24) = 0xE800000000000000;
  *(v47 + 32) = v44;
  *(v47 + 40) = v45;
  *(v47 + 48) = 37;
  *(v47 + 56) = 0;
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
  v48 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v48)
  {
    v49 = (*(v48 + 8))();
  }

  else
  {
    v49 = v45;
  }

  v50 = swift_conformsToProtocol2();
  if (v50 && v49)
  {
    *(v47 + 160) = (*(v50 + 8))(v49, v50);
  }

  v51 = *(v47 + 64);
  *(v47 + 64) = sub_1AF5A1C3C;
  *(v47 + 72) = v44;
  sub_1AF0FB8EC(v51);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;

  *(v186 + 64) = v47;
  v52 = swift_getKeyPath();
  v53 = swift_allocObject();
  v53[4] = sub_1AF5AA270;
  v53[5] = v52;
  v53[2] = sub_1AF5AA008;
  v53[3] = v52;
  v53[6] = v52;
  v54 = swift_allocObject();
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = MEMORY[0x1E69E7CC0];
  *(v54 + 168) = 0;
  *(v54 + 210) = 0;
  *(v54 + 216) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 0x72616C7563657073;
  *(v54 + 24) = 0xE800000000000000;
  *(v54 + 32) = v52;
  *(v54 + 40) = v45;
  *(v54 + 48) = 38;
  *(v54 + 56) = 0;
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
  if (v48)
  {
    v55 = (*(v48 + 8))();
  }

  else
  {
    v55 = v45;
  }

  v183 = v48;
  v56 = swift_conformsToProtocol2();
  if (v56 && v55)
  {
    *(v54 + 160) = (*(v56 + 8))(v55, v56);
  }

  v57 = *(v54 + 64);
  *(v54 + 64) = sub_1AF5A99CC;
  *(v54 + 72) = v52;
  sub_1AF0FB8EC(v57);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;

  *(v186 + 72) = v54;
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AF5AA3EC;
  v60[5] = v59;
  v60[2] = sub_1AF5AA004;
  v60[3] = v59;
  v60[6] = v59;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  strcpy((v61 + 16), "sortModeIndex");
  *(v61 + 30) = -4864;
  *(v61 + 32) = v59;
  v62 = MEMORY[0x1E69E7360];
  *(v61 + 40) = MEMORY[0x1E69E7360];
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
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  swift_retain_n();
  if (v185)
  {
    v63 = (*(v185 + 8))();
  }

  else
  {
    v63 = v62;
  }

  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    *(v61 + 160) = (*(v64 + 8))(v63, v64);
  }

  v65 = *(v61 + 64);
  *(v61 + 64) = sub_1AF5A99C8;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(v65);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  v66 = &type metadata for ParticleSortMode;
  sub_1AF5A9240(0, &qword_1EB632F98, &type metadata for ParticleSortMode, type metadata accessor for EntityGetSet);
  v67 = swift_allocObject();
  v67[4] = sub_1AF5A1C7C;
  v67[5] = v58;
  v67[2] = sub_1AF5A1CA8;
  v67[3] = v58;
  v67[6] = v58;
  v68 = swift_allocObject();
  *(v68 + 112) = 1;
  *(v68 + 128) = 0;
  *(v68 + 136) = 0;
  *(v68 + 120) = 0;
  *(v68 + 160) = MEMORY[0x1E69E7CC0];
  *(v68 + 168) = 0;
  *(v68 + 210) = 0;
  *(v68 + 216) = 0;
  *(v68 + 176) = 0;
  *(v68 + 16) = 0x65646F4D74726F73;
  *(v68 + 24) = 0xE800000000000000;
  *(v68 + 32) = v58;
  *(v68 + 40) = &type metadata for ParticleSortMode;
  *(v68 + 48) = 0;
  *(v68 + 56) = 1;
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
  *(v68 + 104) = 0;
  *(v68 + 144) = xmmword_1AFE22A20;
  *(v68 + 80) = v67;
  *(v68 + 88) = &off_1F2535378;
  *(v68 + 210) = 0;
  v69 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v69)
  {
    v66 = (*(v69 + 8))();
  }

  v70 = swift_conformsToProtocol2();
  if (v70 && v66)
  {
    *(v68 + 160) = (*(v70 + 8))(v66, v70);
  }

  v71 = *(v68 + 64);
  *(v68 + 64) = sub_1AF5A1D04;
  *(v68 + 72) = v58;
  sub_1AF0FB8EC(v71);
  *(v68 + 168) = 0;
  *(v68 + 176) = 0;

  *(v68 + 216) = v61;

  *(v186 + 80) = v68;
  v72 = swift_getKeyPath();
  v73 = MEMORY[0x1E69E7668];
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v74 = swift_allocObject();
  v74[4] = sub_1AF5A1AE4;
  v74[5] = v72;
  v74[2] = sub_1AF5A1D44;
  v74[3] = v72;
  v74[6] = v72;
  v75 = swift_allocObject();
  *(v75 + 112) = 1;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;
  *(v75 + 120) = 0;
  *(v75 + 160) = MEMORY[0x1E69E7CC0];
  *(v75 + 168) = 0;
  *(v75 + 210) = 0;
  *(v75 + 216) = 0;
  *(v75 + 176) = 0;
  *(v75 + 16) = 0x647265764F78616DLL;
  *(v75 + 24) = 0xEB00000000776172;
  *(v75 + 32) = v72;
  *(v75 + 40) = v73;
  *(v75 + 48) = 24;
  *(v75 + 56) = 0;
  *(v75 + 58) = 0;
  *(v75 + 184) = 1065353216;
  *(v75 + 188) = 0;
  *(v75 + 192) = 1132462080;
  *(v75 + 196) = 0;
  *(v75 + 200) = 0x1000100000000;
  *(v75 + 208) = 1;
  *(v75 + 64) = 0;
  *(v75 + 72) = 0;
  *(v75 + 96) = 0;
  *(v75 + 104) = 0;
  *(v75 + 144) = xmmword_1AFE22A20;
  *(v75 + 80) = v74;
  *(v75 + 88) = &off_1F2535378;
  *(v75 + 210) = 0;
  v76 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v76)
  {
    v73 = (*(v76 + 8))();
  }

  v77 = swift_conformsToProtocol2();
  if (v77 && v73)
  {
    *(v75 + 160) = (*(v77 + 8))(v73, v77);
  }

  v78 = *(v75 + 64);
  *(v75 + 64) = sub_1AF5A1DB4;
  *(v75 + 72) = v72;
  sub_1AF0FB8EC(v78);
  *(v75 + 168) = 0;
  *(v75 + 176) = 0;

  *(v75 + 216) = 0;

  *(v186 + 88) = v75;
  v79 = swift_getKeyPath();
  v80 = swift_getKeyPath();
  v81 = swift_allocObject();
  v81[4] = sub_1AF5AA3EC;
  v81[5] = v80;
  v81[2] = sub_1AF5AA004;
  v81[3] = v80;
  v81[6] = v80;
  v82 = swift_allocObject();
  *(v82 + 112) = 1;
  *(v82 + 128) = 0;
  *(v82 + 136) = 0;
  *(v82 + 120) = 0;
  *(v82 + 160) = MEMORY[0x1E69E7CC0];
  *(v82 + 168) = 0;
  *(v82 + 210) = 0;
  *(v82 + 216) = 0;
  *(v82 + 176) = 0;
  *(v82 + 16) = 0xD000000000000012;
  *(v82 + 24) = 0x80000001AFF2BB80;
  *(v82 + 32) = v80;
  v83 = MEMORY[0x1E69E7360];
  *(v82 + 40) = MEMORY[0x1E69E7360];
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
  if (v185)
  {
    v84 = (*(v185 + 8))();
  }

  else
  {
    v84 = v83;
  }

  v85 = swift_conformsToProtocol2();
  if (v85 && v84)
  {
    *(v82 + 160) = (*(v85 + 8))(v84, v85);
  }

  v86 = *(v82 + 64);
  *(v82 + 64) = sub_1AF5A99C8;
  *(v82 + 72) = v80;
  sub_1AF0FB8EC(v86);
  *(v82 + 168) = 0;
  *(v82 + 176) = 0;

  *(v82 + 216) = 0;

  v87 = &type metadata for ParticleAnimationMode;
  sub_1AF5A9240(0, &qword_1EB632F80, &type metadata for ParticleAnimationMode, type metadata accessor for EntityGetSet);
  v88 = swift_allocObject();
  v88[4] = sub_1AF5A1DF4;
  v88[5] = v79;
  v88[2] = sub_1AF5A1E20;
  v88[3] = v79;
  v88[6] = v79;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 168) = 0;
  *(v89 + 210) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  strcpy((v89 + 16), "animationMode");
  *(v89 + 30) = -4864;
  *(v89 + 32) = v79;
  *(v89 + 40) = &type metadata for ParticleAnimationMode;
  *(v89 + 48) = 28;
  *(v89 + 56) = 0;
  *(v89 + 58) = 0;
  *(v89 + 184) = 0;
  *(v89 + 188) = 1;
  *(v89 + 192) = 0;
  *(v89 + 196) = 1;
  *(v89 + 200) = 0x1000100000000;
  *(v89 + 208) = 1;
  *(v89 + 64) = 0;
  *(v89 + 72) = 0;
  *(v89 + 96) = 0;
  *(v89 + 104) = 0;
  *(v89 + 144) = xmmword_1AFE22A20;
  *(v89 + 80) = v88;
  *(v89 + 88) = &off_1F2535378;
  *(v89 + 210) = 0;
  v90 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v90)
  {
    v87 = (*(v90 + 8))();
  }

  v91 = swift_conformsToProtocol2();
  if (v91 && v87)
  {
    *(v89 + 160) = (*(v91 + 8))(v87, v91);
  }

  v92 = *(v89 + 64);
  *(v89 + 64) = sub_1AF5A1E7C;
  *(v89 + 72) = v79;
  sub_1AF0FB8EC(v92);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = v82;

  *(v186 + 96) = v89;
  v93 = swift_getKeyPath();
  v94 = swift_allocObject();
  v94[4] = sub_1AF5A956C;
  v94[5] = v93;
  v94[2] = sub_1AF5AA00C;
  v94[3] = v93;
  v94[6] = v93;
  v95 = swift_allocObject();
  *(v95 + 112) = 1;
  *(v95 + 128) = 0;
  *(v95 + 136) = 0;
  *(v95 + 120) = 0;
  *(v95 + 160) = MEMORY[0x1E69E7CC0];
  *(v95 + 168) = 0;
  *(v95 + 210) = 0;
  *(v95 + 216) = 0;
  *(v95 + 176) = 0;
  strcpy((v95 + 16), "softDistance");
  *(v95 + 29) = 0;
  *(v95 + 30) = -5120;
  *(v95 + 32) = v93;
  *(v95 + 40) = v37;
  *(v95 + 48) = 32;
  *(v95 + 56) = 0;
  *(v95 + 58) = 0;
  *(v95 + 184) = 0;
  *(v95 + 188) = 0;
  *(v95 + 192) = 0;
  *(v95 + 196) = 1;
  *(v95 + 200) = 0x1000100000000;
  *(v95 + 208) = 1;
  *(v95 + 64) = 0;
  *(v95 + 72) = 0;
  *(v95 + 96) = 0;
  *(v95 + 104) = 0;
  *(v95 + 144) = xmmword_1AFE22A20;
  *(v95 + 80) = v94;
  *(v95 + 88) = &off_1F2535378;
  *(v95 + 210) = 0;
  swift_retain_n();
  if (v182)
  {
    v37 = (*(v182 + 8))();
  }

  v96 = swift_conformsToProtocol2();
  if (v96 && v37)
  {
    *(v95 + 160) = (*(v96 + 8))(v37, v96);
  }

  v97 = *(v95 + 64);
  *(v95 + 64) = sub_1AF5A99D0;
  *(v95 + 72) = v93;
  sub_1AF0FB8EC(v97);
  *(v95 + 168) = 0;
  *(v95 + 176) = 0;

  *(v95 + 216) = 0;

  *(v186 + 104) = v95;
  v98 = swift_getKeyPath();
  sub_1AF5795B0();
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1AFE431C0;
  *(v99 + 32) = 0;
  *(v99 + 40) = 0xE000000000000000;
  v100 = MEMORY[0x1E69E6530];
  *(v99 + 72) = MEMORY[0x1E69E6530];
  *(v99 + 48) = 16;
  sub_1AF5A9240(0, &qword_1ED722B68, v100, type metadata accessor for EntityGetSet);
  v101 = swift_allocObject();
  v101[4] = sub_1AF5A1820;
  v101[5] = v98;
  v101[2] = sub_1AF5A1EBC;
  v101[3] = v98;
  v101[6] = v98;
  v102 = swift_allocObject();
  *(v102 + 112) = 1;
  *(v102 + 128) = 0;
  *(v102 + 136) = 0;
  *(v102 + 120) = 0;
  *(v102 + 160) = MEMORY[0x1E69E7CC0];
  *(v102 + 168) = 0;
  *(v102 + 210) = 0;
  *(v102 + 216) = 0;
  *(v102 + 176) = 0;
  *(v102 + 16) = 0xD000000000000011;
  *(v102 + 24) = 0x80000001AFF24870;
  *(v102 + 32) = v98;
  *(v102 + 40) = v100;
  *(v102 + 48) = 88;
  *(v102 + 56) = 0;
  *(v102 + 58) = 0;
  *(v102 + 184) = 0;
  *(v102 + 188) = 0;
  *(v102 + 192) = 0;
  *(v102 + 196) = 1;
  *(v102 + 200) = 0x1000100000000;
  *(v102 + 208) = 1;
  *(v102 + 64) = 0;
  *(v102 + 72) = 0;
  *(v102 + 96) = 0;
  *(v102 + 104) = 0;
  *(v102 + 144) = xmmword_1AFE22A20;
  *(v102 + 80) = v101;
  *(v102 + 88) = &off_1F2535378;
  *(v102 + 210) = 0;
  v103 = *(v99 + 16);
  swift_retain_n();
  if (v103)
  {
    goto LABEL_85;
  }

  v104 = MEMORY[0x1E69E6530];
  v105 = swift_conformsToProtocol2();
  if (v105)
  {
    v104 = (*(v105 + 8))(MEMORY[0x1E69E6530], v105);
  }

  v106 = swift_conformsToProtocol2();
  if (v106 && v104)
  {
    v99 = (*(v106 + 8))(v104, v106);
LABEL_85:
    *(v102 + 160) = v99;
  }

  v107 = *(v102 + 64);
  *(v102 + 64) = sub_1AF5A1F18;
  *(v102 + 72) = v98;
  sub_1AF0FB8EC(v107);
  *(v102 + 168) = 0;
  *(v102 + 176) = 0;

  *(v102 + 216) = 0;

  *(v186 + 112) = v102;
  v108 = swift_getKeyPath();
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1AFE431C0;
  *(v109 + 32) = 0;
  *(v109 + 40) = 0xE000000000000000;
  *(v109 + 72) = v100;
  *(v109 + 48) = 2;
  v110 = swift_allocObject();
  v110[4] = sub_1AF5AA3EC;
  v110[5] = v108;
  v110[2] = sub_1AF5AA010;
  v110[3] = v108;
  v110[6] = v108;
  v111 = swift_allocObject();
  *(v111 + 112) = 1;
  *(v111 + 128) = 0;
  *(v111 + 136) = 0;
  *(v111 + 120) = 0;
  *(v111 + 160) = MEMORY[0x1E69E7CC0];
  *(v111 + 168) = 0;
  *(v111 + 176) = 0;
  *(v111 + 210) = 0;
  *(v111 + 216) = 0;
  *(v111 + 16) = 0x6F436E6F62626972;
  *(v111 + 24) = 0xEB00000000746E75;
  *(v111 + 32) = v108;
  *(v111 + 40) = v100;
  *(v111 + 48) = 96;
  *(v111 + 56) = 0;
  *(v111 + 58) = 0;
  *(v111 + 184) = 1065353216;
  *(v111 + 188) = 0;
  *(v111 + 192) = 0;
  *(v111 + 196) = 1;
  *(v111 + 200) = 0x1000100000000;
  *(v111 + 208) = 1;
  *(v111 + 64) = 0;
  *(v111 + 72) = 0;
  *(v111 + 96) = 0;
  *(v111 + 104) = 0;
  *(v111 + 144) = xmmword_1AFE22A20;
  *(v111 + 80) = v110;
  *(v111 + 88) = &off_1F2535378;
  *(v111 + 210) = 0;
  v112 = *(v109 + 16);
  swift_retain_n();
  if (v112)
  {
LABEL_92:
    *(v111 + 160) = v109;

    goto LABEL_93;
  }

  v113 = MEMORY[0x1E69E6530];
  v114 = swift_conformsToProtocol2();
  if (v114)
  {
    v113 = (*(v114 + 8))(MEMORY[0x1E69E6530], v114);
  }

  v115 = swift_conformsToProtocol2();
  if (v115 && v113)
  {
    v109 = (*(v115 + 8))(v113, v115);
    goto LABEL_92;
  }

LABEL_93:
  v116 = *(v111 + 64);
  *(v111 + 64) = sub_1AF5A99D4;
  *(v111 + 72) = v108;
  sub_1AF0FB8EC(v116);
  *(v111 + 168) = 0;
  *(v111 + 176) = 0;

  *(v111 + 216) = 0;

  *(v186 + 120) = v111;
  v117 = swift_getKeyPath();
  v118 = swift_allocObject();
  v118[4] = sub_1AF5AA3EC;
  v118[5] = v117;
  v118[2] = sub_1AF5AA010;
  v118[3] = v117;
  v118[6] = v117;
  v119 = swift_allocObject();
  *(v119 + 112) = 1;
  *(v119 + 128) = 0;
  *(v119 + 136) = 0;
  *(v119 + 120) = 0;
  *(v119 + 160) = MEMORY[0x1E69E7CC0];
  *(v119 + 168) = 0;
  *(v119 + 176) = 0;
  *(v119 + 210) = 0;
  *(v119 + 216) = 0;
  *(v119 + 16) = 0xD000000000000010;
  *(v119 + 24) = 0x80000001AFF24890;
  *(v119 + 32) = v117;
  *(v119 + 40) = v100;
  *(v119 + 48) = 56;
  *(v119 + 56) = 0;
  *(v119 + 58) = 0;
  *(v119 + 184) = 0;
  *(v119 + 188) = 0;
  *(v119 + 192) = 1107296256;
  *(v119 + 196) = 0;
  *(v119 + 200) = 0x1000100000000;
  *(v119 + 208) = 1;
  *(v119 + 64) = 0;
  *(v119 + 72) = 0;
  *(v119 + 96) = 0;
  *(v119 + 104) = 0;
  *(v119 + 144) = xmmword_1AFE22A20;
  *(v119 + 80) = v118;
  *(v119 + 88) = &off_1F2535378;
  *(v119 + 210) = 0;
  v120 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v120)
  {
    v100 = (*(v120 + 8))();
  }

  v121 = MEMORY[0x1E69E7360];
  v122 = swift_conformsToProtocol2();
  if (v122 && v100)
  {
    *(v119 + 160) = (*(v122 + 8))(v100, v122);
  }

  v123 = *(v119 + 64);
  *(v119 + 64) = sub_1AF5A99D4;
  *(v119 + 72) = v117;
  sub_1AF0FB8EC(v123);
  *(v119 + 168) = 0;
  *(v119 + 176) = 0;

  *(v119 + 216) = 0;

  *(v186 + 128) = v119;
  v124 = swift_getKeyPath();
  v125 = swift_getKeyPath();
  v126 = swift_allocObject();
  v126[4] = sub_1AF5AA3EC;
  v126[5] = v125;
  v126[2] = sub_1AF5AA004;
  v126[3] = v125;
  v126[6] = v125;
  v127 = swift_allocObject();
  *(v127 + 112) = 1;
  *(v127 + 128) = 0;
  *(v127 + 136) = 0;
  *(v127 + 120) = 0;
  *(v127 + 160) = MEMORY[0x1E69E7CC0];
  *(v127 + 168) = 0;
  *(v127 + 176) = 0;
  *(v127 + 210) = 0;
  *(v127 + 216) = 0;
  strcpy((v127 + 16), "profileIndex");
  *(v127 + 29) = 0;
  *(v127 + 30) = -5120;
  *(v127 + 32) = v125;
  *(v127 + 40) = v121;
  *(v127 + 48) = 0;
  *(v127 + 56) = 1;
  *(v127 + 58) = 0;
  *(v127 + 184) = 0;
  *(v127 + 188) = 1;
  *(v127 + 192) = 0;
  *(v127 + 196) = 1;
  *(v127 + 200) = 0x1000100000000;
  *(v127 + 208) = 1;
  *(v127 + 64) = 0;
  *(v127 + 72) = 0;
  *(v127 + 96) = 0;
  *(v127 + 104) = 0;
  *(v127 + 144) = xmmword_1AFE22A20;
  *(v127 + 80) = v126;
  *(v127 + 88) = &off_1F2535378;
  *(v127 + 210) = 0;
  swift_retain_n();
  if (v185)
  {
    v128 = (*(v185 + 8))();
  }

  else
  {
    v128 = v121;
  }

  v129 = swift_conformsToProtocol2();
  if (v129 && v128)
  {
    *(v127 + 160) = (*(v129 + 8))(v128, v129);
  }

  v130 = *(v127 + 64);
  *(v127 + 64) = sub_1AF5A99C8;
  *(v127 + 72) = v125;
  sub_1AF0FB8EC(v130);
  *(v127 + 168) = 0;
  *(v127 + 176) = 0;

  *(v127 + 216) = 0;

  v131 = &type metadata for ParticleRibbonProfile;
  sub_1AF5A9240(0, &qword_1EB63B690, &type metadata for ParticleRibbonProfile, type metadata accessor for EntityGetSet);
  v132 = swift_allocObject();
  v132[4] = sub_1AF5A1F58;
  v132[5] = v124;
  v132[2] = sub_1AF5A1F84;
  v132[3] = v124;
  v132[6] = v124;
  v133 = swift_allocObject();
  *(v133 + 112) = 1;
  *(v133 + 128) = 0;
  *(v133 + 136) = 0;
  *(v133 + 120) = 0;
  *(v133 + 160) = MEMORY[0x1E69E7CC0];
  *(v133 + 168) = 0;
  *(v133 + 176) = 0;
  *(v133 + 216) = 0;
  *(v133 + 16) = 0x656C69666F7270;
  *(v133 + 24) = 0xE700000000000000;
  *(v133 + 32) = v124;
  *(v133 + 40) = &type metadata for ParticleRibbonProfile;
  *(v133 + 48) = 64;
  *(v133 + 56) = 0;
  *(v133 + 58) = 0;
  *(v133 + 184) = 0;
  *(v133 + 188) = 1;
  *(v133 + 192) = 0;
  *(v133 + 196) = 1;
  *(v133 + 200) = 0x1000100000000;
  *(v133 + 208) = 1;
  *(v133 + 64) = 0;
  *(v133 + 72) = 0;
  *(v133 + 96) = 0;
  *(v133 + 104) = 0;
  *(v133 + 144) = xmmword_1AFE22A20;
  *(v133 + 80) = v132;
  *(v133 + 88) = &off_1F2535378;
  *(v133 + 210) = 0;
  v134 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v134)
  {
    v131 = (*(v134 + 8))();
  }

  v135 = &type metadata for Entity;
  v136 = swift_conformsToProtocol2();
  if (v136 && v131)
  {
    *(v133 + 160) = (*(v136 + 8))(v131, v136);
  }

  *(v133 + 64) = sub_1AF5A1FE0;
  *(v133 + 72) = v124;
  sub_1AF0FB8EC(0);
  *(v133 + 168) = 0;
  *(v133 + 176) = 0;

  *(v133 + 216) = v127;
  *(v186 + 136) = v133;
  v137 = swift_getKeyPath();
  v138 = swift_getKeyPath();
  v139 = swift_allocObject();
  v139[4] = sub_1AF5AA3EC;
  v139[5] = v137;
  v139[2] = sub_1AF5AA014;
  v139[3] = v137;
  v139[6] = v137;
  v140 = swift_allocObject();
  *(v140 + 112) = 1;
  *(v140 + 128) = 0;
  *(v140 + 136) = 0;
  *(v140 + 120) = 0;
  *(v140 + 160) = MEMORY[0x1E69E7CC0];
  *(v140 + 168) = 0;
  *(v140 + 176) = 0;
  *(v140 + 216) = 0;
  *(v140 + 16) = 0x7061436E69676562;
  *(v140 + 24) = 0xEF65727574786554;
  *(v140 + 32) = v137;
  *(v140 + 40) = &type metadata for Entity;
  *(v140 + 48) = 68;
  *(v140 + 56) = 0;
  *(v140 + 58) = 0;
  *(v140 + 184) = 0;
  *(v140 + 188) = 1;
  *(v140 + 192) = 0;
  *(v140 + 196) = 1;
  *(v140 + 200) = 0x1000100000000;
  *(v140 + 208) = 1;
  *(v140 + 64) = 0;
  *(v140 + 72) = 0;
  *(v140 + 96) = v138;
  *(v140 + 104) = 0;
  *(v140 + 144) = xmmword_1AFE551B0;
  *(v140 + 80) = v139;
  *(v140 + 88) = &off_1F2535378;
  *(v140 + 210) = 0;
  swift_retain_n();

  if (v184)
  {
    v141 = (*(v184 + 8))();
  }

  else
  {
    v141 = &type metadata for Entity;
  }

  v142 = swift_conformsToProtocol2();
  if (v142 && v141)
  {
    v143 = (*(v142 + 8))(v141, v142);

    *(v140 + 160) = v143;
  }

  else
  {
  }

  *(v140 + 64) = sub_1AF5A99D8;
  *(v140 + 72) = v137;
  sub_1AF0FB8EC(0);
  *(v140 + 168) = 0;
  *(v140 + 176) = 0;

  *(v140 + 216) = 0;
  *(v186 + 144) = v140;
  v144 = swift_getKeyPath();
  v145 = swift_getKeyPath();
  v146 = swift_allocObject();
  v146[4] = sub_1AF5AA3EC;
  v146[5] = v144;
  v146[2] = sub_1AF5AA014;
  v146[3] = v144;
  v146[6] = v144;
  v147 = swift_allocObject();
  *(v147 + 112) = 1;
  *(v147 + 128) = 0;
  *(v147 + 136) = 0;
  *(v147 + 120) = 0;
  *(v147 + 160) = MEMORY[0x1E69E7CC0];
  *(v147 + 168) = 0;
  *(v147 + 176) = 0;
  *(v147 + 216) = 0;
  strcpy((v147 + 16), "endCapTexture");
  *(v147 + 30) = -4864;
  *(v147 + 32) = v144;
  *(v147 + 40) = &type metadata for Entity;
  *(v147 + 48) = 76;
  *(v147 + 56) = 0;
  *(v147 + 58) = 0;
  *(v147 + 184) = 0;
  *(v147 + 188) = 1;
  *(v147 + 192) = 0;
  *(v147 + 196) = 1;
  *(v147 + 200) = 0x1000100000000;
  *(v147 + 208) = 1;
  *(v147 + 64) = 0;
  *(v147 + 72) = 0;
  *(v147 + 96) = v145;
  *(v147 + 104) = 0;
  *(v147 + 144) = xmmword_1AFE551B0;
  *(v147 + 80) = v146;
  *(v147 + 88) = &off_1F2535378;
  *(v147 + 210) = 0;
  swift_retain_n();

  if (v184)
  {
    v135 = (*(v184 + 8))();
  }

  v148 = swift_conformsToProtocol2();
  if (v148 && v135)
  {
    v149 = (*(v148 + 8))(v135, v148);

    *(v147 + 160) = v149;
  }

  else
  {
  }

  *(v147 + 64) = sub_1AF5A99D8;
  *(v147 + 72) = v144;
  sub_1AF0FB8EC(0);
  *(v147 + 168) = 0;
  *(v147 + 176) = 0;

  *(v147 + 216) = 0;
  *(v186 + 152) = v147;
  v150 = swift_getKeyPath();
  v151 = swift_getKeyPath();
  v152 = swift_allocObject();
  v152[4] = sub_1AF5AA3EC;
  v152[5] = v151;
  v152[2] = sub_1AF5AA004;
  v152[3] = v151;
  v152[6] = v151;
  v153 = swift_allocObject();
  *(v153 + 112) = 1;
  *(v153 + 128) = 0;
  *(v153 + 136) = 0;
  *(v153 + 120) = 0;
  *(v153 + 160) = MEMORY[0x1E69E7CC0];
  *(v153 + 168) = 0;
  *(v153 + 176) = 0;
  *(v153 + 216) = 0;
  *(v153 + 16) = 0xD000000000000010;
  *(v153 + 24) = 0x80000001AFF2BC40;
  *(v153 + 32) = v151;
  v154 = MEMORY[0x1E69E7360];
  *(v153 + 40) = MEMORY[0x1E69E7360];
  *(v153 + 48) = 0;
  *(v153 + 56) = 1;
  *(v153 + 58) = 0;
  *(v153 + 184) = 0;
  *(v153 + 188) = 1;
  *(v153 + 192) = 0;
  *(v153 + 196) = 1;
  *(v153 + 200) = 0x1000100000000;
  *(v153 + 208) = 1;
  *(v153 + 64) = 0;
  *(v153 + 72) = 0;
  *(v153 + 96) = 0;
  *(v153 + 104) = 0;
  *(v153 + 144) = xmmword_1AFE22A20;
  *(v153 + 80) = v152;
  *(v153 + 88) = &off_1F2535378;
  *(v153 + 210) = 0;
  swift_retain_n();
  if (v185)
  {
    v154 = (*(v185 + 8))();
  }

  v155 = swift_conformsToProtocol2();
  if (v155 && v154)
  {
    *(v153 + 160) = (*(v155 + 8))(v154, v155);
  }

  *(v153 + 64) = sub_1AF5A99C8;
  *(v153 + 72) = v151;
  sub_1AF0FB8EC(0);
  *(v153 + 168) = 0;
  *(v153 + 176) = 0;

  *(v153 + 216) = 0;
  v156 = &type metadata for ParticleRibbonTextureMode;
  sub_1AF5A9240(0, &qword_1EB63B698, &type metadata for ParticleRibbonTextureMode, type metadata accessor for EntityGetSet);
  v157 = swift_allocObject();
  v157[4] = sub_1AF5AA278;
  v157[5] = v150;
  v157[2] = sub_1AF5A2020;
  v157[3] = v150;
  v157[6] = v150;
  v158 = swift_allocObject();
  *(v158 + 112) = 1;
  *(v158 + 128) = 0;
  *(v158 + 136) = 0;
  *(v158 + 120) = 0;
  *(v158 + 160) = MEMORY[0x1E69E7CC0];
  *(v158 + 168) = 0;
  *(v158 + 176) = 0;
  *(v158 + 216) = 0;
  *(v158 + 16) = 0x4D65727574786574;
  *(v158 + 24) = 0xEB0000000065646FLL;
  *(v158 + 32) = v150;
  *(v158 + 40) = &type metadata for ParticleRibbonTextureMode;
  *(v158 + 48) = 39;
  *(v158 + 56) = 0;
  *(v158 + 58) = 0;
  *(v158 + 184) = 0;
  *(v158 + 188) = 1;
  *(v158 + 192) = 0;
  *(v158 + 196) = 1;
  *(v158 + 200) = 0x1000100000000;
  *(v158 + 208) = 1;
  *(v158 + 64) = 0;
  *(v158 + 72) = 0;
  *(v158 + 96) = 0;
  *(v158 + 104) = 0;
  *(v158 + 144) = xmmword_1AFE22A20;
  *(v158 + 80) = v157;
  *(v158 + 88) = &off_1F2535378;
  *(v158 + 210) = 0;
  v159 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v159)
  {
    v156 = (*(v159 + 8))();
  }

  v160 = swift_conformsToProtocol2();
  if (v160 && v156)
  {
    *(v158 + 160) = (*(v160 + 8))(v156, v160);
  }

  *(v158 + 64) = sub_1AF5A207C;
  *(v158 + 72) = v150;
  sub_1AF0FB8EC(0);
  *(v158 + 168) = 0;
  *(v158 + 176) = 0;

  *(v158 + 216) = v153;
  *(v186 + 160) = v158;
  v161 = swift_getKeyPath();
  sub_1AF57C8C8();
  v162 = swift_allocObject();
  v162[4] = sub_1AF5A1820;
  v162[5] = v161;
  v162[2] = sub_1AF5A20BC;
  v162[3] = v161;
  v162[6] = v161;
  v163 = swift_allocObject();
  *(v163 + 104) = 0;
  *(v163 + 112) = 1;
  *(v163 + 128) = 0;
  *(v163 + 136) = 0;
  *(v163 + 120) = 0;
  *(v163 + 160) = MEMORY[0x1E69E7CC0];
  *(v163 + 168) = 0;
  *(v163 + 176) = 0;
  *(v163 + 216) = 0;
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v165 = v164;
  strcpy((v163 + 16), "textureScale");
  *(v163 + 29) = 0;
  *(v163 + 30) = -5120;
  *(v163 + 32) = v161;
  *(v163 + 40) = v164;
  *(v163 + 48) = 40;
  *(v163 + 56) = 0;
  *(v163 + 58) = 0;
  *(v163 + 184) = 0;
  *(v163 + 188) = 1;
  *(v163 + 192) = 0;
  *(v163 + 196) = 1;
  *(v163 + 200) = 0x1000100000000;
  *(v163 + 208) = 1;
  *(v163 + 64) = 0;
  *(v163 + 72) = 0;
  *(v163 + 96) = 0;
  *(v163 + 144) = xmmword_1AFE22A20;
  *(v163 + 80) = v162;
  *(v163 + 88) = &off_1F2535378;
  *(v163 + 210) = 0;
  v166 = swift_conformsToProtocol2();
  if (v166)
  {
    v167 = v165;
  }

  else
  {
    v167 = 0;
  }

  swift_retain_n();
  v168 = v165;
  if (v167)
  {
    v168 = (*(v166 + 8))(v167, v166);
  }

  v169 = swift_conformsToProtocol2();
  if (v169 && v168)
  {
    *(v163 + 160) = (*(v169 + 8))(v168, v169);
  }

  v170 = *(v163 + 64);
  *(v163 + 64) = sub_1AF5A2118;
  *(v163 + 72) = v161;
  sub_1AF0FB8EC(v170);
  *(v163 + 168) = 0;
  *(v163 + 176) = 0;

  *(v163 + 216) = 0;

  *(v186 + 168) = v163;
  v171 = swift_getKeyPath();
  v172 = swift_allocObject();
  v172[4] = sub_1AF5AA3EC;
  v172[5] = v171;
  v172[2] = sub_1AF5AA018;
  v172[3] = v171;
  v172[6] = v171;
  v173 = swift_allocObject();
  *(v173 + 112) = 1;
  *(v173 + 128) = 0;
  *(v173 + 136) = 0;
  *(v173 + 120) = 0;
  *(v173 + 160) = MEMORY[0x1E69E7CC0];
  *(v173 + 168) = 0;
  *(v173 + 176) = 0;
  *(v173 + 216) = 0;
  *(v173 + 16) = 0x4265727574786574;
  *(v173 + 24) = 0xEB00000000736169;
  *(v173 + 32) = v171;
  *(v173 + 40) = v165;
  *(v173 + 48) = 48;
  *(v173 + 56) = 0;
  *(v173 + 58) = 0;
  *(v173 + 184) = 0;
  *(v173 + 188) = 1;
  *(v173 + 192) = 0;
  *(v173 + 196) = 1;
  *(v173 + 200) = 0x1000100000000;
  *(v173 + 208) = 1;
  *(v173 + 64) = 0;
  *(v173 + 72) = 0;
  *(v173 + 96) = 0;
  *(v173 + 104) = 0;
  *(v173 + 144) = xmmword_1AFE22A20;
  *(v173 + 80) = v172;
  *(v173 + 88) = &off_1F2535378;
  *(v173 + 210) = 0;
  swift_retain_n();
  if (v167)
  {
    v165 = (*(v166 + 8))(v167, v166);
  }

  v174 = swift_conformsToProtocol2();
  if (v174 && v165)
  {
    *(v173 + 160) = (*(v174 + 8))(v165, v174);
  }

  v175 = *(v173 + 64);
  *(v173 + 64) = sub_1AF5A99DC;
  *(v173 + 72) = v171;
  sub_1AF0FB8EC(v175);
  *(v173 + 168) = 0;
  *(v173 + 176) = 0;

  *(v173 + 216) = 0;

  *(v186 + 176) = v173;
  v176 = swift_getKeyPath();
  v177 = swift_allocObject();
  v177[4] = sub_1AF5AA270;
  v177[5] = v176;
  v177[2] = sub_1AF5AA008;
  v177[3] = v176;
  v177[6] = v176;
  v178 = swift_allocObject();
  *(v178 + 112) = 1;
  *(v178 + 128) = 0;
  *(v178 + 136) = 0;
  *(v178 + 120) = 0;
  *(v178 + 160) = MEMORY[0x1E69E7CC0];
  *(v178 + 168) = 0;
  *(v178 + 176) = 0;
  *(v178 + 216) = 0;
  strcpy((v178 + 16), "avoidOverdraw");
  *(v178 + 30) = -4864;
  *(v178 + 32) = v176;
  v179 = MEMORY[0x1E69E6370];
  *(v178 + 40) = MEMORY[0x1E69E6370];
  *(v178 + 48) = 104;
  *(v178 + 56) = 0;
  *(v178 + 58) = 0;
  *(v178 + 184) = 0;
  *(v178 + 188) = 1;
  *(v178 + 192) = 0;
  *(v178 + 196) = 1;
  *(v178 + 200) = 0x1000100000000;
  *(v178 + 208) = 1;
  *(v178 + 64) = 0;
  *(v178 + 72) = 0;
  *(v178 + 96) = 0;
  *(v178 + 104) = 0;
  *(v178 + 144) = xmmword_1AFE22A20;
  *(v178 + 80) = v177;
  *(v178 + 88) = &off_1F2535378;
  *(v178 + 210) = 0;
  swift_retain_n();
  if (v183)
  {
    v179 = (*(v183 + 8))();
  }

  v180 = swift_conformsToProtocol2();
  if (v180 && v179)
  {
    *(v178 + 160) = (*(v180 + 8))(v179, v180);
  }

  *(v178 + 64) = sub_1AF5A99CC;
  *(v178 + 72) = v176;
  sub_1AF0FB8EC(0);
  *(v178 + 168) = 0;
  *(v178 + 176) = 0;

  *(v178 + 216) = 0;
  *(v186 + 184) = v178;
  qword_1EB6C30A8 = v186;
  return result;
}