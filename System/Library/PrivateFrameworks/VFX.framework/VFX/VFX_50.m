uint64_t sub_1AF4E5F14()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF595CDC;
  v3[5] = v1;
  v3[2] = sub_1AF595D10;
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
  strcpy((v4 + 16), "directionIndex");
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

  *(v4 + 64) = sub_1AF595D6C;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  v9 = &type metadata for FlockingLocalAxis;
  sub_1AF5A9240(0, &qword_1EB63B040, &type metadata for FlockingLocalAxis, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF595DAC;
  v10[5] = KeyPath;
  v10[2] = sub_1AF595DD8;
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
  *(v11 + 16) = 0x6F69746365726964;
  *(v11 + 24) = 0xE90000000000006ELL;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for FlockingLocalAxis;
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
    v13 = (*(v12 + 8))();
  }

  else
  {
    v13 = &type metadata for FlockingLocalAxis;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v11 + 160) = (*(v14 + 8))(v13, v14);
  }

  *(v11 + 64) = sub_1AF595E34;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;
  *(v49 + 32) = v11;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF595E74;
  v17[5] = v15;
  v17[2] = sub_1AF595EA8;
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
  strcpy((v18 + 16), "maxRotVelDir");
  *(v18 + 29) = 0;
  *(v18 + 30) = -5120;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 4;
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
    v16 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v16)
  {
    *(v18 + 160) = (*(v20 + 8))(v16, v20);
  }

  *(v18 + 64) = sub_1AF595F04;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v49 + 40) = v18;
  v21 = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5AA3A4;
  v23[5] = v22;
  v23[2] = sub_1AF5A9DE4;
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
  strcpy((v24 + 16), "upVectorIndex");
  *(v24 + 30) = -4864;
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

  *(v24 + 64) = sub_1AF5A9890;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  v26 = swift_allocObject();
  v26[4] = sub_1AF5AA1B0;
  v26[5] = v21;
  v26[2] = sub_1AF5A9DE8;
  v26[3] = v21;
  v26[6] = v21;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x726F746365567075;
  *(v27 + 24) = 0xE800000000000000;
  *(v27 + 32) = v21;
  *(v27 + 40) = &type metadata for FlockingLocalAxis;
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
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v9)
  {
    *(v27 + 160) = (*(v28 + 8))(v9, v28);
  }

  *(v27 + 64) = sub_1AF5A9894;
  *(v27 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = v24;
  *(v49 + 48) = v27;
  v29 = swift_getKeyPath();
  sub_1AF57AAE8();
  v30 = swift_allocObject();
  v30[4] = sub_1AF595F44;
  v30[5] = v29;
  v30[2] = sub_1AF595F5C;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 104) = 0;
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 216) = 0;
  v32 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v34 = v33;
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0x7441746E696F70;
  *(v31 + 24) = 0xE700000000000000;
  *(v31 + 32) = v29;
  *(v31 + 40) = v33;
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
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  v35 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v35 && v34)
  {
    v34 = (*(v35 + 8))(v34, v35);
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v34)
  {
    *(v31 + 160) = (*(v36 + 8))(v34, v36);
  }

  v37 = *(v31 + 64);
  *(v31 + 64) = sub_1AF595FC0;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(v37);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;

  *(v49 + 56) = v31;
  v38 = swift_getKeyPath();
  v39 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v40 = swift_allocObject();
  v40[4] = sub_1AF596004;
  v40[5] = v38;
  v40[2] = sub_1AF596030;
  v40[3] = v38;
  v40[6] = v38;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  strcpy((v41 + 16), "reduceFlipping");
  *(v41 + 31) = -18;
  *(v41 + 32) = v38;
  *(v41 + 40) = v39;
  *(v41 + 48) = 32;
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
  v42 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v42)
  {
    v39 = (*(v42 + 8))();
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v39)
  {
    *(v41 + 160) = (*(v43 + 8))(v39, v43);
  }

  *(v41 + 64) = sub_1AF59608C;
  *(v41 + 72) = v38;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v49 + 64) = v41;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AF5A94BC;
  v45[5] = v44;
  v45[2] = sub_1AF5A9DEC;
  v45[3] = v44;
  v45[6] = v44;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  strcpy((v46 + 16), "maxRotVelUpVec");
  *(v46 + 31) = -18;
  *(v46 + 32) = v44;
  *(v46 + 40) = v32;
  *(v46 + 48) = 36;
  *(v46 + 56) = 0;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 0;
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
  if (v19)
  {
    v32 = (*(v19 + 8))();
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v32)
  {
    *(v46 + 160) = (*(v47 + 8))(v32, v47);
  }

  *(v46 + 64) = sub_1AF5A9898;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(0);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;
  *(v49 + 72) = v46;
  qword_1EB6C2F78 = v49;
  return result;
}

uint64_t sub_1AF4E6F04(uint64_t result)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1AF4E6FCC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5962EC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF596320;
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
  *(v4 + 16) = 0x636E65756C666E69;
  *(v4 + 24) = 0xE900000000000065;
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

  *(v4 + 64) = sub_1AF59637C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF57AAE8();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5963BC;
  v9[5] = v8;
  v9[2] = sub_1AF5963D4;
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
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x726F4E656E616C70;
  *(v10 + 24) = 0xEB000000006C616DLL;
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
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
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
  *(v10 + 64) = sub_1AF596438;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C2F80 = v0;
  return result;
}

uint64_t sub_1AF4E7528()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59657C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5965C0;
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
  *(v4 + 16) = 0x6854726564726F62;
  *(v4 + 24) = 0xEF7373656E6B6369;
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

  *(v4 + 64) = sub_1AF59661C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF57AAE8();
  v8 = swift_allocObject();
  v8[4] = sub_1AF59665C;
  v8[5] = v7;
  v8[2] = sub_1AF596684;
  v8[3] = v7;
  v8[6] = v7;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v11 = v10;
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x3172656E726F63;
  *(v9 + 24) = 0xE700000000000000;
  *(v9 + 32) = v7;
  *(v9 + 40) = v10;
  *(v9 + 48) = 16;
  *(v9 + 56) = 0;
  *(v9 + 58) = 0;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 96) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  swift_retain_n();
  v14 = v11;
  if (v13)
  {
    v14 = (*(v12 + 8))(v13, v12);
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v9 + 160) = (*(v15 + 8))(v14, v15);
  }

  v16 = *(v9 + 64);
  *(v9 + 64) = sub_1AF5966E8;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(v16);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;

  *(v0 + 40) = v9;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5A98A4;
  v18[5] = v17;
  v18[2] = sub_1AF5A9E00;
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
  *(v19 + 16) = 0x3272656E726F63;
  *(v19 + 24) = 0xE700000000000000;
  *(v19 + 32) = v17;
  *(v19 + 40) = v11;
  *(v19 + 48) = 32;
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
  if (v13)
  {
    v11 = (*(v12 + 8))(v13, v12);
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v11)
  {
    *(v19 + 160) = (*(v20 + 8))(v11, v20);
  }

  v21 = *(v19 + 64);
  *(v19 + 64) = sub_1AF5A98A8;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(v21);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v0 + 48) = v19;
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF59672C;
  v24[5] = v22;
  v24[2] = sub_1AF596768;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x61657241776F6873;
  *(v25 + 24) = 0xE800000000000000;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 48;
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
  v26 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v26)
  {
    v23 = (*(v26 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v23)
  {
    *(v25 + 160) = (*(v27 + 8))(v23, v27);
  }

  *(v25 + 64) = sub_1AF5967C4;
  *(v25 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  qword_1EB6C2F88 = v0;
  return result;
}

uint64_t sub_1AF4E7E50()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF596964;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5969A8;
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
  *(v4 + 16) = 0x636E65756C666E69;
  *(v4 + 24) = 0xE900000000000065;
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

  *(v4 + 64) = sub_1AF596A04;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF57AAE8();
  v9 = swift_allocObject();
  v9[4] = sub_1AF596A44;
  v9[5] = v8;
  v9[2] = sub_1AF596A6C;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6E6543656E616C70;
  *(v10 + 24) = 0xEB00000000726574;
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
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  swift_retain_n();
  v15 = v12;
  if (v14)
  {
    v15 = (*(v13 + 8))(v14, v13);
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v10 + 160) = (*(v16 + 8))(v15, v16);
  }

  v17 = *(v10 + 64);
  *(v10 + 64) = sub_1AF596AD0;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v17);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A98AC;
  v19[5] = v18;
  v19[2] = sub_1AF5A9E0C;
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
  *(v20 + 16) = 0x726F4E656E616C70;
  *(v20 + 24) = 0xEB000000006C616DLL;
  *(v20 + 32) = v18;
  *(v20 + 40) = v12;
  *(v20 + 48) = 32;
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
  if (v14)
  {
    v12 = (*(v13 + 8))(v14, v13);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v12)
  {
    *(v20 + 160) = (*(v21 + 8))(v12, v21);
  }

  v22 = *(v20 + 64);
  *(v20 + 64) = sub_1AF5A98B0;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(v22);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  *(v0 + 48) = v20;
  v23 = swift_getKeyPath();
  v24 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v25 = swift_allocObject();
  v25[4] = sub_1AF596B14;
  v25[5] = v23;
  v25[2] = sub_1AF596B50;
  v25[3] = v23;
  v25[6] = v23;
  v26 = swift_allocObject();
  *(v26 + 112) = 1;
  *(v26 + 128) = 0;
  *(v26 + 136) = 0;
  *(v26 + 120) = 0;
  *(v26 + 160) = MEMORY[0x1E69E7CC0];
  *(v26 + 168) = 0;
  *(v26 + 216) = 0;
  *(v26 + 176) = 0;
  *(v26 + 16) = 0x6E616C50776F6873;
  *(v26 + 24) = 0xE900000000000065;
  *(v26 + 32) = v23;
  *(v26 + 40) = v24;
  *(v26 + 48) = 48;
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
  v27 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v27)
  {
    v24 = (*(v27 + 8))();
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v24)
  {
    *(v26 + 160) = (*(v28 + 8))(v24, v28);
  }

  *(v26 + 64) = sub_1AF596BAC;
  *(v26 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;
  *(v0 + 56) = v26;
  qword_1EB6C2F90 = v0;
  return result;
}

uint64_t sub_1AF4E8778()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v1 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF596D4C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF596D80;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 112) = 1;
  *(v3 + 136) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 160) = v4;
  *(v3 + 168) = 0;
  *(v3 + 216) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x636E65756C666E69;
  *(v3 + 24) = 0xE900000000000065;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v1;
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
  *(v3 + 104) = 0;
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
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v1;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v3 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v3 + 64) = sub_1AF596DDC;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v39 + 32) = v3;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94CC;
  v9[5] = v8;
  v9[2] = sub_1AF5A9E18;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = v4;
  *(v10 + 168) = 0;
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x737569646172;
  *(v10 + 24) = 0xE600000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v1;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 0;
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
    v11 = v1;
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v11)
  {
    *(v10 + 160) = (*(v12 + 8))(v11, v12);
  }

  *(v10 + 64) = sub_1AF5A98B4;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v39 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A94CC;
  v14[5] = v13;
  v14[2] = sub_1AF5A9E18;
  v14[3] = v13;
  v14[6] = v13;
  v15 = swift_allocObject();
  *(v15 + 112) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 120) = 0;
  *(v15 + 160) = v4;
  *(v15 + 168) = 0;
  *(v15 + 216) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x65636E6174736964;
  *(v15 + 24) = 0xEF66666F6C6C6146;
  *(v15 + 32) = v13;
  *(v15 + 40) = v1;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
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
    v16 = v1;
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v16)
  {
    *(v15 + 160) = (*(v17 + 8))(v16, v17);
  }

  *(v15 + 64) = sub_1AF5A98B4;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v39 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A94CC;
  v19[5] = v18;
  v19[2] = sub_1AF5A9E18;
  v19[3] = v18;
  v19[6] = v18;
  v20 = swift_allocObject();
  *(v20 + 112) = 1;
  *(v20 + 128) = 0;
  *(v20 + 136) = 0;
  *(v20 + 120) = 0;
  *(v20 + 160) = v4;
  *(v20 + 168) = 0;
  *(v20 + 216) = 0;
  *(v20 + 176) = 0;
  *(v20 + 16) = 0x6C676E4177656976;
  *(v20 + 24) = 0xE900000000000065;
  *(v20 + 32) = v18;
  *(v20 + 40) = v1;
  *(v20 + 48) = 12;
  *(v20 + 56) = 0;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 0;
  *(v20 + 192) = 1135869952;
  *(v20 + 196) = 0;
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
    v21 = v1;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v20 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v20 + 64) = sub_1AF5A98B4;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v39 + 56) = v20;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A94CC;
  v24[5] = v23;
  v24[2] = sub_1AF5A9E18;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = v4;
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0xD000000000000010;
  *(v25 + 24) = 0x80000001AFF241B0;
  *(v25 + 32) = v23;
  *(v25 + 40) = v1;
  *(v25 + 48) = 16;
  *(v25 + 56) = 0;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1127481344;
  *(v25 + 196) = 0;
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
    v26 = v1;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AF5A98B4;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v39 + 64) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A94CC;
  v29[5] = v28;
  v29[2] = sub_1AF5A9E18;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = v4;
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0x6556746F5278616DLL;
  *(v30 + 24) = 0xE90000000000006CLL;
  *(v30 + 32) = v28;
  *(v30 + 40) = v1;
  *(v30 + 48) = 20;
  *(v30 + 56) = 0;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 0;
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
    v1 = (*(v5 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v1)
  {
    *(v30 + 160) = (*(v31 + 8))(v1, v31);
  }

  *(v30 + 64) = sub_1AF5A98B4;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v39 + 72) = v30;
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF596E1C;
  v34[5] = v32;
  v34[2] = sub_1AF596E48;
  v34[3] = v32;
  v34[6] = v32;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = v4;
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x61657241776F6873;
  *(v35 + 24) = 0xE800000000000000;
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
    v33 = (*(v36 + 8))();
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v33)
  {
    *(v35 + 160) = (*(v37 + 8))(v33, v37);
  }

  *(v35 + 64) = sub_1AF596EA4;
  *(v35 + 72) = v32;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v39 + 80) = v35;
  qword_1EB6C2F98 = v39;
  return result;
}

uint64_t sub_1AF4E9540()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55110;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF596FA4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF596FD8;
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
  *(v4 + 16) = 0x636E65756C666E69;
  *(v4 + 24) = 0xE900000000000065;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 8;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1065353216;
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
  *(v4 + 64) = sub_1AF597034;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94D0;
  v10[5] = v9;
  v10[2] = sub_1AF5A9E20;
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
  strcpy((v11 + 16), "viewDistance");
  *(v11 + 29) = 0;
  *(v11 + 30) = -5120;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 12;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
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
  *(v11 + 64) = sub_1AF5A98B8;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(v14);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AF5A94D0;
  v16[5] = v15;
  v16[2] = sub_1AF5A9E20;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 210) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x6C676E4177656976;
  *(v17 + 24) = 0xE900000000000065;
  *(v17 + 32) = v15;
  *(v17 + 40) = v2;
  *(v17 + 48) = 16;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
  *(v17 + 192) = 1135869952;
  *(v17 + 196) = 0;
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
  if (v19 && v18)
  {
    *(v17 + 160) = (*(v19 + 8))(v18, v19);
  }

  v20 = *(v17 + 64);
  *(v17 + 64) = sub_1AF5A98B8;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(v20);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;

  *(v0 + 48) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A94D0;
  v22[5] = v21;
  v22[2] = sub_1AF5A9E20;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 210) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0xD000000000000010;
  *(v23 + 24) = 0x80000001AFF241B0;
  *(v23 + 32) = v21;
  *(v23 + 40) = v2;
  *(v23 + 48) = 20;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
  *(v23 + 192) = 1127481344;
  *(v23 + 196) = 0;
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
    v2 = (*(v5 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v2)
  {
    *(v23 + 160) = (*(v24 + 8))(v2, v24);
  }

  v25 = *(v23 + 64);
  *(v23 + 64) = sub_1AF5A98B8;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(v25);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;

  *(v0 + 56) = v23;
  v26 = swift_getKeyPath();
  v27 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF597074;
  v28[5] = v26;
  v28[2] = sub_1AF5970A8;
  v28[3] = v26;
  v28[6] = v26;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 210) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0xD000000000000010;
  *(v29 + 24) = 0x80000001AFF241D0;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  *(v29 + 48) = 24;
  *(v29 + 56) = 0;
  *(v29 + 58) = 0;
  *(v29 + 184) = 0x40000000;
  *(v29 + 188) = 0;
  *(v29 + 192) = 1098907648;
  *(v29 + 196) = 0;
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
    v27 = (*(v30 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v27)
  {
    *(v29 + 160) = (*(v31 + 8))(v27, v31);
  }

  v32 = *(v29 + 64);
  *(v29 + 64) = sub_1AF597104;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(v32);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;

  *(v0 + 64) = v29;
  v33 = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v35 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v36 = swift_allocObject();
  v36[4] = sub_1AF5AA3A8;
  v36[5] = v34;
  v36[2] = sub_1AF597144;
  v36[3] = v34;
  v36[6] = v34;
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
  strcpy((v37 + 16), "sizeModeIndex");
  *(v37 + 30) = -4864;
  *(v37 + 32) = v34;
  *(v37 + 40) = v35;
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
  v38 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v38)
  {
    v35 = (*(v38 + 8))();
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v35)
  {
    *(v37 + 160) = (*(v39 + 8))(v35, v39);
  }

  v40 = *(v37 + 64);
  *(v37 + 64) = sub_1AF5971A0;
  *(v37 + 72) = v34;
  sub_1AF0FB8EC(v40);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;

  v41 = &type metadata for FlockingSizeMode;
  sub_1AF5A9240(0, &qword_1EB63B0D0, &type metadata for FlockingSizeMode, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF5971E0;
  v42[5] = v33;
  v42[2] = sub_1AF59720C;
  v42[3] = v33;
  v42[6] = v33;
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
  *(v43 + 16) = 0x65646F4D657A6973;
  *(v43 + 24) = 0xE800000000000000;
  *(v43 + 32) = v33;
  *(v43 + 40) = &type metadata for FlockingSizeMode;
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
  *(v43 + 64) = sub_1AF597268;
  *(v43 + 72) = v33;
  sub_1AF0FB8EC(v46);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = v37;

  v113 = v0;
  *(v0 + 72) = v43;
  v47 = swift_getKeyPath();
  sub_1AF5795B0();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1AFE431C0;
  *(v48 + 32) = 0;
  *(v48 + 40) = 0xE000000000000000;
  v49 = MEMORY[0x1E69E6448];
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v51 = v50;
  *(v48 + 72) = v50;
  v52 = swift_allocObject();
  *(v48 + 48) = v52;
  *(v52 + 16) = xmmword_1AFE208C0;
  sub_1AF51B13C(0, &qword_1EB63B0D8, sub_1AF5972FC, type metadata accessor for EntityGetSet);
  v53 = swift_allocObject();
  v53[4] = sub_1AF5972A8;
  v53[5] = v47;
  v53[2] = sub_1AF5972C0;
  v53[3] = v47;
  v53[6] = v47;
  v54 = swift_allocObject();
  *(v54 + 104) = 0;
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = MEMORY[0x1E69E7CC0];
  *(v54 + 210) = 0;
  *(v54 + 216) = 0;
  sub_1AF5972FC();
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 0xD000000000000010;
  *(v54 + 24) = 0x80000001AFF241F0;
  *(v54 + 32) = v47;
  *(v54 + 40) = v55;
  *(v54 + 48) = 48;
  *(v54 + 56) = 0;
  *(v54 + 58) = 0;
  *(v54 + 184) = 0;
  *(v54 + 188) = 0;
  *(v54 + 192) = 0;
  *(v54 + 196) = 1;
  *(v54 + 200) = 0x1000100000000;
  *(v54 + 208) = 1;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  *(v54 + 96) = 0;
  *(v54 + 144) = xmmword_1AFE22A20;
  *(v54 + 80) = v53;
  *(v54 + 88) = &off_1F2535378;
  *(v54 + 210) = 0;
  v56 = *(v48 + 16);
  swift_retain_n();
  if (v56)
  {
    v57 = v113;
  }

  else
  {

    v58 = swift_conformsToProtocol2();
    v57 = v113;
    if (!v58 || !v51)
    {
      goto LABEL_45;
    }

    v48 = (*(v58 + 8))(v51, v58);
  }

  *(v54 + 160) = v48;

LABEL_45:
  v59 = *(v54 + 64);
  *(v54 + 64) = sub_1AF59738C;
  *(v54 + 72) = v47;
  sub_1AF0FB8EC(v59);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;

  v57[10] = v54;
  v60 = swift_getKeyPath();
  v61 = swift_allocObject();
  v61[4] = sub_1AF5A94D0;
  v61[5] = v60;
  v61[2] = sub_1AF5A9E20;
  v61[3] = v60;
  v61[6] = v60;
  v62 = swift_allocObject();
  *(v62 + 112) = 1;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 120) = 0;
  *(v62 + 168) = 0;
  *(v62 + 160) = MEMORY[0x1E69E7CC0];
  *(v62 + 210) = 0;
  *(v62 + 216) = 0;
  *(v62 + 176) = 0;
  *(v62 + 16) = 0x756C6F56646E696DLL;
  *(v62 + 24) = 0xEF6F69746152656DLL;
  *(v62 + 32) = v60;
  *(v62 + 40) = v49;
  *(v62 + 48) = 68;
  *(v62 + 56) = 0;
  *(v62 + 58) = 0;
  *(v62 + 184) = 0;
  *(v62 + 188) = 0;
  *(v62 + 192) = 1065353216;
  *(v62 + 196) = 0;
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
  if (v5)
  {
    v63 = (*(v5 + 8))();
  }

  else
  {
    v63 = v49;
  }

  v64 = swift_conformsToProtocol2();
  if (v64 && v63)
  {
    *(v62 + 160) = (*(v64 + 8))(v63, v64);
  }

  v65 = *(v62 + 64);
  *(v62 + 64) = sub_1AF5A98B8;
  *(v62 + 72) = v60;
  sub_1AF0FB8EC(v65);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 216) = 0;

  v57[11] = v62;
  v66 = swift_getKeyPath();
  v67 = swift_allocObject();
  v67[4] = sub_1AF5A94D0;
  v67[5] = v66;
  v67[2] = sub_1AF5A9E20;
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
  *(v68 + 16) = 0x4464657269736564;
  *(v68 + 24) = 0xEF65636E61747369;
  *(v68 + 32) = v66;
  *(v68 + 40) = v49;
  *(v68 + 48) = 72;
  *(v68 + 56) = 0;
  *(v68 + 58) = 0;
  *(v68 + 184) = 0;
  *(v68 + 188) = 0;
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
  if (v5)
  {
    v69 = (*(v5 + 8))();
  }

  else
  {
    v69 = v49;
  }

  v70 = swift_conformsToProtocol2();
  if (v70 && v69)
  {
    *(v68 + 160) = (*(v70 + 8))(v69, v70);
  }

  v71 = *(v68 + 64);
  *(v68 + 64) = sub_1AF5A98B8;
  *(v68 + 72) = v66;
  sub_1AF0FB8EC(v71);
  *(v68 + 168) = 0;
  *(v68 + 176) = 0;

  *(v68 + 216) = 0;

  v57[12] = v68;
  v72 = swift_getKeyPath();
  v73 = swift_allocObject();
  v73[4] = sub_1AF5A94D0;
  v73[5] = v72;
  v73[2] = sub_1AF5A9E20;
  v73[3] = v72;
  v73[6] = v72;
  v74 = swift_allocObject();
  *(v74 + 112) = 1;
  *(v74 + 128) = 0;
  *(v74 + 136) = 0;
  *(v74 + 120) = 0;
  *(v74 + 160) = MEMORY[0x1E69E7CC0];
  *(v74 + 168) = 0;
  *(v74 + 216) = 0;
  *(v74 + 176) = 0;
  *(v74 + 16) = 0xD000000000000012;
  *(v74 + 24) = 0x80000001AFF24230;
  *(v74 + 32) = v72;
  *(v74 + 40) = v49;
  *(v74 + 48) = 76;
  *(v74 + 56) = 0;
  *(v74 + 58) = 0;
  *(v74 + 184) = 0;
  *(v74 + 188) = 0;
  *(v74 + 192) = 0;
  *(v74 + 196) = 1;
  *(v74 + 200) = 0x1000100000000;
  *(v74 + 208) = 1;
  *(v74 + 64) = 0;
  *(v74 + 72) = 0;
  *(v74 + 96) = 0;
  *(v74 + 104) = 0;
  *(v74 + 144) = xmmword_1AFE22A20;
  *(v74 + 80) = v73;
  *(v74 + 88) = &off_1F2535378;
  *(v74 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v75 = (*(v5 + 8))();
  }

  else
  {
    v75 = v49;
  }

  v76 = swift_conformsToProtocol2();
  if (v76 && v75)
  {
    *(v74 + 160) = (*(v76 + 8))(v75, v76);
  }

  *(v74 + 64) = sub_1AF5A98B8;
  *(v74 + 72) = v72;
  sub_1AF0FB8EC(0);
  *(v74 + 168) = 0;
  *(v74 + 176) = 0;

  *(v74 + 216) = 0;
  v57[13] = v74;
  v77 = swift_getKeyPath();
  v78 = swift_allocObject();
  v78[4] = sub_1AF5A94D0;
  v78[5] = v77;
  v78[2] = sub_1AF5A9E20;
  v78[3] = v77;
  v78[6] = v77;
  v79 = swift_allocObject();
  *(v79 + 112) = 1;
  *(v79 + 128) = 0;
  *(v79 + 136) = 0;
  *(v79 + 120) = 0;
  *(v79 + 160) = MEMORY[0x1E69E7CC0];
  *(v79 + 168) = 0;
  *(v79 + 216) = 0;
  *(v79 + 176) = 0;
  *(v79 + 16) = 0xD000000000000011;
  *(v79 + 24) = 0x80000001AFF24250;
  *(v79 + 32) = v77;
  *(v79 + 40) = v49;
  *(v79 + 48) = 80;
  *(v79 + 56) = 0;
  *(v79 + 58) = 0;
  *(v79 + 184) = 0;
  *(v79 + 188) = 0;
  *(v79 + 192) = 0;
  *(v79 + 196) = 1;
  *(v79 + 200) = 0x1000100000000;
  *(v79 + 208) = 1;
  *(v79 + 64) = 0;
  *(v79 + 72) = 0;
  *(v79 + 96) = 0;
  *(v79 + 104) = 0;
  *(v79 + 144) = xmmword_1AFE22A20;
  *(v79 + 80) = v78;
  *(v79 + 88) = &off_1F2535378;
  *(v79 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v80 = (*(v5 + 8))();
  }

  else
  {
    v80 = v49;
  }

  v81 = swift_conformsToProtocol2();
  if (v81 && v80)
  {
    *(v79 + 160) = (*(v81 + 8))(v80, v81);
  }

  *(v79 + 64) = sub_1AF5A98B8;
  *(v79 + 72) = v77;
  sub_1AF0FB8EC(0);
  *(v79 + 168) = 0;
  *(v79 + 176) = 0;

  *(v79 + 216) = 0;
  v57[14] = v79;
  v82 = swift_getKeyPath();
  v83 = swift_allocObject();
  v83[4] = sub_1AF5A94D0;
  v83[5] = v82;
  v83[2] = sub_1AF5A9E20;
  v83[3] = v82;
  v83[6] = v82;
  v84 = swift_allocObject();
  *(v84 + 112) = 1;
  *(v84 + 128) = 0;
  *(v84 + 136) = 0;
  *(v84 + 120) = 0;
  *(v84 + 160) = MEMORY[0x1E69E7CC0];
  *(v84 + 168) = 0;
  *(v84 + 216) = 0;
  *(v84 + 176) = 0;
  *(v84 + 16) = 0xD000000000000010;
  *(v84 + 24) = 0x80000001AFF24270;
  *(v84 + 32) = v82;
  *(v84 + 40) = v49;
  *(v84 + 48) = 84;
  *(v84 + 56) = 0;
  *(v84 + 58) = 0;
  *(v84 + 184) = 0;
  *(v84 + 188) = 0;
  *(v84 + 192) = 0;
  *(v84 + 196) = 1;
  *(v84 + 200) = 0x1000100000000;
  *(v84 + 208) = 1;
  *(v84 + 64) = 0;
  *(v84 + 72) = 0;
  *(v84 + 96) = 0;
  *(v84 + 104) = 0;
  *(v84 + 144) = xmmword_1AFE22A20;
  *(v84 + 80) = v83;
  *(v84 + 88) = &off_1F2535378;
  *(v84 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v85 = (*(v5 + 8))();
  }

  else
  {
    v85 = v49;
  }

  v86 = swift_conformsToProtocol2();
  if (v86 && v85)
  {
    *(v84 + 160) = (*(v86 + 8))(v85, v86);
  }

  *(v84 + 64) = sub_1AF5A98B8;
  *(v84 + 72) = v82;
  sub_1AF0FB8EC(0);
  *(v84 + 168) = 0;
  *(v84 + 176) = 0;

  *(v84 + 216) = 0;
  v57[15] = v84;
  v87 = swift_getKeyPath();
  v88 = swift_allocObject();
  v88[4] = sub_1AF5A94D0;
  v88[5] = v87;
  v88[2] = sub_1AF5A9E20;
  v88[3] = v87;
  v88[6] = v87;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 168) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  *(v89 + 16) = 0xD000000000000011;
  *(v89 + 24) = 0x80000001AFF24290;
  *(v89 + 32) = v87;
  *(v89 + 40) = v49;
  *(v89 + 48) = 88;
  *(v89 + 56) = 0;
  *(v89 + 58) = 0;
  *(v89 + 184) = 0;
  *(v89 + 188) = 0;
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
  swift_retain_n();
  if (v5)
  {
    v90 = (*(v5 + 8))();
  }

  else
  {
    v90 = v49;
  }

  v91 = swift_conformsToProtocol2();
  if (v91 && v90)
  {
    *(v89 + 160) = (*(v91 + 8))(v90, v91);
  }

  *(v89 + 64) = sub_1AF5A98B8;
  *(v89 + 72) = v87;
  sub_1AF0FB8EC(0);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = 0;
  v57[16] = v89;
  v92 = swift_getKeyPath();
  v93 = swift_allocObject();
  v93[4] = sub_1AF5A94D0;
  v93[5] = v92;
  v93[2] = sub_1AF5A9E20;
  v93[3] = v92;
  v93[6] = v92;
  v94 = swift_allocObject();
  *(v94 + 112) = 1;
  *(v94 + 128) = 0;
  *(v94 + 136) = 0;
  *(v94 + 120) = 0;
  *(v94 + 160) = MEMORY[0x1E69E7CC0];
  *(v94 + 168) = 0;
  *(v94 + 216) = 0;
  *(v94 + 176) = 0;
  *(v94 + 16) = 0xD000000000000012;
  *(v94 + 24) = 0x80000001AFF242B0;
  *(v94 + 32) = v92;
  *(v94 + 40) = v49;
  *(v94 + 48) = 92;
  *(v94 + 56) = 0;
  *(v94 + 58) = 0;
  *(v94 + 184) = 981668463;
  *(v94 + 188) = 0;
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
  if (v5)
  {
    v49 = (*(v5 + 8))();
  }

  v95 = swift_conformsToProtocol2();
  if (v95 && v49)
  {
    *(v94 + 160) = (*(v95 + 8))(v49, v95);
  }

  *(v94 + 64) = sub_1AF5A98B8;
  *(v94 + 72) = v92;
  sub_1AF0FB8EC(0);
  *(v94 + 168) = 0;
  *(v94 + 176) = 0;

  *(v94 + 216) = 0;
  v57[17] = v94;
  v96 = swift_getKeyPath();
  v97 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v98 = swift_allocObject();
  v98[4] = sub_1AF5973D8;
  v98[5] = v96;
  v98[2] = sub_1AF597404;
  v98[3] = v96;
  v98[6] = v96;
  v99 = swift_allocObject();
  *(v99 + 112) = 1;
  *(v99 + 128) = 0;
  *(v99 + 136) = 0;
  *(v99 + 120) = 0;
  *(v99 + 160) = MEMORY[0x1E69E7CC0];
  *(v99 + 168) = 0;
  *(v99 + 176) = 0;
  *(v99 + 216) = 0;
  *(v99 + 16) = 0x64697247776F6873;
  *(v99 + 24) = 0xE800000000000000;
  *(v99 + 32) = v96;
  *(v99 + 40) = v97;
  *(v99 + 48) = 96;
  *(v99 + 56) = 0;
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
  v100 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v100)
  {
    v101 = (*(v100 + 8))();
  }

  else
  {
    v101 = v97;
  }

  v102 = swift_conformsToProtocol2();
  if (v102 && v101)
  {
    *(v99 + 160) = (*(v102 + 8))(v101, v102);
  }

  *(v99 + 64) = sub_1AF597460;
  *(v99 + 72) = v96;
  sub_1AF0FB8EC(0);
  *(v99 + 168) = 0;
  *(v99 + 176) = 0;

  *(v99 + 216) = 0;
  v57[18] = v99;
  v103 = swift_getKeyPath();
  v104 = swift_allocObject();
  v104[4] = sub_1AF5AA1C4;
  v104[5] = v103;
  v104[2] = sub_1AF5A9E24;
  v104[3] = v103;
  v104[6] = v103;
  v105 = swift_allocObject();
  *(v105 + 112) = 1;
  *(v105 + 128) = 0;
  *(v105 + 136) = 0;
  *(v105 + 120) = 0;
  *(v105 + 160) = MEMORY[0x1E69E7CC0];
  *(v105 + 168) = 0;
  *(v105 + 176) = 0;
  *(v105 + 216) = 0;
  *(v105 + 16) = 0x6C6C6543776F6873;
  *(v105 + 24) = 0xE900000000000073;
  *(v105 + 32) = v103;
  *(v105 + 40) = v97;
  *(v105 + 48) = 97;
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
  if (v100)
  {
    v106 = (*(v100 + 8))();
  }

  else
  {
    v106 = v97;
  }

  v107 = swift_conformsToProtocol2();
  if (v107 && v106)
  {
    *(v105 + 160) = (*(v107 + 8))(v106, v107);
  }

  *(v105 + 64) = sub_1AF5A98BC;
  *(v105 + 72) = v103;
  sub_1AF0FB8EC(0);
  *(v105 + 168) = 0;
  *(v105 + 176) = 0;

  *(v105 + 216) = 0;
  v57[19] = v105;
  v108 = swift_getKeyPath();
  v109 = swift_allocObject();
  v109[4] = sub_1AF5AA1C4;
  v109[5] = v108;
  v109[2] = sub_1AF5A9E24;
  v109[3] = v108;
  v109[6] = v108;
  v110 = swift_allocObject();
  *(v110 + 112) = 1;
  *(v110 + 128) = 0;
  *(v110 + 136) = 0;
  *(v110 + 120) = 0;
  *(v110 + 160) = MEMORY[0x1E69E7CC0];
  *(v110 + 168) = 0;
  *(v110 + 176) = 0;
  *(v110 + 216) = 0;
  *(v110 + 16) = 0x6F666E49676F6CLL;
  *(v110 + 24) = 0xE700000000000000;
  *(v110 + 32) = v108;
  *(v110 + 40) = v97;
  *(v110 + 48) = 98;
  *(v110 + 56) = 0;
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
  if (v100)
  {
    v97 = (*(v100 + 8))();
  }

  v111 = swift_conformsToProtocol2();
  if (v111 && v97)
  {
    *(v110 + 160) = (*(v111 + 8))(v97, v111);
  }

  *(v110 + 64) = sub_1AF5A98BC;
  *(v110 + 72) = v108;
  sub_1AF0FB8EC(0);
  *(v110 + 168) = 0;
  *(v110 + 176) = 0;

  *(v110 + 216) = 0;
  *(v113 + 160) = v110;
  qword_1EB6C2FA0 = v113;
  return result;
}

uint64_t sub_1AF4EB750(uint64_t result)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1AF4EB784()
{
  if (qword_1EB636F90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4EB874()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5977E8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59781C;
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
  *(v4 + 24) = 0x80000001AFF245A0;
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

  *(v4 + 64) = sub_1AF597878;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94D4;
  v10[5] = v9;
  v10[2] = sub_1AF5A9E34;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  strcpy((v11 + 16), "cruisingSpeed");
  *(v11 + 30) = -4864;
  *(v11 + 32) = v9;
  *(v11 + 40) = v2;
  *(v11 + 48) = 4;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
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
    v2 = (*(v6 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v2)
  {
    *(v11 + 160) = (*(v12 + 8))(v2, v12);
  }

  *(v11 + 64) = sub_1AF5A98C4;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v13 = swift_getKeyPath();
  sub_1AF57C8C8();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5978B8;
  v14[5] = v13;
  v14[2] = sub_1AF5978EC;
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
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v18 = v17;
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;
  *(v15 + 16) = 0x657053706D616C63;
  *(v15 + 24) = 0xEA00000000006465;
  *(v15 + 32) = v13;
  *(v15 + 40) = v17;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
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
  *(v15 + 64) = sub_1AF597948;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(v21);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;

  *(v0 + 48) = v15;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A94D4;
  v23[5] = v22;
  v23[2] = sub_1AF5A9E34;
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
  *(v24 + 16) = 0x7244656C706D6973;
  *(v24 + 24) = 0xEF6563726F466761;
  *(v24 + 32) = v22;
  *(v24 + 40) = v16;
  *(v24 + 48) = 16;
  *(v24 + 56) = 0;
  *(v24 + 58) = 0;
  *(v24 + 184) = 0;
  *(v24 + 188) = 0;
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
    v25 = (*(v6 + 8))();
  }

  else
  {
    v25 = v16;
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    *(v24 + 160) = (*(v26 + 8))(v25, v26);
  }

  *(v24 + 64) = sub_1AF5A98C4;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  v28[4] = sub_1AF5A94D4;
  v28[5] = v27;
  v28[2] = sub_1AF5A9E34;
  v28[3] = v27;
  v28[6] = v27;
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
  *(v29 + 24) = 0x80000001AFF245E0;
  *(v29 + 32) = v27;
  *(v29 + 40) = v16;
  *(v29 + 48) = 20;
  *(v29 + 56) = 0;
  *(v29 + 58) = 0;
  *(v29 + 184) = 0;
  *(v29 + 188) = 0;
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
  if (v6)
  {
    v16 = (*(v6 + 8))();
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v16)
  {
    *(v29 + 160) = (*(v30 + 8))(v16, v30);
  }

  *(v29 + 64) = sub_1AF5A98C4;
  *(v29 + 72) = v27;
  sub_1AF0FB8EC(0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v0 + 64) = v29;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF5978B8;
  v34[5] = v32;
  v34[2] = sub_1AF59798C;
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
  *(v35 + 16) = 0xD000000000000017;
  *(v35 + 24) = 0x80000001AFF2AF50;
  *(v35 + 32) = v32;
  *(v35 + 40) = v33;
  *(v35 + 48) = 0;
  *(v35 + 56) = 1;
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
    v33 = (*(v36 + 8))();
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v33)
  {
    *(v35 + 160) = (*(v37 + 8))(v33, v37);
  }

  *(v35 + 64) = sub_1AF5979E8;
  *(v35 + 72) = v32;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  v38 = &type metadata for FlockingLocalAxis;
  sub_1AF5A9240(0, &qword_1EB63B040, &type metadata for FlockingLocalAxis, type metadata accessor for EntityGetSet);
  v39 = swift_allocObject();
  v39[4] = sub_1AF597A28;
  v39[5] = v31;
  v39[2] = sub_1AF597A54;
  v39[3] = v31;
  v39[6] = v31;
  v40 = swift_allocObject();
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 168) = 0;
  *(v40 + 216) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0xD000000000000012;
  *(v40 + 24) = 0x80000001AFF24600;
  *(v40 + 32) = v31;
  *(v40 + 40) = &type metadata for FlockingLocalAxis;
  *(v40 + 48) = 24;
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
  v41 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v41)
  {
    v38 = (*(v41 + 8))();
  }

  v42 = swift_conformsToProtocol2();
  if (v42 && v38)
  {
    *(v40 + 160) = (*(v42 + 8))(v38, v42);
  }

  *(v40 + 64) = sub_1AF597AB0;
  *(v40 + 72) = v31;
  sub_1AF0FB8EC(0);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = v35;
  *(v0 + 72) = v40;
  qword_1EB6C2FA8 = v0;
  return result;
}

uint64_t sub_1AF4EC65C(uint64_t result)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1AF4EC724()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551A0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF597D2C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF597D58;
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
  *(v4 + 16) = 1953066341;
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
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  v42 = v6;
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

  *(v4 + 64) = sub_1AF597DB4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0xD000000000000040;
  *(v4 + 176) = 0x80000001AFF2AF90;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AF597DF4;
  v11[5] = v9;
  v11[2] = sub_1AF597E28;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 216) = 0;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 160) = v5;
  *(v12 + 16) = 0x656372756F73;
  *(v12 + 24) = 0xE600000000000000;
  *(v12 + 32) = v9;
  *(v12 + 40) = &type metadata for Entity;
  *(v12 + 48) = 4;
  *(v12 + 56) = 0;
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
  *(v12 + 144) = xmmword_1AFE55230;
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

  *(v12 + 64) = sub_1AF597E84;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0xD0000000000000B5;
  *(v12 + 176) = 0x80000001AFF2AFE0;

  *(v12 + 216) = 0;
  *(v0 + 40) = v12;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF597EC4;
  v17[5] = v15;
  v17[2] = sub_1AF597EF8;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 16) = 0x737569646172;
  *(v18 + 24) = 0xE600000000000000;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 12;
  *(v18 + 56) = 0;
  *(v18 + 58) = 0;
  *(v18 + 184) = 1008981770;
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

  *(v18 + 64) = sub_1AF597F54;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0xD000000000000019;
  *(v18 + 176) = 0x80000001AFF2B0A0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A94D8;
  v23[5] = v22;
  v23[2] = sub_1AF5A9E44;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 160) = MEMORY[0x1E69E7CC0];
  *(v24 + 168) = 0;
  *(v24 + 16) = 0x797469736E6564;
  *(v24 + 24) = 0xE700000000000000;
  *(v24 + 32) = v22;
  *(v24 + 40) = v16;
  *(v24 + 48) = 16;
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
  swift_retain_n();
  if (v19)
  {
    v25 = (*(v19 + 8))();
  }

  else
  {
    v25 = v16;
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v25)
  {
    *(v24 + 160) = (*(v26 + 8))(v25, v26);
  }

  *(v24 + 64) = sub_1AF5A98C8;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0xD000000000000030;
  *(v24 + 176) = 0x80000001AFF2B0C0;

  *(v24 + 216) = 0;
  *(v0 + 56) = v24;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  v28[4] = sub_1AF5A94D8;
  v28[5] = v27;
  v28[2] = sub_1AF5A9E44;
  v28[3] = v27;
  v28[6] = v27;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  v30 = MEMORY[0x1E69E7CC0];
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 16) = 0x797469636F6C6576;
  *(v29 + 24) = 0xE800000000000000;
  *(v29 + 32) = v27;
  *(v29 + 40) = v16;
  *(v29 + 48) = 20;
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
  swift_retain_n();
  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v16)
  {
    *(v29 + 160) = (*(v31 + 8))(v16, v31);
  }

  *(v29 + 64) = sub_1AF5A98C8;
  *(v29 + 72) = v27;
  sub_1AF0FB8EC(0);
  *(v29 + 168) = 0xD0000000000000C6;
  *(v29 + 176) = 0x80000001AFF2B100;

  *(v29 + 216) = 0;
  *(v0 + 64) = v29;
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA1D0;
  v33[5] = v32;
  v33[2] = sub_1AF5A9E48;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 160) = v30;
  *(v34 + 16) = 0x74696D45776F6873;
  *(v34 + 24) = 0xEB00000000726574;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 24;
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
  swift_retain_n();
  if (v42)
  {
    v35 = (*(v42 + 8))();
  }

  else
  {
    v35 = v2;
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v35)
  {
    *(v34 + 160) = (*(v36 + 8))(v35, v36);
  }

  *(v34 + 64) = sub_1AF5A98CC;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(0);
  *(v34 + 168) = 0xD000000000000042;
  *(v34 + 176) = 0x80000001AFF2B1D0;

  *(v34 + 216) = 0;
  *(v0 + 72) = v34;
  v37 = swift_getKeyPath();
  v38 = swift_allocObject();
  v38[4] = sub_1AF5AA1D0;
  v38[5] = v37;
  v38[2] = sub_1AF5A9E48;
  v38[3] = v37;
  v38[6] = v37;
  v39 = swift_allocObject();
  *(v39 + 112) = 1;
  *(v39 + 128) = 0;
  *(v39 + 136) = 0;
  *(v39 + 120) = 0;
  *(v39 + 216) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;
  *(v39 + 160) = v30;
  strcpy((v39 + 16), "showVelocity");
  *(v39 + 29) = 0;
  *(v39 + 30) = -5120;
  *(v39 + 32) = v37;
  *(v39 + 40) = v2;
  *(v39 + 48) = 25;
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
  swift_retain_n();
  if (v42)
  {
    v2 = (*(v42 + 8))();
  }

  v40 = swift_conformsToProtocol2();
  if (v40 && v2)
  {
    *(v39 + 160) = (*(v40 + 8))(v2, v40);
  }

  *(v39 + 64) = sub_1AF5A98CC;
  *(v39 + 72) = v37;
  sub_1AF0FB8EC(0);
  *(v39 + 168) = 0xD000000000000021;
  *(v39 + 176) = 0x80000001AFF2B220;

  *(v39 + 216) = 0;
  *(v0 + 80) = v39;
  qword_1EB6C2FB0 = v0;
  return result;
}

uint64_t sub_1AF4ED5C8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55110;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5980B4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5980E0;
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
  *(v4 + 16) = 0x766C6F5370657473;
  *(v4 + 24) = 0xEA00000000007265;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 8;
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
  v127 = v6;
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
  *(v4 + 64) = sub_1AF59813C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v9);
  *(v4 + 168) = 0xD00000000000002ELL;
  *(v4 + 176) = 0x80000001AFF2B270;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  v11[4] = sub_1AF5AA1D4;
  v11[5] = v10;
  v11[2] = sub_1AF5A9E50;
  v11[3] = v10;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 210) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 16) = 0x6150746365766461;
  *(v12 + 24) = 0xEF73656C63697472;
  *(v12 + 32) = v10;
  *(v12 + 40) = v2;
  *(v12 + 48) = 9;
  *(v12 + 56) = 0;
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
  swift_retain_n();
  if (v6)
  {
    v13 = (*(v6 + 8))();
  }

  else
  {
    v13 = v2;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v12 + 160) = (*(v14 + 8))(v13, v14);
  }

  v15 = *(v12 + 64);
  *(v12 + 64) = sub_1AF5A98D0;
  *(v12 + 72) = v10;
  sub_1AF0FB8EC(v15);
  *(v12 + 168) = 0xD00000000000005DLL;
  *(v12 + 176) = 0x80000001AFF2B2A0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  v16 = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v19 = swift_allocObject();
  v19[4] = sub_1AF59817C;
  v19[5] = v17;
  v19[2] = sub_1AF5981B0;
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
  *(v20 + 16) = 0x646E497075746573;
  *(v20 + 24) = 0xEA00000000007865;
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
  *(v20 + 64) = sub_1AF59820C;
  *(v20 + 72) = v17;
  sub_1AF0FB8EC(v24);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  v25 = &type metadata for FluidSolver2DSolverSetupType;
  sub_1AF5A9240(0, &qword_1EB63B170, &type metadata for FluidSolver2DSolverSetupType, type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF59824C;
  v26[5] = v16;
  v26[2] = sub_1AF598278;
  v26[3] = v16;
  v26[6] = v16;
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
  *(v27 + 16) = 0x7075746573;
  *(v27 + 24) = 0xE500000000000000;
  *(v27 + 32) = v16;
  *(v27 + 40) = &type metadata for FluidSolver2DSolverSetupType;
  *(v27 + 48) = 10;
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

  v30 = *(v27 + 64);
  *(v27 + 64) = sub_1AF5982D4;
  *(v27 + 72) = v16;
  sub_1AF0FB8EC(v30);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = v20;

  *(v0 + 48) = v27;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5AA3B4;
  v33[5] = v32;
  v33[2] = sub_1AF5A9E54;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 210) = 0;
  *(v34 + 216) = 0;
  *(v34 + 176) = 0;
  *(v34 + 16) = 0x6E49726564726F62;
  *(v34 + 24) = 0xEB00000000786564;
  *(v34 + 32) = v32;
  *(v34 + 40) = v18;
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
  if (v21)
  {
    v18 = (*(v21 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v18)
  {
    *(v34 + 160) = (*(v35 + 8))(v18, v35);
  }

  v36 = *(v34 + 64);
  *(v34 + 64) = sub_1AF5A98D4;
  *(v34 + 72) = v32;
  sub_1AF0FB8EC(v36);
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;

  *(v34 + 216) = 0;

  v37 = &type metadata for FluidSolver2DSolverBorderType;
  sub_1AF5A9240(0, &qword_1EB63B178, &type metadata for FluidSolver2DSolverBorderType, type metadata accessor for EntityGetSet);
  v38 = swift_allocObject();
  v38[4] = sub_1AF598314;
  v38[5] = v31;
  v38[2] = sub_1AF598340;
  v38[3] = v31;
  v38[6] = v31;
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
  *(v39 + 16) = 0x726564726F62;
  *(v39 + 24) = 0xE600000000000000;
  *(v39 + 32) = v31;
  *(v39 + 40) = &type metadata for FluidSolver2DSolverBorderType;
  *(v39 + 48) = 11;
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
  *(v39 + 64) = sub_1AF59839C;
  *(v39 + 72) = v31;
  sub_1AF0FB8EC(v42);
  *(v39 + 168) = 0;
  *(v39 + 176) = 0;

  *(v39 + 216) = v34;

  *(v0 + 56) = v39;
  v43 = swift_getKeyPath();
  v44 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v45 = swift_allocObject();
  v45[4] = sub_1AF5983DC;
  v45[5] = v43;
  v45[2] = sub_1AF598410;
  v45[3] = v43;
  v45[6] = v43;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 210) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 16) = 0x636E65756C666E69;
  *(v46 + 24) = 0xE900000000000065;
  *(v46 + 32) = v43;
  *(v46 + 40) = v44;
  *(v46 + 48) = 12;
  *(v46 + 56) = 0;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 0;
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
    v48 = (*(v47 + 8))();
  }

  else
  {
    v48 = v44;
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    *(v46 + 160) = (*(v49 + 8))(v48, v49);
  }

  v50 = *(v46 + 64);
  *(v46 + 64) = sub_1AF59846C;
  *(v46 + 72) = v43;
  sub_1AF0FB8EC(v50);
  *(v46 + 168) = 0xD00000000000004CLL;
  *(v46 + 176) = 0x80000001AFF2B300;

  *(v46 + 216) = 0;

  *(v0 + 64) = v46;
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  v52[4] = sub_1AF5A94DC;
  v52[5] = v51;
  v52[2] = sub_1AF5A9E58;
  v52[3] = v51;
  v52[6] = v51;
  v53 = swift_allocObject();
  *(v53 + 112) = 1;
  *(v53 + 128) = 0;
  *(v53 + 136) = 0;
  *(v53 + 120) = 0;
  *(v53 + 210) = 0;
  *(v53 + 216) = 0;
  *(v53 + 176) = 0;
  *(v53 + 160) = MEMORY[0x1E69E7CC0];
  *(v53 + 168) = 0;
  *(v53 + 16) = 0x70537265766C6F73;
  *(v53 + 24) = 0xEB00000000646565;
  *(v53 + 32) = v51;
  *(v53 + 40) = v44;
  *(v53 + 48) = 16;
  *(v53 + 56) = 0;
  *(v53 + 58) = 0;
  *(v53 + 184) = 0;
  *(v53 + 188) = 0;
  *(v53 + 192) = 1077936128;
  *(v53 + 196) = 0;
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
  if (v47)
  {
    v54 = (*(v47 + 8))();
  }

  else
  {
    v54 = v44;
  }

  v55 = swift_conformsToProtocol2();
  if (v55 && v54)
  {
    *(v53 + 160) = (*(v55 + 8))(v54, v55);
  }

  v56 = *(v53 + 64);
  *(v53 + 64) = sub_1AF5A98D8;
  *(v53 + 72) = v51;
  sub_1AF0FB8EC(v56);
  *(v53 + 168) = 0xD00000000000003DLL;
  *(v53 + 176) = 0x80000001AFF2B350;

  *(v53 + 216) = 0;

  *(v0 + 72) = v53;
  v57 = swift_getKeyPath();
  v58 = swift_allocObject();
  v58[4] = sub_1AF5A94DC;
  v58[5] = v57;
  v58[2] = sub_1AF5A9E58;
  v58[3] = v57;
  v58[6] = v57;
  v59 = swift_allocObject();
  *(v59 + 112) = 1;
  *(v59 + 128) = 0;
  *(v59 + 136) = 0;
  *(v59 + 120) = 0;
  *(v59 + 160) = MEMORY[0x1E69E7CC0];
  *(v59 + 168) = 0;
  *(v59 + 210) = 0;
  *(v59 + 216) = 0;
  *(v59 + 176) = 0;
  *(v59 + 16) = 0x66666F6C6C6166;
  *(v59 + 24) = 0xE700000000000000;
  *(v59 + 32) = v57;
  *(v59 + 40) = v44;
  *(v59 + 48) = 20;
  *(v59 + 56) = 0;
  *(v59 + 58) = 0;
  *(v59 + 184) = 0;
  *(v59 + 188) = 0;
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
  if (v47)
  {
    v44 = (*(v47 + 8))();
  }

  v60 = swift_conformsToProtocol2();
  if (v60 && v44)
  {
    *(v59 + 160) = (*(v60 + 8))(v44, v60);
  }

  v61 = *(v59 + 64);
  *(v59 + 64) = sub_1AF5A98D8;
  *(v59 + 72) = v57;
  sub_1AF0FB8EC(v61);
  *(v59 + 168) = 0;
  *(v59 + 176) = 0;

  *(v59 + 216) = 0;

  *(v0 + 80) = v59;
  v62 = swift_getKeyPath();
  sub_1AF57AAE8();
  v63 = swift_allocObject();
  v63[4] = sub_1AF5984AC;
  v63[5] = v62;
  v63[2] = sub_1AF5984C4;
  v63[3] = v62;
  v63[6] = v62;
  v64 = swift_allocObject();
  *(v64 + 104) = 0;
  *(v64 + 112) = 1;
  *(v64 + 128) = 0;
  *(v64 + 136) = 0;
  *(v64 + 120) = 0;
  *(v64 + 160) = MEMORY[0x1E69E7CC0];
  *(v64 + 210) = 0;
  *(v64 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  v66 = v65;
  *(v64 + 168) = 0;
  *(v64 + 176) = 0;
  *(v64 + 16) = 0x746E65747865;
  *(v64 + 24) = 0xE600000000000000;
  *(v64 + 32) = v62;
  *(v64 + 40) = v65;
  *(v64 + 48) = 32;
  *(v64 + 56) = 0;
  *(v64 + 58) = 0;
  *(v64 + 184) = 1036831949;
  *(v64 + 188) = 0;
  *(v64 + 192) = 0;
  *(v64 + 196) = 1;
  *(v64 + 200) = 0x1000100000000;
  *(v64 + 208) = 1;
  *(v64 + 64) = 0;
  *(v64 + 72) = 0;
  *(v64 + 96) = 0;
  *(v64 + 144) = xmmword_1AFE22A20;
  *(v64 + 80) = v63;
  *(v64 + 88) = &off_1F2535378;
  *(v64 + 210) = 0;
  v67 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v67 && v66)
  {
    v66 = (*(v67 + 8))(v66, v67);
  }

  v68 = swift_conformsToProtocol2();
  if (v68 && v66)
  {
    *(v64 + 160) = (*(v68 + 8))(v66, v68);
  }

  v69 = *(v64 + 64);
  *(v64 + 64) = sub_1AF598528;
  *(v64 + 72) = v62;
  sub_1AF0FB8EC(v69);
  *(v64 + 168) = 0xD000000000000021;
  *(v64 + 176) = 0x80000001AFF2B390;

  *(v64 + 216) = 0;

  *(v0 + 88) = v64;
  v70 = swift_getKeyPath();
  v71 = swift_allocObject();
  v71[4] = sub_1AF5A94DC;
  v71[5] = v70;
  v71[2] = sub_1AF5A9E58;
  v71[3] = v70;
  v71[6] = v70;
  v72 = swift_allocObject();
  *(v72 + 112) = 1;
  *(v72 + 128) = 0;
  *(v72 + 136) = 0;
  *(v72 + 120) = 0;
  *(v72 + 210) = 0;
  *(v72 + 216) = 0;
  *(v72 + 176) = 0;
  *(v72 + 160) = MEMORY[0x1E69E7CC0];
  *(v72 + 168) = 0;
  *(v72 + 16) = 0x657A69536C6C6563;
  *(v72 + 24) = 0xE800000000000000;
  *(v72 + 32) = v70;
  v73 = MEMORY[0x1E69E6448];
  *(v72 + 40) = MEMORY[0x1E69E6448];
  *(v72 + 48) = 48;
  *(v72 + 56) = 0;
  *(v72 + 58) = 0;
  *(v72 + 184) = 1028443341;
  *(v72 + 188) = 0;
  *(v72 + 192) = 0;
  *(v72 + 196) = 1;
  *(v72 + 200) = 0x1000100000000;
  *(v72 + 208) = 1;
  *(v72 + 64) = 0;
  *(v72 + 72) = 0;
  *(v72 + 96) = 0;
  *(v72 + 104) = 0;
  *(v72 + 144) = xmmword_1AFE22A20;
  *(v72 + 80) = v71;
  *(v72 + 88) = &off_1F2535378;
  *(v72 + 210) = 0;
  swift_retain_n();
  if (v47)
  {
    v74 = (*(v47 + 8))();
  }

  else
  {
    v74 = v73;
  }

  v75 = swift_conformsToProtocol2();
  if (v75 && v74)
  {
    *(v72 + 160) = (*(v75 + 8))(v74, v75);
  }

  v76 = *(v72 + 64);
  *(v72 + 64) = sub_1AF5A98D8;
  *(v72 + 72) = v70;
  sub_1AF0FB8EC(v76);
  *(v72 + 168) = 0xD000000000000054;
  *(v72 + 176) = 0x80000001AFF2B3C0;

  *(v72 + 216) = 0;

  *(v0 + 96) = v72;
  v77 = swift_getKeyPath();
  v78 = swift_allocObject();
  v78[4] = sub_1AF5A94DC;
  v78[5] = v77;
  v78[2] = sub_1AF5A9E58;
  v78[3] = v77;
  v78[6] = v77;
  v79 = swift_allocObject();
  *(v79 + 112) = 1;
  *(v79 + 128) = 0;
  *(v79 + 136) = 0;
  *(v79 + 120) = 0;
  *(v79 + 216) = 0;
  *(v79 + 176) = 0;
  *(v79 + 160) = MEMORY[0x1E69E7CC0];
  *(v79 + 168) = 0;
  *(v79 + 16) = 0x7469736F63736976;
  *(v79 + 24) = 0xE900000000000079;
  *(v79 + 32) = v77;
  v80 = MEMORY[0x1E69E6448];
  *(v79 + 40) = MEMORY[0x1E69E6448];
  *(v79 + 48) = 52;
  *(v79 + 56) = 0;
  *(v79 + 58) = 0;
  *(v79 + 184) = 0;
  *(v79 + 188) = 0;
  *(v79 + 192) = 1065353216;
  *(v79 + 196) = 0;
  *(v79 + 200) = 0x1000100000000;
  *(v79 + 208) = 1;
  *(v79 + 64) = 0;
  *(v79 + 72) = 0;
  *(v79 + 96) = 0;
  *(v79 + 104) = 0;
  *(v79 + 144) = xmmword_1AFE22A20;
  *(v79 + 80) = v78;
  *(v79 + 88) = &off_1F2535378;
  *(v79 + 210) = 0;
  swift_retain_n();
  if (v47)
  {
    v81 = (*(v47 + 8))();
  }

  else
  {
    v81 = v80;
  }

  v82 = swift_conformsToProtocol2();
  if (v82 && v81)
  {
    *(v79 + 160) = (*(v82 + 8))(v81, v82);
  }

  *(v79 + 64) = sub_1AF5A98D8;
  *(v79 + 72) = v77;
  sub_1AF0FB8EC(0);
  *(v79 + 168) = 0xD00000000000001ALL;
  *(v79 + 176) = 0x80000001AFF2B420;

  *(v79 + 216) = 0;
  *(v0 + 104) = v79;
  v83 = swift_getKeyPath();
  v84 = swift_allocObject();
  v84[4] = sub_1AF5A94DC;
  v84[5] = v83;
  v84[2] = sub_1AF5A9E58;
  v84[3] = v83;
  v84[6] = v83;
  v85 = swift_allocObject();
  *(v85 + 112) = 1;
  *(v85 + 128) = 0;
  *(v85 + 136) = 0;
  *(v85 + 120) = 0;
  *(v85 + 216) = 0;
  *(v85 + 176) = 0;
  *(v85 + 160) = MEMORY[0x1E69E7CC0];
  *(v85 + 168) = 0;
  *(v85 + 16) = 0x7469636974726F76;
  *(v85 + 24) = 0xE900000000000079;
  *(v85 + 32) = v83;
  v86 = MEMORY[0x1E69E6448];
  *(v85 + 40) = MEMORY[0x1E69E6448];
  *(v85 + 48) = 56;
  *(v85 + 56) = 0;
  *(v85 + 58) = 0;
  *(v85 + 184) = 0;
  *(v85 + 188) = 0;
  *(v85 + 192) = 1065353216;
  *(v85 + 196) = 0;
  *(v85 + 200) = 0x1000100000000;
  *(v85 + 208) = 1;
  *(v85 + 64) = 0;
  *(v85 + 72) = 0;
  *(v85 + 96) = 0;
  *(v85 + 104) = 0;
  *(v85 + 144) = xmmword_1AFE22A20;
  *(v85 + 80) = v84;
  *(v85 + 88) = &off_1F2535378;
  *(v85 + 210) = 0;
  swift_retain_n();
  if (v47)
  {
    v87 = (*(v47 + 8))();
  }

  else
  {
    v87 = v86;
  }

  v88 = swift_conformsToProtocol2();
  if (v88 && v87)
  {
    *(v85 + 160) = (*(v88 + 8))(v87, v88);
  }

  *(v85 + 64) = sub_1AF5A98D8;
  *(v85 + 72) = v83;
  sub_1AF0FB8EC(0);
  *(v85 + 168) = 0xD000000000000021;
  *(v85 + 176) = 0x80000001AFF2B440;

  *(v85 + 216) = 0;
  *(v0 + 112) = v85;
  v89 = swift_getKeyPath();
  v90 = swift_allocObject();
  v90[4] = sub_1AF5A94DC;
  v90[5] = v89;
  v90[2] = sub_1AF5A9E58;
  v90[3] = v89;
  v90[6] = v89;
  v91 = swift_allocObject();
  *(v91 + 112) = 1;
  *(v91 + 128) = 0;
  *(v91 + 136) = 0;
  *(v91 + 120) = 0;
  *(v91 + 216) = 0;
  *(v91 + 176) = 0;
  *(v91 + 160) = MEMORY[0x1E69E7CC0];
  *(v91 + 168) = 0;
  *(v91 + 16) = 0x797469636F6C6576;
  *(v91 + 24) = 0xEF676E69706D6144;
  *(v91 + 32) = v89;
  v92 = MEMORY[0x1E69E6448];
  *(v91 + 40) = MEMORY[0x1E69E6448];
  *(v91 + 48) = 60;
  *(v91 + 56) = 0;
  *(v91 + 58) = 0;
  *(v91 + 184) = 0;
  *(v91 + 188) = 0;
  *(v91 + 192) = 1065353216;
  *(v91 + 196) = 0;
  *(v91 + 200) = 0x1000100000000;
  *(v91 + 208) = 1;
  *(v91 + 64) = 0;
  *(v91 + 72) = 0;
  *(v91 + 96) = 0;
  *(v91 + 104) = 0;
  *(v91 + 144) = xmmword_1AFE22A20;
  *(v91 + 80) = v90;
  *(v91 + 88) = &off_1F2535378;
  *(v91 + 210) = 0;
  swift_retain_n();
  if (v47)
  {
    v93 = (*(v47 + 8))();
  }

  else
  {
    v93 = v92;
  }

  v94 = MEMORY[0x1E69E6370];
  v95 = swift_conformsToProtocol2();
  if (v95 && v93)
  {
    *(v91 + 160) = (*(v95 + 8))(v93, v95);
  }

  *(v91 + 64) = sub_1AF5A98D8;
  *(v91 + 72) = v89;
  sub_1AF0FB8EC(0);
  *(v91 + 168) = 0xD00000000000001CLL;
  *(v91 + 176) = 0x80000001AFF2B470;

  *(v91 + 216) = 0;
  *(v0 + 120) = v91;
  v96 = swift_getKeyPath();
  v97 = swift_allocObject();
  v97[4] = sub_1AF5AA1D4;
  v97[5] = v96;
  v97[2] = sub_1AF5A9E50;
  v97[3] = v96;
  v97[6] = v96;
  v98 = swift_allocObject();
  *(v98 + 112) = 1;
  *(v98 + 128) = 0;
  *(v98 + 136) = 0;
  *(v98 + 120) = 0;
  *(v98 + 216) = 0;
  *(v98 + 176) = 0;
  *(v98 + 160) = MEMORY[0x1E69E7CC0];
  *(v98 + 168) = 0;
  *(v98 + 16) = 0x64697247776F6873;
  *(v98 + 24) = 0xE900000000000073;
  *(v98 + 32) = v96;
  *(v98 + 40) = v94;
  *(v98 + 48) = 64;
  *(v98 + 56) = 0;
  *(v98 + 58) = 0;
  *(v98 + 184) = 0;
  *(v98 + 188) = 1;
  *(v98 + 192) = 0;
  *(v98 + 196) = 1;
  *(v98 + 200) = 0x1000100000000;
  *(v98 + 208) = 1;
  *(v98 + 64) = 0;
  *(v98 + 72) = 0;
  *(v98 + 96) = 0;
  *(v98 + 104) = 0;
  *(v98 + 144) = xmmword_1AFE22A20;
  *(v98 + 80) = v97;
  *(v98 + 88) = &off_1F2535378;
  *(v98 + 210) = 0;
  swift_retain_n();
  if (v127)
  {
    v99 = (*(v127 + 8))();
  }

  else
  {
    v99 = v94;
  }

  v100 = swift_conformsToProtocol2();
  if (v100 && v99)
  {
    *(v98 + 160) = (*(v100 + 8))(v99, v100);
  }

  *(v98 + 64) = sub_1AF5A98DC;
  *(v98 + 72) = v96;
  sub_1AF0FB8EC(0);
  *(v98 + 168) = 0xD000000000000025;
  *(v98 + 176) = 0x80000001AFF2B490;

  *(v98 + 216) = 0;
  *(v0 + 128) = v98;
  v101 = swift_getKeyPath();
  v102 = swift_allocObject();
  v102[4] = sub_1AF5AA1D4;
  v102[5] = v101;
  v102[2] = sub_1AF5A9E50;
  v102[3] = v101;
  v102[6] = v101;
  v103 = swift_allocObject();
  *(v103 + 112) = 1;
  *(v103 + 128) = 0;
  *(v103 + 136) = 0;
  *(v103 + 120) = 0;
  *(v103 + 176) = 0;
  *(v103 + 160) = MEMORY[0x1E69E7CC0];
  *(v103 + 168) = 0;
  *(v103 + 216) = 0;
  strcpy((v103 + 16), "showVelocities");
  *(v103 + 31) = -18;
  *(v103 + 32) = v101;
  *(v103 + 40) = v94;
  *(v103 + 48) = 65;
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
  swift_retain_n();
  if (v127)
  {
    v104 = (*(v127 + 8))();
  }

  else
  {
    v104 = v94;
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v104)
  {
    *(v103 + 160) = (*(v105 + 8))(v104, v105);
  }

  *(v103 + 64) = sub_1AF5A98DC;
  *(v103 + 72) = v101;
  sub_1AF0FB8EC(0);
  *(v103 + 168) = 0xD00000000000002FLL;
  *(v103 + 176) = 0x80000001AFF2B4C0;

  *(v103 + 216) = 0;
  *(v0 + 136) = v103;
  v106 = swift_getKeyPath();
  v107 = swift_allocObject();
  v107[4] = sub_1AF5AA1D4;
  v107[5] = v106;
  v107[2] = sub_1AF5A9E50;
  v107[3] = v106;
  v107[6] = v106;
  v108 = swift_allocObject();
  *(v108 + 112) = 1;
  *(v108 + 128) = 0;
  *(v108 + 136) = 0;
  *(v108 + 120) = 0;
  *(v108 + 176) = 0;
  *(v108 + 160) = MEMORY[0x1E69E7CC0];
  *(v108 + 168) = 0;
  *(v108 + 216) = 0;
  strcpy((v108 + 16), "showDensities");
  *(v108 + 30) = -4864;
  *(v108 + 32) = v106;
  *(v108 + 40) = v94;
  *(v108 + 48) = 66;
  *(v108 + 56) = 0;
  *(v108 + 58) = 0;
  *(v108 + 184) = 0;
  *(v108 + 188) = 1;
  *(v108 + 192) = 0;
  *(v108 + 196) = 1;
  *(v108 + 200) = 0x1000100000000;
  *(v108 + 208) = 1;
  *(v108 + 64) = 0;
  *(v108 + 72) = 0;
  *(v108 + 96) = 0;
  *(v108 + 104) = 0;
  *(v108 + 144) = xmmword_1AFE22A20;
  *(v108 + 80) = v107;
  *(v108 + 88) = &off_1F2535378;
  *(v108 + 210) = 0;
  swift_retain_n();
  if (v127)
  {
    v94 = (*(v127 + 8))();
  }

  v109 = swift_conformsToProtocol2();
  if (v109 && v94)
  {
    *(v108 + 160) = (*(v109 + 8))(v94, v109);
  }

  *(v108 + 64) = sub_1AF5A98DC;
  *(v108 + 72) = v106;
  sub_1AF0FB8EC(0);
  *(v108 + 168) = 0xD00000000000002ELL;
  *(v108 + 176) = 0x80000001AFF2B4F0;

  *(v108 + 216) = 0;
  v128 = v0;
  *(v0 + 144) = v108;
  v110 = swift_getKeyPath();
  sub_1AF5795B0();
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1AFE431C0;
  *(v111 + 32) = 0;
  *(v111 + 40) = 0xE000000000000000;
  v112 = MEMORY[0x1E69E6448];
  *(v111 + 72) = MEMORY[0x1E69E6448];
  *(v111 + 48) = 1065353216;
  sub_1AF5985E8();
  v113 = swift_allocObject();
  v113[4] = sub_1AF59856C;
  v113[5] = v110;
  v113[2] = sub_1AF5985A8;
  v113[3] = v110;
  v113[6] = v110;
  v114 = swift_allocObject();
  *(v114 + 104) = 0;
  *(v114 + 112) = 1;
  *(v114 + 128) = 0;
  *(v114 + 136) = 0;
  *(v114 + 120) = 0;
  *(v114 + 160) = MEMORY[0x1E69E7CC0];
  *(v114 + 168) = 0;
  *(v114 + 176) = 0;
  *(v114 + 216) = 0;
  sub_1AF5A9240(0, &qword_1EB63B188, v112, MEMORY[0x1E69E6720]);
  v116 = v115;
  *(v114 + 16) = 0xD000000000000010;
  *(v114 + 24) = 0x80000001AFF244C0;
  *(v114 + 32) = v110;
  *(v114 + 40) = v115;
  *(v114 + 48) = 68;
  *(v114 + 56) = 0;
  *(v114 + 58) = 0;
  *(v114 + 184) = 0;
  *(v114 + 188) = 1;
  *(v114 + 192) = 0;
  *(v114 + 196) = 1;
  *(v114 + 200) = 0x1000100000000;
  *(v114 + 208) = 1;
  *(v114 + 64) = 0;
  *(v114 + 72) = 0;
  *(v114 + 96) = 0;
  *(v114 + 144) = xmmword_1AFE22A20;
  *(v114 + 80) = v113;
  *(v114 + 88) = &off_1F2535378;
  *(v114 + 210) = 0;
  v117 = *(v111 + 16);
  swift_retain_n();
  if (v117)
  {
    v118 = v128;
  }

  else
  {

    v119 = swift_conformsToProtocol2();
    v118 = v128;
    if (!v119)
    {
      goto LABEL_103;
    }

    v111 = (*(v119 + 8))(MEMORY[0x1E69E6448], v119);
  }

  *(v114 + 160) = v111;

LABEL_103:
  *(v114 + 64) = sub_1AF598664;
  *(v114 + 72) = v110;
  sub_1AF0FB8EC(0);
  *(v114 + 168) = 0;
  *(v114 + 176) = 0;

  *(v114 + 216) = 0;
  *(v118 + 152) = v114;
  v120 = swift_getKeyPath();
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1AFE431C0;
  *(v121 + 32) = 0;
  *(v121 + 40) = 0xE000000000000000;
  *(v121 + 72) = MEMORY[0x1E69E6448];
  *(v121 + 48) = 1065353216;
  v122 = swift_allocObject();
  v122[4] = sub_1AF5A94E0;
  v122[5] = v120;
  v122[2] = sub_1AF5A98E0;
  v122[3] = v120;
  v122[6] = v120;
  v123 = swift_allocObject();
  *(v123 + 112) = 1;
  *(v123 + 128) = 0;
  *(v123 + 136) = 0;
  *(v123 + 120) = 0;
  *(v123 + 160) = MEMORY[0x1E69E7CC0];
  *(v123 + 168) = 0;
  *(v123 + 176) = 0;
  *(v123 + 216) = 0;
  *(v123 + 16) = 0x49797469736E6564;
  *(v123 + 24) = 0xEF65756C61566F73;
  *(v123 + 32) = v120;
  *(v123 + 40) = v116;
  *(v123 + 48) = 76;
  *(v123 + 56) = 0;
  *(v123 + 58) = 0;
  *(v123 + 184) = 0;
  *(v123 + 188) = 1;
  *(v123 + 192) = 0;
  *(v123 + 196) = 1;
  *(v123 + 200) = 0x1000100000000;
  *(v123 + 208) = 1;
  *(v123 + 64) = 0;
  *(v123 + 72) = 0;
  *(v123 + 96) = 0;
  *(v123 + 104) = 0;
  *(v123 + 144) = xmmword_1AFE22A20;
  *(v123 + 80) = v122;
  *(v123 + 88) = &off_1F2535378;
  *(v123 + 210) = 0;
  v124 = *(v121 + 16);
  swift_retain_n();
  if (v124)
  {
LABEL_106:
    *(v123 + 160) = v121;

    goto LABEL_107;
  }

  v125 = swift_conformsToProtocol2();
  if (v125)
  {
    v121 = (*(v125 + 8))(MEMORY[0x1E69E6448], v125);
    goto LABEL_106;
  }

LABEL_107:
  *(v123 + 64) = sub_1AF5A98E4;
  *(v123 + 72) = v120;
  sub_1AF0FB8EC(0);
  *(v123 + 168) = 0;
  *(v123 + 176) = 0;

  *(v123 + 216) = 0;
  *(v128 + 160) = v123;
  qword_1EB6C2FB8 = v128;
  return result;
}

uint64_t sub_1AF4EFA74(uint64_t result)
{
  v2 = result;
  if (result >= 7u)
  {
    v2 = 7;
  }

  *(v1 + 11) = v2;
  return result;
}

uint64_t sub_1AF4EFAA8()
{
  if (qword_1EB636FA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4EFB98()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF598D28;
  v3[5] = KeyPath;
  v3[2] = sub_1AF598D6C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 136) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 160) = v5;
  *(v4 + 16) = 1734439524;
  *(v4 + 24) = 0xE400000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 1120403456;
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

  *(v4 + 64) = sub_1AF598DC8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0xD000000000000029;
  *(v4 + 176) = 0x80000001AFF2B520;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF598E08;
  v10[5] = v8;
  v10[2] = sub_1AF598E44;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x80000001AFF2B550;
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

  *(v11 + 64) = sub_1AF598EA0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0xD000000000000031;
  *(v11 + 176) = 0x80000001AFF2B570;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2FC0 = v0;
  return result;
}

uint64_t sub_1AF4F00E4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF598FA0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF598FD4;
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
  strcpy((v4 + 16), "sourceEmitter");
  *(v4 + 30) = -4864;
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

  *(v4 + 64) = sub_1AF599030;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  v8 = &type metadata for SourceDataKind;
  sub_1AF5A9240(0, &qword_1EB63B208, &type metadata for SourceDataKind, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF599070;
  v9[5] = v7;
  v9[2] = sub_1AF59909C;
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
  *(v10 + 16) = 0x6144656372756F73;
  *(v10 + 24) = 0xEA00000000006174;
  *(v10 + 32) = v7;
  *(v10 + 40) = &type metadata for SourceDataKind;
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

  *(v10 + 64) = sub_1AF5990F8;
  *(v10 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = &type metadata for TargetDataKind;
  sub_1AF5A9240(0, &qword_1EB63B210, &type metadata for TargetDataKind, type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF599138;
  v15[5] = v13;
  v15[2] = sub_1AF599164;
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
  *(v16 + 16) = 0x6144746567726174;
  *(v16 + 24) = 0xEA00000000006174;
  *(v16 + 32) = v13;
  *(v16 + 40) = &type metadata for TargetDataKind;
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

  *(v16 + 64) = sub_1AF5991C0;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v19 = swift_getKeyPath();
  sub_1AF5795B0();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AFE431C0;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0xE000000000000000;
  v21 = MEMORY[0x1E69E6530];
  *(v20 + 72) = MEMORY[0x1E69E6530];
  *(v20 + 48) = 1;
  sub_1AF57A3F8();
  v22 = swift_allocObject();
  v22[4] = sub_1AF599200;
  v22[5] = v19;
  v22[2] = sub_1AF599218;
  v22[3] = v19;
  v22[6] = v19;
  v23 = swift_allocObject();
  *(v23 + 104) = 0;
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED72F970, v21, MEMORY[0x1E69E6720]);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0xD000000000000011;
  *(v23 + 24) = 0x80000001AFF234A0;
  *(v23 + 32) = v19;
  *(v23 + 40) = v24;
  *(v23 + 48) = 16;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = 1065353216;
  *(v23 + 188) = 0;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  v25 = *(v20 + 16);
  swift_retain_n();
  if (!v25)
  {

    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AFE431C0;
    *(v20 + 32) = 48;
    *(v20 + 40) = 0xE100000000000000;
    *(v20 + 72) = v21;
    *(v20 + 48) = 0;
  }

  *(v23 + 160) = v20;

  *(v23 + 64) = sub_1AF59927C;
  *(v23 + 72) = v19;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 56) = v23;
  qword_1EB6C2FC8 = v0;
  return result;
}

uint64_t sub_1AF4F0A30()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5AA3BC;
  v4[5] = v2;
  v4[2] = sub_1AF5995EC;
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

  *(v5 + 64) = sub_1AF599648;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  v9 = &type metadata for NoiseKind;
  sub_1AF5A9240(0, &qword_1EB632F60, &type metadata for NoiseKind, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF599688;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5996B4;
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
  *(v11 + 16) = 1684957547;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for NoiseKind;
  *(v11 + 48) = 36;
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

  *(v11 + 64) = sub_1AF599710;
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
  v16[4] = sub_1AF599750;
  v16[5] = v14;
  v16[2] = sub_1AF599784;
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
  *(v17 + 16) = 0x7469736E65746E69;
  *(v17 + 24) = 0xE900000000000079;
  *(v17 + 32) = v14;
  *(v17 + 40) = v15;
  *(v17 + 48) = 32;
  *(v17 + 56) = 0;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 0;
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

  *(v17 + 64) = sub_1AF5997E0;
  *(v17 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 40) = v17;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AF5A94E8;
  v22[5] = v21;
  v22[2] = sub_1AF5A9E7C;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x656C616373;
  *(v23 + 24) = 0xE500000000000000;
  *(v23 + 32) = v21;
  *(v23 + 40) = v15;
  *(v23 + 48) = 0;
  *(v23 + 56) = 0;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 0;
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
  if (v18)
  {
    v15 = (*(v18 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v15)
  {
    *(v23 + 160) = (*(v25 + 8))(v15, v25);
  }

  *(v23 + 64) = sub_1AF5A98F0;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 48) = v23;
  v26 = swift_getKeyPath();
  v27 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF599820;
  v28[5] = v26;
  v28[2] = sub_1AF59984C;
  v28[3] = v26;
  v28[6] = v26;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = v24;
  *(v29 + 168) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 0x657A6974726F6D61;
  *(v29 + 24) = 0xE900000000000064;
  *(v29 + 32) = v26;
  *(v29 + 40) = v27;
  *(v29 + 48) = 48;
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
    v27 = (*(v30 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v27)
  {
    *(v29 + 160) = (*(v31 + 8))(v27, v31);
  }

  *(v29 + 64) = sub_1AF5998A8;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v0 + 56) = v29;
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v34 = swift_allocObject();
  v34[4] = sub_1AF5998E8;
  v34[5] = v32;
  v34[2] = sub_1AF59991C;
  v34[3] = v32;
  v34[6] = v32;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = v24;
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x6F69736E656D6964;
  *(v35 + 24) = 0xEA0000000000736ELL;
  *(v35 + 32) = v32;
  *(v35 + 40) = v33;
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
  v36 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v36)
  {
    v33 = (*(v36 + 8))();
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v33)
  {
    *(v35 + 160) = (*(v37 + 8))(v33, v37);
  }

  *(v35 + 64) = sub_1AF599978;
  *(v35 + 72) = v32;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 64) = v35;
  qword_1EB6C2978 = v0;
  return result;
}

uint64_t sub_1AF4F1630(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 36) = v2;
  return result;
}

uint64_t sub_1AF4F16FC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for AngleF;
  sub_1AF5A9240(0, &qword_1EB63B280, &type metadata for AngleF, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF599BC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF599BFC;
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
  *(v4 + 16) = 0x676E4172656E6E69;
  *(v4 + 24) = 0xEA0000000000656CLL;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for AngleF;
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
  *(v4 + 144) = xmmword_1AFE55150;
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
    v7 = &type metadata for AngleF;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    *(v4 + 160) = (*(v8 + 8))(v7, v8);
  }

  *(v4 + 64) = sub_1AF599C08;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5A94EC;
  v10[5] = v9;
  v10[2] = sub_1AF5A9E90;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x676E41726574756FLL;
  *(v11 + 24) = 0xEA0000000000656CLL;
  *(v11 + 32) = v9;
  *(v11 + 40) = &type metadata for AngleF;
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
  *(v11 + 144) = xmmword_1AFE55150;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v2)
  {
    *(v11 + 160) = (*(v12 + 8))(v2, v12);
  }

  *(v11 + 64) = sub_1AF5A98F4;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF599BC8;
  v15[5] = v13;
  v15[2] = sub_1AF599C48;
  v15[3] = v13;
  v15[6] = v13;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 168) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 216) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x6152746365707361;
  *(v16 + 24) = 0xEB000000006F6974;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 8;
  *(v16 + 56) = 0;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
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
    v18 = (*(v17 + 8))();
  }

  else
  {
    v18 = v14;
  }

  v19 = swift_conformsToProtocol2();
  if (v19 && v18)
  {
    *(v16 + 160) = (*(v19 + 8))(v18, v19);
  }

  *(v16 + 64) = sub_1AF599CA4;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  *(v0 + 48) = v16;
  v20 = swift_getKeyPath();
  v21 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v22 = swift_allocObject();
  v22[4] = sub_1AF599CE4;
  v22[5] = v20;
  v22[2] = sub_1AF599D10;
  v22[3] = v20;
  v22[6] = v20;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0x75676E6174636572;
  *(v23 + 24) = 0xEB0000000072616CLL;
  *(v23 + 32) = v20;
  *(v23 + 40) = v21;
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
  v24 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v24)
  {
    v21 = (*(v24 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v21)
  {
    *(v23 + 160) = (*(v25 + 8))(v21, v25);
  }

  *(v23 + 64) = sub_1AF599D6C;
  *(v23 + 72) = v20;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 56) = v23;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AF5A94EC;
  v27[5] = v26;
  v27[2] = sub_1AF5A9E94;
  v27[3] = v26;
  v27[6] = v26;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 1918985582;
  *(v28 + 24) = 0xE400000000000000;
  *(v28 + 32) = v26;
  *(v28 + 40) = v14;
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
  if (v17)
  {
    v29 = (*(v17 + 8))();
  }

  else
  {
    v29 = v14;
  }

  v30 = swift_conformsToProtocol2();
  if (v30 && v29)
  {
    *(v28 + 160) = (*(v30 + 8))(v29, v30);
  }

  *(v28 + 64) = sub_1AF5A98F8;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(0);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;
  *(v0 + 64) = v28;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  v32[4] = sub_1AF5A94EC;
  v32[5] = v31;
  v32[2] = sub_1AF5A9E94;
  v32[3] = v31;
  v32[6] = v31;
  v33 = swift_allocObject();
  *(v33 + 112) = 1;
  *(v33 + 128) = 0;
  *(v33 + 136) = 0;
  *(v33 + 120) = 0;
  *(v33 + 160) = MEMORY[0x1E69E7CC0];
  *(v33 + 168) = 0;
  *(v33 + 216) = 0;
  *(v33 + 176) = 0;
  *(v33 + 16) = 7496038;
  *(v33 + 24) = 0xE300000000000000;
  *(v33 + 32) = v31;
  *(v33 + 40) = v14;
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
  if (v17)
  {
    v34 = (*(v17 + 8))();
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

  *(v33 + 64) = sub_1AF5A98F8;
  *(v33 + 72) = v31;
  sub_1AF0FB8EC(0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 72) = v33;
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AF5A94EC;
  v37[5] = v36;
  v37[2] = sub_1AF5A9E94;
  v37[3] = v36;
  v37[6] = v36;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  *(v38 + 16) = 0x7469736E65746E69;
  *(v38 + 24) = 0xE900000000000079;
  *(v38 + 32) = v36;
  *(v38 + 40) = v14;
  *(v38 + 48) = 24;
  *(v38 + 56) = 0;
  *(v38 + 58) = 0;
  *(v38 + 184) = 0;
  *(v38 + 188) = 0;
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
  if (v17)
  {
    v14 = (*(v17 + 8))();
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v14)
  {
    *(v38 + 160) = (*(v39 + 8))(v14, v39);
  }

  *(v38 + 64) = sub_1AF5A98F8;
  *(v38 + 72) = v36;
  sub_1AF0FB8EC(0);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;
  *(v0 + 80) = v38;
  v40 = swift_getKeyPath();
  v41 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF599DAC;
  v42[5] = v40;
  v42[2] = sub_1AF599DE0;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 168) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x65727574786574;
  *(v43 + 24) = 0xE700000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for Entity;
  *(v43 + 48) = 28;
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
  *(v43 + 144) = xmmword_1AFE551B0;
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

  *(v43 + 64) = sub_1AF599E3C;
  *(v43 + 72) = v40;
  sub_1AF0FB8EC(0);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;
  *(v0 + 88) = v43;
  qword_1EB6C2FD0 = v0;
  return result;
}

uint64_t sub_1AF4F2714()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A084;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A0C8;
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
  *(v4 + 16) = 0x6874676E656CLL;
  *(v4 + 24) = 0xE600000000000000;
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

  *(v4 + 64) = sub_1AF59A124;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2FD8 = v0;
  return result;
}

uint64_t sub_1AF4F2A48()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A1C4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A208;
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

  *(v4 + 64) = sub_1AF59A264;
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
  v10[4] = sub_1AF59A2A4;
  v10[5] = v8;
  v10[2] = sub_1AF59A2E0;
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
  *(v11 + 16) = 0x6566694C7265766FLL;
  *(v11 + 24) = 0xE800000000000000;
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
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF59A33C;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2FE0 = v0;
  return result;
}

uint64_t sub_1AF4F2F84()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A43C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A480;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000041200000;
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

  *(v4 + 64) = sub_1AF59A4DC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94F8;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EAC;
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
  strcpy((v10 + 16), "shadowRadius");
  *(v10 + 29) = 0;
  *(v10 + 30) = -5120;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 1036831949;
  *(v10 + 188) = 0;
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

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A98FC;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C2938 = v0;
  return result;
}

uint64_t sub_1AF4F34B0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A57C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A5C0;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000041200000;
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

  *(v4 + 64) = sub_1AF59A61C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A94FC;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EB0;
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
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = 0x80000001AFF22AF0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 1036831949;
  *(v10 + 188) = 0;
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
    v2 = (*(v5 + 8))();
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A9900;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C29C8 = v0;
  return result;
}

uint64_t sub_1AF4F39D8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A6BC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A700;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
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
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AF59A75C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C29B8 = v0;
  return result;
}

uint64_t sub_1AF4F3D1C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A7FC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A840;
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
  *(v4 + 16) = 0x7469736E65746E69;
  *(v4 + 24) = 0xE900000000000079;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000041200000;
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

  *(v4 + 64) = sub_1AF59A89C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9504;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EB8;
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
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = 0x80000001AFF22AF0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 4;
  *(v10 + 56) = 0;
  *(v10 + 58) = 0;
  *(v10 + 184) = 1036831949;
  *(v10 + 188) = 0;
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

  *(v10 + 64) = sub_1AF5A9904;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5A9504;
  v14[5] = v13;
  v14[2] = sub_1AF5A9EB8;
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
  *(v15 + 16) = 0x676E4172656E6E69;
  *(v15 + 24) = 0xEA0000000000656CLL;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 12;
  *(v15 + 56) = 0;
  *(v15 + 58) = 0;
  *(v15 + 184) = 0;
  *(v15 + 188) = 0;
  *(v15 + 192) = 1078529591;
  *(v15 + 196) = 0;
  *(v15 + 200) = 0x1000100000000;
  *(v15 + 208) = 1;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 144) = xmmword_1AFE55150;
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

  *(v15 + 64) = sub_1AF5A9904;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5A9504;
  v19[5] = v18;
  v19[2] = sub_1AF5A9EB8;
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
  *(v20 + 16) = 0x676E41726574756FLL;
  *(v20 + 24) = 0xEA0000000000656CLL;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 8;
  *(v20 + 56) = 0;
  *(v20 + 58) = 0;
  *(v20 + 184) = 0;
  *(v20 + 188) = 0;
  *(v20 + 192) = 1078529591;
  *(v20 + 196) = 0;
  *(v20 + 200) = 0x1000100000000;
  *(v20 + 208) = 1;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 96) = 0;
  *(v20 + 104) = 0;
  *(v20 + 144) = xmmword_1AFE55150;
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

  *(v20 + 64) = sub_1AF5A9904;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  qword_1EB6C2FE8 = v0;
  return result;
}

uint64_t sub_1AF4F45CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59A93C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59A970;
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
  *(v4 + 16) = 0x6169426874706564;
  *(v4 + 24) = 0xE900000000000073;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x30100003C23D70ALL;
  *(v4 + 208) = 0;
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

  *(v4 + 64) = sub_1AF59A9CC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2FF0 = v0;
  return result;
}

uint64_t sub_1AF4F4904()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5A9518;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A9EE0;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v50 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v50;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF5A9918;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A9518;
  v15[5] = v14;
  v15[2] = sub_1AF5A9EE0;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x6E6F697463697266;
  *(v16 + 24) = 0xE800000000000000;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = -1082130432;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1065353216;
  *(v16 + 196) = 0;
  *(v16 + 200) = 1008981770;
  *(v16 + 204) = 0x10000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v7)
  {
    v17 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v17, v20);
    v0 = v50;
    *(v16 + 160) = v21;
  }

  else
  {
    v21 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9918;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v0 + 40) = v16;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9518;
  v24[5] = v23;
  v24[2] = sub_1AF5A9EE0;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  *(v25 + 16) = 0xD000000000000019;
  *(v25 + 24) = 0x80000001AFF24510;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1065353216;
  *(v25 + 196) = 0;
  *(v25 + 200) = 1008981770;
  *(v25 + 204) = 0x10000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;

  if (v7)
  {
    v26 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    v30 = v28(v26, v29);
    v0 = v50;
    *(v25 + 160) = v30;
  }

  else
  {
    v30 = swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A9918;
  *(v25 + 72) = v23;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v0 + 48) = v25;
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5A9518;
  v33[5] = v32;
  v33[2] = sub_1AF5A9EE0;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 216) = 0;
  *(v34 + 16) = 0xD000000000000015;
  *(v34 + 24) = 0x80000001AFF244F0;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 0;
  *(v34 + 192) = 1065353216;
  *(v34 + 196) = 0;
  *(v34 + 200) = 1008981770;
  *(v34 + 204) = 0x10000;
  *(v34 + 208) = 1;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v2, v37);
    v0 = v50;
    *(v34 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v34 + 64) = sub_1AF5A9918;
  *(v34 + 72) = v32;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v0 + 56) = v34;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = swift_getKeyPath();
  v41 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF59B454;
  v42[5] = v40;
  v42[2] = sub_1AF59B524;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v43 + 216) = 0;
  *(v43 + 16) = 0x73726579616CLL;
  *(v43 + 24) = 0xE600000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for CollisionLayerSet;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v44 = swift_conformsToProtocol2();

  if (v44)
  {
    v41 = (*(v44 + 8))(&type metadata for CollisionLayerSet);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v41, v47);
    v0 = v50;
    *(v43 + 160) = v48;
  }

  else
  {
    swift_retain_n();
  }

  *(v43 + 64) = sub_1AF59B594;
  *(v43 + 72) = v40;
  *(v43 + 216) = 0;
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v0 + 64) = v43;
  return v0;
}

uint64_t sub_1AF4F5414()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59BA24;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59BA68;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v50 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v50;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59BAC4;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A9520;
  v15[5] = v14;
  v15[2] = sub_1AF5A9EF4;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x6E6F697463697266;
  *(v16 + 24) = 0xE800000000000000;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = -1082130432;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1065353216;
  *(v16 + 196) = 0;
  *(v16 + 200) = 1008981770;
  *(v16 + 204) = 0x10000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v7)
  {
    v17 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v17, v20);
    v0 = v50;
    *(v16 + 160) = v21;
  }

  else
  {
    v21 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9920;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v0 + 40) = v16;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9520;
  v24[5] = v23;
  v24[2] = sub_1AF5A9EF4;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  *(v25 + 16) = 0xD000000000000019;
  *(v25 + 24) = 0x80000001AFF24510;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1065353216;
  *(v25 + 196) = 0;
  *(v25 + 200) = 1008981770;
  *(v25 + 204) = 0x10000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;

  if (v7)
  {
    v26 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    v30 = v28(v26, v29);
    v0 = v50;
    *(v25 + 160) = v30;
  }

  else
  {
    v30 = swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A9920;
  *(v25 + 72) = v23;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v0 + 48) = v25;
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5A9520;
  v33[5] = v32;
  v33[2] = sub_1AF5A9EF4;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 216) = 0;
  *(v34 + 16) = 0xD000000000000015;
  *(v34 + 24) = 0x80000001AFF244F0;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 0;
  *(v34 + 192) = 1065353216;
  *(v34 + 196) = 0;
  *(v34 + 200) = 1008981770;
  *(v34 + 204) = 0x10000;
  *(v34 + 208) = 1;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v2, v37);
    v0 = v50;
    *(v34 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v34 + 64) = sub_1AF5A9920;
  *(v34 + 72) = v32;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v0 + 56) = v34;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = swift_getKeyPath();
  v41 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF59BA24;
  v42[5] = v40;
  v42[2] = sub_1AF59BB04;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v43 + 216) = 0;
  *(v43 + 16) = 0x73726579616CLL;
  *(v43 + 24) = 0xE600000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for CollisionLayerSet;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v44 = swift_conformsToProtocol2();

  if (v44)
  {
    v41 = (*(v44 + 8))(&type metadata for CollisionLayerSet);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v41, v47);
    v0 = v50;
    *(v43 + 160) = v48;
  }

  else
  {
    swift_retain_n();
  }

  *(v43 + 64) = sub_1AF59BB74;
  *(v43 + 72) = v40;
  *(v43 + 216) = 0;
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v0 + 64) = v43;
  return v0;
}

uint64_t sub_1AF4F5F24()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59BDB4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59BDF8;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v50 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v50;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59BE54;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A9524;
  v15[5] = v14;
  v15[2] = sub_1AF5A9F00;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x6E6F697463697266;
  *(v16 + 24) = 0xE800000000000000;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = -1082130432;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1065353216;
  *(v16 + 196) = 0;
  *(v16 + 200) = 1008981770;
  *(v16 + 204) = 0x10000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v7)
  {
    v17 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v17, v20);
    v0 = v50;
    *(v16 + 160) = v21;
  }

  else
  {
    v21 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9924;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v0 + 40) = v16;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9524;
  v24[5] = v23;
  v24[2] = sub_1AF5A9F00;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  *(v25 + 16) = 0xD000000000000019;
  *(v25 + 24) = 0x80000001AFF24510;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1065353216;
  *(v25 + 196) = 0;
  *(v25 + 200) = 1008981770;
  *(v25 + 204) = 0x10000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;

  if (v7)
  {
    v26 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    v30 = v28(v26, v29);
    v0 = v50;
    *(v25 + 160) = v30;
  }

  else
  {
    v30 = swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A9924;
  *(v25 + 72) = v23;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v0 + 48) = v25;
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5A9524;
  v33[5] = v32;
  v33[2] = sub_1AF5A9F00;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 216) = 0;
  *(v34 + 16) = 0xD000000000000015;
  *(v34 + 24) = 0x80000001AFF244F0;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 0;
  *(v34 + 192) = 1065353216;
  *(v34 + 196) = 0;
  *(v34 + 200) = 1008981770;
  *(v34 + 204) = 0x10000;
  *(v34 + 208) = 1;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v2, v37);
    v0 = v50;
    *(v34 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v34 + 64) = sub_1AF5A9924;
  *(v34 + 72) = v32;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v0 + 56) = v34;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = swift_getKeyPath();
  v41 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF59BDB4;
  v42[5] = v40;
  v42[2] = sub_1AF59BE94;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v43 + 216) = 0;
  *(v43 + 16) = 0x73726579616CLL;
  *(v43 + 24) = 0xE600000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for CollisionLayerSet;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v44 = swift_conformsToProtocol2();

  if (v44)
  {
    v41 = (*(v44 + 8))(&type metadata for CollisionLayerSet);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v41, v47);
    v0 = v50;
    *(v43 + 160) = v48;
  }

  else
  {
    swift_retain_n();
  }

  *(v43 + 64) = sub_1AF59BF04;
  *(v43 + 72) = v40;
  *(v43 + 216) = 0;
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v0 + 64) = v43;
  return v0;
}

uint64_t sub_1AF4F6A34()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59AD84;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59ADB8;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v50 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v50;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59AE14;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A9510;
  v15[5] = v14;
  v15[2] = sub_1AF5A9ECC;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x6E6F697463697266;
  *(v16 + 24) = 0xE800000000000000;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = -1082130432;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1065353216;
  *(v16 + 196) = 0;
  *(v16 + 200) = 1008981770;
  *(v16 + 204) = 0x10000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v7)
  {
    v17 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v17, v20);
    v0 = v50;
    *(v16 + 160) = v21;
  }

  else
  {
    v21 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9910;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v0 + 40) = v16;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9510;
  v24[5] = v23;
  v24[2] = sub_1AF5A9ECC;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  *(v25 + 16) = 0xD000000000000019;
  *(v25 + 24) = 0x80000001AFF24510;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1065353216;
  *(v25 + 196) = 0;
  *(v25 + 200) = 1008981770;
  *(v25 + 204) = 0x10000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;

  if (v7)
  {
    v26 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    v30 = v28(v26, v29);
    v0 = v50;
    *(v25 + 160) = v30;
  }

  else
  {
    v30 = swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A9910;
  *(v25 + 72) = v23;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v0 + 48) = v25;
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5A9510;
  v33[5] = v32;
  v33[2] = sub_1AF5A9ECC;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 216) = 0;
  *(v34 + 16) = 0xD000000000000015;
  *(v34 + 24) = 0x80000001AFF244F0;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 0;
  *(v34 + 192) = 1065353216;
  *(v34 + 196) = 0;
  *(v34 + 200) = 1008981770;
  *(v34 + 204) = 0x10000;
  *(v34 + 208) = 1;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v2, v37);
    v0 = v50;
    *(v34 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v34 + 64) = sub_1AF5A9910;
  *(v34 + 72) = v32;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v0 + 56) = v34;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = swift_getKeyPath();
  v41 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF59AD84;
  v42[5] = v40;
  v42[2] = sub_1AF59AE54;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v43 + 216) = 0;
  *(v43 + 16) = 0x73726579616CLL;
  *(v43 + 24) = 0xE600000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for CollisionLayerSet;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v44 = swift_conformsToProtocol2();

  if (v44)
  {
    v41 = (*(v44 + 8))(&type metadata for CollisionLayerSet);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v41, v47);
    v0 = v50;
    *(v43 + 160) = v48;
  }

  else
  {
    swift_retain_n();
  }

  *(v43 + 64) = sub_1AF59AEC4;
  *(v43 + 72) = v40;
  *(v43 + 216) = 0;
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v0 + 64) = v43;
  return v0;
}

uint64_t sub_1AF4F7544()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B0EC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B120;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v50 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v50;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59B17C;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A9514;
  v15[5] = v14;
  v15[2] = sub_1AF5A9ED4;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x6E6F697463697266;
  *(v16 + 24) = 0xE800000000000000;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = -1082130432;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1065353216;
  *(v16 + 196) = 0;
  *(v16 + 200) = 1008981770;
  *(v16 + 204) = 0x10000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v7)
  {
    v17 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v17, v20);
    v0 = v50;
    *(v16 + 160) = v21;
  }

  else
  {
    v21 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A9914;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v0 + 40) = v16;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A9514;
  v24[5] = v23;
  v24[2] = sub_1AF5A9ED4;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  *(v25 + 16) = 0xD000000000000019;
  *(v25 + 24) = 0x80000001AFF24510;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1065353216;
  *(v25 + 196) = 0;
  *(v25 + 200) = 1008981770;
  *(v25 + 204) = 0x10000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;

  if (v7)
  {
    v26 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    v30 = v28(v26, v29);
    v0 = v50;
    *(v25 + 160) = v30;
  }

  else
  {
    v30 = swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A9914;
  *(v25 + 72) = v23;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v0 + 48) = v25;
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5A9514;
  v33[5] = v32;
  v33[2] = sub_1AF5A9ED4;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 216) = 0;
  *(v34 + 16) = 0xD000000000000015;
  *(v34 + 24) = 0x80000001AFF244F0;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 0;
  *(v34 + 192) = 1065353216;
  *(v34 + 196) = 0;
  *(v34 + 200) = 1008981770;
  *(v34 + 204) = 0x10000;
  *(v34 + 208) = 1;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v2, v37);
    v0 = v50;
    *(v34 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v34 + 64) = sub_1AF5A9914;
  *(v34 + 72) = v32;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v0 + 56) = v34;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = swift_getKeyPath();
  v41 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF59B0EC;
  v42[5] = v40;
  v42[2] = sub_1AF59B1BC;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v43 + 216) = 0;
  *(v43 + 16) = 0x73726579616CLL;
  *(v43 + 24) = 0xE600000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for CollisionLayerSet;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v44 = swift_conformsToProtocol2();

  if (v44)
  {
    v41 = (*(v44 + 8))(&type metadata for CollisionLayerSet);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v41, v47);
    v0 = v50;
    *(v43 + 160) = v48;
  }

  else
  {
    swift_retain_n();
  }

  *(v43 + 64) = sub_1AF59B22C;
  *(v43 + 72) = v40;
  *(v43 + 216) = 0;
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v0 + 64) = v43;
  return v0;
}

uint64_t sub_1AF4F8054()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B6F4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B738;
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
  *(v4 + 16) = 0x6963697473616C65;
  *(v4 + 24) = 0xEA00000000007974;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = -1082130432;
  *(v4 + 188) = 0;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x100003C23D70ALL;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  v7 = v6;
  if (v6)
  {
    v8 = (*(v6 + 8))(MEMORY[0x1E69E6448], v6);
  }

  else
  {
    v8 = v2;
  }

  v9 = swift_conformsToProtocol2();
  v50 = v0;
  if (v9 && v8)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    swift_retain_n();
    v12 = v11(v8, v10);
    v0 = v50;
    *(v4 + 160) = v12;
  }

  else
  {
    v12 = swift_retain_n();
  }

  *(v4 + 64) = sub_1AF59B794;
  *(v4 + 72) = KeyPath;
  *(v4 + 216) = 0;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v0 + 32) = v4;
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5A951C;
  v15[5] = v14;
  v15[2] = sub_1AF5A9EEC;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 216) = 0;
  *(v16 + 16) = 0x6E6F697463697266;
  *(v16 + 24) = 0xE800000000000000;
  *(v16 + 32) = v14;
  *(v16 + 40) = v2;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = -1082130432;
  *(v16 + 188) = 0;
  *(v16 + 192) = 1065353216;
  *(v16 + 196) = 0;
  *(v16 + 200) = 1008981770;
  *(v16 + 204) = 0x10000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;

  if (v7)
  {
    v17 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v17 = v2;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v17)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v17, v20);
    v0 = v50;
    *(v16 + 160) = v21;
  }

  else
  {
    v21 = swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A991C;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v0 + 40) = v16;
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AF5A951C;
  v24[5] = v23;
  v24[2] = sub_1AF5A9EEC;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 216) = 0;
  *(v25 + 16) = 0xD000000000000019;
  *(v25 + 24) = 0x80000001AFF24510;
  *(v25 + 32) = v23;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 0;
  *(v25 + 192) = 1065353216;
  *(v25 + 196) = 0;
  *(v25 + 200) = 1008981770;
  *(v25 + 204) = 0x10000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;

  if (v7)
  {
    v26 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  else
  {
    v26 = v2;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    v30 = v28(v26, v29);
    v0 = v50;
    *(v25 + 160) = v30;
  }

  else
  {
    v30 = swift_retain_n();
  }

  *(v25 + 64) = sub_1AF5A991C;
  *(v25 + 72) = v23;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v0 + 48) = v25;
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = swift_getKeyPath();
  v33 = swift_allocObject();
  v33[4] = sub_1AF5A951C;
  v33[5] = v32;
  v33[2] = sub_1AF5A9EEC;
  v33[3] = v32;
  v33[6] = v32;
  v34 = swift_allocObject();
  *(v34 + 112) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 0;
  *(v34 + 120) = 0;
  *(v34 + 160) = MEMORY[0x1E69E7CC0];
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v34 + 216) = 0;
  *(v34 + 16) = 0xD000000000000015;
  *(v34 + 24) = 0x80000001AFF244F0;
  *(v34 + 32) = v32;
  *(v34 + 40) = v2;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 58) = 0;
  *(v34 + 184) = 0;
  *(v34 + 188) = 0;
  *(v34 + 192) = 1065353216;
  *(v34 + 196) = 0;
  *(v34 + 200) = 1008981770;
  *(v34 + 204) = 0x10000;
  *(v34 + 208) = 1;
  *(v34 + 96) = 0;
  *(v34 + 104) = 0;
  *(v34 + 64) = 0;
  *(v34 + 72) = 0;
  *(v34 + 144) = xmmword_1AFE22A20;
  *(v34 + 80) = v33;
  *(v34 + 88) = &off_1F2535378;
  *(v34 + 210) = 0;

  if (v7)
  {
    v2 = (*(v7 + 8))(MEMORY[0x1E69E6448]);
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v2)
  {
    v36 = *(v35 + 8);
    v37 = v35;
    swift_retain_n();
    v38 = v36(v2, v37);
    v0 = v50;
    *(v34 + 160) = v38;
  }

  else
  {
    v38 = swift_retain_n();
  }

  *(v34 + 64) = sub_1AF5A991C;
  *(v34 + 72) = v32;
  *(v34 + 216) = 0;
  *(v34 + 168) = 0;
  *(v34 + 176) = 0;
  *(v0 + 56) = v34;
  MEMORY[0x1EEE9AC00](v38, v39);
  v40 = swift_getKeyPath();
  v41 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v42 = swift_allocObject();
  v42[4] = sub_1AF59B6F4;
  v42[5] = v40;
  v42[2] = sub_1AF59B7D4;
  v42[3] = v40;
  v42[6] = v40;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v43 + 216) = 0;
  *(v43 + 16) = 0x73726579616CLL;
  *(v43 + 24) = 0xE600000000000000;
  *(v43 + 32) = v40;
  *(v43 + 40) = &type metadata for CollisionLayerSet;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 0;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 0;
  v44 = swift_conformsToProtocol2();

  if (v44)
  {
    v41 = (*(v44 + 8))(&type metadata for CollisionLayerSet);
  }

  v45 = swift_conformsToProtocol2();
  if (v45 && v41)
  {
    v46 = *(v45 + 8);
    v47 = v45;
    swift_retain_n();
    v48 = v46(v41, v47);
    v0 = v50;
    *(v43 + 160) = v48;
  }

  else
  {
    swift_retain_n();
  }

  *(v43 + 64) = sub_1AF59B844;
  *(v43 + 72) = v40;
  *(v43 + 216) = 0;
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;
  *(v0 + 64) = v43;
  return v0;
}

uint64_t sub_1AF4F8B64()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v1 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF59AA6C;
  v2[5] = KeyPath;
  v2[2] = sub_1AF59AAB0;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 168) = 0;
  *(v3 + 216) = 0;
  *(v3 + 176) = 0;
  strcpy((v3 + 16), "elasticityBias");
  *(v3 + 31) = -18;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v1;
  *(v3 + 48) = 8;
  *(v3 + 56) = 0;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v4 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v4)
  {
    v5 = (*(v4 + 8))();
  }

  else
  {
    v5 = v1;
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v5)
  {
    *(v3 + 160) = (*(v6 + 8))(v5, v6);
  }

  *(v3 + 64) = sub_1AF59AB0C;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;
  *(v33 + 32) = v3;
  v7 = swift_getKeyPath();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A950C;
  v8[5] = v7;
  v8[2] = sub_1AF5A9EC0;
  v8[3] = v7;
  v8[6] = v7;
  v9 = swift_allocObject();
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 168) = 0;
  *(v9 + 216) = 0;
  *(v9 + 176) = 0;
  strcpy((v9 + 16), "frictionBias");
  *(v9 + 29) = 0;
  *(v9 + 30) = -5120;
  *(v9 + 32) = v7;
  *(v9 + 40) = v1;
  *(v9 + 48) = 12;
  *(v9 + 56) = 0;
  *(v9 + 58) = 0;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  swift_retain_n();
  if (v4)
  {
    v10 = (*(v4 + 8))();
  }

  else
  {
    v10 = v1;
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v10)
  {
    *(v9 + 160) = (*(v11 + 8))(v10, v11);
  }

  *(v9 + 64) = sub_1AF5A9908;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(0);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;
  *(v33 + 40) = v9;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5A950C;
  v13[5] = v12;
  v13[2] = sub_1AF5A9EC0;
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
  *(v14 + 16) = 0xD00000000000001DLL;
  *(v14 + 24) = 0x80000001AFF2B630;
  *(v14 + 32) = v12;
  *(v14 + 40) = v1;
  *(v14 + 48) = 4;
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
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  swift_retain_n();
  if (v4)
  {
    v15 = (*(v4 + 8))();
  }

  else
  {
    v15 = v1;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v14 + 160) = (*(v16 + 8))(v15, v16);
  }

  *(v14 + 64) = sub_1AF5A9908;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(0);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;
  *(v33 + 48) = v14;
  v17 = swift_getKeyPath();
  v18 = swift_allocObject();
  v18[4] = sub_1AF5A950C;
  v18[5] = v17;
  v18[2] = sub_1AF5A9EC0;
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
  *(v19 + 16) = 0xD000000000000019;
  *(v19 + 24) = 0x80000001AFF2B650;
  *(v19 + 32) = v17;
  *(v19 + 40) = v1;
  *(v19 + 48) = 0;
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
  if (v4)
  {
    v20 = (*(v4 + 8))();
  }

  else
  {
    v20 = v1;
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v20)
  {
    *(v19 + 160) = (*(v21 + 8))(v20, v21);
  }

  *(v19 + 64) = sub_1AF5A9908;
  *(v19 + 72) = v17;
  sub_1AF0FB8EC(0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v33 + 56) = v19;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5A950C;
  v23[5] = v22;
  v23[2] = sub_1AF5A9EC0;
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
  *(v24 + 24) = 0x80000001AFF24540;
  *(v24 + 32) = v22;
  *(v24 + 40) = v1;
  *(v24 + 48) = 16;
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
  swift_retain_n();
  if (v4)
  {
    v1 = (*(v4 + 8))();
  }

  v25 = swift_conformsToProtocol2();
  if (v25 && v1)
  {
    *(v24 + 160) = (*(v25 + 8))(v1, v25);
  }

  *(v24 + 64) = sub_1AF5A9908;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v33 + 64) = v24;
  v26 = swift_getKeyPath();
  v27 = &type metadata for CollisionLayerSet;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v28 = swift_allocObject();
  v28[4] = sub_1AF59AA6C;
  v28[5] = v26;
  v28[2] = sub_1AF59AB4C;
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
  *(v29 + 16) = 0x73726579616CLL;
  *(v29 + 24) = 0xE600000000000000;
  *(v29 + 32) = v26;
  *(v29 + 40) = &type metadata for CollisionLayerSet;
  *(v29 + 48) = 20;
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
    v27 = (*(v30 + 8))();
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v27)
  {
    *(v29 + 160) = (*(v31 + 8))(v27, v31);
  }

  *(v29 + 64) = sub_1AF59ABBC;
  *(v29 + 72) = v26;
  sub_1AF0FB8EC(0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v33 + 72) = v29;
  qword_1EB6C2FF8 = v33;
  return result;
}

uint64_t sub_1AF4F97BC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59ACBC;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59ACE8;
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
  *(v4 + 16) = 0x6574696E69666E49;
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

  *(v4 + 64) = sub_1AF59AD44;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA1FC;
  v9[5] = v8;
  v9[2] = sub_1AF5A9EC8;
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
  strcpy((v10 + 16), "Double sided");
  *(v10 + 29) = 0;
  *(v10 + 30) = -5120;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 1;
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

  v11 = swift_conformsToProtocol2();
  if (v11 && v2)
  {
    *(v10 + 160) = (*(v11 + 8))(v2, v11);
  }

  *(v10 + 64) = sub_1AF5A990C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  *(v0 + 48) = sub_1AF577370(1039, 0x65747845666C6168, 0xEB0000000073746ELL, &type metadata for Scale2, &off_1F252F7B8, 0x656C616373, 0xE500000000000000);
  v12 = sub_1AF4F6A34();
  result = sub_1AF48F810(v12, sub_1AF56E184);
  qword_1EB6C3000 = v0;
  return result;
}

uint64_t sub_1AF4F9D5C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B024;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B050;
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
  *(v4 + 16) = 0x656469736E69;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF59B0AC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = sub_1AF4F7544();
  result = sub_1AF48F810(v7, sub_1AF56E184);
  qword_1EB6C3008 = v0;
  return result;
}

uint64_t sub_1AF4FA0CC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF59B38C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF59B3B8;
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
  *(v4 + 16) = 0x656469736E69;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
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

  *(v4 + 64) = sub_1AF59B414;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF59B454;
  v10[5] = v8;
  v10[2] = sub_1AF59B488;
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
  strcpy((v11 + 16), "cornerRadius");
  *(v11 + 29) = 0;
  *(v11 + 30) = -5120;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 20;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
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

  *(v11 + 64) = sub_1AF59B4E4;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = sub_1AF4F4904();
  result = sub_1AF48F810(v14, sub_1AF56E184);
  qword_1EB6C3010 = v0;
  return result;
}