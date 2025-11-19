void sub_1890A9FF4(double a1)
{
  if (*(v1 + 152) == a1)
  {
    *(v1 + 152) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}

uint64_t sub_1890AA10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa);
  sub_18A4A2C08();

  *a2 = *(v3 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection);
  return result;
}

uint64_t sub_1890AA1E4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa);
  sub_18A4A2C08();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1890AA298()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa);
  sub_18A4A2BF8();
}

uint64_t sub_1890AA364()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();
}

uint64_t sub_1890AA408(unsigned __int8 *a1)
{
  swift_beginAccess();
  if (*(v1 + 32) == *a1 && ((*(v1 + 33) ^ a1[1]) & 1) == 0 && *(v1 + 34) == (a1[2] & 1) && ((*(v1 + 35) ^ a1[3]) & 1) == 0 && *(v1 + 36) == a1[4] && (sub_18A4A43B8() & 1) != 0 && (result = sub_18A4A43B8(), (result & 1) != 0))
  {
    v4 = *(a1 + 3);
    *(v1 + 64) = *(a1 + 2);
    *(v1 + 80) = v4;
    *(v1 + 96) = *(a1 + 8);
    v5 = *(a1 + 1);
    *(v1 + 32) = *a1;
    *(v1 + 48) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890AA5D4()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 104);
}

uint64_t sub_1890AA674(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890AA794()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 128);
}

double sub_1890AA84C()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 144);
}

double sub_1890AA8F4()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 152);
}

void *sub_1890AA99C()
{
  swift_getKeyPath();
  v6 = v0;
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  v1 = *(v0 + 160);
  v2 = *(v6 + 168);
  v3 = v1;
  v4 = v2;
  return v1;
}

void sub_1890AAA54(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a1[20];
  v6 = a1[21];
  a1[20] = a2;
  a1[21] = a3;
  a1[22] = a4;
  v7 = a2;
  v8 = a3;
}

uint64_t sub_1890AAAA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v9 + 216);
  v6 = *(v9 + 224);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v9 + 200);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v3;
}

uint64_t sub_1890AAB88@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v9 = v1;
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v9 + 264);
  v6 = *(v9 + 272);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v9 + 248);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v3;
}

void *sub_1890AAC70()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  v1 = *(v0 + 320);
  v2 = v1;
  return v1;
}

uint64_t sub_1890AAD18()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  return *(v0 + 280);
}

uint64_t sub_1890AADB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  *a2 = *(v3 + 280);
  return result;
}

uint64_t sub_1890AAE60(uint64_t result)
{
  if (*(v1 + 280) == (result & 1))
  {
    *(v1 + 280) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_1890AAF70()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  swift_beginAccess();
}

uint64_t sub_1890AB028@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 296);
}

uint64_t sub_1890AB114(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_189015950(v3, a1);

  if (v4)
  {
    *(v1 + 296) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();
  }
}

uint64_t sub_1890AB25C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 296) = a2;
}

uint64_t sub_1890AB2C4()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();
}

uint64_t sub_1890AB368@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  *a2 = *(v3 + 304);
}

uint64_t sub_1890AB414()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2BF8();
}

uint64_t sub_1890AB4D0()
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();
}

uint64_t sub_1890AB574@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  *a2 = *(v3 + 312);
}

void sub_1890AB620(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 320);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2BF8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  _s4ItemCMa();
  v5 = v4;
  v6 = a1;
  v7 = sub_18A4A7C88();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 320);
LABEL_8:
  *(v2 + 320) = a1;
}

uint64_t sub_1890AB7A0(char a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0x3FF0000000000000;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 265) = 0u;
  *(v3 + 288) = 0;
  *(v3 + 296) = v6;
  *(v3 + 304) = v6;
  *(v3 + 312) = v6;
  *(v3 + 320) = 0;
  sub_18A4A2C38();
  *(v3 + 24) = a1 & 1;
  *(v3 + 32) = a1 & 1;
  *(v3 + 33) = a2 & 1;
  *(v3 + 34) = 0;
  *(v3 + 36) = 1;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:12 primaryAction:0 menu:0];
  v8 = _s4ItemCMa();
  v9 = objc_allocWithZone(v8);
  *(v3 + 328) = sub_188AEFB04(v7);
  v10 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 primaryAction:0 menu:0];
  v11 = objc_allocWithZone(v8);
  v12 = sub_188AEFB04(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_18A64E3F0;
  v14 = [objc_opt_self() fixedSpaceItem];
  v15 = objc_allocWithZone(v8);
  *(v13 + 32) = sub_188AEFB04(v14);
  *(v13 + 40) = v12;
  *(v3 + 336) = v13;
  v16 = *(*(v3 + 328) + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = objc_allocWithZone(UIAction);
  v19 = v12;
  v20 = v16;

  v21 = sub_18A4A7258();
  v39 = sub_1890ACE64;
  v40 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188BFF280;
  v38 = &block_descriptor_102;
  v22 = _Block_copy(&aBlock);

  v23 = [v18 initWithTitle:v21 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v22];
  _Block_release(v22);

  v24 = v23;
  [v24 setSubtitle_];
  [v24 setSelectedImage_];

  [v20 setPrimaryAction_];
  v25 = *&v19[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v26 = v19;
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v25;

  v29 = objc_allocWithZone(UIAction);

  v30 = sub_18A4A7258();
  v39 = sub_1890ACE6C;
  v40 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v36 = 1107296256;
  v37 = sub_188BFF280;
  v38 = &block_descriptor_67_0;
  v31 = _Block_copy(&aBlock);

  v32 = [v29 initWithTitle:v30 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v31];
  _Block_release(v31);

  v33 = v32;
  [v33 setSubtitle_];
  [v33 setSelectedImage_];

  [v28 setPrimaryAction_];
  sub_188AEFC0C();

  return v3;
}

void sub_1890ABC80()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2C08();

    v2 = *(v1 + 320);
    v3 = v2;

    if (v2)
    {
      v4 = *&v3[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

      v5 = [v4 _associatedSearchController];
      if (v5)
      {
        v6 = [v5 searchBar];

        v7 = [v6 searchTextField];
        [v7 becomeFirstResponder];
      }
    }
  }
}

void sub_1890ABDEC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
    sub_18A4A2C08();

    v2 = *(v1 + 320);
    v3 = v2;

    if (v2)
    {
      v4 = *&v3[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

      v5 = [v4 _associatedSearchController];
      if (v5)
      {
        v6 = [v5 searchBar];

        [v6 _performCancelAction];
      }
    }
  }
}

uint64_t sub_1890ABF38(void *a1)
{
  swift_getKeyPath();
  sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  if (*(v1 + 280) == 1)
  {
    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 128) == 1 && *(*(v1 + 328) + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem) == a1)
    {
      return 1;
    }

    swift_getKeyPath();
    sub_18A4A2C08();

    if (*(v1 + 128) & 1) == 0 && ([a1 _isSearchBarPlacementItem])
    {
      return 0;
    }
  }

  return 2;
}

unint64_t sub_1890AC0D0()
{
  result = qword_1EA93BBD8;
  if (!qword_1EA93BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BBD8);
  }

  return result;
}

uint64_t sub_1890AC124()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  sub_18A4A8888();
  sub_188C18FD0(v6, v1, v2, v4);
  MEMORY[0x18CFE37E0](v3);
  return sub_18A4A88E8();
}

__n128 sub_1890AC190()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 32) = *v1;
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  *(v2 + 96) = *(v1 + 64);
  *(v2 + 64) = v4;
  *(v2 + 80) = v5;
  *(v2 + 48) = result;
  return result;
}

void *sub_1890AC21C(unint64_t a1, unint64_t a2)
{
  v100 = type metadata accessor for ToolbarModel.PlacedItem(0);
  v94 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v84 = (v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  KeyPath = v80 - v6;
  v105 = sub_18A4A29D8();
  v81 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v93 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = v80 - v10;
  sub_18A4A29C8();
  v11 = sub_188AF0AF0(MEMORY[0x1E69E7CC0]);
  v12 = a1;
  v13 = v11;
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  v95 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v95)
  {
    do
    {
      v14 = 0;
      v85 = 0;
      v92 = v12 & 0xC000000000000001;
      v86 = v12 & 0xFFFFFFFFFFFFFF8;
      v91 = (v81 + 8);
      v90 = (v81 + 32);
      v99 = (v81 + 16);
      v110 = MEMORY[0x1E69E7CC0];
      v83 = xmmword_18A663BE0;
      v102 = a2;
      v88 = v12;
      v101 = OBJC_IVAR____TtC5UIKit12ToolbarModel___observationRegistrar;
      v89 = KeyPath;
      while (1)
      {
        if (v92)
        {
          v15 = sub_188E4B00C(v14, v12);
        }

        else
        {
          if (v14 >= *(v86 + 16))
          {
            goto LABEL_59;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = sub_188C1908C(*&v15[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem]);
        v20 = v13[2];
        v108 = v19;
        v111 = v18;
        v112 = v17;
        v103 = v14 + 1;
        if (v20 && (v21 = sub_188C18F44(v17, v18, v19), (v22 & 1) != 0))
        {
          v109 = *(v13[7] + 8 * v21);
        }

        else
        {
          v109 = 0;
        }

        swift_getKeyPath();
        v113 = v16;
        sub_188BAD1EC(&qword_1EA930D28, _s4ItemCMa);
        sub_18A4A2C08();

        v106 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection;
        if (v16[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item__requiresOwnSection] == 1)
        {
          v23 = v93;
          sub_18A4A29C8();
          v25 = v104;
          v24 = v105;
          (*v91)(v104, v105);
          (*v90)(v25, v23, v24);
        }

        v26 = v100;
        v27 = KeyPath + *(v100 + 20);
        v98 = *v99;
        v98(v27, v104, v105);
        *KeyPath = v16;
        v28 = KeyPath + *(v26 + 24);
        v29 = v111;
        v30 = v112;
        *v28 = v112;
        *(v28 + 8) = v29;
        LOBYTE(v26) = v108;
        *(v28 + 16) = v108;
        *(v28 + 24) = v109;
        v107 = v16;
        sub_188BB395C(v30, v29, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_188C193E8(0, v110[2] + 1, 1, v110);
        }

        v32 = v110[2];
        v31 = v110[3];
        if (v32 >= v31 >> 1)
        {
          v110 = sub_188C193E8(v31 > 1, v32 + 1, 1, v110);
        }

        v33 = v110;
        v110[2] = v32 + 1;
        v97 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v96 = *(v94 + 72);
        sub_188C19410(KeyPath, v33 + v97 + v96 * v32);
        KeyPath = swift_getKeyPath();
        v34 = v102;
        v113 = v102;
        sub_188BAD1EC(&qword_1ED48E310, type metadata accessor for ToolbarModel);
        sub_18A4A2C08();

        v35 = *(v34 + 40);
        v36 = v107;
        if (!v35 || v107 != v35)
        {
          goto LABEL_39;
        }

        swift_getKeyPath();
        v113 = v36;
        v37 = v35;
        sub_18A4A2C08();

        v38 = v16[v106] == 1;
        v87 = v37;
        if (v38)
        {
          v39 = v102;
          v40 = 1;
          if (v102[280])
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = [*&v37[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem] _prefersCollapsedRepresentationInToolbar];
          v40 = v43;
          v39 = v102;
          if (v43 == v102[280])
          {
LABEL_28:
            v39[280] = v40;
            goto LABEL_29;
          }
        }

        v41 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v41);
        v80[-2] = v102;
        LOBYTE(v80[-1]) = v40;
        v113 = v102;
        v42 = v85;
        sub_18A4A2BF8();
        v85 = v42;

        v39 = v102;
LABEL_29:
        swift_getKeyPath();
        v113 = v39;
        sub_18A4A2C08();

        v44 = v39;
        if (v39[280] == 1)
        {
          v45 = [*&v87[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem] _associatedSearchController];
          if (v45)
          {
            v46 = v45;
            v47 = [v45 isActive];
            v82 = v46;
            if (v47)
            {
              v39 = [v46 searchBar];
              v48 = [v39 searchTextField];

              LODWORD(v39) = [v48 _hasContent];
              LODWORD(v39) = v39 ^ 1;
              v49 = v44;
              if (v44[280] == v39)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v49 = v39;
              v73 = v39[280];
              LOBYTE(v39) = 1;
              if (v73)
              {
LABEL_33:

                v49[280] = v39;
                goto LABEL_34;
              }
            }

            v74 = swift_getKeyPath();
            v80[1] = v80;
            MEMORY[0x1EEE9AC00](v74);
            v80[-2] = v102;
            LOBYTE(v80[-1]) = v39;
            v113 = v102;
            v75 = v85;
            sub_18A4A2BF8();
            v85 = v75;

            v44 = v102;
          }
        }

LABEL_34:
        KeyPath = swift_getKeyPath();
        v113 = v44;
        sub_18A4A2C08();

        if (v44[280] != 1)
        {

LABEL_39:
          a2 = v108;
          goto LABEL_40;
        }

        v50 = *(v44 + 41);
        v51 = v100;
        v52 = v84;
        v98(v84 + *(v100 + 20), v104, v105);
        *v52 = v50;
        v53 = v52 + *(v51 + 24);
        *v53 = v83;
        v53[16] = 1;
        *(v53 + 3) = v109;
        v54 = v110[2];
        KeyPath = v110[3];
        v55 = v50;
        if (v54 >= KeyPath >> 1)
        {
          v110 = sub_188C193E8(KeyPath > 1, v54 + 1, 1, v110);
        }

        a2 = v108;

        v56 = v110;
        v110[2] = v54 + 1;
        sub_188C19410(v84, v56 + v97 + v54 * v96);
LABEL_40:
        v57 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          goto LABEL_56;
        }

        KeyPath = swift_isUniquelyReferenced_nonNull_native();
        v113 = v13;
        v58 = sub_188C18F44(v112, v111, a2);
        v59 = v13[2];
        v60 = (v12 & 1) == 0;
        v61 = __OFADD__(v59, v60);
        v62 = v59 + v60;
        if (v61)
        {
          goto LABEL_57;
        }

        v63 = v12;
        if (v13[3] >= v62)
        {
          if ((KeyPath & 1) == 0)
          {
            v76 = v58;
            sub_188FA6B20();
            v58 = v76;
          }
        }

        else
        {
          sub_188C19474(v62, KeyPath);
          v58 = sub_188C18F44(v112, v111, a2);
          if ((v63 & 1) != (v64 & 1))
          {
            result = sub_18A4A87A8();
            __break(1u);
            return result;
          }
        }

        KeyPath = v89;
        v12 = v111;
        if (v63)
        {
          v65 = v58;
          sub_188BB3988(v112, v111, a2);
          v13 = v113;
          *(v113[7] + 8 * v65) = v57;
        }

        else
        {
          v13 = v113;
          v113[(v58 >> 6) + 8] |= 1 << v58;
          v66 = v13[6] + 24 * v58;
          *v66 = v112;
          *(v66 + 8) = v12;
          *(v66 + 16) = a2;
          *(v13[7] + 8 * v58) = v57;
          v67 = v13[2];
          v61 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (v61)
          {
            goto LABEL_58;
          }

          v13[2] = v68;
        }

        swift_getKeyPath();
        v69 = v107;
        v113 = v107;
        sub_18A4A2C08();

        if (v16[v106] == 1)
        {
          v70 = v93;
          sub_18A4A29C8();

          v72 = v104;
          v71 = v105;
          (*v91)(v104, v105);
          (*v90)(v72, v70, v71);
        }

        else
        {
        }

        v12 = v88;
        ++v14;
        if (v103 == v95)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v77 = v12;
      v78 = sub_18A4A7F68();
      v12 = v77;
      v95 = v78;
    }

    while (v78);
  }

  v110 = MEMORY[0x1E69E7CC0];
LABEL_62:
  (*(v81 + 8))(v104, v105);

  return v110;
}

double sub_1890ACE74()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 136) = result;
  return result;
}

double sub_1890ACE84()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 152) = result;
  return result;
}

double sub_1890ACE94()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 144) = result;
  return result;
}

double sub_1890ACEA4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 112) = result;
  return result;
}

unint64_t sub_1890ACEC8()
{
  result = qword_1EA93BBE0;
  if (!qword_1EA93BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BBE0);
  }

  return result;
}

uint64_t sub_1890ACFAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 16);
}

uint64_t sub_1890AD054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  *a2 = *(v3 + 104);
  return result;
}

_UIFloatingBarContainerProvider __swiftcall _UIFloatingBarContainerProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_1890AD30C()
{
  sub_1890AC0A8();
  v1 = 0.0;
  if (*(sub_188BAC8D4() + 16))
  {
    sub_188C629E8(v8);
    if ((v9 & 1) == 0)
    {
      v3 = *&v8[2];
      v2 = *&v8[3];
      v5 = *v8;
      v4 = *&v8[1];
      [v0 bounds];
      MaxY = CGRectGetMaxY(v10);
      v11.origin.x = v5;
      v11.origin.y = v4;
      v11.size.width = v3;
      v11.size.height = v2;
      return MaxY - CGRectGetMinY(v11);
    }
  }

  return v1;
}

void *sub_1890AD3C4(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  *(v2 + *((*v5 & *v2) + 0x100)) = a1;

  v6 = sub_188AF1564(a2);
  v7 = *(v6 + *((*v5 & *v6) + 0x60));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = v6;
    v11 = v7;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    v12 = v6;
    v13 = v7;
  }

  if (sub_18A4A46F8())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1890AD778();
    v14 = v6;
    sub_18A4A4708();
  }

  v15 = &v7[OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate];
  swift_beginAccess();
  *(v15 + 1) = &off_1EFABE140;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_1890AD5A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_189091178();
  }
}

void sub_1890AD62C()
{

  JUMPOUT(0x18CFEA6E0);
}

id sub_1890AD6D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  *a2 = v2;
  return v2;
}

void sub_1890AD6FC()
{
  swift_unknownObjectWeakInit();
  sub_18A4A8398();
  __break(1u);
}

unint64_t sub_1890AD778()
{
  result = qword_1EA93BC90;
  if (!qword_1EA93BC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BC90);
  }

  return result;
}

unint64_t sub_1890AD844()
{
  result = qword_1EA9306D8;
  if (!qword_1EA9306D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCC0);
    sub_188C01C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306D8);
  }

  return result;
}

unint64_t sub_1890AD8D0()
{
  result = qword_1ED48CC88;
  if (!qword_1ED48CC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BCF8);
    sub_188BAF540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC88);
  }

  return result;
}

unint64_t sub_1890AD95C()
{
  result = qword_1EA9306B8;
  if (!qword_1EA9306B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD10);
    sub_188C02640();
    sub_188C026CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9306B8);
  }

  return result;
}

uint64_t sub_1890AD9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel);
  sub_18A4A2C08();

  swift_beginAccess();
  v4 = *(a1 + 296);
  swift_getKeyPath();

  sub_18A4A2C08();

  swift_beginAccess();
  v10 = *(a1 + 64);
  v11 = *(a1 + 80);
  v12 = *(a1 + 96);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  swift_getKeyPath();
  sub_18A4A2C08();

  v5 = *(a1 + 288);
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 72) = v5;
  *(a2 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD18);
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 64) = v10;
  *(v6 + 80) = v11;
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 96) = v12;
  *(v6 + 104) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD28);
  sub_188A34360(&qword_1EA9304E8, &qword_1EA93BD20);
  sub_1890AEBC8();
  return sub_18A4A6198();
}

unint64_t sub_1890ADCA8@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *result;
  v12 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem;
  v13 = *(*result + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem);
  if (!(a2 >> 62))
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_32:
    if ((*a3 & 1) == 0)
    {
      v23 = -2.0;
      a6 = 2.0;
LABEL_48:
      v33 = sub_1890ABF38(*&v11[v12]);
      swift_getKeyPath();
      sub_188BAD234(&qword_1ED48E310, type metadata accessor for ToolbarModel);
      v26 = v11;
      sub_18A4A2C08();

      swift_beginAccess();
      v36 = *(a4 + 64);
      v37 = *(a4 + 80);
      v38 = *(a4 + 96);
      v34 = *(a4 + 32);
      v35 = *(a4 + 48);
      swift_getKeyPath();
      sub_18A4A2C08();

      v28 = *(a4 + 160);
      v27 = *(a4 + 168);
      v29 = *(a4 + 176);
      swift_getKeyPath();
      v30 = v27;
      v31 = v28;
      sub_18A4A2C08();

      v32 = *(a4 + 34);
      sub_1890AF174();
      result = sub_18A4A45E8();
      *(a5 + 24) = v35;
      *(a5 + 40) = v36;
      *(a5 + 56) = v37;
      *a5 = v26;
      *(a5 + 8) = v34;
      *(a5 + 72) = v38;
      *(a5 + 80) = v28;
      *(a5 + 88) = v27;
      *(a5 + 96) = v29;
      *(a5 + 104) = 0;
      *(a5 + 112) = v23;
      *(a5 + 120) = 0;
      *(a5 + 128) = -a6;
      *(a5 + 136) = v32;
      *(a5 + 137) = 0;
      *(a5 + 138) = v33;
      *(a5 + 144) = result;
      return result;
    }

    if (!a3[4])
    {
      v23 = -0.0;
LABEL_47:
      a6 = 0.0;
      goto LABEL_48;
    }

    v24 = -4.0;
    if (a3[4] == 2)
    {
      v24 = -2.0;
    }

    if (a3[3])
    {
      v23 = -3.0;
    }

    else
    {
      v23 = v24;
    }

LABEL_39:
    if (a3[4])
    {
      v25 = 4.0;
      if (a3[4] == 2)
      {
        v25 = 2.0;
      }

      if (a3[3])
      {
        a6 = 3.0;
      }

      else
      {
        a6 = v25;
      }

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  result = sub_18A4A7F68();
  v14 = result;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v15 = sub_188E4B00C(0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v15 = *(a2 + 32);
  }

  v16 = *&v15[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

  result = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
    goto LABEL_51;
  }

  v17 = *&v11[v12];
  if ((a2 & 0xC000000000000001) != 0)
  {
    v18 = sub_188E4B00C(result, a2);
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(a2 + 8 * result + 32);
LABEL_12:
    v19 = *&v18[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];

    if (v13 == v16)
    {
      v23 = -a6;
      if (v17 == v19)
      {
        goto LABEL_48;
      }

      a6 = 2.0;
      if (*a3 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    v20 = *a3;
    v21 = 2.0;
    if (v20 == 1)
    {
      if (a3[4])
      {
        v22 = -4.0;
        if (a3[4] == 2)
        {
          v22 = -2.0;
        }

        if (a3[3])
        {
          v23 = -3.0;
        }

        else
        {
          v23 = v22;
        }

        if (v17 == v19)
        {
          goto LABEL_48;
        }

        goto LABEL_39;
      }

      v21 = 0.0;
    }

    v23 = -v21;
    if (v17 == v19)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      a6 = 2.0;
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1890AE07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 48);
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 48) = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v12;
  *(a5 + 64) = v11;
  *(a5 + 72) = 0;
  *(a5 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD38);
  v18 = sub_188BAC8D4();
  swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = *(a1 + 48);
  *(v13 + 80) = *(a1 + 32);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(a1 + 64);
  v15 = *(a1 + 16);
  *(v13 + 48) = *a1;
  *(v13 + 64) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1890AF7C4;
  *(v16 + 24) = v13;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD50);
  sub_1890AF83C();
  sub_188BAF5D4();
  sub_1890AF2B4();
  return sub_18A4A6198();
}

uint64_t sub_1890AE220@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a7;
  v62 = a5;
  v63 = a6;
  v60 = a4;
  v74 = a8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD60);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v58 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDC0);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v58 - v12;
  v13 = type metadata accessor for BarLayoutElement(0);
  v66 = *(v13 - 8);
  v67 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD58);
  MEMORY[0x1EEE9AC00](v70);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDC8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  v59 = a2;
  v24 = *a2;
  swift_getKeyPath();
  *&v79 = v24;
  sub_188BAD234(&qword_1EA930D28, _s4ItemCMa);
  sub_18A4A2C08();

  v25 = OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem;
  v26 = *&v24[OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem];
  v27 = a1 - 1;
  v75 = v23;
  if (a1 < 1)
  {
    v31 = type metadata accessor for ToolbarModel.PlacedItem(0);
    (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  }

  else
  {
    if (*(a3 + 16) < a1)
    {
      __break(1u);
      goto LABEL_18;
    }

    v28 = type metadata accessor for ToolbarModel.PlacedItem(0);
    v29 = *(v28 - 8);
    v30 = a3 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27;
    v27 = v75;
    sub_188C5FEFC(v30, v75);
    (*(v29 + 56))(v27, 0, 1, v28);
  }

  v32 = *(a3 + 16);
  if ((v32 - 1) > a1)
  {
    if (++a1 < v32)
    {
      v33 = type metadata accessor for ToolbarModel.PlacedItem(0);
      v34 = *(v33 - 8);
      v35 = a3 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * a1;
      a3 = v69;
      sub_188C5FEFC(v35, v69);
      (*(v34 + 56))(a3, 0, 1, v33);
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    sub_18A4A7988();
    v57 = sub_18A4A5B28();
    sub_18A4A42D8();

    goto LABEL_14;
  }

  v36 = type metadata accessor for ToolbarModel.PlacedItem(0);
  a3 = v69;
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
LABEL_9:
  v37 = [v26 isSpaceItem];
  v27 = v70;
  if (v37)
  {
    a1 = v77;
    v26 = *&v24[v25];
    if ([v26 systemItem] == 5)
    {
      sub_18A4A6C08();
      sub_18A4A4EA8();

      *&v76[55] = v82;
      *&v76[71] = v83;
      *&v76[87] = v84;
      *&v76[103] = v85;
      *&v76[7] = v79;
      *&v76[23] = v80;
      v78 = 1;
      *&v76[39] = v81;
      v38 = type metadata accessor for BarLayoutElement.ItemConfig(0);
      v39 = v65;
      (*(*(v38 - 8) + 56))(v65, 1, 2, v38);
      v40 = *(v27 + 36);
      sub_1890AF8EC(v39, &v16[v40], type metadata accessor for BarLayoutElement);
      (*(v66 + 56))(&v16[v40], 0, 1, v67);
      v41 = *&v76[80];
      *(v16 + 73) = *&v76[64];
      *(v16 + 89) = v41;
      *(v16 + 105) = *&v76[96];
      v42 = *&v76[16];
      *(v16 + 9) = *v76;
      *(v16 + 25) = v42;
      v43 = *&v76[48];
      *(v16 + 41) = *&v76[32];
      *v16 = 0;
      v16[8] = 1;
      v44 = *&v76[111];
LABEL_15:
      *(v16 + 15) = v44;
      *(v16 + 57) = v43;
      v55 = v68;
      sub_188A3F704(v16, v68, &qword_1EA93BD58);
      sub_188A3F29C(v55, v72, &qword_1EA93BD58);
      swift_storeEnumTagMultiPayload();
      sub_188BAD4FC();
      sub_1890AF3C4();
      sub_18A4A5598();
      sub_188A3F5FC(v55, &qword_1EA93BD58);
      v46 = v75;
      goto LABEL_16;
    }

    [v26 _width];
    sub_18A4A6C08();
LABEL_14:
    sub_18A4A4EA8();

    v47 = *(a1 + 160);
    *(a1 + 55) = *(a1 + 176);
    v48 = *(a1 + 208);
    *(a1 + 71) = *(a1 + 192);
    *(a1 + 87) = v48;
    *(a1 + 103) = *(a1 + 224);
    v49 = *(a1 + 144);
    *(v77 + 7) = *(a1 + 128);
    *(a1 + 23) = v49;
    v78 = 1;
    *(a1 + 39) = v47;
    v50 = type metadata accessor for BarLayoutElement.ItemConfig(0);
    v51 = v65;
    (*(*(v50 - 8) + 56))(v65, 2, 2, v50);
    v52 = *(v27 + 36);
    sub_1890AF8EC(v51, &v16[v52], type metadata accessor for BarLayoutElement);
    (*(v66 + 56))(&v16[v52], 0, 1, v67);
    v43 = *(a1 + 48);
    *(v16 + 73) = *(a1 + 64);
    v53 = *(a1 + 96);
    *(v16 + 89) = *(a1 + 80);
    *(v16 + 105) = v53;
    *(v16 + 9) = v77[0];
    v54 = *(a1 + 32);
    *(v16 + 25) = *(a1 + 16);
    *(v16 + 41) = v54;
    *v16 = 0;
    v16[8] = 1;
    v44 = *(a1 + 111);
    goto LABEL_15;
  }

  v45 = v64;
  v46 = v75;
  sub_188C60080(v59, v75, a3, v61, v60, v62, v64);
  sub_188A3F29C(v45, v72, &qword_1EA93BD60);
  swift_storeEnumTagMultiPayload();
  sub_188BAD4FC();
  sub_1890AF3C4();
  sub_18A4A5598();
  sub_188A3F5FC(v45, &qword_1EA93BD60);
LABEL_16:
  sub_188A3F5FC(a3, &qword_1EA93BDC8);
  return sub_188A3F5FC(v46, &qword_1EA93BDC8);
}

unint64_t sub_1890AEBC8()
{
  result = qword_1EA930518;
  if (!qword_1EA930518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD28);
    sub_1890AEC80();
    sub_188A34360(&qword_1EA931258, &qword_1EA93BD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930518);
  }

  return result;
}

unint64_t sub_1890AEC80()
{
  result = qword_1EA9305C8;
  if (!qword_1EA9305C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9305C8);
  }

  return result;
}

uint64_t sub_1890AECD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDE8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDF0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = 0.0;
  if (sub_18A4A4D28())
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDF8);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  *&v7[*(v5 + 44)] = v13;
  if ((sub_18A4A4D28() & 1) == 0)
  {
    v12 = 7.0;
  }

  sub_188A3F704(v7, v11, &qword_1EA93BDE8);
  v15 = &v11[*(v9 + 44)];
  *v15 = v12;
  v15[8] = 0;
  if (sub_18A4A4D28())
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.7;
  }

  sub_18A4A6D08();
  v18 = v17;
  v20 = v19;
  sub_188A3F704(v11, a2, &qword_1EA93BDF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BE00);
  v22 = a2 + *(result + 36);
  *v22 = v16;
  *(v22 + 8) = v16;
  *(v22 + 16) = v18;
  *(v22 + 24) = v20;
  return result;
}

uint64_t sub_1890AEEEC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_18A4A4618();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18A4A4C88();
  sub_188BAD234(&qword_1ED48E060, MEMORY[0x1E697E3C0]);
  sub_18A4A7818();
  sub_18A4A7878();
  result = sub_18A4A7868();
  if (result == 1)
  {
    sub_18A4A4C98();
    v11[8] = a2 & 1;
    v11[0] = a4 & 1;
    sub_18A4A45F8();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1890AF0EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18A4A4398();
  return sub_188E263E8;
}

unint64_t sub_1890AF174()
{
  result = qword_1EA9305C0;
  if (!qword_1EA9305C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9305C0);
  }

  return result;
}

uint64_t sub_1890AF1D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_188A34360(&qword_1ED48E068, &qword_1EA93BD40);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890AF2B4()
{
  result = qword_1ED48CC80;
  if (!qword_1ED48CC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD50);
    sub_188BAD4FC();
    sub_1890AF3C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC80);
  }

  return result;
}

unint64_t sub_1890AF340()
{
  result = qword_1ED48D5B8[0];
  if (!qword_1ED48D5B8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C090);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48D5B8);
  }

  return result;
}

unint64_t sub_1890AF3C4()
{
  result = qword_1ED48CC98;
  if (!qword_1ED48CC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD70);
    sub_18A4A29D8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD80);
    sub_18A4A6188();
    sub_1890AF628();
    sub_188BAD234(&unk_1ED48D010, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    sub_188BAF5D4();
    swift_getOpaqueTypeConformance2();
    sub_188BAD234(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_188A34360(&qword_1ED48CC70, &qword_1EA93BDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC98);
  }

  return result;
}

unint64_t sub_1890AF628()
{
  result = qword_1ED48CCA0;
  if (!qword_1ED48CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD80);
    sub_1890AF6E0();
    sub_188A34360(&qword_1ED48E058, &qword_1EA93C070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CCA0);
  }

  return result;
}

unint64_t sub_1890AF6E0()
{
  result = qword_1ED48CCB8;
  if (!qword_1ED48CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BD88);
    sub_188A34360(qword_1ED48CCC0, &qword_1EA93BD90);
    sub_188A34360(&qword_1ED48D5A8, &qword_1EA93BD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CCB8);
  }

  return result;
}

uint64_t sub_1890AF7D4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BDB8);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_1890AF83C()
{
  result = qword_1ED48CC08;
  if (!qword_1ED48CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BDA8);
    sub_188A34360(&qword_1ED48CC60, &qword_1EA93BDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC08);
  }

  return result;
}

uint64_t sub_1890AF8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1890AF954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1890AFA04(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890AFA84()
{
  result = qword_1ED48CD88[0];
  if (!qword_1ED48CD88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED48CD88);
  }

  return result;
}

uint64_t sub_1890AFAF4(double a1, double a2, double a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v12 = sub_18A4A4618();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18A4A4C88();
  sub_188BAD234(&qword_1ED48E060, MEMORY[0x1E697E3C0]);
  sub_18A4A7818();
  sub_18A4A7878();
  result = sub_18A4A7868();
  if (result == 1)
  {
    sub_18A4A4C98();
    UIRectGetCenter(a1, a2, a3);
    sub_18A4A6D08();
    v17[8] = a5 & 1;
    v17[0] = a7 & 1;
    sub_18A4A4608();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1890AFCE0()
{
  result = qword_1EA930500;
  if (!qword_1EA930500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE00);
    sub_1890AFD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930500);
  }

  return result;
}

unint64_t sub_1890AFD6C()
{
  result = qword_1EA930508;
  if (!qword_1EA930508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BDF0);
    sub_1890AFDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930508);
  }

  return result;
}

unint64_t sub_1890AFDF8()
{
  result = qword_1EA930510;
  if (!qword_1EA930510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BDE8);
    sub_188A34360(&qword_1EA9304F8, &qword_1EA93BDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930510);
  }

  return result;
}

__n128 sub_1890AFEB0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a2 + 32) = *(v3 + 64);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 96);
  result = *(v3 + 48);
  *a2 = *(v3 + 32);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1890AFF4C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1890AA408(v4);
}

id sub_1890AFF94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188AF0C98();
  sub_18A4A2C08();

  v4 = *(v3 + 320);
  *a2 = v4;

  return v4;
}

void sub_1890B001C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1890AB620(v1);
}

double sub_1890B004C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5438();
  v23 = 1;
  sub_1890B0200(a1, &v14);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v32[0] = v14;
  v32[1] = v15;
  v32[2] = v16;
  v32[3] = v17;
  v32[4] = v18;
  v32[5] = v19;
  v32[6] = v20;
  v33 = v21;
  sub_188A3F29C(&v24, &v13, &qword_1EA93BE08);
  sub_188A3F5FC(v32, &qword_1EA93BE08);
  *(&v22[4] + 7) = v28;
  *(&v22[5] + 7) = v29;
  *(&v22[6] + 7) = v30;
  *(v22 + 7) = v24;
  *(&v22[1] + 7) = v25;
  *(&v22[2] + 7) = v26;
  *(&v22[7] + 7) = v31;
  *(&v22[3] + 7) = v27;
  v5 = v23;
  v6 = sub_18A4A4D18();
  v7 = sub_18A4A5BE8();
  v8 = sub_18A4A5C08();
  sub_18A4A5C08();
  if (sub_18A4A5C08() != v7)
  {
    v8 = sub_18A4A5C08();
  }

  v9 = v22[5];
  *(a2 + 81) = v22[4];
  *(a2 + 97) = v9;
  *(a2 + 113) = v22[6];
  *(a2 + 128) = *(&v22[6] + 15);
  v10 = v22[1];
  *(a2 + 17) = v22[0];
  *(a2 + 33) = v10;
  result = *&v22[2];
  v12 = v22[3];
  *(a2 + 49) = v22[2];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 65) = v12;
  *(a2 + 144) = v6;
  *(a2 + 152) = v8;
  return result;
}

uint64_t sub_1890B0200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v32 = a1;
  sub_188AF0C98();
  sub_18A4A2C08();

  swift_beginAccess();
  v4 = a1[10];
  v19 = a1[11];
  v20 = a1[9];
  v18 = a1[12];
  v5 = sub_18A4A5BC8();
  v6 = sub_18A4A5EF8();
  v45 = 0;
  swift_getKeyPath();
  v32 = a1;

  sub_18A4A2C08();

  v7 = a1[40];
  if (v7 && (v8 = [*(v7 + OBJC_IVAR____TtCC5UIKit12ToolbarModel4Item_barButtonItem) _associatedSearchController]) != 0)
  {
    v9 = v8;
    v10 = [v8 _trackableState];
    v11 = [v10 isActive];
  }

  else
  {
    v11 = 0;
  }

  v23 = 1;
  *&v24 = a1;
  BYTE8(v24) = v5;
  *&v25 = v20;
  *(&v25 + 1) = v4;
  *&v26 = v19;
  *(&v26 + 1) = v18;
  LOBYTE(v27) = 0;
  *(&v27 + 1) = v6;
  v28 = sub_188C62704;
  v29 = 0;
  LOBYTE(v30) = v11;
  *(&v30 + 1) = sub_1890B049C;
  v31 = 0;
  *&v22[39] = v26;
  *&v22[23] = v25;
  *&v22[7] = v24;
  *&v22[103] = 0;
  *&v22[87] = v30;
  *&v22[71] = sub_188C62704;
  *&v22[55] = v27;
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = *v22;
  v13 = *&v22[16];
  v14 = *&v22[48];
  *(a2 + 41) = *&v22[32];
  *(a2 + 25) = v13;
  *(a2 + 9) = v12;
  v15 = *&v22[64];
  v16 = *&v22[80];
  *(a2 + 104) = *&v22[95];
  *(a2 + 89) = v16;
  *(a2 + 73) = v15;
  *(a2 + 57) = v14;
  v32 = a1;
  v33 = v5;
  v34 = v20;
  v35 = v4;
  v36 = v19;
  v37 = v18;
  v38 = 0;
  v39 = v6;
  v40 = sub_188C62704;
  v41 = 0;
  v42 = v11;
  v43 = sub_1890B049C;
  v44 = 0;
  sub_188A3F29C(&v24, &v21, &qword_1EA93BE10);
  return sub_188A3F5FC(&v32, &qword_1EA93BE10);
}

uint64_t sub_1890B049C()
{
  v0 = sub_18A4A4A58();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1890A4F10();
  result = sub_18A4A44B8();
  if (v5[15] == 1)
  {
    sub_188FB7DAC();
    sub_188FB7A3C(v3);
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

unint64_t sub_1890B05A4()
{
  result = qword_1EA93BE18;
  if (!qword_1EA93BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE20);
    sub_1890B0630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE18);
  }

  return result;
}

unint64_t sub_1890B0630()
{
  result = qword_1EA93BE28;
  if (!qword_1EA93BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE28);
  }

  return result;
}

uint64_t sub_1890B0694(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1890B06F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit23BarBackgroundAppearanceVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1890B07A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 104))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1890B0808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1890B088C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 1);
  v45 = *v1;
  v46 = v3;
  v47 = *(v1 + 2);
  v4 = v45;
  if (v45 == 1)
  {
    v22 = 0;
    v23 = 0;
    v5 = 0;
    v20 = 0uLL;
    v21 = 0;
    v6 = 0.0;
  }

  else
  {
    v20 = v47;
    v5 = *(&v46 + 1);
    v22 = *(&v45 + 1);
    v23 = v46;
    KeyPath = swift_getKeyPath();
    LOBYTE(v37[0]) = 0;
    v6 = 1.0 - v1[12];
    v21 = KeyPath;
  }

  v8 = *(v1 + 4);
  v42 = *(v1 + 3);
  v43 = v8;
  v44 = *(v1 + 5);
  v9 = v42;
  if (v42 == 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v14 = *(&v44 + 1);
    v13 = v44;
    v12 = *(&v43 + 1);
    v11 = v43;
    v10 = *(&v42 + 1);
    v15 = swift_getKeyPath();
    LOBYTE(v37[0]) = 0;
    v16 = *(v1 + 12);
  }

  *&v25 = v45;
  *(&v25 + 1) = v22;
  *&v26 = v23;
  *(&v26 + 1) = v5;
  v27 = v20;
  v28 = v21;
  v29 = v6;
  *v24 = v6;
  *&v30 = v42;
  *(&v30 + 1) = v10;
  *&v31 = v11;
  *(&v31 + 1) = v12;
  *&v32 = v13;
  *(&v32 + 1) = v14;
  v33 = v15;
  v34 = 0;
  v35 = v16;
  *&v24[8] = v30;
  *&v24[72] = v16;
  *&v24[56] = v15;
  *&v24[40] = v32;
  *&v24[24] = v31;
  v17 = v25;
  v18 = v26;
  a1[2] = v20;
  a1[3] = v21;
  *a1 = v17;
  a1[1] = v18;
  a1[7] = *&v24[48];
  a1[8] = *&v24[64];
  a1[5] = *&v24[16];
  a1[6] = *&v24[32];
  a1[4] = *v24;
  v36[0] = v9;
  v36[1] = v10;
  v36[2] = v11;
  v36[3] = v12;
  v36[4] = v13;
  v36[5] = v14;
  v36[6] = v15;
  v36[7] = 0;
  v36[8] = v16;
  sub_188A3F29C(&v45, v37, &qword_1EA93BE38);
  sub_188A3F29C(&v42, v37, &qword_1EA93BE38);
  sub_188A3F29C(&v25, v37, &qword_1EA93BE40);
  sub_188A3F29C(&v30, v37, &qword_1EA93BE40);
  sub_188A3F5FC(v36, &qword_1EA93BE40);
  v37[0] = v4;
  v37[1] = v22;
  v37[2] = v23;
  v37[3] = v5;
  v38 = v20;
  v39 = v21;
  v40 = 0;
  v41 = v6;
  return sub_188A3F5FC(v37, &qword_1EA93BE40);
}

void *sub_1890B0B20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_18A4A6BF8();
  v5 = v4;
  sub_1890B0BF4(v1, __src);
  memcpy(__dst, __src, 0x159uLL);
  memcpy(v10, __src, 0x159uLL);
  sub_188A3F29C(__dst, &v8, &qword_1EA93BE58);
  sub_188A3F5FC(v10, &qword_1EA93BE58);
  memcpy(__src, __dst, 0x159uLL);
  v6 = sub_18A4A5BB8();
  *a1 = v3;
  *(a1 + 8) = v5;
  result = memcpy((a1 + 16), __src, 0x159uLL);
  *(a1 + 361) = v6;
  return result;
}

uint64_t sub_1890B0BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18A4A5E78();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = *(a1 + 8);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  v40 = *(a1 + 40);
  v41 = a2;
  v121 = v10;
  v122[0] = v11;
  v120 = v13;
  v42 = v10;
  v43 = v11;
  v38 = a1;
  v39 = v14;
  if (v13)
  {
    if ((v12 - 3) >= 0xA)
    {
      if (v12 == 2)
      {
        v36 = v6;
        (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v6, v7);
        sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
        sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
        sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
        sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
        sub_188A3F29C(&v120, &v101, &unk_1EA93BB50);
        v37 = sub_18A4A5E88();
        (*(v5 + 8))(v9, v36);
        v94 = v37;
        LOWORD(v95) = 257;
        sub_1890B2BD8(&v94);
        v105 = v98;
        v106 = v99;
        v107[0] = v100[0];
        *(v107 + 9) = *(v100 + 9);
        v101 = v94;
        v102 = v95;
        v103 = v96;
        v104 = v97;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEF8);
        sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8);
        sub_1890B2B48(&qword_1EA93BEF0, &qword_1EA93BEF8);
        sub_18A4A5598();
        v48 = v86;
        v49 = v87;
        v50[0] = v88[0];
        *(v50 + 9) = *(v88 + 9);
        v47[0] = v82;
        v47[1] = v83;
        v47[2] = v84;
        v47[3] = v85;
        sub_1890B2BC4(v47);
        v105 = v48;
        v106 = v49;
        v107[0] = v50[0];
        *(v107 + 10) = *(v50 + 10);
        v101 = v47[0];
        v102 = v47[1];
        v103 = v47[2];
        v104 = v47[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8);
        sub_1890B29D0();
        sub_1890B2A7C();
        sub_18A4A5598();
        v86 = v117;
        v87 = v118;
        v88[0] = *v119;
        *(v88 + 10) = *(&v119[1] + 2);
        v82 = v113;
        v83 = v114;
        v84 = v115;
        v85 = v116;
        sub_1890B2BD0(&v82);
        v105 = v86;
        v106 = v87;
        v107[0] = v88[0];
        *(v107 + 11) = *(v88 + 11);
        v101 = v82;
        v102 = v83;
        v103 = v84;
        v104 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0);
        sub_1890B2944();
        sub_18A4A5598();
        sub_188A3F5FC(&v120, &unk_1EA93BB50);
      }

      else
      {
        if (v12 != 1)
        {
          if (v12)
          {
            *&v82 = v13;
            sub_1890B2938(&v82);
            v74 = v86;
            v75 = v87;
            v76[0] = v88[0];
            *(v76 + 11) = *(v88 + 11);
            v70 = v82;
            v71 = v83;
            v72 = v84;
            v73 = v85;
            sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
            sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
            sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
            sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
            sub_188A3F29C(&v120, &v101, &unk_1EA93BB50);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0);
            sub_1890B2944();
            sub_18A4A5598();
            goto LABEL_6;
          }

          v32 = v6;
          (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v6, v7);
          sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
          sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
          sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
          sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
          sub_188A3F29C(&v120, &v101, &unk_1EA93BB50);
          v33 = sub_18A4A5E88();
          (*(v5 + 8))(v9, v32);
          v82 = v33;
          LOWORD(v83) = 0;
          BYTE2(v83) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8);
          sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8);
          sub_18A4A5598();
          v47[0] = v101;
          LOWORD(v47[1]) = v102;
          BYTE2(v47[1]) = BYTE2(v102);
          sub_1890B2BE0(v47);
          v105 = v48;
          v106 = v49;
          v107[0] = v50[0];
          *(v107 + 10) = *(v50 + 10);
          v101 = v47[0];
          v102 = v47[1];
          v103 = v47[2];
          v104 = v47[3];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8);
          sub_1890B29D0();
          sub_1890B2A7C();
          sub_18A4A5598();
          v86 = v117;
          v87 = v118;
          v88[0] = *v119;
          *(v88 + 10) = *(&v119[1] + 2);
          v82 = v113;
          v83 = v114;
          v84 = v115;
          v85 = v116;
          sub_1890B2BD0(&v82);
          v105 = v86;
          v106 = v87;
          v107[0] = v88[0];
          *(v107 + 11) = *(v88 + 11);
          v101 = v82;
          v102 = v83;
          v103 = v84;
          v104 = v85;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0);
          sub_1890B2944();
          sub_18A4A5598();
          sub_188A3F5FC(&v120, &unk_1EA93BB50);

          v105 = v74;
          v106 = v75;
          v15 = v76[0];
LABEL_5:
          v107[0] = v15;
          *(v107 + 11) = *(v76 + 11);
          v101 = v70;
          v102 = v71;
          v103 = v72;
          v104 = v73;
LABEL_6:
          v86 = v105;
          v87 = v106;
          v88[0] = v107[0];
          *(v88 + 11) = *(v107 + 11);
          v82 = v101;
          v83 = v102;
          v84 = v103;
          v85 = v104;
          signpost_c2_entryLock_start(*&v103, *&v104);
          v117 = v86;
          v118 = v87;
          *v119 = v88[0];
          *(&v119[1] + 3) = *(v88 + 11);
          v113 = v82;
          v114 = v83;
          v115 = v84;
          v116 = v85;
          goto LABEL_8;
        }

        v34 = v6;
        (*(v5 + 104))(v9, *MEMORY[0x1E6981630], v6, v7);
        sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
        sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
        sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
        sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
        sub_188A3F29C(&v120, &v101, &unk_1EA93BB50);
        v35 = sub_18A4A5E88();
        (*(v5 + 8))(v9, v34);
        v82 = v35;
        LOWORD(v83) = 1;
        BYTE2(v83) = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8);
        sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8);
        sub_18A4A5598();
        v47[0] = v101;
        LOWORD(v47[1]) = v102;
        BYTE2(v47[1]) = BYTE2(v102);
        sub_1890B2BE0(v47);
        v105 = v48;
        v106 = v49;
        v107[0] = v50[0];
        *(v107 + 10) = *(v50 + 10);
        v101 = v47[0];
        v102 = v47[1];
        v103 = v47[2];
        v104 = v47[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8);
        sub_1890B29D0();
        sub_1890B2A7C();
        sub_18A4A5598();
        v86 = v117;
        v87 = v118;
        v88[0] = *v119;
        *(v88 + 10) = *(&v119[1] + 2);
        v82 = v113;
        v83 = v114;
        v84 = v115;
        v85 = v116;
        sub_1890B2BD0(&v82);
        v105 = v86;
        v106 = v87;
        v107[0] = v88[0];
        *(v107 + 11) = *(v88 + 11);
        v101 = v82;
        v102 = v83;
        v103 = v84;
        v104 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0);
        sub_1890B2944();
        sub_18A4A5598();
        sub_188A3F5FC(&v120, &unk_1EA93BB50);
      }
    }

    else
    {
      sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
      sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
      sub_188A3F29C(v122, &v101, &qword_1EA93BB40);
      sub_188A3F29C(&v121, &v101, &qword_1EA93BB48);
      sub_188A3F29C(&v120, &v101, &unk_1EA93BB50);
      sub_18A4A6C08();
      sub_18A4A4EA8();
      *&v63 = v13;
      v98 = v67;
      v99 = v68;
      v100[0] = v69[0];
      *&v100[1] = *&v69[1];
      v96 = v65;
      v97 = v66;
      v94 = v63;
      v95 = v64;
      sub_1890B2BB8(&v94);
      v105 = v98;
      v106 = v99;
      v107[0] = v100[0];
      *(v107 + 9) = *(v100 + 9);
      v101 = v94;
      v102 = v95;
      v103 = v96;
      v104 = v97;
      sub_188A3F29C(&v120, &v82, &unk_1EA93BB50);
      sub_188A3F29C(&v63, &v82, &qword_1EA93BEF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BED8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEF8);
      sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8);
      sub_1890B2B48(&qword_1EA93BEF0, &qword_1EA93BEF8);
      sub_18A4A5598();
      v48 = v86;
      v49 = v87;
      v50[0] = v88[0];
      *(v50 + 9) = *(v88 + 9);
      v47[0] = v82;
      v47[1] = v83;
      v47[2] = v84;
      v47[3] = v85;
      sub_1890B2BC4(v47);
      v105 = v48;
      v106 = v49;
      v107[0] = v50[0];
      *(v107 + 10) = *(v50 + 10);
      v101 = v47[0];
      v102 = v47[1];
      v103 = v47[2];
      v104 = v47[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEE8);
      sub_1890B29D0();
      sub_1890B2A7C();
      sub_18A4A5598();
      v86 = v117;
      v87 = v118;
      v88[0] = *v119;
      *(v88 + 10) = *(&v119[1] + 2);
      v82 = v113;
      v83 = v114;
      v84 = v115;
      v85 = v116;
      sub_1890B2BD0(&v82);
      v105 = v86;
      v106 = v87;
      v107[0] = v88[0];
      *(v107 + 11) = *(v88 + 11);
      v101 = v82;
      v102 = v83;
      v103 = v84;
      v104 = v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BEB0);
      sub_1890B2944();
      sub_18A4A5598();
      sub_188A3F5FC(&v120, &unk_1EA93BB50);
      sub_188A3F5FC(&v63, &qword_1EA93BEF8);
    }

    v105 = v74;
    v106 = v75;
    v15 = v76[0];
    goto LABEL_5;
  }

  sub_1890B2408(&v101);
  sub_188A3F29C(v122, &v82, &qword_1EA93BB40);
  sub_188A3F29C(&v121, &v82, &qword_1EA93BB48);
  sub_188A3F29C(v122, &v82, &qword_1EA93BB40);
  sub_188A3F29C(&v121, &v82, &qword_1EA93BB48);
  v117 = v105;
  v118 = v106;
  *v119 = v107[0];
  *(&v119[1] + 3) = *(v107 + 11);
  v113 = v101;
  v114 = v102;
  v115 = v103;
  v116 = v104;
LABEL_8:
  if (v40)
  {
    *&v70 = v40;
    sub_1890B2930(&v70);
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v88[0] = v76[0];
    v88[1] = v76[1];
    v89 = v77;
    v90 = v78;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v82 = v70;
    v83 = v71;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BE70);
    sub_1890B2760();
    sub_18A4A5598();
  }

  else
  {
    v16 = v39;
    if (!v39)
    {
      sub_1890B2430(&v101);
      goto LABEL_13;
    }

    v17 = *(v38 + 48);
    v18 = *(v38 + 56);
    swift_retain_n();
    sub_1891E133C(v17, v18);
    sub_18A4A6C08();
    sub_18A4A45B8();
    *&v44[6] = *&v119[5];
    *&v44[22] = *&v119[7];
    *&v44[38] = *&v119[9];
    v19 = -sub_1891E133C(v17, v18);
    sub_18A4A6BF8();
    sub_18A4A4EA8();
    *&v47[0] = v16;
    WORD4(v47[0]) = 256;
    *(&v47[3] + 1) = *&v44[46];
    *(&v47[2] + 10) = *&v44[32];
    *(&v47[1] + 10) = *&v44[16];
    *(v47 + 10) = *v44;
    *&v48 = 0;
    *(&v48 + 1) = v19;
    v72 = v47[2];
    v73 = v47[3];
    v70 = v47[0];
    v71 = v47[1];
    v76[0] = v50[0];
    v76[1] = v50[1];
    v74 = v48;
    v75 = v49;
    v79 = v53;
    v80 = v54;
    v77 = v51;
    v78 = v52;
    sub_1890B2754(&v70);
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v88[0] = v76[0];
    v88[1] = v76[1];
    v89 = v77;
    v90 = v78;
    v84 = v72;
    v85 = v73;
    v86 = v74;
    v87 = v75;
    v82 = v70;
    v83 = v71;
    sub_188A3F29C(v47, &v101, &qword_1EA93BE70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BE70);
    sub_1890B2760();
    sub_18A4A5598();

    sub_188A3F5FC(v47, &qword_1EA93BE70);
  }

  v91 = v110;
  v92 = v111;
  v93 = v112;
  v88[0] = v107[0];
  v88[1] = v107[1];
  v89 = v108;
  v90 = v109;
  v84 = v103;
  v85 = v104;
  v86 = v105;
  v87 = v106;
  v82 = v101;
  v83 = v102;
  signpost_c2_entryLock_start(*&v102, *&v101);
  v110 = v91;
  v111 = v92;
  v112 = v93;
  v107[0] = v88[0];
  v107[1] = v88[1];
  v108 = v89;
  v109 = v90;
  v103 = v84;
  v104 = v85;
  v105 = v86;
  v106 = v87;
  v101 = v82;
  v102 = v83;
LABEL_13:
  v60 = v117;
  v61 = v118;
  v62[0] = *v119;
  *(v62 + 11) = *(&v119[1] + 3);
  v56 = v113;
  v57 = v114;
  v58 = v115;
  v59 = v116;
  v53 = v110;
  v54 = v111;
  v50[0] = v107[0];
  v50[1] = v107[1];
  v51 = v108;
  v52 = v109;
  v47[2] = v103;
  v47[3] = v104;
  v48 = v105;
  v49 = v106;
  v47[0] = v101;
  v47[1] = v102;
  *&v46[6] = v113;
  v63 = v113;
  v64 = v114;
  *&v46[22] = v114;
  *&v46[38] = v115;
  v65 = v115;
  v66 = v116;
  *&v46[54] = v116;
  *&v46[70] = v117;
  v67 = v117;
  v68 = v118;
  *&v46[86] = v118;
  v69[0] = *v119;
  *&v46[102] = *v119;
  *(v69 + 11) = *(&v119[1] + 3);
  *&v46[113] = *(&v119[1] + 3);
  v79 = v110;
  v80 = v111;
  v76[0] = v107[0];
  v76[1] = v107[1];
  v20 = v42;
  LODWORD(v39) = (v42 != 0) << 8;
  v55 = v112;
  v81 = v112;
  v77 = v108;
  v78 = v109;
  v72 = v103;
  v73 = v104;
  v74 = v105;
  v75 = v106;
  v70 = v101;
  v71 = v102;
  sub_188A3F29C(&v113, &v82, &qword_1EA93BE60);
  sub_188A3F29C(&v101, &v82, &qword_1EA93BE68);
  v40 = v43;

  sub_188A3F29C(&v63, &v82, &qword_1EA93BE60);
  sub_188A3F29C(&v70, &v82, &qword_1EA93BE68);
  sub_188A3F5FC(&v121, &qword_1EA93BB48);
  sub_188A3F5FC(v122, &qword_1EA93BB40);
  sub_188A3F5FC(&v101, &qword_1EA93BE68);
  sub_188A3F5FC(&v113, &qword_1EA93BE60);
  *&v45[149] = v78;
  *&v45[165] = v79;
  *&v45[181] = v80;
  *&v45[85] = v75;
  *&v45[101] = v76[0];
  *&v45[117] = v76[1];
  *&v45[133] = v77;
  *&v45[21] = v71;
  *&v45[37] = v72;
  *&v45[53] = v73;
  *&v45[69] = v74;
  *&v45[5] = v70;
  v21 = *&v46[64];
  v22 = v41;
  *(v41 + 98) = *&v46[80];
  v23 = *&v46[112];
  *(v22 + 114) = *&v46[96];
  *(v22 + 130) = v23;
  v24 = *v46;
  *(v22 + 34) = *&v46[16];
  v25 = *&v46[48];
  *(v22 + 50) = *&v46[32];
  v45[197] = v81;
  *(v22 + 66) = v25;
  *(v22 + 82) = v21;
  *(v22 + 18) = v24;
  v26 = *&v45[160];
  *(v22 + 291) = *&v45[144];
  *(v22 + 307) = v26;
  *(v22 + 323) = *&v45[176];
  v27 = *&v45[96];
  *(v22 + 227) = *&v45[80];
  *(v22 + 243) = v27;
  v28 = *&v45[128];
  *(v22 + 259) = *&v45[112];
  *(v22 + 275) = v28;
  v29 = *v45;
  *(v22 + 163) = *&v45[16];
  v30 = *&v45[48];
  *(v22 + 179) = *&v45[32];
  *v22 = v43;
  *(v22 + 8) = v20;
  *(v22 + 16) = v39;
  *(v22 + 146) = v46[128];
  *(v22 + 337) = *&v45[190];
  *(v22 + 195) = v30;
  *(v22 + 211) = *&v45[64];
  *(v22 + 147) = v29;
  v91 = v53;
  v92 = v54;
  v93 = v55;
  v88[0] = v50[0];
  v88[1] = v50[1];
  v89 = v51;
  v90 = v52;
  v84 = v47[2];
  v85 = v47[3];
  v86 = v48;
  v87 = v49;
  v82 = v47[0];
  v83 = v47[1];
  sub_188A3F5FC(&v82, &qword_1EA93BE68);
  v98 = v60;
  v99 = v61;
  v100[0] = v62[0];
  *(v100 + 11) = *(v62 + 11);
  v94 = v56;
  v95 = v57;
  v96 = v58;
  v97 = v59;
  sub_188A3F5FC(&v94, &qword_1EA93BE60);
}

uint64_t sub_1890B22D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1890B2334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_1890B2408(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 122) = -1;
  *(a1 + 120) = 0;
  return result;
}

double sub_1890B2430(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = -1;
  return result;
}

id sub_1890B2458()
{
  v1 = *v0;
  v2 = objc_allocWithZone(UIVisualEffectView);

  return [v2 initWithEffect_];
}

uint64_t sub_1890B24B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF38);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF40);
    sub_18A4A44D8();
    AGGraphCreateOffsetAttribute2();
    sub_18A4A44F8();
    sub_188A34360(&qword_1EA93BF30, &qword_1EA93BF28);
    sub_18A4A5608();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1890B2644()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BF28);
  sub_188A34360(&qword_1EA93BF30, &qword_1EA93BF28);
  return sub_18A4A5618();
}

unint64_t sub_1890B2760()
{
  result = qword_1EA93BE78;
  if (!qword_1EA93BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE70);
    sub_1890B27EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE78);
  }

  return result;
}

unint64_t sub_1890B27EC()
{
  result = qword_1EA93BE80;
  if (!qword_1EA93BE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE88);
    sub_1890B2878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE80);
  }

  return result;
}

unint64_t sub_1890B2878()
{
  result = qword_1EA93BE90;
  if (!qword_1EA93BE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BE98);
    sub_188A34360(&qword_1EA93BEA0, &qword_1EA93BEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BE90);
  }

  return result;
}

unint64_t sub_1890B2944()
{
  result = qword_1EA93BEB8;
  if (!qword_1EA93BEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BEB0);
    sub_1890B29D0();
    sub_1890B2A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BEB8);
  }

  return result;
}

unint64_t sub_1890B29D0()
{
  result = qword_1EA93BEC0;
  if (!qword_1EA93BEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BEC8);
    sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BEC0);
  }

  return result;
}

unint64_t sub_1890B2A7C()
{
  result = qword_1EA93BEE0;
  if (!qword_1EA93BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BEE8);
    sub_1890B2B48(&qword_1EA93BED0, &qword_1EA93BED8);
    sub_1890B2B48(&qword_1EA93BEF0, &qword_1EA93BEF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BEE0);
  }

  return result;
}

uint64_t sub_1890B2B48(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890B2BF8()
{
  result = qword_1EA93BF00;
  if (!qword_1EA93BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BF08);
    sub_188A34360(&qword_1EA93BF10, &qword_1EA93BF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BF00);
  }

  return result;
}

unint64_t sub_1890B2CB0(uint64_t a1)
{
  result = sub_1890B2CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1890B2CD8()
{
  result = qword_1EA93BF20;
  if (!qword_1EA93BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93BF20);
  }

  return result;
}

id sub_1890B2D2C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

id sub_1890B2DF4(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = [v2 name];
  if (!v4)
  {
    sub_18A4A7288();
    v4 = sub_18A4A7258();
  }

  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [v2 identifier];
  if (!v5)
  {
    sub_18A4A7288();
    v5 = sub_18A4A7258();
  }

  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = [v2 affectsColorAppearance];
  result = [v2 respondsToSelector_];
  if ((result & 1) == 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = [v2 defaultValueRepresentsUnspecified];
  result = [v2 respondsToSelector_];
  if (result)
  {
    v8 = [objc_opt_self() _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

    return v8;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1890B2FB8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_18A4A7258();
  v4 = sub_18A4A7258();
  v5 = [v2 _defineNSIntegerTraitWithName_identifier_defaultValue_affectsColorAppearance_defaultValueRepresentsUnspecified_isPrivate_placeholderToken_];

  return v5;
}

uint64_t sub_1890B30E8(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void))
{
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = [(_UITraitOverrides *)*(*v4 + 16) _swiftImplCopy];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v10 = swift_allocObject();
    *(v10 + 16) = v9;

    *v4 = v10;
  }

  v11 = *(*v4 + 16);
  v12 = qword_1ED491B40;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v14 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  a4(a2, a3, 0);
  os_unfair_lock_unlock(v14[2]);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
  v15 = sub_188A74A44();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v13 _setNSIntegerValue_forTraitToken_];

  return swift_unknownObjectRelease();
}

void sub_1890B32B4()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped];
  if (v1)
  {
    v20 = v1;
    v2 = [v20 superview];
    if (v2 && (v3 = v2, v2, v3 == v0))
    {
      v19 = v20;
    }

    else
    {
      [v20 removeFromSuperview];
      [v0 addSubview_];
      v4 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_18A64B810;
      v6 = [v0 widthAnchor];
      v7 = [v20 widthAnchor];
      v8 = [v6 constraintEqualToAnchor_];

      *(v5 + 32) = v8;
      v9 = [v0 heightAnchor];
      v10 = [v20 heightAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      *(v5 + 40) = v11;
      v12 = [v0 centerXAnchor];
      v13 = [v20 centerXAnchor];
      v14 = [v12 constraintEqualToAnchor_];

      *(v5 + 48) = v14;
      v15 = [v0 centerYAnchor];
      v16 = [v20 centerYAnchor];
      v17 = [v15 constraintEqualToAnchor_];

      *(v5 + 56) = v17;
      sub_188A34624(0, &qword_1ED48CFF0);
      v18 = sub_18A4A7518();

      [v4 activateConstraints_];

      v19 = v18;
    }
  }
}

id sub_1890B358C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_18A4A4E38();
  LOBYTE(v26) = v9 & 1;
  LOBYTE(v25) = v10 & 1;
  if (sub_18A4A4E18())
  {
    LODWORD(v11) = 1112014848;
  }

  else
  {
    sub_18A4A4E08();
    LOBYTE(v22) = v12 & 1;
    LOBYTE(v21) = v13 & 1;
    LOBYTE(v20) = a2 & 1;
    LOBYTE(v19) = a4 & 1;
    if (sub_18A4A4E18())
    {
      *&v11 = 50.0;
    }

    else
    {
      *&v11 = 750.0;
    }
  }

  v14 = *&a3;
  v15 = 10.0;
  if (a4)
  {
    v14 = 10.0;
  }

  if (v14 == INFINITY)
  {
    v16 = 10000.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = *&a1;
  if (a2)
  {
    v17 = 10.0;
  }

  if (v17 == INFINITY)
  {
    v17 = 10000.0;
  }

  LODWORD(v15) = LODWORD(v11);
  LOBYTE(v23) = a4 & 1;
  LOBYTE(v24) = a2 & 1;
  return [v4 systemLayoutSizeFittingSize:v17 withHorizontalFittingPriority:v16 verticalFittingPriority:{v11, v15, v19, v20, v21, v22, v23, v24, v25, v26}];
}

void sub_1890B3744()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8717CustomViewWrapper_wrapped];
    if (v2)
    {
      v3 = v2;
      v4 = [(UIView *)v3 _typedStorage];
      sub_18902B930();

      sub_1890A2BD8();
      if (v5)
      {
        v6 = v5;
        while (1)
        {
          v7 = [v6 window];
          if (v7)
          {
            break;
          }

          sub_1890A2BD8();
          v6 = v8;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        v9 = v7;

        sub_188E036A4();
        sub_1890B32B4();
      }

      else
      {
LABEL_8:

        sub_188E036A4();
      }
    }
  }
}

uint64_t sub_1890B3A28()
{
  result = sub_1890B42A0(MEMORY[0x1E69E7CC0]);
  qword_1EA92FB30 = result;
  return result;
}

uint64_t sub_1890B3A50@<X0>(void *a1@<X8>)
{
  if (qword_1EA92FB20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EA92FB30;
}

id sub_1890B3B1C@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a2;
  sub_18A4A6C08();
  sub_18A4A4EA8();
  v5 = 0.0;
  if (v4 == 2)
  {
    v5 = 1.0;
  }

  *(a3 + 56) = v11;
  *(a3 + 72) = v12;
  *(a3 + 88) = v13;
  *(a3 + 104) = v14;
  *(a3 + 8) = v8;
  *(a3 + 24) = v9;
  *a3 = a1;
  *(a3 + 40) = v10;
  *(a3 + 120) = v5;

  return a1;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1890B3EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890B3F54(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1890B40B4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1890B4228(v8, v4, v2);
  result = MEMORY[0x18CFEA5B0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1890B40B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    sub_188A3F29C(*(a3 + 56) + 8 * v14, v19, &qword_1EA936E70);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      result = sub_188A3F5FC(v19, &qword_1EA936E70);
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_18914CAD0(v18, a2, v4, a3);
      }
    }

    else
    {
      result = sub_188A3F5FC(v19, &qword_1EA936E70);
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_18914CAD0(v18, a2, v4, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1890B4228(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1890B40B4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1890B42A0(uint64_t a1)
{
  v2 = sub_188E8D1D8(MEMORY[0x1E69E7CC0]);
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return v2;
  }

  v5 = (a1 + 32);
  v6 = v2;
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = *(v6 + 16);
    v10 = v7;
    if (v9 > 5)
    {
      v3 = sub_1890B3F54(v6);
    }

    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    sub_188A3F704(v25, v24, &qword_1EA936E70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_188A403F4(v10);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_1890BA640(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_188A403F4(v10);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v22 = v12;
    sub_188FA080C();
    v12 = v22;
    if ((v18 & 1) == 0)
    {
LABEL_15:
      v3[(v12 >> 6) + 8] |= 1 << v12;
      *(v3[6] + 8 * v12) = v10;
      sub_188A3F704(v24, v3[7] + 8 * v12, &qword_1EA936E70);
      v20 = v3[2];
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v3[2] = v21;
      goto LABEL_4;
    }

LABEL_3:
    sub_1890B44A4(v24, v3[7] + 8 * v12);
LABEL_4:

    v6 = v3;
LABEL_5:
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

uint64_t sub_1890B44A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA936E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890B4524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 139))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1890B456C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 138) = 0;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 139) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 139) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1890B45D4()
{
  result = qword_1EA930AE0;
  if (!qword_1EA930AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C078);
    sub_1890B4660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AE0);
  }

  return result;
}

unint64_t sub_1890B4660()
{
  result = qword_1EA930AF0;
  if (!qword_1EA930AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C088);
    sub_188C65A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AF0);
  }

  return result;
}

unint64_t sub_1890B46EC()
{
  result = qword_1EA930AB0;
  if (!qword_1EA930AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C020);
    sub_188BAD470();
    sub_1890B47A4(&unk_1EA930AD0, &qword_1EA93C008, &unk_18A665268, sub_1890B4854);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AB0);
  }

  return result;
}

uint64_t sub_1890B47A4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_188A34360(&qword_1ED48E058, &qword_1EA93C070);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1890B4854()
{
  result = qword_1EA930AE8;
  if (!qword_1EA930AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C0A0);
    sub_1890B48E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AE8);
  }

  return result;
}

unint64_t sub_1890B48E0()
{
  result = qword_1EA930AF8;
  if (!qword_1EA930AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AF8);
  }

  return result;
}

unint64_t sub_1890B4934()
{
  result = qword_1EA930AC0;
  if (!qword_1EA930AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93BFF8);
    sub_1890B47A4(&qword_1EA930BB0, &qword_1EA93C000, &unk_18A665260, sub_188C659A4);
    sub_1890B47A4(&qword_1EA930AC8, &qword_1EA93BFE8, &unk_18A665248, sub_1890B45D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AC0);
  }

  return result;
}

uint64_t sub_1890B4A18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1890B4A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1890B4ACC()
{
  result = qword_1EA930AA8;
  if (!qword_1EA930AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C0B0);
    sub_1890B46EC();
    sub_1890B4934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930AA8);
  }

  return result;
}

unint64_t sub_1890B4B74()
{
  result = qword_1EA930230;
  if (!qword_1EA930230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93C0E8);
    sub_1890B4C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930230);
  }

  return result;
}

unint64_t sub_1890B4C00()
{
  result = qword_1EA930250[0];
  if (!qword_1EA930250[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA93C0F8);
    sub_188CC538C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA930250);
  }

  return result;
}

uint64_t sub_1890B4CAC(uint64_t a1)
{
  sub_18A4A2AD8();
  sub_1890C8578(&qword_1EA92F728, MEMORY[0x1E6969B50]);
  result = sub_18A4A7EA8();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
        result = sub_18A4A7E58();
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1890B4E34()
{
  result = qword_1EA93C100;
  if (!qword_1EA93C100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA93C100);
  }

  return result;
}

uint64_t UICollectionView._intelligenceCollectSubelements(in:using:transformToRoot:)(char *a1, char *a2, char *a3, double a4, double a5, double a6, double a7)
{
  v480 = a3;
  v474 = a2;
  v475 = a1;
  v377 = sub_18A4A3678();
  v376 = *(v377 - 8);
  MEMORY[0x1EEE9AC00](v377);
  v366 = &v366 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v380 = &v366 - v15;
  v379 = sub_18A4A3688();
  v378 = *(v379 - 8);
  MEMORY[0x1EEE9AC00](v379);
  v385 = &v366 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = sub_18A4A2A88();
  v373 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v388 = &v366 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C108);
  MEMORY[0x1EEE9AC00](v372);
  v384 = &v366 - v18;
  v386 = sub_18A4A2AD8();
  v387 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386);
  v370 = &v366 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v369 = &v366 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v371 = &v366 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v381 = &v366 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v382 = &v366 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v368 = &v366 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v383 = &v366 - v31;
  v438 = sub_18A4A3BC8();
  v374 = *(v438 - 8);
  MEMORY[0x1EEE9AC00](v438);
  v437 = &v366 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v436 = &v366 - v34;
  v442 = sub_18A4A3BF8();
  v367 = *(v442 - 8);
  MEMORY[0x1EEE9AC00](v442);
  v450 = &v366 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v409 = &v366 - v37;
  v418 = sub_18A4A4258();
  v476 = *(v418 - 8);
  MEMORY[0x1EEE9AC00](v418);
  v408 = &v366 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340B0);
  MEMORY[0x1EEE9AC00](v399);
  v398 = &v366 - v39;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C120);
  MEMORY[0x1EEE9AC00](v407);
  v397 = &v366 - v40;
  v441 = sub_18A4A3D18();
  v485 = *(v441 - 8);
  MEMORY[0x1EEE9AC00](v441);
  v406 = &v366 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v415 = &v366 - v43;
  v396 = sub_18A4A3E48();
  v400 = *(v396 - 8);
  MEMORY[0x1EEE9AC00](v396);
  v395 = &v366 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v394 = &v366 - v46;
  v467 = sub_18A4A3BA8();
  v477 = *(v467 - 8);
  MEMORY[0x1EEE9AC00](v467);
  v429 = &v366 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v466 = &v366 - v49;
  v448 = sub_18A4A3888();
  v469 = *(v448 - 1);
  MEMORY[0x1EEE9AC00](v448);
  v471 = &v366 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v421 = &v366 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v430 = &v366 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v435 = &v366 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v440 = &v366 - v58;
  MEMORY[0x1EEE9AC00](v59);
  *&v447 = &v366 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v473 = &v366 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v481 = (&v366 - v64);
  v483 = sub_18A4A3CC8();
  v479 = *(v483 - 8);
  MEMORY[0x1EEE9AC00](v483);
  v375 = &v366 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v453 = &v366 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v420 = &v366 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v419 = &v366 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v434 = &v366 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v452 = &v366 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v470 = &v366 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v417 = &v366 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v428 = &v366 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v487 = &v366 - v83;
  v484 = sub_18A4A2B48();
  v465 = *(v484 - 8);
  MEMORY[0x1EEE9AC00](v484);
  v468 = &v366 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85);
  v433 = &v366 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v446 = &v366 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v488 = &v366 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v91 - 8);
  v414 = &v366 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v432 = &v366 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v449 = &v366 - v96;
  isa = sub_18A4A4168();
  length = isa[-1].length;
  MEMORY[0x1EEE9AC00](isa);
  v459 = &v366 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v98);
  v460 = (&v366 - v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340C0);
  MEMORY[0x1EEE9AC00](v100 - 8);
  v482 = &v366 - v101;
  v478 = sub_18A4A3E68();
  v472 = *(v478 - 1);
  MEMORY[0x1EEE9AC00](v478);
  v454 = (&v366 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v103);
  v464 = (&v366 - v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C140);
  MEMORY[0x1EEE9AC00](v105 - 8);
  v413 = &v366 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v107);
  v451 = &v366 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v366 - v110;
  v412 = sub_18A4A4088();
  v112 = *(v412 - 8);
  MEMORY[0x1EEE9AC00](v412);
  v114 = &v366 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x1EEE9AC00](v115);
  v118 = &v366 - v117;
  v458 = [v7 _collectionViewData];
  if (!v458)
  {
    goto LABEL_131;
  }

  v456 = [v7 collectionViewLayout];
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v491, v492);
  sub_18A4A3E88();
  v462 = sub_1890B8D28(v118);
  v119 = *(v112 + 8);
  v404 = v118;
  v120 = v118;
  v121 = v412;
  v119(v120, v412);
  __swift_destroy_boxed_opaque_existential_0Tm(&v491);
  v122 = v476[7];
  v457 = v111;
  v411 = v476 + 7;
  v410 = v122;
  v122(v111, 1, 1, v418);
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v491, v492);
  sub_18A4A3E88();
  v123 = v482;
  sub_18A4A3E98();
  v403 = v119;
  v119(v114, v121);
  v124 = v472;
  v125 = v478;
  v126 = (*(v472 + 6))(v123, 1, v478);
  v486 = v7;
  v405 = v112 + 8;
  if (v126 == 1)
  {
    sub_188A3F5FC(v123, &unk_1EA9340C0);
    __swift_destroy_boxed_opaque_existential_0Tm(&v491);
    v455 = 0;
    v127 = v7;
    v128 = v483;
    v129 = v449;
  }

  else
  {
    v130 = v464;
    (*(v124 + 4))(v464, v123, v125);
    __swift_destroy_boxed_opaque_existential_0Tm(&v491);
    v131 = UICollectionView._appIntentsDataSourcePayloadProvider.getter(&v495);
    v129 = v449;
    if (AssociatedTypeWitness)
    {
      sub_188A5EBAC(&v495, &v491);

      v133 = v460;
      sub_1890E6534(v132, v460);
      __swift_project_boxed_opaque_existential_0(&v491, v492);
      v134 = sub_18A4A4268();
      __swift_project_boxed_opaque_existential_0(&v491, v492);
      v135 = sub_18A4A4278();
      v455 = v134;
      if (v135)
      {
        (*(v124 + 2))(v454, v130, v125);
        sub_188A53994(&v491, &v495);
        v136 = length;
        length[2](v459, v133, isa);

        v137 = v451;
        sub_18A4A4228();
        (v136[1])(v133, isa);
        (*(v124 + 1))(v130, v125);
        v410(v137, 0, 1, v418);
        sub_1890C3D9C(v137, v457);
      }

      else
      {
        (length[1])(v133, isa);
        (*(v124 + 1))(v130, v125);
      }

      v128 = v483;
      v138 = v485;
      __swift_destroy_boxed_opaque_existential_0Tm(&v491);
      v127 = v486;
      goto LABEL_11;
    }

    (*(v124 + 1))(v130, v125, v131);
    sub_188A3F5FC(&v495, &unk_1EA93C160);
    v455 = 0;
    v127 = v486;
    v128 = v483;
  }

  v138 = v485;
LABEL_11:
  v139 = __swift_project_boxed_opaque_existential_0(v462 + 5, v462[8]);
  v140 = MEMORY[0x1EEE9AC00](v139);
  (*(v142 + 16))(&v366 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0), v140);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v495);
  sub_18A4A7458();
  v472 = 0;
  length = (v465 + 6);
  v454 = (v465 + 4);
  v460 = (v479 + 56);
  v464 = (v465 + 2);
  v478 = (v479 + 48);
  v143 = (v479 + 32);
  v427 = *MEMORY[0x1E69DBBC0];
  v482 = (v477 + 13);
  v426 = v477 + 1;
  v477 = (v479 + 8);
  v445 = (v469 + 2);
  v444 = *MEMORY[0x1E69DBBA8];
  v443 = v469 + 1;
  v431 = (v465 + 7);
  v425 = *MEMORY[0x1E69DBC38];
  v424 = (v138 + 104);
  v393 = v400 + 16;
  v423 = (v138 + 8);
  v392 = v400 + 32;
  v391 = v400 + 56;
  v390 = v400 + 8;
  v416 = (v476 + 6);
  v402 = (v476 + 4);
  v401 = "14AA6B49FCAFC5A54255A118E1D87).";
  v469 = (v465 + 1);
  v476 = MEMORY[0x1E69E7CC8];
  v465 = (v479 + 16);
  v422 = xmmword_18A64BFB0;
  v144 = v484;
  v485 = (v479 + 32);
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v495, AssociatedTypeWitness);
    sub_18A4A7D78();
    v145 = *length;
    v146 = (*length)(v129, 1, v144);
    v147 = v488;
    if (v146 == 1)
    {
      break;
    }

    v459 = v145;
    v451 = *v454;
    (v451)(v488, v129, v144);
    v148 = v481;
    (*v460)(v481, 1, 1, v128);
    v149 = sub_18A4A2B08();
    v150 = [v127 _cellForItemAtIndexPath_];

    v152 = v473;
    if (v150)
    {
      MEMORY[0x1EEE9AC00](v151);
      *(&v366 - 10) = v127;
      *(&v366 - 9) = v150;
      *(&v366 - 8) = a4;
      *(&v366 - 7) = a5;
      *(&v366 - 6) = a6;
      *(&v366 - 5) = a7;
      v153 = v474;
      *(&v366 - 4) = v475;
      *(&v366 - 3) = v153;
      *(&v366 - 2) = v480;
      sub_18A4A33C8();

      v147 = v488;
      sub_188A3F5FC(v148, &unk_1EA934040);
      sub_188A3F704(v152, v148, &unk_1EA934040);
    }

    sub_18907FBC8(v147, v462[3]);
    v154 = sub_18A4A2B08();
    [v127 _globalIndexPathForItemAtIndexPath_];

    isa = v464->isa;
    (isa)(v446, v147, v484);
    v155 = v481;
    sub_18A4A3878();
    v156 = v447;
    sub_188A3F29C(v155, v447, &unk_1EA934040);
    v157 = *v478;
    if ((*v478)(v156, 1, v128) == 1)
    {
      sub_188A3F5FC(v156, &unk_1EA934040);
    }

    else
    {
      v158 = v428;
      v439 = *v143;
      v439(v428, v156, v128);
      v159 = v466;
      sub_18A4A3C08();
      v160 = *v482;
      v161 = v429;
      v162 = v467;
      (*v482)(v429, v427, v467);
      v163 = MEMORY[0x18CFDEAE0](v159, v161);
      v164 = *v426;
      (*v426)(v161, v162);
      v164(v159, v162);
      if (v163)
      {
        v165 = v471;
        v166 = v448;
        (*v445)(v159, v471, v448);
        v160(v159, v444, v162);
        sub_18A4A3C18();
        (*v443)(v165, v166);
        sub_188A3F5FC(v481, &unk_1EA934040);
        v128 = v483;
        v439(v487, v158, v483);
        v167 = v457;
        goto LABEL_24;
      }

      v128 = v483;
      (*v477)(v158, v483);
      v155 = v481;
    }

    v168 = sub_18A4A2B08();
    v169 = [(UICollectionViewData *)v458 rectForItemAtIndexPath:v168];
    v171 = v170;
    v173 = v172;
    v175 = v174;

    (v474)(v486, v169, v171, v173, v175);
    v176 = v440;
    sub_188A3F29C(v155, v440, &unk_1EA934040);
    v177 = v157(v176, 1, v128);
    v167 = v457;
    if (v177 == 1)
    {
      sub_188A3F5FC(v176, &unk_1EA934040);
    }

    else
    {
      v178 = v479;
      v179 = *(v479 + 32);
      v180 = v417;
      v179(v417, v176, v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
      v181 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v182 = swift_allocObject();
      *(v182 + 16) = v422;
      v183 = v180;
      v167 = v457;
      v179((v182 + v181), v183, v128);
    }

    v184 = v466;
    v185 = v471;
    v186 = v448;
    (*v445)(v466, v471, v448);
    (*v482)(v184, v444, v467);
    sub_18A4A3748();
    (*v443)(v185, v186);
    sub_188A3F5FC(v155, &unk_1EA934040);
LABEL_24:
    v8 = v488;
    v144 = v484;
    if (v455)
    {
      sub_1890E6F70(&v491);
      if (v491)
      {
        v187 = v432;
        (isa)(v432, v8, v144);
        (*v431)(v187, 0, 1, v144);
        v188 = v459;
      }

      else
      {
        v189 = v494;
        v190 = sub_18A4A2B08();
        v191 = [v189 dataSourceIndexPathForPresentationIndexPath_];

        if (v191)
        {
          v192 = v414;
          sub_18A4A2B18();

          v193 = 0;
        }

        else
        {
          v193 = 1;
          v192 = v414;
        }

        v188 = v459;
        (*v431)(v192, v193, 1, v144);
        v194 = v192;
        v187 = v432;
        sub_188A3F704(v194, v432, &unk_1EA93C130);
      }

      sub_1890C3D10(&v491);
      if ((v188)(v187, 1, v144) == 1)
      {
        sub_188A3F5FC(v187, &unk_1EA93C130);
      }

      else
      {
        v195 = v433;
        (v451)(v433, v187, v144);
        v196 = v415;
        (isa)(v415, v195, v144);
        v197 = *v424;
        (*v424)(v196, v425, v441);
        v198 = v455;
        if (*(v455 + 16) && (v199 = sub_188E8BD28(v196), (v200 & 1) != 0))
        {
          v201 = v400;
          v202 = *(v198 + 56) + *(v400 + 72) * v199;
          v203 = *(v400 + 16);
          v204 = v395;
          v205 = v396;
          v203(v395, v202, v396);
          v459 = *v423;
          (v459)(v196, v441);
          v206 = v394;
          (*(v201 + 32))(v394, v204, v205);
          v207 = v398;
          v203(v398, v206, v205);
          (*(v201 + 56))(v207, 0, 1, v205);
          sub_18A4A3848();
          sub_18A4A3978();
          v208 = v206;
          v144 = v484;
          v209 = v205;
          v8 = v488;
          (*(v201 + 8))(v208, v209);
        }

        else
        {
          v459 = *v423;
          (v459)(v196, v441);
        }

        v210 = v413;
        sub_188A3F29C(v167, v413, &unk_1EA93C140);
        v211 = v418;
        if ((*v416)(v210, 1, v418) == 1)
        {
          (*v469)(v433, v144);
          sub_188A3F5FC(v210, &unk_1EA93C140);
        }

        else
        {
          v451 = *v402;
          v439 = v197;
          v212 = v167;
          v213 = v408;
          (v451)(v408, v210, v211);
          sub_18A4A3448();
          __swift_project_boxed_opaque_existential_0(v490, v490[3]);
          v214 = v404;
          sub_18A4A3E88();
          v215 = sub_18A4A6E88();
          v216 = v409;
          (*(*(v215 - 8) + 56))(v409, 1, 1, v215);
          v217 = sub_18A4A3958();
          sub_18A4A3838();
          sub_188A3F5FC(v216, &unk_1EA93C110);
          v218 = v214;
          v144 = v484;
          v403(v218, v412);
          v217(v489, 0);
          __swift_destroy_boxed_opaque_existential_0Tm(v490);
          v219 = v406;
          v220 = v433;
          (isa)(v406, v433, v144);
          v221 = v441;
          v439(v219, v425, v441);
          sub_18A4A4248();
          (v459)(v219, v221);
          __swift_destroy_boxed_opaque_existential_0Tm(&v491);
          (*v469)(v220, v144);
          sub_188A3F5FC(v212, &unk_1EA93C140);
          (v451)(v212, v213, v211);
          v8 = v488;
          v410(v212, 0, 1, v211);
        }

        v128 = v483;
      }
    }

    if (sub_18A4A2B28() < 1)
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      sub_18A4A87A8();
      __break(1u);

      __break(1u);
      return result;
    }

    v222 = sub_18A4A2B58();
    (*v465)(v470, v487, v128);
    sub_188A55B8C(v472);
    v223 = v476;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v491 = v223;
    v226 = sub_188C4585C(v222);
    v227 = v223[2];
    v228 = (v225 & 1) == 0;
    v229 = v227 + v228;
    if (__OFADD__(v227, v228))
    {
      goto LABEL_127;
    }

    v230 = v225;
    if (v223[3] >= v229)
    {
      v127 = v486;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_188FA6DF4();
        v223 = v491;
      }

      v128 = v483;
      if (v230)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1890C10CC(v229, isUniquelyReferenced_nonNull_native);
      v231 = v491;
      v232 = sub_188C4585C(v222);
      v127 = v486;
      if ((v230 & 1) != (v233 & 1))
      {
        goto LABEL_132;
      }

      v226 = v232;
      v128 = v483;
      v223 = v231;
      if (v230)
      {
        goto LABEL_52;
      }
    }

    v223[(v226 >> 6) + 8] |= 1 << v226;
    *(v223[6] + 8 * v226) = v222;
    *(v223[7] + 8 * v226) = MEMORY[0x1E69E7CC0];
    v234 = v223[2];
    v235 = __OFADD__(v234, 1);
    v236 = v234 + 1;
    if (v235)
    {
      goto LABEL_128;
    }

    v223[2] = v236;
LABEL_52:
    v476 = v223;
    v237 = v223[7];
    v238 = *(v237 + 8 * v226);
    v239 = swift_isUniquelyReferenced_nonNull_native();
    *(v237 + 8 * v226) = v238;
    if ((v239 & 1) == 0)
    {
      v238 = sub_188DFA260(0, v238[2] + 1, 1, v238);
      *(v237 + 8 * v226) = v238;
    }

    v241 = v238[2];
    v240 = v238[3];
    if (v241 >= v240 >> 1)
    {
      *(v237 + 8 * v226) = sub_188DFA260(v240 > 1, v241 + 1, 1, v238);
    }

    v242 = v479;
    (*(v479 + 8))(v487, v128);
    (*v469)(v488, v144);
    v243 = *(v237 + 8 * v226);
    *(v243 + 16) = v241 + 1;
    v143 = v485;
    (*(v242 + 32))(v243 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v241, v470, v128);
    v472 = sub_188F49350;
    v129 = v449;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v495);
  if (!(*v416)(v457, 1, v418))
  {
    sub_18A4A4238();
  }

  v244 = v476;
  v245 = v476[2];
  if (v245)
  {
    v246 = sub_1890BA4EC(v476[2], 0);
    v247 = sub_1890BA164(&v491, v246 + 4, v245, v244);
    v8 = v493;

    sub_188E036A4();
    if (v247 != v245)
    {
      goto LABEL_130;
    }

    v128 = v483;
  }

  else
  {
    v246 = MEMORY[0x1E69E7CC0];
  }

  *&v491 = v246;
  sub_1890B9A14(&v491);
  v248 = *(v491 + 16);
  if (!v248)
  {

    v311 = [(UICollectionViewData *)v458 numberOfSections];
    v488 = 0;
    v251 = 1;
    goto LABEL_104;
  }

  v488 = 0;
  v464 = @"UICollectionElementKindSectionHeader";
  isa = @"UICollectionElementKindSectionFooter";
  LODWORD(length) = *MEMORY[0x1E69DBC18];
  v459 = (v374 + 104);
  LODWORD(v455) = *MEMORY[0x1E69DBC10];
  v454 = (v374 + 32);
  v451 = (v367 + 16);
  LODWORD(v449) = *MEMORY[0x1E69DBBF8];
  v448 = (v367 + 8);
  v446 = v491;
  v249 = v491 + 40;
  v250 = MEMORY[0x1E69E7CC0];
  v251 = 1;
  v447 = xmmword_18A64BFA0;
  v252 = 1;
  while (2)
  {
    v471 = v248;
    v481 = v250;
    v253 = *(v249 - 8);

    v254 = [v456 _layoutTypeForSection_];
    v255 = v254;
    v256 = v251 | ~v252;
    v257 = v488;
    v258 = v488 == v254;
    if (v488 == v254)
    {
      v259 = v488;
    }

    else
    {
      v259 = 0;
    }

    if (v251)
    {
      v259 = v254;
    }

    if (v252)
    {
      v257 = v259;
    }

    v488 = v257;
    if (v252)
    {
      v251 = (v251 | v258) ^ 1;
    }

    LODWORD(v487) = v251;
    if ((v256 & 1) == 0)
    {
      v252 = v258;
    }

    LODWORD(v470) = v252;
    [(UICollectionViewData *)v458 numberOfItemsInSection:v253];
    if (v255 == 2)
    {
      v260 = v455;
    }

    else
    {
      v260 = length;
    }

    v261 = v437;
    v262 = v438;
    (*v459)(v437, v260, v438);
    (*v454)(v436, v261, v262);
    v263 = *v460;
    (*v460)(v473, 1, 1, v128);
    v263(v435, 1, 1, v128);
    v264 = v450;
    sub_18A4A3BB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF0);
    v265 = swift_allocObject();
    *(v265 + 16) = v447;
    *(v265 + 32) = v253;
    *(v265 + 40) = 0;
    MEMORY[0x18CFDDA80]();
    v266 = v464;
    v267 = sub_18A4A2B08();
    v268 = v486;
    v269 = [v486 _visibleSupplementaryViewOfKind_atIndexPath_];

    v271 = v474;
    if (v269)
    {
      MEMORY[0x1EEE9AC00](v270);
      *(&v366 - 10) = v268;
      *(&v366 - 9) = v269;
      *(&v366 - 8) = a4;
      *(&v366 - 7) = a5;
      *(&v366 - 6) = a6;
      *(&v366 - 5) = a7;
      *(&v366 - 4) = v475;
      *(&v366 - 3) = v271;
      *(&v366 - 2) = v480;
      sub_18A4A33C8();
      sub_18A4A3BE8();
    }

    v272 = isa;
    v273 = sub_18A4A2B08();
    v274 = [v268 _visibleSupplementaryViewOfKind_atIndexPath_];

    v276 = v480;
    if (v274)
    {
      MEMORY[0x1EEE9AC00](v275);
      *(&v366 - 10) = v268;
      *(&v366 - 9) = v274;
      *(&v366 - 8) = a4;
      *(&v366 - 7) = a5;
      *(&v366 - 6) = a6;
      *(&v366 - 5) = a7;
      *(&v366 - 4) = v475;
      *(&v366 - 3) = v271;
      *(&v366 - 2) = v276;
      sub_18A4A33C8();
      sub_18A4A3BD8();
    }

    [v456 _layoutFrameForSection_];
    x = v498.origin.x;
    y = v498.origin.y;
    width = v498.size.width;
    height = v498.size.height;
    if (CGRectIsNull(v498))
    {
      v281 = v486;
      [v486 contentSize];
      width = v282;
      height = v283;
      x = 0.0;
      y = 0.0;
    }

    else
    {
      v281 = v486;
    }

    v284 = v434;
    (v271)(v281, x, y, width, height);
    v285 = v466;
    v286 = v271;
    v287 = v442;
    (*v451)(v466, v264, v442);
    (*v482)(v285, v449, v467);
    sub_18A4A3748();
    v288 = [v281 _orthogonalScrollViewForSectionIndex_];
    v289 = v264;
    v128 = v483;
    if (v288)
    {
      v290 = v288;
      MEMORY[0x1EEE9AC00](v288);
      *(&v366 - 10) = v281;
      *(&v366 - 9) = v291;
      *(&v366 - 8) = a4;
      *(&v366 - 7) = a5;
      *(&v366 - 6) = a6;
      *(&v366 - 5) = a7;
      *(&v366 - 4) = v475;
      *(&v366 - 3) = v286;
      *(&v366 - 2) = v276;
      v292 = v430;
      sub_18A4A33C8();
      v293 = v421;
      sub_188A3F29C(v292, v421, &unk_1EA934040);
      if ((*v478)(v293, 1, v128) == 1)
      {

        sub_188A3F5FC(v292, &unk_1EA934040);
        (*v469)(v468, v484);
        (*v448)(v450, v287);
        sub_188A3F5FC(v293, &unk_1EA934040);
        goto LABEL_90;
      }

      v295 = *v485;
      (*v485)(v419, v293, v128);
      (*v465)(v420, v284, v128);
      v296 = sub_18A4A3778();
      v298 = v297;
      v299 = *v297;
      v300 = swift_isUniquelyReferenced_nonNull_native();
      *v298 = v299;
      if ((v300 & 1) == 0)
      {
        v299 = sub_188DFA260(0, *(v299 + 2) + 1, 1, v299);
        *v298 = v299;
      }

      v302 = *(v299 + 2);
      v301 = *(v299 + 3);
      if (v302 >= v301 >> 1)
      {
        v299 = sub_188DFA260(v301 > 1, v302 + 1, 1, v299);
        *v298 = v299;
      }

      *(v299 + 2) = v302 + 1;
      v303 = v479;
      v128 = v483;
      v294 = v485;
      v295(&v299[((*(v303 + 80) + 32) & ~*(v303 + 80)) + *(v479 + 72) * v302], v420, v483);
      v296(&v491, 0);

      sub_188A3F5FC(v430, &unk_1EA934040);
      (*(v303 + 8))(v284, v128);
      (*v469)(v468, v484);
      (*v448)(v450, v442);
      v295(v284, v419, v128);
    }

    else
    {
      (*v469)(v468, v484);
      (*v448)(v289, v287);
LABEL_90:
      v294 = v485;
    }

    v250 = v481;
    v304 = *v294;
    v305 = v452;
    (*v294)(v452, v284, v128);
    (*v465)(v453, v305, v128);
    v306 = swift_isUniquelyReferenced_nonNull_native();
    v307 = v482;
    if ((v306 & 1) == 0)
    {
      v250 = sub_188DFA260(0, (v250[2] + 1), 1, v250);
    }

    v251 = v487;
    v309 = v250[2];
    v308 = v250[3];
    if (v309 >= v308 >> 1)
    {
      v250 = sub_188DFA260(v308 > 1, v309 + 1, 1, v250);
    }

    v310 = v479;
    (*(v479 + 8))(v452, v128);
    v250[2] = (v309 + 1);
    v304(v250 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v310 + 72) * v309, v453, v128);
    v249 += 16;
    v248 = v471 - 1;
    v252 = v470;
    if (v471 != 1)
    {
      continue;
    }

    break;
  }

  v311 = [(UICollectionViewData *)v458 numberOfSections];
  if ((v252 & 1) == 0)
  {

    v312 = v480;
    v313 = v486;
    v314 = v474;
    goto LABEL_116;
  }

LABEL_104:
  v8 = v386;
  if (v311 < 0)
  {
    goto LABEL_129;
  }

  LODWORD(v487) = v251;
  v315 = v368;
  v478 = v311;
  sub_18A4A2A98();
  v316 = v382;
  sub_1890B4CAC(v476);
  v317 = v387;
  v318 = *(v387 + 16);
  v318(v381, v315, v8);
  v318(v369, v315, v8);
  v318(v370, v316, v8);
  v485 = MEMORY[0x1E6969B50];
  sub_1890C8578(&qword_1EA92F728, MEMORY[0x1E6969B50]);
  v319 = v371;
  sub_18A4A7E48();
  sub_18A4A7E38();
  v320 = *(v317 + 8);
  (v320)(v319, v8);
  (v320)(v382, v8);
  v387 = v317 + 8;
  v481 = v320;
  (v320)(v315, v8);
  sub_18A4A2AA8();
  sub_1890C8578(&qword_1EA92F730, v485);
  v321 = v388;
  sub_18A4A7878();
  v322 = sub_1890C8578(&qword_1EA92F738, MEMORY[0x1E6969B18]);
  v323 = v389;
  v485 = v322;
  LOBYTE(v318) = sub_18A4A7248();
  v324 = (v373 + 8);
  v325 = *(v373 + 8);
  v325(v321, v323);
  if (v318)
  {
    v326 = v488;
    v314 = v474;
    v327 = v487;
    goto LABEL_119;
  }

  v484 = v324 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v328 = sub_18A4A78C8();
  v330 = *v329;
  v328(&v491, 0);
  sub_18A4A7888();
  v331 = [v456 _layoutTypeForSection_];
  v326 = v331;
  if ((v487 & 1) == 0)
  {
LABEL_112:
    v338 = v386;
    v339 = v384;
    if (v488 == v331)
    {
      while (1)
      {
        v340 = v388;
        sub_18A4A7878();
        v341 = v389;
        v342 = sub_18A4A7248();
        v325(v340, v341);
        if (v342)
        {
          break;
        }

        v343 = sub_18A4A78C8();
        v345 = *v344;
        v343(&v491, 0);
        sub_18A4A7888();
        v346 = [v456 _layoutTypeForSection_];
        if (v488 != v346)
        {
          goto LABEL_115;
        }
      }

      v327 = 0;
      v326 = v488;
      goto LABEL_118;
    }

LABEL_115:
    sub_188A3F5FC(v339, &qword_1EA93C108);
    (v481)(v383, v338);
    v314 = v474;
    v312 = v480;
    v313 = v486;
    v128 = v483;
    v307 = v482;
LABEL_116:
    [(UICollectionViewData *)v458 numberOfItems];
    v347 = v380;
LABEL_121:
    (*(v376 + 104))(v347, *MEMORY[0x1E69DBA90], v377);
    goto LABEL_125;
  }

  v332 = v388;
  sub_18A4A7878();
  v333 = sub_1890C8578(&qword_1EA92F738, MEMORY[0x1E6969B18]);
  v334 = v389;
  v485 = v333;
  v335 = sub_18A4A7248();
  v325 = *v324;
  (*v324)(v332, v334);
  if ((v335 & 1) == 0)
  {
    v336 = sub_18A4A78C8();
    v488 = *v337;
    v336(&v491, 0);
    sub_18A4A7888();
    v331 = [v456 _layoutTypeForSection_];
    v488 = v326;
    goto LABEL_112;
  }

  v327 = 0;
LABEL_118:
  v314 = v474;
  v128 = v483;
LABEL_119:
  sub_188A3F5FC(v384, &qword_1EA93C108);
  (v481)(v383, v386);
  [(UICollectionViewData *)v458 numberOfItems];
  v312 = v480;
  v347 = v380;
  v307 = v482;
  if (v327)
  {
    v313 = v486;
    goto LABEL_121;
  }

  v348 = MEMORY[0x1E69DBC10];
  if (v326 != 2)
  {
    v348 = MEMORY[0x1E69DBC18];
  }

  v349 = v366;
  (*(v374 + 104))(v366, *v348, v438);
  v350 = v376;
  v351 = v314;
  v352 = v377;
  (*(v376 + 104))(v349, *MEMORY[0x1E69DBA98], v377);
  v353 = v352;
  v314 = v351;
  (*(v350 + 32))(v347, v349, v353);
  v313 = v486;
LABEL_125:
  v354 = v385;
  v355 = sub_18A4A3668();
  MEMORY[0x1EEE9AC00](v355);
  *(&v366 - 8) = v313;
  *(&v366 - 7) = a4;
  *(&v366 - 6) = a5;
  *(&v366 - 5) = a6;
  *(&v366 - 4) = a7;
  *(&v366 - 3) = v475;
  *(&v366 - 2) = v314;
  *(&v366 - 1) = v312;
  sub_18A4A33D8();
  [v313 contentSize];
  (v314)(v313, 0.0, 0.0, v356, v357);
  v358 = v378;
  v359 = v466;
  v360 = v379;
  (*(v378 + 16))(v466, v354, v379);
  (*v307)(v359, *MEMORY[0x1E69DBB90], v467);
  v361 = v375;
  sub_18A4A3748();
  sub_18A4A3988();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
  v362 = v479;
  v363 = (*(v479 + 80) + 32) & ~*(v479 + 80);
  v364 = swift_allocObject();
  *(v364 + 16) = v422;
  (*(v362 + 16))(v364 + v363, v361, v128);
  sub_18A4A3438();

  (*(v362 + 8))(v361, v128);
  (*(v358 + 8))(v385, v360);
  sub_188A3F5FC(v457, &unk_1EA93C140);
  return sub_188A55B8C(v472);
}

uint64_t sub_1890B8D28(uint64_t a1)
{
  v12 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = &v13;
  v3[4] = &v12;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1890C856C;
  *(v4 + 24) = v3;
  v11[4] = sub_188A4B574;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188A4A968;
  v11[3] = &block_descriptor_42_1;
  v5 = _Block_copy(v11);
  v6 = v1;

  [v6 performUsingPresentationValues_];
  _Block_release(v5);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v9 = v12;
    v8 = v13;

    v10 = sub_18911E524(v6, v8, v9, a1);

    return v10;
  }

  return result;
}

double UICollectionView._appIntentsDataSourcePayloadProvider.getter@<D0>(uint64_t a1@<X8>)
{
  if ([v1 _internalAppIntentsDataSourcePayloadProvider])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_188A3F5FC(v6, &qword_1EA934050);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C170);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1890B8FC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_188DFA228;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188DFA16C;
  aBlock[3] = &block_descriptor_33_2;
  v17 = _Block_copy(aBlock);

  v19.receiver = a1;
  v19.super_class = UICollectionView;
  objc_msgSendSuper2(&v19, sel__intelligenceCollectSubelementsIn_using_transformToRoot_, a2, v17, a5, a6, a7, a8);
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890B91E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v27[4] = a11;
  v27[5] = v23;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_188DFA16C;
  v27[3] = a12;
  v24 = _Block_copy(v27);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890B9348(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v21[4] = sub_188DFA228;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188DFA16C;
  v21[3] = &block_descriptor_26_8;
  v19 = _Block_copy(v21);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890B94AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v21[4] = sub_188DFA1F8;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188DFA16C;
  v21[3] = &block_descriptor_104;
  v19 = _Block_copy(v21);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1890B9610(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = [a1 indexPathsForSelectedItems];
  if (v6)
  {
    v7 = v6;
    sub_18A4A2B48();
    v8 = sub_18A4A7548();

    *a2 = v8;
  }

  v9 = [a1 indexPathsForVisibleItems];
  sub_18A4A2B48();
  v10 = sub_18A4A7548();

  *a3 = v10;
}

void (*UICollectionView._appIntentsDataSourcePayloadProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UICollectionView._appIntentsDataSourcePayloadProvider.getter(v3);
  return sub_1890B9754;
}

void sub_1890B9754(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188A3F29C(*a1, v2 + 40, &unk_1EA93C160);
    sub_188A3F29C(v2 + 40, v2 + 80, &unk_1EA93C160);
    v3 = *(v2 + 104);
    if (v3)
    {
      v4 = __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v5 = *(v3 - 8);
      v6 = MEMORY[0x1EEE9AC00](v4);
      v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v8, v6);
      v9 = sub_18A4A86A8();
      (*(v5 + 8))(v8, v3);
      __swift_destroy_boxed_opaque_existential_0Tm(v2 + 80);
    }

    else
    {
      v9 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
    sub_188A3F5FC(v2 + 40, &unk_1EA93C160);
  }

  else
  {
    sub_188A3F29C(*a1, v2 + 120, &unk_1EA93C160);
    v10 = *(v2 + 144);
    if (v10)
    {
      v11 = __swift_project_boxed_opaque_existential_0((v2 + 120), *(v2 + 144));
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = sub_18A4A86A8();
      (*(v12 + 8))(v15, v10);
      __swift_destroy_boxed_opaque_existential_0Tm(v2 + 120);
    }

    else
    {
      v16 = 0;
    }

    [*(v2 + 160) _setInternalAppIntentsDataSourcePayloadProvider_];
    swift_unknownObjectRelease();
  }

  sub_188A3F5FC(v2, &unk_1EA93C160);
  free(v2);
}

uint64_t sub_1890B9A14(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18917F09C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_18A4A85F8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C320);
      v7 = sub_18A4A75D8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1890C3E0C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1890B9B68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = a4 + 64;
  v6 = -1 << *(a4 + 32);
  v7 = ~v6;
  v8 = -v6;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a4 + 64);
  v35 = a4;
  v36 = a4 + 64;
  v37 = v7;
  v38 = v10;
  v11 = v7;
  if (!a2)
  {
LABEL_13:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = a3;
  if (!a3)
  {
LABEL_17:
    *v4 = a4;
    *(v4 + 8) = v5;
    *(v4 + 16) = v11;
    *(v4 + 32) = v10;
    return v12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v13 = a2;
    v14 = 1;
    while (1)
    {
      sub_188A813A8(&v21);
      if (!v21)
      {
        sub_188A3F5FC(&v21, &qword_1EA936EE0);
        a4 = v35;
        v5 = v36;
        v11 = v37;
        v12 = v14 - 1;
        goto LABEL_16;
      }

      v11 = v25;
      v15 = v26;
      v32 = v25;
      v33 = v26;
      v5 = v27;
      v34 = v27;
      v16 = v21;
      v17 = v22;
      v28 = v21;
      v29 = v22;
      v18 = v24;
      v19 = v23;
      v30 = v23;
      v31 = v24;
      *(v13 + 64) = v25;
      *(v13 + 80) = v15;
      *(v13 + 96) = v5;
      *v13 = v16;
      *(v13 + 16) = v17;
      *(v13 + 32) = v19;
      *(v13 + 48) = v18;
      if (v12 == v14)
      {
        break;
      }

      v13 += 104;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    a4 = v35;
    v5 = v36;
    v11 = v37;
LABEL_16:
    v10 = v38;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void *sub_1890B9CC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1890B9DC0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1890B9EC0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_18A4A2B48();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1890BA164(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

size_t sub_1890BA2D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9341F0);
  v4 = *(sub_18A4A2B48() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1890BA3E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

void *sub_1890BA45C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1890BA4EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934978);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1890BA664(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935770);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C230);
  v36 = a2;
  result = sub_18A4A8468();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_188A3F704(v24, v37, &unk_1EA935770);
      }

      else
      {
        sub_188A3F29C(v24, v37, &unk_1EA935770);
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v22);
      result = sub_18A4A88E8();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_188A3F704(v37, *(v9 + 56) + v23 * v17, &unk_1EA935770);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1890BAA00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BD0);
  v30 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v30 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v20);
      result = sub_18A4A88E8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BACA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BE0);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_188C46270(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      sub_18A4A8888();
      sub_18A4A8038();
      result = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BAF68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E08);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = *(v5 + 56) + 40 * v22;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
      }

      else
      {
        sub_188C46270(v24, &v37);
        v27 = v23;
      }

      result = sub_18A4A7C78();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v23;
      v16 = *(v7 + 56) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890BB1FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C260);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_188C46270(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      sub_18A4A8888();
      sub_18A4A8038();
      result = sub_18A4A88E8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BB4C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D90);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + (v20 << 8));
      v44 = v22[12];
      v45 = v22[13];
      *v46 = v22[14];
      *&v46[9] = *(v22 + 233);
      v40 = v22[8];
      v41 = v22[9];
      v42 = v22[10];
      v43 = v22[11];
      v36 = v22[4];
      v37 = v22[5];
      v38 = v22[6];
      v39 = v22[7];
      v32 = *v22;
      v33 = v22[1];
      v34 = v22[2];
      v35 = v22[3];
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      result = sub_18A4A88E8();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + (v15 << 8));
      v16[12] = v44;
      v16[13] = v45;
      v16[14] = *v46;
      *(v16 + 233) = *&v46[9];
      v16[8] = v40;
      v16[9] = v41;
      v16[10] = v42;
      v16[11] = v43;
      v16[4] = v36;
      v16[5] = v37;
      v16[6] = v38;
      v16[7] = v39;
      *v16 = v32;
      v16[1] = v33;
      v16[2] = v34;
      v16[3] = v35;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BB7D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D88);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 216 * v20;
      v42 = *(v22 + 160);
      v43 = *(v22 + 176);
      v44 = *(v22 + 192);
      v45 = *(v22 + 208);
      v38 = *(v22 + 96);
      v39 = *(v22 + 112);
      v40 = *(v22 + 128);
      v41 = *(v22 + 144);
      v34 = *(v22 + 32);
      v35 = *(v22 + 48);
      v36 = *(v22 + 64);
      v37 = *(v22 + 80);
      v32 = *v22;
      v33 = *(v22 + 16);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      result = sub_18A4A88E8();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 216 * v15;
      *(v16 + 160) = v42;
      *(v16 + 176) = v43;
      *(v16 + 192) = v44;
      *(v16 + 208) = v45;
      *(v16 + 96) = v38;
      *(v16 + 112) = v39;
      *(v16 + 128) = v40;
      *(v16 + 144) = v41;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(v16 + 64) = v36;
      *(v16 + 80) = v37;
      *v16 = v32;
      *(v16 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BBAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938D80);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 160 * v20);
      v38 = v22[6];
      v39 = v22[7];
      v40 = v22[8];
      v41 = v22[9];
      v34 = v22[2];
      v35 = v22[3];
      v36 = v22[4];
      v37 = v22[5];
      v32 = *v22;
      v33 = v22[1];
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      result = sub_18A4A88E8();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 160 * v15);
      v16[6] = v38;
      v16[7] = v39;
      v16[8] = v40;
      v16[9] = v41;
      v16[2] = v34;
      v16[3] = v35;
      v16[4] = v36;
      v16[5] = v37;
      *v16 = v32;
      v16[1] = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BBDBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E38);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v29 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v29);
      result = sub_18A4A88E8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v29;
      *(*(v7 + 56) + 8 * v15) = v20;
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

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BC04C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B30);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v21 = *(v5 + 56) + 16 * v19;
      if (a2)
      {
        sub_188E8FC60(v21, v31);
      }

      else
      {
        sub_188F8EA58(v21, v31);
      }

      result = sub_18A4A8878();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_188E8FC60(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890BC2C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C190);
  v34 = a2;
  result = sub_18A4A8468();
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
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v22);
      MEMORY[0x18CFE37E0](v23);
      result = sub_18A4A88E8();
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
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
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

uint64_t sub_1890BC574(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938BB0);
  v50 = a2;
  v6 = sub_18A4A8468();
  v7 = v6;
  v54 = v5;
  if (*(v5 + 16))
  {
    v47 = v2;
    v8 = 0;
    v49 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v48 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    while (v11)
    {
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v23 = v19 | (v8 << 6);
      v24 = (*(v54 + 48) + 48 * v23);
      if (v50)
      {
        v25 = *v24;
        v26 = v24[1];
        *(v61 + 9) = *(v24 + 25);
        v60 = v25;
        v61[0] = v26;
        v27 = *(v54 + 56) + 48 * v23;
        v29 = *v27;
        v28 = *(v27 + 8);
        v30 = *(v27 + 16);
        v52 = *(v27 + 32);
        v53 = *(v27 + 24);
        v51 = *(v27 + 40);
      }

      else
      {
        sub_188C46604(v24, &v60);
        v31 = *(v54 + 56) + 48 * v23;
        v29 = *v31;
        v28 = *(v31 + 8);
        v30 = *(v31 + 16);
        v32 = *(v31 + 24);
        v33 = *(v31 + 32);
        v34 = *(v31 + 40);
        sub_188EC22E0(*v31, v28, v30);
        v51 = v34;
        v35 = v34;
        v53 = v32;
        v36 = v32;
        v52 = v33;
        v37 = v33;
      }

      sub_18A4A8888();
      sub_188C46604(&v60, v57);
      if (v59)
      {
        v55[0] = v57[0];
        v55[1] = v57[1];
        v56 = v58;
        MEMORY[0x18CFE37E0](1);
        sub_18A4A8038();
        sub_188BBA15C(v55);
      }

      else
      {
        v38 = *&v57[0];
        MEMORY[0x18CFE37E0](0);
        MEMORY[0x18CFE37E0](v38);
      }

      result = sub_18A4A88E8();
      v39 = -1 << *(v7 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v12 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v12 + 8 * v41);
          if (v45 != -1)
          {
            v13 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v40) & ~*(v12 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = 48 * v13;
      v15 = (*(v7 + 48) + v14);
      v16 = v60;
      v17 = v61[0];
      *(v15 + 25) = *(v61 + 9);
      *v15 = v16;
      v15[1] = v17;
      v18 = *(v7 + 56) + v14;
      *v18 = v29;
      *(v18 + 8) = v28;
      *(v18 + 16) = v30;
      *(v18 + 24) = v53;
      *(v18 + 32) = v52;
      *(v18 + 40) = v51;
      ++*(v7 + 16);
    }

    v20 = v8;
    result = v49;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v8 >= v48)
      {
        break;
      }

      v22 = v49[v8];
      ++v20;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v11 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_38;
    }

    v46 = 1 << *(v54 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v49, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v46;
    }

    *(v54 + 16) = 0;
  }

LABEL_38:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BC958(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UITextEffectView.EffectID();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E68);
  v36 = a2;
  result = sub_18A4A8468();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        sub_1890C8504(v24, v7, type metadata accessor for UITextEffectView.EffectID);
        sub_188A5EBAC((*(v8 + 56) + 40 * v22), v37);
      }

      else
      {
        sub_1890C849C(v24, v7, type metadata accessor for UITextEffectView.EffectID);
        sub_188A53994(*(v8 + 56) + 40 * v22, v37);
      }

      sub_18A4A8888();
      sub_18A4A29D8();
      sub_1890C8578(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
      sub_18A4A71A8();
      result = sub_18A4A88E8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v8 = v34;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v8 = v34;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1890C8504(v7, *(v10 + 48) + v23 * v18, type metadata accessor for UITextEffectView.EffectID);
      result = sub_188A5EBAC(v37, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v12, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1890BCD54(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_18A4A8468();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_18A4A7C78();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1890BCFE4(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_18A4A8468();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_18A4A7C78();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1890BD260(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C2A0);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      }

      result = sub_18A4A8878();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BD4E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D60);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v20 = 8 * (v17 | (v8 << 6));
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + v20;
      if (a2)
      {
        sub_188E904EC(v22, v32);
      }

      else
      {
        sub_188F48C58(v22, v32);
      }

      result = sub_18A4A8878();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      *(*(v7 + 48) + v16) = v21;
      result = sub_188E904EC(v32, *(v7 + 56) + v16);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890BD778(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938B50);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 32 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[3];
      v36 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_18A4A8888();
      sub_18A4A7348();
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v36;
      v16[3] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1890BDA48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E30);
  v31 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE3810](v20);
      result = sub_18A4A88E8();
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_1890BDCD4(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v9 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_18A4A8468();
  v11 = result;
  if (*(v9 + 16))
  {
    v35 = v7;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = 8 * (v21 | (v12 << 6));
      v25 = *(v9 + 56);
      v26 = *(*(v9 + 48) + v24);
      if (v36)
      {
        sub_188A3F704(v25 + v24, v37, a5);
      }

      else
      {
        sub_188A3F29C(v25 + v24, v37, a5);
      }

      result = sub_18A4A8878();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = 8 * v19;
      *(*(v11 + 48) + v20) = v26;
      result = sub_188A3F704(v37, *(v11 + 56) + v20, a5);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v7 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v7 = v35;
    if (v34 >= 64)
    {
      bzero((v9 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

uint64_t sub_1890BDF88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938E20);
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_188A55538(v21, v31);
      }

      else
      {
        sub_188A55598(v21, v31);
      }

      result = sub_18A4A8878();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_188A55538(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1890BE228(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E80);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_18A4A7288();
      sub_18A4A8888();
      sub_18A4A7348();
      v24 = sub_18A4A88E8();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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