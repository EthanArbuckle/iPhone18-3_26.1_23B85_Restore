uint64_t sub_1AF4A91F8(uint64_t a1, unsigned int a2)
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v4 = (a2 >> 4) & 0x10;
  v5 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v6 = swift_allocObject();
  v6[4] = sub_1AF5AA0B4;
  v6[5] = KeyPath;
  v6[2] = sub_1AF581F4C;
  v6[3] = KeyPath;
  v6[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v7 = swift_allocObject();
  *(v7 + 112) = 1;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 120) = 0;
  *(v7 + 160) = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = 0xD000000000000011;
  *(v7 + 24) = 0x80000001AFF236F0;
  *(v7 + 32) = KeyPath;
  *(v7 + 40) = v5;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *(v7 + 58) = v4;
  *(v7 + 184) = 0;
  *(v7 + 188) = 1;
  *(v7 + 192) = 0;
  *(v7 + 196) = 1;
  *(v7 + 200) = 0x1000100000000;
  *(v7 + 208) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 144) = xmmword_1AFE22A20;
  *(v7 + 80) = v6;
  *(v7 + 88) = &off_1F2535378;
  *(v7 + 210) = v4;
  v8 = swift_conformsToProtocol2();
  v9 = v8;
  if (v8)
  {
    v10 = (*(v8 + 8))(MEMORY[0x1E69E6370], v8);
  }

  else
  {
    v10 = v5;
  }

  v11 = swift_conformsToProtocol2();
  if (v11 && v10)
  {
    v12 = v11;
    v13 = *(v11 + 8);
    swift_retain_n();
    *(v7 + 160) = v13(v10, v12);
  }

  else
  {
    swift_retain_n();
  }

  *(v7 + 64) = sub_1AF581FA8;
  *(v7 + 72) = KeyPath;
  *(v7 + 216) = 0;
  *(v7 + 168) = 0;
  *(v7 + 176) = 0;
  *(v31 + 32) = v7;
  v14 = swift_getKeyPath();
  v15 = swift_allocObject();
  v15[4] = sub_1AF5AA0B4;
  v15[5] = v14;
  v15[2] = sub_1AF5A9B5C;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = 0x7A696C616D726F6ELL;
  *(v16 + 24) = 0xE900000000000065;
  *(v16 + 32) = v14;
  *(v16 + 40) = v5;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = v4;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = v4;

  if (v9)
  {
    v5 = (*(v9 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v5)
  {
    v19 = *(v18 + 8);
    v20 = v18;
    swift_retain_n();
    v21 = v19(v5, v20);
    v17 = MEMORY[0x1E69E7CC0];
    *(v16 + 160) = v21;
  }

  else
  {
    swift_retain_n();
  }

  *(v16 + 64) = sub_1AF5A965C;
  *(v16 + 72) = v14;
  *(v16 + 216) = 0;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v31 + 40) = v16;
  v22 = swift_getKeyPath();
  v23 = &type metadata for MeshImportOptions.Loader;
  sub_1AF5A9240(0, &qword_1EB63A400, &type metadata for MeshImportOptions.Loader, type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF581FE8;
  v24[5] = v22;
  v24[2] = sub_1AF582014;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = v17;
  *(v25 + 16) = 0x726564616F6CLL;
  *(v25 + 24) = 0xE600000000000000;
  *(v25 + 32) = v22;
  *(v25 + 40) = &type metadata for MeshImportOptions.Loader;
  *(v25 + 48) = 8;
  *(v25 + 56) = 0;
  *(v25 + 58) = v4;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = v4;
  v26 = swift_conformsToProtocol2();

  if (v26)
  {
    v23 = (*(v26 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v23)
  {
    v28 = *(v27 + 8);
    v29 = v27;
    swift_retain_n();
    *(v25 + 160) = v28(v23, v29);
  }

  else
  {
    swift_retain_n();
  }

  *(v25 + 64) = sub_1AF582070;
  *(v25 + 72) = v22;
  *(v25 + 216) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v31 + 48) = v25;
  return v31;
}

uint64_t sub_1AF4A984C(uint64_t a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AF4A91F8(a1, v2 | *(v1 + 8));
}

uint64_t sub_1AF4A9868(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 9))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1AF492CC4(a1, a2, a3, a4, *v4, v5 | *(v4 + 8));
}

uint64_t sub_1AF4A9888(uint64_t a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AF491AE4(a1, *v1, v2 | *(v1 + 8));
}

uint64_t sub_1AF4A98A8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Asset;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF5821A0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5821E4;
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
  *(v4 + 16) = 0x7465737361;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Asset;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 4;
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
  *(v4 + 210) = 4;
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

  *(v4 + 64) = sub_1AF582214;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A430, sub_1AF5822B0, type metadata accessor for EntityGetSet);
  v9 = swift_allocObject();
  v9[4] = sub_1AF582254;
  v9[5] = v8;
  v9[2] = sub_1AF582280;
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
  sub_1AF5822B0();
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6874615065646F6ELL;
  *(v10 + 24) = 0xE800000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 48;
  *(v10 + 56) = 0;
  *(v10 + 58) = 4;
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
  *(v10 + 210) = 4;
  sub_1AF5A9240(0, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  v13 = v12;
  v14 = swift_conformsToProtocol2();
  swift_retain_n();
  v15 = 0;
  if (v14 && v13)
  {
    *(v10 + 160) = (*(v14 + 8))(v13, v14);

    v15 = *(v10 + 64);
  }

  *(v10 + 64) = sub_1AF58232C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  qword_1EB6C2D78 = v0;
  return result;
}

uint64_t sub_1AF4A9DF8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF582574;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5825A0;
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
  *(v4 + 16) = 0x656E656373;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 4;
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
  *(v4 + 210) = 4;
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

  *(v4 + 64) = sub_1AF5825D0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5A9310;
  v9[5] = v8;
  v9[2] = sub_1AF5A9668;
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
  *(v10 + 16) = 1752393069;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 16;
  *(v10 + 56) = 0;
  *(v10 + 58) = 4;
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
  *(v10 + 210) = 4;
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

  *(v10 + 64) = sub_1AF5A966C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C2D80 = v0;
  return result;
}

uint64_t sub_1AF4AA314()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Asset;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF582714;
  v3[5] = KeyPath;
  v3[2] = sub_1AF582768;
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
  *(v4 + 16) = 0x7465737361;
  *(v4 + 24) = 0xE500000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for Asset;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 58) = 4;
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
  *(v4 + 210) = 4;
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

  *(v4 + 64) = sub_1AF582798;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2D88 = v0;
  return result;
}

uint64_t CTLineBreakMode.description.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3 || a1 == 4)
    {
      return 0x697461636E757274;
    }

    if (a1 == 5)
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    switch(a1)
    {
      case 0u:
        v1 = 1685221239;
        return v1 | 0x7061725700000000;
      case 1u:
        v1 = 1918986339;
        return v1 | 0x7061725700000000;
      case 2u:
        return 0x676E697070696C63;
    }
  }

  sub_1AFDFE218();

  v3 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v3);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t CTTextAlignment.description.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return 1952867692;
    }

    if (a1 == 1)
    {
      return 0x7468676972;
    }
  }

  else
  {
    switch(a1)
    {
      case 4u:
        return 0x6C61727574616ELL;
      case 3u:
        return 0x656966697473756ALL;
      case 2u:
        return 0x7265746E6563;
    }
  }

  sub_1AFDFE218();

  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF4AAA88()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF582894;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5828C0;
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
  *(v4 + 16) = 1954047348;
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

  *(v4 + 64) = sub_1AF5828F0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v7 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A488, sub_1AF58298C, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF582930;
  v8[5] = v7;
  v8[2] = sub_1AF58295C;
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
  sub_1AF58298C();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 1953394534;
  *(v9 + 24) = 0xE400000000000000;
  *(v9 + 32) = v7;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
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
  v11 = sub_1AF0D4478(0, &qword_1EB638E60);
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  v13 = 0;
  if (v12 && v11)
  {
    *(v9 + 160) = (*(v12 + 8))(v11, v12);

    v13 = *(v9 + 64);
  }

  *(v9 + 64) = sub_1AF5829F4;
  *(v9 + 72) = v7;
  sub_1AF0FB8EC(v13);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = 0;

  *(v0 + 40) = v9;
  v14 = swift_getKeyPath();
  sub_1AF57B9C0();
  v15 = swift_allocObject();
  v15[4] = sub_1AF582A40;
  v15[5] = v14;
  v15[2] = sub_1AF582A58;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 104) = 0;
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v18 = v17;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x756F726765726F66;
  *(v16 + 24) = 0xEF726F6C6F43646ELL;
  *(v16 + 32) = v14;
  *(v16 + 40) = v17;
  *(v16 + 48) = 48;
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
  *(v16 + 144) = xmmword_1AFE55160;
  *(v16 + 80) = v15;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  swift_retain_n();
  v21 = v18;
  if (v20)
  {
    v21 = (*(v19 + 8))(v20, v19);
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v16 + 160) = (*(v22 + 8))(v21, v22);
  }

  v23 = *(v16 + 64);
  *(v16 + 64) = sub_1AF582ABC;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(v23);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;

  *(v0 + 48) = v16;
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[4] = sub_1AF5A9674;
  v25[5] = v24;
  v25[2] = sub_1AF5A9B60;
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
  *(v26 + 16) = 0x756F72676B636162;
  *(v26 + 24) = 0xEF726F6C6F43646ELL;
  *(v26 + 32) = v24;
  *(v26 + 40) = v18;
  *(v26 + 48) = 64;
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
  *(v26 + 144) = xmmword_1AFE55160;
  *(v26 + 80) = v25;
  *(v26 + 88) = &off_1F2535378;
  *(v26 + 210) = 0;
  swift_retain_n();
  v27 = v18;
  if (v20)
  {
    v27 = (*(v19 + 8))(v20, v19);
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    *(v26 + 160) = (*(v28 + 8))(v27, v28);
  }

  v29 = *(v26 + 64);
  *(v26 + 64) = sub_1AF5A9678;
  *(v26 + 72) = v24;
  sub_1AF0FB8EC(v29);
  *(v26 + 168) = 0;
  *(v26 + 176) = 0;

  *(v26 + 216) = 0;

  *(v0 + 56) = v26;
  v30 = swift_getKeyPath();
  sub_1AF57C8C8();
  v31 = swift_allocObject();
  v31[4] = sub_1AF582B00;
  v31[5] = v30;
  v31[2] = sub_1AF582B34;
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
  sub_1AF583D60(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v34 = v33;
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x7A69536567616D69;
  *(v32 + 24) = 0xE900000000000065;
  *(v32 + 32) = v30;
  *(v32 + 40) = v33;
  *(v32 + 48) = 80;
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
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  v35 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v35 && v34)
  {
    v34 = (*(v35 + 8))(v34, v35);
  }

  v36 = swift_conformsToProtocol2();
  if (v36 && v34)
  {
    *(v32 + 160) = (*(v36 + 8))(v34, v36);
  }

  v37 = *(v32 + 64);
  *(v32 + 64) = sub_1AF582B90;
  *(v32 + 72) = v30;
  sub_1AF0FB8EC(v37);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v0 + 64) = v32;
  v38 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A4A0, type metadata accessor for CTTextAlignment, type metadata accessor for EntityGetSet);
  v39 = swift_allocObject();
  v39[4] = sub_1AF5A9428;
  v39[5] = v38;
  v39[2] = sub_1AF582BD4;
  v39[3] = v38;
  v39[6] = v38;
  v40 = swift_allocObject();
  *(v40 + 104) = 0;
  *(v40 + 112) = 1;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 120) = 0;
  *(v40 + 160) = MEMORY[0x1E69E7CC0];
  *(v40 + 216) = 0;
  type metadata accessor for CTTextAlignment(0);
  v42 = v41;
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;
  *(v40 + 16) = 0x6E656D6E67696C61;
  *(v40 + 24) = 0xE900000000000074;
  *(v40 + 32) = v38;
  *(v40 + 40) = v41;
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
  *(v40 + 144) = xmmword_1AFE22A20;
  *(v40 + 80) = v39;
  *(v40 + 88) = &off_1F2535378;
  *(v40 + 210) = 0;
  v43 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v43 && v42)
  {
    v42 = (*(v43 + 8))(v42, v43);
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v42)
  {
    *(v40 + 160) = (*(v44 + 8))(v42, v44);
  }

  v45 = *(v40 + 64);
  *(v40 + 64) = sub_1AF582C08;
  *(v40 + 72) = v38;
  sub_1AF0FB8EC(v45);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;

  *(v0 + 72) = v40;
  v46 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A4A8, type metadata accessor for CTLineBreakMode, type metadata accessor for EntityGetSet);
  v47 = swift_allocObject();
  v47[4] = sub_1AF582C54;
  v47[5] = v46;
  v47[2] = sub_1AF582C88;
  v47[3] = v46;
  v47[6] = v46;
  v48 = swift_allocObject();
  *(v48 + 104) = 0;
  *(v48 + 112) = 1;
  *(v48 + 128) = 0;
  *(v48 + 136) = 0;
  *(v48 + 120) = 0;
  *(v48 + 160) = MEMORY[0x1E69E7CC0];
  *(v48 + 216) = 0;
  type metadata accessor for CTLineBreakMode(0);
  v50 = v49;
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;
  *(v48 + 16) = 0x61657242656E696CLL;
  *(v48 + 24) = 0xE90000000000006BLL;
  *(v48 + 32) = v46;
  *(v48 + 40) = v49;
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
  *(v48 + 144) = xmmword_1AFE22A20;
  *(v48 + 80) = v47;
  *(v48 + 88) = &off_1F2535378;
  *(v48 + 210) = 0;
  v51 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v51 && v50)
  {
    v50 = (*(v51 + 8))(v50, v51);
  }

  v52 = swift_conformsToProtocol2();
  if (v52 && v50)
  {
    *(v48 + 160) = (*(v52 + 8))(v50, v52);
  }

  v53 = *(v48 + 64);
  *(v48 + 64) = sub_1AF582CBC;
  *(v48 + 72) = v46;
  sub_1AF0FB8EC(v53);
  *(v48 + 168) = 0;
  *(v48 + 176) = 0;

  *(v48 + 216) = 0;

  *(v0 + 80) = v48;
  v54 = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A4B0, sub_1AF582D5C, type metadata accessor for EntityGetSet);
  v55 = swift_allocObject();
  v55[4] = sub_1AF582D08;
  v55[5] = v54;
  v55[2] = sub_1AF582D20;
  v55[3] = v54;
  v55[6] = v54;
  v56 = swift_allocObject();
  *(v56 + 104) = 0;
  *(v56 + 112) = 1;
  *(v56 + 128) = 0;
  *(v56 + 136) = 0;
  *(v56 + 120) = 0;
  *(v56 + 160) = MEMORY[0x1E69E7CC0];
  *(v56 + 216) = 0;
  sub_1AF582D5C();
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;
  *(v56 + 16) = 0x656E6961746E6F63;
  *(v56 + 24) = 0xE900000000000072;
  *(v56 + 32) = v54;
  *(v56 + 40) = v57;
  *(v56 + 48) = 96;
  *(v56 + 56) = 0;
  *(v56 + 58) = 0;
  *(v56 + 184) = 0;
  *(v56 + 188) = 1;
  *(v56 + 192) = 0;
  *(v56 + 196) = 1;
  *(v56 + 200) = 0x1000100000000;
  *(v56 + 208) = 1;
  *(v56 + 64) = 0;
  *(v56 + 72) = 0;
  *(v56 + 96) = 0;
  *(v56 + 144) = xmmword_1AFE22A20;
  *(v56 + 80) = v55;
  *(v56 + 88) = &off_1F2535378;
  *(v56 + 210) = 0;
  v58 = swift_conformsToProtocol2();
  swift_retain_n();
  v59 = 0;
  if (v58 && v18)
  {
    *(v56 + 160) = (*(v58 + 8))(v18, v58);

    v59 = *(v56 + 64);
  }

  *(v56 + 64) = sub_1AF582DEC;
  *(v56 + 72) = v54;
  sub_1AF0FB8EC(v59);
  *(v56 + 168) = 0;
  *(v56 + 176) = 0;

  *(v56 + 216) = 0;

  *(v0 + 88) = v56;
  qword_1EB6C2D90 = v0;
  return result;
}

id sub_1AF4ABABC()
{
  v9 = *(v0 + 24);
  v10 = *(v0 + 40);

  if (!sub_1AFDFD048())
  {
    sub_1AF58326C(&v9);
    v1 = [objc_opt_self() systemFontOfSize_];
    v2 = [v1 fontName];

    sub_1AFDFCEF8();
  }

  v3 = v10;
  v4 = sub_1AFDFCEC8();

  v5 = [objc_opt_self() fontDescriptorWithName:v4 size:v3];

  v6 = objc_opt_self();
  v7 = [v6 fontWithDescriptor:v5 size:v3];
  if (!v7)
  {
    v7 = [v6 systemFontOfSize_];
  }

  return v7;
}

uint64_t sub_1AF4ABC28(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = [objc_opt_self() systemFontOfSize_];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v4 fontName];
  v7 = sub_1AFDFCEF8();
  v9 = v8;

  [v4 pointSize];
  v11 = v10;

  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *&v11 = v11;
  *(a2 + 40) = LODWORD(v11);
  return result;
}

uint64_t sub_1AF4ABD1C()
{
  if (qword_1EB636D58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4ABE0C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE551C0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF583374;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5833A0;
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
  *(v4 + 16) = 0x65727574706163;
  *(v4 + 24) = 0xE700000000000000;
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
  *(v4 + 144) = xmmword_1AFE55120;
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

  *(v4 + 64) = sub_1AF5833FC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA0C0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B70;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 168) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x6465726F7272696DLL;
  *(v10 + 24) = 0xE800000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 2;
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

  *(v10 + 64) = sub_1AF5A9688;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF58343C;
  v15[5] = v13;
  v15[2] = sub_1AF583470;
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
  *(v16 + 16) = 0xD000000000000010;
  *(v16 + 24) = 0x80000001AFF2A2B0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
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

  *(v16 + 64) = sub_1AF5834CC;
  *(v16 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;
  v19 = &type metadata for VideoCapture.OrientationMode;
  sub_1AF5A9240(0, &qword_1EB63A538, &type metadata for VideoCapture.OrientationMode, type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AF58350C;
  v20[5] = v12;
  v20[2] = sub_1AF583538;
  v20[3] = v12;
  v20[6] = v12;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x7461746E6569726FLL;
  *(v21 + 24) = 0xEB000000006E6F69;
  *(v21 + 32) = v12;
  *(v21 + 40) = &type metadata for VideoCapture.OrientationMode;
  *(v21 + 48) = 1;
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
  v22 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v22)
  {
    v19 = (*(v22 + 8))();
  }

  v23 = swift_conformsToProtocol2();
  if (v23 && v19)
  {
    *(v21 + 160) = (*(v23 + 8))(v19, v23);
  }

  *(v21 + 64) = sub_1AF583594;
  *(v21 + 72) = v12;
  sub_1AF0FB8EC(0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = v16;
  *(v0 + 48) = v21;
  v24 = swift_getKeyPath();
  v25 = &_s15CaptureDeviceIDVN;
  sub_1AF5A9240(0, &qword_1EB63A540, &_s15CaptureDeviceIDVN, type metadata accessor for EntityGetSet);
  v26 = swift_allocObject();
  v26[4] = sub_1AF5835D4;
  v26[5] = v24;
  v26[2] = sub_1AF5835D8;
  v26[3] = v24;
  v26[6] = v24;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  *(v27 + 16) = 0x656369766564;
  *(v27 + 24) = 0xE600000000000000;
  *(v27 + 32) = v24;
  *(v27 + 40) = &_s15CaptureDeviceIDVN;
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

  *(v27 + 64) = sub_1AF5835E0;
  *(v27 + 72) = v24;
  sub_1AF0FB8EC(0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 56) = v27;
  v30 = swift_getKeyPath();
  v31 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AF583620;
  v32[5] = v30;
  v32[2] = sub_1AF58364C;
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
  *(v33 + 16) = 0x696669746E656469;
  *(v33 + 24) = 0xEA00000000007265;
  *(v33 + 32) = v30;
  *(v33 + 40) = v31;
  *(v33 + 48) = 8;
  *(v33 + 56) = 0;
  *(v33 + 58) = 4;
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
  *(v33 + 210) = 4;
  v34 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v34)
  {
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    *(v33 + 160) = (*(v35 + 8))(v31, v35);
  }

  *(v33 + 64) = sub_1AF58367C;
  *(v33 + 72) = v30;
  sub_1AF0FB8EC(0);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = 0;
  *(v0 + 64) = v33;
  qword_1EB6C2D98 = v0;
  return result;
}

unint64_t sub_1AF4ACA00(unint64_t result)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *(v1 + 1) = v2;
  return result;
}

uint64_t sub_1AF4ACA14()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {

    v2 = sub_1AFDFCEC8();
    v3 = [objc_opt_self() deviceWithUniqueID_];

    if (v3)
    {
      v4 = [v3 localizedName];

      sub_1AFDFCEF8();
    }
  }

  return v1;
}

uint64_t sub_1AF4ACAEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x4449657571696E75;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x4449657571696E75;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF4ACB8C()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x4449657571696E75;
  }
}

uint64_t sub_1AF4ACBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AF4ACC9C(uint64_t a1)
{
  v2 = sub_1AF583D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF4ACCD8(uint64_t a1)
{
  v2 = sub_1AF583D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF4ACD14(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1AFDFEE28();
    }
  }

  return result;
}

char *sub_1AF4ACD60@<X0>(char **a1@<X8>)
{
  result = sub_1AF570244();
  *a1 = result;
  return result;
}

uint64_t sub_1AF4ACD88()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = 0x746C7561666544;
  }

  return v1;
}

uint64_t sub_1AF4ACE90(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_1AFCFF70C();
    v4 = a1 - 1;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B2719C70](v4, v3);
    }

    else
    {
      v5 = *(v3 + 8 * v4 + 32);
    }

    v6 = v5;

    v7 = [v6 uniqueID];
    v8 = sub_1AFDFCEF8();
    v10 = v9;

    *v1 = v8;
    v1[1] = v10;
    v11 = [v6 localizedName];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    v1[2] = v12;
    v1[3] = v14;
  }

  else
  {

    *v1 = 0;
    v1[1] = 0;

    v1[2] = 0;
    v1[3] = 0;
  }

  return result;
}

uint64_t sub_1AF4ACF8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_1AF583D60(0, &qword_1EB63A5A0, sub_1AF583D0C, &_s15CaptureDeviceIDV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF583D0C();
  sub_1AFDFF3F8();
  v16 = 0;
  v12 = v14[3];
  sub_1AFDFE868();
  if (!v12)
  {
    v15 = 1;
    sub_1AFDFE868();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF4AD15C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF583B1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1AF4AD1AC()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF583DC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF583DFC;
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
  *(v4 + 16) = 0x6C65646F6DLL;
  *(v4 + 24) = 0xE500000000000000;
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
  *(v4 + 144) = xmmword_1AFE551D0;
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
    v6 = &type metadata for Entity;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF583E58;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA2F0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B7C;
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
  *(v10 + 16) = 0xD000000000000010;
  *(v10 + 24) = 0x80000001AFF22E00;
  *(v10 + 32) = v8;
  *(v10 + 40) = &type metadata for Entity;
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
  *(v10 + 144) = xmmword_1AFE551E0;
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

  *(v10 + 64) = sub_1AF5A9698;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  qword_1EB6C2DA0 = v0;
  return result;
}

uint64_t sub_1AF4AD6D0()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF583EF8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF583F2C;
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
  *(v4 + 58) = 4;
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
  *(v4 + 210) = 4;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = &type metadata for Entity;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AF583F88;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA2F4;
  v9[5] = v8;
  v9[2] = sub_1AF5A9B80;
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
  *(v10 + 16) = 1953460082;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = &type metadata for Entity;
  *(v10 + 48) = 8;
  *(v10 + 56) = 0;
  *(v10 + 58) = 4;
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
  *(v10 + 210) = 4;
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

  *(v10 + 64) = sub_1AF5A969C;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v12 = swift_getKeyPath();
  sub_1AF57C034();
  v13 = swift_allocObject();
  v13[4] = sub_1AF583FC8;
  v13[5] = v12;
  v13[2] = sub_1AF583FF4;
  v13[3] = v12;
  v13[6] = v12;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  v16 = v15;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x6C6576654C706F74;
  *(v14 + 24) = 0xEF737463656A624FLL;
  *(v14 + 32) = v12;
  *(v14 + 40) = v15;
  *(v14 + 48) = 16;
  *(v14 + 56) = 0;
  *(v14 + 58) = 4;
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
  *(v14 + 210) = 4;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v17 && v16)
  {
    v16 = (*(v17 + 8))(v16, v17);
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v16)
  {
    *(v14 + 160) = (*(v18 + 8))(v16, v18);
  }

  v19 = *(v14 + 64);
  *(v14 + 64) = sub_1AF584024;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v19);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 48) = v14;
  qword_1EB6C2DA8 = v0;
  return result;
}

uint64_t sub_1AF4ADDD8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A5C0, sub_1AF58425C, type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF584200;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58422C;
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
  sub_1AF58425C(0);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1752393069;
  *(v3 + 24) = 0xE400000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 58) = 4;
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
  *(v3 + 210) = 4;
  v6 = type metadata accessor for Mesh();
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  v8 = 0;
  if (v7 && v6)
  {
    *(v3 + 160) = (*(v7 + 8))(v6, v7);

    v8 = *(v3 + 64);
  }

  *(v3 + 64) = sub_1AF584290;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v9 = swift_getKeyPath();
  sub_1AF57C034();
  v10 = swift_allocObject();
  v10[4] = sub_1AF5842DC;
  v10[5] = v9;
  v10[2] = sub_1AF584308;
  v10[3] = v9;
  v10[6] = v9;
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v4;
  *(v11 + 216) = 0;
  sub_1AF5A9240(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  v13 = v12;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x6C6169726574616DLL;
  *(v11 + 24) = 0xE900000000000073;
  *(v11 + 32) = v9;
  *(v11 + 40) = v12;
  *(v11 + 48) = 8;
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
  *(v11 + 144) = xmmword_1AFE551F0;
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
  *(v11 + 64) = sub_1AF584338;
  *(v11 + 72) = v9;
  sub_1AF0FB8EC(v16);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  qword_1EB6C2DB0 = v0;
  return result;
}

uint64_t sub_1AF4AE318(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + 3) = v2;
  return result;
}

uint64_t sub_1AF4AE330(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  *(v1 + 4) = v2;
  return result;
}

uint64_t sub_1AF4AE340()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v900 = swift_allocObject();
  *(v900 + 16) = xmmword_1AFE55200;
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF584554;
  v3[5] = v1;
  v3[2] = sub_1AF584588;
  v3[3] = v1;
  v3[6] = v1;
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
  *(v4 + 16) = 0x65646E4965707974;
  *(v4 + 24) = 0xE900000000000078;
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
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  v899 = v5;
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
  *(v4 + 64) = sub_1AF5845E4;
  *(v4 + 72) = v1;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v9 = &type metadata for Material.Kind;
  sub_1AF5A9240(0, &qword_1EB63A600, &type metadata for Material.Kind, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF5AA0D8;
  v10[5] = KeyPath;
  v10[2] = sub_1AF584624;
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
  *(v11 + 16) = 1701869940;
  *(v11 + 24) = 0xE400000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = &type metadata for Material.Kind;
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

  v14 = *(v11 + 64);
  *(v11 + 64) = sub_1AF584680;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(v14);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;

  *(v900 + 32) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF584554;
  v18[5] = v15;
  v18[2] = sub_1AF5846C0;
  v18[3] = v15;
  v18[6] = v15;
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
  *(v19 + 16) = 0x726564616873;
  *(v19 + 24) = 0xE600000000000000;
  *(v19 + 32) = v15;
  *(v19 + 40) = &type metadata for Entity;
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
  *(v19 + 96) = v16;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE55210;
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
  v896 = v20;
  if (v21 && v17)
  {
    v22 = (*(v21 + 8))(v17, v21);

    *(v19 + 160) = v22;
  }

  else
  {
  }

  v23 = *(v19 + 64);
  *(v19 + 64) = sub_1AF58471C;
  *(v19 + 72) = v15;
  sub_1AF0FB8EC(v23);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  *(v900 + 40) = v19;
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AF5AA2F8;
  v26[5] = v25;
  v26[2] = sub_1AF5A9B84;
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
  strcpy((v27 + 16), "blendModeIndex");
  *(v27 + 31) = -18;
  *(v27 + 32) = v25;
  v28 = MEMORY[0x1E69E7360];
  *(v27 + 40) = MEMORY[0x1E69E7360];
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
  if (v899)
  {
    v28 = (*(v899 + 8))();
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v28)
  {
    *(v27 + 160) = (*(v29 + 8))(v28, v29);
  }

  v30 = *(v27 + 64);
  *(v27 + 64) = sub_1AF5A96AC;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(v30);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;

  v31 = &type metadata for BlendMode;
  sub_1AF5A9240(0, &unk_1EB633878, &type metadata for BlendMode, type metadata accessor for EntityGetSet);
  v32 = swift_allocObject();
  v32[4] = sub_1AF58475C;
  v32[5] = v24;
  v32[2] = sub_1AF584798;
  v32[3] = v24;
  v32[6] = v24;
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
  *(v33 + 16) = 0x646F4D646E656C62;
  *(v33 + 24) = 0xE900000000000065;
  *(v33 + 32) = v24;
  *(v33 + 40) = &type metadata for BlendMode;
  *(v33 + 48) = 40;
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
    v31 = (*(v34 + 8))();
  }

  v35 = swift_conformsToProtocol2();
  if (v35 && v31)
  {
    *(v33 + 160) = (*(v35 + 8))(v31, v35);
  }

  v36 = *(v33 + 64);
  *(v33 + 64) = sub_1AF5847D8;
  *(v33 + 72) = v24;
  sub_1AF0FB8EC(v36);
  *(v33 + 168) = 0;
  *(v33 + 176) = 0;

  *(v33 + 216) = v27;

  *(v900 + 48) = v33;
  v37 = swift_getKeyPath();
  v38 = MEMORY[0x1E69E6448];
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v39 = swift_allocObject();
  v39[4] = sub_1AF584818;
  v39[5] = v37;
  v39[2] = sub_1AF58484C;
  v39[3] = v37;
  v39[6] = v37;
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
  *(v40 + 16) = 0x685466666F747563;
  *(v40 + 24) = 0xEF646C6F68736572;
  *(v40 + 32) = v37;
  *(v40 + 40) = v38;
  *(v40 + 48) = 48;
  *(v40 + 56) = 0;
  *(v40 + 58) = 0;
  *(v40 + 184) = -1082130432;
  *(v40 + 188) = 0;
  *(v40 + 192) = 1065353216;
  *(v40 + 196) = 0;
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

  v891 = v41;
  v42 = swift_conformsToProtocol2();
  if (v42 && v38)
  {
    *(v40 + 160) = (*(v42 + 8))(v38, v42);
  }

  v43 = *(v40 + 64);
  *(v40 + 64) = sub_1AF5848A8;
  *(v40 + 72) = v37;
  sub_1AF0FB8EC(v43);
  *(v40 + 168) = 0;
  *(v40 + 176) = 0;

  *(v40 + 216) = 0;

  *(v900 + 56) = v40;
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AF5AA2F8;
  v46[5] = v45;
  v46[2] = sub_1AF5A9B84;
  v46[3] = v45;
  v46[6] = v45;
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
  *(v47 + 16) = 0x676E69646E6977;
  *(v47 + 24) = 0xE700000000000000;
  *(v47 + 32) = v45;
  v48 = MEMORY[0x1E69E7360];
  *(v47 + 40) = MEMORY[0x1E69E7360];
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
  if (v899)
  {
    v48 = (*(v899 + 8))();
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    *(v47 + 160) = (*(v49 + 8))(v48, v49);
  }

  v50 = *(v47 + 64);
  *(v47 + 64) = sub_1AF5A96AC;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(v50);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;

  sub_1AF51B13C(0, &unk_1EB63A608, type metadata accessor for MTLWinding, type metadata accessor for EntityGetSet);
  v51 = swift_allocObject();
  v51[4] = sub_1AF584554;
  v51[5] = v44;
  v51[2] = sub_1AF5848E8;
  v51[3] = v44;
  v51[6] = v44;
  v52 = swift_allocObject();
  *(v52 + 104) = 0;
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = MEMORY[0x1E69E7CC0];
  *(v52 + 210) = 0;
  *(v52 + 216) = 0;
  type metadata accessor for MTLWinding(0);
  v54 = v53;
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;
  *(v52 + 16) = 0x676E69646E6977;
  *(v52 + 24) = 0xE700000000000000;
  *(v52 + 32) = v44;
  *(v52 + 40) = v53;
  *(v52 + 48) = 72;
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
  *(v52 + 64) = sub_1AF584944;
  *(v52 + 72) = v44;
  sub_1AF0FB8EC(v57);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = v47;

  *(v900 + 64) = v52;
  v58 = swift_getKeyPath();
  v59 = swift_getKeyPath();
  v60 = swift_allocObject();
  v60[4] = sub_1AF5AA2F8;
  v60[5] = v59;
  v60[2] = sub_1AF5A9B84;
  v60[3] = v59;
  v60[6] = v59;
  v61 = swift_allocObject();
  *(v61 + 80) = 0u;
  *(v61 + 96) = 0u;
  *(v61 + 112) = 1;
  *(v61 + 128) = 0;
  *(v61 + 136) = 0;
  *(v61 + 120) = 0;
  *(v61 + 160) = MEMORY[0x1E69E7CC0];
  *(v61 + 168) = 0;
  *(v61 + 210) = 0;
  *(v61 + 216) = 0;
  *(v61 + 176) = 0;
  *(v61 + 16) = 0x65646F4D6C6C7563;
  *(v61 + 24) = 0xE800000000000000;
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
  *(v61 + 144) = xmmword_1AFE22A20;
  *(v61 + 80) = v60;
  *(v61 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v61 + 210) = 0;
  if (v899)
  {
    v63 = (*(v899 + 8))();
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
  *(v61 + 64) = sub_1AF5A96AC;
  *(v61 + 72) = v59;
  sub_1AF0FB8EC(v65);
  *(v61 + 168) = 0;
  *(v61 + 176) = 0;

  *(v61 + 216) = 0;

  sub_1AF51B13C(0, &unk_1EB632F50, type metadata accessor for MTLCullMode, type metadata accessor for EntityGetSet);
  v66 = swift_allocObject();
  v66[4] = sub_1AF5AA2F8;
  v66[5] = v58;
  v66[2] = sub_1AF584990;
  v66[3] = v58;
  v66[6] = v58;
  v67 = swift_allocObject();
  *(v67 + 80) = 0u;
  *(v67 + 96) = 0u;
  *(v67 + 112) = 1;
  *(v67 + 128) = 0;
  *(v67 + 136) = 0;
  *(v67 + 120) = 0;
  *(v67 + 160) = MEMORY[0x1E69E7CC0];
  *(v67 + 210) = 0;
  *(v67 + 216) = 0;
  type metadata accessor for MTLCullMode(0);
  v69 = v68;
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;
  *(v67 + 16) = 0x65646F4D6C6C7563;
  *(v67 + 24) = 0xE800000000000000;
  *(v67 + 32) = v58;
  *(v67 + 40) = v68;
  *(v67 + 48) = 80;
  *(v67 + 56) = 0;
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
  *(v67 + 144) = xmmword_1AFE22A20;
  *(v67 + 80) = v66;
  *(v67 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v67 + 210) = 0;
  v70 = swift_conformsToProtocol2();
  if (v70 && v69)
  {
    v69 = (*(v70 + 8))(v69, v70);
  }

  v71 = swift_conformsToProtocol2();
  if (v71 && v69)
  {
    *(v67 + 160) = (*(v71 + 8))(v69, v71);
  }

  v72 = *(v67 + 64);
  *(v67 + 64) = sub_1AF5849EC;
  *(v67 + 72) = v58;
  sub_1AF0FB8EC(v72);
  *(v67 + 168) = 0;
  *(v67 + 176) = 0;

  *(v67 + 216) = v61;

  *(v900 + 72) = v67;
  v73 = swift_getKeyPath();
  v74 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v75 = swift_allocObject();
  v75[4] = sub_1AF5AA0D4;
  v75[5] = v73;
  v75[2] = sub_1AF584A38;
  v75[3] = v73;
  v75[6] = v73;
  v76 = swift_allocObject();
  *(v76 + 80) = 0u;
  *(v76 + 96) = 0u;
  *(v76 + 112) = 1;
  *(v76 + 128) = 0;
  *(v76 + 136) = 0;
  *(v76 + 120) = 0;
  *(v76 + 160) = MEMORY[0x1E69E7CC0];
  *(v76 + 168) = 0;
  *(v76 + 210) = 0;
  *(v76 + 216) = 0;
  *(v76 + 176) = 0;
  *(v76 + 16) = 0xD000000000000014;
  *(v76 + 24) = 0x80000001AFF24AB0;
  *(v76 + 32) = v73;
  *(v76 + 40) = v74;
  *(v76 + 48) = 53;
  *(v76 + 56) = 0;
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
  *(v76 + 144) = xmmword_1AFE22A20;
  *(v76 + 80) = v75;
  *(v76 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v76 + 210) = 0;
  v77 = swift_conformsToProtocol2();
  v78 = v77;
  if (v77)
  {
    v79 = (*(v77 + 8))(MEMORY[0x1E69E6370], v77);
  }

  else
  {
    v79 = v74;
  }

  v80 = MEMORY[0x1E69E7360];
  v81 = swift_conformsToProtocol2();
  if (v81 && v79)
  {
    *(v76 + 160) = (*(v81 + 8))(v79, v81);
  }

  v82 = *(v76 + 64);
  *(v76 + 64) = sub_1AF584A94;
  *(v76 + 72) = v73;
  sub_1AF0FB8EC(v82);
  *(v76 + 168) = 0;
  *(v76 + 176) = 0;

  *(v76 + 216) = 0;

  *(v900 + 80) = v76;
  v83 = swift_getKeyPath();
  v84 = swift_getKeyPath();
  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  v86[4] = sub_1AF5AA2F8;
  v86[5] = v85;
  v86[2] = sub_1AF5A9B84;
  v86[3] = v85;
  v86[6] = v85;
  v87 = swift_allocObject();
  *(v87 + 80) = 0u;
  *(v87 + 96) = 0u;
  *(v87 + 112) = 1;
  *(v87 + 128) = 0;
  *(v87 + 136) = 0;
  *(v87 + 120) = 0;
  *(v87 + 160) = MEMORY[0x1E69E7CC0];
  *(v87 + 168) = 0;
  *(v87 + 210) = 0;
  *(v87 + 216) = 0;
  *(v87 + 176) = 0;
  *(v87 + 16) = 0xD000000000000011;
  *(v87 + 24) = 0x80000001AFF2A2F0;
  *(v87 + 32) = v85;
  *(v87 + 40) = v80;
  *(v87 + 48) = 0;
  *(v87 + 56) = 1;
  *(v87 + 58) = 0;
  *(v87 + 184) = 0;
  *(v87 + 188) = 1;
  *(v87 + 192) = 0;
  *(v87 + 196) = 1;
  *(v87 + 200) = 0x1000100000000;
  *(v87 + 208) = 1;
  *(v87 + 64) = 0;
  *(v87 + 72) = 0;
  *(v87 + 96) = 0;
  *(v87 + 144) = xmmword_1AFE22A20;
  *(v87 + 80) = v86;
  *(v87 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v87 + 210) = 0;
  if (v899)
  {
    v88 = (*(v899 + 8))();
  }

  else
  {
    v88 = v80;
  }

  v89 = swift_conformsToProtocol2();
  if (v89 && v88)
  {
    *(v87 + 160) = (*(v89 + 8))(v88, v89);
  }

  v90 = *(v87 + 64);
  *(v87 + 64) = sub_1AF5A96AC;
  *(v87 + 72) = v85;
  sub_1AF0FB8EC(v90);
  *(v87 + 168) = 0;
  *(v87 + 176) = 0;

  *(v87 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63A618, type metadata accessor for MTLCompareFunction, type metadata accessor for EntityGetSet);
  v91 = swift_allocObject();
  v91[4] = sub_1AF5AA2F8;
  v91[5] = v83;
  v91[2] = sub_1AF584AD4;
  v91[3] = v83;
  v91[6] = v83;
  v92 = swift_allocObject();
  *(v92 + 80) = 0u;
  *(v92 + 96) = 0u;
  *(v92 + 112) = 1;
  *(v92 + 128) = 0;
  *(v92 + 136) = 0;
  *(v92 + 120) = 0;
  *(v92 + 160) = MEMORY[0x1E69E7CC0];
  *(v92 + 210) = 0;
  *(v92 + 216) = 0;
  type metadata accessor for MTLCompareFunction(0);
  v94 = v93;
  *(v92 + 168) = 0;
  *(v92 + 176) = 0;
  strcpy((v92 + 16), "depthCompare");
  *(v92 + 29) = 0;
  *(v92 + 30) = -5120;
  *(v92 + 32) = v83;
  *(v92 + 40) = v93;
  *(v92 + 48) = 56;
  *(v92 + 56) = 0;
  *(v92 + 58) = 0;
  *(v92 + 184) = 0;
  *(v92 + 188) = 1;
  *(v92 + 192) = 0;
  *(v92 + 196) = 1;
  *(v92 + 200) = 0x1000100000000;
  *(v92 + 208) = 1;
  *(v92 + 64) = 0;
  *(v92 + 72) = 0;
  *(v92 + 96) = v84;
  *(v92 + 144) = xmmword_1AFE22A20;
  *(v92 + 80) = v91;
  *(v92 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v92 + 210) = 0;
  v95 = swift_conformsToProtocol2();
  if (v95 && v94)
  {
    v94 = (*(v95 + 8))(v94, v95);
  }

  v96 = swift_conformsToProtocol2();
  if (v96 && v94)
  {
    v97 = (*(v96 + 8))(v94, v96);

    *(v92 + 160) = v97;
  }

  else
  {
  }

  v98 = *(v92 + 64);
  *(v92 + 64) = sub_1AF584B30;
  *(v92 + 72) = v83;
  sub_1AF0FB8EC(v98);
  *(v92 + 168) = 0;
  *(v92 + 176) = 0;

  *(v92 + 216) = v87;

  *(v900 + 88) = v92;
  v99 = swift_getKeyPath();
  v100 = swift_getKeyPath();
  v101 = swift_allocObject();
  v101[4] = sub_1AF5AA0D4;
  v101[5] = v99;
  v101[2] = sub_1AF5A9B88;
  v101[3] = v99;
  v101[6] = v99;
  v102 = swift_allocObject();
  *(v102 + 80) = 0u;
  *(v102 + 96) = 0u;
  *(v102 + 112) = 1;
  *(v102 + 128) = 0;
  *(v102 + 136) = 0;
  *(v102 + 120) = 0;
  *(v102 + 160) = MEMORY[0x1E69E7CC0];
  *(v102 + 168) = 0;
  *(v102 + 210) = 0;
  *(v102 + 216) = 0;
  *(v102 + 176) = 0;
  *(v102 + 16) = 0x6972576874706564;
  *(v102 + 24) = 0xEA00000000006574;
  *(v102 + 32) = v99;
  v103 = MEMORY[0x1E69E6370];
  *(v102 + 40) = MEMORY[0x1E69E6370];
  *(v102 + 48) = 64;
  *(v102 + 56) = 0;
  *(v102 + 58) = 0;
  *(v102 + 184) = 0;
  *(v102 + 188) = 1;
  *(v102 + 192) = 0;
  *(v102 + 196) = 1;
  *(v102 + 200) = 0x1000100000000;
  *(v102 + 208) = 1;
  *(v102 + 64) = 0;
  *(v102 + 72) = 0;
  *(v102 + 96) = v100;
  *(v102 + 144) = xmmword_1AFE22A20;
  *(v102 + 80) = v101;
  *(v102 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v102 + 210) = 0;
  if (v78)
  {
    v104 = (*(v78 + 8))();
  }

  else
  {
    v104 = v103;
  }

  v105 = swift_conformsToProtocol2();
  if (v105 && v104)
  {
    v106 = (*(v105 + 8))(v104, v105);

    *(v102 + 160) = v106;
  }

  else
  {
  }

  v107 = *(v102 + 64);
  *(v102 + 64) = sub_1AF5A96B0;
  *(v102 + 72) = v99;
  sub_1AF0FB8EC(v107);
  *(v102 + 168) = 0;
  *(v102 + 176) = 0;

  *(v102 + 216) = 0;

  *(v900 + 96) = v102;
  v108 = swift_getKeyPath();
  v109 = swift_getKeyPath();
  v110 = swift_allocObject();
  v110[4] = sub_1AF5AA2F8;
  v110[5] = v108;
  v110[2] = sub_1AF5A9B8C;
  v110[3] = v108;
  v110[6] = v108;
  v111 = swift_allocObject();
  *(v111 + 80) = 0u;
  *(v111 + 96) = 0u;
  *(v111 + 112) = 1;
  *(v111 + 128) = 0;
  *(v111 + 136) = 0;
  *(v111 + 120) = 0;
  *(v111 + 160) = MEMORY[0x1E69E7CC0];
  *(v111 + 168) = 0;
  *(v111 + 210) = 0;
  *(v111 + 216) = 0;
  *(v111 + 176) = 0;
  *(v111 + 16) = 0x70614D726F6C6F63;
  *(v111 + 24) = 0xE800000000000000;
  *(v111 + 32) = v108;
  *(v111 + 40) = &type metadata for Entity;
  *(v111 + 48) = 0;
  *(v111 + 56) = 1;
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
  *(v111 + 144) = xmmword_1AFE551B0;
  *(v111 + 80) = v110;
  *(v111 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v111 + 210) = 0;
  if (v896)
  {
    v112 = (*(v896 + 8))();
  }

  else
  {
    v112 = &type metadata for Entity;
  }

  v113 = MEMORY[0x1E69E6370];
  v114 = swift_conformsToProtocol2();
  if (v114 && v112)
  {
    v115 = (*(v114 + 8))(v112, v114);

    *(v111 + 160) = v115;
  }

  else
  {
  }

  v116 = *(v111 + 64);
  *(v111 + 64) = sub_1AF5A96B4;
  *(v111 + 72) = v108;
  sub_1AF0FB8EC(v116);
  *(v111 + 168) = 0;
  *(v111 + 176) = 0;

  *(v111 + 216) = 0;

  *(v900 + 104) = v111;
  v117 = swift_getKeyPath();
  v118 = swift_getKeyPath();
  v119 = swift_allocObject();
  v119[4] = sub_1AF5AA0D4;
  v119[5] = v117;
  v119[2] = sub_1AF5A9B88;
  v119[3] = v117;
  v119[6] = v117;
  v120 = swift_allocObject();
  *(v120 + 80) = 0u;
  *(v120 + 96) = 0u;
  *(v120 + 112) = 1;
  *(v120 + 128) = 0;
  *(v120 + 136) = 0;
  *(v120 + 120) = 0;
  *(v120 + 160) = MEMORY[0x1E69E7CC0];
  *(v120 + 168) = 0;
  *(v120 + 210) = 0;
  *(v120 + 216) = 0;
  *(v120 + 176) = 0;
  *(v120 + 16) = 0xD000000000000010;
  *(v120 + 24) = 0x80000001AFF23580;
  *(v120 + 32) = v117;
  *(v120 + 40) = v113;
  *(v120 + 48) = 0;
  *(v120 + 56) = 1;
  *(v120 + 58) = 0;
  *(v120 + 184) = 0;
  *(v120 + 188) = 1;
  *(v120 + 192) = 0;
  *(v120 + 196) = 1;
  *(v120 + 200) = 0x1000100000000;
  *(v120 + 208) = 1;
  *(v120 + 64) = 0;
  *(v120 + 72) = 0;
  *(v120 + 96) = v118;
  *(v120 + 144) = xmmword_1AFE22A20;
  *(v120 + 80) = v119;
  *(v120 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v120 + 210) = 0;
  if (v78)
  {
    v121 = (*(v78 + 8))();
  }

  else
  {
    v121 = v113;
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

  v124 = *(v120 + 64);
  *(v120 + 64) = sub_1AF5A96B0;
  *(v120 + 72) = v117;
  sub_1AF0FB8EC(v124);
  *(v120 + 168) = 0;
  *(v120 + 176) = 0;

  *(v120 + 216) = 0;

  *(v900 + 112) = v120;
  v125 = swift_getKeyPath();
  v126 = swift_getKeyPath();
  v127 = swift_allocObject();
  v127[4] = sub_1AF5AA0D4;
  v127[5] = v125;
  v127[2] = sub_1AF5A9B88;
  v127[3] = v125;
  v127[6] = v125;
  v128 = swift_allocObject();
  *(v128 + 80) = 0u;
  *(v128 + 96) = 0u;
  *(v128 + 112) = 1;
  *(v128 + 128) = 0;
  *(v128 + 136) = 0;
  *(v128 + 120) = 0;
  *(v128 + 160) = MEMORY[0x1E69E7CC0];
  *(v128 + 168) = 0;
  *(v128 + 210) = 0;
  *(v128 + 216) = 0;
  *(v128 + 176) = 0;
  *(v128 + 16) = 0x6953656C62756F64;
  *(v128 + 24) = 0xEB00000000646564;
  *(v128 + 32) = v125;
  *(v128 + 40) = v113;
  *(v128 + 48) = 0;
  *(v128 + 56) = 1;
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
  *(v128 + 144) = xmmword_1AFE22A20;
  *(v128 + 80) = v127;
  *(v128 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v128 + 210) = 0;
  if (v78)
  {
    v129 = (*(v78 + 8))();
  }

  else
  {
    v129 = v113;
  }

  v130 = swift_conformsToProtocol2();
  if (v130 && v129)
  {
    v131 = (*(v130 + 8))(v129, v130);

    *(v128 + 160) = v131;
  }

  else
  {
  }

  v132 = *(v128 + 64);
  *(v128 + 64) = sub_1AF5A96B0;
  *(v128 + 72) = v125;
  sub_1AF0FB8EC(v132);
  *(v128 + 168) = 0;
  *(v128 + 176) = 0;

  *(v128 + 216) = 0;

  *(v900 + 120) = v128;
  v133 = swift_getKeyPath();
  v134 = swift_getKeyPath();
  v135 = swift_allocObject();
  v135[4] = sub_1AF5AA0D4;
  v135[5] = v133;
  v135[2] = sub_1AF5A9B88;
  v135[3] = v133;
  v135[6] = v133;
  v136 = swift_allocObject();
  *(v136 + 80) = 0u;
  *(v136 + 96) = 0u;
  *(v136 + 112) = 1;
  *(v136 + 128) = 0;
  *(v136 + 136) = 0;
  *(v136 + 120) = 0;
  *(v136 + 176) = 0;
  *(v136 + 160) = MEMORY[0x1E69E7CC0];
  *(v136 + 168) = 0;
  *(v136 + 210) = 0;
  *(v136 + 216) = 0;
  *(v136 + 16) = 0xD000000000000010;
  *(v136 + 24) = 0x80000001AFF2A310;
  *(v136 + 32) = v133;
  *(v136 + 40) = v113;
  *(v136 + 48) = 0;
  *(v136 + 56) = 1;
  *(v136 + 58) = 0;
  *(v136 + 184) = 0;
  *(v136 + 188) = 1;
  *(v136 + 192) = 0;
  *(v136 + 196) = 1;
  *(v136 + 200) = 0x1000100000000;
  *(v136 + 208) = 1;
  *(v136 + 64) = 0;
  *(v136 + 72) = 0;
  *(v136 + 96) = v134;
  *(v136 + 144) = xmmword_1AFE22A20;
  *(v136 + 80) = v135;
  *(v136 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v136 + 210) = 0;
  if (v78)
  {
    v113 = (*(v78 + 8))();
  }

  v137 = swift_conformsToProtocol2();
  if (v137 && v113)
  {
    v138 = (*(v137 + 8))(v113, v137);

    *(v136 + 160) = v138;
  }

  else
  {
  }

  v139 = *(v136 + 64);
  *(v136 + 64) = sub_1AF5A96B0;
  *(v136 + 72) = v133;
  sub_1AF0FB8EC(v139);
  *(v136 + 168) = 0xD000000000000042;
  *(v136 + 176) = 0x80000001AFF2A330;

  *(v136 + 216) = 0;

  *(v900 + 128) = v136;
  v140 = swift_getKeyPath();
  v141 = swift_getKeyPath();
  v142 = swift_allocObject();
  v142[4] = sub_1AF5AA2F8;
  v142[5] = v140;
  v142[2] = sub_1AF5A9B8C;
  v142[3] = v140;
  v142[6] = v140;
  v143 = swift_allocObject();
  *(v143 + 80) = 0u;
  *(v143 + 96) = 0u;
  *(v143 + 112) = 1;
  *(v143 + 128) = 0;
  *(v143 + 136) = 0;
  *(v143 + 120) = 0;
  *(v143 + 160) = MEMORY[0x1E69E7CC0];
  *(v143 + 168) = 0;
  *(v143 + 176) = 0;
  *(v143 + 210) = 0;
  *(v143 + 216) = 0;
  strcpy((v143 + 16), "albedoTexture");
  *(v143 + 30) = -4864;
  *(v143 + 32) = v140;
  *(v143 + 40) = &type metadata for Entity;
  *(v143 + 48) = 0;
  *(v143 + 56) = 1;
  *(v143 + 58) = 256;
  *(v143 + 184) = 0;
  *(v143 + 188) = 1;
  *(v143 + 192) = 0;
  *(v143 + 196) = 1;
  *(v143 + 200) = 0x1000100000000;
  *(v143 + 208) = 1;
  *(v143 + 64) = 0;
  *(v143 + 72) = 0;
  *(v143 + 96) = v141;
  *(v143 + 144) = xmmword_1AFE551B0;
  *(v143 + 80) = v142;
  *(v143 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v143 + 210) = 256;
  if (v896)
  {
    v144 = (*(v896 + 8))();
  }

  else
  {
    v144 = &type metadata for Entity;
  }

  v145 = MEMORY[0x1E69E7360];
  v146 = swift_conformsToProtocol2();
  if (v146 && v144)
  {
    v147 = (*(v146 + 8))(v144, v146);

    *(v143 + 160) = v147;
  }

  else
  {
  }

  v148 = *(v143 + 64);
  *(v143 + 64) = sub_1AF5A96B4;
  *(v143 + 72) = v140;
  sub_1AF0FB8EC(v148);
  *(v143 + 168) = 0;
  *(v143 + 176) = 0;

  *(v143 + 216) = 0;

  *(v900 + 136) = v143;
  v149 = swift_getKeyPath();
  v150 = swift_getKeyPath();
  sub_1AF57B9C0();
  v151 = swift_allocObject();
  v151[4] = sub_1AF584B7C;
  v151[5] = v149;
  v151[2] = sub_1AF584B94;
  v151[3] = v149;
  v151[6] = v149;
  v152 = swift_allocObject();
  *(v152 + 80) = 0u;
  *(v152 + 96) = 0u;
  *(v152 + 112) = 1;
  *(v152 + 128) = 0;
  *(v152 + 136) = 0;
  *(v152 + 120) = 0;
  *(v152 + 160) = MEMORY[0x1E69E7CC0];
  *(v152 + 168) = 0;
  *(v152 + 176) = 0;
  *(v152 + 210) = 0;
  *(v152 + 216) = 0;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v154 = v153;
  *(v152 + 16) = 0x6F436F6465626C61;
  *(v152 + 24) = 0xEB00000000726F6CLL;
  *(v152 + 32) = v149;
  *(v152 + 40) = v153;
  *(v152 + 48) = 0;
  *(v152 + 56) = 1;
  *(v152 + 58) = 0;
  *(v152 + 184) = 0;
  *(v152 + 188) = 1;
  *(v152 + 192) = 0;
  *(v152 + 196) = 1;
  *(v152 + 200) = 0x1000100000000;
  *(v152 + 208) = 1;
  *(v152 + 64) = 0;
  *(v152 + 72) = 0;
  *(v152 + 96) = v150;
  *(v152 + 144) = xmmword_1AFE55160;
  *(v152 + 80) = v151;
  *(v152 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v152 + 210) = 0;
  v155 = swift_conformsToProtocol2();
  v156 = v155;
  if (v155)
  {
    v157 = v154;
  }

  else
  {
    v157 = 0;
  }

  v895 = v154;
  if (v157)
  {
    v154 = (*(v155 + 8))(v157, v155);
  }

  v158 = swift_conformsToProtocol2();
  v894 = v157;
  if (v158 && v154)
  {
    v159 = (*(v158 + 8))(v154, v158);

    *(v152 + 160) = v159;
  }

  else
  {
  }

  v160 = *(v152 + 64);
  *(v152 + 64) = sub_1AF584BF8;
  *(v152 + 72) = v149;
  sub_1AF0FB8EC(v160);
  *(v152 + 168) = 0;
  *(v152 + 176) = 0;

  *(v152 + 216) = 0;

  *(v900 + 144) = v152;
  v161 = swift_getKeyPath();
  v162 = swift_getKeyPath();
  v163 = swift_getKeyPath();
  v164 = swift_allocObject();
  v164[4] = sub_1AF5AA2F8;
  v164[5] = v163;
  v164[2] = sub_1AF5A9B84;
  v164[3] = v163;
  v164[6] = v163;
  v165 = swift_allocObject();
  *(v165 + 80) = 0u;
  *(v165 + 96) = 0u;
  *(v165 + 112) = 1;
  *(v165 + 128) = 0;
  *(v165 + 136) = 0;
  *(v165 + 120) = 0;
  *(v165 + 160) = MEMORY[0x1E69E7CC0];
  *(v165 + 168) = 0;
  *(v165 + 176) = 0;
  *(v165 + 210) = 0;
  *(v165 + 216) = 0;
  *(v165 + 16) = 0x694D6F6465626C61;
  *(v165 + 24) = 0xEF7265746C69466ELL;
  *(v165 + 32) = v163;
  *(v165 + 40) = v145;
  *(v165 + 48) = 0;
  *(v165 + 56) = 1;
  *(v165 + 58) = 0;
  *(v165 + 184) = 0;
  *(v165 + 188) = 1;
  *(v165 + 192) = 0;
  *(v165 + 196) = 1;
  *(v165 + 200) = 0x1000100000000;
  *(v165 + 208) = 1;
  *(v165 + 64) = 0;
  *(v165 + 72) = 0;
  *(v165 + 96) = 0;
  *(v165 + 144) = xmmword_1AFE22A20;
  *(v165 + 80) = v164;
  *(v165 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v165 + 210) = 0;
  if (v899)
  {
    v166 = (*(v899 + 8))();
  }

  else
  {
    v166 = v145;
  }

  v167 = swift_conformsToProtocol2();
  if (v167 && v166)
  {
    *(v165 + 160) = (*(v167 + 8))(v166, v167);
  }

  v168 = *(v165 + 64);
  *(v165 + 64) = sub_1AF5A96AC;
  *(v165 + 72) = v163;
  sub_1AF0FB8EC(v168);
  *(v165 + 168) = 0;
  *(v165 + 176) = 0;

  *(v165 + 216) = 0;

  sub_1AF5A9240(0, &qword_1EB63A620, &type metadata for FilterMode, type metadata accessor for EntityGetSet);
  v169 = swift_allocObject();
  v169[4] = sub_1AF584C3C;
  v169[5] = v161;
  v169[2] = sub_1AF584C68;
  v169[3] = v161;
  v169[6] = v161;
  v170 = swift_allocObject();
  *(v170 + 80) = 0u;
  *(v170 + 96) = 0u;
  *(v170 + 112) = 1;
  *(v170 + 128) = 0;
  *(v170 + 136) = 0;
  *(v170 + 120) = 0;
  *(v170 + 160) = MEMORY[0x1E69E7CC0];
  *(v170 + 168) = 0;
  *(v170 + 176) = 0;
  *(v170 + 210) = 0;
  *(v170 + 216) = 0;
  *(v170 + 16) = 0x694D6F6465626C61;
  *(v170 + 24) = 0xEF7265746C69466ELL;
  *(v170 + 32) = v161;
  *(v170 + 40) = &type metadata for FilterMode;
  *(v170 + 48) = 0;
  *(v170 + 56) = 1;
  *(v170 + 58) = 0;
  *(v170 + 184) = 0;
  *(v170 + 188) = 1;
  *(v170 + 192) = 0;
  *(v170 + 196) = 1;
  *(v170 + 200) = 0x1000100000000;
  *(v170 + 208) = 1;
  *(v170 + 64) = 0;
  *(v170 + 72) = 0;
  *(v170 + 96) = v162;
  *(v170 + 144) = xmmword_1AFE22A20;
  *(v170 + 80) = v169;
  *(v170 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v170 + 210) = 0;
  v171 = swift_conformsToProtocol2();
  v898 = v171;
  if (v171)
  {
    v172 = (*(v171 + 8))(&type metadata for FilterMode, v171);
  }

  else
  {
    v172 = &type metadata for FilterMode;
  }

  v173 = swift_conformsToProtocol2();
  v892 = v156;
  if (v173 && v172)
  {
    v174 = (*(v173 + 8))(v172, v173);

    *(v170 + 160) = v174;
  }

  else
  {
  }

  v175 = *(v170 + 64);
  *(v170 + 64) = sub_1AF584CC4;
  *(v170 + 72) = v161;
  sub_1AF0FB8EC(v175);
  *(v170 + 168) = 0;
  *(v170 + 176) = 0;

  *(v170 + 216) = v165;

  *(v900 + 152) = v170;
  v176 = swift_getKeyPath();
  v177 = swift_getKeyPath();
  v178 = swift_getKeyPath();
  v179 = swift_allocObject();
  v179[4] = sub_1AF5AA2F8;
  v179[5] = v178;
  v179[2] = sub_1AF5A9B84;
  v179[3] = v178;
  v179[6] = v178;
  v180 = swift_allocObject();
  *(v180 + 80) = 0u;
  *(v180 + 96) = 0u;
  *(v180 + 112) = 1;
  *(v180 + 128) = 0;
  *(v180 + 136) = 0;
  *(v180 + 120) = 0;
  *(v180 + 160) = MEMORY[0x1E69E7CC0];
  *(v180 + 168) = 0;
  *(v180 + 176) = 0;
  *(v180 + 210) = 0;
  *(v180 + 216) = 0;
  *(v180 + 16) = 0x614D6F6465626C61;
  *(v180 + 24) = 0xEF7265746C694667;
  *(v180 + 32) = v178;
  v181 = MEMORY[0x1E69E7360];
  *(v180 + 40) = MEMORY[0x1E69E7360];
  *(v180 + 48) = 0;
  *(v180 + 56) = 1;
  *(v180 + 58) = 0;
  *(v180 + 184) = 0;
  *(v180 + 188) = 1;
  *(v180 + 192) = 0;
  *(v180 + 196) = 1;
  *(v180 + 200) = 0x1000100000000;
  *(v180 + 208) = 1;
  *(v180 + 64) = 0;
  *(v180 + 72) = 0;
  *(v180 + 96) = 0;
  *(v180 + 144) = xmmword_1AFE22A20;
  *(v180 + 80) = v179;
  *(v180 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v180 + 210) = 0;
  if (v899)
  {
    v182 = (*(v899 + 8))();
  }

  else
  {
    v182 = v181;
  }

  v183 = swift_conformsToProtocol2();
  if (v183 && v182)
  {
    *(v180 + 160) = (*(v183 + 8))(v182, v183);
  }

  v184 = *(v180 + 64);
  *(v180 + 64) = sub_1AF5A96AC;
  *(v180 + 72) = v178;
  sub_1AF0FB8EC(v184);
  *(v180 + 168) = 0;
  *(v180 + 176) = 0;

  *(v180 + 216) = 0;

  v185 = swift_allocObject();
  v185[4] = sub_1AF5AA0D4;
  v185[5] = v176;
  v185[2] = sub_1AF5A9594;
  v185[3] = v176;
  v185[6] = v176;
  v186 = swift_allocObject();
  *(v186 + 80) = 0u;
  *(v186 + 96) = 0u;
  *(v186 + 112) = 1;
  *(v186 + 128) = 0;
  *(v186 + 136) = 0;
  *(v186 + 120) = 0;
  *(v186 + 160) = MEMORY[0x1E69E7CC0];
  *(v186 + 168) = 0;
  *(v186 + 176) = 0;
  *(v186 + 210) = 0;
  *(v186 + 216) = 0;
  *(v186 + 16) = 0x614D6F6465626C61;
  *(v186 + 24) = 0xEF7265746C694667;
  *(v186 + 32) = v176;
  *(v186 + 40) = &type metadata for FilterMode;
  *(v186 + 48) = 0;
  *(v186 + 56) = 1;
  *(v186 + 58) = 0;
  *(v186 + 184) = 0;
  *(v186 + 188) = 1;
  *(v186 + 192) = 0;
  *(v186 + 196) = 1;
  *(v186 + 200) = 0x1000100000000;
  *(v186 + 208) = 1;
  *(v186 + 64) = 0;
  *(v186 + 72) = 0;
  *(v186 + 96) = v177;
  *(v186 + 144) = xmmword_1AFE22A20;
  *(v186 + 80) = v185;
  *(v186 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v186 + 210) = 0;
  if (v898)
  {
    v187 = (*(v898 + 8))();
  }

  else
  {
    v187 = &type metadata for FilterMode;
  }

  v188 = swift_conformsToProtocol2();
  if (v188 && v187)
  {
    v189 = (*(v188 + 8))(v187, v188);

    *(v186 + 160) = v189;
  }

  else
  {
  }

  v190 = *(v186 + 64);
  *(v186 + 64) = sub_1AF5A96B8;
  *(v186 + 72) = v176;
  sub_1AF0FB8EC(v190);
  *(v186 + 168) = 0;
  *(v186 + 176) = 0;

  *(v186 + 216) = v180;

  *(v900 + 160) = v186;
  v191 = swift_getKeyPath();
  v192 = swift_getKeyPath();
  v193 = swift_getKeyPath();
  v194 = swift_allocObject();
  v194[4] = sub_1AF5AA2F8;
  v194[5] = v193;
  v194[2] = sub_1AF5A9B84;
  v194[3] = v193;
  v194[6] = v193;
  v195 = swift_allocObject();
  *(v195 + 80) = 0u;
  *(v195 + 96) = 0u;
  *(v195 + 112) = 1;
  *(v195 + 128) = 0;
  *(v195 + 136) = 0;
  *(v195 + 120) = 0;
  *(v195 + 160) = MEMORY[0x1E69E7CC0];
  *(v195 + 168) = 0;
  *(v195 + 176) = 0;
  *(v195 + 210) = 0;
  *(v195 + 216) = 0;
  *(v195 + 16) = 0x694D6F6465626C61;
  *(v195 + 24) = 0xEF7265746C694670;
  *(v195 + 32) = v193;
  v196 = MEMORY[0x1E69E7360];
  *(v195 + 40) = MEMORY[0x1E69E7360];
  *(v195 + 48) = 0;
  *(v195 + 56) = 1;
  *(v195 + 58) = 0;
  *(v195 + 184) = 0;
  *(v195 + 188) = 1;
  *(v195 + 192) = 0;
  *(v195 + 196) = 1;
  *(v195 + 200) = 0x1000100000000;
  *(v195 + 208) = 1;
  *(v195 + 64) = 0;
  *(v195 + 72) = 0;
  *(v195 + 96) = 0;
  *(v195 + 144) = xmmword_1AFE22A20;
  *(v195 + 80) = v194;
  *(v195 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v195 + 210) = 0;
  if (v899)
  {
    v197 = (*(v899 + 8))();
  }

  else
  {
    v197 = v196;
  }

  v198 = swift_conformsToProtocol2();
  if (v198 && v197)
  {
    *(v195 + 160) = (*(v198 + 8))(v197, v198);
  }

  v199 = *(v195 + 64);
  *(v195 + 64) = sub_1AF5A96AC;
  *(v195 + 72) = v193;
  sub_1AF0FB8EC(v199);
  *(v195 + 168) = 0;
  *(v195 + 176) = 0;

  *(v195 + 216) = 0;

  sub_1AF5A9240(0, &unk_1EB63A628, &type metadata for TextureMipFilterMode, type metadata accessor for EntityGetSet);
  v200 = swift_allocObject();
  v200[4] = sub_1AF584D04;
  v200[5] = v191;
  v200[2] = sub_1AF584D30;
  v200[3] = v191;
  v200[6] = v191;
  v201 = swift_allocObject();
  *(v201 + 80) = 0u;
  *(v201 + 96) = 0u;
  *(v201 + 112) = 1;
  *(v201 + 128) = 0;
  *(v201 + 136) = 0;
  *(v201 + 120) = 0;
  *(v201 + 160) = MEMORY[0x1E69E7CC0];
  *(v201 + 168) = 0;
  *(v201 + 176) = 0;
  *(v201 + 210) = 0;
  *(v201 + 216) = 0;
  *(v201 + 16) = 0x694D6F6465626C61;
  *(v201 + 24) = 0xEF7265746C694670;
  *(v201 + 32) = v191;
  *(v201 + 40) = &type metadata for TextureMipFilterMode;
  *(v201 + 48) = 0;
  *(v201 + 56) = 1;
  *(v201 + 58) = 0;
  *(v201 + 184) = 0;
  *(v201 + 188) = 1;
  *(v201 + 192) = 0;
  *(v201 + 196) = 1;
  *(v201 + 200) = 0x1000100000000;
  *(v201 + 208) = 1;
  *(v201 + 64) = 0;
  *(v201 + 72) = 0;
  *(v201 + 96) = v192;
  *(v201 + 144) = xmmword_1AFE22A20;
  *(v201 + 80) = v200;
  *(v201 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v201 + 210) = 0;
  v202 = swift_conformsToProtocol2();
  v893 = v202;
  if (v202)
  {
    v203 = (*(v202 + 8))(&type metadata for TextureMipFilterMode, v202);
  }

  else
  {
    v203 = &type metadata for TextureMipFilterMode;
  }

  v204 = swift_conformsToProtocol2();
  if (v204 && v203)
  {
    v205 = (*(v204 + 8))(v203, v204);

    *(v201 + 160) = v205;
  }

  else
  {
  }

  v206 = *(v201 + 64);
  *(v201 + 64) = sub_1AF584D8C;
  *(v201 + 72) = v191;
  sub_1AF0FB8EC(v206);
  *(v201 + 168) = 0;
  *(v201 + 176) = 0;

  *(v201 + 216) = v195;

  *(v900 + 168) = v201;
  v207 = swift_getKeyPath();
  v208 = swift_getKeyPath();
  v209 = swift_getKeyPath();
  v210 = swift_allocObject();
  v210[4] = sub_1AF5AA2F8;
  v210[5] = v209;
  v210[2] = sub_1AF5A9B84;
  v210[3] = v209;
  v210[6] = v209;
  v211 = swift_allocObject();
  *(v211 + 80) = 0u;
  *(v211 + 96) = 0u;
  *(v211 + 112) = 1;
  *(v211 + 128) = 0;
  *(v211 + 136) = 0;
  *(v211 + 120) = 0;
  *(v211 + 160) = MEMORY[0x1E69E7CC0];
  *(v211 + 168) = 0;
  *(v211 + 176) = 0;
  *(v211 + 210) = 0;
  *(v211 + 216) = 0;
  *(v211 + 16) = 0x72576F6465626C61;
  *(v211 + 24) = 0xEB00000000537061;
  *(v211 + 32) = v209;
  v212 = MEMORY[0x1E69E7360];
  *(v211 + 40) = MEMORY[0x1E69E7360];
  *(v211 + 48) = 0;
  *(v211 + 56) = 1;
  *(v211 + 58) = 0;
  *(v211 + 184) = 0;
  *(v211 + 188) = 1;
  *(v211 + 192) = 0;
  *(v211 + 196) = 1;
  *(v211 + 200) = 0x1000100000000;
  *(v211 + 208) = 1;
  *(v211 + 64) = 0;
  *(v211 + 72) = 0;
  *(v211 + 96) = 0;
  *(v211 + 144) = xmmword_1AFE22A20;
  *(v211 + 80) = v210;
  *(v211 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v211 + 210) = 0;
  if (v899)
  {
    v213 = (*(v899 + 8))();
  }

  else
  {
    v213 = v212;
  }

  v214 = swift_conformsToProtocol2();
  if (v214 && v213)
  {
    *(v211 + 160) = (*(v214 + 8))(v213, v214);
  }

  v215 = *(v211 + 64);
  *(v211 + 64) = sub_1AF5A96AC;
  *(v211 + 72) = v209;
  sub_1AF0FB8EC(v215);
  *(v211 + 168) = 0;
  *(v211 + 176) = 0;

  *(v211 + 216) = 0;

  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v216 = swift_allocObject();
  v216[4] = sub_1AF584DCC;
  v216[5] = v207;
  v216[2] = sub_1AF584DF8;
  v216[3] = v207;
  v216[6] = v207;
  v217 = swift_allocObject();
  *(v217 + 80) = 0u;
  *(v217 + 96) = 0u;
  *(v217 + 112) = 1;
  *(v217 + 128) = 0;
  *(v217 + 136) = 0;
  *(v217 + 120) = 0;
  *(v217 + 160) = MEMORY[0x1E69E7CC0];
  *(v217 + 168) = 0;
  *(v217 + 176) = 0;
  *(v217 + 210) = 0;
  *(v217 + 216) = 0;
  *(v217 + 16) = 0x72576F6465626C61;
  *(v217 + 24) = 0xEB00000000537061;
  *(v217 + 32) = v207;
  *(v217 + 40) = &type metadata for AddressMode;
  *(v217 + 48) = 0;
  *(v217 + 56) = 1;
  *(v217 + 58) = 0;
  *(v217 + 184) = 0;
  *(v217 + 188) = 1;
  *(v217 + 192) = 0;
  *(v217 + 196) = 1;
  *(v217 + 200) = 0x1000100000000;
  *(v217 + 208) = 1;
  *(v217 + 64) = 0;
  *(v217 + 72) = 0;
  *(v217 + 96) = v208;
  *(v217 + 144) = xmmword_1AFE22A20;
  *(v217 + 80) = v216;
  *(v217 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v217 + 210) = 0;
  v218 = swift_conformsToProtocol2();
  v897 = v218;
  if (v218)
  {
    v219 = (*(v218 + 8))(&type metadata for AddressMode, v218);
  }

  else
  {
    v219 = &type metadata for AddressMode;
  }

  v220 = swift_conformsToProtocol2();
  if (v220 && v219)
  {
    v221 = (*(v220 + 8))(v219, v220);

    *(v217 + 160) = v221;
  }

  else
  {
  }

  v222 = *(v217 + 64);
  *(v217 + 64) = sub_1AF584E54;
  *(v217 + 72) = v207;
  sub_1AF0FB8EC(v222);
  *(v217 + 168) = 0;
  *(v217 + 176) = 0;

  *(v217 + 216) = v211;

  *(v900 + 176) = v217;
  v223 = swift_getKeyPath();
  v224 = swift_getKeyPath();
  v225 = swift_getKeyPath();
  v226 = swift_allocObject();
  v226[4] = sub_1AF5AA2F8;
  v226[5] = v225;
  v226[2] = sub_1AF5A9B84;
  v226[3] = v225;
  v226[6] = v225;
  v227 = swift_allocObject();
  *(v227 + 80) = 0u;
  *(v227 + 96) = 0u;
  *(v227 + 112) = 1;
  *(v227 + 128) = 0;
  *(v227 + 136) = 0;
  *(v227 + 120) = 0;
  *(v227 + 160) = MEMORY[0x1E69E7CC0];
  *(v227 + 168) = 0;
  *(v227 + 176) = 0;
  *(v227 + 210) = 0;
  *(v227 + 216) = 0;
  *(v227 + 16) = 0x72576F6465626C61;
  *(v227 + 24) = 0xEB00000000547061;
  *(v227 + 32) = v225;
  v228 = MEMORY[0x1E69E7360];
  *(v227 + 40) = MEMORY[0x1E69E7360];
  *(v227 + 48) = 0;
  *(v227 + 56) = 1;
  *(v227 + 58) = 0;
  *(v227 + 184) = 0;
  *(v227 + 188) = 1;
  *(v227 + 192) = 0;
  *(v227 + 196) = 1;
  *(v227 + 200) = 0x1000100000000;
  *(v227 + 208) = 1;
  *(v227 + 64) = 0;
  *(v227 + 72) = 0;
  *(v227 + 96) = 0;
  *(v227 + 144) = xmmword_1AFE22A20;
  *(v227 + 80) = v226;
  *(v227 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v227 + 210) = 0;
  if (v899)
  {
    v229 = (*(v899 + 8))();
  }

  else
  {
    v229 = v228;
  }

  v230 = swift_conformsToProtocol2();
  if (v230 && v229)
  {
    *(v227 + 160) = (*(v230 + 8))(v229, v230);
  }

  v231 = *(v227 + 64);
  *(v227 + 64) = sub_1AF5A96AC;
  *(v227 + 72) = v225;
  sub_1AF0FB8EC(v231);
  *(v227 + 168) = 0;
  *(v227 + 176) = 0;

  *(v227 + 216) = 0;

  v232 = swift_allocObject();
  v232[4] = sub_1AF5AA0DC;
  v232[5] = v223;
  v232[2] = sub_1AF5A9B90;
  v232[3] = v223;
  v232[6] = v223;
  v233 = swift_allocObject();
  *(v233 + 80) = 0u;
  *(v233 + 96) = 0u;
  *(v233 + 112) = 1;
  *(v233 + 128) = 0;
  *(v233 + 136) = 0;
  *(v233 + 120) = 0;
  *(v233 + 160) = MEMORY[0x1E69E7CC0];
  *(v233 + 168) = 0;
  *(v233 + 176) = 0;
  *(v233 + 210) = 0;
  *(v233 + 216) = 0;
  *(v233 + 16) = 0x72576F6465626C61;
  *(v233 + 24) = 0xEB00000000547061;
  *(v233 + 32) = v223;
  *(v233 + 40) = &type metadata for AddressMode;
  *(v233 + 48) = 0;
  *(v233 + 56) = 1;
  *(v233 + 58) = 0;
  *(v233 + 184) = 0;
  *(v233 + 188) = 1;
  *(v233 + 192) = 0;
  *(v233 + 196) = 1;
  *(v233 + 200) = 0x1000100000000;
  *(v233 + 208) = 1;
  *(v233 + 64) = 0;
  *(v233 + 72) = 0;
  *(v233 + 96) = v224;
  *(v233 + 144) = xmmword_1AFE22A20;
  *(v233 + 80) = v232;
  *(v233 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v233 + 210) = 0;
  if (v897)
  {
    v234 = (*(v897 + 8))();
  }

  else
  {
    v234 = &type metadata for AddressMode;
  }

  v235 = swift_conformsToProtocol2();
  if (v235 && v234)
  {
    v236 = (*(v235 + 8))(v234, v235);

    *(v233 + 160) = v236;
  }

  else
  {
  }

  v237 = *(v233 + 64);
  *(v233 + 64) = sub_1AF5A96BC;
  *(v233 + 72) = v223;
  sub_1AF0FB8EC(v237);
  *(v233 + 168) = 0;
  *(v233 + 176) = 0;

  *(v233 + 216) = v227;

  *(v900 + 184) = v233;
  v238 = swift_getKeyPath();
  v239 = swift_getKeyPath();
  v240 = swift_allocObject();
  v240[4] = sub_1AF5A96C0;
  v240[5] = v238;
  v240[2] = sub_1AF5A9B94;
  v240[3] = v238;
  v240[6] = v238;
  v241 = swift_allocObject();
  *(v241 + 80) = 0u;
  *(v241 + 96) = 0u;
  *(v241 + 112) = 1;
  *(v241 + 128) = 0;
  *(v241 + 136) = 0;
  *(v241 + 120) = 0;
  *(v241 + 160) = MEMORY[0x1E69E7CC0];
  *(v241 + 168) = 0;
  *(v241 + 176) = 0;
  *(v241 + 210) = 0;
  *(v241 + 216) = 0;
  *(v241 + 16) = 0x63536F6465626C61;
  *(v241 + 24) = 0xEF73616942656C61;
  *(v241 + 32) = v238;
  *(v241 + 40) = v895;
  *(v241 + 48) = 0;
  *(v241 + 56) = 1;
  *(v241 + 58) = 0;
  *(v241 + 184) = 0;
  *(v241 + 188) = 1;
  *(v241 + 192) = 0;
  *(v241 + 196) = 1;
  *(v241 + 200) = 0x1000100000000;
  *(v241 + 208) = 1;
  *(v241 + 64) = 0;
  *(v241 + 72) = 0;
  *(v241 + 96) = v239;
  *(v241 + 144) = xmmword_1AFE22A20;
  *(v241 + 80) = v240;
  *(v241 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v241 + 210) = 0;
  v242 = v895;
  if (v894)
  {
    v242 = (*(v892 + 8))();
  }

  v243 = swift_conformsToProtocol2();
  if (v243 && v242)
  {
    v244 = (*(v243 + 8))(v242, v243);

    *(v241 + 160) = v244;
  }

  else
  {
  }

  v245 = *(v241 + 64);
  *(v241 + 64) = sub_1AF5A96C4;
  *(v241 + 72) = v238;
  sub_1AF0FB8EC(v245);
  *(v241 + 168) = 0;
  *(v241 + 176) = 0;

  *(v241 + 216) = 0;

  *(v900 + 192) = v241;
  v246 = swift_getKeyPath();
  v247 = swift_getKeyPath();
  v248 = swift_allocObject();
  v248[4] = sub_1AF5AA2F8;
  v248[5] = v246;
  v248[2] = sub_1AF5A9B8C;
  v248[3] = v246;
  v248[6] = v246;
  v249 = swift_allocObject();
  *(v249 + 80) = 0u;
  *(v249 + 96) = 0u;
  *(v249 + 112) = 1;
  *(v249 + 128) = 0;
  *(v249 + 136) = 0;
  *(v249 + 120) = 0;
  *(v249 + 160) = MEMORY[0x1E69E7CC0];
  *(v249 + 168) = 0;
  *(v249 + 176) = 0;
  *(v249 + 210) = 0;
  *(v249 + 216) = 0;
  *(v249 + 16) = 0x6576697373696D65;
  *(v249 + 24) = 0xEF65727574786554;
  *(v249 + 32) = v246;
  *(v249 + 40) = &type metadata for Entity;
  *(v249 + 48) = 0;
  *(v249 + 56) = 1;
  *(v249 + 58) = 256;
  *(v249 + 184) = 0;
  *(v249 + 188) = 1;
  *(v249 + 192) = 0;
  *(v249 + 196) = 1;
  *(v249 + 200) = 0x1000100000000;
  *(v249 + 208) = 1;
  *(v249 + 64) = 0;
  *(v249 + 72) = 0;
  *(v249 + 96) = v247;
  *(v249 + 144) = xmmword_1AFE551B0;
  *(v249 + 80) = v248;
  *(v249 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v249 + 210) = 256;
  if (v896)
  {
    v250 = (*(v896 + 8))();
  }

  else
  {
    v250 = &type metadata for Entity;
  }

  v251 = swift_conformsToProtocol2();
  if (v251 && v250)
  {
    v252 = (*(v251 + 8))(v250, v251);

    *(v249 + 160) = v252;
  }

  else
  {
  }

  v253 = *(v249 + 64);
  *(v249 + 64) = sub_1AF5A96B4;
  *(v249 + 72) = v246;
  sub_1AF0FB8EC(v253);
  *(v249 + 168) = 0;
  *(v249 + 176) = 0;

  *(v249 + 216) = 0;

  *(v900 + 200) = v249;
  v254 = swift_getKeyPath();
  v255 = swift_getKeyPath();
  v256 = swift_allocObject();
  v256[4] = sub_1AF5A96C0;
  v256[5] = v254;
  v256[2] = sub_1AF5A9B94;
  v256[3] = v254;
  v256[6] = v254;
  v257 = swift_allocObject();
  *(v257 + 80) = 0u;
  *(v257 + 96) = 0u;
  *(v257 + 112) = 1;
  *(v257 + 128) = 0;
  *(v257 + 136) = 0;
  *(v257 + 120) = 0;
  *(v257 + 160) = MEMORY[0x1E69E7CC0];
  *(v257 + 168) = 0;
  *(v257 + 176) = 0;
  *(v257 + 210) = 0;
  *(v257 + 216) = 0;
  strcpy((v257 + 16), "emissiveColor");
  *(v257 + 30) = -4864;
  *(v257 + 32) = v254;
  *(v257 + 40) = v895;
  *(v257 + 48) = 0;
  *(v257 + 56) = 1;
  *(v257 + 58) = 0;
  *(v257 + 184) = 0;
  *(v257 + 188) = 1;
  *(v257 + 192) = 0;
  *(v257 + 196) = 1;
  *(v257 + 200) = 0x1000100000000;
  *(v257 + 208) = 1;
  *(v257 + 64) = 0;
  *(v257 + 72) = 0;
  *(v257 + 96) = v255;
  *(v257 + 144) = xmmword_1AFE55160;
  *(v257 + 80) = v256;
  *(v257 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v257 + 210) = 0;
  v258 = v895;
  if (v894)
  {
    v258 = (*(v892 + 8))();
  }

  v259 = swift_conformsToProtocol2();
  if (v259 && v258)
  {
    v260 = (*(v259 + 8))(v258, v259);

    *(v257 + 160) = v260;
  }

  else
  {
  }

  v261 = *(v257 + 64);
  *(v257 + 64) = sub_1AF5A96C4;
  *(v257 + 72) = v254;
  sub_1AF0FB8EC(v261);
  *(v257 + 168) = 0;
  *(v257 + 176) = 0;

  *(v257 + 216) = 0;

  *(v900 + 208) = v257;
  v262 = swift_getKeyPath();
  v263 = swift_getKeyPath();
  v264 = swift_getKeyPath();
  v265 = swift_allocObject();
  v265[4] = sub_1AF5AA2F8;
  v265[5] = v264;
  v265[2] = sub_1AF5A9B84;
  v265[3] = v264;
  v265[6] = v264;
  v266 = swift_allocObject();
  *(v266 + 80) = 0u;
  *(v266 + 96) = 0u;
  *(v266 + 112) = 1;
  *(v266 + 128) = 0;
  *(v266 + 136) = 0;
  *(v266 + 120) = 0;
  *(v266 + 160) = MEMORY[0x1E69E7CC0];
  *(v266 + 168) = 0;
  *(v266 + 176) = 0;
  *(v266 + 210) = 0;
  *(v266 + 216) = 0;
  *(v266 + 16) = 0xD000000000000011;
  *(v266 + 24) = 0x80000001AFF2A380;
  *(v266 + 32) = v264;
  v267 = MEMORY[0x1E69E7360];
  *(v266 + 40) = MEMORY[0x1E69E7360];
  *(v266 + 48) = 0;
  *(v266 + 56) = 1;
  *(v266 + 58) = 0;
  *(v266 + 184) = 0;
  *(v266 + 188) = 1;
  *(v266 + 192) = 0;
  *(v266 + 196) = 1;
  *(v266 + 200) = 0x1000100000000;
  *(v266 + 208) = 1;
  *(v266 + 64) = 0;
  *(v266 + 72) = 0;
  *(v266 + 96) = 0;
  *(v266 + 144) = xmmword_1AFE22A20;
  *(v266 + 80) = v265;
  *(v266 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v266 + 210) = 0;
  if (v899)
  {
    v268 = (*(v899 + 8))();
  }

  else
  {
    v268 = v267;
  }

  v269 = swift_conformsToProtocol2();
  if (v269 && v268)
  {
    *(v266 + 160) = (*(v269 + 8))(v268, v269);
  }

  v270 = *(v266 + 64);
  *(v266 + 64) = sub_1AF5A96AC;
  *(v266 + 72) = v264;
  sub_1AF0FB8EC(v270);
  *(v266 + 168) = 0;
  *(v266 + 176) = 0;

  *(v266 + 216) = 0;

  v271 = swift_allocObject();
  v271[4] = sub_1AF5AA0D4;
  v271[5] = v262;
  v271[2] = sub_1AF5A9594;
  v271[3] = v262;
  v271[6] = v262;
  v272 = swift_allocObject();
  *(v272 + 80) = 0u;
  *(v272 + 96) = 0u;
  *(v272 + 112) = 1;
  *(v272 + 128) = 0;
  *(v272 + 136) = 0;
  *(v272 + 120) = 0;
  *(v272 + 160) = MEMORY[0x1E69E7CC0];
  *(v272 + 168) = 0;
  *(v272 + 176) = 0;
  *(v272 + 210) = 0;
  *(v272 + 216) = 0;
  *(v272 + 16) = 0xD000000000000011;
  *(v272 + 24) = 0x80000001AFF2A380;
  *(v272 + 32) = v262;
  *(v272 + 40) = &type metadata for FilterMode;
  *(v272 + 48) = 0;
  *(v272 + 56) = 1;
  *(v272 + 58) = 0;
  *(v272 + 184) = 0;
  *(v272 + 188) = 1;
  *(v272 + 192) = 0;
  *(v272 + 196) = 1;
  *(v272 + 200) = 0x1000100000000;
  *(v272 + 208) = 1;
  *(v272 + 64) = 0;
  *(v272 + 72) = 0;
  *(v272 + 96) = v263;
  *(v272 + 144) = xmmword_1AFE22A20;
  *(v272 + 80) = v271;
  *(v272 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v272 + 210) = 0;
  if (v898)
  {
    v273 = (*(v898 + 8))();
  }

  else
  {
    v273 = &type metadata for FilterMode;
  }

  v274 = swift_conformsToProtocol2();
  if (v274 && v273)
  {
    v275 = (*(v274 + 8))(v273, v274);

    *(v272 + 160) = v275;
  }

  else
  {
  }

  v276 = *(v272 + 64);
  *(v272 + 64) = sub_1AF5A96B8;
  *(v272 + 72) = v262;
  sub_1AF0FB8EC(v276);
  *(v272 + 168) = 0;
  *(v272 + 176) = 0;

  *(v272 + 216) = v266;

  *(v900 + 216) = v272;
  v277 = swift_getKeyPath();
  v278 = swift_getKeyPath();
  v279 = swift_getKeyPath();
  v280 = swift_allocObject();
  v280[4] = sub_1AF5AA2F8;
  v280[5] = v279;
  v280[2] = sub_1AF5A9B84;
  v280[3] = v279;
  v280[6] = v279;
  v281 = swift_allocObject();
  *(v281 + 80) = 0u;
  *(v281 + 96) = 0u;
  *(v281 + 112) = 1;
  *(v281 + 128) = 0;
  *(v281 + 136) = 0;
  *(v281 + 120) = 0;
  *(v281 + 160) = MEMORY[0x1E69E7CC0];
  *(v281 + 168) = 0;
  *(v281 + 176) = 0;
  *(v281 + 210) = 0;
  *(v281 + 216) = 0;
  *(v281 + 16) = 0xD000000000000011;
  *(v281 + 24) = 0x80000001AFF2A3A0;
  *(v281 + 32) = v279;
  v282 = MEMORY[0x1E69E7360];
  *(v281 + 40) = MEMORY[0x1E69E7360];
  *(v281 + 48) = 0;
  *(v281 + 56) = 1;
  *(v281 + 58) = 0;
  *(v281 + 184) = 0;
  *(v281 + 188) = 1;
  *(v281 + 192) = 0;
  *(v281 + 196) = 1;
  *(v281 + 200) = 0x1000100000000;
  *(v281 + 208) = 1;
  *(v281 + 64) = 0;
  *(v281 + 72) = 0;
  *(v281 + 96) = 0;
  *(v281 + 144) = xmmword_1AFE22A20;
  *(v281 + 80) = v280;
  *(v281 + 88) = &off_1F2535378;
  swift_retain_n();
  swift_unknownObjectRelease();
  *(v281 + 210) = 0;
  if (v899)
  {
    v283 = (*(v899 + 8))();
  }

  else
  {
    v283 = v282;
  }

  v284 = swift_conformsToProtocol2();
  if (v284 && v283)
  {
    *(v281 + 160) = (*(v284 + 8))(v283, v284);
  }

  v285 = *(v281 + 64);
  *(v281 + 64) = sub_1AF5A96AC;
  *(v281 + 72) = v279;
  sub_1AF0FB8EC(v285);
  *(v281 + 168) = 0;
  *(v281 + 176) = 0;

  *(v281 + 216) = 0;

  v286 = swift_allocObject();
  v286[4] = sub_1AF5AA0D4;
  v286[5] = v277;
  v286[2] = sub_1AF5A9594;
  v286[3] = v277;
  v286[6] = v277;
  v287 = swift_allocObject();
  *(v287 + 80) = 0u;
  *(v287 + 96) = 0u;
  *(v287 + 112) = 1;
  *(v287 + 128) = 0;
  *(v287 + 136) = 0;
  *(v287 + 120) = 0;
  *(v287 + 160) = MEMORY[0x1E69E7CC0];
  *(v287 + 168) = 0;
  *(v287 + 176) = 0;
  *(v287 + 210) = 0;
  *(v287 + 216) = 0;
  *(v287 + 16) = 0xD000000000000011;
  *(v287 + 24) = 0x80000001AFF2A3A0;
  *(v287 + 32) = v277;
  *(v287 + 40) = &type metadata for FilterMode;
  *(v287 + 48) = 0;
  *(v287 + 56) = 1;
  *(v287 + 58) = 0;
  *(v287 + 184) = 0;
  *(v287 + 188) = 1;
  *(v287 + 192) = 0;
  *(v287 + 196) = 1;
  *(v287 + 200) = 0x1000100000000;
  *(v287 + 208) = 1;
  *(v287 + 64) = 0;
  *(v287 + 72) = 0;
  *(v287 + 96) = v278;
  *(v287 + 144) = xmmword_1AFE22A20;
  *(v287 + 80) = v286;
  *(v287 + 88) = &off_1F2535378;
  swift_retain_n();

  swift_unknownObjectRelease();
  *(v287 + 210) = 0;
  if (v898)
  {
    v288 = (*(v898 + 8))();
  }

  else
  {
    v288 = &type metadata for FilterMode;
  }

  v289 = swift_conformsToProtocol2();
  if (v289 && v288)
  {
    v290 = (*(v289 + 8))(v288, v289);

    *(v287 + 160) = v290;
  }

  else
  {
  }

  v291 = *(v287 + 64);
  *(v287 + 64) = sub_1AF5A96B8;
  *(v287 + 72) = v277;
  sub_1AF0FB8EC(v291);
  *(v287 + 168) = 0;
  *(v287 + 176) = 0;

  *(v287 + 216) = v281;

  *(v900 + 224) = v287;
  v292 = swift_getKeyPath();
  v293 = swift_getKeyPath();
  v294 = swift_getKeyPath();
  v295 = swift_allocObject();
  v295[4] = sub_1AF5AA2F8;
  v295[5] = v294;
  v295[2] = sub_1AF5A9B84;
  v295[3] = v294;
  v295[6] = v294;
  v296 = swift_allocObject();
  *(v296 + 112) = 1;
  *(v296 + 128) = 0;
  *(v296 + 136) = 0;
  *(v296 + 120) = 0;
  *(v296 + 160) = MEMORY[0x1E69E7CC0];
  *(v296 + 16) = 0xD000000000000011;
  *(v296 + 24) = 0x80000001AFF2A3C0;
  *(v296 + 32) = v294;
  v297 = MEMORY[0x1E69E7360];
  *(v296 + 40) = MEMORY[0x1E69E7360];
  *(v296 + 48) = 0;
  *(v296 + 56) = 1;
  *(v296 + 58) = 0;
  *(v296 + 184) = 0;
  *(v296 + 188) = 1;
  *(v296 + 192) = 0;
  *(v296 + 196) = 1;
  *(v296 + 200) = 0x1000100000000;
  *(v296 + 208) = 1;
  *(v296 + 96) = 0;
  *(v296 + 104) = 0;
  *(v296 + 144) = xmmword_1AFE22A20;
  *(v296 + 80) = v295;
  *(v296 + 88) = &off_1F2535378;
  *(v296 + 210) = 0;
  if (v899)
  {
    v297 = (*(v899 + 8))();
  }

  v298 = swift_conformsToProtocol2();
  if (v298 && v297)
  {
    v299 = *(v298 + 8);
    v300 = v298;
    swift_retain_n();
    *(v296 + 160) = v299(v297, v300);
  }

  else
  {
    swift_retain_n();
  }

  *(v296 + 64) = sub_1AF5A96AC;
  *(v296 + 72) = v294;
  *(v296 + 216) = 0;
  *(v296 + 168) = 0;
  *(v296 + 176) = 0;
  v301 = swift_allocObject();
  v301[4] = sub_1AF5AA0D8;
  v301[5] = v292;
  v301[2] = sub_1AF5A9B98;
  v301[3] = v292;
  v301[6] = v292;
  v302 = swift_allocObject();
  *(v302 + 112) = 1;
  *(v302 + 128) = 0;
  *(v302 + 136) = 0;
  *(v302 + 120) = 0;
  *(v302 + 160) = MEMORY[0x1E69E7CC0];
  *(v302 + 16) = 0xD000000000000011;
  *(v302 + 24) = 0x80000001AFF2A3C0;
  *(v302 + 32) = v292;
  v303 = &type metadata for TextureMipFilterMode;
  *(v302 + 40) = &type metadata for TextureMipFilterMode;
  *(v302 + 48) = 0;
  *(v302 + 56) = 1;
  *(v302 + 58) = 0;
  *(v302 + 184) = 0;
  *(v302 + 188) = 1;
  *(v302 + 192) = 0;
  *(v302 + 196) = 1;
  *(v302 + 200) = 0x1000100000000;
  *(v302 + 208) = 1;
  *(v302 + 96) = v293;
  *(v302 + 104) = 0;
  *(v302 + 144) = xmmword_1AFE22A20;
  *(v302 + 80) = v301;
  *(v302 + 88) = &off_1F2535378;
  *(v302 + 210) = 0;
  if (v893)
  {
    v303 = (*(v893 + 8))();
  }

  v304 = swift_conformsToProtocol2();
  if (v304 && v303)
  {
    v305 = *(v304 + 8);
    v306 = v304;
    swift_retain_n();

    *(v302 + 160) = v305(v303, v306);
  }

  else
  {
    swift_retain_n();
  }

  v307 = MEMORY[0x1E69E7360];
  *(v302 + 64) = sub_1AF5A96C8;
  *(v302 + 72) = v292;
  *(v302 + 168) = 0;
  *(v302 + 176) = 0;
  *(v302 + 216) = v296;

  *(v900 + 232) = v302;
  v308 = swift_getKeyPath();
  v309 = swift_getKeyPath();
  v310 = swift_getKeyPath();
  v311 = swift_allocObject();
  v311[4] = sub_1AF5AA2F8;
  v311[5] = v310;
  v311[2] = sub_1AF5A9B84;
  v311[3] = v310;
  v311[6] = v310;
  v312 = swift_allocObject();
  *(v312 + 112) = 1;
  *(v312 + 128) = 0;
  *(v312 + 136) = 0;
  *(v312 + 120) = 0;
  *(v312 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v312 + 16), "emissiveWrapS");
  *(v312 + 30) = -4864;
  *(v312 + 32) = v310;
  *(v312 + 40) = v307;
  *(v312 + 48) = 0;
  *(v312 + 56) = 1;
  *(v312 + 58) = 0;
  *(v312 + 184) = 0;
  *(v312 + 188) = 1;
  *(v312 + 192) = 0;
  *(v312 + 196) = 1;
  *(v312 + 200) = 0x1000100000000;
  *(v312 + 208) = 1;
  *(v312 + 96) = 0;
  *(v312 + 104) = 0;
  *(v312 + 144) = xmmword_1AFE22A20;
  *(v312 + 80) = v311;
  *(v312 + 88) = &off_1F2535378;
  *(v312 + 210) = 0;
  if (v899)
  {
    v307 = (*(v899 + 8))();
  }

  v313 = swift_conformsToProtocol2();
  if (v313 && v307)
  {
    v314 = *(v313 + 8);
    v315 = v313;
    swift_retain_n();
    *(v312 + 160) = v314(v307, v315);
  }

  else
  {
    swift_retain_n();
  }

  *(v312 + 64) = sub_1AF5A96AC;
  *(v312 + 72) = v310;
  *(v312 + 216) = 0;
  *(v312 + 168) = 0;
  *(v312 + 176) = 0;
  v316 = swift_allocObject();
  v316[4] = sub_1AF5AA0DC;
  v316[5] = v308;
  v316[2] = sub_1AF5A9B90;
  v316[3] = v308;
  v316[6] = v308;
  v317 = swift_allocObject();
  *(v317 + 112) = 1;
  *(v317 + 128) = 0;
  *(v317 + 136) = 0;
  *(v317 + 120) = 0;
  *(v317 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v317 + 16), "emissiveWrapS");
  *(v317 + 30) = -4864;
  *(v317 + 32) = v308;
  v318 = &type metadata for AddressMode;
  *(v317 + 40) = &type metadata for AddressMode;
  *(v317 + 48) = 0;
  *(v317 + 56) = 1;
  *(v317 + 58) = 0;
  *(v317 + 184) = 0;
  *(v317 + 188) = 1;
  *(v317 + 192) = 0;
  *(v317 + 196) = 1;
  *(v317 + 200) = 0x1000100000000;
  *(v317 + 208) = 1;
  *(v317 + 96) = v309;
  *(v317 + 104) = 0;
  *(v317 + 144) = xmmword_1AFE22A20;
  *(v317 + 80) = v316;
  *(v317 + 88) = &off_1F2535378;
  *(v317 + 210) = 0;
  if (v897)
  {
    v318 = (*(v897 + 8))();
  }

  v319 = swift_conformsToProtocol2();
  if (v319 && v318)
  {
    v320 = *(v319 + 8);
    v321 = v319;
    swift_retain_n();

    *(v317 + 160) = v320(v318, v321);
  }

  else
  {
    swift_retain_n();
  }

  v322 = MEMORY[0x1E69E7360];
  *(v317 + 64) = sub_1AF5A96BC;
  *(v317 + 72) = v308;
  *(v317 + 168) = 0;
  *(v317 + 176) = 0;
  *(v317 + 216) = v312;

  *(v900 + 240) = v317;
  v323 = swift_getKeyPath();
  v324 = swift_getKeyPath();
  v325 = swift_getKeyPath();
  v326 = swift_allocObject();
  v326[4] = sub_1AF5AA2F8;
  v326[5] = v325;
  v326[2] = sub_1AF5A9B84;
  v326[3] = v325;
  v326[6] = v325;
  v327 = swift_allocObject();
  *(v327 + 112) = 1;
  *(v327 + 128) = 0;
  *(v327 + 136) = 0;
  *(v327 + 120) = 0;
  *(v327 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v327 + 16), "emissiveWrapT");
  *(v327 + 30) = -4864;
  *(v327 + 32) = v325;
  *(v327 + 40) = v322;
  *(v327 + 48) = 0;
  *(v327 + 56) = 1;
  *(v327 + 58) = 0;
  *(v327 + 184) = 0;
  *(v327 + 188) = 1;
  *(v327 + 192) = 0;
  *(v327 + 196) = 1;
  *(v327 + 200) = 0x1000100000000;
  *(v327 + 208) = 1;
  *(v327 + 96) = 0;
  *(v327 + 104) = 0;
  *(v327 + 144) = xmmword_1AFE22A20;
  *(v327 + 80) = v326;
  *(v327 + 88) = &off_1F2535378;
  *(v327 + 210) = 0;
  if (v899)
  {
    v322 = (*(v899 + 8))();
  }

  v328 = swift_conformsToProtocol2();
  if (v328 && v322)
  {
    v329 = *(v328 + 8);
    v330 = v328;
    swift_retain_n();
    *(v327 + 160) = v329(v322, v330);
  }

  else
  {
    swift_retain_n();
  }

  *(v327 + 64) = sub_1AF5A96AC;
  *(v327 + 72) = v325;
  *(v327 + 216) = 0;
  *(v327 + 168) = 0;
  *(v327 + 176) = 0;
  v331 = swift_allocObject();
  v331[4] = sub_1AF5AA0DC;
  v331[5] = v323;
  v331[2] = sub_1AF5A9B90;
  v331[3] = v323;
  v331[6] = v323;
  v332 = swift_allocObject();
  *(v332 + 112) = 1;
  *(v332 + 128) = 0;
  *(v332 + 136) = 0;
  *(v332 + 120) = 0;
  *(v332 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v332 + 16), "emissiveWrapT");
  *(v332 + 30) = -4864;
  *(v332 + 32) = v323;
  v333 = &type metadata for AddressMode;
  *(v332 + 40) = &type metadata for AddressMode;
  *(v332 + 48) = 0;
  *(v332 + 56) = 1;
  *(v332 + 58) = 0;
  *(v332 + 184) = 0;
  *(v332 + 188) = 1;
  *(v332 + 192) = 0;
  *(v332 + 196) = 1;
  *(v332 + 200) = 0x1000100000000;
  *(v332 + 208) = 1;
  *(v332 + 96) = v324;
  *(v332 + 104) = 0;
  *(v332 + 144) = xmmword_1AFE22A20;
  *(v332 + 80) = v331;
  *(v332 + 88) = &off_1F2535378;
  *(v332 + 210) = 0;
  if (v897)
  {
    v333 = (*(v897 + 8))();
  }

  v334 = swift_conformsToProtocol2();
  if (v334 && v333)
  {
    v335 = *(v334 + 8);
    v336 = v334;
    swift_retain_n();

    *(v332 + 160) = v335(v333, v336);
  }

  else
  {
    swift_retain_n();
  }

  *(v332 + 64) = sub_1AF5A96BC;
  *(v332 + 72) = v323;
  *(v332 + 168) = 0;
  *(v332 + 176) = 0;
  *(v332 + 216) = v327;

  *(v900 + 248) = v332;
  v337 = swift_getKeyPath();
  v338 = swift_getKeyPath();
  v339 = swift_allocObject();
  v339[4] = sub_1AF5A96C0;
  v339[5] = v337;
  v339[2] = sub_1AF5A9B94;
  v339[3] = v337;
  v339[6] = v337;
  v340 = swift_allocObject();
  *(v340 + 112) = 1;
  *(v340 + 128) = 0;
  *(v340 + 136) = 0;
  *(v340 + 120) = 0;
  *(v340 + 160) = MEMORY[0x1E69E7CC0];
  *(v340 + 16) = 0xD000000000000011;
  *(v340 + 24) = 0x80000001AFF2A3E0;
  *(v340 + 32) = v337;
  *(v340 + 40) = v895;
  *(v340 + 48) = 0;
  *(v340 + 56) = 1;
  *(v340 + 58) = 0;
  *(v340 + 184) = 0;
  *(v340 + 188) = 1;
  *(v340 + 192) = 0;
  *(v340 + 196) = 1;
  *(v340 + 200) = 0x1000100000000;
  *(v340 + 208) = 1;
  *(v340 + 96) = v338;
  *(v340 + 104) = 0;
  *(v340 + 144) = xmmword_1AFE22A20;
  *(v340 + 80) = v339;
  *(v340 + 88) = &off_1F2535378;
  v341 = v895;
  *(v340 + 210) = 0;
  if (v894)
  {
    v341 = (*(v892 + 8))();
  }

  v342 = swift_conformsToProtocol2();
  if (v342 && v341)
  {
    v343 = *(v342 + 8);
    v344 = v342;
    swift_retain_n();

    *(v340 + 160) = v343(v341, v344);
  }

  else
  {
    swift_retain_n();
  }

  *(v340 + 64) = sub_1AF5A96C4;
  *(v340 + 72) = v337;
  *(v340 + 216) = 0;
  *(v340 + 168) = 0;
  *(v340 + 176) = 0;

  *(v900 + 256) = v340;
  v345 = swift_getKeyPath();
  v346 = swift_getKeyPath();
  v347 = swift_allocObject();
  v347[4] = sub_1AF5AA2F8;
  v347[5] = v345;
  v347[2] = sub_1AF5A9B8C;
  v347[3] = v345;
  v347[6] = v345;
  v348 = swift_allocObject();
  *(v348 + 112) = 1;
  *(v348 + 128) = 0;
  *(v348 + 136) = 0;
  *(v348 + 120) = 0;
  *(v348 + 160) = MEMORY[0x1E69E7CC0];
  *(v348 + 16) = 0xD000000000000010;
  *(v348 + 24) = 0x80000001AFF2A400;
  *(v348 + 32) = v345;
  *(v348 + 40) = &type metadata for Entity;
  *(v348 + 48) = 0;
  *(v348 + 56) = 1;
  *(v348 + 58) = 256;
  *(v348 + 184) = 0;
  *(v348 + 188) = 1;
  *(v348 + 192) = 0;
  *(v348 + 196) = 1;
  *(v348 + 200) = 0x1000100000000;
  *(v348 + 208) = 1;
  *(v348 + 96) = v346;
  *(v348 + 104) = 0;
  *(v348 + 144) = xmmword_1AFE551B0;
  *(v348 + 80) = v347;
  *(v348 + 88) = &off_1F2535378;
  *(v348 + 210) = 256;
  if (v896)
  {
    v349 = (*(v896 + 8))();
  }

  else
  {
    v349 = &type metadata for Entity;
  }

  v350 = MEMORY[0x1E69E6448];
  v351 = swift_conformsToProtocol2();
  if (v351 && v349)
  {
    v352 = *(v351 + 8);
    v353 = v351;
    swift_retain_n();

    *(v348 + 160) = v352(v349, v353);
  }

  else
  {
    swift_retain_n();
  }

  *(v348 + 64) = sub_1AF5A96B4;
  *(v348 + 72) = v345;
  *(v348 + 216) = 0;
  *(v348 + 168) = 0;
  *(v348 + 176) = 0;

  *(v900 + 264) = v348;
  v354 = swift_getKeyPath();
  v355 = swift_getKeyPath();
  v356 = swift_allocObject();
  v356[4] = sub_1AF5A942C;
  v356[5] = v354;
  v356[2] = sub_1AF5A9B9C;
  v356[3] = v354;
  v356[6] = v354;
  v357 = swift_allocObject();
  *(v357 + 112) = 1;
  *(v357 + 128) = 0;
  *(v357 + 136) = 0;
  *(v357 + 120) = 0;
  *(v357 + 160) = MEMORY[0x1E69E7CC0];
  *(v357 + 16) = 0xD000000000000012;
  *(v357 + 24) = 0x80000001AFF2A420;
  *(v357 + 32) = v354;
  *(v357 + 40) = v350;
  *(v357 + 48) = 0;
  *(v357 + 56) = 1;
  *(v357 + 58) = 0;
  *(v357 + 184) = 0;
  *(v357 + 188) = 0;
  *(v357 + 192) = 1065353216;
  *(v357 + 196) = 0;
  *(v357 + 200) = 0x100003C23D70ALL;
  *(v357 + 208) = 1;
  *(v357 + 96) = v355;
  *(v357 + 104) = 0;
  *(v357 + 144) = xmmword_1AFE22A20;
  *(v357 + 80) = v356;
  *(v357 + 88) = &off_1F2535378;
  *(v357 + 210) = 0;
  if (v891)
  {
    v358 = (*(v891 + 8))();
  }

  else
  {
    v358 = v350;
  }

  v359 = swift_conformsToProtocol2();
  if (v359 && v358)
  {
    v360 = *(v359 + 8);
    v361 = v359;
    swift_retain_n();

    *(v357 + 160) = v360(v358, v361);
  }

  else
  {
    swift_retain_n();
  }

  v362 = MEMORY[0x1E69E7360];
  *(v357 + 64) = sub_1AF5A96CC;
  *(v357 + 72) = v354;
  *(v357 + 216) = 0;
  *(v357 + 168) = 0;
  *(v357 + 176) = 0;

  *(v900 + 272) = v357;
  v363 = swift_getKeyPath();
  v364 = swift_getKeyPath();
  v365 = swift_getKeyPath();
  v366 = swift_allocObject();
  v366[4] = sub_1AF5AA2F8;
  v366[5] = v365;
  v366[2] = sub_1AF5A9B84;
  v366[3] = v365;
  v366[6] = v365;
  v367 = swift_allocObject();
  *(v367 + 112) = 1;
  *(v367 + 128) = 0;
  *(v367 + 136) = 0;
  *(v367 + 120) = 0;
  *(v367 + 160) = MEMORY[0x1E69E7CC0];
  *(v367 + 16) = 0xD000000000000012;
  *(v367 + 24) = 0x80000001AFF2A440;
  *(v367 + 32) = v365;
  *(v367 + 40) = v362;
  *(v367 + 48) = 0;
  *(v367 + 56) = 1;
  *(v367 + 58) = 0;
  *(v367 + 184) = 0;
  *(v367 + 188) = 1;
  *(v367 + 192) = 0;
  *(v367 + 196) = 1;
  *(v367 + 200) = 0x1000100000000;
  *(v367 + 208) = 1;
  *(v367 + 96) = 0;
  *(v367 + 104) = 0;
  *(v367 + 144) = xmmword_1AFE22A20;
  *(v367 + 80) = v366;
  *(v367 + 88) = &off_1F2535378;
  *(v367 + 210) = 0;
  if (v899)
  {
    v362 = (*(v899 + 8))();
  }

  v368 = swift_conformsToProtocol2();
  if (v368 && v362)
  {
    v369 = *(v368 + 8);
    v370 = v368;
    swift_retain_n();
    *(v367 + 160) = v369(v362, v370);
  }

  else
  {
    swift_retain_n();
  }

  *(v367 + 64) = sub_1AF5A96AC;
  *(v367 + 72) = v365;
  *(v367 + 216) = 0;
  *(v367 + 168) = 0;
  *(v367 + 176) = 0;
  v371 = swift_allocObject();
  v371[4] = sub_1AF5AA0D4;
  v371[5] = v363;
  v371[2] = sub_1AF5A9594;
  v371[3] = v363;
  v371[6] = v363;
  v372 = swift_allocObject();
  *(v372 + 112) = 1;
  *(v372 + 128) = 0;
  *(v372 + 136) = 0;
  *(v372 + 120) = 0;
  *(v372 + 160) = MEMORY[0x1E69E7CC0];
  *(v372 + 16) = 0xD000000000000012;
  *(v372 + 24) = 0x80000001AFF2A440;
  *(v372 + 32) = v363;
  v373 = &type metadata for FilterMode;
  *(v372 + 40) = &type metadata for FilterMode;
  *(v372 + 48) = 0;
  *(v372 + 56) = 1;
  *(v372 + 58) = 0;
  *(v372 + 184) = 0;
  *(v372 + 188) = 1;
  *(v372 + 192) = 0;
  *(v372 + 196) = 1;
  *(v372 + 200) = 0x1000100000000;
  *(v372 + 208) = 1;
  *(v372 + 96) = v364;
  *(v372 + 104) = 0;
  *(v372 + 144) = xmmword_1AFE22A20;
  *(v372 + 80) = v371;
  *(v372 + 88) = &off_1F2535378;
  *(v372 + 210) = 0;
  if (v898)
  {
    v373 = (*(v898 + 8))();
  }

  v374 = swift_conformsToProtocol2();
  if (v374 && v373)
  {
    v375 = *(v374 + 8);
    v376 = v374;
    swift_retain_n();

    *(v372 + 160) = v375(v373, v376);
  }

  else
  {
    swift_retain_n();
  }

  v377 = MEMORY[0x1E69E7360];
  *(v372 + 64) = sub_1AF5A96B8;
  *(v372 + 72) = v363;
  *(v372 + 168) = 0;
  *(v372 + 176) = 0;
  *(v372 + 216) = v367;

  *(v900 + 280) = v372;
  v378 = swift_getKeyPath();
  v379 = swift_getKeyPath();
  v380 = swift_getKeyPath();
  v381 = swift_allocObject();
  v381[4] = sub_1AF5AA2F8;
  v381[5] = v380;
  v381[2] = sub_1AF5A9B84;
  v381[3] = v380;
  v381[6] = v380;
  v382 = swift_allocObject();
  *(v382 + 112) = 1;
  *(v382 + 128) = 0;
  *(v382 + 136) = 0;
  *(v382 + 120) = 0;
  *(v382 + 160) = MEMORY[0x1E69E7CC0];
  *(v382 + 16) = 0xD000000000000012;
  *(v382 + 24) = 0x80000001AFF2A460;
  *(v382 + 32) = v380;
  *(v382 + 40) = v377;
  *(v382 + 48) = 0;
  *(v382 + 56) = 1;
  *(v382 + 58) = 0;
  *(v382 + 184) = 0;
  *(v382 + 188) = 1;
  *(v382 + 192) = 0;
  *(v382 + 196) = 1;
  *(v382 + 200) = 0x1000100000000;
  *(v382 + 208) = 1;
  *(v382 + 96) = 0;
  *(v382 + 104) = 0;
  *(v382 + 144) = xmmword_1AFE22A20;
  *(v382 + 80) = v381;
  *(v382 + 88) = &off_1F2535378;
  *(v382 + 210) = 0;
  if (v899)
  {
    v377 = (*(v899 + 8))();
  }

  v383 = swift_conformsToProtocol2();
  if (v383 && v377)
  {
    v384 = *(v383 + 8);
    v385 = v383;
    swift_retain_n();
    *(v382 + 160) = v384(v377, v385);
  }

  else
  {
    swift_retain_n();
  }

  *(v382 + 64) = sub_1AF5A96AC;
  *(v382 + 72) = v380;
  *(v382 + 216) = 0;
  *(v382 + 168) = 0;
  *(v382 + 176) = 0;
  v386 = swift_allocObject();
  v386[4] = sub_1AF5AA0D4;
  v386[5] = v378;
  v386[2] = sub_1AF5A9594;
  v386[3] = v378;
  v386[6] = v378;
  v387 = swift_allocObject();
  *(v387 + 112) = 1;
  *(v387 + 128) = 0;
  *(v387 + 136) = 0;
  *(v387 + 120) = 0;
  *(v387 + 160) = MEMORY[0x1E69E7CC0];
  *(v387 + 16) = 0xD000000000000012;
  *(v387 + 24) = 0x80000001AFF2A460;
  *(v387 + 32) = v378;
  v388 = &type metadata for FilterMode;
  *(v387 + 40) = &type metadata for FilterMode;
  *(v387 + 48) = 0;
  *(v387 + 56) = 1;
  *(v387 + 58) = 0;
  *(v387 + 184) = 0;
  *(v387 + 188) = 1;
  *(v387 + 192) = 0;
  *(v387 + 196) = 1;
  *(v387 + 200) = 0x1000100000000;
  *(v387 + 208) = 1;
  *(v387 + 96) = v379;
  *(v387 + 104) = 0;
  *(v387 + 144) = xmmword_1AFE22A20;
  *(v387 + 80) = v386;
  *(v387 + 88) = &off_1F2535378;
  *(v387 + 210) = 0;
  if (v898)
  {
    v388 = (*(v898 + 8))();
  }

  v389 = swift_conformsToProtocol2();
  if (v389 && v388)
  {
    v390 = *(v389 + 8);
    v391 = v389;
    swift_retain_n();

    *(v387 + 160) = v390(v388, v391);
  }

  else
  {
    swift_retain_n();
  }

  v392 = MEMORY[0x1E69E7360];
  *(v387 + 64) = sub_1AF5A96B8;
  *(v387 + 72) = v378;
  *(v387 + 168) = 0;
  *(v387 + 176) = 0;
  *(v387 + 216) = v382;

  *(v900 + 288) = v387;
  v393 = swift_getKeyPath();
  v394 = swift_getKeyPath();
  v395 = swift_getKeyPath();
  v396 = swift_allocObject();
  v396[4] = sub_1AF5AA2F8;
  v396[5] = v395;
  v396[2] = sub_1AF5A9B84;
  v396[3] = v395;
  v396[6] = v395;
  v397 = swift_allocObject();
  *(v397 + 112) = 1;
  *(v397 + 128) = 0;
  *(v397 + 136) = 0;
  *(v397 + 120) = 0;
  *(v397 + 160) = MEMORY[0x1E69E7CC0];
  *(v397 + 16) = 0xD000000000000012;
  *(v397 + 24) = 0x80000001AFF2A480;
  *(v397 + 32) = v395;
  *(v397 + 40) = v392;
  *(v397 + 48) = 0;
  *(v397 + 56) = 1;
  *(v397 + 58) = 0;
  *(v397 + 184) = 0;
  *(v397 + 188) = 1;
  *(v397 + 192) = 0;
  *(v397 + 196) = 1;
  *(v397 + 200) = 0x1000100000000;
  *(v397 + 208) = 1;
  *(v397 + 96) = 0;
  *(v397 + 104) = 0;
  *(v397 + 144) = xmmword_1AFE22A20;
  *(v397 + 80) = v396;
  *(v397 + 88) = &off_1F2535378;
  *(v397 + 210) = 0;
  if (v899)
  {
    v392 = (*(v899 + 8))();
  }

  v398 = swift_conformsToProtocol2();
  if (v398 && v392)
  {
    v399 = *(v398 + 8);
    v400 = v398;
    swift_retain_n();
    *(v397 + 160) = v399(v392, v400);
  }

  else
  {
    swift_retain_n();
  }

  *(v397 + 64) = sub_1AF5A96AC;
  *(v397 + 72) = v395;
  *(v397 + 216) = 0;
  *(v397 + 168) = 0;
  *(v397 + 176) = 0;
  v401 = swift_allocObject();
  v401[4] = sub_1AF5AA0D8;
  v401[5] = v393;
  v401[2] = sub_1AF5A9B98;
  v401[3] = v393;
  v401[6] = v393;
  v402 = swift_allocObject();
  *(v402 + 112) = 1;
  *(v402 + 128) = 0;
  *(v402 + 136) = 0;
  *(v402 + 120) = 0;
  *(v402 + 160) = MEMORY[0x1E69E7CC0];
  *(v402 + 16) = 0xD000000000000012;
  *(v402 + 24) = 0x80000001AFF2A480;
  *(v402 + 32) = v393;
  v403 = &type metadata for TextureMipFilterMode;
  *(v402 + 40) = &type metadata for TextureMipFilterMode;
  *(v402 + 48) = 0;
  *(v402 + 56) = 1;
  *(v402 + 58) = 0;
  *(v402 + 184) = 0;
  *(v402 + 188) = 1;
  *(v402 + 192) = 0;
  *(v402 + 196) = 1;
  *(v402 + 200) = 0x1000100000000;
  *(v402 + 208) = 1;
  *(v402 + 96) = v394;
  *(v402 + 104) = 0;
  *(v402 + 144) = xmmword_1AFE22A20;
  *(v402 + 80) = v401;
  *(v402 + 88) = &off_1F2535378;
  *(v402 + 210) = 0;
  if (v893)
  {
    v403 = (*(v893 + 8))();
  }

  v404 = swift_conformsToProtocol2();
  if (v404 && v403)
  {
    v405 = *(v404 + 8);
    v406 = v404;
    swift_retain_n();

    *(v402 + 160) = v405(v403, v406);
  }

  else
  {
    swift_retain_n();
  }

  v407 = MEMORY[0x1E69E7360];
  *(v402 + 64) = sub_1AF5A96C8;
  *(v402 + 72) = v393;
  *(v402 + 168) = 0;
  *(v402 + 176) = 0;
  *(v402 + 216) = v397;

  *(v900 + 296) = v402;
  v408 = swift_getKeyPath();
  v409 = swift_getKeyPath();
  v410 = swift_getKeyPath();
  v411 = swift_allocObject();
  v411[4] = sub_1AF5AA2F8;
  v411[5] = v410;
  v411[2] = sub_1AF5A9B84;
  v411[3] = v410;
  v411[6] = v410;
  v412 = swift_allocObject();
  *(v412 + 112) = 1;
  *(v412 + 128) = 0;
  *(v412 + 136) = 0;
  *(v412 + 120) = 0;
  *(v412 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v412 + 16), "roughnessWrapS");
  *(v412 + 31) = -18;
  *(v412 + 32) = v410;
  *(v412 + 40) = v407;
  *(v412 + 48) = 0;
  *(v412 + 56) = 1;
  *(v412 + 58) = 0;
  *(v412 + 184) = 0;
  *(v412 + 188) = 1;
  *(v412 + 192) = 0;
  *(v412 + 196) = 1;
  *(v412 + 200) = 0x1000100000000;
  *(v412 + 208) = 1;
  *(v412 + 96) = 0;
  *(v412 + 104) = 0;
  *(v412 + 144) = xmmword_1AFE22A20;
  *(v412 + 80) = v411;
  *(v412 + 88) = &off_1F2535378;
  *(v412 + 210) = 0;
  if (v899)
  {
    v407 = (*(v899 + 8))();
  }

  v413 = swift_conformsToProtocol2();
  if (v413 && v407)
  {
    v414 = *(v413 + 8);
    v415 = v413;
    swift_retain_n();
    *(v412 + 160) = v414(v407, v415);
  }

  else
  {
    swift_retain_n();
  }

  *(v412 + 64) = sub_1AF5A96AC;
  *(v412 + 72) = v410;
  *(v412 + 216) = 0;
  *(v412 + 168) = 0;
  *(v412 + 176) = 0;
  v416 = swift_allocObject();
  v416[4] = sub_1AF5AA0DC;
  v416[5] = v408;
  v416[2] = sub_1AF5A9B90;
  v416[3] = v408;
  v416[6] = v408;
  v417 = swift_allocObject();
  *(v417 + 112) = 1;
  *(v417 + 128) = 0;
  *(v417 + 136) = 0;
  *(v417 + 120) = 0;
  *(v417 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v417 + 16), "roughnessWrapS");
  *(v417 + 31) = -18;
  *(v417 + 32) = v408;
  v418 = &type metadata for AddressMode;
  *(v417 + 40) = &type metadata for AddressMode;
  *(v417 + 48) = 0;
  *(v417 + 56) = 1;
  *(v417 + 58) = 0;
  *(v417 + 184) = 0;
  *(v417 + 188) = 1;
  *(v417 + 192) = 0;
  *(v417 + 196) = 1;
  *(v417 + 200) = 0x1000100000000;
  *(v417 + 208) = 1;
  *(v417 + 96) = v409;
  *(v417 + 104) = 0;
  *(v417 + 144) = xmmword_1AFE22A20;
  *(v417 + 80) = v416;
  *(v417 + 88) = &off_1F2535378;
  *(v417 + 210) = 0;
  if (v897)
  {
    v418 = (*(v897 + 8))();
  }

  v419 = swift_conformsToProtocol2();
  if (v419 && v418)
  {
    v420 = *(v419 + 8);
    v421 = v419;
    swift_retain_n();

    *(v417 + 160) = v420(v418, v421);
  }

  else
  {
    swift_retain_n();
  }

  v422 = MEMORY[0x1E69E7360];
  *(v417 + 64) = sub_1AF5A96BC;
  *(v417 + 72) = v408;
  *(v417 + 168) = 0;
  *(v417 + 176) = 0;
  *(v417 + 216) = v412;

  *(v900 + 304) = v417;
  v423 = swift_getKeyPath();
  v424 = swift_getKeyPath();
  v425 = swift_getKeyPath();
  v426 = swift_allocObject();
  v426[4] = sub_1AF5AA2F8;
  v426[5] = v425;
  v426[2] = sub_1AF5A9B84;
  v426[3] = v425;
  v426[6] = v425;
  v427 = swift_allocObject();
  *(v427 + 112) = 1;
  *(v427 + 128) = 0;
  *(v427 + 136) = 0;
  *(v427 + 120) = 0;
  *(v427 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v427 + 16), "roughnessWrapT");
  *(v427 + 31) = -18;
  *(v427 + 32) = v425;
  *(v427 + 40) = v422;
  *(v427 + 48) = 0;
  *(v427 + 56) = 1;
  *(v427 + 58) = 0;
  *(v427 + 184) = 0;
  *(v427 + 188) = 1;
  *(v427 + 192) = 0;
  *(v427 + 196) = 1;
  *(v427 + 200) = 0x1000100000000;
  *(v427 + 208) = 1;
  *(v427 + 96) = 0;
  *(v427 + 104) = 0;
  *(v427 + 144) = xmmword_1AFE22A20;
  *(v427 + 80) = v426;
  *(v427 + 88) = &off_1F2535378;
  *(v427 + 210) = 0;
  if (v899)
  {
    v422 = (*(v899 + 8))();
  }

  v428 = swift_conformsToProtocol2();
  if (v428 && v422)
  {
    v429 = *(v428 + 8);
    v430 = v428;
    swift_retain_n();
    *(v427 + 160) = v429(v422, v430);
  }

  else
  {
    swift_retain_n();
  }

  *(v427 + 64) = sub_1AF5A96AC;
  *(v427 + 72) = v425;
  *(v427 + 216) = 0;
  *(v427 + 168) = 0;
  *(v427 + 176) = 0;
  v431 = swift_allocObject();
  v431[4] = sub_1AF5AA0DC;
  v431[5] = v423;
  v431[2] = sub_1AF5A9B90;
  v431[3] = v423;
  v431[6] = v423;
  v432 = swift_allocObject();
  *(v432 + 112) = 1;
  *(v432 + 128) = 0;
  *(v432 + 136) = 0;
  *(v432 + 120) = 0;
  *(v432 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v432 + 16), "roughnessWrapT");
  *(v432 + 31) = -18;
  *(v432 + 32) = v423;
  v433 = &type metadata for AddressMode;
  *(v432 + 40) = &type metadata for AddressMode;
  *(v432 + 48) = 0;
  *(v432 + 56) = 1;
  *(v432 + 58) = 0;
  *(v432 + 184) = 0;
  *(v432 + 188) = 1;
  *(v432 + 192) = 0;
  *(v432 + 196) = 1;
  *(v432 + 200) = 0x1000100000000;
  *(v432 + 208) = 1;
  *(v432 + 96) = v424;
  *(v432 + 104) = 0;
  *(v432 + 144) = xmmword_1AFE22A20;
  *(v432 + 80) = v431;
  *(v432 + 88) = &off_1F2535378;
  *(v432 + 210) = 0;
  if (v897)
  {
    v433 = (*(v897 + 8))();
  }

  v434 = swift_conformsToProtocol2();
  if (v434 && v433)
  {
    v435 = *(v434 + 8);
    v436 = v434;
    swift_retain_n();

    *(v432 + 160) = v435(v433, v436);
  }

  else
  {
    swift_retain_n();
  }

  v437 = v895;
  *(v432 + 64) = sub_1AF5A96BC;
  *(v432 + 72) = v423;
  *(v432 + 168) = 0;
  *(v432 + 176) = 0;
  *(v432 + 216) = v427;

  *(v900 + 312) = v432;
  v438 = swift_getKeyPath();
  v439 = swift_getKeyPath();
  v440 = swift_allocObject();
  v440[4] = sub_1AF5A96C0;
  v440[5] = v438;
  v440[2] = sub_1AF5A9B94;
  v440[3] = v438;
  v440[6] = v438;
  v441 = swift_allocObject();
  *(v441 + 112) = 1;
  *(v441 + 128) = 0;
  *(v441 + 136) = 0;
  *(v441 + 120) = 0;
  *(v441 + 160) = MEMORY[0x1E69E7CC0];
  *(v441 + 16) = 0xD000000000000012;
  *(v441 + 24) = 0x80000001AFF2A4A0;
  *(v441 + 32) = v438;
  *(v441 + 40) = v895;
  *(v441 + 48) = 0;
  *(v441 + 56) = 1;
  *(v441 + 58) = 0;
  *(v441 + 184) = 0;
  *(v441 + 188) = 1;
  *(v441 + 192) = 0;
  *(v441 + 196) = 1;
  *(v441 + 200) = 0x1000100000000;
  *(v441 + 208) = 1;
  *(v441 + 96) = v439;
  *(v441 + 104) = 0;
  *(v441 + 144) = xmmword_1AFE22A20;
  *(v441 + 80) = v440;
  *(v441 + 88) = &off_1F2535378;
  *(v441 + 210) = 0;
  if (v894)
  {
    v437 = (*(v892 + 8))();
  }

  v442 = swift_conformsToProtocol2();
  v443 = &type metadata for Entity;
  if (v442 && v437)
  {
    v444 = *(v442 + 8);
    v445 = v442;
    swift_retain_n();

    *(v441 + 160) = v444(v437, v445);
  }

  else
  {
    swift_retain_n();
  }

  *(v441 + 64) = sub_1AF5A96C4;
  *(v441 + 72) = v438;
  *(v441 + 216) = 0;
  *(v441 + 168) = 0;
  *(v441 + 176) = 0;

  *(v900 + 320) = v441;
  v446 = swift_getKeyPath();
  v447 = swift_getKeyPath();
  v448 = swift_allocObject();
  v448[4] = sub_1AF5AA2F8;
  v448[5] = v446;
  v448[2] = sub_1AF5A9B8C;
  v448[3] = v446;
  v448[6] = v446;
  v449 = swift_allocObject();
  *(v449 + 112) = 1;
  *(v449 + 128) = 0;
  *(v449 + 136) = 0;
  *(v449 + 120) = 0;
  *(v449 + 160) = MEMORY[0x1E69E7CC0];
  *(v449 + 16) = 0xD000000000000010;
  *(v449 + 24) = 0x80000001AFF2A4C0;
  *(v449 + 32) = v446;
  *(v449 + 40) = &type metadata for Entity;
  *(v449 + 48) = 0;
  *(v449 + 56) = 1;
  *(v449 + 58) = 256;
  *(v449 + 184) = 0;
  *(v449 + 188) = 1;
  *(v449 + 192) = 0;
  *(v449 + 196) = 1;
  *(v449 + 200) = 0x1000100000000;
  *(v449 + 208) = 1;
  *(v449 + 96) = v447;
  *(v449 + 104) = 0;
  *(v449 + 144) = xmmword_1AFE551B0;
  *(v449 + 80) = v448;
  *(v449 + 88) = &off_1F2535378;
  *(v449 + 210) = 256;
  if (v896)
  {
    v443 = (*(v896 + 8))();
  }

  v450 = swift_conformsToProtocol2();
  if (v450 && v443)
  {
    v451 = *(v450 + 8);
    v452 = v450;
    swift_retain_n();

    *(v449 + 160) = v451(v443, v452);
  }

  else
  {
    swift_retain_n();
  }

  *(v449 + 64) = sub_1AF5A96B4;
  *(v449 + 72) = v446;
  *(v449 + 216) = 0;
  *(v449 + 168) = 0;
  *(v449 + 176) = 0;

  *(v900 + 328) = v449;
  v453 = swift_getKeyPath();
  v454 = swift_getKeyPath();
  v455 = swift_allocObject();
  v455[4] = sub_1AF5A942C;
  v455[5] = v453;
  v455[2] = sub_1AF5A9B9C;
  v455[3] = v453;
  v455[6] = v453;
  v456 = swift_allocObject();
  *(v456 + 112) = 1;
  *(v456 + 128) = 0;
  *(v456 + 136) = 0;
  *(v456 + 120) = 0;
  *(v456 + 160) = MEMORY[0x1E69E7CC0];
  *(v456 + 16) = 0xD000000000000012;
  *(v456 + 24) = 0x80000001AFF2A4E0;
  *(v456 + 32) = v453;
  v457 = MEMORY[0x1E69E6448];
  *(v456 + 40) = MEMORY[0x1E69E6448];
  *(v456 + 48) = 0;
  *(v456 + 56) = 1;
  *(v456 + 58) = 0;
  *(v456 + 184) = 0;
  *(v456 + 188) = 0;
  *(v456 + 192) = 1065353216;
  *(v456 + 196) = 0;
  *(v456 + 200) = 1008981770;
  *(v456 + 204) = 0x10000;
  *(v456 + 208) = 1;
  *(v456 + 96) = v454;
  *(v456 + 104) = 0;
  *(v456 + 144) = xmmword_1AFE22A20;
  *(v456 + 80) = v455;
  *(v456 + 88) = &off_1F2535378;
  *(v456 + 210) = 0;
  if (v891)
  {
    v457 = (*(v891 + 8))();
  }

  v458 = swift_conformsToProtocol2();
  if (v458 && v457)
  {
    v459 = *(v458 + 8);
    v460 = v458;
    swift_retain_n();

    *(v456 + 160) = v459(v457, v460);
  }

  else
  {
    swift_retain_n();
  }

  v461 = MEMORY[0x1E69E7360];
  *(v456 + 64) = sub_1AF5A96CC;
  *(v456 + 72) = v453;
  *(v456 + 216) = 0;
  *(v456 + 168) = 0;
  *(v456 + 176) = 0;

  *(v900 + 336) = v456;
  v462 = swift_getKeyPath();
  v463 = swift_getKeyPath();
  v464 = swift_getKeyPath();
  v465 = swift_allocObject();
  v465[4] = sub_1AF5AA2F8;
  v465[5] = v464;
  v465[2] = sub_1AF5A9B84;
  v465[3] = v464;
  v465[6] = v464;
  v466 = swift_allocObject();
  *(v466 + 112) = 1;
  *(v466 + 128) = 0;
  *(v466 + 136) = 0;
  *(v466 + 120) = 0;
  *(v466 + 160) = MEMORY[0x1E69E7CC0];
  *(v466 + 16) = 0xD000000000000012;
  *(v466 + 24) = 0x80000001AFF2A500;
  *(v466 + 32) = v464;
  *(v466 + 40) = v461;
  *(v466 + 48) = 0;
  *(v466 + 56) = 1;
  *(v466 + 58) = 0;
  *(v466 + 184) = 0;
  *(v466 + 188) = 1;
  *(v466 + 192) = 0;
  *(v466 + 196) = 1;
  *(v466 + 200) = 0x1000100000000;
  *(v466 + 208) = 1;
  *(v466 + 96) = 0;
  *(v466 + 104) = 0;
  *(v466 + 144) = xmmword_1AFE22A20;
  *(v466 + 80) = v465;
  *(v466 + 88) = &off_1F2535378;
  *(v466 + 210) = 0;
  if (v899)
  {
    v461 = (*(v899 + 8))();
  }

  v467 = swift_conformsToProtocol2();
  if (v467 && v461)
  {
    v468 = *(v467 + 8);
    v469 = v467;
    swift_retain_n();
    *(v466 + 160) = v468(v461, v469);
  }

  else
  {
    swift_retain_n();
  }

  *(v466 + 64) = sub_1AF5A96AC;
  *(v466 + 72) = v464;
  *(v466 + 216) = 0;
  *(v466 + 168) = 0;
  *(v466 + 176) = 0;
  v470 = swift_allocObject();
  v470[4] = sub_1AF5AA0D4;
  v470[5] = v462;
  v470[2] = sub_1AF5A9594;
  v470[3] = v462;
  v470[6] = v462;
  v471 = swift_allocObject();
  *(v471 + 112) = 1;
  *(v471 + 128) = 0;
  *(v471 + 136) = 0;
  *(v471 + 120) = 0;
  *(v471 + 160) = MEMORY[0x1E69E7CC0];
  *(v471 + 16) = 0xD000000000000012;
  *(v471 + 24) = 0x80000001AFF2A500;
  *(v471 + 32) = v462;
  v472 = &type metadata for FilterMode;
  *(v471 + 40) = &type metadata for FilterMode;
  *(v471 + 48) = 0;
  *(v471 + 56) = 1;
  *(v471 + 58) = 0;
  *(v471 + 184) = 0;
  *(v471 + 188) = 1;
  *(v471 + 192) = 0;
  *(v471 + 196) = 1;
  *(v471 + 200) = 0x1000100000000;
  *(v471 + 208) = 1;
  *(v471 + 96) = v463;
  *(v471 + 104) = 0;
  *(v471 + 144) = xmmword_1AFE22A20;
  *(v471 + 80) = v470;
  *(v471 + 88) = &off_1F2535378;
  *(v471 + 210) = 0;
  if (v898)
  {
    v472 = (*(v898 + 8))();
  }

  v473 = swift_conformsToProtocol2();
  if (v473 && v472)
  {
    v474 = *(v473 + 8);
    v475 = v473;
    swift_retain_n();

    *(v471 + 160) = v474(v472, v475);
  }

  else
  {
    swift_retain_n();
  }

  v476 = MEMORY[0x1E69E7360];
  *(v471 + 64) = sub_1AF5A96B8;
  *(v471 + 72) = v462;
  *(v471 + 168) = 0;
  *(v471 + 176) = 0;
  *(v471 + 216) = v466;

  *(v900 + 344) = v471;
  v477 = swift_getKeyPath();
  v478 = swift_getKeyPath();
  v479 = swift_getKeyPath();
  v480 = swift_allocObject();
  v480[4] = sub_1AF5AA2F8;
  v480[5] = v479;
  v480[2] = sub_1AF5A9B84;
  v480[3] = v479;
  v480[6] = v479;
  v481 = swift_allocObject();
  *(v481 + 112) = 1;
  *(v481 + 128) = 0;
  *(v481 + 136) = 0;
  *(v481 + 120) = 0;
  *(v481 + 160) = MEMORY[0x1E69E7CC0];
  *(v481 + 16) = 0xD000000000000012;
  *(v481 + 24) = 0x80000001AFF2A520;
  *(v481 + 32) = v479;
  *(v481 + 40) = v476;
  *(v481 + 48) = 0;
  *(v481 + 56) = 1;
  *(v481 + 58) = 0;
  *(v481 + 184) = 0;
  *(v481 + 188) = 1;
  *(v481 + 192) = 0;
  *(v481 + 196) = 1;
  *(v481 + 200) = 0x1000100000000;
  *(v481 + 208) = 1;
  *(v481 + 96) = 0;
  *(v481 + 104) = 0;
  *(v481 + 144) = xmmword_1AFE22A20;
  *(v481 + 80) = v480;
  *(v481 + 88) = &off_1F2535378;
  *(v481 + 210) = 0;
  if (v899)
  {
    v476 = (*(v899 + 8))();
  }

  v482 = swift_conformsToProtocol2();
  if (v482 && v476)
  {
    v483 = *(v482 + 8);
    v484 = v482;
    swift_retain_n();
    *(v481 + 160) = v483(v476, v484);
  }

  else
  {
    swift_retain_n();
  }

  *(v481 + 64) = sub_1AF5A96AC;
  *(v481 + 72) = v479;
  *(v481 + 216) = 0;
  *(v481 + 168) = 0;
  *(v481 + 176) = 0;
  v485 = swift_allocObject();
  v485[4] = sub_1AF5AA0D4;
  v485[5] = v477;
  v485[2] = sub_1AF5A9594;
  v485[3] = v477;
  v485[6] = v477;
  v486 = swift_allocObject();
  *(v486 + 112) = 1;
  *(v486 + 128) = 0;
  *(v486 + 136) = 0;
  *(v486 + 120) = 0;
  *(v486 + 160) = MEMORY[0x1E69E7CC0];
  *(v486 + 16) = 0xD000000000000012;
  *(v486 + 24) = 0x80000001AFF2A520;
  *(v486 + 32) = v477;
  v487 = &type metadata for FilterMode;
  *(v486 + 40) = &type metadata for FilterMode;
  *(v486 + 48) = 0;
  *(v486 + 56) = 1;
  *(v486 + 58) = 0;
  *(v486 + 184) = 0;
  *(v486 + 188) = 1;
  *(v486 + 192) = 0;
  *(v486 + 196) = 1;
  *(v486 + 200) = 0x1000100000000;
  *(v486 + 208) = 1;
  *(v486 + 96) = v478;
  *(v486 + 104) = 0;
  *(v486 + 144) = xmmword_1AFE22A20;
  *(v486 + 80) = v485;
  *(v486 + 88) = &off_1F2535378;
  *(v486 + 210) = 0;
  if (v898)
  {
    v487 = (*(v898 + 8))();
  }

  v488 = swift_conformsToProtocol2();
  if (v488 && v487)
  {
    v489 = *(v488 + 8);
    v490 = v488;
    swift_retain_n();

    *(v486 + 160) = v489(v487, v490);
  }

  else
  {
    swift_retain_n();
  }

  v491 = MEMORY[0x1E69E7360];
  *(v486 + 64) = sub_1AF5A96B8;
  *(v486 + 72) = v477;
  *(v486 + 168) = 0;
  *(v486 + 176) = 0;
  *(v486 + 216) = v481;

  *(v900 + 352) = v486;
  v492 = swift_getKeyPath();
  v493 = swift_getKeyPath();
  v494 = swift_getKeyPath();
  v495 = swift_allocObject();
  v495[4] = sub_1AF5AA2F8;
  v495[5] = v494;
  v495[2] = sub_1AF5A9B84;
  v495[3] = v494;
  v495[6] = v494;
  v496 = swift_allocObject();
  *(v496 + 112) = 1;
  *(v496 + 128) = 0;
  *(v496 + 136) = 0;
  *(v496 + 120) = 0;
  *(v496 + 160) = MEMORY[0x1E69E7CC0];
  *(v496 + 16) = 0xD000000000000012;
  *(v496 + 24) = 0x80000001AFF2A540;
  *(v496 + 32) = v494;
  *(v496 + 40) = v491;
  *(v496 + 48) = 0;
  *(v496 + 56) = 1;
  *(v496 + 58) = 0;
  *(v496 + 184) = 0;
  *(v496 + 188) = 1;
  *(v496 + 192) = 0;
  *(v496 + 196) = 1;
  *(v496 + 200) = 0x1000100000000;
  *(v496 + 208) = 1;
  *(v496 + 96) = 0;
  *(v496 + 104) = 0;
  *(v496 + 144) = xmmword_1AFE22A20;
  *(v496 + 80) = v495;
  *(v496 + 88) = &off_1F2535378;
  *(v496 + 210) = 0;
  if (v899)
  {
    v491 = (*(v899 + 8))();
  }

  v497 = swift_conformsToProtocol2();
  if (v497 && v491)
  {
    v498 = *(v497 + 8);
    v499 = v497;
    swift_retain_n();
    *(v496 + 160) = v498(v491, v499);
  }

  else
  {
    swift_retain_n();
  }

  *(v496 + 64) = sub_1AF5A96AC;
  *(v496 + 72) = v494;
  *(v496 + 216) = 0;
  *(v496 + 168) = 0;
  *(v496 + 176) = 0;
  v500 = swift_allocObject();
  v500[4] = sub_1AF5AA0D8;
  v500[5] = v492;
  v500[2] = sub_1AF5A9B98;
  v500[3] = v492;
  v500[6] = v492;
  v501 = swift_allocObject();
  *(v501 + 112) = 1;
  *(v501 + 128) = 0;
  *(v501 + 136) = 0;
  *(v501 + 120) = 0;
  *(v501 + 160) = MEMORY[0x1E69E7CC0];
  *(v501 + 16) = 0xD000000000000012;
  *(v501 + 24) = 0x80000001AFF2A540;
  *(v501 + 32) = v492;
  v502 = &type metadata for TextureMipFilterMode;
  *(v501 + 40) = &type metadata for TextureMipFilterMode;
  *(v501 + 48) = 0;
  *(v501 + 56) = 1;
  *(v501 + 58) = 0;
  *(v501 + 184) = 0;
  *(v501 + 188) = 1;
  *(v501 + 192) = 0;
  *(v501 + 196) = 1;
  *(v501 + 200) = 0x1000100000000;
  *(v501 + 208) = 1;
  *(v501 + 96) = v493;
  *(v501 + 104) = 0;
  *(v501 + 144) = xmmword_1AFE22A20;
  *(v501 + 80) = v500;
  *(v501 + 88) = &off_1F2535378;
  *(v501 + 210) = 0;
  if (v893)
  {
    v502 = (*(v893 + 8))();
  }

  v503 = swift_conformsToProtocol2();
  if (v503 && v502)
  {
    v504 = *(v503 + 8);
    v505 = v503;
    swift_retain_n();

    *(v501 + 160) = v504(v502, v505);
  }

  else
  {
    swift_retain_n();
  }

  v506 = MEMORY[0x1E69E7360];
  *(v501 + 64) = sub_1AF5A96C8;
  *(v501 + 72) = v492;
  *(v501 + 168) = 0;
  *(v501 + 176) = 0;
  *(v501 + 216) = v496;

  *(v900 + 360) = v501;
  v507 = swift_getKeyPath();
  v508 = swift_getKeyPath();
  v509 = swift_getKeyPath();
  v510 = swift_allocObject();
  v510[4] = sub_1AF5AA2F8;
  v510[5] = v509;
  v510[2] = sub_1AF5A9B84;
  v510[3] = v509;
  v510[6] = v509;
  v511 = swift_allocObject();
  *(v511 + 112) = 1;
  *(v511 + 128) = 0;
  *(v511 + 136) = 0;
  *(v511 + 120) = 0;
  *(v511 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v511 + 16), "metalnessWrapS");
  *(v511 + 31) = -18;
  *(v511 + 32) = v509;
  *(v511 + 40) = v506;
  *(v511 + 48) = 0;
  *(v511 + 56) = 1;
  *(v511 + 58) = 0;
  *(v511 + 184) = 0;
  *(v511 + 188) = 1;
  *(v511 + 192) = 0;
  *(v511 + 196) = 1;
  *(v511 + 200) = 0x1000100000000;
  *(v511 + 208) = 1;
  *(v511 + 96) = 0;
  *(v511 + 104) = 0;
  *(v511 + 144) = xmmword_1AFE22A20;
  *(v511 + 80) = v510;
  *(v511 + 88) = &off_1F2535378;
  *(v511 + 210) = 0;
  if (v899)
  {
    v506 = (*(v899 + 8))();
  }

  v512 = swift_conformsToProtocol2();
  if (v512 && v506)
  {
    v513 = *(v512 + 8);
    v514 = v512;
    swift_retain_n();
    *(v511 + 160) = v513(v506, v514);
  }

  else
  {
    swift_retain_n();
  }

  *(v511 + 64) = sub_1AF5A96AC;
  *(v511 + 72) = v509;
  *(v511 + 216) = 0;
  *(v511 + 168) = 0;
  *(v511 + 176) = 0;
  v515 = swift_allocObject();
  v515[4] = sub_1AF5AA0DC;
  v515[5] = v507;
  v515[2] = sub_1AF5A9B90;
  v515[3] = v507;
  v515[6] = v507;
  v516 = swift_allocObject();
  *(v516 + 112) = 1;
  *(v516 + 128) = 0;
  *(v516 + 136) = 0;
  *(v516 + 120) = 0;
  *(v516 + 160) = MEMORY[0x1E69E7CC0];
  strcpy((v516 + 16), "metalnessWrapS");
  *(v516 + 31) = -18;
  *(v516 + 32) = v507;
  v517 = &type metadata for AddressMode;
  *(v516 + 40) = &type metadata for AddressMode;
  *(v516 + 48) = 0;
  *(v516 + 56) = 1;
  *(v516 + 58) = 0;
  *(v516 + 184) = 0;
  *(v516 + 188) = 1;
  *(v516 + 192) = 0;
  *(v516 + 196) = 1;
  *(v516 + 200) = 0x1000100000000;
  *(v516 + 208) = 1;
  *(v516 + 96) = v508;
  *(v516 + 104) = 0;
  *(v516 + 144) = xmmword_1AFE22A20;
  *(v516 + 80) = v515;
  *(v516 + 88) = &off_1F2535378;
  *(v516 + 210) = 0;
  if (v897)
  {
    v517 = (*(v897 + 8))();
  }

  v518 = swift_conformsToProtocol2();
  if (v518 && v517)
  {
    v519 = *(v518 + 8);
    v520 = v518;
    swift_retain_n();

    *(v516 + 160) = v519(v517, v520);
  }

  else
  {
    swift_retain_n();
  }

  *(v516 + 64) = sub_1AF5A96BC;
  *(v516 + 72) = v507;
  *(v516 + 168) = 0;
  *(v516 + 176) = 0;
  *(v516 + 216) = v511;

  *(v900 + 368) = v516;
  v521 = swift_getKeyPath();
  v522 = swift_getKeyPath();
  v523 = swift_getKeyPath();
  v524 = MEMORY[0x1E69E7CC0];
  v533 = sub_1AF57756C(0x73656E6C6174656DLL, 0xEE00547061725773, v523, 1, 0, 0, 0, 1, v525, v526, v527, v528, v529, v530, v531, v532, 0.0, 1, 0.0, 1, v833, 0, 0, 1, v862, 0, 0, 1, 0, 0, 0, MEMORY[0x1E69E7CC0], 0);

  v542 = sub_1AF577BFC(0x73656E6C6174656DLL, 0xEE00547061725773, v521, 1, 0, v522, 0, 1, v534, v535, v536, v537, v538, v539, v540, v541, 0.0, 1, 0.0, 1, v834, 0, 0, 1, v863, 0, 0, 1, 0, 0, 0, v524, v533);

  *(v900 + 376) = v542;
  v543 = swift_getKeyPath();
  v544 = swift_getKeyPath();
  v553 = sub_1AF577F44(0xD000000000000012, 0x80000001AFF2A560, v543, 1, 0, v544, 0, 1, v545, v546, v547, v548, v549, v550, v551, v552, 0.0, 1, 0.0, 1, v835, 0, 0, 1, v864, 0, 0, 1, 0, 0, 0, v524, 0);

  *(v900 + 384) = v553;
  v554 = swift_getKeyPath();
  v555 = swift_getKeyPath();
  v564 = sub_1AF5782A0(0x65546C616D726F6ELL, 0xED00006572757478, v554, 8, 0, v555, 0, 1, v556, v557, v558, v559, v560, v561, v562, v563, 0.0, 1, 0.0, 1, v836, 0, 0, 1, v865, 0, 0, 1, 256, 0, 0, v524, 0);

  *(v900 + 392) = v564;
  v565 = swift_getKeyPath();
  v566 = swift_getKeyPath();
  v575 = sub_1AF5785E8(0x6E496C616D726F6ELL, 0xEF797469736E6574, v565, 1, 0, v566, 0, 0, v567, v568, v569, v570, v571, v572, v573, v574, 1.0, 0, 0.01, 0, v837, 0, 0, 1, v866, 0, 0, 1, 0, 0, 0, v524, 0);

  *(v900 + 400) = v575;
  v576 = swift_getKeyPath();
  v577 = swift_getKeyPath();
  v578 = swift_getKeyPath();
  v579 = v524;
  v588 = sub_1AF57756C(0x694D6C616D726F6ELL, 0xEF7265746C69466ELL, v578, 1, 0, 0, 0, 1, v580, v581, v582, v583, v584, v585, v586, v587, 0.0, 1, 0.0, 1, v838, 0, 0, 1, v867, 0, 0, 1, 0, 0, 0, v524, 0);

  v597 = sub_1AF578930(0x694D6C616D726F6ELL, 0xEF7265746C69466ELL, v576, 1, 0, v577, 0, 1, v589, v590, v591, v592, v593, v594, v595, v596, 0.0, 1, 0.0, 1, v839, 0, 0, 1, v868, 0, 0, 1, 0, 0, 0, v579, v588);

  *(v900 + 408) = v597;
  v598 = swift_getKeyPath();
  v599 = swift_getKeyPath();
  v600 = swift_getKeyPath();
  v609 = sub_1AF57756C(0x614D6C616D726F6ELL, 0xEF7265746C694667, v600, 1, 0, 0, 0, 1, v601, v602, v603, v604, v605, v606, v607, v608, 0.0, 1, 0.0, 1, v840, 0, 0, 1, v869, 0, 0, 1, 0, 0, 0, v579, 0);

  v618 = sub_1AF578930(0x614D6C616D726F6ELL, 0xEF7265746C694667, v598, 1, 0, v599, 0, 1, v610, v611, v612, v613, v614, v615, v616, v617, 0.0, 1, 0.0, 1, v841, 0, 0, 1, v870, 0, 0, 1, 0, 0, 0, v579, v609);

  *(v900 + 416) = v618;
  v619 = swift_getKeyPath();
  v620 = swift_getKeyPath();
  v621 = swift_getKeyPath();
  v622 = v579;
  v631 = sub_1AF57756C(0x694D6C616D726F6ELL, 0xEF7265746C694670, v621, 1, 0, 0, 0, 1, v623, v624, v625, v626, v627, v628, v629, v630, 0.0, 1, 0.0, 1, v842, 0, 0, 1, v871, 0, 0, 1, 0, 0, 0, v579, 0);

  v640 = sub_1AF5778B4(0x694D6C616D726F6ELL, 0xEF7265746C694670, v619, 1, 0, v620, 0, 1, v632, v633, v634, v635, v636, v637, v638, v639, 0.0, 1, 0.0, 1, v843, 0, 0, 1, v872, 0, 0, 1, 0, 0, 0, v579, v631);

  *(v900 + 424) = v640;
  v641 = swift_getKeyPath();
  v642 = swift_getKeyPath();
  v643 = swift_getKeyPath();
  v652 = sub_1AF57756C(0x72576C616D726F6ELL, 0xEB00000000537061, v643, 1, 0, 0, 0, 1, v644, v645, v646, v647, v648, v649, v650, v651, 0.0, 1, 0.0, 1, v844, 0, 0, 1, v873, 0, 0, 1, 0, 0, 0, v579, 0);

  v661 = sub_1AF577BFC(0x72576C616D726F6ELL, 0xEB00000000537061, v641, 1, 0, v642, 0, 1, v653, v654, v655, v656, v657, v658, v659, v660, 0.0, 1, 0.0, 1, v845, 0, 0, 1, v874, 0, 0, 1, 0, 0, 0, v579, v652);

  *(v900 + 432) = v661;
  v662 = swift_getKeyPath();
  v663 = swift_getKeyPath();
  v664 = swift_getKeyPath();
  v673 = sub_1AF57756C(0x72576C616D726F6ELL, 0xEB00000000547061, v664, 1, 0, 0, 0, 1, v665, v666, v667, v668, v669, v670, v671, v672, 0.0, 1, 0.0, 1, v846, 0, 0, 1, v875, 0, 0, 1, 0, 0, 0, v579, 0);

  v682 = sub_1AF577BFC(0x72576C616D726F6ELL, 0xEB00000000547061, v662, 1, 0, v663, 0, 1, v674, v675, v676, v677, v678, v679, v680, v681, 0.0, 1, 0.0, 1, v847, 0, 0, 1, v876, 0, 0, 1, 0, 0, 0, v579, v673);

  *(v900 + 440) = v682;
  v683 = swift_getKeyPath();
  v684 = swift_getKeyPath();
  v693 = sub_1AF577F44(0x63536C616D726F6ELL, 0xEF73616942656C61, v683, 1, 0, v684, 0, 1, v685, v686, v687, v688, v689, v690, v691, v692, 0.0, 1, 0.0, 1, v848, 0, 0, 1, v877, 0, 0, 1, 0, 0, 0, v579, 0);

  *(v900 + 448) = v693;
  v694 = swift_getKeyPath();
  v695 = swift_getKeyPath();
  v704 = sub_1AF5782A0(0xD000000000000010, 0x80000001AFF2A580, v694, 8, 0, v695, 0, 1, v696, v697, v698, v699, v700, v701, v702, v703, 0.0, 1, 0.0, 1, v849, 0, 0, 1, v878, 0, 0, 1, 256, 0, 0, v579, 0);

  *(v900 + 456) = v704;
  v705 = swift_getKeyPath();
  v706 = swift_getKeyPath();
  v715 = sub_1AF5785E8(0xD000000000000012, 0x80000001AFF29620, v705, 1, 0, v706, 0, 0, v707, v708, v709, v710, v711, v712, v713, v714, 1.0, 0, 0.01, 0, v850, 0, 0, 1, v879, 0, 0, 1, 0, 0, 0, v579, 0);

  *(v900 + 464) = v715;
  v716 = swift_getKeyPath();
  v717 = swift_getKeyPath();
  v718 = swift_getKeyPath();
  v727 = sub_1AF57756C(0xD000000000000012, 0x80000001AFF2A5A0, v718, 1, 0, 0, 0, 1, v719, v720, v721, v722, v723, v724, v725, v726, 0.0, 1, 0.0, 1, v851, 0, 0, 1, v880, 0, 0, 1, 0, 0, 0, v622, 0);

  v736 = sub_1AF578930(0xD000000000000012, 0x80000001AFF2A5A0, v716, 1, 0, v717, 0, 1, v728, v729, v730, v731, v732, v733, v734, v735, 0.0, 1, 0.0, 1, v852, 0, 0, 1, v881, 0, 0, 1, 0, 0, 0, v622, v727);

  *(v900 + 472) = v736;
  v737 = swift_getKeyPath();
  v738 = swift_getKeyPath();
  v739 = swift_getKeyPath();
  v748 = sub_1AF57756C(0xD000000000000012, 0x80000001AFF2A5C0, v739, 1, 0, 0, 0, 1, v740, v741, v742, v743, v744, v745, v746, v747, 0.0, 1, 0.0, 1, v853, 0, 0, 1, v882, 0, 0, 1, 0, 0, 0, v622, 0);

  v757 = sub_1AF578930(0xD000000000000012, 0x80000001AFF2A5C0, v737, 1, 0, v738, 0, 1, v749, v750, v751, v752, v753, v754, v755, v756, 0.0, 1, 0.0, 1, v854, 0, 0, 1, v883, 0, 0, 1, 0, 0, 0, v622, v748);

  *(v900 + 480) = v757;
  v758 = swift_getKeyPath();
  v759 = swift_getKeyPath();
  v760 = swift_getKeyPath();
  v769 = sub_1AF57756C(0xD000000000000012, 0x80000001AFF2A5E0, v760, 1, 0, 0, 0, 1, v761, v762, v763, v764, v765, v766, v767, v768, 0.0, 1, 0.0, 1, v855, 0, 0, 1, v884, 0, 0, 1, 0, 0, 0, v622, 0);

  v778 = sub_1AF5778B4(0xD000000000000012, 0x80000001AFF2A5E0, v758, 1, 0, v759, 0, 1, v770, v771, v772, v773, v774, v775, v776, v777, 0.0, 1, 0.0, 1, v856, 0, 0, 1, v885, 0, 0, 1, 0, 0, 0, v622, v769);

  *(v900 + 488) = v778;
  v779 = swift_getKeyPath();
  v780 = swift_getKeyPath();
  v781 = swift_getKeyPath();
  v790 = sub_1AF57756C(0x6F6973756C63636FLL, 0xEE0053706172576ELL, v781, 1, 0, 0, 0, 1, v782, v783, v784, v785, v786, v787, v788, v789, 0.0, 1, 0.0, 1, v857, 0, 0, 1, v886, 0, 0, 1, 0, 0, 0, v622, 0);

  v799 = sub_1AF577BFC(0x6F6973756C63636FLL, 0xEE0053706172576ELL, v779, 1, 0, v780, 0, 1, v791, v792, v793, v794, v795, v796, v797, v798, 0.0, 1, 0.0, 1, v858, 0, 0, 1, v887, 0, 0, 1, 0, 0, 0, v622, v790);

  *(v900 + 496) = v799;
  v800 = swift_getKeyPath();
  v801 = swift_getKeyPath();
  v802 = swift_getKeyPath();
  v811 = sub_1AF57756C(0x6F6973756C63636FLL, 0xEE0054706172576ELL, v802, 1, 0, 0, 0, 1, v803, v804, v805, v806, v807, v808, v809, v810, 0.0, 1, 0.0, 1, v859, 0, 0, 1, v888, 0, 0, 1, 0, 0, 0, v622, 0);

  v820 = sub_1AF577BFC(0x6F6973756C63636FLL, 0xEE0054706172576ELL, v800, 1, 0, v801, 0, 1, v812, v813, v814, v815, v816, v817, v818, v819, 0.0, 1, 0.0, 1, v860, 0, 0, 1, v889, 0, 0, 1, 0, 0, 0, v622, v811);

  *(v900 + 504) = v820;
  v821 = swift_getKeyPath();
  v822 = swift_getKeyPath();
  v831 = sub_1AF577F44(0xD000000000000012, 0x80000001AFF2A600, v821, 1, 0, v822, 0, 1, v823, v824, v825, v826, v827, v828, v829, v830, 0.0, 1, 0.0, 1, v861, 0, 0, 1, v890, 0, 0, 1, 0, 0, 0, v622, 0);

  *(v900 + 512) = v831;
  qword_1EB6C2DB8 = v900;
  return result;
}

uint64_t sub_1AF4B7080()
{
  if (*(v0 + 44))
  {
    return *(v0 + 40);
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1AF4B7098(uint64_t result)
{
  if (result == 3)
  {
    if (*(v1 + 44))
    {
      *(v1 + 40) = 1056964608;
      *(v1 + 44) = 0;
    }
  }

  else
  {
    if (result == 2)
    {
      *(v1 + 40) = 2;
    }

    else
    {
      *(v1 + 40) = result == 1;
    }

    *(v1 + 44) = 1;
  }

  return result;
}

uint64_t sub_1AF4B70F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 && object_getClass(*(a1 + 24)) == _TtC3VFX16PrelitParameters)
  {
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for PrelitParameters();
    result = swift_allocObject();
    v3 = result;
    *&v5 = 0xFFFFFFFFLL;
    *(&v5 + 1) = 0xFFFFFFFFLL;
    *(result + 16) = v5;
    *(result + 32) = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1AF4B716C()
{
  if (*(v0 + 24) && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {

    swift_unknownObjectRetain();
  }

  else
  {

    sub_1AF892268();
  }
}

void sub_1AF4B71D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 && object_getClass(*(a1 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v3 = v4;
  }

  *a2 = v3;
}

BOOL sub_1AF4B7240()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 32);
  v5 = *(v2 + 36);

  return v4 != -1 || v5 != 0;
}

unsigned __int8 *sub_1AF4B730C(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  *(a2 + 2) = v3;
  return result;
}

BOOL sub_1AF4B7390()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 80);
  v5 = *(v2 + 84);

  return v4 != -1 || v5 != 0;
}

BOOL sub_1AF4B7410()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 112);
  v5 = *(v2 + 116);

  return v4 != -1 || v5 != 0;
}

BOOL sub_1AF4B7494()
{
  if (*v0)
  {
    return 0;
  }

  *v11 = *(v0 + 24);
  v2 = v11[0];
  if (v11[0] && object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
  {
    sub_1AF584E94(v11, v10, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = v2[304];
  sub_1AF584E94(v11, v10, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);

  if (v4 == 1)
  {
    sub_1AF5857CC(v11, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
    return 0;
  }

  if (v11[0])
  {
    v5 = v11[0];
    if (object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
    {
      v6 = v5;
      goto LABEL_14;
    }

    sub_1AF5857CC(v11, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  sub_1AF892268();
LABEL_14:
  v7 = v6[40];
  v8 = v6[41];

  return v7 != -1 || v8 != 0;
}

BOOL sub_1AF4B7630()
{
  if (*v0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = *(v2 + 256);
  v5 = *(v2 + 260);

  return v4 != -1 || v5 != 0;
}

uint64_t sub_1AF4B76B4()
{
  if (*v0)
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + 24);
    if (v2 && object_getClass(*(v0 + 24)) == _TtC3VFX13PBRParameters)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_1AF892268();
      v2 = v3;
    }

    v4 = *(v2 + 304);

    v1 = v4 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1AF4B7728@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*result)
  {
    v3 = 0;
  }

  else
  {
    v4 = *(result + 24);
    if (v4 && object_getClass(*(result + 24)) == _TtC3VFX13PBRParameters)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      sub_1AF892268();
      v4 = v5;
    }

    v6 = *(v4 + 304);

    v3 = v6 ^ 1;
  }

  *a2 = v3 & 1;
  return result;
}

BOOL sub_1AF4B77AC()
{
  if (*v0)
  {
    return 0;
  }

  *v11 = *(v0 + 24);
  v2 = v11[0];
  if (v11[0] && object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
  {
    sub_1AF584E94(v11, v10, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  else
  {
    sub_1AF892268();
    v2 = v3;
  }

  v4 = v2[304];
  sub_1AF584E94(v11, v10, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);

  if (v4 == 1)
  {
    sub_1AF5857CC(v11, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
    return 0;
  }

  if (v11[0])
  {
    v5 = v11[0];
    if (object_getClass(v11[0]) == _TtC3VFX13PBRParameters)
    {
      v6 = v5;
      goto LABEL_14;
    }

    sub_1AF5857CC(v11, &unk_1ED7223C8, &unk_1ED7223D0, &protocol descriptor for MaterialParametersProvider, sub_1AF582518);
  }

  sub_1AF892268();
LABEL_14:
  v7 = v6[52];
  v8 = v6[53];

  return v7 != -1 || v8 != 0;
}

uint64_t sub_1AF4B7A6C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF585548;
  v4[5] = v2;
  v4[2] = sub_1AF585584;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF5855B4;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5855F4;
  v8[5] = KeyPath;
  v8[2] = sub_1AF585620;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 0;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 0;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  *(v9 + 64) = sub_1AF585650;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2DC0 = v0;
  return result;
}

uint64_t sub_1AF4B7F4C(uint64_t a1)
{
  v2 = sub_1AFDFC128();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, a1, v4);
  return sub_1AF8D9AD4(v6);
}

uint64_t sub_1AF4B80C4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  sub_1AF51B13C(0, &qword_1EB63A738, sub_1AF58593C, type metadata accessor for EntityGetSet);
  v2 = swift_allocObject();
  v2[4] = sub_1AF5858E0;
  v2[5] = KeyPath;
  v2[2] = sub_1AF58590C;
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
  sub_1AF58593C();
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x7463656A626FLL;
  *(v3 + 24) = 0xE600000000000000;
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
  v5 = sub_1AF0D4478(0, &qword_1ED72F7F0);
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  v7 = 0;
  if (v6 && v5)
  {
    *(v3 + 160) = (*(v6 + 8))(v5, v6);

    v7 = *(v3 + 64);
  }

  *(v3 + 64) = sub_1AF5859A4;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v7);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  qword_1EB6C2DC8 = v0;
  return result;
}

uint64_t sub_1AF4B8338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF44596C(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(v5);
  if (!Strong)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
LABEL_4:
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1AF4B83C8()
{
  if (qword_1EB636D90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4B8450()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF585B4C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF585B78;
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
  *(v4 + 16) = 0x7461507465737361;
  *(v4 + 24) = 0xE900000000000068;
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

  *(v4 + 64) = sub_1AF585BA8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  qword_1EB6C2DD0 = v0;
  return result;
}

uint64_t sub_1AF4B878C()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55220;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for Entity;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF585C9C;
  v3[5] = KeyPath;
  v3[2] = sub_1AF585CD0;
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

  v7 = *(v4 + 64);
  *(v4 + 64) = sub_1AF585D2C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6530];
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF585C9C;
  v10[5] = v8;
  v10[2] = sub_1AF585D6C;
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
  *(v11 + 16) = 0x746E756F63;
  *(v11 + 24) = 0xE500000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 0;
  *(v11 + 184) = 1065353216;
  *(v11 + 188) = 0;
  *(v11 + 192) = 1232348160;
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

  v14 = *(v11 + 64);
  *(v11 + 64) = sub_1AF585DC8;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(v14);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;

  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E7360];
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AF5AA2FC;
  v18[5] = v16;
  v18[2] = sub_1AF585E08;
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
  *(v19 + 16) = 0xD000000000000011;
  *(v19 + 24) = 0x80000001AFF2A6E0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
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
  *(v19 + 64) = sub_1AF585E64;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(v22);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;

  v23 = &type metadata for PointCache.Distribution;
  sub_1AF5A9240(0, &unk_1EB63A770, &type metadata for PointCache.Distribution, type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF585EA4;
  v24[5] = v15;
  v24[2] = sub_1AF585ED0;
  v24[3] = v15;
  v24[6] = v15;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  strcpy((v25 + 16), "distribution");
  *(v25 + 29) = 0;
  *(v25 + 30) = -5120;
  *(v25 + 32) = v15;
  *(v25 + 40) = &type metadata for PointCache.Distribution;
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

  *(v25 + 64) = sub_1AF585F2C;
  *(v25 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = v19;
  *(v0 + 48) = v25;
  v28 = swift_getKeyPath();
  v29 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v30 = swift_allocObject();
  v30[4] = sub_1AF585F6C;
  v30[5] = v28;
  v30[2] = sub_1AF585F98;
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
  *(v31 + 16) = 0x6E6F697469736F50;
  *(v31 + 24) = 0xE900000000000073;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
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
  v32 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v32)
  {
    v33 = (*(v32 + 8))();
  }

  else
  {
    v33 = v29;
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v33)
  {
    *(v31 + 160) = (*(v34 + 8))(v33, v34);
  }

  *(v31 + 64) = sub_1AF585FF4;
  *(v31 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  *(v0 + 56) = v31;
  v35 = swift_getKeyPath();
  v36 = swift_allocObject();
  v36[4] = sub_1AF5AA0E4;
  v36[5] = v35;
  v36[2] = sub_1AF5A9BB0;
  v36[3] = v35;
  v36[6] = v35;
  v37 = swift_allocObject();
  *(v37 + 112) = 1;
  *(v37 + 128) = 0;
  *(v37 + 136) = 0;
  *(v37 + 120) = 0;
  *(v37 + 160) = MEMORY[0x1E69E7CC0];
  *(v37 + 168) = 0;
  *(v37 + 216) = 0;
  *(v37 + 176) = 0;
  *(v37 + 16) = 0x736C616D726F4ELL;
  *(v37 + 24) = 0xE700000000000000;
  *(v37 + 32) = v35;
  *(v37 + 40) = v29;
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
  if (v32)
  {
    v38 = (*(v32 + 8))();
  }

  else
  {
    v38 = v29;
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v38)
  {
    *(v37 + 160) = (*(v39 + 8))(v38, v39);
  }

  *(v37 + 64) = sub_1AF5A96E8;
  *(v37 + 72) = v35;
  sub_1AF0FB8EC(0);
  *(v37 + 168) = 0;
  *(v37 + 176) = 0;

  *(v37 + 216) = 0;
  *(v0 + 64) = v37;
  v40 = swift_getKeyPath();
  v41 = swift_allocObject();
  v41[4] = sub_1AF5AA0E4;
  v41[5] = v40;
  v41[2] = sub_1AF5A9BB0;
  v41[3] = v40;
  v41[6] = v40;
  v42 = swift_allocObject();
  *(v42 + 112) = 1;
  *(v42 + 128) = 0;
  *(v42 + 136) = 0;
  *(v42 + 120) = 0;
  *(v42 + 160) = MEMORY[0x1E69E7CC0];
  *(v42 + 168) = 0;
  *(v42 + 216) = 0;
  *(v42 + 176) = 0;
  *(v42 + 16) = 0x73726F6C6F43;
  *(v42 + 24) = 0xE600000000000000;
  *(v42 + 32) = v40;
  *(v42 + 40) = v29;
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
  if (v32)
  {
    v43 = (*(v32 + 8))();
  }

  else
  {
    v43 = v29;
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v43)
  {
    *(v42 + 160) = (*(v44 + 8))(v43, v44);
  }

  *(v42 + 64) = sub_1AF5A96E8;
  *(v42 + 72) = v40;
  sub_1AF0FB8EC(0);
  *(v42 + 168) = 0;
  *(v42 + 176) = 0;

  *(v42 + 216) = 0;
  *(v0 + 72) = v42;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AF5AA0E4;
  v46[5] = v45;
  v46[2] = sub_1AF5A9BB0;
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
  *(v47 + 16) = 7558741;
  *(v47 + 24) = 0xE300000000000000;
  *(v47 + 32) = v45;
  *(v47 + 40) = v29;
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
  if (v32)
  {
    v48 = (*(v32 + 8))();
  }

  else
  {
    v48 = v29;
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    *(v47 + 160) = (*(v49 + 8))(v48, v49);
  }

  *(v47 + 64) = sub_1AF5A96E8;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v0 + 80) = v47;
  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  v51[4] = sub_1AF5AA0E4;
  v51[5] = v50;
  v51[2] = sub_1AF5A9BB0;
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
  *(v52 + 16) = 0x73746E696F4ALL;
  *(v52 + 24) = 0xE600000000000000;
  *(v52 + 32) = v50;
  *(v52 + 40) = v29;
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
  if (v32)
  {
    v53 = (*(v32 + 8))();
  }

  else
  {
    v53 = v29;
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v53)
  {
    *(v52 + 160) = (*(v54 + 8))(v53, v54);
  }

  *(v52 + 64) = sub_1AF5A96E8;
  *(v52 + 72) = v50;
  sub_1AF0FB8EC(0);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;
  *(v0 + 88) = v52;
  v55 = swift_getKeyPath();
  v56 = swift_allocObject();
  v56[4] = sub_1AF5AA0E4;
  v56[5] = v55;
  v56[2] = sub_1AF5A9BB0;
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
  *(v57 + 16) = 0x656C676E61697254;
  *(v57 + 24) = 0xE900000000000073;
  *(v57 + 32) = v55;
  *(v57 + 40) = v29;
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
  if (v32)
  {
    v29 = (*(v32 + 8))();
  }

  v58 = swift_conformsToProtocol2();
  if (v58 && v29)
  {
    *(v57 + 160) = (*(v58 + 8))(v29, v58);
  }

  *(v57 + 64) = sub_1AF5A96E8;
  *(v57 + 72) = v55;
  sub_1AF0FB8EC(0);
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;

  *(v57 + 216) = 0;
  *(v0 + 96) = v57;
  v59 = swift_getKeyPath();
  v60 = MEMORY[0x1E69E76D8];
  sub_1AF5A9240(0, &unk_1EB643A50, MEMORY[0x1E69E76D8], type metadata accessor for EntityGetSet);
  v61 = swift_allocObject();
  v61[4] = sub_1AF5AA2FC;
  v61[5] = v59;
  v61[2] = sub_1AF586034;
  v61[3] = v59;
  v61[6] = v59;
  v62 = swift_allocObject();
  *(v62 + 112) = 1;
  *(v62 + 128) = 0;
  *(v62 + 136) = 0;
  *(v62 + 120) = 0;
  *(v62 + 160) = MEMORY[0x1E69E7CC0];
  *(v62 + 168) = 0;
  *(v62 + 216) = 0;
  *(v62 + 176) = 0;
  *(v62 + 16) = 1684366675;
  *(v62 + 24) = 0xE400000000000000;
  *(v62 + 32) = v59;
  *(v62 + 40) = v60;
  *(v62 + 48) = 24;
  *(v62 + 56) = 0;
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
  v63 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v63)
  {
    v60 = (*(v63 + 8))();
  }

  v64 = swift_conformsToProtocol2();
  if (v64 && v60)
  {
    *(v62 + 160) = (*(v64 + 8))(v60, v64);
  }

  *(v62 + 64) = sub_1AF586090;
  *(v62 + 72) = v59;
  sub_1AF0FB8EC(0);
  *(v62 + 168) = 0;
  *(v62 + 176) = 0;

  *(v62 + 216) = 0;
  *(v0 + 104) = v62;
  qword_1EB6C2DD8 = v0;
  return result;
}

uint64_t sub_1AF4B9C4C(uint64_t result)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1AF4B9D44()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF586344;
  v4[5] = v2;
  v4[2] = sub_1AF586380;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF5863B0;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5863F0;
  v8[5] = KeyPath;
  v8[2] = sub_1AF58641C;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  *(v9 + 64) = sub_1AF58644C;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2928 = v0;
  return result;
}

uint64_t sub_1AF4BA1EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AF4BA1F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1AF8E1C20(v1, v2);
}

uint64_t sub_1AF4BA2E8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5865C4;
  v4[5] = v2;
  v4[2] = sub_1AF5865F0;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF586620;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF586660;
  v8[5] = KeyPath;
  v8[2] = sub_1AF586668;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v13 = swift_conformsToProtocol2();
  if (v13 && v10)
  {
    *(v9 + 160) = (*(v13 + 8))(v10, v13);
  }

  v14 = *(v9 + 64);
  *(v9 + 64) = sub_1AF586698;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v14);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AF5866E4;
  v17[5] = v15;
  v17[2] = sub_1AF586710;
  v17[3] = v15;
  v17[6] = v15;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 168) = 0;
  *(v18 + 160) = v12;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 2036427888;
  *(v18 + 24) = 0xE400000000000000;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = 48;
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
  *(v18 + 144) = xmmword_1AFE55120;
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

  *(v18 + 64) = sub_1AF58676C;
  *(v18 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v0 + 40) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  v23[4] = sub_1AF5AA0EC;
  v23[5] = v22;
  v23[2] = sub_1AF5A9BC8;
  v23[3] = v22;
  v23[6] = v22;
  v24 = swift_allocObject();
  *(v24 + 112) = 1;
  *(v24 + 128) = 0;
  *(v24 + 136) = 0;
  *(v24 + 120) = 0;
  *(v24 + 160) = v12;
  *(v24 + 168) = 0;
  *(v24 + 216) = 0;
  *(v24 + 176) = 0;
  *(v24 + 16) = 0x73706F6F6CLL;
  *(v24 + 24) = 0xE500000000000000;
  *(v24 + 32) = v22;
  *(v24 + 40) = v16;
  *(v24 + 48) = 50;
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

  *(v24 + 64) = sub_1AF5A96F8;
  *(v24 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v24 + 168) = 0;
  *(v24 + 176) = 0;

  *(v24 + 216) = 0;
  *(v0 + 48) = v24;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  v28[4] = sub_1AF5AA0EC;
  v28[5] = v27;
  v28[2] = sub_1AF5A9BC8;
  v28[3] = v27;
  v28[6] = v27;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = v12;
  *(v29 + 168) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  *(v29 + 16) = 1702131053;
  *(v29 + 24) = 0xE400000000000000;
  *(v29 + 32) = v27;
  *(v29 + 40) = v16;
  *(v29 + 48) = 49;
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

  v30 = swift_conformsToProtocol2();
  if (v30 && v16)
  {
    *(v29 + 160) = (*(v30 + 8))(v16, v30);
  }

  *(v29 + 64) = sub_1AF5A96F8;
  *(v29 + 72) = v27;
  sub_1AF0FB8EC(0);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;
  *(v0 + 56) = v29;
  qword_1EB6C2818 = v0;
  return result;
}

uint64_t sub_1AF4BACF4()
{
  if (qword_1EB632180 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4BADE4()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF5869E8;
  v4[5] = v2;
  v4[2] = sub_1AF586A24;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF586A54;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF586A94;
  v8[5] = KeyPath;
  v8[2] = sub_1AF586AC0;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  *(v9 + 64) = sub_1AF586AF0;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2DE0 = v0;
  return result;
}

uint64_t sub_1AF4BB344()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55130;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF586CC0;
  v3[5] = KeyPath;
  v3[2] = sub_1AF586CEC;
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
  *(v4 + 16) = 2036427888;
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
  *(v4 + 144) = xmmword_1AFE55120;
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

  *(v4 + 64) = sub_1AF586D48;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA0F0;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BCC;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 168) = 0;
  *(v10 + 160) = MEMORY[0x1E69E7CC0];
  *(v10 + 216) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 0x73706F6F6CLL;
  *(v10 + 24) = 0xE500000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v2;
  *(v10 + 48) = 2;
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

  *(v10 + 64) = sub_1AF5A9714;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5AA0F0;
  v14[5] = v13;
  v14[2] = sub_1AF5A9BCC;
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
  *(v15 + 16) = 1702131053;
  *(v15 + 24) = 0xE400000000000000;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 1;
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
    v2 = (*(v5 + 8))();
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v2)
  {
    *(v15 + 160) = (*(v16 + 8))(v2, v16);
  }

  *(v15 + 64) = sub_1AF5A9714;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  qword_1EB6C2DE8 = v0;
  return result;
}

uint64_t sub_1AF4BB970()
{
  if (qword_1EB636DB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF4BBA60()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF586DE8;
  v3[5] = KeyPath;
  v3[2] = sub_1AF586E14;
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
  *(v4 + 16) = 0x6D726F6665766177;
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

  *(v4 + 64) = sub_1AF586E70;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = swift_allocObject();
  v9[4] = sub_1AF5AA0F4;
  v9[5] = v8;
  v9[2] = sub_1AF5A9BD0;
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
  *(v10 + 16) = 0x6D75727463657073;
  *(v10 + 24) = 0xE800000000000000;
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

  *(v10 + 64) = sub_1AF5A9718;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;
  *(v0 + 40) = v10;
  v13 = swift_getKeyPath();
  v14 = swift_allocObject();
  v14[4] = sub_1AF5AA0F4;
  v14[5] = v13;
  v14[2] = sub_1AF5A9BD0;
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
  strcpy((v15 + 16), "spectrumLowRes");
  *(v15 + 31) = -18;
  *(v15 + 32) = v13;
  *(v15 + 40) = v2;
  *(v15 + 48) = 2;
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

  *(v15 + 64) = sub_1AF5A9718;
  *(v15 + 72) = v13;
  sub_1AF0FB8EC(0);
  *(v15 + 168) = 0;
  *(v15 + 176) = 0;

  *(v15 + 216) = 0;
  *(v0 + 48) = v15;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5AA0F4;
  v19[5] = v18;
  v19[2] = sub_1AF5A9BD0;
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
  *(v20 + 16) = 7564658;
  *(v20 + 24) = 0xE300000000000000;
  *(v20 + 32) = v18;
  *(v20 + 40) = v2;
  *(v20 + 48) = 3;
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

  *(v20 + 64) = sub_1AF5A9718;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(0);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;
  *(v0 + 56) = v20;
  qword_1EB6C2DF0 = v0;
  return result;
}

uint64_t sub_1AF4BC2E8()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  sub_1AF586F6C();
  v2 = swift_allocObject();
  v2[4] = sub_1AF586F10;
  v2[5] = KeyPath;
  v2[2] = sub_1AF586F3C;
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
  sub_1AF5A9240(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  v6 = v5;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 0x6D726F6665766177;
  *(v3 + 24) = 0xE800000000000000;
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
  *(v3 + 144) = xmmword_1AFE22A20;
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
  *(v3 + 64) = sub_1AF586FE8;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v11);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AF5AA0F8;
  v13[5] = v12;
  v13[2] = sub_1AF5A971C;
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
  *(v14 + 16) = 0x647574696E67616DLL;
  *(v14 + 24) = 0xEA00000000007365;
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
  v15 = v6;
  if (v8)
  {
    v15 = (*(v7 + 8))(v8, v7);
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    *(v14 + 160) = (*(v16 + 8))(v15, v16);
  }

  v17 = *(v14 + 64);
  *(v14 + 64) = sub_1AF5A9720;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v17);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v18 = swift_getKeyPath();
  v19 = swift_allocObject();
  v19[4] = sub_1AF5AA0F8;
  v19[5] = v18;
  v19[2] = sub_1AF5A971C;
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
  *(v20 + 24) = 0x80000001AFF22450;
  *(v20 + 32) = v18;
  *(v20 + 40) = v6;
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
  if (v8)
  {
    v6 = (*(v7 + 8))(v8, v7);
  }

  v21 = swift_conformsToProtocol2();
  if (v21 && v6)
  {
    *(v20 + 160) = (*(v21 + 8))(v6, v21);
  }

  v22 = *(v20 + 64);
  *(v20 + 64) = sub_1AF5A9720;
  *(v20 + 72) = v18;
  sub_1AF0FB8EC(v22);
  *(v20 + 168) = 0;
  *(v20 + 176) = 0;

  *(v20 + 216) = 0;

  *(v0 + 48) = v20;
  v23 = swift_getKeyPath();
  sub_1AF5A9240(0, &unk_1ED722B70, v4, type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF58702C;
  v24[5] = v23;
  v24[2] = sub_1AF587060;
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
  *(v25 + 16) = 7564658;
  *(v25 + 24) = 0xE300000000000000;
  *(v25 + 32) = v23;
  *(v25 + 40) = v4;
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
  v26 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v26)
  {
    v4 = (*(v26 + 8))();
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v4)
  {
    *(v25 + 160) = (*(v27 + 8))(v4, v27);
  }

  *(v25 + 64) = sub_1AF5870BC;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  qword_1EB6C2DF8 = v0;
  return result;
}

float sub_1AF4BCB18@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_1AF4BCB6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1AF4BCC40()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6158];
  sub_1AF5A9240(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AF587408;
  v4[5] = v2;
  v4[2] = sub_1AF587444;
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
  *(v5 + 16) = 0x7461507465737361;
  *(v5 + 24) = 0xE900000000000068;
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

  *(v5 + 64) = sub_1AF587474;
  *(v5 + 72) = v2;
  sub_1AF0FB8EC(0);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;
  sub_1AF51B13C(0, &qword_1EB6338E8, MEMORY[0x1E6968FB0], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5874B4;
  v8[5] = KeyPath;
  v8[2] = sub_1AF5874E0;
  v8[3] = KeyPath;
  v8[6] = KeyPath;
  v9 = swift_allocObject();
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  *(v9 + 120) = 0;
  *(v9 + 160) = MEMORY[0x1E69E7CC0];
  *(v9 + 216) = 0;
  v10 = sub_1AFDFC128();
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;
  *(v9 + 16) = 0x7465737361;
  *(v9 + 24) = 0xE500000000000000;
  *(v9 + 32) = KeyPath;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0;
  *(v9 + 56) = 1;
  *(v9 + 58) = 4;
  *(v9 + 184) = 0;
  *(v9 + 188) = 1;
  *(v9 + 192) = 0;
  *(v9 + 196) = 1;
  *(v9 + 200) = 0x1000100000000;
  *(v9 + 208) = 1;
  *(v9 + 96) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0;
  *(v9 + 144) = xmmword_1AFE22A20;
  *(v9 + 80) = v8;
  *(v9 + 88) = &off_1F2535378;
  *(v9 + 210) = 4;
  v11 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v11 && v10)
  {
    v10 = (*(v11 + 8))(v10, v11);
  }

  v12 = swift_conformsToProtocol2();
  if (v12 && v10)
  {
    *(v9 + 160) = (*(v12 + 8))(v10, v12);
  }

  v13 = *(v9 + 64);
  *(v9 + 64) = sub_1AF587510;
  *(v9 + 72) = KeyPath;
  sub_1AF0FB8EC(v13);
  *(v9 + 168) = 0;
  *(v9 + 176) = 0;

  *(v9 + 216) = v5;

  *(v0 + 32) = v9;
  qword_1EB6C2E00 = v0;
  return result;
}

uint64_t sub_1AF4BD194()
{
  sub_1AF5A9240(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C3E0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1AF5876B8();
  v3 = swift_allocObject();
  v3[4] = sub_1AF5AA0FC;
  v3[5] = v2;
  v3[2] = sub_1AF587688;
  v3[3] = v2;
  v3[6] = v2;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  sub_1AF5A9240(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v6 = v5;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x7461507465737361;
  *(v4 + 24) = 0xEA00000000007368;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
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
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v7 && v6)
  {
    v6 = (*(v7 + 8))(v6, v7);
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v6)
  {
    *(v4 + 160) = (*(v8 + 8))(v6, v8);
  }

  v9 = *(v4 + 64);
  *(v4 + 64) = sub_1AF587734;
  *(v4 + 72) = v2;
  sub_1AF0FB8EC(v9);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  sub_1AF51B13C(0, &qword_1EB63A868, sub_1AF5877E4, type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF587778;
  v10[5] = KeyPath;
  v10[2] = sub_1AF5877B4;
  v10[3] = KeyPath;
  v10[6] = KeyPath;
  v11 = swift_allocObject();
  *(v11 + 104) = 0;
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 216) = 0;
  sub_1AF5877E4(0);
  v13 = v12;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x737465737361;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = KeyPath;
  *(v11 + 40) = v12;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
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
  *(v11 + 64) = sub_1AF587818;
  *(v11 + 72) = KeyPath;
  sub_1AF0FB8EC(v16);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = v4;

  *(v0 + 32) = v11;
  qword_1EB6C2E08 = v0;
  return result;
}