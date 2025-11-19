uint64_t sub_1AF56CB9C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  if (v4 <= 1)
  {
    if (*(v2 + 24))
    {
      v6 = 0x7070636A626FLL;
    }

    else
    {
      v6 = 99;
    }

    if (*(v2 + 24))
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE100000000000000;
    }
  }

  else if (v4 == 2)
  {
    v5 = 0xE500000000000000;
    v6 = 0x6C6174656DLL;
  }

  else if (v4 == 3)
  {
    v5 = 0xE500000000000000;
    v6 = 0x7466697773;
  }

  else
  {
    v5 = 0xE200000000000000;
    v6 = 29546;
  }

  v7 = 0xE100000000000000;
  v8 = 99;
  v9 = 0xE500000000000000;
  v10 = 0x6C6174656DLL;
  v11 = 0xE500000000000000;
  v12 = 0x7466697773;
  if (a1 != 3)
  {
    v12 = 29546;
    v11 = 0xE200000000000000;
  }

  if (a1 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1)
  {
    v8 = 0x7070636A626FLL;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  if (a1 <= 1u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == v13 && v5 == v14)
  {
  }

  v16 = sub_1AFDFEE28();

  if (v16)
  {
    return result;
  }

  v17 = 0xD000000000000071;
  if (v4 == 3)
  {
  }

  else
  {
    v18 = sub_1AFDFEE28();

    if ((v18 & 1) == 0)
    {
      if (a1 == 3)
      {

        v19 = " p.x = cos(time);\n}";
        v20 = 0xD000000000000071;
        goto LABEL_40;
      }

      v21 = sub_1AFDFEE28();

      if ((v21 & 1) == 0)
      {
        return result;
      }
    }
  }

  v19 = " p.x = cos(time);\n}";
  if (a1 >= 3u)
  {
    v20 = 0xD000000000000071;
    if (a1 != 3)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v19 = "(hello from particleInit)\n}";
    v20 = 0xD0000000000000C3;
  }

LABEL_40:
  if (v20 == *v2 && (v19 | 0x8000000000000000) == *(v2 + 8))
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1AFDFEE28();
  }

  sub_1AF4486E4();
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1AFDFDE98();
  sub_1AF491224(v24);

  sub_1AF5A9240(0, &qword_1ED726C70, v23, MEMORY[0x1E69E62F8]);
  sub_1AF59CA24(&qword_1ED726C68, &qword_1ED726C70, v23);
  v25 = sub_1AFDFCD98();
  v27 = v26;

  if (v4 >= 3)
  {
    if (v4 == 3)
    {
      v28 = " p.x = cos(time);\n}";
      v29 = &unk_1F24FE410;
      goto LABEL_48;
    }

LABEL_52:
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  v28 = "(hello from particleInit)\n}";
  v17 = 0xD0000000000000C3;
  v29 = &unk_1F24FE440;
LABEL_48:
  v30 = v28 | 0x8000000000000000;

  *(v2 + 8) = v30;
  *(v2 + 16) = v29;
  *v2 = v17;
  if ((v22 & 1) == 0)
  {
    MEMORY[0x1B2718AE0](v25, v27);

    MEMORY[0x1B2718AE0](2570, 0xE200000000000000);
  }
}

uint64_t sub_1AF56DDFC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1AFDFE108();
LABEL_9:
  result = sub_1AFDFE268();
  *v1 = result;
  return result;
}

unint64_t sub_1AF56DE9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF51B13C(0, &qword_1EB63B968, type metadata accessor for AuthoringNode, MEMORY[0x1E69E62F8]);
      sub_1AF5A8BCC(&unk_1EB63B970, &qword_1EB63B968, type metadata accessor for AuthoringNode);
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87A94(v11, i, a3);
        v9 = *v8;

        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    type metadata accessor for AuthoringNode();
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56E010(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF51B13C(0, &qword_1EB63B980, type metadata accessor for Node, MEMORY[0x1E69E62F8]);
      sub_1AF5A8BCC(&unk_1EB63B988, &qword_1EB63B980, type metadata accessor for Node);
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87A94(v11, i, a3);
        v9 = *v8;

        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    type metadata accessor for Node();
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56E184(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF51B13C(0, &qword_1EB632A90, type metadata accessor for PropertyDescription, MEMORY[0x1E69E62F8]);
      sub_1AF5A8BCC(&qword_1EB63A5F8, &qword_1EB632A90, type metadata accessor for PropertyDescription);
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87A94(v11, i, a3);
        v9 = *v8;

        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    type metadata accessor for PropertyDescription();
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56E2F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF51B13C(0, &qword_1EB63BD08, type metadata accessor for EntityFamily, MEMORY[0x1E69E62F8]);
      sub_1AF5A8BCC(&unk_1EB63BD10, &qword_1EB63BD08, type metadata accessor for EntityFamily);
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87B5C(v11, i, a3);
        v9 = *v8;

        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    type metadata accessor for EntityFamily();
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56E46C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF5A5BE0(0, &qword_1EB63B9B0, &qword_1EB6427A0, &off_1E7A77AA8, sub_1AF0D4478);
      sub_1AF5A5CC0();
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87BC0(v11, i, a3);
        v9 = *v8;
        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_1AF0D4478(0, &qword_1EB6427A0);
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56E5D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF5A5BE0(0, &qword_1EB63BD28, &qword_1EB63BD20, &protocolRef_MTLBinaryArchive, sub_1AF447DFC);
      sub_1AF5A8C30();
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87C24(v11, i, a3);
        v9 = *v8;
        swift_unknownObjectRetain();
        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_1AF447DFC(0, &qword_1EB63BD20);
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56E73C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF51B13C(0, &qword_1EB63BC70, _s13ParameterBaseCMa, MEMORY[0x1E69E62F8]);
      sub_1AF5A8BCC(&qword_1EB63BC78, &qword_1EB63BC70, _s13ParameterBaseCMa);
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87A94(v11, i, a3);
        v9 = *v8;

        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    _s13ParameterBaseCMa();
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56E8B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v5 = sub_1AFDFE108();
    if (v5)
    {
      sub_1AFDFE108();
      sub_1AF5A5BE0(0, &qword_1EB63B998, &qword_1ED726BB0, &protocolRef_MTLResource, sub_1AF447DFC);
      sub_1AF5A5C3C();
      for (i = 0; i != v5; ++i)
      {
        v7 = sub_1AFC87AF8(v11, i, a3);
        v9 = *v8;
        swift_unknownObjectRetain();
        (v7)(v11, 0);
        *(a1 + 8 * i) = v9;
      }
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_1AF447DFC(0, &qword_1ED726BB0);
    swift_arrayInitWithCopy();
  }

  return a3;
}

unint64_t sub_1AF56EA18(unint64_t result)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1AFC75668(0, sub_1AF5837B8);
  }

  return result;
}

uint64_t sub_1AF56EAD8()
{

  return swift_setAtWritableKeyPath();
}

uint64_t sub_1AF56EB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);

  return swift_setAtWritableKeyPath();
}

unint64_t sub_1AF56EBCC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1AFC75668(0, a5);
  }

  return result;
}

unint64_t sub_1AF56EC90(unint64_t result)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1AFC75668(0, sub_1AF587F0C);
  }

  return result;
}

uint64_t sub_1AF56ED50()
{

  return swift_setAtWritableKeyPath();
}

uint64_t sub_1AF56EDB8()
{

  return swift_setAtWritableKeyPath();
}

uint64_t sub_1AF56EE38()
{

  return swift_setAtWritableKeyPath();
}

unint64_t sub_1AF56EEB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1AFC75668(0, a5);
  }

  return result;
}

unint64_t sub_1AF56EF6C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1AFC75668(0, a5);
  }

  return result;
}

unint64_t sub_1AF56F09C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1AFC75668(0, a5);
  }

  return result;
}

unint64_t sub_1AF56F1A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1AFC75668(0, a5);
  }

  return result;
}

uint64_t sub_1AF56F260()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 2, 0);
  v0 = v16;
  v2 = *aNearest_2;
  v1 = unk_1F24F3E68;
  v3 = byte_1F24F3E70;
  v5 = *(v16 + 16);
  v4 = *(v16 + 24);
  v6 = v5 + 1;

  if (v5 >= v4 >> 1)
  {
    sub_1AFC06EC8(v4 > 1, v5 + 1, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 48 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 72) = &type metadata for FilterMode;
  v9 = *aLinear_7;
  v8 = unk_1F24F3E80;
  v10 = byte_1F24F3E88;
  v11 = *(v0 + 24);
  v12 = v5 + 2;

  if (v6 >= v11 >> 1)
  {
    sub_1AFC06EC8(v11 > 1, v12, 1);
  }

  *(v0 + 16) = v12;
  v13 = v0 + 48 * v6;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 64) = *&v15[15];
  *(v13 + 72) = &type metadata for FilterMode;
  *(v13 + 49) = *v15;
  sub_1AF0D8160(0, &qword_1EB633328);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1AF56F3C4()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC05FB4(0, 3, 0);
  v0 = byte_1F24F3EB0;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC05FB4(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F3EB1;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC05FB4(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F3EB2;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC05FB4(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF56F6B0()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC05FF8(0, 5, 0);
  v0 = 0;
  v1 = &type metadata for RandomMode;
  do
  {
    v2 = byte_1F24F3EB8[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC05FF8(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 5);
  return v20;
}

uint64_t sub_1AF56F820(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = a1();
  v4 = *(v3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v4, 0);
    v5 = v15;
    v6 = (v3 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v10 = *(v15 + 16);
      v11 = *(v15 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1AFC06EC8(v11 > 1, v10 + 1, 1);
      }

      v6 += 24;
      *(v15 + 16) = v10 + 1;
      v12 = v15 + 48 * v10;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      *(v12 + 48) = v9;
      *(v12 + 64) = *&v14[15];
      *(v12 + 72) = a2;
      *(v12 + 49) = *v14;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1AF56F940()
{
  v30 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 4, 0);
  v0 = v30;
  v2 = aClamptozero_0[0];
  v1 = aClamptozero_0[1];
  v3 = byte_1F24F3FB0;
  v5 = *(v30 + 16);
  v4 = *(v30 + 24);
  v6 = v5 + 1;

  if (v5 >= v4 >> 1)
  {
    sub_1AFC06EC8(v4 > 1, v5 + 1, 1);
    v0 = v30;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 48 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 72) = &type metadata for AddressMode;
  v9 = aClamptoedge_0[0];
  v8 = aClamptoedge_0[1];
  v10 = byte_1F24F3FC8;
  v11 = *(v0 + 24);
  v12 = v5 + 2;

  if (v6 >= v11 >> 1)
  {
    sub_1AFC06EC8(v11 > 1, v12, 1);
  }

  *(v0 + 16) = v12;
  v13 = v0 + 48 * v6;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 64) = *&v29[15];
  *(v13 + 72) = &type metadata for AddressMode;
  *(v13 + 49) = *v29;
  v15 = *aRepeat_1;
  v14 = unk_1F24F3FD8;
  v16 = byte_1F24F3FE0;
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);
  v19 = v18 + 1;

  if (v18 >= v17 >> 1)
  {
    sub_1AFC06EC8(v17 > 1, v18 + 1, 1);
  }

  *(v0 + 16) = v19;
  v20 = v0 + 48 * v18;
  *(v20 + 32) = v15;
  *(v20 + 40) = v14;
  *(v20 + 48) = v16;
  *(v20 + 64) = *&v29[15];
  *(v20 + 72) = &type metadata for AddressMode;
  *(v20 + 49) = *v29;
  v22 = aRepeatmirror_0[0];
  v21 = aRepeatmirror_0[1];
  v23 = byte_1F24F3FF8;
  v24 = v18 + 1;
  v25 = *(v0 + 24);
  v26 = v19 + 1;

  if (v24 >= v25 >> 1)
  {
    sub_1AFC06EC8(v25 > 1, v26, 1);
  }

  *(v0 + 16) = v26;
  v27 = v0 + 48 * v24;
  *(v27 + 32) = v22;
  *(v27 + 40) = v21;
  *(v27 + 48) = v23;
  *(v27 + 64) = *&v29[15];
  *(v27 + 72) = &type metadata for AddressMode;
  *(v27 + 49) = *v29;
  return v0;
}

uint64_t sub_1AF56FB60()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06080(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for Composition.Operation;
  do
  {
    v2 = byte_1F24F4000[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06080(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF56FCD0()
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 3, 0);
  v0 = v22;
  v2 = *aLocal_6;
  v1 = unk_1F24F4050;
  v3 = byte_1F24F4058;
  v5 = *(v22 + 16);
  v4 = *(v22 + 24);
  v6 = v5 + 1;

  if (v5 >= v4 >> 1)
  {
    sub_1AFC06EC8(v4 > 1, v5 + 1, 1);
    v0 = v22;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 48 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 72) = &type metadata for EntitySpace;
  v9 = *aWorld_12;
  v8 = unk_1F24F4068;
  v10 = byte_1F24F4070;
  v11 = *(v0 + 24);
  v12 = v5 + 2;

  if (v6 >= v11 >> 1)
  {
    sub_1AFC06EC8(v11 > 1, v12, 1);
  }

  *(v0 + 16) = v12;
  v13 = v0 + 48 * v6;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 64) = *&v21[15];
  *(v13 + 72) = &type metadata for EntitySpace;
  *(v13 + 49) = *v21;
  v15 = *aScene_10;
  v14 = unk_1F24F4080;
  v16 = byte_1F24F4088;
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);

  if (v18 >= v17 >> 1)
  {
    sub_1AFC06EC8(v17 > 1, v18 + 1, 1);
  }

  *(v0 + 16) = v18 + 1;
  v19 = v0 + 48 * v18;
  *(v19 + 32) = v15;
  *(v19 + 40) = v14;
  *(v19 + 48) = v16;
  *(v19 + 64) = *&v21[15];
  *(v19 + 72) = &type metadata for EntitySpace;
  *(v19 + 49) = *v21;
  sub_1AF0D8160(0, &unk_1EB63B870);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1AF56FEA4()
{
  v22 = MEMORY[0x1E69E7CC0];
  v0 = 7;
  sub_1AFC060C4(0, 7, 0);
  v1 = &byte_1F24F40B4;
  v2 = &type metadata for EmitterShape.Shape;
  do
  {
    v3 = *v1;
    v21 = *(v1 - 1);
    v4 = sub_1AFDFCF88();
    v6 = v5;
    sub_1AF51E494(40, 0xE100000000000000, v4, v5);
    if ((v7 & 1) == 0)
    {
      v8 = sub_1AFDFD1F8();
      v10 = v9;
      v12 = v11;
      v13 = v2;
      v15 = v14;

      v4 = MEMORY[0x1B27189E0](v8, v10, v12, v15);
      v6 = v16;
      v2 = v13;
    }

    v18 = *(v22 + 16);
    v17 = *(v22 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1AFC060C4(v17 > 1, v18 + 1, 1);
    }

    *(v22 + 16) = v18 + 1;
    v19 = v22 + 24 * v18;
    *(v19 + 32) = v4;
    *(v19 + 40) = v6;
    *(v19 + 48) = v21;
    *(v19 + 52) = v3;
    v1 += 8;
    --v0;
  }

  while (v0);
  return v22;
}

uint64_t sub_1AF570020()
{
  v0 = &type metadata for EmitterShape.Direction;
  sub_1AF5A9240(0, &qword_1EB6330C0, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 32) = xmmword_1AFE20160;
  *(v1 + 48) = 0;
  *(v1 + 64) = xmmword_1AFE20160;
  *(v1 + 80) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 2;
  *(v1 + 128) = xmmword_1AFE22A20;
  *(v1 + 144) = 2;
  *(v1 + 160) = xmmword_1AFE505D0;
  *(v1 + 176) = 2;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AFC06108(0, 5, 0);
  for (i = 0; i != 160; i += 32)
  {
    v3 = *(v1 + i + 40);
    v23 = *(v1 + i + 32);
    v22 = *(v1 + i + 48);
    v4 = sub_1AFDFCF88();
    v6 = v5;
    sub_1AF51E494(40, 0xE100000000000000, v4, v5);
    if ((v7 & 1) == 0)
    {
      v8 = sub_1AFDFD1F8();
      v10 = v9;
      v12 = v11;
      v13 = v1;
      v14 = v0;
      v16 = v15;

      v4 = MEMORY[0x1B27189E0](v8, v10, v12, v16);
      v6 = v17;
      v0 = v14;
      v1 = v13;
    }

    v19 = *(v24 + 16);
    v18 = *(v24 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1AFC06108(v18 > 1, v19 + 1, 1);
    }

    *(v24 + 16) = v19 + 1;
    v20 = v24 + 48 * v19;
    *(v20 + 32) = v4;
    *(v20 + 40) = v6;
    *(v20 + 48) = v23;
    *(v20 + 56) = v3;
    *(v20 + 64) = v22;
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  return v24;
}

char *sub_1AF570244()
{
  v0 = sub_1AFCFF70C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v2 = sub_1AFDFE108();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1B2719C70](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 uniqueID];
    v8 = sub_1AFDFCEF8();
    v10 = v9;

    v11 = [v6 localizedName];
    v12 = sub_1AFDFCEF8();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1AF420898(0, *(v4 + 2) + 1, 1, v4);
    }

    v16 = *(v4 + 2);
    v15 = *(v4 + 3);
    if (v16 >= v15 >> 1)
    {
      v4 = sub_1AF420898(v15 > 1, v16 + 1, 1, v4);
    }

    ++v3;
    *(v4 + 2) = v16 + 1;
    v17 = &v4[32 * v16];
    *(v17 + 4) = v8;
    *(v17 + 5) = v10;
    *(v17 + 6) = v12;
    *(v17 + 7) = v14;
  }

  while (v2 != v3);
LABEL_15:

  return v4;
}

uint64_t sub_1AF5703E0()
{
  v0 = sub_1AF570244();
  v1 = *(v0 + 2);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1AFC0614C(0, v1, 0);
    v2 = 32;
    v3 = v24;
    v4 = &_s15CaptureDeviceIDVN;
    do
    {
      v23 = *&v0[v2];
      v22 = *&v0[v2 + 16];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v5 = sub_1AFDFCF88();
      v7 = v6;
      sub_1AF51E494(40, 0xE100000000000000, v5, v6);
      if ((v8 & 1) == 0)
      {
        v9 = sub_1AFDFD1F8();
        v11 = v10;
        v13 = v12;
        v14 = v4;
        v16 = v15;

        v5 = MEMORY[0x1B27189E0](v9, v11, v13, v16);
        v7 = v17;
        v4 = v14;
      }

      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1AFC0614C(v18 > 1, v19 + 1, 1);
      }

      *(v24 + 16) = v19 + 1;
      v20 = v24 + 48 * v19;
      *(v20 + 32) = v5;
      *(v20 + 40) = v7;
      *(v20 + 48) = v23;
      *(v20 + 64) = v22;
      v2 += 32;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AF57059C()
{
  v0 = sub_1AF5703E0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v16;
    v3 = (v0 + 72);
    do
    {
      v4 = *(v3 - 4);
      v14 = *(v3 - 5);
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = swift_allocObject();
      v9[2] = v5;
      v9[3] = v6;
      v9[4] = v7;
      v9[5] = v8;
      v10 = *(v16 + 16);
      v11 = *(v16 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1AFC06EC8(v11 > 1, v10 + 1, 1);
      }

      v3 += 6;
      *(v16 + 16) = v10 + 1;
      v12 = v16 + 48 * v10;
      *(v12 + 32) = v14;
      *(v12 + 40) = v4;
      *(v12 + 48) = v9;
      *(v12 + 56) = v15;
      *(v12 + 72) = &_s15CaptureDeviceIDVN;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1AF5706F4()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC0616C(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for VideoCapture.OrientationMode;
  do
  {
    v2 = byte_1F24F40E8[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC0616C(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF570864()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC061B0(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for EmissionOrder;
  do
  {
    v2 = byte_1F24F4110[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC061B0(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF5709D4()
{
  v24 = MEMORY[0x1E69E7CC0];
  v0 = 3;
  sub_1AFC061F4(0, 3, 0);
  v1 = &byte_1F24F4160;
  v2 = &type metadata for EvolutionMode;
  do
  {
    v3 = *(v1 - 1);
    v4 = *v1;
    v5 = sub_1AFDFCF88();
    v7 = v6;
    sub_1AF51E494(40, 0xE100000000000000, v5, v6);
    if ((v8 & 1) == 0)
    {
      v9 = sub_1AFDFD1F8();
      v11 = v10;
      v13 = v12;
      v23 = v3;
      v14 = v4;
      v15 = v2;
      v17 = v16;

      v5 = MEMORY[0x1B27189E0](v9, v11, v13, v17);
      v7 = v18;
      v2 = v15;
      v4 = v14;
      v3 = v23;
    }

    v20 = *(v24 + 16);
    v19 = *(v24 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1AFC061F4(v19 > 1, v20 + 1, 1);
    }

    v1 += 12;
    *(v24 + 16) = v20 + 1;
    v21 = v24 + 32 * v20;
    *(v21 + 32) = v5;
    *(v21 + 40) = v7;
    *(v21 + 48) = v3;
    *(v21 + 56) = v4;
    --v0;
  }

  while (v0);
  return v24;
}

uint64_t sub_1AF570B54()
{
  v0 = sub_1AF5709D4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v13;
    v3 = (v0 + 56);
    do
    {
      v5 = *(v3 - 3);
      v4 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v13 + 16);
      v9 = *(v13 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1AFC06EC8(v9 > 1, v8 + 1, 1);
      }

      v3 += 32;
      *(v13 + 16) = v8 + 1;
      v10 = v13 + 48 * v8;
      *(v10 + 32) = v5;
      *(v10 + 40) = v4;
      *(v10 + 48) = v6;
      *(v10 + 56) = v7;
      *(v10 + 57) = *v12;
      *(v10 + 64) = *&v12[7];
      *(v10 + 72) = &type metadata for EvolutionMode;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1AF570C80()
{
  v25 = MEMORY[0x1E69E7CC0];
  v0 = 23;
  sub_1AFC06238(0, 23, 0);
  v1 = &byte_1F24F41AC;
  v2 = &type metadata for EasingFunction;
  do
  {
    v3 = *(v1 - 12);
    v4 = *(v1 - 1);
    v24 = *v1;
    v5 = sub_1AFDFCF88();
    v7 = v6;
    sub_1AF51E494(40, 0xE100000000000000, v5, v6);
    if ((v8 & 1) == 0)
    {
      v9 = sub_1AFDFD1F8();
      v11 = v10;
      v13 = v12;
      v23 = v3;
      v14 = v4;
      v15 = v2;
      v17 = v16;

      v5 = MEMORY[0x1B27189E0](v9, v11, v13, v17);
      v7 = v18;
      v2 = v15;
      v4 = v14;
      v3 = v23;
    }

    v20 = *(v25 + 16);
    v19 = *(v25 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1AFC06238(v19 > 1, v20 + 1, 1);
    }

    v1 += 16;
    *(v25 + 16) = v20 + 1;
    v21 = v25 + 32 * v20;
    *(v21 + 32) = v5;
    *(v21 + 40) = v7;
    *(v21 + 48) = v3;
    *(v21 + 56) = v4;
    *(v21 + 60) = v24;
    --v0;
  }

  while (v0);
  return v25;
}

uint64_t sub_1AF570E14()
{
  v0 = sub_1AF570C80();
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v14;
    v3 = (v0 + 60);
    do
    {
      v4 = *(v3 - 28);
      v5 = *(v3 - 20);
      v6 = *(v3 - 12);
      v12 = *(v3 - 1);
      v7 = *v3;
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1AFC06EC8(v8 > 1, v9 + 1, 1);
      }

      v3 += 32;
      *(v14 + 16) = v9 + 1;
      v10 = v14 + 48 * v9;
      *(v10 + 32) = v4;
      *(v10 + 40) = v5;
      *(v10 + 48) = v6;
      *(v10 + 56) = v12;
      *(v10 + 60) = v7;
      *(v10 + 61) = *v13;
      *(v10 + 68) = *&v13[7];
      *(v10 + 72) = &type metadata for EasingFunction;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1AF570F54()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC0627C(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for FilterEdgeMode;
  do
  {
    v2 = byte_1F24F4310[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC0627C(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF5710C4()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC062C0(0, 5, 0);
  v0 = 0;
  v1 = &type metadata for TextureChannel;
  do
  {
    v2 = byte_1F24F4338[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC062C0(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 5);
  return v20;
}

uint64_t sub_1AF571234()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AFC06304(0, 2, 0);
  v0 = v16;
  v1 = sub_1AFDFCF88();
  v4 = *(v16 + 16);
  v3 = *(v16 + 24);
  if (v4 >= v3 >> 1)
  {
    v12 = v1;
    v13 = v2;
    sub_1AFC06304(v3 > 1, v4 + 1, 1);
    v2 = v13;
    v1 = v12;
    v0 = v16;
  }

  *(v0 + 16) = v4 + 1;
  v5 = v0 + 24 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = 0;
  v6 = sub_1AFDFCF88();
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    v14 = v6;
    v15 = v7;
    sub_1AFC06304(v8 > 1, v9 + 1, 1);
    v7 = v15;
    v6 = v14;
    v0 = v16;
  }

  *(v0 + 16) = v9 + 1;
  v10 = v0 + 24 * v9;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = 1;
  return v0;
}

uint64_t sub_1AF57136C()
{
  v0 = sub_1AF571234();
  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v12;
    v3 = (v0 + 48);
    do
    {
      v5 = *(v3 - 2);
      v4 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1AFC06EC8(v8 > 1, v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v9 = v12 + 48 * v7;
      *(v9 + 32) = v5;
      *(v9 + 40) = v4;
      *(v9 + 48) = v6;
      *(v9 + 64) = *&v11[15];
      *(v9 + 72) = &type metadata for VFXHandTracker.HandChirality;
      *(v9 + 49) = *v11;
      v3 += 24;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1AF57148C()
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1AFC06348(0, 29, 0);
  v0 = 0;
  v1 = v11;
  do
  {
    v2 = byte_1F24F4360[v0 + 32];
    v3 = sub_1AFBF62E0(v2);
    v12 = v1;
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      v8 = v3;
      v9 = v4;
      sub_1AFC06348(v5 > 1, v6 + 1, 1);
      v4 = v9;
      v3 = v8;
      v1 = v12;
    }

    ++v0;
    *(v1 + 16) = v6 + 1;
    v7 = v1 + 24 * v6;
    *(v7 + 32) = v3;
    *(v7 + 40) = v4;
    *(v7 + 48) = v2;
  }

  while (v0 != 29);
  return v1;
}

uint64_t sub_1AF571580()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC0638C(0, 3, 0);
  v0 = byte_1F24F43C0;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC0638C(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F43C1;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC0638C(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F43C2;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC0638C(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF57186C()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC063D0(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for FlockingSizeMode;
  do
  {
    v2 = byte_1F24F43C8[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC063D0(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF5719DC()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06414(0, 7, 0);
  v0 = 0;
  v1 = &type metadata for ParticleSortMode;
  do
  {
    v2 = byte_1F24F43F0[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06414(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 7);
  return v20;
}

uint64_t sub_1AF571B4C()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06458(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for ParticleSubSpawn.Mode;
  do
  {
    v2 = byte_1F24F4418[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06458(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF571CBC()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC0649C(0, 6, 0);
  v0 = 0;
  v1 = &type metadata for FlockingLocalAxis;
  do
  {
    v2 = byte_1F24F4440[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC0649C(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 6);
  return v20;
}

uint64_t sub_1AF571E2C()
{
  v22 = MEMORY[0x1E69E7CC0];
  v0 = 4;
  sub_1AFC064E0(0, 4, 0);
  v1 = &byte_1F24F448C;
  v2 = &type metadata for ParticleColorInit.Mode;
  do
  {
    v3 = *v1;
    v21 = *(v1 - 1);
    v4 = sub_1AFDFCF88();
    v6 = v5;
    sub_1AF51E494(40, 0xE100000000000000, v4, v5);
    if ((v7 & 1) == 0)
    {
      v8 = sub_1AFDFD1F8();
      v10 = v9;
      v12 = v11;
      v13 = v2;
      v15 = v14;

      v4 = MEMORY[0x1B27189E0](v8, v10, v12, v15);
      v6 = v16;
      v2 = v13;
    }

    v18 = *(v22 + 16);
    v17 = *(v22 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1AFC064E0(v17 > 1, v18 + 1, 1);
    }

    *(v22 + 16) = v18 + 1;
    v19 = v22 + 24 * v18;
    *(v19 + 32) = v4;
    *(v19 + 40) = v6;
    *(v19 + 48) = v21;
    *(v19 + 52) = v3;
    v1 += 8;
    --v0;
  }

  while (v0);
  return v22;
}

uint64_t sub_1AF571FA8(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = a1();
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v4, 0);
    v5 = v16;
    v6 = (v3 + 52);
    do
    {
      v7 = *(v6 - 20);
      v8 = *(v6 - 12);
      v9 = *(v6 - 1);
      v15 = *v6;
      v10 = *(v16 + 16);
      v11 = *(v16 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1AFC06EC8(v11 > 1, v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v12 = v16 + 48 * v10;
      *(v12 + 32) = v7;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      *(v12 + 52) = v15;
      *(v12 + 68) = *&v14[15];
      *(v12 + 53) = *v14;
      *(v12 + 72) = a2;
      v6 += 24;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1AF5720E0()
{
  v0 = &type metadata for ShapeDistribution;
  sub_1AF5A9240(0, &qword_1EB6330B0, &type metadata for ShapeDistribution, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 2;
  *(v1 + 64) = xmmword_1AFE552B0;
  *(v1 + 80) = 0;
  *(v1 + 96) = xmmword_1AFE552A0;
  *(v1 + 112) = 1;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AFC06524(0, 3, 0);
  for (i = 0; i != 96; i += 32)
  {
    v3 = *(v1 + i + 40);
    v23 = *(v1 + i + 32);
    v22 = *(v1 + i + 48);
    v4 = sub_1AFDFCF88();
    v6 = v5;
    sub_1AF51E494(40, 0xE100000000000000, v4, v5);
    if ((v7 & 1) == 0)
    {
      v8 = sub_1AFDFD1F8();
      v10 = v9;
      v12 = v11;
      v13 = v1;
      v14 = v0;
      v16 = v15;

      v4 = MEMORY[0x1B27189E0](v8, v10, v12, v16);
      v6 = v17;
      v0 = v14;
      v1 = v13;
    }

    v19 = *(v24 + 16);
    v18 = *(v24 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1AFC06524(v18 > 1, v19 + 1, 1);
    }

    *(v24 + 16) = v19 + 1;
    v20 = v24 + 48 * v19;
    *(v20 + 32) = v4;
    *(v20 + 40) = v6;
    *(v20 + 48) = v23;
    *(v20 + 56) = v3;
    *(v20 + 64) = v22;
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  return v24;
}

uint64_t sub_1AF5722EC(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = a1();
  v4 = *(v3 + 16);
  if (v4)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v4, 0);
    v5 = v18;
    v6 = (v3 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v10;
      *(v12 + 32) = v11;
      v14 = *(v18 + 16);
      v13 = *(v18 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_1AFC06EC8(v13 > 1, v14 + 1, 1);
      }

      v6 += 48;
      *(v18 + 16) = v14 + 1;
      v15 = v18 + 48 * v14;
      *(v15 + 32) = v7;
      *(v15 + 40) = v8;
      *(v15 + 48) = v12;
      *(v15 + 56) = v17;
      *(v15 + 72) = a2;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1AF57242C()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 2, 0);
  v0 = v16;
  v2 = *aNone_16;
  v1 = unk_1F24F44D0;
  v3 = byte_1F24F44D8;
  v5 = *(v16 + 16);
  v4 = *(v16 + 24);
  v6 = v5 + 1;

  if (v5 >= v4 >> 1)
  {
    sub_1AFC06EC8(v4 > 1, v5 + 1, 1);
    v0 = v16;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 48 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 72) = &type metadata for EmitterDescription.PhysicsSimulation;
  v9 = qword_1F24F44E0;
  v8 = off_1F24F44E8;
  v10 = byte_1F24F44F0;
  v11 = *(v0 + 24);
  v12 = v5 + 2;

  if (v6 >= v11 >> 1)
  {
    sub_1AFC06EC8(v11 > 1, v12, 1);
  }

  *(v0 + 16) = v12;
  v13 = v0 + 48 * v6;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 64) = *&v15[15];
  *(v13 + 72) = &type metadata for EmitterDescription.PhysicsSimulation;
  *(v13 + 49) = *v15;
  sub_1AF0D8160(0, &qword_1EB630DD8);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1AF572590()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06568(0, 3, 0);
  v0 = byte_1F24F4518;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06568(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F4519;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06568(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F451A;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06568(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF57287C()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC065AC(0, 10, 0);
  v0 = 0;
  v1 = &type metadata for PrimitiveGenerator.PrimitiveType;
  do
  {
    v2 = byte_1F24F4520[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC065AC(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 10);
  return v20;
}

uint64_t sub_1AF5729EC(void (*a1)(BOOL, uint64_t, uint64_t), char *a2, uint64_t a3, char *a4)
{
  v5 = sub_1AF573594(a1, a2, a3, a4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v6, 0);
    v7 = v17;
    v8 = (v5 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v17 + 16);
      v13 = *(v17 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_1AFC06EC8(v13 > 1, v12 + 1, 1);
      }

      *(v17 + 16) = v12 + 1;
      v14 = v17 + 48 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      *(v14 + 64) = *&v16[15];
      *(v14 + 72) = a3;
      *(v14 + 49) = *v16;
      v8 += 24;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

uint64_t sub_1AF572B08()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06634(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for ToneMappingOperator;
  do
  {
    v2 = byte_1F24F4578[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06634(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF572C78()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06678(0, 3, 0);
  v0 = byte_1F24F45C0;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06678(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F45C1;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06678(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F45C2;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06678(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF572F64()
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 3, 0);
  v0 = v22;
  v2 = aNoMipmaps[0];
  v1 = aNoMipmaps[1];
  v3 = byte_1F24F45F8;
  v5 = *(v22 + 16);
  v4 = *(v22 + 24);
  v6 = v5 + 1;

  if (v5 >= v4 >> 1)
  {
    sub_1AFC06EC8(v4 > 1, v5 + 1, 1);
    v0 = v22;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 48 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 72) = &type metadata for TextureMipFilterMode;
  v9 = *aNearest_3;
  v8 = unk_1F24F4608;
  v10 = byte_1F24F4610;
  v11 = *(v0 + 24);
  v12 = v5 + 2;

  if (v6 >= v11 >> 1)
  {
    sub_1AFC06EC8(v11 > 1, v12, 1);
  }

  *(v0 + 16) = v12;
  v13 = v0 + 48 * v6;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 64) = *&v21[15];
  *(v13 + 72) = &type metadata for TextureMipFilterMode;
  *(v13 + 49) = *v21;
  v15 = *aLinear_8;
  v14 = unk_1F24F4620;
  v16 = byte_1F24F4628;
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);

  if (v18 >= v17 >> 1)
  {
    sub_1AFC06EC8(v17 > 1, v18 + 1, 1);
  }

  *(v0 + 16) = v18 + 1;
  v19 = v0 + 48 * v18;
  *(v19 + 32) = v15;
  *(v19 + 40) = v14;
  *(v19 + 48) = v16;
  *(v19 + 64) = *&v21[15];
  *(v19 + 72) = &type metadata for TextureMipFilterMode;
  *(v19 + 49) = *v21;
  sub_1AF0D8160(0, &qword_1EB63B880);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1AF573138()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06700(0, 3, 0);
  v0 = byte_1F24F4678;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06700(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F4679;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06700(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F467A;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06700(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF573424()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06744(0, 5, 0);
  v0 = 0;
  v1 = &type metadata for ParticleRibbonProfile;
  do
  {
    v2 = byte_1F24F4680[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06744(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 5);
  return v20;
}

uint64_t sub_1AF573594(void (*a1)(BOOL, uint64_t, uint64_t), char *a2, uint64_t a3, char *a4)
{
  v40 = MEMORY[0x1E69E7CC0];
  a1(0, 2, 0);
  v7 = *a2;
  v8 = sub_1AFDFCF88();
  v10 = v9;
  sub_1AF51E494(40, 0xE100000000000000, v8, v9);
  if ((v11 & 1) == 0)
  {
    v12 = sub_1AFDFD1F8();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v8 = MEMORY[0x1B27189E0](v12, v14, v16, v18);
    v10 = v19;
  }

  v21 = *(v40 + 16);
  v20 = *(v40 + 24);
  if (v21 >= v20 >> 1)
  {
    a1(v20 > 1, v21 + 1, 1);
  }

  *(v40 + 16) = v21 + 1;
  v22 = v40 + 24 * v21;
  *(v22 + 32) = v8;
  *(v22 + 40) = v10;
  *(v22 + 48) = v7;
  v23 = *a4;
  v24 = sub_1AFDFCF88();
  v26 = v25;
  sub_1AF51E494(40, 0xE100000000000000, v24, v25);
  if ((v27 & 1) == 0)
  {
    v28 = sub_1AFDFD1F8();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v24 = MEMORY[0x1B27189E0](v28, v30, v32, v34);
    v26 = v35;
  }

  v37 = *(v40 + 16);
  v36 = *(v40 + 24);
  if (v37 >= v36 >> 1)
  {
    a1(v36 > 1, v37 + 1, 1);
  }

  *(v40 + 16) = v37 + 1;
  v38 = v40 + 24 * v37;
  *(v38 + 32) = v24;
  *(v38 + 40) = v26;
  *(v38 + 48) = v23;
  return v40;
}

uint64_t sub_1AF5737BC()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC067CC(0, 5, 0);
  v0 = 0;
  v1 = &type metadata for ParticleOrientationMode;
  do
  {
    v2 = byte_1F24F46D0[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC067CC(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 5);
  return v20;
}

uint64_t sub_1AF57392C()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06810(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for ParticleColorOverPosition.GradientMode;
  do
  {
    v2 = byte_1F24F46F8[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06810(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF573A9C()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06854(0, 5, 0);
  v0 = 0;
  v1 = &type metadata for ParticlePrimitiveRenderer.Shape;
  do
  {
    v2 = byte_1F24F4720[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06854(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 5);
  return v20;
}

uint64_t sub_1AF573C0C()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06898(0, 3, 0);
  v0 = byte_1F24F4768;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06898(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F4769;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06898(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F476A;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06898(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF573EF8()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC068DC(0, 8, 0);
  v0 = 0;
  v1 = &type metadata for FluidSolver2DSolverSetupType;
  do
  {
    v2 = byte_1F24F4770[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC068DC(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 8);
  return v20;
}

uint64_t sub_1AF574068()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06920(0, 7, 0);
  v0 = 0;
  v1 = &type metadata for FluidSolver2DSolverBorderType;
  do
  {
    v2 = byte_1F24F4798[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06920(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 7);
  return v20;
}

uint64_t sub_1AF5741D8()
{
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AFC06964(0, 4, 0);
  v0 = 0;
  v1 = &type metadata for FillMode;
  do
  {
    v2 = byte_1F24F47C0[v0 + 32];
    v3 = sub_1AFDFCF88();
    v5 = v4;
    sub_1AF51E494(40, 0xE100000000000000, v3, v4);
    if ((v6 & 1) == 0)
    {
      v7 = sub_1AFDFD1F8();
      v9 = v8;
      v11 = v10;
      v12 = v1;
      v14 = v13;

      v3 = MEMORY[0x1B27189E0](v7, v9, v11, v14);
      v5 = v15;
      v1 = v12;
    }

    v17 = *(v20 + 16);
    v16 = *(v20 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1AFC06964(v16 > 1, v17 + 1, 1);
    }

    ++v0;
    *(v20 + 16) = v17 + 1;
    v18 = v20 + 24 * v17;
    *(v18 + 32) = v3;
    *(v18 + 40) = v5;
    *(v18 + 48) = v2;
  }

  while (v0 != 4);
  return v20;
}

uint64_t sub_1AF574348()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC069A8(0, 3, 0);
  v0 = byte_1F24F4808;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC069A8(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F4809;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC069A8(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F480A;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC069A8(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF574634()
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 3, 0);
  v0 = v25;
  v2 = *aOpaque_6;
  v1 = unk_1F24F4838;
  v3 = dword_1F24F4840;
  v22 = byte_1F24F4844;
  v5 = *(v25 + 16);
  v4 = *(v25 + 24);
  v6 = v5 + 1;

  if (v5 >= v4 >> 1)
  {
    sub_1AFC06EC8(v4 > 1, v5 + 1, 1);
    v0 = v25;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 48 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  *(v7 + 52) = v22;
  *(v7 + 72) = &type metadata for BlendMode;
  v9 = *aAlpha_5;
  v8 = unk_1F24F4850;
  v10 = dword_1F24F4858;
  v23 = byte_1F24F485C;
  v11 = *(v0 + 24);
  v12 = v5 + 2;

  if (v6 >= v11 >> 1)
  {
    sub_1AFC06EC8(v11 > 1, v12, 1);
  }

  *(v0 + 16) = v12;
  v13 = v0 + 48 * v6;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  *(v13 + 48) = v10;
  *(v13 + 52) = v23;
  *(v13 + 68) = *&v21[15];
  *(v13 + 53) = *v21;
  *(v13 + 72) = &type metadata for BlendMode;
  v15 = aAdditive_3[0];
  v14 = aAdditive_3[1];
  v16 = dword_1F24F4870;
  v24 = byte_1F24F4874;
  v18 = *(v0 + 16);
  v17 = *(v0 + 24);

  if (v18 >= v17 >> 1)
  {
    sub_1AFC06EC8(v17 > 1, v18 + 1, 1);
  }

  *(v0 + 16) = v18 + 1;
  v19 = v0 + 48 * v18;
  *(v19 + 32) = v15;
  *(v19 + 40) = v14;
  *(v19 + 48) = v16;
  *(v19 + 52) = v24;
  *(v19 + 68) = *&v21[15];
  *(v19 + 53) = *v21;
  *(v19 + 72) = &type metadata for BlendMode;
  sub_1AF0D8160(0, &qword_1EB6332E8);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1AF574840()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC069EC(0, 3, 0);
  v0 = byte_1F24F4898;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC069EC(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F4899;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC069EC(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F489A;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC069EC(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF574B2C()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06A30(0, 3, 0);
  v0 = byte_1F24F48C0;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06A30(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F48C1;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06A30(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F48C2;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06A30(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF574E18()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06A74(0, 3, 0);
  v0 = byte_1F24F48E8;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06A74(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = v49 + 24 * v14;
  *(v15 + 32) = v1;
  *(v15 + 40) = v3;
  *(v15 + 48) = v0;
  v16 = byte_1F24F48E9;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06A74(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = v49 + 24 * v30;
  *(v31 + 32) = v17;
  *(v31 + 40) = v19;
  *(v31 + 48) = v16;
  v32 = byte_1F24F48EA;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06A74(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = v49 + 24 * v46;
  *(v47 + 32) = v33;
  *(v47 + 40) = v35;
  *(v47 + 48) = v32;
  return v49;
}

uint64_t sub_1AF575104()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06AB8(0, 3, 0);
  type metadata accessor for MTLCullMode(0);
  v0 = qword_1F24F4910;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06AB8(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = (v49 + 24 * v14);
  v15[4] = v1;
  v15[5] = v3;
  v15[6] = v0;
  v16 = qword_1F24F4918;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06AB8(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = (v49 + 24 * v30);
  v31[4] = v17;
  v31[5] = v19;
  v31[6] = v16;
  v32 = qword_1F24F4920;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06AB8(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = (v49 + 24 * v46);
  v47[4] = v33;
  v47[5] = v35;
  v47[6] = v32;
  return v49;
}

uint64_t sub_1AF5753F0()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06B08(0, 3, 0);
  type metadata accessor for VFXSSRQuality(0);
  v0 = qword_1F24F4948;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06B08(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = (v49 + 24 * v14);
  v15[4] = v1;
  v15[5] = v3;
  v15[6] = v0;
  v16 = qword_1F24F4950;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06B08(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = (v49 + 24 * v30);
  v31[4] = v17;
  v31[5] = v19;
  v31[6] = v16;
  v32 = qword_1F24F4958;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06B08(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = (v49 + 24 * v46);
  v47[4] = v33;
  v47[5] = v35;
  v47[6] = v32;
  return v49;
}

uint64_t sub_1AF5756DC(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1();
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v4, 0);
    v5 = v16;
    v6 = a2(0);
    v7 = (v3 + 48);
    do
    {
      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v16 + 16);
      v12 = *(v16 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_1AFC06EC8(v12 > 1, v11 + 1, 1);
      }

      v7 += 3;
      *(v16 + 16) = v11 + 1;
      v13 = v16 + 48 * v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      *(v13 + 48) = v10;
      *(v13 + 56) = v15;
      *(v13 + 72) = v6;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1AF575808()
{
  v12 = MEMORY[0x1E69E7CC0];
  v0 = 10;
  sub_1AFC06EC8(0, 10, 0);
  type metadata accessor for ForceFieldType(0);
  v2 = v1;
  v3 = &qword_1F24F4990;
  do
  {
    v5 = *(v3 - 2);
    v4 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v12 + 16);
    v7 = *(v12 + 24);

    if (v8 >= v7 >> 1)
    {
      sub_1AFC06EC8(v7 > 1, v8 + 1, 1);
    }

    v3 += 3;
    *(v12 + 16) = v8 + 1;
    v9 = v12 + 48 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v4;
    *(v9 + 48) = v6;
    *(v9 + 56) = v11;
    *(v9 + 72) = v2;
    --v0;
  }

  while (v0);
  return v12;
}

uint64_t sub_1AF575900()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06BA8(0, 3, 0);
  type metadata accessor for VFXSSAOQuality(0);
  v0 = qword_1F24F4C20;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06BA8(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = (v49 + 24 * v14);
  v15[4] = v1;
  v15[5] = v3;
  v15[6] = v0;
  v16 = qword_1F24F4C28;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06BA8(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = (v49 + 24 * v30);
  v31[4] = v17;
  v31[5] = v19;
  v31[6] = v16;
  v32 = qword_1F24F4C30;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06BA8(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = (v49 + 24 * v46);
  v47[4] = v33;
  v47[5] = v35;
  v47[6] = v32;
  return v49;
}

uint64_t sub_1AF575BEC()
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 2, 0);
  v0 = v18;
  type metadata accessor for ForceFieldScope(0);
  v2 = v1;
  v4 = *aInside_5;
  v3 = unk_1F24F4C60;
  v5 = qword_1F24F4C68;
  v7 = *(v18 + 16);
  v6 = *(v18 + 24);
  v8 = v7 + 1;

  if (v7 >= v6 >> 1)
  {
    sub_1AFC06EC8(v6 > 1, v7 + 1, 1);
    v0 = v18;
  }

  *(v0 + 16) = v8;
  v9 = (v0 + 48 * v7);
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v5;
  v9[9] = v2;
  v11 = *aOutside_0;
  v10 = unk_1F24F4C78;
  v12 = qword_1F24F4C80;
  v13 = *(v0 + 24);
  v14 = v7 + 2;

  if (v8 >= v13 >> 1)
  {
    sub_1AFC06EC8(v13 > 1, v14, 1);
  }

  *(v0 + 16) = v14;
  v15 = v0 + 48 * v8;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  *(v15 + 56) = v17;
  *(v15 + 72) = v2;
  sub_1AF5A8B20(0, &qword_1EB63BCE8, type metadata accessor for ForceFieldScope);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1AF575D60()
{
  v12 = MEMORY[0x1E69E7CC0];
  v0 = 5;
  sub_1AFC06EC8(0, 5, 0);
  type metadata accessor for ForceFieldShape(0);
  v2 = v1;
  v3 = &qword_1F24F4CB8;
  do
  {
    v5 = *(v3 - 2);
    v4 = *(v3 - 1);
    v6 = *v3;
    v8 = *(v12 + 16);
    v7 = *(v12 + 24);

    if (v8 >= v7 >> 1)
    {
      sub_1AFC06EC8(v7 > 1, v8 + 1, 1);
    }

    v3 += 3;
    *(v12 + 16) = v8 + 1;
    v9 = v12 + 48 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v4;
    *(v9 + 48) = v6;
    *(v9 + 56) = v11;
    *(v9 + 72) = v2;
    --v0;
  }

  while (v0);
  return v12;
}

uint64_t sub_1AF575E58()
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC06BF8(0, 5, 0);
  type metadata accessor for VFXCameraFillMode(0);
  for (i = 0; i != 40; i += 8)
  {
    v1 = *(&unk_1F24F4D20 + i + 32);
    v2 = sub_1AFDFCF88();
    v4 = v3;
    sub_1AF51E494(40, 0xE100000000000000, v2, v3);
    if ((v5 & 1) == 0)
    {
      v6 = sub_1AFDFD1F8();
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v2 = MEMORY[0x1B27189E0](v6, v8, v10, v12);
      v4 = v13;
    }

    v15 = *(v18 + 16);
    v14 = *(v18 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1AFC06BF8(v14 > 1, v15 + 1, 1);
    }

    *(v18 + 16) = v15 + 1;
    v16 = (v18 + 24 * v15);
    v16[4] = v2;
    v16[5] = v4;
    v16[6] = v1;
  }

  return v18;
}

uint64_t sub_1AF575FC4()
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC06C48(0, 9, 0);
  type metadata accessor for VFXForceFieldType(0);
  v0 = 0x20u;
  do
  {
    v1 = *(&unk_1F24F4D68 + v0);
    v2 = sub_1AFDFCF88();
    v4 = v3;
    sub_1AF51E494(40, 0xE100000000000000, v2, v3);
    if ((v5 & 1) == 0)
    {
      v6 = sub_1AFDFD1F8();
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v2 = MEMORY[0x1B27189E0](v6, v8, v10, v12);
      v4 = v13;
    }

    v15 = *(v18 + 16);
    v14 = *(v18 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1AFC06C48(v14 > 1, v15 + 1, 1);
    }

    *(v18 + 16) = v15 + 1;
    v16 = (v18 + 24 * v15);
    v16[4] = v2;
    v16[5] = v4;
    v16[6] = v1;
    v0 += 8;
  }

  while (v0 != 104);
  return v18;
}

uint64_t sub_1AF57612C()
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AFC06EC8(0, 3, 0);
  v0 = v24;
  type metadata accessor for ForceFieldCullMode(0);
  v2 = v1;
  v4 = *aNone_17;
  v3 = unk_1F24F4DF8;
  v5 = qword_1F24F4E00;
  v6 = *(v24 + 16);
  v7 = *(v24 + 24);
  v8 = v6 + 1;

  if (v6 >= v7 >> 1)
  {
    sub_1AFC06EC8(v7 > 1, v6 + 1, 1);
    v0 = v24;
  }

  *(v0 + 16) = v8;
  v9 = (v0 + 48 * v6);
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v5;
  v9[9] = v2;
  v11 = *aFront_1;
  v10 = unk_1F24F4E10;
  v12 = qword_1F24F4E18;
  v13 = *(v0 + 24);
  v14 = v6 + 2;

  if (v8 >= v13 >> 1)
  {
    sub_1AFC06EC8(v13 > 1, v14, 1);
  }

  *(v0 + 16) = v14;
  v15 = v0 + 48 * v8;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  *(v15 + 56) = v23;
  *(v15 + 72) = v2;
  v17 = *aBack_2;
  v16 = unk_1F24F4E28;
  v18 = qword_1F24F4E30;
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);

  if (v19 >= v20 >> 1)
  {
    sub_1AFC06EC8(v20 > 1, v19 + 1, 1);
  }

  *(v0 + 16) = v19 + 1;
  v21 = v0 + 48 * v19;
  *(v21 + 32) = v17;
  *(v21 + 40) = v16;
  *(v21 + 48) = v18;
  *(v21 + 56) = v23;
  *(v21 + 72) = v2;
  sub_1AF5A8B20(0, &qword_1EB63BCD0, type metadata accessor for ForceFieldCullMode);
  swift_arrayDestroy();
  return v0;
}

uint64_t sub_1AF57630C()
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AFC06C98(0, 8, 0);
  type metadata accessor for MTLCompareFunction(0);
  for (i = 0; i != 64; i += 8)
  {
    v1 = *(&unk_1F24F4E38 + i + 32);
    v2 = sub_1AFDFCF88();
    v4 = v3;
    sub_1AF51E494(40, 0xE100000000000000, v2, v3);
    if ((v5 & 1) == 0)
    {
      v6 = sub_1AFDFD1F8();
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v2 = MEMORY[0x1B27189E0](v6, v8, v10, v12);
      v4 = v13;
    }

    v15 = *(v18 + 16);
    v14 = *(v18 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1AFC06C98(v14 > 1, v15 + 1, 1);
    }

    *(v18 + 16) = v15 + 1;
    v16 = (v18 + 24 * v15);
    v16[4] = v2;
    v16[5] = v4;
    v16[6] = v1;
  }

  return v18;
}

uint64_t sub_1AF576478()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06CE8(0, 3, 0);
  type metadata accessor for VFXSSRThicknessMode(0);
  v0 = qword_1F24F4EB8;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06CE8(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = (v49 + 24 * v14);
  v15[4] = v1;
  v15[5] = v3;
  v15[6] = v0;
  v16 = qword_1F24F4EC0;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06CE8(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = (v49 + 24 * v30);
  v31[4] = v17;
  v31[5] = v19;
  v31[6] = v16;
  v32 = qword_1F24F4EC8;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06CE8(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = (v49 + 24 * v46);
  v47[4] = v33;
  v47[5] = v35;
  v47[6] = v32;
  return v49;
}

uint64_t sub_1AF576764()
{
  v0 = sub_1AF576CF8(sub_1AFC06D38, type metadata accessor for VFXCameraToneMappingMode, qword_1F24F4EF0, &qword_1F24F4EF0[1]);
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v14;
    type metadata accessor for VFXCameraToneMappingMode(0);
    v4 = v3;
    v5 = (v0 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1AFC06EC8(v10 > 1, v9 + 1, 1);
      }

      v5 += 3;
      *(v14 + 16) = v9 + 1;
      v11 = v14 + 48 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      *(v11 + 48) = v8;
      *(v11 + 56) = v13;
      *(v11 + 72) = v4;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1AF5768B8()
{
  v0 = sub_1AF576CF8(sub_1AFC06D88, type metadata accessor for VFXCameraDepthOfFieldMode, qword_1F24F4F20, &qword_1F24F4F20[1]);
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v14;
    type metadata accessor for VFXCameraDepthOfFieldMode(0);
    v4 = v3;
    v5 = (v0 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1AFC06EC8(v10 > 1, v9 + 1, 1);
      }

      v5 += 3;
      *(v14 + 16) = v9 + 1;
      v11 = v14 + 48 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      *(v11 + 48) = v8;
      *(v11 + 56) = v13;
      *(v11 + 72) = v4;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1AF576A0C()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06DD8(0, 3, 0);
  type metadata accessor for VFXCameraDepthOfFieldQuality(0);
  v0 = qword_1F24F4F50;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06DD8(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = (v49 + 24 * v14);
  v15[4] = v1;
  v15[5] = v3;
  v15[6] = v0;
  v16 = qword_1F24F4F58;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06DD8(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = (v49 + 24 * v30);
  v31[4] = v17;
  v31[5] = v19;
  v31[6] = v16;
  v32 = qword_1F24F4F60;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06DD8(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = (v49 + 24 * v46);
  v47[4] = v33;
  v47[5] = v35;
  v47[6] = v32;
  return v49;
}

uint64_t sub_1AF576CF8(void (*a1)(BOOL, uint64_t, uint64_t), void (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v41 = MEMORY[0x1E69E7CC0];
  a1(0, 2, 0);
  a2(0);
  v8 = *a3;
  v9 = sub_1AFDFCF88();
  v11 = v10;
  sub_1AF51E494(40, 0xE100000000000000, v9, v10);
  if ((v12 & 1) == 0)
  {
    v13 = sub_1AFDFD1F8();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v9 = MEMORY[0x1B27189E0](v13, v15, v17, v19);
    v11 = v20;
  }

  v22 = *(v41 + 16);
  v21 = *(v41 + 24);
  if (v22 >= v21 >> 1)
  {
    a1(v21 > 1, v22 + 1, 1);
  }

  *(v41 + 16) = v22 + 1;
  v23 = (v41 + 24 * v22);
  v23[4] = v9;
  v23[5] = v11;
  v23[6] = v8;
  v24 = *a4;
  v25 = sub_1AFDFCF88();
  v27 = v26;
  sub_1AF51E494(40, 0xE100000000000000, v25, v26);
  if ((v28 & 1) == 0)
  {
    v29 = sub_1AFDFD1F8();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v25 = MEMORY[0x1B27189E0](v29, v31, v33, v35);
    v27 = v36;
  }

  v38 = *(v41 + 16);
  v37 = *(v41 + 24);
  if (v38 >= v37 >> 1)
  {
    a1(v37 > 1, v38 + 1, 1);
  }

  *(v41 + 16) = v38 + 1;
  v39 = (v41 + 24 * v38);
  v39[4] = v25;
  v39[5] = v27;
  v39[6] = v24;
  return v41;
}

uint64_t sub_1AF576F30()
{
  v0 = sub_1AF576CF8(sub_1AFC06E28, type metadata accessor for VFXCameraProjectionDirection, qword_1F24F4F88, &qword_1F24F4F88[1]);
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC06EC8(0, v1, 0);
    v2 = v14;
    type metadata accessor for VFXCameraProjectionDirection(0);
    v4 = v3;
    v5 = (v0 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v9 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1AFC06EC8(v10 > 1, v9 + 1, 1);
      }

      v5 += 3;
      *(v14 + 16) = v9 + 1;
      v11 = v14 + 48 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v6;
      *(v11 + 48) = v8;
      *(v11 + 56) = v13;
      *(v11 + 72) = v4;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1AF577084()
{
  v49 = MEMORY[0x1E69E7CC0];
  sub_1AFC06E78(0, 3, 0);
  type metadata accessor for VFXCameraLensBlurFilterQuality(0);
  v0 = qword_1F24F4FB8;
  v1 = sub_1AFDFCF88();
  v3 = v2;
  sub_1AF51E494(40, 0xE100000000000000, v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = sub_1AFDFD1F8();
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v1 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v3 = v12;
  }

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1AFC06E78(v13 > 1, v14 + 1, 1);
  }

  *(v49 + 16) = v14 + 1;
  v15 = (v49 + 24 * v14);
  v15[4] = v1;
  v15[5] = v3;
  v15[6] = v0;
  v16 = qword_1F24F4FC0;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  sub_1AF51E494(40, 0xE100000000000000, v17, v18);
  if ((v20 & 1) == 0)
  {
    v21 = sub_1AFDFD1F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v17 = MEMORY[0x1B27189E0](v21, v23, v25, v27);
    v19 = v28;
  }

  v30 = *(v49 + 16);
  v29 = *(v49 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_1AFC06E78(v29 > 1, v30 + 1, 1);
  }

  *(v49 + 16) = v30 + 1;
  v31 = (v49 + 24 * v30);
  v31[4] = v17;
  v31[5] = v19;
  v31[6] = v16;
  v32 = qword_1F24F4FC8;
  v33 = sub_1AFDFCF88();
  v35 = v34;
  sub_1AF51E494(40, 0xE100000000000000, v33, v34);
  if ((v36 & 1) == 0)
  {
    v37 = sub_1AFDFD1F8();
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v33 = MEMORY[0x1B27189E0](v37, v39, v41, v43);
    v35 = v44;
  }

  v46 = *(v49 + 16);
  v45 = *(v49 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_1AFC06E78(v45 > 1, v46 + 1, 1);
  }

  *(v49 + 16) = v46 + 1;
  v47 = (v49 + 24 * v46);
  v47[4] = v33;
  v47[5] = v35;
  v47[6] = v32;
  return v49;
}

uint64_t sub_1AF577370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_conformsToProtocol2();
  if (v13 && a4)
  {
    v14 = v13;
    type metadata accessor for PropertyDescription();
    v15 = swift_allocObject();
    *(v15 + 136) = 0;
    *(v15 + 216) = 0;
    *(v15 + 80) = 0;
    *(v15 + 88) = 0;
    MEMORY[0x1EEE9AC00](v15, v16);
    v17 = MEMORY[0x1E69E7CA0] + 8;
    KeyPath = swift_getKeyPath();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    *(v15 + 32) = KeyPath;
    *(v15 + 40) = v17;
    *(v15 + 48) = 0;
    *(v15 + 56) = 1;
    *(v15 + 58) = 1028;
    *(v15 + 184) = 0;
    *(v15 + 188) = 1;
    *(v15 + 192) = 0;
    *(v15 + 196) = 1;
    *(v15 + 200) = 0x1000100000000;
    *(v15 + 208) = 1;
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    *(v15 + 210) = 4;
    *(v15 + 144) = xmmword_1AFE22A20;
    v19 = MEMORY[0x1E69E7CC0];
    *(v15 + 168) = 0;
    *(v15 + 176) = 0;
    *(v15 + 160) = v19;
    *(v15 + 96) = 0;
    *(v15 + 104) = a1;
    *(v15 + 112) = 0;
    v20 = swift_allocObject();
    v20[2] = a4;
    v20[3] = v14;
    v20[4] = a6;
    v20[5] = a7;
    v20[6] = a4;
    v20[7] = a5;
    *(v15 + 120) = sub_1AF57A8B0;
    *(v15 + 128) = v20;

    return v15;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF57756C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, int a21, char a22, int a23, char a24, int a25, char a26, int a27, char a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA2F8;
  v29[5] = a3;
  v29[2] = sub_1AF5A9B84;
  v29[3] = a3;
  v29[6] = a3;
  type metadata accessor for PropertyDescription();
  v30 = swift_allocObject();
  *(v30 + 104) = 0;
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  swift_retain_n();

  v31 = sub_1AFDFDFE8();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = MEMORY[0x1E69E7360];
  *(v30 + 48) = v31;
  *(v30 + 56) = v32 & 1;
  *(v30 + 58) = a29;
  v33 = *&a7;
  v34 = v33;
  if (a8)
  {
    v34 = 0.0;
  }

  *(v30 + 184) = v34;
  *(v30 + 188) = a8 & 1;
  v35 = a17;
  v36 = v35;
  if (a18)
  {
    v36 = 0.0;
  }

  *(v30 + 192) = v36;
  *(v30 + 196) = a18 & 1;
  v37 = a19;
  v38 = v37;
  if (a20)
  {
    v38 = 0.0;
  }

  *(v30 + 200) = v38;
  *(v30 + 204) = a20 & 1;
  if (a24)
  {
    a22 = 0;
  }

  *(v30 + 205) = a22;
  *(v30 + 206) = a24 & 1;
  if (a28)
  {
    a26 = 0;
  }

  *(v30 + 207) = a26;
  *(v30 + 208) = a28 & 1;
  *(v30 + 96) = a6;
  *(v30 + 144) = a4;
  *(v30 + 152) = a5;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = a29;
  if (*(a32 + 16))
  {
    *(v30 + 160) = a32;

LABEL_19:

    goto LABEL_20;
  }

  v41 = MEMORY[0x1E69E7360];
  v42 = swift_conformsToProtocol2();
  if (v42)
  {
    v41 = (*(v42 + 8))(MEMORY[0x1E69E7360], v42);
  }

  v43 = swift_conformsToProtocol2();
  if (!v43 || !v41)
  {

    goto LABEL_19;
  }

  v44 = *(v43 + 8);
  v45 = v43;

  *(v30 + 160) = v44(v41, v45);
LABEL_20:
  *(v30 + 64) = sub_1AF5A96AC;
  *(v30 + 72) = a3;
  *(v30 + 168) = a30;
  *(v30 + 176) = a31;
  *(v30 + 216) = a33;

  return v30;
}

uint64_t sub_1AF5778B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, int a21, char a22, int a23, char a24, int a25, char a26, int a27, char a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1AF5A9240(0, &unk_1EB63A628, &type metadata for TextureMipFilterMode, type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA0D8;
  v29[5] = a3;
  v29[2] = sub_1AF5A9B98;
  v29[3] = a3;
  v29[6] = a3;
  type metadata accessor for PropertyDescription();
  v30 = swift_allocObject();
  *(v30 + 104) = 0;
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  swift_retain_n();

  v31 = sub_1AFDFDFE8();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = &type metadata for TextureMipFilterMode;
  *(v30 + 48) = v31;
  *(v30 + 56) = v32 & 1;
  *(v30 + 58) = a29;
  v33 = *&a7;
  v34 = v33;
  if (a8)
  {
    v34 = 0.0;
  }

  *(v30 + 184) = v34;
  *(v30 + 188) = a8 & 1;
  v35 = a17;
  v36 = v35;
  if (a18)
  {
    v36 = 0.0;
  }

  *(v30 + 192) = v36;
  *(v30 + 196) = a18 & 1;
  v37 = a19;
  v38 = v37;
  if (a20)
  {
    v38 = 0.0;
  }

  *(v30 + 200) = v38;
  *(v30 + 204) = a20 & 1;
  if (a24)
  {
    a22 = 0;
  }

  *(v30 + 205) = a22;
  *(v30 + 206) = a24 & 1;
  if (a28)
  {
    a26 = 0;
  }

  *(v30 + 207) = a26;
  *(v30 + 208) = a28 & 1;
  *(v30 + 96) = a6;
  *(v30 + 144) = a4;
  *(v30 + 152) = a5;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = a29;
  if (*(a32 + 16))
  {
    *(v30 + 160) = a32;

LABEL_19:

    goto LABEL_20;
  }

  v41 = &type metadata for TextureMipFilterMode;
  v42 = swift_conformsToProtocol2();
  if (v42)
  {
    v41 = (*(v42 + 8))(&type metadata for TextureMipFilterMode, v42);
  }

  v43 = swift_conformsToProtocol2();
  if (!v43 || !v41)
  {

    goto LABEL_19;
  }

  v44 = *(v43 + 8);
  v45 = v43;

  *(v30 + 160) = v44(v41, v45);
LABEL_20:
  *(v30 + 64) = sub_1AF5A96C8;
  *(v30 + 72) = a3;
  *(v30 + 168) = a30;
  *(v30 + 176) = a31;
  *(v30 + 216) = a33;

  return v30;
}

uint64_t sub_1AF577BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, int a21, char a22, int a23, char a24, int a25, char a26, int a27, char a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA0DC;
  v29[5] = a3;
  v29[2] = sub_1AF5A9B90;
  v29[3] = a3;
  v29[6] = a3;
  type metadata accessor for PropertyDescription();
  v30 = swift_allocObject();
  *(v30 + 104) = 0;
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  swift_retain_n();

  v31 = sub_1AFDFDFE8();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = &type metadata for AddressMode;
  *(v30 + 48) = v31;
  *(v30 + 56) = v32 & 1;
  *(v30 + 58) = a29;
  v33 = *&a7;
  v34 = v33;
  if (a8)
  {
    v34 = 0.0;
  }

  *(v30 + 184) = v34;
  *(v30 + 188) = a8 & 1;
  v35 = a17;
  v36 = v35;
  if (a18)
  {
    v36 = 0.0;
  }

  *(v30 + 192) = v36;
  *(v30 + 196) = a18 & 1;
  v37 = a19;
  v38 = v37;
  if (a20)
  {
    v38 = 0.0;
  }

  *(v30 + 200) = v38;
  *(v30 + 204) = a20 & 1;
  if (a24)
  {
    a22 = 0;
  }

  *(v30 + 205) = a22;
  *(v30 + 206) = a24 & 1;
  if (a28)
  {
    a26 = 0;
  }

  *(v30 + 207) = a26;
  *(v30 + 208) = a28 & 1;
  *(v30 + 96) = a6;
  *(v30 + 144) = a4;
  *(v30 + 152) = a5;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = a29;
  if (*(a32 + 16))
  {
    *(v30 + 160) = a32;

LABEL_19:

    goto LABEL_20;
  }

  v41 = &type metadata for AddressMode;
  v42 = swift_conformsToProtocol2();
  if (v42)
  {
    v41 = (*(v42 + 8))(&type metadata for AddressMode, v42);
  }

  v43 = swift_conformsToProtocol2();
  if (!v43 || !v41)
  {

    goto LABEL_19;
  }

  v44 = *(v43 + 8);
  v45 = v43;

  *(v30 + 160) = v44(v41, v45);
LABEL_20:
  *(v30 + 64) = sub_1AF5A96BC;
  *(v30 + 72) = a3;
  *(v30 + 168) = a30;
  *(v30 + 176) = a31;
  *(v30 + 216) = a33;

  return v30;
}

uint64_t sub_1AF577F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, int a21, char a22, int a23, char a24, int a25, char a26, int a27, char a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1AF57B9C0();
  v28 = swift_allocObject();
  v28[4] = sub_1AF5A96C0;
  v28[5] = a3;
  v28[2] = sub_1AF5A9B94;
  v28[3] = a3;
  v28[6] = a3;
  type metadata accessor for PropertyDescription();
  v29 = swift_allocObject();
  *(v29 + 104) = 0;
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  swift_retain_n();

  v30 = sub_1AFDFDFE8();
  v32 = v31;
  sub_1AF583D60(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  *(v29 + 32) = a3;
  *(v29 + 40) = v33;
  *(v29 + 48) = v30;
  *(v29 + 56) = v32 & 1;
  *(v29 + 58) = a29;
  v34 = *&a7;
  v35 = v34;
  if (a8)
  {
    v35 = 0.0;
  }

  *(v29 + 184) = v35;
  *(v29 + 188) = a8 & 1;
  v36 = a17;
  v37 = v36;
  if (a18)
  {
    v37 = 0.0;
  }

  *(v29 + 192) = v37;
  *(v29 + 196) = a18 & 1;
  v38 = a19;
  v39 = v38;
  if (a20)
  {
    v39 = 0.0;
  }

  *(v29 + 200) = v39;
  *(v29 + 204) = a20 & 1;
  if (a24)
  {
    a22 = 0;
  }

  *(v29 + 205) = a22;
  *(v29 + 206) = a24 & 1;
  if (a28)
  {
    a26 = 0;
  }

  *(v29 + 207) = a26;
  *(v29 + 208) = a28 & 1;
  *(v29 + 96) = a6;
  *(v29 + 144) = a4;
  *(v29 + 152) = a5;
  *(v29 + 80) = v28;
  *(v29 + 88) = &off_1F2535378;
  *(v29 + 210) = a29;
  if (*(a32 + 16))
  {
    *(v29 + 160) = a32;

LABEL_20:

    goto LABEL_21;
  }

  v42 = v33;
  v43 = swift_conformsToProtocol2();
  if (v43 && v42)
  {
    v42 = (*(v43 + 8))(v42, v43);
  }

  v44 = swift_conformsToProtocol2();
  if (!v44 || !v42)
  {

    goto LABEL_20;
  }

  v45 = *(v44 + 8);
  v46 = v44;

  *(v29 + 160) = v45(v42, v46);
LABEL_21:
  *(v29 + 64) = sub_1AF5A96C4;
  *(v29 + 72) = a3;
  *(v29 + 168) = a30;
  *(v29 + 176) = a31;
  *(v29 + 216) = a33;

  return v29;
}

uint64_t sub_1AF5782A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, int a21, char a22, int a23, char a24, int a25, char a26, int a27, char a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA2F8;
  v29[5] = a3;
  v29[2] = sub_1AF5A9B8C;
  v29[3] = a3;
  v29[6] = a3;
  type metadata accessor for PropertyDescription();
  v30 = swift_allocObject();
  *(v30 + 104) = 0;
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  swift_retain_n();

  v31 = sub_1AFDFDFE8();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = &type metadata for Entity;
  *(v30 + 48) = v31;
  *(v30 + 56) = v32 & 1;
  *(v30 + 58) = a29;
  v33 = *&a7;
  v34 = v33;
  if (a8)
  {
    v34 = 0.0;
  }

  *(v30 + 184) = v34;
  *(v30 + 188) = a8 & 1;
  v35 = a17;
  v36 = v35;
  if (a18)
  {
    v36 = 0.0;
  }

  *(v30 + 192) = v36;
  *(v30 + 196) = a18 & 1;
  v37 = a19;
  v38 = v37;
  if (a20)
  {
    v38 = 0.0;
  }

  *(v30 + 200) = v38;
  *(v30 + 204) = a20 & 1;
  if (a24)
  {
    a22 = 0;
  }

  *(v30 + 205) = a22;
  *(v30 + 206) = a24 & 1;
  if (a28)
  {
    a26 = 0;
  }

  *(v30 + 207) = a26;
  *(v30 + 208) = a28 & 1;
  *(v30 + 96) = a6;
  *(v30 + 144) = a4;
  *(v30 + 152) = a5;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = a29;
  if (*(a32 + 16))
  {
    *(v30 + 160) = a32;

LABEL_19:

    goto LABEL_20;
  }

  v41 = &type metadata for Entity;
  v42 = swift_conformsToProtocol2();
  if (v42)
  {
    v41 = (*(v42 + 8))(&type metadata for Entity, v42);
  }

  v43 = swift_conformsToProtocol2();
  if (!v43 || !v41)
  {

    goto LABEL_19;
  }

  v44 = *(v43 + 8);
  v45 = v43;

  *(v30 + 160) = v44(v41, v45);
LABEL_20:
  *(v30 + 64) = sub_1AF5A96B4;
  *(v30 + 72) = a3;
  *(v30 + 168) = a30;
  *(v30 + 176) = a31;
  *(v30 + 216) = a33;

  return v30;
}

uint64_t sub_1AF5785E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, int a21, char a22, int a23, char a24, int a25, char a26, int a27, char a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5A942C;
  v29[5] = a3;
  v29[2] = sub_1AF5A9B9C;
  v29[3] = a3;
  v29[6] = a3;
  type metadata accessor for PropertyDescription();
  v30 = swift_allocObject();
  *(v30 + 104) = 0;
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  swift_retain_n();

  v31 = sub_1AFDFDFE8();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = MEMORY[0x1E69E6448];
  *(v30 + 48) = v31;
  *(v30 + 56) = v32 & 1;
  *(v30 + 58) = a29;
  v33 = *&a7;
  v34 = v33;
  if (a8)
  {
    v34 = 0.0;
  }

  *(v30 + 184) = v34;
  *(v30 + 188) = a8 & 1;
  v35 = a17;
  v36 = v35;
  if (a18)
  {
    v36 = 0.0;
  }

  *(v30 + 192) = v36;
  *(v30 + 196) = a18 & 1;
  v37 = a19;
  v38 = v37;
  if (a20)
  {
    v38 = 0.0;
  }

  *(v30 + 200) = v38;
  *(v30 + 204) = a20 & 1;
  if (a24)
  {
    a22 = 0;
  }

  *(v30 + 205) = a22;
  *(v30 + 206) = a24 & 1;
  if (a28)
  {
    a26 = 0;
  }

  *(v30 + 207) = a26;
  *(v30 + 208) = a28 & 1;
  *(v30 + 96) = a6;
  *(v30 + 144) = a4;
  *(v30 + 152) = a5;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = a29;
  if (*(a32 + 16))
  {
    *(v30 + 160) = a32;

LABEL_19:

    goto LABEL_20;
  }

  v41 = MEMORY[0x1E69E6448];
  v42 = swift_conformsToProtocol2();
  if (v42)
  {
    v41 = (*(v42 + 8))(MEMORY[0x1E69E6448], v42);
  }

  v43 = swift_conformsToProtocol2();
  if (!v43 || !v41)
  {

    goto LABEL_19;
  }

  v44 = *(v43 + 8);
  v45 = v43;

  *(v30 + 160) = v44(v41, v45);
LABEL_20:
  *(v30 + 64) = sub_1AF5A96CC;
  *(v30 + 72) = a3;
  *(v30 + 168) = a30;
  *(v30 + 176) = a31;
  *(v30 + 216) = a33;

  return v30;
}

uint64_t sub_1AF578930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18, double a19, char a20, int a21, char a22, int a23, char a24, int a25, char a26, int a27, char a28, __int16 a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_1AF5A9240(0, &qword_1EB63A620, &type metadata for FilterMode, type metadata accessor for EntityGetSet);
  v29 = swift_allocObject();
  v29[4] = sub_1AF5AA0D4;
  v29[5] = a3;
  v29[2] = sub_1AF5A9594;
  v29[3] = a3;
  v29[6] = a3;
  type metadata accessor for PropertyDescription();
  v30 = swift_allocObject();
  *(v30 + 104) = 0;
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  swift_retain_n();

  v31 = sub_1AFDFDFE8();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = &type metadata for FilterMode;
  *(v30 + 48) = v31;
  *(v30 + 56) = v32 & 1;
  *(v30 + 58) = a29;
  v33 = *&a7;
  v34 = v33;
  if (a8)
  {
    v34 = 0.0;
  }

  *(v30 + 184) = v34;
  *(v30 + 188) = a8 & 1;
  v35 = a17;
  v36 = v35;
  if (a18)
  {
    v36 = 0.0;
  }

  *(v30 + 192) = v36;
  *(v30 + 196) = a18 & 1;
  v37 = a19;
  v38 = v37;
  if (a20)
  {
    v38 = 0.0;
  }

  *(v30 + 200) = v38;
  *(v30 + 204) = a20 & 1;
  if (a24)
  {
    a22 = 0;
  }

  *(v30 + 205) = a22;
  *(v30 + 206) = a24 & 1;
  if (a28)
  {
    a26 = 0;
  }

  *(v30 + 207) = a26;
  *(v30 + 208) = a28 & 1;
  *(v30 + 96) = a6;
  *(v30 + 144) = a4;
  *(v30 + 152) = a5;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = a29;
  if (*(a32 + 16))
  {
    *(v30 + 160) = a32;

LABEL_19:

    goto LABEL_20;
  }

  v41 = &type metadata for FilterMode;
  v42 = swift_conformsToProtocol2();
  if (v42)
  {
    v41 = (*(v42 + 8))(&type metadata for FilterMode, v42);
  }

  v43 = swift_conformsToProtocol2();
  if (!v43 || !v41)
  {

    goto LABEL_19;
  }

  v44 = *(v43 + 8);
  v45 = v43;

  *(v30 + 160) = v44(v41, v45);
LABEL_20:
  *(v30 + 64) = sub_1AF5A96B8;
  *(v30 + 72) = a3;
  *(v30 + 168) = a30;
  *(v30 + 176) = a31;
  *(v30 + 216) = a33;

  return v30;
}

uint64_t sub_1AF5790A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = sub_1AF428E18(a2, a3, sub_1AF56F254);

  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:

    return 0;
  }

  v6 = sub_1AFDFE108();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1AFDFE008();
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2719C70](v7, v5);
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = sub_1AFDFCE58();

    if (v9)
    {
      break;
    }

    if (v6 == ++v7)
    {
      goto LABEL_10;
    }
  }

  return v8;
}

uint64_t sub_1AF579200(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = sub_1AFC892CC(*(a2 + 16), 0);
    sub_1AFC869B0(&v10, (v4 + 32), v2, a2);

    sub_1AF0FBB14();
    if (v4 < 0)
    {
LABEL_16:
      v5 = sub_1AFDFE108();
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }
  }

  if ((v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_13:

    return 0;
  }

LABEL_7:
  sub_1AFDFE008();
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v10 = *(v7 + 32);

    v8 = sub_1AFDFCE58();

    if (v8)
    {
      break;
    }

    if (v5 == ++v6)
    {
      goto LABEL_13;
    }
  }

  return v7;
}

uint64_t sub_1AF57937C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52966C(a1, a2, v3, &type metadata for Scheduling, &off_1F253D798);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF5794FC()
{
  if (!qword_1EB639ED0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639ED0);
    }
  }
}

void sub_1AF5795B0()
{
  if (!qword_1ED722F10)
  {
    sub_1AF0D8160(255, &qword_1ED7232A0);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722F10);
    }
  }
}

unint64_t sub_1AF57961C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF537200(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF579700@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF537168(a1);
  *a2 = result;
  return result;
}

void sub_1AF5797C8()
{
  if (!qword_1EB639EE8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639EE8);
    }
  }
}

void sub_1AF579860()
{
  if (!qword_1EB639F00)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F00);
    }
  }
}

unint64_t sub_1AF5798C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5276D4(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF579990@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF527620(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF579ADC()
{
  if (!qword_1EB633868)
  {
    sub_1AF583D60(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB633868);
    }
  }
}

uint64_t sub_1AF579BB0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5274C0(a1);
  *a2 = result;
  return result;
}

void sub_1AF579CB0()
{
  if (!qword_1EB639F20)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F20);
    }
  }
}

void sub_1AF579D10()
{
  if (!qword_1EB639F28)
  {
    sub_1AF583D60(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F28);
    }
  }
}

uint64_t sub_1AF579DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  result = a3(a1, a2, v4);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8 & 1;
  return result;
}

void sub_1AF579DDC()
{
  if (!qword_1EB639F30)
  {
    sub_1AF583D60(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F30);
    }
  }
}

void sub_1AF579EAC()
{
  if (!qword_1EB639F38)
  {
    sub_1AF583D60(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F38);
    }
  }
}

double sub_1AF579F4C(uint32x4_t a1, uint32x4_t a2)
{
  a1.i32[3] = 0;
  a2.i32[3] = 0;
  a1.i64[0] = vmaxq_u32(a1, a2).u64[0];
  return *a1.i64;
}

double sub_1AF579F5C(uint32x4_t a1)
{
  a1.i32[3] = 0;
  a1.i64[0] = vminq_u32(a1, xmmword_1AFE552E0).u64[0];
  return *a1.i64;
}

void sub_1AF579FA0()
{
  if (!qword_1EB639F50)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F50);
    }
  }
}

void sub_1AF57A018()
{
  if (!qword_1EB639F58)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F58);
    }
  }
}

uint64_t sub_1AF57A114@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52B704(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF57A1E4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52B804(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF57A2AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52B5E0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57A3F8()
{
  if (!qword_1EB632520)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB632520);
    }
  }
}

void sub_1AF57A4B8()
{
  if (!qword_1EB639F60)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F60);
    }
  }
}

void sub_1AF57A534()
{
  if (!qword_1EB639F68)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F68);
    }
  }
}

void sub_1AF57A5F8()
{
  if (!qword_1EB639F70)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F70);
    }
  }
}

void sub_1AF57A710()
{
  if (!qword_1EB639F78)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F78);
    }
  }
}

void sub_1AF57A7B8()
{
  if (!qword_1EB639F90)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639F90);
    }
  }
}

void sub_1AF57A850()
{
  if (!qword_1EB639FA8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639FA8);
    }
  }
}

void sub_1AF57A8C0()
{
  if (!qword_1EB639FB0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639FB0);
    }
  }
}

double sub_1AF57A920@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5388B0(a1, &type metadata for LocalAABB, &off_1F25104C0, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1AF57AA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  result = a5(a1, a2, v6, a3, a4);
  *a6 = result;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10 & 1;
  return result;
}

void sub_1AF57AAE8()
{
  if (!qword_1ED72D340[0])
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, qword_1ED72D340);
    }
  }
}

double sub_1AF57ABF4(float32x4_t a1, float32x4_t a2)
{
  a1.i32[3] = 1.0;
  a2.i32[3] = 1.0;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  a1.i64[0] = vmulq_f32(vaddq_f32(a1, a2), v2).u64[0];
  return *a1.i64;
}

void sub_1AF57AC24()
{
  if (!qword_1EB639FB8)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639FB8);
    }
  }
}

void sub_1AF57ACB4()
{
  if (!qword_1EB639FC8)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639FC8);
    }
  }
}

void sub_1AF57ADAC()
{
  if (!qword_1EB639FE0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639FE0);
    }
  }
}

double sub_1AF57AE0C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5388B0(a1, &type metadata for WorldAABB, &off_1F2510410, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void sub_1AF57AFD4()
{
  if (!qword_1EB639FE8)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639FE8);
    }
  }
}

void sub_1AF57B0B4()
{
  if (!qword_1EB639FF0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB639FF0);
    }
  }
}

__n128 sub_1AF57B114@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF531C30(a1, &type metadata for WorldTransform, &off_1F2529FC0, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1AF57B250(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ComponentValueWriter();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1AF57B37C@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF531C30(a1, &type metadata for LastFrameWorldTransform, &off_1F2529EB0, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

void sub_1AF57B45C()
{
  if (!qword_1EB63A020)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A020);
    }
  }
}

void sub_1AF57B5D4()
{
  if (!qword_1EB63A028)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A028);
    }
  }
}

void sub_1AF57B744()
{
  if (!qword_1EB63A030)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A030);
    }
  }
}

uint64_t sub_1AF57B880@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF526C40(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void sub_1AF57B9C0()
{
  if (!qword_1ED725C70)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1ED725C70);
    }
  }
}

void sub_1AF57BA94()
{
  if (!qword_1EB63A040)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A040);
    }
  }
}

void sub_1AF57BB24()
{
  if (!qword_1EB63A050)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A050);
    }
  }
}

void sub_1AF57BBDC()
{
  if (!qword_1EB63A058)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A058);
    }
  }
}

double sub_1AF57BC7C(float32x4_t a1)
{
  v1.i64[0] = 0x3F0000003F000000;
  v1.i64[1] = 0x3F0000003F000000;
  v2 = vmulq_f32(a1, v1);
  v2.i32[3] = 0;
  x = v2;
  v12 = _simd_cos_f4(v2);
  v3 = _simd_sin_f4(x);
  v4 = vextq_s8(v12, v12, 4uLL);
  v5 = vmulq_f32(vzip1q_s32(vrev64q_s32(v12), v12), vextq_s8(vzip1q_s32(v4, v3), v4, 8uLL));
  v6 = vzip2q_s32(vzip1q_s32(v12, v3), v3);
  v6.f32[3] = -v3.f32[0];
  v7 = vextq_s8(v3, v3, 8uLL);
  v8 = vtrn1q_s32(v3, vextq_s8(v12, v12, 8uLL));
  v3.i32[3] = v3.i32[1];
  v9 = vtrn1q_s32(v7, v12);
  v9.f32[1] = -v12.f32[0];
  *&result = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v3, v6), v9)), v8, v5).u64[0];
  return result;
}

double sub_1AF57BD14(float32x4_t a1)
{
  _Q2 = a1;
  v2 = vmulq_f32(a1, a1);
  v3 = vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL)));
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v5 = _Q2.f32[3];
    _S9 = _Q2.f32[1];
    v7 = _Q2.f32[2];
    __asm { FMLA            S1, S9, V2.S[3] }

    v13 = _S1 / v3;
    v14 = (_S1 / v3);
    if (v14 <= 0.4999)
    {
      if (v14 >= -0.4999)
      {
        v18 = *&v2.i32[1];
        v19 = v2.i64[1];
        v21 = _Q2.f32[0];
        v22 = *v2.i32;
        v24 = atan2f(((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])) + ((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])), *&v2.i32[3] + (*&v2.i32[2] + (-*v2.i32 - *&v2.i32[1])));
        v23 = asinf(v13 + v13);
        atan2f(((v7 * v5) + (v21 * _S9)) + ((v7 * v5) + (v21 * _S9)), *(&v19 + 1) + ((v22 - v18) - *&v19));
        return COERCE_DOUBLE(__PAIR64__(LODWORD(v23), LODWORD(v24)));
      }

      v17 = atan2f(_Q2.f32[0], _Q2.f32[3]);
      *&v4 = v17 + v17;
      v16 = &dword_1AFE21DB8;
    }

    else
    {
      v15 = atan2f(_Q2.f32[0], _Q2.f32[3]);
      *&v4 = v15 + v15;
      v16 = &dword_1AFE21AFC;
    }

    HIDWORD(v4) = *v16;
  }

  return v4;
}

uint64_t sub_1AF57BE88@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5338A8(a1, a2, v3, &type metadata for Parent, &off_1F2529C98);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF57BF68()
{
  if (!qword_1EB63A090)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A090);
    }
  }
}

uint64_t sub_1AF57BFC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF537B10(a1, a2, v3, &type metadata for Children, &off_1F252A4A0);
  *a3 = result;
  return result;
}

void sub_1AF57C034()
{
  if (!qword_1EB63A098)
  {
    sub_1AF5A9240(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB63A098);
    }
  }
}

void sub_1AF57C0F4()
{
  if (!qword_1EB63A0A8)
  {
    sub_1AF5A9240(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0A8);
    }
  }
}

void sub_1AF57C170()
{
  if (!qword_1EB63A0B0)
  {
    sub_1AF5A9240(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0B0);
    }
  }
}

void sub_1AF57C264()
{
  if (!qword_1EB63A0B8)
  {
    sub_1AF5A9240(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0B8);
    }
  }
}

uint64_t sub_1AF57C2F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5338A8(a1, a2, v3, &type metadata for LookAt, &off_1F2562130);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF57C3D0()
{
  if (!qword_1EB63A0C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0C0);
    }
  }
}

unint64_t sub_1AF57C430@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for SmoothMotion, &off_1F25697A8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57C510()
{
  if (!qword_1EB63A0C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0C8);
    }
  }
}

unint64_t sub_1AF57C570@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5291C8(a1, a2, v3, &type metadata for RenderingOrder, &off_1F2560CC8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57C698()
{
  if (!qword_1EB63A0E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0E8);
    }
  }
}

unint64_t sub_1AF57C6F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for Scale1, &off_1F252F788);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57C7D8()
{
  if (!qword_1EB63A0F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0F0);
    }
  }
}

uint64_t sub_1AF57C838@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF537614(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF57C8C8()
{
  if (!qword_1ED725C78)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1ED725C78);
    }
  }
}

void sub_1AF57C99C()
{
  if (!qword_1EB63A0F8)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A0F8);
    }
  }
}

void sub_1AF57CA64()
{
  if (!qword_1EB63A108)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A108);
    }
  }
}

void sub_1AF57CBD4()
{
  if (!qword_1EB63A110)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A110);
    }
  }
}

void sub_1AF57CD44()
{
  if (!qword_1EB63A118)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A118);
    }
  }
}

void sub_1AF57CEB4()
{
  if (!qword_1EB63A120)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A120);
    }
  }
}

void sub_1AF57D024()
{
  if (!qword_1EB63A128)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A128);
    }
  }
}

uint64_t sub_1AF57D0C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52A428(a1, a2, v3, &type metadata for SpaceOverride, &off_1F2529D48);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AF57D1A4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52887C(a1);
  *a2 = result;
  return result;
}

void sub_1AF57D2A0()
{
  if (!qword_1EB63A148)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A148);
    }
  }
}

void sub_1AF57D300()
{
  if (!qword_1EB63A150)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A150);
    }
  }
}

uint64_t sub_1AF57D360@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF5370BC(a1, a2, v3, &type metadata for Name, &off_1F2535068);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AF57D460()
{
  if (!qword_1EB63A170)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A170);
    }
  }
}

void sub_1AF57D590()
{
  if (!qword_1EB63A178)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A178);
    }
  }
}

unint64_t sub_1AF57D630@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleRoughness, &off_1F252E2C8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57D710()
{
  if (!qword_1EB63A180)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A180);
    }
  }
}

unint64_t sub_1AF57D770@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleMetalness, &off_1F252E228);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57D850()
{
  if (!qword_1EB63A188)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A188);
    }
  }
}

unint64_t sub_1AF57D8B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleEmission, &off_1F252E188);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57D990()
{
  if (!qword_1EB63A190)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A190);
    }
  }
}

unint64_t sub_1AF57D9F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleAngle, &off_1F252E0E8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57DAD0()
{
  if (!qword_1EB63A198)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A198);
    }
  }
}

unint64_t sub_1AF57DB30@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleAngleVelocity, &off_1F252E048);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57DC10()
{
  if (!qword_1EB63A1A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1A0);
    }
  }
}

unint64_t sub_1AF57DC70@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleTextureFrame, &off_1F252CC98);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57DD50()
{
  if (!qword_1EB63A1A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1A8);
    }
  }
}

unint64_t sub_1AF57DDB0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5291C8(a1, a2, v3, &type metadata for ParticleID, &off_1F252DFA8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57DEEC()
{
  if (!qword_1EB63A1B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1B0);
    }
  }
}

unint64_t sub_1AF57DF4C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for Mass, &off_1F252DF08);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57E02C()
{
  if (!qword_1EB63A1B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1B8);
    }
  }
}

void sub_1AF57E15C()
{
  if (!qword_1EB63A1C0)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1C0);
    }
  }
}

void sub_1AF57E2CC()
{
  if (!qword_1EB63A1C8)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1C8);
    }
  }
}

unint64_t sub_1AF57E36C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleAge, &off_1F252CBE8);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57E44C()
{
  if (!qword_1EB63A1D0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1D0);
    }
  }
}

unint64_t sub_1AF57E4AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleLifetime, &off_1F252CB38);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57E58C()
{
  if (!qword_1EB63A1D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1D8);
    }
  }
}

void sub_1AF57E6BC()
{
  if (!qword_1EB63A1E0)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1E0);
    }
  }
}

void sub_1AF57E82C()
{
  if (!qword_1EB63A1E8)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1E8);
    }
  }
}

void sub_1AF57E99C()
{
  if (!qword_1EB63A1F0)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1F0);
    }
  }
}

void sub_1AF57EB0C()
{
  if (!qword_1EB63A1F8)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A1F8);
    }
  }
}

void sub_1AF57EC7C()
{
  if (!qword_1EB63A200)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A200);
    }
  }
}

unint64_t sub_1AF57ED1C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for NeighborCount, &off_1F252DA08);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57EDFC()
{
  if (!qword_1EB63A208)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A208);
    }
  }
}

void sub_1AF57EF1C()
{
  if (!qword_1EB63A210)
  {
    sub_1AF583D60(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A210);
    }
  }
}

uint64_t sub_1AF57EFBC(float32x4_t a1)
{
  v1.i64[0] = 0x3F0000003F000000;
  v1.i64[1] = 0x3F0000003F000000;
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  v3 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v1, vdupq_n_s32(0x437F0000u), a1)), v2);
  v4 = v3.i32[0] | (v3.i32[1] << 8);
  *v3.i8 = vshl_u32(*&vextq_s8(v3, v3, 8uLL), 0x1800000010);
  return v4 | v3.i32[0] | v3.i32[1];
}

double sub_1AF57F008(unsigned int a1)
{
  v1.i64[0] = 0xFF000000FFLL;
  v1.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(vdupq_n_s32(a1), xmmword_1AFE42AA0), v1)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

__n128 sub_1AF57F038@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF531C30(a1, &type metadata for ProjectionMatrix, &off_1F2511DA0, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1AF57F194@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52ACB0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF57F264@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52AB74(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF57F2F4()
{
  if (!qword_1EB634350)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB634350);
    }
  }
}

uint64_t sub_1AF57F458@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52AC18(a1);
  *a2 = result;
  return result;
}

void sub_1AF57F5C0()
{
  if (!qword_1EB63A228)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A228);
    }
  }
}

void sub_1AF57F690()
{
  if (!qword_1EB63A240)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A240);
    }
  }
}

void sub_1AF57F6F0()
{
  if (!qword_1EB63A248)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A248);
    }
  }
}

void sub_1AF57F750()
{
  if (!qword_1EB63A250)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A250);
    }
  }
}

void sub_1AF57F7D4()
{
  if (!qword_1EB63A258)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A258);
    }
  }
}

void sub_1AF57F870()
{
  if (!qword_1EB63A260)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A260);
    }
  }
}

void sub_1AF57F904()
{
  if (!qword_1EB63A268)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A268);
    }
  }
}

uint64_t sub_1AF57F964@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52BB24(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF57FA34@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52BC98(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF57FAFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52BBD8(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57FC6C()
{
  if (!qword_1EB63A270)
  {
    sub_1AF589E74(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A270);
    }
  }
}

void sub_1AF57FD00()
{
  if (!qword_1EB63A278)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A278);
    }
  }
}

void sub_1AF57FD60()
{
  if (!qword_1EB63A280)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A280);
    }
  }
}

void sub_1AF57FDC0()
{
  if (!qword_1EB63A288)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A288);
    }
  }
}

unint64_t sub_1AF57FE20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF5326F0(a1, a2, v3, &type metadata for CameraDepthOfField, &off_1F2512840);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF57FF00()
{
  if (!qword_1EB63A290)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A290);
    }
  }
}

unint64_t sub_1AF57FF60@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF526B90(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF580030@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF526AEC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5801C0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5269AC(a1);
  *a2 = result;
  return result;
}

void sub_1AF580288()
{
  if (!qword_1EB63A298)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A298);
    }
  }
}

void sub_1AF58031C()
{
  if (!qword_1EB63A2A0)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A2A0);
    }
  }
}

void sub_1AF5803BC()
{
  if (!qword_1EB63A2A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A2A8);
    }
  }
}

void sub_1AF58041C()
{
  if (!qword_1EB63A2B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A2B0);
    }
  }
}

unint64_t sub_1AF58047C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF528A58(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5805E8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52890C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5806B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5289AC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF580780()
{
  if (!qword_1EB63A2C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A2C0);
    }
  }
}

void sub_1AF580810()
{
  if (!qword_1EB63A2D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A2D8);
    }
  }
}

void sub_1AF580870()
{
  if (!qword_1EB63A2E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A2E0);
    }
  }
}

void sub_1AF5808D0()
{
  if (!qword_1EB63A2E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A2E8);
    }
  }
}

uint64_t sub_1AF580930@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52A428(a1, a2, v3, &type metadata for CameraToneMapping, &off_1F2512660);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AF580A10@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52A398(a1);
  *a2 = result;
  return result;
}

void sub_1AF580B08()
{
  if (!qword_1EB63A308)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A308);
    }
  }
}

void sub_1AF580B68()
{
  if (!qword_1EB63A310)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A310);
    }
  }
}

unint64_t sub_1AF580BC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537A60(a1, a2, v3, &type metadata for CameraVignetting, &off_1F25125C0);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF580CA8()
{
  if (!qword_1EB63A318)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A318);
    }
  }
}

unint64_t sub_1AF580D08@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52B348(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF580E98()
{
  if (!qword_1EB63A320)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A320);
    }
  }
}

void sub_1AF580F38()
{
  if (!qword_1EB63A328)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A328);
    }
  }
}

uint64_t sub_1AF580F98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52911C(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF581074@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF529064(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF5811C0(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0uLL;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF581218()
{
  if (!qword_1EB63A358)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A358);
    }
  }
}

uint64_t sub_1AF5812E4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5378EC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF5813B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5379A0(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_1AF581520@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF537818(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

uint64_t sub_1AF5815DC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF537770(a1);
  *a2 = result;
  return result;
}

void sub_1AF5816D4()
{
  if (!qword_1EB63A388)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A388);
    }
  }
}

void sub_1AF581774()
{
  if (!qword_1EB63A3A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3A0);
    }
  }
}

void sub_1AF5817D4()
{
  if (!qword_1EB63A3A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3A8);
    }
  }
}

void sub_1AF581834()
{
  if (!qword_1EB63A3B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3B0);
    }
  }
}

void sub_1AF581894()
{
  if (!qword_1EB63A3B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3B8);
    }
  }
}

unint64_t sub_1AF5818F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for IBLGenerator, &off_1F252A618);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5819D4()
{
  if (!qword_1EB63A3C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3C0);
    }
  }
}

void sub_1AF581B34()
{
  if (!qword_1EB63A3E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3E0);
    }
  }
}

void sub_1AF581BEC()
{
  if (!qword_1EB633888)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB633888);
    }
  }
}

void sub_1AF581CB4()
{
  if (!qword_1EB63A3E8)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3E8);
    }
  }
}

uint64_t sub_1AF581D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  result = a5(a1, a2, v6, a3, a4);
  *a6 = result;
  *(a6 + 8) = v9;
  *(a6 + 16) = v10;
  *(a6 + 24) = v11;
  return result;
}

void sub_1AF581DBC()
{
  if (!qword_1EB63A3F0)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3F0);
    }
  }
}

void sub_1AF581EB8()
{
  if (!qword_1EB63A3F8)
  {
    sub_1AF589E74(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A3F8);
    }
  }
}

uint64_t sub_1AF581FE8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF538978(a1);
  *a2 = result;
  return result;
}

void sub_1AF5820E0()
{
  if (!qword_1EB63A418)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A418);
    }
  }
}

void sub_1AF582140()
{
  if (!qword_1EB63A420)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A420);
    }
  }
}

double sub_1AF5821A0@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF528138(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1AF582254@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF528048(a1);
  *a2 = result;
  return result;
}

void sub_1AF5822B0()
{
  if (!qword_1EB63A438)
  {
    sub_1AF5A9240(255, &qword_1ED726C50, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A438);
    }
  }
}

uint64_t sub_1AF5823C0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1AF5824B8()
{
  if (!qword_1EB63A470)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A470);
    }
  }
}

void sub_1AF582518(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF4498F4(255, a3);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF582574@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52BA68(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1AF5826B4()
{
  if (!qword_1EB63A478)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A478);
    }
  }
}

double sub_1AF582714@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF529710(a1, &type metadata for ShaderFileAsset, &off_1F25432B8, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

void sub_1AF582834()
{
  if (!qword_1EB63A480)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A480);
    }
  }
}

uint64_t sub_1AF582894@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52F8FC(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AF582930@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52F800(a1);
  *a2 = result;
  return result;
}

void sub_1AF58298C()
{
  if (!qword_1EB63A490)
  {
    sub_1AF0D4478(255, &qword_1EB638E60);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A490);
    }
  }
}

uint64_t sub_1AF582B00@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52F5EC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF582C54@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52F4E0(a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void sub_1AF582D5C()
{
  if (!qword_1EB63A4B8)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A4B8);
    }
  }
}

uint64_t sub_1AF583018(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  if (*(a1 + 16))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v8 = v6;
  return (*(v4 + 16))(v3, v5, &v8);
}

void sub_1AF5830A0()
{
  if (!qword_1EB63A508)
  {
    sub_1AF583D60(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A508);
    }
  }
}

void sub_1AF583140()
{
  if (!qword_1EB63A510)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A510);
    }
  }
}

void sub_1AF583314()
{
  if (!qword_1EB63A530)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A530);
    }
  }
}

uint64_t sub_1AF583374@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF527AF4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF58343C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF527A18(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF58350C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF527948(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF583620@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF527794(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1AF583710()
{
  if (!qword_1EB63A548)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A548);
    }
  }
}

uint64_t sub_1AF583770@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF527868(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void sub_1AF583814()
{
  if (!qword_1EB63A560)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A560);
    }
  }
}

void sub_1AF5838A4()
{
  if (!qword_1EB63A578)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A578);
    }
  }
}

void sub_1AF583904()
{
  if (!qword_1EB63A580)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A580);
    }
  }
}

void sub_1AF583964()
{
  if (!qword_1EB63A588)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A588);
    }
  }
}

uint64_t sub_1AF5839C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = sub_1AFCFF70C();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1AFDFE108();
    if (v6)
    {
LABEL_4:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1B2719C70](v7, v5);
        }

        else
        {
          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = [v8 uniqueID];
        v11 = sub_1AFDFCEF8();
        v13 = v12;

        if (v11 == a1 && v13 == a2)
        {

          return v7 + 1;
        }

        v15 = sub_1AFDFEE28();

        if (v15)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_14;
        }
      }

      return v7 + 1;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_4;
    }
  }

LABEL_14:

  v7 = 0;
  return v7 + 1;
}

uint64_t sub_1AF583B1C(void *a1)
{
  sub_1AF583D60(0, &qword_1EB63A590, sub_1AF583D0C, &_s15CaptureDeviceIDV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF583D0C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1AFDFE698();
    v12 = 1;
    sub_1AFDFE698();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

unint64_t sub_1AF583D0C()
{
  result = qword_1EB63A598;
  if (!qword_1EB63A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63A598);
  }

  return result;
}

void sub_1AF583D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AF583DC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF528258(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF583E98()
{
  if (!qword_1EB63A5A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A5A8);
    }
  }
}

uint64_t sub_1AF583EF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5374B0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF583FC8@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF537408(a1);
  *a2 = result;
  return result;
}

void sub_1AF584114()
{
  if (!qword_1EB63A5B0)
  {
    sub_1AF5A9240(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A5B0);
    }
  }
}

void sub_1AF5841A0()
{
  if (!qword_1EB63A5B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A5B8);
    }
  }
}

uint64_t sub_1AF584200@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF538568(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF5842DC@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF5384B8(a1);
  *a2 = result;
  return result;
}

void sub_1AF5843F4()
{
  if (!qword_1EB63A5D0)
  {
    sub_1AF5A9240(255, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A5D0);
    }
  }
}

uint64_t sub_1AF584554@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF537EBC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF58475C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF5380C8(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result);
  *(a2 + 5) = BYTE5(result) & 1;
  return result;
}

unint64_t sub_1AF584818@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF537FBC(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF584C3C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF537DC8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF584D04@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5381E8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF584DCC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF537BB8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF584E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AF584F08()
{
  if (!qword_1EB63A648)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A648);
    }
  }
}

void sub_1AF584FEC()
{
  if (!qword_1EB63A660)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A660);
    }
  }
}

void sub_1AF58507C()
{
  if (!qword_1EB63A678)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A678);
    }
  }
}

void sub_1AF5850DC()
{
  if (!qword_1EB63A680)
  {
    sub_1AF583D60(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A680);
    }
  }
}

unint64_t sub_1AF5851E8()
{
  result = qword_1EB63A6A0;
  if (!qword_1EB63A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63A6A0);
  }

  return result;
}

void sub_1AF58523C()
{
  if (!qword_1ED722528)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722528);
    }
  }
}

void sub_1AF585338()
{
  if (!qword_1EB63A6E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A6E0);
    }
  }
}

void sub_1AF585398()
{
  if (!qword_1EB63A6E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A6E8);
    }
  }
}

void sub_1AF5853F8()
{
  if (!qword_1EB63A6F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A6F0);
    }
  }
}

void sub_1AF585488()
{
  if (!qword_1EB63A708)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A708);
    }
  }
}

void sub_1AF5854E8()
{
  if (!qword_1EB63A710)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A710);
    }
  }
}

uint64_t sub_1AF585548@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF52D694(a1, a2, v3, &type metadata for PointCacheFileAsset, &off_1F2568060);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t *sub_1AF585714(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1AF5857CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AF585880()
{
  if (!qword_1EB63A730)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A730);
    }
  }
}

uint64_t sub_1AF5858E0@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF52D770(a1);
  *a2 = result;
  return result;
}

void sub_1AF58593C()
{
  if (!qword_1EB63A740)
  {
    sub_1AF0D4478(255, &qword_1ED72F7F0);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A740);
    }
  }
}

uint64_t sub_1AF585B4C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF53093C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1AF585C3C()
{
  if (!qword_1EB63A768)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A768);
    }
  }
}

uint64_t sub_1AF585C9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52D968(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF585EA4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52D8B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF585F6C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52D808(a1);
  *a2 = result;
  return result;
}

void sub_1AF5860D0()
{
  if (!qword_1EB63A790)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A790);
    }
  }
}

void sub_1AF586130()
{
  if (!qword_1EB63A798)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A798);
    }
  }
}

void sub_1AF5861C4()
{
  if (!qword_1EB63A7B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A7B0);
    }
  }
}

void sub_1AF586224()
{
  if (!qword_1EB63A7B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A7B8);
    }
  }
}

void sub_1AF586284()
{
  if (!qword_1EB63A7C0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A7C0);
    }
  }
}

void sub_1AF5862E4()
{
  if (!qword_1EB63A7C8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A7C8);
    }
  }
}

uint64_t sub_1AF586344@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF52D694(a1, a2, v3, &type metadata for TextureFileAsset, &off_1F2544090);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AF586564()
{
  if (!qword_1EB63A7D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A7D8);
    }
  }
}

uint64_t sub_1AF5865C4@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF528ECC(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AF5866E4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF528C6C(a1);
  *a2 = result;
  return result;
}

void sub_1AF5867AC()
{
  if (!qword_1EB63A7E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A7E0);
    }
  }
}

void sub_1AF586988()
{
  if (!qword_1EB63A7F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A7F0);
    }
  }
}

uint64_t sub_1AF5869E8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF52D694(a1, a2, v3, &type metadata for AudioFileAsset, &off_1F256EDF8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AF586C60()
{
  if (!qword_1EB63A800)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A800);
    }
  }
}

uint64_t sub_1AF586CC0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5294DC(a1);
  *a2 = result;
  return result;
}

void sub_1AF586D88()
{
  if (!qword_1EB63A808)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A808);
    }
  }
}

uint64_t sub_1AF586DE8@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF527BC4(a1);
  *a2 = result;
  return result;
}

void sub_1AF586EB0()
{
  if (!qword_1EB63A810)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A810);
    }
  }
}

uint64_t sub_1AF586F10@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF527D60(a1);
  *a2 = result;
  return result;
}

void sub_1AF586F6C()
{
  if (!qword_1EB63A818)
  {
    sub_1AF5A9240(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB63A818);
    }
  }
}

unint64_t sub_1AF58702C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF527C6C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF5870FC()
{
  if (!qword_1EB63A828)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A828);
    }
  }
}

void sub_1AF58720C()
{
  if (!qword_1EB63A830)
  {
    sub_1AF5A9240(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A830);
    }
  }
}

void sub_1AF587288()
{
  if (!qword_1EB63A838)
  {
    sub_1AF5A9240(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A838);
    }
  }
}

void sub_1AF58737C()
{
  if (!qword_1EB63A840)
  {
    sub_1AF5A9240(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A840);
    }
  }
}

uint64_t sub_1AF587408@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF52D694(a1, a2, v3, &type metadata for CALayerFileAsset, &off_1F256F7D8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AF587628()
{
  if (!qword_1EB63A850)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A850);
    }
  }
}

void sub_1AF5876B8()
{
  if (!qword_1EB63A858)
  {
    sub_1AF5A9240(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB63A858);
    }
  }
}

uint64_t sub_1AF587778@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF537B10(a1, a2, v3, &type metadata for TextureArrayFileAsset, &off_1F2544168);
  *a3 = result;
  return result;
}

void sub_1AF587960()
{
  if (!qword_1EB63A890)
  {
    sub_1AF5A9240(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A890);
    }
  }
}

void sub_1AF587A10()
{
  if (!qword_1ED722EE8)
  {
    sub_1AF5A9240(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722EE8);
    }
  }
}

void sub_1AF587B04()
{
  if (!qword_1EB63A8A0)
  {
    sub_1AF5A9240(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8A0);
    }
  }
}

uint64_t sub_1AF587B90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF5370BC(a1, a2, v3, &type metadata for TextureNamedAsset, &off_1F2541538);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AF587C90()
{
  if (!qword_1EB63A8A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8A8);
    }
  }
}

void sub_1AF587D00()
{
  if (!qword_1EB63A8B0)
  {
    sub_1AF5A9240(255, &qword_1EB63A8B8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    Set = type metadata accessor for EntityGetSet();
    if (!v1)
    {
      atomic_store(Set, &qword_1EB63A8B0);
    }
  }
}

void sub_1AF587DC0()
{
  if (!qword_1EB63A8C0)
  {
    sub_1AF5A9240(255, &qword_1EB63A8B8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for EntityValueAccessors();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8C0);
    }
  }
}

uint64_t sub_1AF587E54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AF43C9F0(a1, a2);
  }

  return a1;
}

uint64_t sub_1AF587E68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1AF587E7C(a1, a2);
  }

  return a1;
}

uint64_t sub_1AF587E7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AF439ED8(a1, a2);
  }

  return a1;
}

void sub_1AF587E90()
{
  if (!qword_1EB63A8C8)
  {
    sub_1AF5A9240(255, &qword_1EB63A8B8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8C8);
    }
  }
}

void sub_1AF587F90()
{
  if (!qword_1EB63A8D0)
  {
    sub_1AF5A9240(255, &qword_1EB63A8B8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8D0);
    }
  }
}

uint64_t sub_1AF58801C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AF5370BC(a1, a2, v3, &type metadata for TextureClient, &off_1F2546D98);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1AF588164()
{
  if (!qword_1EB63A8D8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8D8);
    }
  }
}

uint64_t sub_1AF5881C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52C5B0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1AF588294()
{
  if (!qword_1EB63A8E0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8E0);
    }
  }
}

uint64_t sub_1AF5882F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF532458(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF5883C4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5323C0(a1);
  *a2 = result;
  return result;
}

void sub_1AF58848C()
{
  if (!qword_1EB63A8E8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8E8);
    }
  }
}

void sub_1AF5884EC()
{
  if (!qword_1EB63A8F0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8F0);
    }
  }
}

void sub_1AF58860C()
{
  if (!qword_1EB63A8F8)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A8F8);
    }
  }
}

uint64_t sub_1AF588698@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5335F4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF588760@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5382DC(a1, a2, v3, &type metadata for RenderGraphTextureTarget, &off_1F25463B8);
  *a3 = result;
  return result;
}

void sub_1AF588838()
{
  if (!qword_1EB63A908)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A908);
    }
  }
}

void sub_1AF5888C8()
{
  if (!qword_1EB63A920)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A920);
    }
  }
}

uint64_t sub_1AF588928@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF530B34(a1);
  *a2 = result;
  return result;
}

void sub_1AF5889F0()
{
  if (!qword_1EB63A928)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A928);
    }
  }
}

uint64_t sub_1AF588A50@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF536BF0(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF588BE0@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF536A88(a1);
  *a2 = result;
  return result;
}

void sub_1AF588CA8()
{
  if (!qword_1EB63A938)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A938);
    }
  }
}

void sub_1AF588D08()
{
  if (!qword_1EB63A940)
  {
    sub_1AF5A9240(255, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A940);
    }
  }
}

void sub_1AF588D94()
{
  if (!qword_1EB63A948)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A948);
    }
  }
}

uint64_t sub_1AF588DF4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52C7AC(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1AF588EC4@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52C714(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AF588F8C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52C664(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF58905C()
{
  if (!qword_1EB63A958)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A958);
    }
  }
}

void sub_1AF5890BC()
{
  if (!qword_1EB63A970)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A970);
    }
  }
}

void sub_1AF58911C()
{
  if (!qword_1EB63A978)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A978);
    }
  }
}

uint64_t sub_1AF58917C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52B1F8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF589244@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF52B150(a1);
  *a2 = result;
  return result;
}

void sub_1AF58930C()
{
  if (!qword_1EB63A980)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A980);
    }
  }
}

void sub_1AF58936C()
{
  if (!qword_1EB63A988)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A988);
    }
  }
}

uint64_t sub_1AF5893CC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52DC10(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1AF58949C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF52DCBC(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF589608()
{
  if (!qword_1EB63A990)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A990);
    }
  }
}

void sub_1AF589668()
{
  if (!qword_1EB63A998)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A998);
    }
  }
}

void sub_1AF5896C8()
{
  if (!qword_1EB63A9A0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9A0);
    }
  }
}

uint64_t sub_1AF589728@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF52966C(a1, a2, v3, &type metadata for ParticleSpawnID, &off_1F254EE18);
  *a3 = result;
  *(a3 + 8) = v6 & 1;
  return result;
}

void sub_1AF589808()
{
  if (!qword_1EB63A9A8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9A8);
    }
  }
}

unint64_t sub_1AF589868@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AF537564(a1, a2, v3, &type metadata for ParticleContinuousSpawn, &off_1F2567760);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1AF589948()
{
  if (!qword_1EB63A9B0)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9B0);
    }
  }
}

unint64_t sub_1AF5899A8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF53458C(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF589A78@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5344EC(a1);
  *a2 = result;
  return result;
}

void sub_1AF589B40()
{
  if (!qword_1EB63A9B8)
  {
    v0 = type metadata accessor for ComponentValueWriter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63A9B8);
    }
  }
}