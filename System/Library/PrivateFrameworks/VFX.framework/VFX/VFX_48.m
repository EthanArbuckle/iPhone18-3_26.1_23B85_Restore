uint64_t sub_1AF4BD6F0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF587B90;
  v3[5] = KeyPath;
  v3[2] = sub_1AF587BCC;
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
  *(v4 + 16) = 1701667182;
  *(v4 + 24) = 0xE400000000000000;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF587BFC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2E10 = v0;
  return result;
}

uint64_t sub_1AF4BDA20()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF587D00();
  v2 = swift_allocObject();
  v2[4] = sub_1AF587CF0;
  v2[5] = KeyPath;
  v2[2] = sub_1AF587CF8;
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
  sub_1AF5A9240(0, &qword_1EB63A8B8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1635017060;
  *(v3 + 24) = 0xE400000000000000;
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
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    *(v3 + 160) = (*(v5 + 8))();
  }

  *(v3 + 64) = sub_1AF587D7C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v0 + 32) = v3;
  qword_1EB6C2E18 = v0;
  return result;
}

uint64_t sub_1AF4BDD28()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58801C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588058;
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
  *(v4 + 16) = 0x696669746E656469;
  *(v4 + 24) = 0xEA00000000007265;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF588088;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2E20 = v0;
  return result;
}

uint64_t sub_1AF4BE06C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5881C4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5881F8;
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

  *(v4 + 64) = sub_1AF588254;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2E28 = v0;
  return result;
}

uint64_t sub_1AF4BE3A8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5882F4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588328;
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
  *(v4 + 16) = 0x687464695778616DLL;
  *(v4 + 24) = 0xE800000000000000;
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

  *(v4 + 64) = sub_1AF588384;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA304;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BDC;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x686769654878616DLL;
  *(v10 + 24) = 0xE900000000000074;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 8;
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
    v2 = (*(v5 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v2)
  {
    *(v10 + 160) = (*(v12 + 8))(v2, v12);
  }

  *(v10 + 64) = sub_1AF5A9748;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF5883C4;
  v15[5] = v13;
  v15[2] = sub_1AF5883F0;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = v11;
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x657073417065656BLL;
  *(v16 + 24) = 0xEF6F697461527463;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 16;
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

  *(v16 + 64) = sub_1AF58844C;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  qword_1EB6C2E30 = v0;
  return result;
}

uint64_t sub_1AF4BEAB4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57A3F8();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58854C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF588564;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  v4 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  *(v3 + 16) = 0x6F4370616D70696DLL;
  *(v3 + 24) = 0xEB00000000746E75;
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
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  sub_1AF5795B0();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 32) = 48;
  *(v6 + 40) = 0xE100000000000000;
  *(v6 + 72) = v4;
  *(v6 + 48) = 0;
  *(v3 + 160) = v6;
  swift_retain_n();

  *(v3 + 64) = sub_1AF5885C8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v0 + 32) = v3;
  qword_1EB6C2E38 = v0;
  return result;
}

uint64_t sub_1AF4BED88()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for TextureFallback;
  sub_1AF5A9240(0, &qword_1EB63A900, &type metadata for TextureFallback, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF588698;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5886C4;
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
  *(v4 + 16) = 0x6B6361626C6C6166;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for TextureFallback;
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

  *(v4 + 64) = sub_1AF588720;
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
  v10[4] = sub_1AF588760;
  v10[5] = v8;
  v10[2] = sub_1AF58879C;
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
  *(v11 + 16) = 0x726F706D65547369;
  *(v11 + 24) = 0xEA00000000006C61;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 1;
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

  *(v11 + 64) = sub_1AF5887F8;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2E40 = v0;
  return result;
}

uint64_t sub_1AF4BF2C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF588928;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588954;
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
  *(v4 + 16) = 0x65746172656E6567;
  *(v4 + 24) = 0xEF7370616D70694DLL;
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

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF5889B0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA10C;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BEC;
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
  *(v10 + 16) = 0x70616D65627563;
  *(v10 + 24) = 0xE700000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
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

  *(v10 + 64) = sub_1AF5A9750;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5AA10C;
  v14[5] = v13;
  v14[2] = sub_1AF5A9BEC;
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
  *(v15 + 16) = 1111970419;
  *(v15 + 24) = 0xE400000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
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

  *(v15 + 64) = sub_1AF5A9750;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5AA10C;
  v19[5] = v18;
  v19[2] = sub_1AF5A9BEC;
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
  strcpy((v20 + 16), "unpremultiply");
  *(v20 + 30) = -4864;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
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

  *(v20 + 64) = sub_1AF5A9750;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA10C;
  v24[5] = v23;
  v24[2] = sub_1AF5A9BEC;
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
  *(v25 + 16) = 0x6C417261656E696CLL;
  *(v25 + 24) = 0xEB00000000616870;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
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

  *(v25 + 64) = sub_1AF5A9750;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 216) = 0;
  *(v29 + 80) = 0;
  *(v29 + 88) = 0;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  strcpy((v29 + 16), "CPU sampling");
  *(v29 + 29) = 0;
  *(v29 + 30) = -5120;
  v30 = MEMORY[0x1E69E73E0];
  *(v29 + 32) = v28;
  *(v29 + 40) = v30;
  *(v29 + 48) = 0;
  *(v29 + 56) = 1;
  *(v29 + 58) = 4;
  *(v29 + 184) = 0;
  *(v29 + 188) = 1;
  *(v29 + 192) = 0;
  *(v29 + 196) = 1;
  *(v29 + 200) = 0x1000100000000;
  *(v29 + 208) = 1;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 210) = 4;
  *(v29 + 144) = xmmword_1AFE22A20;
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;
  v31 = MEMORY[0x1E69E7CC0];
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 96) = 0;
  *(v29 + 104) = 2040;
  *(v29 + 112) = 0;
  *(v0 + 72) = v29;
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA10C;
  v33[5] = v32;
  v33[2] = sub_1AF5A9BEC;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = v31;
  *(v34 + 168) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0x6361667275534F49;
  *(v34 + 24) = 0xE900000000000065;
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
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    *(v34 + 160) = (*(v35 + 8))(v2, v35);
  }

  *(v34 + 64) = sub_1AF5A9750;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(0);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;
  *(v0 + 80) = v34;
  qword_1EB6C2E48 = v0;
  return result;
}

uint64_t sub_1AF4BFE8C(uint64_t result)
{
  v2 = *v1;
  v3 = *v1 & 0x60;
  if (result)
  {
    if (v3 == 96)
    {
      return result;
    }

    v4 = v2 | 0x60;
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    v4 = v2 & 0xFFFFFFFFFFFFFF9FLL;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1AF4BFFB0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v8, v9);
  if (a4)
  {
    sub_1AFDFEC28();
    if (!v4)
    {
      v10 = a2;
      sub_1AF448018(v8, v9);
      sub_1AF480018();
      sub_1AFDFEC38();
    }
  }

  else
  {
    sub_1AFDFEC28();
    if (!v4)
    {
      sub_1AF448018(v8, v9);
      sub_1AFDFEBE8();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
}

uint64_t sub_1AF4C00E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF598B0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1AF4C013C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (v3 == v4)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  else
  {
    v6 = a1[1];
    if (v3 == v4 && v6 == a2[1])
    {
      return 1;
    }

    else
    {
      return sub_1AFDFEE28();
    }
  }
}

uint64_t sub_1AF4C0194@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 == 1)
  {
    v9[3] = &type metadata for Entity;
    v9[4] = &off_1F2535EA8;
    v9[0] = v3;
    v5 = sub_1AF441150(v9, &type metadata for Entity);
    v8[3] = &type metadata for Entity;
    v8[4] = &off_1F2535EA8;
    v6 = sub_1AF585714(v8);
    *v6 = sub_1AF6C97E0(*v5);
    sub_1AF4498F4(0, &qword_1ED722510);
    swift_dynamicCast();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
    result = 0;
    v3 = v9[5];
  }

  else
  {
  }

  *a1 = v3;
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1AF4C028C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF588A50;
  v3[5] = KeyPath;
  v3[2] = sub_1AF588A84;
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
  *(v4 + 16) = 0x726550656D617266;
  *(v4 + 24) = 0xEB00000000776F52;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 1065353216;
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

  *(v4 + 64) = sub_1AF588AE0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA308;
  v10[5] = v9;
  v10[2] = sub_1AF5A9BF0;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  strcpy((v11 + 16), "framePerColumn");
  *(v11 + 31) = -18;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 1065353216;
  *(v11 + 188) = 0;
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

  *(v11 + 64) = sub_1AF5A9754;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  sub_1AF5795B0();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = 13366;
  *(v15 + 40) = 0xE200000000000000;
  *(v15 + 72) = v2;
  *(v15 + 48) = 64;
  sub_1AF57A3F8();
  v16 = swift_allocObject();
  v16[4] = sub_1AF588B20;
  v16[5] = v14;
  v16[2] = sub_1AF588B38;
  v16[3] = v14;
  v16[6] = v14;
  v17 = swift_allocObject();
  *(v17 + 104) = 0;
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = v5;
  *(v17 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED72F970, v2, MEMORY[0x1E69E6720]);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x756F43656D617266;
  *(v17 + 24) = 0xEA0000000000746ELL;
  *(v17 + 32) = v14;
  *(v17 + 40) = v18;
  *(v17 + 48) = 16;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 1065353216;
  *(v17 + 188) = 0;
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
  v19 = *(v15 + 16);
  swift_retain_n();
  if (!v19)
  {

    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AFE431C0;
    *(v15 + 32) = 48;
    *(v15 + 40) = 0xE100000000000000;
    *(v15 + 72) = v2;
    *(v15 + 48) = 0;
  }

  *(v17 + 160) = v15;
  v20 = MEMORY[0x1E69E7CC0];

  *(v17 + 64) = sub_1AF588B9C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v21 = swift_getKeyPath();
  v22 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v23 = swift_allocObject();
  v23[4] = sub_1AF588BE0;
  v23[5] = v21;
  v23[2] = sub_1AF588C0C;
  v23[3] = v21;
  v23[6] = v21;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = v20;
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  strcpy((v24 + 16), "useTexture3D");
  *(v24 + 29) = 0;
  *(v24 + 30) = -5120;
  *(v24 + 32) = v21;
  *(v24 + 40) = v22;
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
  v25 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v25)
  {
    v26 = (*(v25 + 8))();
  }

  else
  {
    v26 = v22;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v24 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v24 + 64) = sub_1AF588C68;
  *(v24 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA110;
  v29[5] = v28;
  v29[2] = sub_1AF5A9BF4;
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
  *(v30 + 16) = 0x7574786554657375;
  *(v30 + 24) = 0xEF79617272416572;
  *(v30 + 32) = v28;
  *(v30 + 40) = v22;
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
  if (v25)
  {
    v22 = (*(v25 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v22)
  {
    *(v30 + 160) = (*(v31 + 8))(v22, v31);
  }

  *(v30 + 64) = sub_1AF5A9758;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 64) = v30;
  qword_1EB6C2E50 = v0;
  return result;
}

uint64_t sub_1AF4C0D78()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF588DF4;
  v4[5] = v2;
  v4[2] = sub_1AF588E28;
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
  strcpy((v5 + 16), "channelIndex");
  *(v5 + 29) = 0;
  *(v5 + 30) = -5120;
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

  *(v5 + 64) = sub_1AF588E84;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for TextureChannel;
  sub_1AF5A9240(0, &qword_1EB632FA0, &type metadata for TextureChannel, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF588EC4;
  v10[5] = KeyPath;
  v10[2] = sub_1AF588EF0;
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
  *(v11 + 16) = 0x6C656E6E616863;
  *(v11 + 24) = 0xE700000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for TextureChannel;
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

  *(v11 + 64) = sub_1AF588F4C;
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
  v16[4] = sub_1AF588F8C;
  v16[5] = v14;
  v16[2] = sub_1AF588FC0;
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
  *(v17 + 16) = 0x6C6F687365726874;
  *(v17 + 24) = 0xE900000000000064;
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

  *(v17 + 64) = sub_1AF58901C;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  qword_1EB6C2E58 = v0;
  return result;
}

uint64_t sub_1AF4C14CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 216) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 16) = 1701080941;
  *(v2 + 24) = 0xE400000000000000;
  v3 = MEMORY[0x1E69E73E0];
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 58) = 4;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 210) = 4;
  *(v2 + 144) = xmmword_1AFE22A20;
  *(v2 + 176) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 168) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 2040;
  *(v2 + 112) = 0;
  *(v0 + 32) = v2;
  v5 = swift_getKeyPath();
  v6 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v7 = swift_allocObject();
  v7[4] = sub_1AF58917C;
  v7[5] = v5;
  v7[2] = sub_1AF5891A8;
  v7[3] = v5;
  v7[6] = v5;
  v8 = swift_allocObject();
  *(v8 + 112) = 1;
  *(v8 + 128) = 0;
  *(v8 + 136) = 0;
  *(v8 + 120) = 0;
  *(v8 + 160) = v4;
  *(v8 + 168) = 0;
  *(v8 + 216) = 0;
  *(v8 + 176) = 0;
  *(v8 + 16) = 0x2064616F6C657270;
  *(v8 + 24) = 0xEB00000000555043;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 48) = 0;
  *(v8 + 56) = 1;
  *(v8 + 58) = 0;
  *(v8 + 184) = 0;
  *(v8 + 188) = 1;
  *(v8 + 192) = 0;
  *(v8 + 196) = 1;
  *(v8 + 200) = 0x1000100000000;
  *(v8 + 208) = 1;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 144) = xmmword_1AFE22A20;
  *(v8 + 80) = v7;
  *(v8 + 88) = &off_1F2535378;
  *(v8 + 210) = 0;
  v9 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v9)
  {
    v10 = (*(v9 + 8))();
  }

  else
  {
    v10 = v6;
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v10)
  {
    *(v8 + 160) = (*(v11 + 8))(v10, v11);
  }

  *(v8 + 64) = sub_1AF589204;
  *(v8 + 72) = v5;
  sub_1AF0FB8EC(0);
  *(v8 + 168) = 0;
  *(v8 + 176) = 0;

  *(v8 + 216) = 0;
  *(v0 + 40) = v8;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA118;
  v13[5] = v12;
  v13[2] = sub_1AF5A9C04;
  v13[3] = v12;
  v13[6] = v12;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 168) = 0;
  *(v14 + 216) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x2064616F6C657270;
  *(v14 + 24) = 0xEB00000000555047;
  *(v14 + 32) = v12;
  *(v14 + 40) = v6;
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
  swift_retain_n();
  if (v9)
  {
    v15 = (*(v9 + 8))();
  }

  else
  {
    v15 = v6;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v14 + 160) = (*(v16 + 8))(v15, v16);
  }

  *(v14 + 64) = sub_1AF5A9760;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  *(v0 + 48) = v14;
  v17 = swift_getKeyPath();
  v18 = &type metadata for TextureFallback;
  sub_1AF5A9240(0, &qword_1EB63A900, &type metadata for TextureFallback, type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF589244;
  v19[5] = v17;
  v19[2] = sub_1AF589270;
  v19[3] = v17;
  v19[6] = v17;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6B6361626C6C6166;
  *(v20 + 24) = 0xE800000000000000;
  *(v20 + 32) = v17;
  *(v20 + 40) = &type metadata for TextureFallback;
  *(v20 + 48) = 2;
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
    v18 = (*(v21 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v18)
  {
    *(v20 + 160) = (*(v22 + 8))(v18, v22);
  }

  *(v20 + 64) = sub_1AF5892CC;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA118;
  v24[5] = v23;
  v24[2] = sub_1AF5A9C04;
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
  strcpy((v25 + 16), "asynchronous");
  *(v25 + 29) = 0;
  *(v25 + 30) = -5120;
  *(v25 + 32) = v23;
  *(v25 + 40) = v6;
  *(v25 + 48) = 3;
  *(v25 + 56) = 0;
  *(v25 + 58) = 4;
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
  *(v25 + 210) = 4;
  swift_retain_n();
  if (v9)
  {
    v6 = (*(v9 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v6)
  {
    *(v25 + 160) = (*(v26 + 8))(v6, v26);
  }

  *(v25 + 64) = sub_1AF5A9760;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 64) = v25;
  qword_1EB6C2E60 = v0;
  return result;
}

uint64_t sub_1AF4C1E58()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5893CC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF589400;
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

  *(v4 + 64) = sub_1AF58945C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58949C;
  v9[5] = v7;
  v9[2] = sub_1AF5894D0;
  v9[3] = v7;
  v9[6] = v7;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 168) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6C6F687365726874;
  *(v10 + 24) = 0xE900000000000064;
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
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
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

  *(v10 + 64) = sub_1AF58952C;
  *(v10 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF5893CC;
  v15[5] = v13;
  v15[2] = sub_1AF58956C;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  strcpy((v16 + 16), "downsampling");
  *(v16 + 29) = 0;
  *(v16 + 30) = -5120;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 16;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 1065353216;
  *(v16 + 188) = 0;
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

  *(v16 + 64) = sub_1AF5895C8;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  qword_1EB6C2E68 = v0;
  return result;
}

uint64_t sub_1AF4C2580()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF589728;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58976C;
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
  *(v4 + 16) = 0x44496E77617073;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1096810496;
  *(v4 + 196) = 0;
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

  *(v4 + 64) = sub_1AF5897C8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2940 = v0;
  return result;
}

uint64_t sub_1AF4C28B8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF589868;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5898AC;
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
  strcpy((v4 + 16), "rateOverTime");
  *(v4 + 29) = 0;
  *(v4 + 30) = -5120;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF589908;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  result = sub_1AF577370(1016, 0x6E6F697461727564, 0xE800000000000000, &type metadata for ParticleSpawnDuration, &off_1F2567780, 0x6E6F697461727564, 0xE800000000000000);
  *(v0 + 40) = result;
  qword_1EB6C2A60 = v0;
  return result;
}

uint64_t sub_1AF4C2C38()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5899A8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5899DC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
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
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001AFF24410;
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

  *(v4 + 64) = sub_1AF589A38;
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
  v10[4] = sub_1AF589A78;
  v10[5] = v8;
  v10[2] = sub_1AF589AA4;
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
  *(v11 + 16) = 0x776F6C6C6F66;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 4;
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

  *(v11 + 64) = sub_1AF589B00;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5AA120;
  v16[5] = v15;
  v16[2] = sub_1AF5A9C20;
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
  *(v17 + 16) = 0x7261656E696CLL;
  *(v17 + 24) = 0xE600000000000000;
  *(v17 + 32) = v15;
  *(v17 + 40) = v9;
  *(v17 + 48) = 5;
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
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v9)
  {
    *(v17 + 160) = (*(v18 + 8))(v9, v18);
  }

  *(v17 + 64) = sub_1AF5A9764;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  result = sub_1AF577370(1016, 0x6E6F697461727564, 0xE800000000000000, &type metadata for ParticleSpawnDuration, &off_1F2567780, 0x6E6F697461727564, 0xE800000000000000);
  *(v0 + 56) = result;
  qword_1EB6C28D0 = v0;
  return result;
}

uint64_t sub_1AF4C32D4()
{
  if (qword_1EB632C68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4C33C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF589C00;
  v2[5] = KeyPath;
  v2[2] = sub_1AF589C44;
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
  strcpy((v3 + 16), "rateOverTime");
  *(v3 + 29) = 0;
  *(v3 + 30) = -5120;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 64) = sub_1AF589CA0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA318;
  v12[5] = v11;
  v12[2] = sub_1AF5AA49C;
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
  strcpy((v13 + 16), "repeatDuration");
  *(v13 + 31) = -18;
  *(v13 + 32) = v11;
  *(v13 + 40) = v5;
  *(v13 + 48) = 8;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 0;
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
  *(v13 + 64) = sub_1AF5A9768;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v16);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5AA318;
  v18[5] = v17;
  v18[2] = sub_1AF5AA49C;
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
  *(v19 + 16) = 0x6954746165706572;
  *(v19 + 24) = 0xEA0000000000656DLL;
  *(v19 + 32) = v17;
  *(v19 + 40) = v5;
  *(v19 + 48) = 16;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 0;
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
  *(v19 + 64) = sub_1AF5A9768;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  qword_1EB6C2E70 = v0;
  return result;
}

uint64_t sub_1AF4C3AB4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF589DF0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF589D78;
  v2[5] = KeyPath;
  v2[2] = sub_1AF589D90;
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
  sub_1AF589E74(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x746E756F63;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 512;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 210) = 512;
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
  *(v3 + 64) = sub_1AF589EC8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2A70 = v0;
  return result;
}

uint64_t sub_1AF4C3DFC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF589DF0();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58A048;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58A060;
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
  sub_1AF589E74(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x746E756F63;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 64) = sub_1AF58A0C0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  sub_1AF57F2F4();
  v11 = swift_allocObject();
  v11[4] = sub_1AF58A104;
  v11[5] = v10;
  v11[2] = sub_1AF58A138;
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
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v14 = v13;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6954746165706572;
  *(v12 + 24) = 0xEA0000000000656DLL;
  *(v12 + 32) = v10;
  *(v12 + 40) = v13;
  *(v12 + 48) = 16;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 0;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
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
  *(v12 + 64) = sub_1AF58A194;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v17);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  qword_1EB6C2A58 = v0;
  return result;
}

uint64_t sub_1AF4C4350()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A33C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A380;
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
  *(v4 + 16) = 0x6E6F697461727564;
  *(v4 + 24) = 0xE800000000000000;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF58A3DC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2738 = v0;
  return result;
}

uint64_t sub_1AF4C4690()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A47C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A4C0;
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
  *(v4 + 16) = 0x79616C6564;
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

  *(v4 + 64) = sub_1AF58A51C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2768 = v0;
  return result;
}

uint64_t sub_1AF4C49C8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A5BC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A600;
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
  *(v4 + 16) = 0x65756C6176;
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

  *(v4 + 64) = sub_1AF58A65C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2A78 = v0;
  return result;
}

uint64_t sub_1AF4C4CFC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58A6FC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58A730;
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
  *(v4 + 16) = 0x746E65726170;
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
  *(v4 + 64) = sub_1AF58A78C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF58A7CC;
  v11[5] = v9;
  v11[2] = sub_1AF58A800;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = v5;
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6C696261626F7270;
  *(v12 + 24) = 0xEB00000000797469;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 8;
  *(v12 + 56) = 0;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 0;
  *(v12 + 192) = 1065353216;
  *(v12 + 196) = 0;
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
  v55 = v13;
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

  *(v12 + 64) = sub_1AF58A85C;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;
  *(v0 + 40) = v12;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF58A89C;
  v18[5] = v16;
  v18[2] = sub_1AF58A8C8;
  v18[3] = v16;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = v5;
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  strcpy((v19 + 16), "inheritColor");
  *(v19 + 29) = 0;
  *(v19 + 30) = -5120;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = 12;
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
    v21 = (*(v20 + 8))();
  }

  else
  {
    v21 = v17;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v19 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v19 + 64) = sub_1AF58A924;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v0 + 48) = v19;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA124;
  v24[5] = v23;
  v24[2] = sub_1AF5A9C34;
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
  *(v25 + 16) = 0x5674697265686E69;
  *(v25 + 24) = 0xEF797469636F6C65;
  *(v25 + 32) = v23;
  *(v25 + 40) = v17;
  *(v25 + 48) = 13;
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
  if (v20)
  {
    v26 = (*(v20 + 8))();
  }

  else
  {
    v26 = v17;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A9774;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  v56 = v0;
  *(v0 + 56) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA124;
  v29[5] = v28;
  v29[2] = sub_1AF5A9C34;
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
  *(v30 + 16) = 0xD000000000000012;
  *(v30 + 24) = 0x80000001AFF23530;
  *(v30 + 32) = v28;
  *(v30 + 40) = v17;
  *(v30 + 48) = 14;
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
  if (v20)
  {
    v31 = (*(v20 + 8))();
  }

  else
  {
    v31 = v17;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v30 + 160) = (*(v32 + 8))(v31, v32);
  }

  *(v30 + 64) = sub_1AF5A9774;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 64) = v30;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AF5AA124;
  v34[5] = v33;
  v34[2] = sub_1AF5A9C34;
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
  strcpy((v35 + 16), "inheritScale");
  *(v35 + 29) = 0;
  *(v35 + 30) = -5120;
  *(v35 + 32) = v33;
  *(v35 + 40) = v17;
  *(v35 + 48) = 15;
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
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v36 = swift_conformsToProtocol2();
  v37 = MEMORY[0x1E69E7CC0];
  if (v36 && v17)
  {
    *(v35 + 160) = (*(v36 + 8))(v17, v36);
  }

  *(v35 + 64) = sub_1AF5A9774;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 72) = v35;
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AF5A9450;
  v39[5] = v38;
  v39[2] = sub_1AF5A9C38;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = v37;
  *(v40 + 168) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  strcpy((v40 + 16), "velocityFactor");
  *(v40 + 31) = -18;
  *(v40 + 32) = v38;
  *(v40 + 40) = v10;
  *(v40 + 48) = 16;
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
  if (v55)
  {
    v10 = (*(v55 + 8))();
  }

  v41 = swift_conformsToProtocol2();
  if (v41 && v10)
  {
    *(v40 + 160) = (*(v41 + 8))(v10, v41);
  }

  *(v40 + 64) = sub_1AF5A9778;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;
  *(v0 + 80) = v40;
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v44 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v45 = swift_allocObject();
  v45[4] = sub_1AF58A6FC;
  v45[5] = v43;
  v45[2] = sub_1AF58A964;
  v45[3] = v43;
  v45[6] = v43;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = v37;
  *(v46 + 168) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0x65646E4965646F6DLL;
  *(v46 + 24) = 0xE900000000000078;
  *(v46 + 32) = v43;
  *(v46 + 40) = v44;
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
  v47 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v47)
  {
    v44 = (*(v47 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v44)
  {
    *(v46 + 160) = (*(v48 + 8))(v44, v48);
  }

  *(v46 + 64) = sub_1AF58A9C0;
  *(v46 + 72) = v43;
  sub_1AF0FB8EC(0);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;
  v49 = &type metadata for ParticleSubSpawn.Mode;
  sub_1AF5A9240(0, &qword_1EB63AA10, &type metadata for ParticleSubSpawn.Mode, type metadata accessor for EntityGetSet);
  v50 = swift_allocObject();
  v50[4] = sub_1AF58AA00;
  v50[5] = v42;
  v50[2] = sub_1AF58AA2C;
  v50[3] = v42;
  v50[6] = v42;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = v37;
  *(v51 + 168) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 1701080941;
  *(v51 + 24) = 0xE400000000000000;
  *(v51 + 32) = v42;
  *(v51 + 40) = &type metadata for ParticleSubSpawn.Mode;
  *(v51 + 48) = 20;
  *(v51 + 56) = 0;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = 0;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  v52 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v52)
  {
    v49 = (*(v52 + 8))();
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v49)
  {
    *(v51 + 160) = (*(v53 + 8))(v49, v53);
  }

  *(v51 + 64) = sub_1AF58AA88;
  *(v51 + 72) = v42;
  sub_1AF0FB8EC(0);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = v46;
  *(v56 + 88) = v51;
  qword_1EB6C2E78 = v56;
  return result;
}

uint64_t sub_1AF4C5E60(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_1AF4C5E9C()
{
  if (qword_1EB636E50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4C5F8C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5AA328;
  v4[5] = v2;
  v4[2] = sub_1AF58ACD8;
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
  *(v5 + 16) = 0x646E496573696F6ELL;
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

  *(v5 + 64) = sub_1AF58AD34;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for NoiseKind;
  sub_1AF5A9240(0, &qword_1EB632F60, &type metadata for NoiseKind, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58AD74;
  v9[5] = KeyPath;
  v9[2] = sub_1AF58ADA0;
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
  *(v10 + 16) = 0x6573696F6ELL;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for NoiseKind;
  *(v10 + 48) = 0;
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

  *(v10 + 64) = sub_1AF58ADFC;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  *(v0 + 32) = v10;
  v13 = swift_getKeyPath();
  sub_1AF57AAE8();
  v14 = swift_allocObject();
  v14[4] = sub_1AF58AE3C;
  v14[5] = v13;
  v14[2] = sub_1AF58AE54;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 104) = 0;
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 216) = 0;
  v16 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v18 = v17;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x7269446E69616DLL;
  *(v15 + 24) = 0xE700000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v17;
  *(v15 + 48) = 16;
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
  *(v15 + 64) = sub_1AF58AEB8;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v21);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v0 + 40) = v15;
  v22 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v16, type metadata accessor for EntityGetSet);
  v23 = swift_allocObject();
  v23[4] = sub_1AF58AEFC;
  v23[5] = v22;
  v23[2] = sub_1AF58AF30;
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
  strcpy((v24 + 16), "mainDirSpread");
  *(v24 + 30) = -4864;
  *(v24 + 32) = v22;
  *(v24 + 40) = v16;
  *(v24 + 48) = 32;
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
    v26 = (*(v25 + 8))();
  }

  else
  {
    v26 = v16;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v24 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v24 + 64) = sub_1AF58AF8C;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 48) = v24;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A9454;
  v29[5] = v28;
  v29[2] = sub_1AF5A9C48;
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
  strcpy((v30 + 16), "noiseIntensity");
  *(v30 + 31) = -18;
  *(v30 + 32) = v28;
  *(v30 + 40) = v16;
  *(v30 + 48) = 36;
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
  if (v25)
  {
    v31 = (*(v25 + 8))();
  }

  else
  {
    v31 = v16;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v30 + 160) = (*(v32 + 8))(v31, v32);
  }

  *(v30 + 64) = sub_1AF5A977C;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 56) = v30;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AF5A9454;
  v34[5] = v33;
  v34[2] = sub_1AF5A9C48;
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
  *(v35 + 16) = 0x6163536573696F6ELL;
  *(v35 + 24) = 0xEA0000000000656CLL;
  *(v35 + 32) = v33;
  *(v35 + 40) = v16;
  *(v35 + 48) = 40;
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
  if (v25)
  {
    v36 = (*(v25 + 8))();
  }

  else
  {
    v36 = v16;
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v36)
  {
    *(v35 + 160) = (*(v37 + 8))(v36, v37);
  }

  *(v35 + 64) = sub_1AF5A977C;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  v38 = v0;
  *(v0 + 64) = v35;
  v39 = swift_getKeyPath();
  v40 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v41 = swift_allocObject();
  v41[4] = sub_1AF58AFCC;
  v41[5] = v39;
  v41[2] = sub_1AF58B000;
  v41[3] = v39;
  v41[6] = v39;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  *(v42 + 16) = 0xD000000000000010;
  *(v42 + 24) = 0x80000001AFF29640;
  *(v42 + 32) = v39;
  *(v42 + 40) = v40;
  *(v42 + 48) = 48;
  *(v42 + 56) = 0;
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
  v43 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v43)
  {
    v40 = (*(v43 + 8))();
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v40)
  {
    *(v42 + 160) = (*(v44 + 8))(v40, v44);
  }

  *(v42 + 64) = sub_1AF58B05C;
  *(v42 + 72) = v39;
  sub_1AF0FB8EC(0);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;
  *(v0 + 72) = v42;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AF5A9454;
  v46[5] = v45;
  v46[2] = sub_1AF5A9C48;
  v46[3] = v45;
  v46[6] = v45;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = MEMORY[0x1E69E7CC0];
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0x676E654C70657473;
  *(v47 + 24) = 0xEA00000000006874;
  *(v47 + 32) = v45;
  *(v47 + 40) = v16;
  *(v47 + 48) = 56;
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
  swift_retain_n();
  if (v25)
  {
    v16 = (*(v25 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v16)
  {
    *(v47 + 160) = (*(v48 + 8))(v16, v48);
  }

  *(v47 + 64) = sub_1AF5A977C;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v38 + 80) = v47;
  qword_1EB6C2E80 = v38;
  return result;
}

uint64_t sub_1AF4C6F70()
{
  if (qword_1EB636E58 != -1)
  {
    swift_once();
  }
}

double sub_1AF4C7060()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PropertyDescription();
  v2 = swift_allocObject();
  *(v2 + 216) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 120) = 0;
  *(v2 + 16) = 0x6D6F646E6172;
  *(v2 + 24) = 0xE600000000000000;
  v3 = MEMORY[0x1E69E73E0];
  *(v2 + 32) = KeyPath;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 58) = 4;
  *(v2 + 184) = 0;
  *(v2 + 188) = 1;
  *(v2 + 192) = 0;
  *(v2 + 196) = 1;
  *(v2 + 200) = 0x1000100000000;
  *(v2 + 208) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 210) = 4;
  *&result = 1;
  *(v2 + 144) = xmmword_1AFE22A20;
  *(v2 + 176) = 0;
  *(v2 + 160) = MEMORY[0x1E69E7CC0];
  *(v2 + 168) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 1101;
  *(v2 + 112) = 0;
  *(v0 + 32) = v2;
  qword_1EB6C2E88 = v0;
  return result;
}

uint64_t sub_1AF4C71A0()
{
  if (qword_1EB636E60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4C7290()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58B2BC;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58B300;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
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
  *(v3 + 64) = sub_1AF58B35C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2E90 = v0;
  return result;
}

uint64_t sub_1AF4C75D8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58B434;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58B468;
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
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x100003C23D70ALL;
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
  *(v3 + 64) = sub_1AF58B4C4;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v10 = swift_getKeyPath();
  v11 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v12 = swift_allocObject();
  v12[4] = sub_1AF58B508;
  v12[5] = v10;
  v12[2] = sub_1AF58B534;
  v12[3] = v10;
  v12[6] = v10;
  v13 = swift_allocObject();
  *(v13 + 112) = 1;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 120) = 0;
  *(v13 + 160) = v4;
  *(v13 + 168) = 0;
  *(v13 + 216) = 0;
  *(v13 + 176) = 0;
  *(v13 + 16) = 0xD000000000000011;
  *(v13 + 24) = 0x80000001AFF234C0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;
  *(v13 + 48) = 8;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 1;
  *(v13 + 192) = 0;
  *(v13 + 196) = 1;
  *(v13 + 200) = 0x1000100000000;
  *(v13 + 208) = 1;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  *(v13 + 144) = xmmword_1AFE22A20;
  *(v13 + 80) = v12;
  *(v13 + 88) = &off_1F2535378;
  *(v13 + 210) = 0;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v14)
  {
    v11 = (*(v14 + 8))();
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v11)
  {
    *(v13 + 160) = (*(v15 + 8))(v11, v15);
  }

  *(v13 + 64) = sub_1AF58B590;
  *(v13 + 72) = v10;
  sub_1AF0FB8EC(0);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;
  *(v0 + 40) = v13;
  qword_1EB6C2B00 = v0;
  return result;
}

uint64_t sub_1AF4C7B1C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58B6C4;
  v3[5] = v1;
  v3[2] = sub_1AF58B6F8;
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

  *(v4 + 64) = sub_1AF58B754;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v8 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58B794;
  v9[5] = KeyPath;
  v9[2] = sub_1AF58B7C0;
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
  *(v10 + 16) = 0x6F6974617265706FLL;
  *(v10 + 24) = 0xE90000000000006ELL;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for Composition.Operation;
  *(v10 + 48) = 16;
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

  *(v10 + 64) = sub_1AF58B81C;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v4;
  *(v35 + 32) = v10;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF58B85C;
  v15[5] = v13;
  v15[2] = sub_1AF58B890;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x726F74636166;
  *(v16 + 24) = 0xE600000000000000;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 20;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 0;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x100003C23D70ALL;
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

  *(v16 + 64) = sub_1AF58B8EC;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v35 + 40) = v16;
  v19 = swift_getKeyPath();
  sub_1AF57F2F4();
  v20 = swift_allocObject();
  v20[4] = sub_1AF58B6C4;
  v20[5] = v19;
  v20[2] = sub_1AF58B92C;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 104) = 0;
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v23 = v22;
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x65676E6172;
  *(v21 + 24) = 0xE500000000000000;
  *(v21 + 32) = v19;
  *(v21 + 40) = v22;
  *(v21 + 48) = 0;
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
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  v24 = swift_conformsToProtocol2();
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  swift_retain_n();
  v26 = v23;
  if (v25)
  {
    v26 = (*(v24 + 8))(v25, v24);
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v21 + 160) = (*(v27 + 8))(v26, v27);
  }

  v28 = *(v21 + 64);
  *(v21 + 64) = sub_1AF58B988;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v28);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v35 + 48) = v21;
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF5AA334;
  v30[5] = v29;
  v30[2] = sub_1AF5AA4B4;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 168) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0x6E69646165727073;
  *(v31 + 24) = 0xE900000000000067;
  *(v31 + 32) = v29;
  *(v31 + 40) = v23;
  *(v31 + 48) = 8;
  *(v31 + 56) = 0;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 0;
  *(v31 + 192) = 1078530011;
  *(v31 + 196) = 0;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 144) = xmmword_1AFE55150;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  swift_retain_n();
  if (v25)
  {
    v23 = (*(v24 + 8))(v25, v24);
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v23)
  {
    *(v31 + 160) = (*(v32 + 8))(v23, v32);
  }

  v33 = *(v31 + 64);
  *(v31 + 64) = sub_1AF5A9784;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(v33);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;

  *(v35 + 56) = v31;
  qword_1EB6C2E98 = v35;
  return result;
}

uint64_t sub_1AF4C8580(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1AF4C864C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58BB80;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58BBC4;
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
  *(v3 + 16) = 120;
  *(v3 + 24) = 0xE100000000000000;
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
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58BC20;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA338;
  v12[5] = v11;
  v12[2] = sub_1AF5AA4B8;
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
  *(v13 + 16) = 121;
  *(v13 + 24) = 0xE100000000000000;
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
  *(v13 + 144) = xmmword_1AFE55150;
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
  *(v13 + 64) = sub_1AF5A9788;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v16);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5AA338;
  v18[5] = v17;
  v18[2] = sub_1AF5AA4B8;
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
  *(v19 + 16) = 122;
  *(v19 + 24) = 0xE100000000000000;
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
  *(v19 + 144) = xmmword_1AFE55150;
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
  *(v19 + 64) = sub_1AF5A9788;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  qword_1EB6C2EA0 = v0;
  return result;
}

uint64_t sub_1AF4C8D0C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58BCF8;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58BD3C;
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
  *(v3 + 16) = 120;
  *(v3 + 24) = 0xE100000000000000;
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
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58BD98;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA33C;
  v12[5] = v11;
  v12[2] = sub_1AF5AA4BC;
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
  *(v13 + 16) = 121;
  *(v13 + 24) = 0xE100000000000000;
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
  *(v13 + 144) = xmmword_1AFE55150;
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
  *(v13 + 64) = sub_1AF5A978C;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v16);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5AA33C;
  v18[5] = v17;
  v18[2] = sub_1AF5AA4BC;
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
  *(v19 + 16) = 122;
  *(v19 + 24) = 0xE100000000000000;
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
  *(v19 + 144) = xmmword_1AFE55150;
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
  *(v19 + 64) = sub_1AF5A978C;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  qword_1EB6C2718 = v0;
  return result;
}

uint64_t sub_1AF4C93C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF58BE70;
  v4[5] = v2;
  v4[2] = sub_1AF58BEA4;
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

  *(v5 + 64) = sub_1AF58BF00;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v8 = &type metadata for ScaleMode;
  sub_1AF5A9240(0, &qword_1EB634360, &type metadata for ScaleMode, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF58BF40;
  v9[5] = KeyPath;
  v9[2] = sub_1AF58BF6C;
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
  *(v10 + 16) = 1701080941;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = KeyPath;
  *(v10 + 40) = &type metadata for ScaleMode;
  *(v10 + 48) = 0;
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

  *(v10 + 64) = sub_1AF58BFC8;
  *(v10 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = v5;
  v39 = v0;
  *(v0 + 32) = v10;
  v13 = swift_getKeyPath();
  sub_1AF57F2F4();
  v14 = swift_allocObject();
  v14[4] = sub_1AF58BE70;
  v14[5] = v13;
  v14[2] = sub_1AF58C008;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 104) = 0;
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = MEMORY[0x1E69E7CC0];
  *(v15 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v17 = v16;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 120;
  *(v15 + 24) = 0xE100000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v16;
  *(v15 + 48) = 4;
  *(v15 + 56) = 0;
  *(v15 + 58) = 512;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
  *(v15 + 192) = 0;
  *(v15 + 196) = 1;
  *(v15 + 200) = 0x30100003C23D70ALL;
  *(v15 + 208) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 144) = xmmword_1AFE55140;
  *(v15 + 80) = v14;
  *(v15 + 88) = &off_1F2535378;
  *(v15 + 210) = 512;
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  swift_retain_n();
  v20 = v17;
  if (v19)
  {
    v20 = (*(v18 + 8))(v19, v18);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v20)
  {
    *(v15 + 160) = (*(v21 + 8))(v20, v21);
  }

  v22 = *(v15 + 64);
  *(v15 + 64) = sub_1AF58C064;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v22);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  v39[5] = v15;
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AF5AA340;
  v25[5] = v23;
  v25[2] = sub_1AF5AA4C0;
  v25[3] = v23;
  v25[6] = v23;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 168) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 121;
  *(v26 + 24) = 0xE100000000000000;
  *(v26 + 32) = v23;
  *(v26 + 40) = v17;
  *(v26 + 48) = 12;
  *(v26 + 56) = 0;
  *(v26 + 58) = 512;
  *(v26 + 184) = 0;
  *(v26 + 188) = 0;
  *(v26 + 192) = 0;
  *(v26 + 196) = 1;
  *(v26 + 200) = 1008981770;
  *(v26 + 204) = 50397184;
  *(v26 + 208) = 0;
  *(v26 + 64) = 0;
  *(v26 + 72) = 0;
  *(v26 + 96) = v24;
  *(v26 + 104) = 0;
  *(v26 + 144) = xmmword_1AFE55140;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 512;
  swift_retain_n();

  v27 = v17;
  if (v19)
  {
    v27 = (*(v18 + 8))(v19, v18);
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    v29 = (*(v28 + 8))(v27, v28);

    *(v26 + 160) = v29;
  }

  else
  {
  }

  v30 = *(v26 + 64);
  *(v26 + 64) = sub_1AF5A9790;
  *(v26 + 72) = v23;
  sub_1AF0FB8EC(v30);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;

  v39[6] = v26;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA340;
  v33[5] = v31;
  v33[2] = sub_1AF5AA4C0;
  v33[3] = v31;
  v33[6] = v31;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 168) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 122;
  *(v34 + 24) = 0xE100000000000000;
  *(v34 + 32) = v31;
  *(v34 + 40) = v17;
  *(v34 + 48) = 20;
  *(v34 + 56) = 0;
  *(v34 + 58) = 512;
  *(v34 + 184) = 0;
  *(v34 + 188) = 0;
  *(v34 + 192) = 0;
  *(v34 + 196) = 1;
  *(v34 + 200) = 1008981770;
  *(v34 + 204) = 50397184;
  *(v34 + 208) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 96) = v32;
  *(v34 + 104) = 0;
  *(v34 + 144) = xmmword_1AFE55140;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 512;
  swift_retain_n();

  if (v19)
  {
    v17 = (*(v18 + 8))(v19, v18);
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v17)
  {
    v36 = (*(v35 + 8))(v17, v35);

    *(v34 + 160) = v36;
  }

  else
  {
  }

  v37 = *(v34 + 64);
  *(v34 + 64) = sub_1AF5A9790;
  *(v34 + 72) = v31;
  sub_1AF0FB8EC(v37);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;

  v39[7] = v34;
  qword_1EB6C2AF8 = v39;
  return result;
}

uint64_t sub_1AF4C9EF4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C22C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C270;
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
  *(v3 + 16) = 120;
  *(v3 + 24) = 0xE100000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1065353216;
  *(v3 + 196) = 0;
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
  *(v3 + 64) = sub_1AF58C2CC;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v11 = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[4] = sub_1AF5AA344;
  v12[5] = v11;
  v12[2] = sub_1AF5AA4C4;
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
  *(v13 + 16) = 121;
  *(v13 + 24) = 0xE100000000000000;
  *(v13 + 32) = v11;
  *(v13 + 40) = v5;
  *(v13 + 48) = 8;
  *(v13 + 56) = 0;
  *(v13 + 58) = 0;
  *(v13 + 184) = 0;
  *(v13 + 188) = 0;
  *(v13 + 192) = 1065353216;
  *(v13 + 196) = 0;
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
  *(v13 + 64) = sub_1AF5A9794;
  *(v13 + 72) = v11;
  sub_1AF0FB8EC(v16);
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;

  *(v13 + 216) = 0;

  *(v0 + 40) = v13;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5AA344;
  v18[5] = v17;
  v18[2] = sub_1AF5AA4C4;
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
  *(v19 + 16) = 122;
  *(v19 + 24) = 0xE100000000000000;
  *(v19 + 32) = v17;
  *(v19 + 40) = v5;
  *(v19 + 48) = 16;
  *(v19 + 56) = 0;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 0;
  *(v19 + 192) = 1065353216;
  *(v19 + 196) = 0;
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
  *(v19 + 64) = sub_1AF5A9794;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  qword_1EB6C2EA8 = v0;
  return result;
}

uint64_t sub_1AF4CA5B4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C3A4;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C3E8;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = -1068953637;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1078530011;
  *(v3 + 196) = 0;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58C444;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2920 = v0;
  return result;
}

uint64_t sub_1AF4CA90C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C51C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C560;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
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
  *(v3 + 144) = xmmword_1AFE55150;
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
  *(v3 + 64) = sub_1AF58C5BC;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C28D8 = v0;
  return result;
}

uint64_t sub_1AF4CAC58()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF57F2F4();
  v2 = swift_allocObject();
  v2[4] = sub_1AF58C694;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58C6D8;
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
  *(v3 + 16) = 0x65676E6172;
  *(v3 + 24) = 0xE500000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 0;
  *(v3 + 192) = 1065353216;
  *(v3 + 196) = 0;
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
  *(v3 + 64) = sub_1AF58C734;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2EB0 = v0;
  return result;
}

uint64_t sub_1AF4CAFB0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58C80C;
  v3[5] = v1;
  v3[2] = sub_1AF58C840;
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
  *(v4 + 64) = sub_1AF58C89C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v10 = &type metadata for Composition.Operation;
  sub_1AF5A9240(0, &qword_1EB6338C8, &type metadata for Composition.Operation, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF58C8DC;
  v11[5] = KeyPath;
  v11[2] = sub_1AF58C908;
  v11[3] = KeyPath;
  v11[6] = KeyPath;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 210) = 0;
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

  v15 = *(v12 + 64);
  *(v12 + 64) = sub_1AF58C964;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(v15);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v4;

  *(v70 + 32) = v12;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF58C9A4;
  v18[5] = v16;
  v18[2] = sub_1AF58C9D8;
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
  *(v19 + 48) = 4;
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
    v21 = (*(v20 + 8))();
  }

  else
  {
    v21 = v17;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v19 + 160) = (*(v22 + 8))(v21, v22);
  }

  v23 = *(v19 + 64);
  *(v19 + 64) = sub_1AF58CA34;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(v23);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v70 + 40) = v19;
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AF5AA354;
  v26[5] = v25;
  v26[2] = sub_1AF5A9C74;
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
  *(v27 + 16) = 0x65646E4965646F6DLL;
  *(v27 + 24) = 0xE900000000000078;
  *(v27 + 32) = v25;
  *(v27 + 40) = v2;
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
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v2)
  {
    *(v27 + 160) = (*(v28 + 8))(v2, v28);
  }

  *(v27 + 64) = sub_1AF5A9798;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  v29 = &type metadata for ParticleColorInit.Mode;
  sub_1AF5A9240(0, &unk_1EB632550, &type metadata for ParticleColorInit.Mode, type metadata accessor for EntityGetSet);
  v30 = swift_allocObject();
  v30[4] = sub_1AF58CA74;
  v30[5] = v24;
  v30[2] = sub_1AF58CAB0;
  v30[3] = v24;
  v30[6] = v24;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 1701080941;
  *(v31 + 24) = 0xE400000000000000;
  *(v31 + 32) = v24;
  *(v31 + 40) = &type metadata for ParticleColorInit.Mode;
  *(v31 + 48) = 8;
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

  *(v31 + 64) = sub_1AF58CAF0;
  *(v31 + 72) = v24;
  sub_1AF0FB8EC(0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = v27;
  *(v70 + 48) = v31;
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  v36[4] = sub_1AF5A945C;
  v36[5] = v34;
  v36[2] = sub_1AF5A9C78;
  v36[3] = v34;
  v36[6] = v34;
  v37 = swift_allocObject();
  *(v37 + 112) = 1;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(v37 + 120) = 0;
  *(v37 + 160) = MEMORY[0x1E69E7CC0];
  *(v37 + 168) = 0;
  *(v37 + 216) = 0;
  *(v37 + 176) = 0;
  *(v37 + 16) = 0x6C616353656D6974;
  *(v37 + 24) = 0xE900000000000065;
  *(v37 + 32) = v34;
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
  *(v37 + 96) = v35;
  *(v37 + 104) = 0;
  *(v37 + 144) = xmmword_1AFE22A20;
  *(v37 + 80) = v36;
  *(v37 + 88) = &off_1F2535378;
  *(v37 + 210) = 0;
  swift_retain_n();

  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v17)
  {
    v39 = (*(v38 + 8))(v17, v38);

    *(v37 + 160) = v39;
  }

  else
  {
  }

  *(v37 + 64) = sub_1AF5A979C;
  *(v37 + 72) = v34;
  sub_1AF0FB8EC(0);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;
  *(v70 + 56) = v37;
  v40 = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v42 = &type metadata for ColorRamp;
  sub_1AF5A9240(0, &qword_1ED722B88, &type metadata for ColorRamp, type metadata accessor for EntityGetSet);
  v43 = swift_allocObject();
  v43[4] = sub_1AF58CB30;
  v43[5] = v40;
  v43[2] = sub_1AF58CB48;
  v43[3] = v40;
  v43[6] = v40;
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
  *(v44 + 32) = v40;
  *(v44 + 40) = &type metadata for ColorRamp;
  *(v44 + 48) = 48;
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
  *(v44 + 96) = v41;
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
    v47 = (*(v46 + 8))(v42, v46);

    *(v44 + 160) = v47;
  }

  else
  {
  }

  *(v44 + 64) = sub_1AF58CB78;
  *(v44 + 72) = v40;
  sub_1AF0FB8EC(0);
  *(v44 + 168) = 0;
  *(v44 + 176) = 0;

  *(v44 + 216) = 0;
  *(v70 + 64) = v44;
  v48 = swift_getKeyPath();
  v49 = swift_getKeyPath();
  sub_1AF57B9C0();
  v50 = swift_allocObject();
  v50[4] = sub_1AF58CBB8;
  v50[5] = v48;
  v50[2] = sub_1AF58CBD0;
  v50[3] = v48;
  v50[6] = v48;
  v51 = swift_allocObject();
  *(v51 + 104) = 0;
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 216) = 0;
  v52 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v54 = v53;
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 0x726F6C6F63;
  *(v51 + 24) = 0xE500000000000000;
  *(v51 + 32) = v48;
  *(v51 + 40) = v53;
  *(v51 + 48) = 32;
  *(v51 + 56) = 0;
  *(v51 + 58) = 0;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = v49;
  *(v51 + 144) = xmmword_1AFE55160;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 0;
  v55 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v55 && v54)
  {
    v54 = (*(v55 + 8))(v54, v55);
  }

  v56 = swift_conformsToProtocol2();
  if (v56 && v54)
  {
    v57 = (*(v56 + 8))(v54, v56);

    *(v51 + 160) = v57;
  }

  else
  {
  }

  v58 = *(v51 + 64);
  *(v51 + 64) = sub_1AF58CC34;
  *(v51 + 72) = v48;
  sub_1AF0FB8EC(v58);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = 0;

  *(v70 + 72) = v51;
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AF5A945C;
  v60[5] = v59;
  v60[2] = sub_1AF5A9C78;
  v60[3] = v59;
  v60[6] = v59;
  v61 = swift_allocObject();
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x7469736E65746E69;
  *(v61 + 24) = 0xE900000000000079;
  *(v61 + 32) = v59;
  *(v61 + 40) = v52;
  *(v61 + 48) = 16;
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
  swift_retain_n();
  if (v20)
  {
    v52 = (*(v20 + 8))();
  }

  v62 = swift_conformsToProtocol2();
  if (v62 && v52)
  {
    *(v61 + 160) = (*(v62 + 8))(v52, v62);
  }

  *(v61 + 64) = sub_1AF5A979C;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(0);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;
  *(v70 + 80) = v61;
  v63 = swift_getKeyPath();
  v64 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v65 = swift_allocObject();
  v65[4] = sub_1AF58CC78;
  v65[5] = v63;
  v65[2] = sub_1AF58CCA4;
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
  strcpy((v66 + 16), "affectsAlpha");
  *(v66 + 29) = 0;
  *(v66 + 30) = -5120;
  *(v66 + 32) = v63;
  *(v66 + 40) = v64;
  *(v66 + 48) = 20;
  *(v66 + 56) = 0;
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
  v67 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v67)
  {
    v64 = (*(v67 + 8))();
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v64)
  {
    *(v66 + 160) = (*(v68 + 8))(v64, v68);
  }

  *(v66 + 64) = sub_1AF58CD00;
  *(v66 + 72) = v63;
  sub_1AF0FB8EC(0);
  *(v66 + 168) = 0;
  *(v66 + 176) = 0;

  *(v66 + 216) = 0;
  *(v70 + 88) = v66;
  qword_1EB6C27A8 = v70;
  return result;
}

uint64_t sub_1AF4CC3D4()
{
  if (*(v0 + 12) == 1)
  {
    return *(v0 + 8);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF4CC3F0(uint64_t result)
{
  if (result == 3)
  {
    if (*(v1 + 12))
    {
      *(v1 + 8) = 1065353216;
      *(v1 + 12) = 0;
    }
  }

  else
  {
    if (result == 2)
    {
      *(v1 + 8) = 2;
    }

    else
    {
      *(v1 + 8) = result == 1;
    }

    *(v1 + 12) = 1;
  }

  return result;
}

float sub_1AF4CC448()
{
  result = *(v0 + 8);
  if (*(v0 + 12))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1AF4CC48C()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return *(v0 + 12);
  }
}

uint64_t sub_1AF4CC4A0(uint64_t result, int a2)
{
  if (result == 3)
  {
    if (*(v2 + 4) == 1)
    {
      *v2 = a2;
      *(v2 + 4) = 0;
    }
  }

  else
  {
    if (result == 2)
    {
      *v2 = 2;
    }

    else
    {
      *v2 = result == 1;
    }

    *(v2 + 4) = 1;
  }

  return result;
}

uint64_t sub_1AF4CC510()
{
  if (qword_1EB631C08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4CC600()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58D18C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58D1C0;
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
  *(v4 + 16) = 0x5464657370616C65;
  *(v4 + 24) = 0xEB00000000656D69;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 96;
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

  *(v4 + 64) = sub_1AF58D21C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF58D25C;
  v10[5] = v8;
  v10[2] = sub_1AF58D290;
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
  strcpy((v11 + 16), "generatedCount");
  *(v11 + 31) = -18;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 104;
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

  *(v11 + 64) = sub_1AF58D2EC;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5AA358;
  v16[5] = v15;
  v16[2] = sub_1AF5A9C88;
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
  *(v17 + 16) = 0xD000000000000013;
  *(v17 + 24) = 0x80000001AFF2A8C0;
  *(v17 + 32) = v15;
  *(v17 + 40) = v9;
  *(v17 + 48) = 112;
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
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v9)
  {
    *(v17 + 160) = (*(v18 + 8))(v9, v18);
  }

  *(v17 + 64) = sub_1AF5A97B0;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  qword_1EB6C2A80 = v0;
  return result;
}

uint64_t sub_1AF4CCC8C()
{
  if (qword_1EB6337D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4CCD14()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55240;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF58D440;
  v4[5] = v2;
  v4[2] = sub_1AF58D474;
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
  v232 = v6;
  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v3;
  }

  v234 = v0;
  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v5 + 160) = (*(v8 + 8))(v7, v8);
  }

  v9 = *(v5 + 64);
  *(v5 + 64) = sub_1AF58D4D0;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(v9);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;

  v10 = &type metadata for EmitterShape.Shape;
  sub_1AF5A9240(0, &qword_1EB6338C0, &type metadata for EmitterShape.Shape, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF58D510;
  v11[5] = KeyPath;
  v11[2] = sub_1AF58D54C;
  v11[3] = KeyPath;
  v11[6] = KeyPath;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 210) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x6570616873;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = KeyPath;
  *(v12 + 40) = &type metadata for EmitterShape.Shape;
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

  v15 = *(v12 + 64);
  *(v12 + 64) = sub_1AF58D58C;
  *(v12 + 72) = KeyPath;
  sub_1AF0FB8EC(v15);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = v5;

  *(v0 + 32) = v12;
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF58D5CC;
  v19[5] = v16;
  v19[2] = sub_1AF58D600;
  v19[3] = v16;
  v19[6] = v16;
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
  *(v20 + 16) = 0xD000000000000010;
  *(v20 + 24) = 0x80000001AFF2A8E0;
  *(v20 + 32) = v16;
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
  *(v20 + 96) = v17;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE22A20;
  *(v20 + 80) = v19;
  *(v20 + 88) = &off_1F2535378;
  *(v20 + 210) = 0;
  v21 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v21)
  {
    v18 = (*(v21 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v18)
  {
    v23 = (*(v22 + 8))(v18, v22);

    *(v20 + 160) = v23;
  }

  else
  {
  }

  v24 = *(v20 + 64);
  *(v20 + 64) = sub_1AF58D65C;
  *(v20 + 72) = v16;
  sub_1AF0FB8EC(v24);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  *(v0 + 40) = v20;
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  sub_1AF57F2F4();
  v27 = swift_allocObject();
  v27[4] = sub_1AF58D440;
  v27[5] = v25;
  v27[2] = sub_1AF58D69C;
  v27[3] = v25;
  v27[6] = v25;
  v28 = swift_allocObject();
  *(v28 + 104) = 0;
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 210) = 0;
  *(v28 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v30 = v29;
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;
  strcpy((v28 + 16), "angularLimits");
  *(v28 + 30) = -4864;
  *(v28 + 32) = v25;
  *(v28 + 40) = v29;
  *(v28 + 48) = 8;
  *(v28 + 56) = 0;
  *(v28 + 58) = 0;
  *(v28 + 184) = -1060565029;
  *(v28 + 188) = 0;
  *(v28 + 192) = 1086918619;
  *(v28 + 196) = 0;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 96) = v26;
  *(v28 + 144) = xmmword_1AFE55150;
  *(v28 + 80) = v27;
  *(v28 + 210) = 0;
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  swift_retain_n();

  v228 = v30;
  if (v32)
  {
    v30 = (*(v31 + 8))(v32, v31);
  }

  v230 = v32;
  v33 = swift_conformsToProtocol2();
  v229 = v31;
  if (v33 && v30)
  {
    v34 = (*(v33 + 8))(v30, v33);

    *(v28 + 160) = v34;
  }

  else
  {
  }

  v35 = *(v28 + 64);
  *(v28 + 64) = sub_1AF58D6F8;
  *(v28 + 72) = v25;
  sub_1AF0FB8EC(v35);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;

  v234[6] = v28;
  v36 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  v39[4] = sub_1AF5AA35C;
  v39[5] = v38;
  v39[2] = sub_1AF5A9C90;
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
  *(v40 + 16) = 0xD000000000000011;
  *(v40 + 24) = 0x80000001AFF2A6E0;
  *(v40 + 32) = v38;
  v41 = MEMORY[0x1E69E7360];
  *(v40 + 40) = MEMORY[0x1E69E7360];
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
  if (v232)
  {
    v41 = (*(v232 + 8))();
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v41)
  {
    *(v40 + 160) = (*(v42 + 8))(v41, v42);
  }

  v43 = *(v40 + 64);
  *(v40 + 64) = sub_1AF5A97B4;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(v43);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;

  v44 = &type metadata for ShapeDistribution;
  sub_1AF5A9240(0, &qword_1EB633898, &type metadata for ShapeDistribution, type metadata accessor for EntityGetSet);
  v45 = swift_allocObject();
  v45[4] = sub_1AF5A97B8;
  v45[5] = v36;
  v45[2] = sub_1AF58D73C;
  v45[3] = v36;
  v45[6] = v36;
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
  strcpy((v46 + 16), "distribution");
  *(v46 + 29) = 0;
  *(v46 + 30) = -5120;
  *(v46 + 32) = v36;
  *(v46 + 40) = &type metadata for ShapeDistribution;
  *(v46 + 48) = 16;
  *(v46 + 56) = 0;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = v37;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  v47 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v47)
  {
    v44 = (*(v47 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v44)
  {
    v49 = (*(v48 + 8))(v44, v48);

    *(v46 + 160) = v49;
  }

  else
  {
  }

  v50 = *(v46 + 64);
  *(v46 + 64) = sub_1AF58D7A0;
  *(v46 + 72) = v36;
  sub_1AF0FB8EC(v50);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = v40;

  v234[7] = v46;
  v51 = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  v54[4] = sub_1AF5AA35C;
  v54[5] = v53;
  v54[2] = sub_1AF5A9C90;
  v54[3] = v53;
  v54[6] = v53;
  v55 = swift_allocObject();
  *(v55 + 112) = 1;
  *(v55 + 128) = 0;
  *(v55 + 136) = 0;
  *(v55 + 120) = 0;
  *(v55 + 160) = MEMORY[0x1E69E7CC0];
  *(v55 + 168) = 0;
  *(v55 + 210) = 0;
  *(v55 + 216) = 0;
  *(v55 + 176) = 0;
  *(v55 + 16) = 0xD000000000000012;
  *(v55 + 24) = 0x80000001AFF2A900;
  *(v55 + 32) = v53;
  v56 = MEMORY[0x1E69E7360];
  *(v55 + 40) = MEMORY[0x1E69E7360];
  *(v55 + 48) = 0;
  *(v55 + 56) = 1;
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
  if (v232)
  {
    v56 = (*(v232 + 8))();
  }

  v57 = swift_conformsToProtocol2();
  if (v57 && v56)
  {
    *(v55 + 160) = (*(v57 + 8))(v56, v57);
  }

  v58 = *(v55 + 64);
  *(v55 + 64) = sub_1AF5A97B4;
  *(v55 + 72) = v53;
  sub_1AF0FB8EC(v58);
  *(v55 + 168) = 0;
  *(v55 + 176) = 0;

  *(v55 + 216) = 0;

  v59 = &type metadata for EmissionOrder;
  sub_1AF5A9240(0, &unk_1EB6338A0, &type metadata for EmissionOrder, type metadata accessor for EntityGetSet);
  v60 = swift_allocObject();
  v60[4] = sub_1AF5AA144;
  v60[5] = v51;
  v60[2] = sub_1AF58D7E0;
  v60[3] = v51;
  v60[6] = v51;
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
  strcpy((v61 + 16), "emissionOrder");
  *(v61 + 30) = -4864;
  *(v61 + 32) = v51;
  *(v61 + 40) = &type metadata for EmissionOrder;
  *(v61 + 48) = 33;
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
  *(v61 + 96) = v52;
  *(v61 + 104) = 0;
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  *(v61 + 210) = 0;
  v62 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v62)
  {
    v59 = (*(v62 + 8))();
  }

  v63 = swift_conformsToProtocol2();
  if (v63 && v59)
  {
    v64 = (*(v63 + 8))(v59, v63);

    *(v61 + 160) = v64;
  }

  else
  {
  }

  v65 = *(v61 + 64);
  *(v61 + 64) = sub_1AF58D83C;
  *(v61 + 72) = v51;
  sub_1AF0FB8EC(v65);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = v55;

  v234[8] = v61;
  v66 = swift_getKeyPath();
  v67 = swift_getKeyPath();
  sub_1AF579ADC();
  v68 = swift_allocObject();
  v68[4] = sub_1AF58D87C;
  v68[5] = v66;
  v68[2] = sub_1AF58D894;
  v68[3] = v66;
  v68[6] = v66;
  v69 = swift_allocObject();
  *(v69 + 104) = 0;
  *(v69 + 112) = 1;
  *(v69 + 128) = 0;
  *(v69 + 136) = 0;
  *(v69 + 120) = 0;
  *(v69 + 160) = MEMORY[0x1E69E7CC0];
  *(v69 + 210) = 0;
  *(v69 + 216) = 0;
  v70 = MEMORY[0x1E69E7668];
  sub_1AF583D60(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
  v72 = v71;
  *(v69 + 168) = 0;
  *(v69 + 176) = 0;
  strcpy((v69 + 16), "gridDimensions");
  *(v69 + 31) = -18;
  *(v69 + 32) = v66;
  *(v69 + 40) = v71;
  *(v69 + 48) = 0;
  *(v69 + 56) = 1;
  *(v69 + 58) = 0;
  *(v69 + 184) = 0;
  *(v69 + 188) = 1;
  *(v69 + 192) = 0;
  *(v69 + 196) = 1;
  *(v69 + 200) = 0x1000100000000;
  *(v69 + 208) = 1;
  *(v69 + 64) = 0;
  *(v69 + 72) = 0;
  *(v69 + 96) = v67;
  *(v69 + 144) = xmmword_1AFE22A20;
  *(v69 + 80) = v68;
  *(v69 + 88) = &off_1F2535378;
  *(v69 + 210) = 0;
  v73 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v73 && v72)
  {
    v72 = (*(v73 + 8))(v72, v73);
  }

  v74 = swift_conformsToProtocol2();
  if (v74 && v72)
  {
    v75 = (*(v74 + 8))(v72, v74);

    *(v69 + 160) = v75;
  }

  else
  {
  }

  v76 = *(v69 + 64);
  *(v69 + 64) = sub_1AF58D8F8;
  *(v69 + 72) = v66;
  sub_1AF0FB8EC(v76);
  *(v69 + 168) = 0;
  *(v69 + 176) = 0;

  *(v69 + 216) = 0;

  v234[9] = v69;
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  sub_1AF5A9240(0, &qword_1ED725C68, v70, type metadata accessor for EntityGetSet);
  v79 = swift_allocObject();
  v79[4] = sub_1AF58D5CC;
  v79[5] = v77;
  v79[2] = sub_1AF58D93C;
  v79[3] = v77;
  v79[6] = v77;
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
  strcpy((v80 + 16), "uniformCount");
  *(v80 + 29) = 0;
  *(v80 + 30) = -5120;
  *(v80 + 32) = v77;
  *(v80 + 40) = v70;
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
  v81 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v81)
  {
    v70 = (*(v81 + 8))();
  }

  v82 = swift_conformsToProtocol2();
  if (v82 && v70)
  {
    v83 = (*(v82 + 8))(v70, v82);

    *(v80 + 160) = v83;
  }

  else
  {
  }

  v84 = *(v80 + 64);
  *(v80 + 64) = sub_1AF58D9AC;
  *(v80 + 72) = v77;
  sub_1AF0FB8EC(v84);
  *(v80 + 168) = 0;
  *(v80 + 176) = 0;

  *(v80 + 216) = 0;

  v234[10] = v80;
  v85 = swift_getKeyPath();
  v86 = swift_getKeyPath();
  v87 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v88 = swift_allocObject();
  v88[4] = sub_1AF58D9EC;
  v88[5] = v85;
  v88[2] = sub_1AF58DA18;
  v88[3] = v85;
  v88[6] = v85;
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
  strcpy((v89 + 16), "emitOnSurface");
  *(v89 + 30) = -4864;
  *(v89 + 32) = v85;
  *(v89 + 40) = v87;
  *(v89 + 48) = 34;
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
  *(v89 + 96) = v86;
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
  v227 = v90;
  if (v91 && v87)
  {
    v92 = (*(v91 + 8))(v87, v91);

    *(v89 + 160) = v92;
  }

  else
  {
  }

  v93 = *(v89 + 64);
  *(v89 + 64) = sub_1AF58DA74;
  *(v89 + 72) = v85;
  sub_1AF0FB8EC(v93);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = 0;

  v234[11] = v89;
  v94 = swift_getKeyPath();
  v95 = swift_getKeyPath();
  v96 = swift_allocObject();
  v96[4] = sub_1AF5AA35C;
  v96[5] = v95;
  v96[2] = sub_1AF5A9C90;
  v96[3] = v95;
  v96[6] = v95;
  v97 = swift_allocObject();
  *(v97 + 112) = 1;
  *(v97 + 128) = 0;
  *(v97 + 136) = 0;
  *(v97 + 120) = 0;
  *(v97 + 160) = MEMORY[0x1E69E7CC0];
  *(v97 + 168) = 0;
  *(v97 + 210) = 0;
  *(v97 + 216) = 0;
  *(v97 + 176) = 0;
  strcpy((v97 + 16), "directionIndex");
  *(v97 + 31) = -18;
  *(v97 + 32) = v95;
  v98 = MEMORY[0x1E69E7360];
  *(v97 + 40) = MEMORY[0x1E69E7360];
  *(v97 + 48) = 0;
  *(v97 + 56) = 1;
  *(v97 + 58) = 0;
  *(v97 + 184) = 0;
  *(v97 + 188) = 1;
  *(v97 + 192) = 0;
  *(v97 + 196) = 1;
  *(v97 + 200) = 0x1000100000000;
  *(v97 + 208) = 1;
  *(v97 + 64) = 0;
  *(v97 + 72) = 0;
  *(v97 + 96) = 0;
  *(v97 + 104) = 0;
  *(v97 + 144) = xmmword_1AFE22A20;
  *(v97 + 80) = v96;
  *(v97 + 88) = &off_1F2535378;
  *(v97 + 210) = 0;
  swift_retain_n();
  if (v232)
  {
    v98 = (*(v232 + 8))();
  }

  v99 = swift_conformsToProtocol2();
  if (v99 && v98)
  {
    *(v97 + 160) = (*(v99 + 8))(v98, v99);
  }

  v100 = *(v97 + 64);
  *(v97 + 64) = sub_1AF5A97B4;
  *(v97 + 72) = v95;
  sub_1AF0FB8EC(v100);
  *(v97 + 168) = 0;
  *(v97 + 176) = 0;

  *(v97 + 216) = 0;

  v101 = &type metadata for EmitterShape.Direction;
  sub_1AF5A9240(0, &qword_1EB6338B8, &type metadata for EmitterShape.Direction, type metadata accessor for EntityGetSet);
  v102 = swift_allocObject();
  v102[4] = sub_1AF58DAB4;
  v102[5] = v94;
  v102[2] = sub_1AF58DAE8;
  v102[3] = v94;
  v102[6] = v94;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 168) = 0;
  *(v103 + 210) = 0;
  *(v103 + 216) = 0;
  *(v103 + 176) = 0;
  *(v103 + 16) = 0x6F69746365726964;
  *(v103 + 24) = 0xE90000000000006ELL;
  *(v103 + 32) = v94;
  *(v103 + 40) = &type metadata for EmitterShape.Direction;
  *(v103 + 48) = 48;
  *(v103 + 56) = 0;
  *(v103 + 58) = 0;
  *(v103 + 184) = 0;
  *(v103 + 188) = 1;
  *(v103 + 192) = 0;
  *(v103 + 196) = 1;
  *(v103 + 200) = 0x1000100000000;
  *(v103 + 208) = 1;
  *(v103 + 64) = 0;
  *(v103 + 72) = 0;
  *(v103 + 96) = 0;
  *(v103 + 104) = 0;
  *(v103 + 144) = xmmword_1AFE22A20;
  *(v103 + 80) = v102;
  *(v103 + 88) = &off_1F2535378;
  *(v103 + 210) = 0;
  v104 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v104)
  {
    v101 = (*(v104 + 8))();
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v101)
  {
    *(v103 + 160) = (*(v105 + 8))(v101, v105);
  }

  v106 = *(v103 + 64);
  *(v103 + 64) = sub_1AF58DB4C;
  *(v103 + 72) = v94;
  sub_1AF0FB8EC(v106);
  *(v103 + 168) = 0;
  *(v103 + 176) = 0;

  *(v103 + 216) = v97;

  v234[12] = v103;
  v107 = swift_getKeyPath();
  v108 = swift_getKeyPath();
  sub_1AF57AAE8();
  v109 = swift_allocObject();
  v109[4] = sub_1AF58D87C;
  v109[5] = v107;
  v109[2] = sub_1AF58DB8C;
  v109[3] = v107;
  v109[6] = v107;
  v110 = swift_allocObject();
  *(v110 + 104) = 0;
  *(v110 + 112) = 1;
  *(v110 + 128) = 0;
  *(v110 + 136) = 0;
  *(v110 + 120) = 0;
  *(v110 + 160) = MEMORY[0x1E69E7CC0];
  *(v110 + 210) = 0;
  *(v110 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v112 = v111;
  *(v110 + 168) = 0;
  *(v110 + 176) = 0;
  strcpy((v110 + 16), "worldConstant");
  *(v110 + 30) = -4864;
  *(v110 + 32) = v107;
  *(v110 + 40) = v111;
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
  *(v110 + 96) = v108;
  *(v110 + 144) = xmmword_1AFE22A20;
  *(v110 + 80) = v109;
  *(v110 + 88) = &off_1F2535378;
  *(v110 + 210) = 0;
  v113 = swift_conformsToProtocol2();
  if (v113)
  {
    v114 = v112;
  }

  else
  {
    v114 = 0;
  }

  swift_retain_n();

  v231 = v112;
  if (v114)
  {
    v112 = (*(v113 + 8))(v114, v113);
  }

  v233 = v114;
  v115 = swift_conformsToProtocol2();
  if (v115 && v112)
  {
    v116 = (*(v115 + 8))(v112, v115);

    *(v110 + 160) = v116;
  }

  else
  {
  }

  v117 = *(v110 + 64);
  *(v110 + 64) = sub_1AF58DBF0;
  *(v110 + 72) = v107;
  sub_1AF0FB8EC(v117);
  *(v110 + 168) = 0;
  *(v110 + 176) = 0;

  *(v110 + 216) = 0;

  v234[13] = v110;
  v118 = swift_getKeyPath();
  v119 = swift_getKeyPath();
  v120 = swift_allocObject();
  v120[4] = sub_1AF5A97BC;
  v120[5] = v118;
  v120[2] = sub_1AF5A9C94;
  v120[3] = v118;
  v120[6] = v118;
  v121 = swift_allocObject();
  *(v121 + 112) = 1;
  *(v121 + 128) = 0;
  *(v121 + 136) = 0;
  *(v121 + 120) = 0;
  *(v121 + 160) = MEMORY[0x1E69E7CC0];
  *(v121 + 168) = 0;
  *(v121 + 210) = 0;
  *(v121 + 216) = 0;
  *(v121 + 176) = 0;
  strcpy((v121 + 16), "localConstant");
  *(v121 + 30) = -4864;
  v122 = v231;
  *(v121 + 32) = v118;
  *(v121 + 40) = v231;
  *(v121 + 48) = 0;
  *(v121 + 56) = 1;
  *(v121 + 58) = 0;
  *(v121 + 184) = 0;
  *(v121 + 188) = 1;
  *(v121 + 192) = 0;
  *(v121 + 196) = 1;
  *(v121 + 200) = 0x1000100000000;
  *(v121 + 208) = 1;
  *(v121 + 64) = 0;
  *(v121 + 72) = 0;
  *(v121 + 96) = v119;
  *(v121 + 104) = 0;
  *(v121 + 144) = xmmword_1AFE22A20;
  *(v121 + 80) = v120;
  *(v121 + 88) = &off_1F2535378;
  *(v121 + 210) = 0;
  swift_retain_n();

  if (v233)
  {
    v122 = (*(v113 + 8))();
  }

  v123 = swift_conformsToProtocol2();
  if (v123 && v122)
  {
    v124 = (*(v123 + 8))(v122, v123);

    *(v121 + 160) = v124;
  }

  else
  {
  }

  v125 = *(v121 + 64);
  *(v121 + 64) = sub_1AF5A97C0;
  *(v121 + 72) = v118;
  sub_1AF0FB8EC(v125);
  *(v121 + 168) = 0;
  *(v121 + 176) = 0;

  *(v121 + 216) = 0;

  v234[14] = v121;
  v126 = swift_getKeyPath();
  sub_1AF58DC7C();
  v127 = swift_allocObject();
  v127[4] = sub_1AF58DC34;
  v127[5] = v126;
  v127[2] = sub_1AF58DC68;
  v127[3] = v126;
  v127[6] = v126;
  v128 = swift_allocObject();
  *(v128 + 104) = 0;
  *(v128 + 112) = 1;
  *(v128 + 128) = 0;
  *(v128 + 136) = 0;
  *(v128 + 120) = 0;
  *(v128 + 160) = MEMORY[0x1E69E7CC0];
  *(v128 + 210) = 0;
  *(v128 + 216) = 0;
  sub_1AF5A9240(0, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
  *(v128 + 168) = 0;
  *(v128 + 176) = 0;
  *(v128 + 16) = 0x7461746E6569726FLL;
  *(v128 + 24) = 0xEB000000006E6F69;
  *(v128 + 32) = v126;
  *(v128 + 40) = v129;
  *(v128 + 48) = 80;
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
  *(v128 + 96) = 0;
  *(v128 + 144) = xmmword_1AFE22A20;
  *(v128 + 80) = v127;
  *(v128 + 88) = &off_1F2535378;
  *(v128 + 210) = 0;
  swift_retain_n();
  *(v128 + 160) = sub_1AF5722EC(sub_1AF570020, &type metadata for EmitterShape.Direction);

  v130 = *(v128 + 64);
  *(v128 + 64) = sub_1AF58DCF8;
  *(v128 + 72) = v126;
  sub_1AF0FB8EC(v130);
  *(v128 + 168) = 0;
  *(v128 + 176) = 0;

  *(v128 + 216) = 0;

  v234[15] = v128;
  v131 = swift_getKeyPath();
  v132 = swift_getKeyPath();
  v133 = swift_allocObject();
  v133[4] = sub_1AF5A97BC;
  v133[5] = v131;
  v133[2] = sub_1AF5A9C94;
  v133[3] = v131;
  v133[6] = v131;
  v134 = swift_allocObject();
  *(v134 + 112) = 1;
  *(v134 + 128) = 0;
  *(v134 + 136) = 0;
  *(v134 + 120) = 0;
  *(v134 + 160) = MEMORY[0x1E69E7CC0];
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;
  *(v134 + 210) = 0;
  *(v134 + 216) = 0;
  strcpy((v134 + 16), "worldConstant");
  *(v134 + 30) = -4864;
  *(v134 + 32) = v131;
  *(v134 + 40) = v231;
  *(v134 + 48) = 0;
  *(v134 + 56) = 1;
  *(v134 + 58) = 0;
  *(v134 + 184) = 0;
  *(v134 + 188) = 1;
  *(v134 + 192) = 0;
  *(v134 + 196) = 1;
  *(v134 + 200) = 0x1000100000000;
  *(v134 + 208) = 1;
  *(v134 + 64) = 0;
  *(v134 + 72) = 0;
  *(v134 + 96) = v132;
  *(v134 + 104) = 0;
  *(v134 + 144) = xmmword_1AFE22A20;
  *(v134 + 80) = v133;
  *(v134 + 88) = &off_1F2535378;
  *(v134 + 210) = 0;
  swift_retain_n();

  v135 = v231;
  if (v233)
  {
    v135 = (*(v113 + 8))();
  }

  v136 = swift_conformsToProtocol2();
  if (v136 && v135)
  {
    v137 = (*(v136 + 8))(v135, v136);

    *(v134 + 160) = v137;
  }

  else
  {
  }

  v138 = *(v134 + 64);
  *(v134 + 64) = sub_1AF5A97C0;
  *(v134 + 72) = v131;
  sub_1AF0FB8EC(v138);
  *(v134 + 168) = 0;
  *(v134 + 176) = 0;

  *(v134 + 216) = 0;

  v234[16] = v134;
  v139 = swift_getKeyPath();
  v140 = swift_getKeyPath();
  v141 = swift_allocObject();
  v141[4] = sub_1AF5A97BC;
  v141[5] = v139;
  v141[2] = sub_1AF5A9C94;
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
  *(v142 + 210) = 0;
  *(v142 + 216) = 0;
  strcpy((v142 + 16), "localConstant");
  *(v142 + 30) = -4864;
  *(v142 + 32) = v139;
  *(v142 + 40) = v231;
  *(v142 + 48) = 0;
  *(v142 + 56) = 1;
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

  v143 = v231;
  if (v233)
  {
    v143 = (*(v113 + 8))();
  }

  v144 = swift_conformsToProtocol2();
  if (v144 && v143)
  {
    v145 = (*(v144 + 8))(v143, v144);

    *(v142 + 160) = v145;
  }

  else
  {
  }

  v146 = *(v142 + 64);
  *(v142 + 64) = sub_1AF5A97C0;
  *(v142 + 72) = v139;
  sub_1AF0FB8EC(v146);
  *(v142 + 168) = 0;
  *(v142 + 176) = 0;

  *(v142 + 216) = 0;

  v234[17] = v142;
  v147 = swift_getKeyPath();
  v148 = swift_getKeyPath();
  v149 = swift_allocObject();
  v149[4] = sub_1AF5AA35C;
  v149[5] = v148;
  v149[2] = sub_1AF5A9C90;
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
  *(v150 + 210) = 0;
  *(v150 + 216) = 0;
  *(v150 + 16) = 0xD000000000000017;
  *(v150 + 24) = 0x80000001AFF2A920;
  *(v150 + 32) = v148;
  v151 = MEMORY[0x1E69E7360];
  *(v150 + 40) = MEMORY[0x1E69E7360];
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
  if (v232)
  {
    v151 = (*(v232 + 8))();
  }

  v152 = swift_conformsToProtocol2();
  if (v152 && v151)
  {
    *(v150 + 160) = (*(v152 + 8))(v151, v152);
  }

  v153 = *(v150 + 64);
  *(v150 + 64) = sub_1AF5A97B4;
  *(v150 + 72) = v148;
  sub_1AF0FB8EC(v153);
  *(v150 + 168) = 0;
  *(v150 + 176) = 0;

  *(v150 + 216) = 0;

  v154 = &type metadata for MotionDistribution;
  sub_1AF5A9240(0, &qword_1EB633890, &type metadata for MotionDistribution, type metadata accessor for EntityGetSet);
  v155 = swift_allocObject();
  v155[4] = sub_1AF58DD3C;
  v155[5] = v147;
  v155[2] = sub_1AF58DD68;
  v155[3] = v147;
  v155[6] = v147;
  v156 = swift_allocObject();
  *(v156 + 112) = 1;
  *(v156 + 128) = 0;
  *(v156 + 136) = 0;
  *(v156 + 120) = 0;
  *(v156 + 160) = MEMORY[0x1E69E7CC0];
  *(v156 + 168) = 0;
  *(v156 + 176) = 0;
  *(v156 + 210) = 0;
  *(v156 + 216) = 0;
  *(v156 + 16) = 0xD000000000000012;
  *(v156 + 24) = 0x80000001AFF22CB0;
  *(v156 + 32) = v147;
  *(v156 + 40) = &type metadata for MotionDistribution;
  *(v156 + 48) = 97;
  *(v156 + 56) = 0;
  *(v156 + 58) = 0;
  *(v156 + 184) = 0;
  *(v156 + 188) = 1;
  *(v156 + 192) = 0;
  *(v156 + 196) = 1;
  *(v156 + 200) = 0x1000100000000;
  *(v156 + 208) = 1;
  *(v156 + 64) = 0;
  *(v156 + 72) = 0;
  *(v156 + 96) = 0;
  *(v156 + 104) = 0;
  *(v156 + 144) = xmmword_1AFE22A20;
  *(v156 + 80) = v155;
  *(v156 + 88) = &off_1F2535378;
  *(v156 + 210) = 0;
  v157 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v157)
  {
    v154 = (*(v157 + 8))();
  }

  v158 = swift_conformsToProtocol2();
  if (v158 && v154)
  {
    *(v156 + 160) = (*(v158 + 8))(v154, v158);
  }

  v159 = *(v156 + 64);
  *(v156 + 64) = sub_1AF58DDC4;
  *(v156 + 72) = v147;
  sub_1AF0FB8EC(v159);
  *(v156 + 168) = 0;
  *(v156 + 176) = 0;

  *(v156 + 216) = v150;

  v234[18] = v156;
  v160 = swift_getKeyPath();
  v161 = swift_allocObject();
  v161[4] = sub_1AF5AA35C;
  v161[5] = v160;
  v161[2] = sub_1AF5AA4D4;
  v161[3] = v160;
  v161[6] = v160;
  v162 = swift_allocObject();
  *(v162 + 112) = 1;
  *(v162 + 128) = 0;
  *(v162 + 136) = 0;
  *(v162 + 120) = 0;
  *(v162 + 160) = MEMORY[0x1E69E7CC0];
  *(v162 + 168) = 0;
  *(v162 + 176) = 0;
  *(v162 + 210) = 0;
  *(v162 + 216) = 0;
  *(v162 + 16) = 0x797469636F6C6576;
  *(v162 + 24) = 0xE800000000000000;
  v163 = v228;
  *(v162 + 32) = v160;
  *(v162 + 40) = v228;
  *(v162 + 48) = 104;
  *(v162 + 56) = 0;
  *(v162 + 58) = 0;
  *(v162 + 184) = 0;
  *(v162 + 188) = 1;
  *(v162 + 192) = 0;
  *(v162 + 196) = 1;
  *(v162 + 200) = 0x1000100000000;
  *(v162 + 208) = 1;
  *(v162 + 64) = 0;
  *(v162 + 72) = 0;
  *(v162 + 96) = 0;
  *(v162 + 104) = 0;
  *(v162 + 144) = xmmword_1AFE22A20;
  *(v162 + 80) = v161;
  *(v162 + 88) = &off_1F2535378;
  *(v162 + 210) = 0;
  swift_retain_n();
  v164 = v228;
  if (v230)
  {
    v164 = (*(v229 + 8))();
  }

  v165 = swift_conformsToProtocol2();
  if (v165 && v164)
  {
    *(v162 + 160) = (*(v165 + 8))(v164, v165);
  }

  v166 = *(v162 + 64);
  *(v162 + 64) = sub_1AF5A97C4;
  *(v162 + 72) = v160;
  sub_1AF0FB8EC(v166);
  *(v162 + 168) = 0;
  *(v162 + 176) = 0;

  *(v162 + 216) = 0;

  v234[19] = v162;
  v167 = swift_getKeyPath();
  v168 = swift_allocObject();
  v168[4] = sub_1AF5AA35C;
  v168[5] = v167;
  v168[2] = sub_1AF5AA4D4;
  v168[3] = v167;
  v168[6] = v167;
  v169 = swift_allocObject();
  *(v169 + 112) = 1;
  *(v169 + 128) = 0;
  *(v169 + 136) = 0;
  *(v169 + 120) = 0;
  *(v169 + 160) = MEMORY[0x1E69E7CC0];
  *(v169 + 168) = 0;
  *(v169 + 176) = 0;
  *(v169 + 210) = 0;
  *(v169 + 216) = 0;
  *(v169 + 16) = 0x6E69646165727073;
  *(v169 + 24) = 0xE900000000000067;
  *(v169 + 32) = v167;
  *(v169 + 40) = v228;
  *(v169 + 48) = 112;
  *(v169 + 56) = 0;
  *(v169 + 58) = 0;
  *(v169 + 184) = 0;
  *(v169 + 188) = 0;
  *(v169 + 192) = 1078530011;
  *(v169 + 196) = 0;
  *(v169 + 200) = 0x1000100000000;
  *(v169 + 208) = 1;
  *(v169 + 64) = 0;
  *(v169 + 72) = 0;
  *(v169 + 96) = 0;
  *(v169 + 104) = 0;
  *(v169 + 144) = xmmword_1AFE55150;
  *(v169 + 80) = v168;
  *(v169 + 88) = &off_1F2535378;
  *(v169 + 210) = 0;
  swift_retain_n();
  v170 = v228;
  if (v230)
  {
    v170 = (*(v229 + 8))();
  }

  v171 = swift_conformsToProtocol2();
  if (v171 && v170)
  {
    *(v169 + 160) = (*(v171 + 8))(v170, v171);
  }

  v172 = *(v169 + 64);
  *(v169 + 64) = sub_1AF5A97C4;
  *(v169 + 72) = v167;
  sub_1AF0FB8EC(v172);
  *(v169 + 168) = 0;
  *(v169 + 176) = 0;

  *(v169 + 216) = 0;

  v234[20] = v169;
  v173 = swift_getKeyPath();
  v174 = swift_allocObject();
  v174[4] = sub_1AF5A97BC;
  v174[5] = v173;
  v174[2] = sub_1AF5A9C94;
  v174[3] = v173;
  v174[6] = v173;
  v175 = swift_allocObject();
  *(v175 + 112) = 1;
  *(v175 + 128) = 0;
  *(v175 + 136) = 0;
  *(v175 + 120) = 0;
  *(v175 + 160) = MEMORY[0x1E69E7CC0];
  *(v175 + 168) = 0;
  *(v175 + 176) = 0;
  *(v175 + 210) = 0;
  *(v175 + 216) = 0;
  *(v175 + 16) = 0x41746E65676E6174;
  *(v175 + 24) = 0xEB00000000736978;
  v176 = v231;
  *(v175 + 32) = v173;
  *(v175 + 40) = v231;
  *(v175 + 48) = 128;
  *(v175 + 56) = 0;
  *(v175 + 58) = 0;
  *(v175 + 184) = 0;
  *(v175 + 188) = 1;
  *(v175 + 192) = 0;
  *(v175 + 196) = 1;
  *(v175 + 200) = 0x1000100000000;
  *(v175 + 208) = 1;
  *(v175 + 64) = 0;
  *(v175 + 72) = 0;
  *(v175 + 96) = 0;
  *(v175 + 104) = 0;
  *(v175 + 144) = xmmword_1AFE22A20;
  *(v175 + 80) = v174;
  *(v175 + 88) = &off_1F2535378;
  *(v175 + 210) = 0;
  swift_retain_n();
  if (v233)
  {
    v176 = (*(v113 + 8))();
  }

  v177 = swift_conformsToProtocol2();
  if (v177 && v176)
  {
    *(v175 + 160) = (*(v177 + 8))(v176, v177);
  }

  v178 = *(v175 + 64);
  *(v175 + 64) = sub_1AF5A97C0;
  *(v175 + 72) = v173;
  sub_1AF0FB8EC(v178);
  *(v175 + 168) = 0;
  *(v175 + 176) = 0;

  *(v175 + 216) = 0;

  v234[21] = v175;
  v179 = swift_getKeyPath();
  v180 = swift_allocObject();
  v180[4] = sub_1AF5AA35C;
  v180[5] = v179;
  v180[2] = sub_1AF5AA4D4;
  v180[3] = v179;
  v180[6] = v179;
  v181 = swift_allocObject();
  *(v181 + 112) = 1;
  *(v181 + 128) = 0;
  *(v181 + 136) = 0;
  *(v181 + 120) = 0;
  *(v181 + 160) = MEMORY[0x1E69E7CC0];
  *(v181 + 168) = 0;
  *(v181 + 176) = 0;
  *(v181 + 216) = 0;
  strcpy((v181 + 16), "tangentForce");
  *(v181 + 29) = 0;
  *(v181 + 30) = -5120;
  *(v181 + 32) = v179;
  *(v181 + 40) = v228;
  *(v181 + 48) = 144;
  *(v181 + 56) = 0;
  *(v181 + 58) = 0;
  *(v181 + 184) = 0;
  *(v181 + 188) = 1;
  *(v181 + 192) = 0;
  *(v181 + 196) = 1;
  *(v181 + 200) = 0x1000100000000;
  *(v181 + 208) = 1;
  *(v181 + 64) = 0;
  *(v181 + 72) = 0;
  *(v181 + 96) = 0;
  *(v181 + 104) = 0;
  *(v181 + 144) = xmmword_1AFE22A20;
  *(v181 + 80) = v180;
  *(v181 + 88) = &off_1F2535378;
  *(v181 + 210) = 0;
  swift_retain_n();
  if (v230)
  {
    v163 = (*(v229 + 8))();
  }

  v182 = swift_conformsToProtocol2();
  if (v182 && v163)
  {
    *(v181 + 160) = (*(v182 + 8))(v163, v182);
  }

  v183 = *(v181 + 64);
  *(v181 + 64) = sub_1AF5A97C4;
  *(v181 + 72) = v179;
  sub_1AF0FB8EC(v183);
  *(v181 + 168) = 0;
  *(v181 + 176) = 0;

  *(v181 + 216) = 0;

  v234[22] = v181;
  v184 = swift_getKeyPath();
  v185 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v186 = swift_allocObject();
  v186[4] = sub_1AF58D440;
  v186[5] = v184;
  v186[2] = sub_1AF58DE04;
  v186[3] = v184;
  v186[6] = v184;
  v187 = swift_allocObject();
  *(v187 + 112) = 1;
  *(v187 + 128) = 0;
  *(v187 + 136) = 0;
  *(v187 + 120) = 0;
  *(v187 + 168) = 0;
  *(v187 + 160) = MEMORY[0x1E69E7CC0];
  *(v187 + 176) = 0;
  *(v187 + 216) = 0;
  *(v187 + 16) = 0x65727574786574;
  *(v187 + 24) = 0xE700000000000000;
  *(v187 + 32) = v184;
  *(v187 + 40) = &type metadata for Entity;
  *(v187 + 48) = 152;
  *(v187 + 56) = 0;
  *(v187 + 58) = 0;
  *(v187 + 184) = 0;
  *(v187 + 188) = 1;
  *(v187 + 192) = 0;
  *(v187 + 196) = 1;
  *(v187 + 200) = 0x1000100000000;
  *(v187 + 208) = 1;
  *(v187 + 64) = 0;
  *(v187 + 72) = 0;
  *(v187 + 96) = 0;
  *(v187 + 104) = 0;
  *(v187 + 144) = xmmword_1AFE551B0;
  *(v187 + 80) = v186;
  *(v187 + 88) = &off_1F2535378;
  *(v187 + 210) = 0;
  v188 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v188)
  {
    v185 = (*(v188 + 8))();
  }

  v189 = swift_conformsToProtocol2();
  if (v189 && v185)
  {
    *(v187 + 160) = (*(v189 + 8))(v185, v189);
  }

  *(v187 + 64) = sub_1AF58DE60;
  *(v187 + 72) = v184;
  sub_1AF0FB8EC(0);
  *(v187 + 168) = 0;
  *(v187 + 176) = 0;

  *(v187 + 216) = 0;
  v234[23] = v187;
  v190 = swift_getKeyPath();
  v191 = swift_getKeyPath();
  v192 = swift_getKeyPath();
  v193 = swift_allocObject();
  v193[4] = sub_1AF5AA35C;
  v193[5] = v192;
  v193[2] = sub_1AF5A9C90;
  v193[3] = v192;
  v193[6] = v192;
  v194 = swift_allocObject();
  *(v194 + 112) = 1;
  *(v194 + 128) = 0;
  *(v194 + 136) = 0;
  *(v194 + 120) = 0;
  *(v194 + 160) = MEMORY[0x1E69E7CC0];
  *(v194 + 168) = 0;
  *(v194 + 176) = 0;
  *(v194 + 216) = 0;
  *(v194 + 16) = 0xD000000000000010;
  *(v194 + 24) = 0x80000001AFF2A940;
  *(v194 + 32) = v192;
  v195 = MEMORY[0x1E69E7360];
  *(v194 + 40) = MEMORY[0x1E69E7360];
  *(v194 + 48) = 0;
  *(v194 + 56) = 1;
  *(v194 + 58) = 0;
  *(v194 + 184) = 0;
  *(v194 + 188) = 1;
  *(v194 + 192) = 0;
  *(v194 + 196) = 1;
  *(v194 + 200) = 0x1000100000000;
  *(v194 + 208) = 1;
  *(v194 + 64) = 0;
  *(v194 + 72) = 0;
  *(v194 + 96) = 0;
  *(v194 + 104) = 0;
  *(v194 + 144) = xmmword_1AFE22A20;
  *(v194 + 80) = v193;
  *(v194 + 88) = &off_1F2535378;
  *(v194 + 210) = 0;
  swift_retain_n();
  if (v232)
  {
    v195 = (*(v232 + 8))();
  }

  v196 = swift_conformsToProtocol2();
  if (v196 && v195)
  {
    *(v194 + 160) = (*(v196 + 8))(v195, v196);
  }

  *(v194 + 64) = sub_1AF5A97B4;
  *(v194 + 72) = v192;
  sub_1AF0FB8EC(0);
  *(v194 + 168) = 0;
  *(v194 + 176) = 0;

  *(v194 + 216) = 0;
  v197 = &type metadata for AddressMode;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v198 = swift_allocObject();
  v198[4] = sub_1AF58DEA0;
  v198[5] = v190;
  v198[2] = sub_1AF58DECC;
  v198[3] = v190;
  v198[6] = v190;
  v199 = swift_allocObject();
  *(v199 + 112) = 1;
  *(v199 + 128) = 0;
  *(v199 + 136) = 0;
  *(v199 + 120) = 0;
  *(v199 + 160) = MEMORY[0x1E69E7CC0];
  *(v199 + 168) = 0;
  *(v199 + 176) = 0;
  *(v199 + 216) = 0;
  *(v199 + 16) = 0x4D73736572646461;
  *(v199 + 24) = 0xEB0000000065646FLL;
  *(v199 + 32) = v190;
  *(v199 + 40) = &type metadata for AddressMode;
  *(v199 + 48) = 160;
  *(v199 + 56) = 0;
  *(v199 + 58) = 0;
  *(v199 + 184) = 0;
  *(v199 + 188) = 1;
  *(v199 + 192) = 0;
  *(v199 + 196) = 1;
  *(v199 + 200) = 0x1000100000000;
  *(v199 + 208) = 1;
  *(v199 + 64) = 0;
  *(v199 + 72) = 0;
  *(v199 + 96) = v191;
  *(v199 + 104) = 0;
  *(v199 + 144) = xmmword_1AFE22A20;
  *(v199 + 80) = v198;
  *(v199 + 88) = &off_1F2535378;
  *(v199 + 210) = 0;
  v200 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v200)
  {
    v197 = (*(v200 + 8))();
  }

  v201 = swift_conformsToProtocol2();
  if (v201 && v197)
  {
    v202 = (*(v201 + 8))(v197, v201);

    *(v199 + 160) = v202;
  }

  else
  {
  }

  *(v199 + 64) = sub_1AF58DF28;
  *(v199 + 72) = v190;
  sub_1AF0FB8EC(0);
  *(v199 + 168) = 0;
  *(v199 + 176) = 0;

  *(v199 + 216) = v194;
  v234[24] = v199;
  v203 = swift_getKeyPath();
  v204 = swift_getKeyPath();
  v205 = swift_allocObject();
  v205[4] = sub_1AF5A97BC;
  v205[5] = v203;
  v205[2] = sub_1AF5A9C94;
  v205[3] = v203;
  v205[6] = v203;
  v206 = swift_allocObject();
  *(v206 + 112) = 1;
  *(v206 + 128) = 0;
  *(v206 + 136) = 0;
  *(v206 + 120) = 0;
  *(v206 + 160) = MEMORY[0x1E69E7CC0];
  *(v206 + 168) = 0;
  *(v206 + 176) = 0;
  *(v206 + 216) = 0;
  strcpy((v206 + 16), "textureScale");
  *(v206 + 29) = 0;
  *(v206 + 30) = -5120;
  v207 = v231;
  *(v206 + 32) = v203;
  *(v206 + 40) = v231;
  *(v206 + 48) = 176;
  *(v206 + 56) = 0;
  *(v206 + 58) = 0;
  *(v206 + 184) = 0;
  *(v206 + 188) = 1;
  *(v206 + 192) = 0;
  *(v206 + 196) = 1;
  *(v206 + 200) = 0x1000100000000;
  *(v206 + 208) = 1;
  *(v206 + 64) = 0;
  *(v206 + 72) = 0;
  *(v206 + 96) = v204;
  *(v206 + 104) = 0;
  *(v206 + 144) = xmmword_1AFE22A20;
  *(v206 + 80) = v205;
  *(v206 + 88) = &off_1F2535378;
  *(v206 + 210) = 0;
  swift_retain_n();

  v208 = v231;
  if (v233)
  {
    v208 = (*(v113 + 8))();
  }

  v209 = swift_conformsToProtocol2();
  if (v209 && v208)
  {
    v210 = (*(v209 + 8))(v208, v209);

    *(v206 + 160) = v210;
  }

  else
  {
  }

  v211 = *(v206 + 64);
  *(v206 + 64) = sub_1AF5A97C0;
  *(v206 + 72) = v203;
  sub_1AF0FB8EC(v211);
  *(v206 + 168) = 0;
  *(v206 + 176) = 0;

  *(v206 + 216) = 0;

  v234[25] = v206;
  v212 = swift_getKeyPath();
  v213 = swift_getKeyPath();
  v214 = swift_allocObject();
  v214[4] = sub_1AF5A97BC;
  v214[5] = v212;
  v214[2] = sub_1AF5A9C94;
  v214[3] = v212;
  v214[6] = v212;
  v215 = swift_allocObject();
  *(v215 + 112) = 1;
  *(v215 + 128) = 0;
  *(v215 + 136) = 0;
  *(v215 + 120) = 0;
  *(v215 + 160) = MEMORY[0x1E69E7CC0];
  *(v215 + 168) = 0;
  *(v215 + 176) = 0;
  *(v215 + 216) = 0;
  *(v215 + 16) = 0x4265727574786574;
  *(v215 + 24) = 0xEB00000000736169;
  *(v215 + 32) = v212;
  *(v215 + 40) = v231;
  *(v215 + 48) = 192;
  *(v215 + 56) = 0;
  *(v215 + 58) = 0;
  *(v215 + 184) = 0;
  *(v215 + 188) = 1;
  *(v215 + 192) = 0;
  *(v215 + 196) = 1;
  *(v215 + 200) = 0x1000100000000;
  *(v215 + 208) = 1;
  *(v215 + 64) = 0;
  *(v215 + 72) = 0;
  *(v215 + 96) = v213;
  *(v215 + 104) = 0;
  *(v215 + 144) = xmmword_1AFE22A20;
  *(v215 + 80) = v214;
  *(v215 + 88) = &off_1F2535378;
  *(v215 + 210) = 0;
  swift_retain_n();

  if (v233)
  {
    v207 = (*(v113 + 8))();
  }

  v216 = swift_conformsToProtocol2();
  if (v216 && v207)
  {
    v217 = (*(v216 + 8))(v207, v216);

    *(v215 + 160) = v217;
  }

  else
  {
  }

  v218 = *(v215 + 64);
  *(v215 + 64) = sub_1AF5A97C0;
  *(v215 + 72) = v212;
  sub_1AF0FB8EC(v218);
  *(v215 + 168) = 0;
  *(v215 + 176) = 0;

  *(v215 + 216) = 0;

  v234[26] = v215;
  v219 = swift_getKeyPath();
  v220 = swift_getKeyPath();
  v221 = swift_allocObject();
  v221[4] = sub_1AF5AA148;
  v221[5] = v219;
  v221[2] = sub_1AF5A9C98;
  v221[3] = v219;
  v221[6] = v219;
  v222 = swift_allocObject();
  *(v222 + 112) = 1;
  *(v222 + 128) = 0;
  *(v222 + 136) = 0;
  *(v222 + 120) = 0;
  *(v222 + 160) = MEMORY[0x1E69E7CC0];
  *(v222 + 168) = 0;
  *(v222 + 176) = 0;
  *(v222 + 216) = 0;
  strcpy((v222 + 16), "inheritColor");
  *(v222 + 29) = 0;
  *(v222 + 30) = -5120;
  *(v222 + 32) = v219;
  v223 = MEMORY[0x1E69E6370];
  *(v222 + 40) = MEMORY[0x1E69E6370];
  *(v222 + 48) = 208;
  *(v222 + 56) = 0;
  *(v222 + 58) = 0;
  *(v222 + 184) = 0;
  *(v222 + 188) = 1;
  *(v222 + 192) = 0;
  *(v222 + 196) = 1;
  *(v222 + 200) = 0x1000100000000;
  *(v222 + 208) = 1;
  *(v222 + 64) = 0;
  *(v222 + 72) = 0;
  *(v222 + 96) = v220;
  *(v222 + 104) = 0;
  *(v222 + 144) = xmmword_1AFE22A20;
  *(v222 + 80) = v221;
  *(v222 + 88) = &off_1F2535378;
  *(v222 + 210) = 0;
  swift_retain_n();

  if (v227)
  {
    v223 = (*(v227 + 8))();
  }

  v224 = swift_conformsToProtocol2();
  if (v224 && v223)
  {
    v225 = (*(v224 + 8))(v223, v224);

    *(v222 + 160) = v225;
  }

  else
  {
  }

  *(v222 + 64) = sub_1AF5A97C8;
  *(v222 + 72) = v219;
  sub_1AF0FB8EC(0);
  *(v222 + 168) = 0;
  *(v222 + 176) = 0;

  *(v222 + 216) = 0;
  v234[27] = v222;
  qword_1EB6C2A90 = v234;
  return result;
}

uint64_t sub_1AF4D0748()
{
  if (*(v0 + 4) == 1)
  {
    return qword_1AFE61560[*v0];
  }

  else
  {
    return 5;
  }
}

int *sub_1AF4D0770@<X0>(int *result@<X0>, void *a2@<X8>)
{
  if (*(result + 4) == 1)
  {
    *a2 = qword_1AFE61560[*result];
  }

  else
  {
    *a2 = 5;
  }

  return result;
}

uint64_t sub_1AF4D07A0(uint64_t result)
{
  if (result > 3)
  {
    switch(result)
    {
      case 4:
        v2 = 1;
        v3 = 4;
        goto LABEL_16;
      case 5:
        v2 = 0;
        v3 = 1036831949;
        goto LABEL_16;
      case 6:
        v2 = 1;
        v3 = 5;
        goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (result == 1)
  {
    v3 = 1;
LABEL_13:
    v2 = 1;
    goto LABEL_16;
  }

  if (result == 2)
  {
    v2 = 1;
    v3 = 2;
    goto LABEL_16;
  }

  if (result != 3)
  {
LABEL_12:
    v3 = 0;
    goto LABEL_13;
  }

  v2 = 1;
  v3 = 3;
LABEL_16:
  *v1 = v3;
  *(v1 + 4) = v2;
  return result;
}

float sub_1AF4D0834()
{
  result = *v0;
  if (*(v0 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1AF4D08B0(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 33) = v2;
  return result;
}

uint64_t sub_1AF4D08E8()
{
  result = *(v0 + 64);
  if (*(v0 + 64))
  {
    if (result == 1)
    {
      return 1;
    }

    else
    {
      return *(v0 + 48) + 2;
    }
  }

  return result;
}

uint64_t sub_1AF4D090C(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      *(v1 + 48) = xmmword_1AFE20160;
      *(v1 + 64) = 0;
      return result;
    }

    if (result == 1)
    {
      *(v1 + 48) = xmmword_1AFE20160;
      *(v1 + 64) = 1;
      return result;
    }

LABEL_8:
    *(v1 + 48) = xmmword_1AFE505D0;
    goto LABEL_11;
  }

  if (result == 2)
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    goto LABEL_11;
  }

  if (result != 3)
  {
    goto LABEL_8;
  }

  *(v1 + 48) = xmmword_1AFE22A20;
LABEL_11:
  *(v1 + 64) = 2;
  return result;
}

double sub_1AF4D098C(int8x16_t a1, double a2, int8x16_t a3)
{
  a1.i32[0] = 0;
  a3.i8[0] = v3[4].i8[0];
  a1.i64[0] = vandq_s8(v3[3], vdupq_lane_s8(*&vceqq_s8(a3, a1), 0)).u64[0];
  return *a1.i64;
}

double sub_1AF4D09B8(double a1, int8x16_t a2, int8x16_t a3)
{
  a2.i8[0] = v3[4].i8[0];
  a3.i32[0] = 1;
  *&result = vandq_s8(v3[3], vdupq_lane_s8(*&vceqq_s8(a2, a3), 0)).u64[0];
  return result;
}

double sub_1AF4D09E8(int8x16_t a1, double a2, int8x16_t a3)
{
  a1.i32[0] = 0;
  a3.i8[0] = v3[6].i8[0];
  a1.i64[0] = vandq_s8(v3[5], vdupq_lane_s8(*&vceqq_s8(a3, a1), 0)).u64[0];
  return *a1.i64;
}

double sub_1AF4D0A14(double a1, int8x16_t a2, int8x16_t a3)
{
  a2.i8[0] = v3[6].i8[0];
  a3.i32[0] = 1;
  *&result = vandq_s8(v3[5], vdupq_lane_s8(*&vceqq_s8(a2, a3), 0)).u64[0];
  return result;
}

uint64_t sub_1AF4D0A4C(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 97) = v2;
  return result;
}

uint64_t sub_1AF4D0A6C(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 160) = v2;
  return result;
}

uint64_t sub_1AF4D0A84(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      *v1 = xmmword_1AFE20160;
      *(v1 + 16) = 0;
      return result;
    }

    if (result == 1)
    {
      *v1 = xmmword_1AFE20160;
      *(v1 + 16) = 1;
      return result;
    }

LABEL_8:
    v2 = xmmword_1AFE505D0;
    goto LABEL_9;
  }

  if (result == 2)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    goto LABEL_12;
  }

  if (result != 3)
  {
    goto LABEL_8;
  }

  v2 = xmmword_1AFE22A20;
LABEL_9:
  *v1 = v2;
LABEL_12:
  *(v1 + 16) = 2;
  return result;
}

uint64_t sub_1AF4D0B30()
{
  if (qword_1EB633918 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4D0C20()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55170;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF58E9A4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF58E9D8;
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

  v7 = *(v4 + 64);
  *(v4 + 64) = sub_1AF58EA34;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF57F2F4();
  v9 = swift_allocObject();
  v9[4] = sub_1AF58E9A4;
  v9[5] = v8;
  v9[2] = sub_1AF58EA74;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 210) = 0;
  *(v10 + 216) = 0;
  sub_1AF589E74(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  strcpy((v10 + 16), "velocityRange");
  *(v10 + 30) = -4864;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 16;
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
  *(v10 + 64) = sub_1AF58EAD0;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF58EB14;
  v18[5] = v16;
  v18[2] = sub_1AF58EB40;
  v18[3] = v16;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = MEMORY[0x1E69E7CC0];
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x5074697265686E69;
  *(v19 + 24) = 0xEF6E6F697469736FLL;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = 24;
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
    v21 = (*(v20 + 8))();
  }

  else
  {
    v21 = v17;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v19 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v19 + 64) = sub_1AF58EB9C;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v0 + 48) = v19;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5AA154;
  v24[5] = v23;
  v24[2] = sub_1AF5A9CB8;
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
  strcpy((v25 + 16), "inheritColor");
  *(v25 + 29) = 0;
  *(v25 + 30) = -5120;
  *(v25 + 32) = v23;
  *(v25 + 40) = v17;
  *(v25 + 48) = 25;
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
  if (v20)
  {
    v26 = (*(v20 + 8))();
  }

  else
  {
    v26 = v17;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A97D4;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA154;
  v29[5] = v28;
  v29[2] = sub_1AF5A9CB8;
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
  *(v30 + 16) = 0x5674697265686E69;
  *(v30 + 24) = 0xEF797469636F6C65;
  *(v30 + 32) = v28;
  *(v30 + 40) = v17;
  *(v30 + 48) = 26;
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
  if (v20)
  {
    v31 = (*(v20 + 8))();
  }

  else
  {
    v31 = v17;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v30 + 160) = (*(v32 + 8))(v31, v32);
  }

  *(v30 + 64) = sub_1AF5A97D4;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 64) = v30;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AF5AA154;
  v34[5] = v33;
  v34[2] = sub_1AF5A9CB8;
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
  *(v35 + 16) = 0xD000000000000012;
  *(v35 + 24) = 0x80000001AFF23530;
  *(v35 + 32) = v33;
  *(v35 + 40) = v17;
  *(v35 + 48) = 27;
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
  if (v20)
  {
    v36 = (*(v20 + 8))();
  }

  else
  {
    v36 = v17;
  }

  v37 = MEMORY[0x1E69E6448];
  v38 = swift_conformsToProtocol2();
  if (v38 && v36)
  {
    *(v35 + 160) = (*(v38 + 8))(v36, v38);
  }

  *(v35 + 64) = sub_1AF5A97D4;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 72) = v35;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AF5AA154;
  v40[5] = v39;
  v40[2] = sub_1AF5A9CB8;
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
  *(v41 + 16) = 0x5374697265686E69;
  *(v41 + 24) = 0xEB00000000657A69;
  *(v41 + 32) = v39;
  *(v41 + 40) = v17;
  *(v41 + 48) = 28;
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
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v17)
  {
    *(v41 + 160) = (*(v42 + 8))(v17, v42);
  }

  *(v41 + 64) = sub_1AF5A97D4;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 80) = v41;
  v43 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v37, type metadata accessor for EntityGetSet);
  v44 = swift_allocObject();
  v44[4] = sub_1AF58EBDC;
  v44[5] = v43;
  v44[2] = sub_1AF58EC10;
  v44[3] = v43;
  v44[6] = v43;
  v45 = swift_allocObject();
  *(v45 + 112) = 1;
  *(v45 + 128) = 0;
  *(v45 + 136) = 0;
  *(v45 + 120) = 0;
  *(v45 + 160) = MEMORY[0x1E69E7CC0];
  *(v45 + 168) = 0;
  *(v45 + 216) = 0;
  *(v45 + 176) = 0;
  *(v45 + 16) = 0x72546E6F69746F6DLL;
  *(v45 + 24) = 0xEF74726566736E61;
  *(v45 + 32) = v43;
  *(v45 + 40) = v37;
  *(v45 + 48) = 32;
  *(v45 + 56) = 0;
  *(v45 + 58) = 0;
  *(v45 + 184) = 0;
  *(v45 + 188) = 0;
  *(v45 + 192) = 0x40000000;
  *(v45 + 196) = 0;
  *(v45 + 200) = 0x1000100000000;
  *(v45 + 208) = 1;
  *(v45 + 64) = 0;
  *(v45 + 72) = 0;
  *(v45 + 96) = 0;
  *(v45 + 104) = 0;
  *(v45 + 144) = xmmword_1AFE22A20;
  *(v45 + 80) = v44;
  *(v45 + 88) = &off_1F2535378;
  *(v45 + 210) = 0;
  v46 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v46)
  {
    v37 = (*(v46 + 8))();
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v37)
  {
    *(v45 + 160) = (*(v47 + 8))(v37, v47);
  }

  *(v45 + 64) = sub_1AF58EC6C;
  *(v45 + 72) = v43;
  sub_1AF0FB8EC(0);
  *(v45 + 168) = 0;
  *(v45 + 176) = 0;

  *(v45 + 216) = 0;
  *(v0 + 88) = v45;
  v48 = swift_getKeyPath();
  v49 = swift_getKeyPath();
  v50 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v51 = swift_allocObject();
  v51[4] = sub_1AF58E9A4;
  v51[5] = v49;
  v51[2] = sub_1AF58ECAC;
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
  *(v52 + 16) = 0xD000000000000017;
  *(v52 + 24) = 0x80000001AFF2A920;
  *(v52 + 32) = v49;
  *(v52 + 40) = v50;
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

  *(v52 + 64) = sub_1AF58ED08;
  *(v52 + 72) = v49;
  sub_1AF0FB8EC(0);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;
  v55 = &type metadata for MotionDistribution;
  sub_1AF5A9240(0, &qword_1EB633890, &type metadata for MotionDistribution, type metadata accessor for EntityGetSet);
  v56 = swift_allocObject();
  v56[4] = sub_1AF58ED48;
  v56[5] = v48;
  v56[2] = sub_1AF58ED74;
  v56[3] = v48;
  v56[6] = v48;
  v57 = swift_allocObject();
  *(v57 + 112) = 1;
  *(v57 + 128) = 0;
  *(v57 + 136) = 0;
  *(v57 + 120) = 0;
  *(v57 + 160) = MEMORY[0x1E69E7CC0];
  *(v57 + 168) = 0;
  *(v57 + 216) = 0;
  *(v57 + 176) = 0;
  *(v57 + 16) = 0xD000000000000012;
  *(v57 + 24) = 0x80000001AFF22CB0;
  *(v57 + 32) = v48;
  *(v57 + 40) = &type metadata for MotionDistribution;
  *(v57 + 48) = 29;
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
    v55 = (*(v58 + 8))();
  }

  v59 = swift_conformsToProtocol2();
  if (v59 && v55)
  {
    *(v57 + 160) = (*(v59 + 8))(v55, v59);
  }

  *(v57 + 64) = sub_1AF58EDD0;
  *(v57 + 72) = v48;
  sub_1AF0FB8EC(0);
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;

  *(v57 + 216) = v52;
  *(v0 + 96) = v57;
  qword_1EB6C2EB8 = v0;
  return result;
}