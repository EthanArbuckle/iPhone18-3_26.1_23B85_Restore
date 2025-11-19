uint64_t sub_1A417A1A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A417A254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;

    v7 = (*(*v2 + 216))(v6);
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    return (*(*v2 + 376))(v10 != 0);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    v14 = v2;
    v15 = a1;
    v16 = a2;
    (*(*v2 + 584))(v13);
  }
}

void (*sub_1A417A40C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417A000(v4);
  return sub_1A417A55C;
}

uint64_t sub_1A417A688(uint64_t a1, uint64_t a2)
{
  sub_1A3C487B8(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1A417F42C(a1, &v8 - v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  return (*(**a2 + 280))(v6);
}

uint64_t sub_1A417A78C(uint64_t a1)
{
  sub_1A3C487B8(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion;
  swift_beginAccess();
  sub_1A417F42C(v1 + v6, v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  v7 = sub_1A417E740(v5, a1);
  sub_1A417F3BC(v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 584))(v9);
  }

  else
  {
    sub_1A417F42C(a1, v5, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    swift_beginAccess();
    sub_1A417EE10(v5, v1 + v6, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    swift_endAccess();
  }

  return sub_1A417F3BC(a1, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
}

void (*sub_1A417A9B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417A5AC();
  return sub_1A417AB08;
}

uint64_t sub_1A417ABA4@<X0>(uint64_t *a1@<X1>, unint64_t *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  (*(*v4 + 576))();

  v9 = *a1;
  swift_beginAccess();
  return sub_1A417F42C(v4 + v9, a4, a2, a3);
}

uint64_t sub_1A417AC9C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1A417F42C(a1, &v9 - v6, &qword_1EB12AFE0, v4);
  return (*(**a2 + 328))(v7);
}

uint64_t sub_1A417ADA0(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate;
  swift_beginAccess();
  sub_1A417F42C(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A417EA90(v6, a1);
  sub_1A417F3BC(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v1;
    *&v13[-8] = a1;
    (*(*v1 + 584))(v10);
  }

  else
  {
    v11 = MEMORY[0x1E6969530];
    sub_1A417F42C(a1, v6, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    swift_beginAccess();
    sub_1A417EE10(v6, v1 + v7, &qword_1EB12AFE0, v11);
    swift_endAccess();
  }

  return sub_1A417F3BC(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A417AFCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1A417F42C(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_1A417EE10(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

void (*sub_1A417B0B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417AB14();
  return sub_1A417B208;
}

uint64_t sub_1A417B288@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A417B358(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417B214();
  return sub_1A417B4A8;
}

uint64_t sub_1A417B514()
{
  swift_getKeyPath();
  (*(*v0 + 576))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A417B5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A417B65C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex;
  result = swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  v9 = v2;
  v10 = a1;
  v11 = a2 & 1;
  (*(*v2 + 584))(v8);
}

void (*sub_1A417B790(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417B4B4();
  return sub_1A417B8E0;
}

uint64_t sub_1A417B960@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A417BA30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417B8EC();
  return sub_1A417BB80;
}

uint64_t sub_1A417BC00(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 576))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1A417BC88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A417BD58(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 584))(v7);
  }

  return result;
}

void (*sub_1A417BE54(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 576))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A417F264(&qword_1EB125328, type metadata accessor for GenerativeStorySuggestionViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A417BB8C();
  return sub_1A417BFA4;
}

uint64_t sub_1A417BFB0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A3C4A780();
  v3 = sub_1A5246F24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_1A417C020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A417C078(a1, a2, a3);
  return v6;
}

char *sub_1A417C078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 3) = 0;
  *(v4 + 4) = 0xE000000000000000;
  v12 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion;
  v13 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate;
  v15 = sub_1A5241144();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__hideSuggestions] = 0;
  v16 = &v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex];
  *v16 = 0;
  v16[8] = 1;
  v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__forceSuggestionsVisibility] = 0;
  v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__playedIntroAnimation] = 0;
  sub_1A5241604();
  *(v4 + 2) = a2;
  v17 = *(v9 + 16);
  v17(&v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_logger], a3, v8);
  type metadata accessor for GenerativeStoryBackgroundAssetsManager();
  *(v4 + 5) = sub_1A4A071A0(a1);
  type metadata accessor for GenerativeStoryPromptSuggestionManager();
  *&v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_promptSuggestionManager] = sub_1A45BD2B8(a1);
  type metadata accessor for GenerativeStoryInternalSuggestionViewModel();
  v17(v11, a3, v8);
  v18 = sub_1A3FABD08(a1, v11);
  (*(v9 + 8))(a3, v8);
  *&v4[OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_internalSuggestionViewModel] = v18;
  return v4;
}

uint64_t sub_1A417C2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_1A52449C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeStorySuggestion(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E85F0];
  sub_1A3C487B8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v16 = *(v3 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_promptSuggestionManager);
  sub_1A524CC74();
  v17 = sub_1A524CCB4();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  sub_1A417EFA4(v22, v11);
  (*(v5 + 16))(v7, v23, v4);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v16;
  sub_1A417F008(v11, &v20[v18]);
  (*(v5 + 32))(&v20[v19], v7, v4);

  sub_1A3DCD53C(0, 0, v15, &unk_1A531FC20, v20);

  return sub_1A417F3BC(v15, &qword_1EB12B270, v12);
}

uint64_t sub_1A417C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  v10 = sub_1A52449C4();
  v6[4] = v10;
  v6[5] = *(v10 - 8);
  v6[6] = swift_task_alloc();
  v13 = (*(*a4 + 408) + **(*a4 + 408));
  v11 = swift_task_alloc();
  v6[7] = v11;
  *v11 = v6;
  v11[1] = sub_1A417C760;

  return v13(a5, a6);
}

uint64_t sub_1A417C760()
{

  return MEMORY[0x1EEE6DFA0](sub_1A417C85C, 0, 0);
}

uint64_t sub_1A417C85C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v2 + 104))(v1, *MEMORY[0x1E69C1070], v3);
  v4 = sub_1A52449B4();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = *(v0 + 16);
    *(v0 + 72) = 2;
    v9 = (*(*v5 + 400) + **(*v5 + 400));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1A417CA38;

    return v9(v0 + 72);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1A417CA38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A417CB48(char a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C487B8(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v4);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1A5246F04();
  v12 = sub_1A524D264();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_1A3C1C000, v11, v12, "Updating prompt suggestions [preferNewSuggestions: %{BOOL}d]", v13, 8u);
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  sub_1A5241104();
  v14 = sub_1A5241144();
  (*(*(v14 - 8) + 56))(v10, 0, 1, v14);
  (*(*v2 + 328))(v10);
  v15 = *(v2 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_promptSuggestionManager);
  sub_1A524CC74();
  v16 = sub_1A524CCB4();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v15;
  *(v17 + 40) = a1 & 1;

  sub_1A3DCD53C(0, 0, v7, &unk_1A531FC30, v17);

  return sub_1A417F3BC(v7, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
}

uint64_t sub_1A417CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 24) = a5;
  v8 = (*(*a4 + 400) + **(*a4 + 400));
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1A3D60150;

  return v8(v5 + 24);
}

uint64_t sub_1A417CF70()
{
  (*(*v0 + 552))(0);
  v1 = (*(*v0 + 376))(0);
  v2 = *((*(*v0 + 184))(v1) + 16);

  v3 = *(*v0 + 520);

  return v3(v2 != 0);
}

uint64_t sub_1A417D064()
{
  v1[8] = v0;
  v2 = sub_1A524E5E4();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1A524CC54();
  v1[12] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A417D158, v4, v3);
}

uint64_t sub_1A417D158()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v0[15] = v1;
  sub_1A3C487B8(0, &unk_1EB120248, type metadata accessor for PXGenerativeStoryBackgroundMode, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  *(inited + 32) = [v1 entryPointBackgroundMode];
  v3 = [v1 fullScreenBackgroundMode];
  *(inited + 40) = v3;
  v4 = *(inited + 32);
  if (v4 != 1 && v3 != 1 && v4 != 0 && v3 != 0)
  {
    swift_setDeallocating();

LABEL_19:

    v14 = v0[1];

    return v14();
  }

  if (![v1 simulateSlowFetchForBackgroundAssets])
  {

    v1 = v0[15];
    (*(**(v0[8] + 40) + 304))(v13);
    goto LABEL_19;
  }

  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "Simulating slow fetch for background assets", v10, 2u);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  sub_1A524EBB4();
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_1A417D428;

  return sub_1A3DCFAB0(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_1A417D428()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[11];
  v5 = v2[10];
  v6 = v2[9];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[13];
    v8 = v3[14];
    v9 = sub_1A417F5E0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[13];
    v8 = v3[14];
    v9 = sub_1A417D5BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1A417D5BC()
{

  v2 = v0[15];
  (*(**(v0[8] + 40) + 304))(v1);

  v3 = v0[1];

  return v3();
}

uint64_t GenerativeStorySuggestionViewModel.deinit()
{

  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v1 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStorySuggestionViewModel.__deallocating_deinit()
{

  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedSuggestion, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  sub_1A417F3BC(v0 + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__lastSuggestionsFetchedDate, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v1 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A417DA38()
{
  v1 = [*(v0 + 16) string];
  v2 = sub_1A524C674();

  return v2;
}

uint64_t sub_1A417DAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v15 = type metadata accessor for GenerativeStorySuggestion(0);
  v16 = v15[6];
  v17 = sub_1A5244A24();
  (*(*(v17 - 8) + 32))(&a9[v16], a4, v17);
  sub_1A417F2AC(a5, &a9[v15[7]], &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  v18 = v15[8];
  v19 = sub_1A5244984();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a6, v19);
  *&a9[v15[9]] = a7;
  *&a9[v15[10]] = a8;
  return result;
}

uint64_t sub_1A417DC08()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v4 = sub_1A5241164();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1A417DCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char *a7@<X8>, uint64_t a8)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v14 = sub_1A524C634();

  v15 = [v13 initWithString_];

  *(a7 + 2) = v15;
  v16 = type metadata accessor for GenerativeStorySuggestion(0);
  v17 = v16[6];
  v18 = sub_1A5244A24();
  (*(*(v18 - 8) + 32))(&a7[v17], a3, v18);
  sub_1A417F2AC(a4, &a7[v16[7]], &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  v19 = v16[8];
  v20 = sub_1A5244984();
  result = (*(*(v20 - 8) + 32))(&a7[v19], a5, v20);
  *&a7[v16[9]] = a6;
  *&a7[v16[10]] = a8;
  return result;
}

void sub_1A417DE58()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  swift_beginAccess();
  *(v2 + 24) = v4;
  *(v2 + 32) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A417DF48()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A524DC04();
  sub_1A5244A24();
  sub_1A417F264(&qword_1EB133A28, MEMORY[0x1E69C10B0]);
  sub_1A524C4B4();
  sub_1A5244984();
  sub_1A417F264(&qword_1EB133A30, MEMORY[0x1E69C1060]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A417E058()
{
  sub_1A524C794();
  sub_1A524DC04();
  sub_1A5244A24();
  sub_1A417F264(&qword_1EB133A28, MEMORY[0x1E69C10B0]);
  sub_1A524C4B4();
  sub_1A5244984();
  sub_1A417F264(&qword_1EB133A30, MEMORY[0x1E69C1060]);
  return sub_1A524C4B4();
}

uint64_t sub_1A417E154()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A524DC04();
  sub_1A5244A24();
  sub_1A417F264(&qword_1EB133A28, MEMORY[0x1E69C10B0]);
  sub_1A524C4B4();
  sub_1A5244984();
  sub_1A417F264(&qword_1EB133A30, MEMORY[0x1E69C1060]);
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A417E264(void *a1, void *a2)
{
  v4 = sub_1A5244A54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C10C8];
  sub_1A3C487B8(0, &qword_1EB124C68, MEMORY[0x1E69C10C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  sub_1A417F508(0, &qword_1EB124C60, &qword_1EB124C68, v8);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  sub_1A3C52C70(0, &qword_1EB12B160);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for GenerativeStorySuggestion(0);
  if ((sub_1A52449B4() & 1) == 0)
  {
    return 0;
  }

  v36 = v16;
  v37 = v5;
  v17 = *(v16 + 28);
  v18 = *(v13 + 48);
  v19 = MEMORY[0x1E69C10C8];
  sub_1A417F42C(a1 + v17, v15, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
  v20 = a2 + v17;
  v21 = v37;
  sub_1A417F42C(v20, &v15[v18], &qword_1EB124C68, v19);
  v22 = *(v21 + 48);
  if (v22(v15, 1, v4) != 1)
  {
    sub_1A417F42C(v15, v11, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
    if (v22(&v15[v18], 1, v4) != 1)
    {
      (*(v21 + 32))(v7, &v15[v18], v4);
      sub_1A417F264(&qword_1EB124C70, MEMORY[0x1E69C10C8]);
      v23 = sub_1A524C594();
      v24 = *(v21 + 8);
      v24(v7, v4);
      v24(v11, v4);
      sub_1A417F3BC(v15, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v21 + 8))(v11, v4);
LABEL_11:
    sub_1A417F4AC(v15, &qword_1EB124C60, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
    return 0;
  }

  if (v22(&v15[v18], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1A417F3BC(v15, &qword_1EB124C68, MEMORY[0x1E69C10C8]);
LABEL_13:
  v25 = v36;
  if (sub_1A5244974())
  {
    v26 = *(v25 + 36);
    v27 = *(a2 + v26);
    if (*(a1 + v26))
    {
      if (!v27)
      {
        return 0;
      }

      v28 = sub_1A524B5A4();

      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v27)
    {
      return 0;
    }

    v29 = *(v25 + 40);
    v30 = *(a1 + v29);
    v31 = *(a2 + v29);
    if (v30)
    {
      if (v31)
      {
        sub_1A3C52C70(0, &qword_1EB1209D8);
        v32 = v31;
        v33 = v30;
        v34 = sub_1A524DBF4();

        if (v34)
        {
          return 1;
        }
      }
    }

    else if (!v31)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1A417E740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C487B8(0, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  sub_1A417F508(0, &qword_1EB133A38, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1A417F42C(a1, &v20 - v12, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  sub_1A417F42C(a2, &v13[v15], &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A417F42C(v13, v10, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1A417F008(&v13[v15], v7);
      v18 = sub_1A417E264(v10, v7);
      sub_1A417F580(v7);
      sub_1A417F580(v10);
      sub_1A417F3BC(v13, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1A417F580(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A417F4AC(v13, &qword_1EB133A38, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A417F3BC(v13, &qword_1EB125798, type metadata accessor for GenerativeStorySuggestion);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A417EA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A3C487B8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1A417F508(0, &qword_1EB12AFD0, &qword_1EB12AFE0, v8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  sub_1A417F42C(a1, &v22 - v13, &qword_1EB12AFE0, v8);
  sub_1A417F42C(a2, &v14[v16], &qword_1EB12AFE0, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A417F42C(v14, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A417F264(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
      sub_1A417F3BC(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A417F4AC(v14, &qword_1EB12AFD0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A417F3BC(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A417EE10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A417EF00()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore34GenerativeStorySuggestionViewModel__selectedIndex;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1A417EFA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A417F008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A417F06C()
{
  v2 = *(type metadata accessor for GenerativeStorySuggestion(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A52449C4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3CA8098;

  return sub_1A417C5BC(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t sub_1A417F1A0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A417CE40(v4, v5, v6, v2, v3);
}

uint64_t sub_1A417F264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A417F2AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A417F3BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C487B8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A417F42C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C487B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A417F4AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A417F508(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A417F508(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3C487B8(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A417F580(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStorySuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A417F720()
{
  v1 = [v0 viewModel];
  v7[4] = sub_1A417F8B4;
  v7[5] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3D7692C;
  v7[3] = &block_descriptor_114;
  v2 = _Block_copy(v7);
  [v1 performChanges_];
  _Block_release(v2);

  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4();
  v5 = sub_1A524C3D4();

  [v3 sendEvent:v4 withPayload:v5];

  v6 = [objc_opt_self() sharedSession];
  [v6 reportSearchButtonTappedWhenScoped_];
}

id PhotosGridSearchActionPerformer.__allocating_init(viewModel:actionType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A524C634();

  v5 = [v3 initWithViewModel:a1 actionType:v4];

  return v5;
}

id PhotosGridSearchActionPerformer.init(viewModel:actionType:)(void *a1)
{
  v3 = sub_1A524C634();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for PhotosGridSearchActionPerformer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithViewModel_actionType_, a1, v3);

  return v4;
}

id PhotosGridSearchActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridSearchActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A417FB34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentSyndicationReviewUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A417FB68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v62 = sub_1A5247BF4();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - v5;
  sub_1A4180B7C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v53 = sub_1A5248964();
  v11 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = sub_1A5248984();
  v18 = *(v17 - 8);
  v54 = v17;
  v55 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41808DC();
  v52 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4180808();
  v57 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v56 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v52 - v29;
  v64 = a1;
  sub_1A418095C();
  sub_1A4180B04();
  sub_1A524BA84();
  sub_1A5248954();
  v31 = v53;
  (*(v11 + 16))(v13, v16, v53);
  sub_1A5248974();
  (*(v11 + 8))(v16, v31);
  sub_1A4180F60(&qword_1EB133AA8, sub_1A41808DC);
  v32 = v52;
  v33 = v54;
  sub_1A524A884();
  (*(v55 + 8))(v20, v33);
  (*(v22 + 8))(v24, v32);
  *v10 = sub_1A5249574();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A4180E1C();
  v35 = &v10[*(v34 + 44)];
  v36 = v58;
  sub_1A5247BE4();
  v65 = 1;
  v38 = v59;
  v37 = v60;
  v39 = *(v60 + 16);
  v40 = v62;
  v39(v59, v36, v62);
  v41 = v65;
  *v35 = 0;
  v35[8] = v41;
  sub_1A4180C70();
  v39(&v35[*(v42 + 48)], v38, v40);
  v43 = *(v37 + 8);
  v43(v36, v40);
  v43(v38, v40);
  v44 = *(v26 + 16);
  v46 = v56;
  v45 = v57;
  v44(v56, v30, v57);
  v47 = v61;
  sub_1A4180EA0(v10, v61);
  v48 = v63;
  v44(v63, v46, v45);
  sub_1A4180798();
  sub_1A4180EA0(v47, &v48[*(v49 + 48)]);
  sub_1A4180F04(v10);
  v50 = *(v26 + 8);
  v50(v30, v45);
  sub_1A4180F04(v47);
  return (v50)(v46, v45);
}

uint64_t sub_1A4180184@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1A524BC74();
  a1[1] = v4;
  sub_1A4180714();
  return sub_1A417FB68(v3, a1 + *(v5 + 44));
}

uint64_t sub_1A41801C8()
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = 0;
  v0 = [objc_opt_self() openPhotoLibraryWithWellKnownIdentifier:3 error:v27];
  if (v0)
  {
    v1 = v0;
    v2 = v27[0];
    v26 = PXContentSyndicationReviewFetchResultForPhotoLibrary(v1);
    v3 = [objc_allocWithZone(PXPhotosDataSourceConfiguration) initWithAssetFetchResult:v26 options:2];
    v4 = [objc_allocWithZone(PXPhotosDataSource) initWithPhotosDataSourceConfiguration_];
    v5 = [objc_allocWithZone(PXPhotoKitAssetsDataSourceManager) initWithPhotosDataSource_];
    v6 = [objc_allocWithZone(PXContentSyndicationReviewUIActionManager) initWithSelectionManager_];
    v7 = [v5 photoLibrary];
    v8 = [objc_opt_self() mediaProviderWithLibrary_];

    v9 = [objc_allocWithZone(off_1E7721830) initWithDataSourceManager:v5 mediaProvider:v8 selectionManager:0 assetActionManager:v6 assetCollectionActionManager:0];
    [v9 setFooterVisibilityStyle_];
    [v9 setAllowedActions_];
    [v9 setContentStartingPosition_];
    sub_1A3C52C70(0, &qword_1EB133A40);
    [v9 setDecorationViewClass_];
    [v9 setSectionBodyStyle_];
    sub_1A3C52C70(0, &unk_1EB133C50);
    v10 = [swift_getObjCClassFromMetadata() sharedInstance];
    v11 = [v10 photosGridViewContents];

    if (v11)
    {
      sub_1A3C52C70(0, &qword_1EB126850);
      v12 = v9;
      v13 = sub_1A524CAC4();
      v14 = (v13 & 0xFFFFFFFFFFFFFF8);
      v14[2] = 3;
      v14[4] = v12;
      v14[5] = v12;
      v14[6] = v12;
      v27[0] = v13;
      sub_1A4180588();
      objc_allocWithZone(v15);
      v16 = v12;
      v17 = sub_1A5249624();
    }

    else
    {
      v20 = v9;
      PXDisplayCollectionDetailedCountsMake(v20);
      v22 = v21;
      v27[0] = v21;
      sub_1A4180638();
      objc_allocWithZone(v23);
      v24 = v22;
      v17 = sub_1A5249624();
    }
  }

  else
  {
    v18 = v27[0];
    v19 = sub_1A5240B84();

    swift_willThrow();
    return 0;
  }

  return v17;
}

void sub_1A4180588()
{
  if (!qword_1EB133A48)
  {
    sub_1A41805E4();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133A48);
    }
  }
}

unint64_t sub_1A41805E4()
{
  result = qword_1EB1ABB10[0];
  if (!qword_1EB1ABB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1ABB10);
  }

  return result;
}

void sub_1A4180638()
{
  if (!qword_1EB133A50)
  {
    sub_1A4180694();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133A50);
    }
  }
}

unint64_t sub_1A4180694()
{
  result = qword_1EB139060;
  if (!qword_1EB139060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139060);
  }

  return result;
}

void sub_1A4180714()
{
  if (!qword_1EB133A58)
  {
    sub_1A4180C1C(255, &qword_1EB133A60, sub_1A4180798);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133A58);
    }
  }
}

void sub_1A4180798()
{
  if (!qword_1EB133A68)
  {
    sub_1A4180808();
    sub_1A4180B7C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133A68);
    }
  }
}

void sub_1A4180808()
{
  if (!qword_1EB133A70)
  {
    sub_1A41808DC();
    sub_1A5248984();
    sub_1A4180F60(&qword_1EB133AA8, sub_1A41808DC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB133A70);
    }
  }
}

void sub_1A41808DC()
{
  if (!qword_1EB133A78)
  {
    sub_1A418095C();
    sub_1A4180B04();
    v0 = sub_1A524BA94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133A78);
    }
  }
}

void sub_1A418095C()
{
  if (!qword_1EB133A80)
  {
    sub_1A4180A34();
    sub_1A3C52C70(255, &qword_1EB126850);
    sub_1A4180F60(&qword_1EB133A90, sub_1A4180A34);
    sub_1A4180A9C();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133A80);
    }
  }
}

void sub_1A4180A34()
{
  if (!qword_1EB133A88)
  {
    sub_1A3C52C70(255, &qword_1EB126850);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133A88);
    }
  }
}

unint64_t sub_1A4180A9C()
{
  result = qword_1EB133A98;
  if (!qword_1EB133A98)
  {
    sub_1A3C52C70(255, &qword_1EB126850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133A98);
  }

  return result;
}

unint64_t sub_1A4180B04()
{
  result = qword_1EB133AA0;
  if (!qword_1EB133AA0)
  {
    sub_1A418095C();
    sub_1A4180694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133AA0);
  }

  return result;
}

void sub_1A4180B7C()
{
  if (!qword_1EB133AB0)
  {
    sub_1A4180C1C(255, &qword_1EB133AB8, sub_1A4180C70);
    sub_1A4180CD8(&qword_1EB133AC8, &qword_1EB133AB8, sub_1A4180C70);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133AB0);
    }
  }
}

void sub_1A4180C1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524BE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4180C70()
{
  if (!qword_1EB133AC0)
  {
    sub_1A5247BF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133AC0);
    }
  }
}

uint64_t sub_1A4180CD8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4180C1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4180D28()
{
  swift_getKeyPath();
  sub_1A4180A34();
  sub_1A4180F60(&qword_1EB133A90, sub_1A4180A34);
  sub_1A4180A9C();
  sub_1A4180694();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4180E1C()
{
  if (!qword_1EB133AD0)
  {
    sub_1A4180C1C(255, &qword_1EB133AB8, sub_1A4180C70);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133AD0);
    }
  }
}

uint64_t sub_1A4180EA0(uint64_t a1, uint64_t a2)
{
  sub_1A4180B7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4180F04(uint64_t a1)
{
  sub_1A4180B7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4180F60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4180FA8()
{
  if (!qword_1EB133AE0)
  {
    sub_1A4180C1C(255, &qword_1EB133A60, sub_1A4180798);
    sub_1A4180CD8(&qword_1EB133AE8, &qword_1EB133A60, sub_1A4180798);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133AE0);
    }
  }
}

uint64_t sub_1A4181048@<X0>(uint64_t a1@<X0>, void (*a2)(void (*)(), void)@<X1>, uint64_t a3@<X8>)
{
  sub_1A41810E4(a1, a3);
  type metadata accessor for PhotosViewBannerPreview();
  a2(sub_1A4181204, 0);

  return sub_1A3E79250(a1);
}

uint64_t sub_1A41810E4(uint64_t a1, uint64_t a2)
{
  sub_1A4181148();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4181148()
{
  if (!qword_1EB128D10)
  {
    sub_1A41811A0();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128D10);
    }
  }
}

unint64_t sub_1A41811A0()
{
  result = qword_1EB128D20;
  if (!qword_1EB128D20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB128D20);
  }

  return result;
}

void sub_1A4181204()
{
  if (qword_1EB1ABBB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB15B628);
  oslog = sub_1A5246F04();
  v1 = sub_1A524D264();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    swift_slowAlloc();
    *v2 = 136315138;
    sub_1A4182130();
    sub_1A524EA44();
    sub_1A3C2EF94();
  }
}

uint64_t sub_1A41813A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A41810E4(v2, v12);
  v5 = *(a1 + 36);
  v11 = *(a1 + 16);
  v9 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v2 + v5);
  result = PhotosDynamicHeaderPreview.init(titleModel:banner:)(v12, v10, v13);
  v8 = v13[1];
  *a2 = v13[0];
  a2[1] = v8;
  return result;
}

unint64_t sub_1A4181494()
{
  result = qword_1EB133AF0;
  if (!qword_1EB133AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133AF0);
  }

  return result;
}

double sub_1A4181504@<D0>(double *a1@<X8>)
{
  sub_1A524B694();
  result = v3;
  *a1 = v3;
  *(a1 + 1) = v4;
  return result;
}

uint64_t sub_1A4181558(uint64_t a1)
{
  v2 = sub_1A41820DC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A41815A4(uint64_t a1)
{
  v2 = sub_1A41820DC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A41815F0()
{
  sub_1A4181148();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4181678(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 40) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 40) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      if ((v15 + 1) >= 2)
      {
        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A418180C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 40) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 40] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 4) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2;
  }
}

unint64_t sub_1A4181A88()
{
  result = qword_1EB133AF8;
  if (!qword_1EB133AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133AF8);
  }

  return result;
}

unint64_t sub_1A4181ADC()
{
  result = qword_1EB172130[0];
  if (!qword_1EB172130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB172130);
  }

  return result;
}

void sub_1A4181B5C(void *a1@<X8>)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1A41810E4(v15, a1);
  sub_1A418232C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A3E79250(v15);
  a1[5] = v12;
  a1[6] = v13;
  a1[7] = v14;
  v2 = sub_1A524BC64();
  v4 = v3;
  sub_1A4181CF0();
  v6 = a1 + *(v5 + 36);
  sub_1A524B6C4();
  sub_1A3F93828();
  sub_1A524B834();
  v7 = sub_1A524A064();
  sub_1A4181E6C();
  v9 = &v6[*(v8 + 36)];
  *v9 = v7;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  sub_1A4181E08();
  v11 = &v6[*(v10 + 36)];
  *v11 = v2;
  v11[1] = v4;
}

void sub_1A4181CF0()
{
  if (!qword_1EB133B00)
  {
    sub_1A4181D58();
    sub_1A4181E08();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133B00);
    }
  }
}

void sub_1A4181D58()
{
  if (!qword_1EB133B08)
  {
    sub_1A4181DB4();
    v0 = type metadata accessor for PhotosViewBannerPreview();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133B08);
    }
  }
}

unint64_t sub_1A4181DB4()
{
  result = qword_1EB170B10[0];
  if (!qword_1EB170B10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB170B10);
  }

  return result;
}

void sub_1A4181E08()
{
  if (!qword_1EB133B10)
  {
    sub_1A4181E6C();
    sub_1A4181ECC();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133B10);
    }
  }
}

void sub_1A4181E6C()
{
  if (!qword_1EB130F28)
  {
    sub_1A406D684();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F28);
    }
  }
}

unint64_t sub_1A4181ECC()
{
  result = qword_1EB133B18;
  if (!qword_1EB133B18)
  {
    sub_1A4181E6C();
    sub_1A4182274(&qword_1EB133B20, sub_1A406D684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B18);
  }

  return result;
}

double sub_1A4181F7C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1A524B424();
  sub_1A41822D8();
  v6 = sub_1A524B4F4();
  v13 = v3;
  v14 = v4;
  v15 = v5;
  sub_1A418232C(0, &qword_1EB12F3E0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v12);
  sub_1A524BC74();
  sub_1A52481F4();
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  result = *&v17;
  *(a1 + 40) = v17;
  return result;
}

uint64_t sub_1A4182080()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B628);
  __swift_project_value_buffer(v0, qword_1EB15B628);
  v1 = *sub_1A4843F98();
  return sub_1A5246F34();
}

unint64_t sub_1A41820DC()
{
  result = qword_1EB133B28;
  if (!qword_1EB133B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B28);
  }

  return result;
}

unint64_t sub_1A4182130()
{
  result = qword_1EB133B30;
  if (!qword_1EB133B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B30);
  }

  return result;
}

unint64_t sub_1A4182194()
{
  result = qword_1EB133B38;
  if (!qword_1EB133B38)
  {
    sub_1A4181CF0();
    sub_1A4182274(&qword_1EB133B40, sub_1A4181D58);
    sub_1A4182274(&qword_1EB133B48, sub_1A4181E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B38);
  }

  return result;
}

uint64_t sub_1A4182274(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A41822D8()
{
  result = qword_1EB133B50;
  if (!qword_1EB133B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133B50);
  }

  return result;
}

void sub_1A418232C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A418237C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2948];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A3C6B614(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LemonadeImportSourceCell();
  sub_1A41843BC(v1 + *(v12 + 20), v11, &qword_1EB128A90, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5244084();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A41825B0()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LemonadeImportSourceCell() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A4182708@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DBD0];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A3C6B614(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LemonadeImportSourceCell();
  sub_1A41843BC(v1 + *(v12 + 28), v11, &qword_1EB128A70, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5247E04();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void LemonadeImportSourceCell.body.getter(uint64_t a1@<X8>)
{
  v12 = a1;
  v2 = sub_1A5247E04();
  v10 = *(v2 - 8);
  v11 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A5244084();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4182ECC(0, &qword_1EB133B58, &qword_1EB133B60, sub_1A4182CA0);
  v9 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  *v6 = sub_1A5249314();
  *(v6 + 1) = 0x4018000000000000;
  v6[16] = 0;
  sub_1A41839D0();
  sub_1A4183220(v1, &v6[*(v7 + 44)]);
}

void sub_1A4182CA0()
{
  if (!qword_1EB133B68)
  {
    sub_1A418305C(255, &qword_1EB133B70, &qword_1EB133B78, sub_1A4182D2C, &qword_1EB133BD0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133B68);
    }
  }
}

void sub_1A4182D2C()
{
  if (!qword_1EB133B80)
  {
    sub_1A4182DA4();
    sub_1A4182E38();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB133B80);
    }
  }
}

void sub_1A4182DA4()
{
  if (!qword_1EB133B88)
  {
    sub_1A3EC43B0();
    sub_1A4183168(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133B88);
    }
  }
}

void sub_1A4182E38()
{
  if (!qword_1EB133B90)
  {
    sub_1A4182ECC(255, &qword_1EB133B98, &qword_1EB133BA0, sub_1A4182FD0);
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133B90);
    }
  }
}

void sub_1A4182ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4182F6C(255, a3, a4);
    sub_1A4183168(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4182F6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4182FD0()
{
  if (!qword_1EB133BA8)
  {
    sub_1A418305C(255, &qword_1EB133BB0, &qword_1EB133BB8, sub_1A41830FC, &qword_1EB133BC8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133BA8);
    }
  }
}

void sub_1A418305C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A3C6B614(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A41831BC(a5, a3, a4);
    v9 = sub_1A524B784();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A41830FC()
{
  if (!qword_1EB133BC0)
  {
    sub_1A3E33EB4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB133BC0);
    }
  }
}

void sub_1A4183168(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A41831BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C6B614(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4183220(uint64_t a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  sub_1A4182E38();
  v74 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v65[-v9];
  v10 = sub_1A524A204();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = MEMORY[0x1E6980E30];
  v70 = MEMORY[0x1E69E6720];
  sub_1A3C6B614(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v65[-v14];
  v16 = sub_1A524A274();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v84 = (*(**a1 + 192))(v18);
  *(&v84 + 1) = v21;
  sub_1A3D5F9DC();
  v22 = sub_1A524A464();
  v68 = v23;
  v69 = v22;
  v66 = v24;
  v67 = v25;
  (*(v17 + 104))(v20, *MEMORY[0x1E6980EF8], v16);
  v26 = *MEMORY[0x1E6980E20];
  v27 = sub_1A524A154();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v15, v26, v27);
  (*(v28 + 56))(v15, 0, 1, v27);
  sub_1A524A184();
  sub_1A524A1C4();
  sub_1A418442C(v15, &unk_1EB1276B0, v71, v70);
  (*(v17 + 8))(v20, v16);
  v30 = v72;
  v29 = v73;
  (*(v72 + 104))(v12, *MEMORY[0x1E6980EA8], v73);
  sub_1A524A234();

  (*(v30 + 8))(v12, v29);
  LOBYTE(v28) = v66;
  v32 = v68;
  v31 = v69;
  v33 = sub_1A524A3C4();
  v70 = v34;
  v71 = v33;
  LODWORD(v72) = v35;
  v73 = v36;

  sub_1A3E04DF4(v31, v32, v28 & 1);

  KeyPath = swift_getKeyPath();
  LODWORD(v69) = sub_1A52499F4();
  v68 = sub_1A5249314();
  v81 = 1;
  sub_1A4183D90(&v84);
  v95 = v88;
  v96 = v89;
  v97 = v90;
  v91 = v84;
  v92 = v85;
  v93 = v86;
  v94 = v87;
  v98[0] = v84;
  v98[1] = v85;
  v98[2] = v86;
  v98[3] = v87;
  v98[4] = v88;
  v98[5] = v89;
  v99 = v90;
  v38 = MEMORY[0x1E6981F40];
  sub_1A41843BC(&v91, &v78, &qword_1EB133BB8, sub_1A41830FC, MEMORY[0x1E6981F40]);
  sub_1A418442C(v98, &qword_1EB133BB8, sub_1A41830FC, v38);
  *&v80[55] = v94;
  *&v80[71] = v95;
  *&v80[87] = v96;
  *&v80[7] = v91;
  *&v80[23] = v92;
  v80[103] = v97;
  *&v80[39] = v93;
  LOBYTE(v31) = v81;
  sub_1A524BC74();
  sub_1A5248AD4();
  *&v82[55] = v87;
  *&v82[71] = v88;
  *&v82[87] = v89;
  *&v82[103] = v90;
  *&v82[7] = v84;
  *&v82[23] = v85;
  *&v82[39] = v86;
  v83 = 0;
  v39 = sub_1A524B294();
  LOBYTE(v38) = sub_1A524A064();
  v40 = &v7[*(v74 + 44)];
  v41 = *(sub_1A5248A14() + 20);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_1A52494A4();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  __asm { FMOV            V0.2D, #8.0 }

  *v40 = _Q0;
  sub_1A3E42C88();
  *&v40[*(v49 + 36)] = 256;
  v50 = *&v80[32];
  *(v7 + 65) = *&v80[48];
  v51 = *&v80[80];
  *(v7 + 81) = *&v80[64];
  *(v7 + 97) = v51;
  v52 = *&v80[16];
  *(v7 + 17) = *v80;
  *(v7 + 33) = v52;
  *(v7 + 49) = v50;
  v53 = *&v82[32];
  *(v7 + 169) = *&v82[48];
  *(v7 + 153) = v53;
  v54 = *v82;
  *(v7 + 137) = *&v82[16];
  *(v7 + 121) = v54;
  *(v7 + 29) = *&v82[111];
  *(v7 + 30) = 0x3FF0000000000000;
  v55 = *&v82[80];
  *(v7 + 217) = *&v82[96];
  v56 = *&v82[64];
  *(v7 + 201) = v55;
  *v7 = v68;
  *(v7 + 1) = 0;
  v7[16] = v31;
  *(v7 + 113) = *&v80[96];
  *(v7 + 185) = v56;
  *(v7 + 124) = 0;
  *(v7 + 250) = v78;
  *(v7 + 127) = v79;
  *(v7 + 32) = v39;
  v7[264] = v38;
  v57 = v7;
  v58 = v75;
  sub_1A4184488(v57, v75);
  v59 = v76;
  sub_1A41844EC(v58, v76, sub_1A4182E38);
  v60 = v77;
  v62 = v70;
  v61 = v71;
  *v77 = v71;
  v60[1] = v62;
  LOBYTE(v42) = v72 & 1;
  *(v60 + 16) = v72 & 1;
  v60[3] = v73;
  v60[4] = KeyPath;
  *(v60 + 40) = 0;
  *(v60 + 11) = v69;
  v60[6] = 0;
  *(v60 + 56) = 1;
  v63 = v60;
  sub_1A4182D2C();
  sub_1A41844EC(v59, v63 + *(v64 + 64), sub_1A4182E38);
  sub_1A3E75E68(v61, v62, v42);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41839D0()
{
  if (!qword_1EB133BD8)
  {
    sub_1A3C6B614(255, &qword_1EB133B78, sub_1A4182D2C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133BD8);
    }
  }
}

uint64_t type metadata accessor for LemonadeImportSourceCell()
{
  result = qword_1EB168C60;
  if (!qword_1EB168C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4183AB4()
{
  result = qword_1EB133BE0;
  if (!qword_1EB133BE0)
  {
    sub_1A4182ECC(255, &qword_1EB133B58, &qword_1EB133B60, sub_1A4182CA0);
    sub_1A4183B60();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BE0);
  }

  return result;
}

unint64_t sub_1A4183B60()
{
  result = qword_1EB133BE8;
  if (!qword_1EB133BE8)
  {
    sub_1A4182F6C(255, &qword_1EB133B60, sub_1A4182CA0);
    sub_1A4183C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BE8);
  }

  return result;
}

unint64_t sub_1A4183C04()
{
  result = qword_1EB133BF0;
  if (!qword_1EB133BF0)
  {
    sub_1A4182CA0();
    sub_1A4183C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BF0);
  }

  return result;
}

unint64_t sub_1A4183C84()
{
  result = qword_1EB133BF8;
  if (!qword_1EB133BF8)
  {
    sub_1A418305C(255, &qword_1EB133B70, &qword_1EB133B78, sub_1A4182D2C, &qword_1EB133BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133BF8);
  }

  return result;
}

uint64_t sub_1A4183D08(uint64_t a1)
{
  sub_1A4182ECC(0, &qword_1EB133B58, &qword_1EB133B60, sub_1A4182CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4183D90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A5242264();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = 0xD000000000000013;
  v10[1] = 0x80000001A53C9EB0;
  (*(v7 + 104))(v10, *MEMORY[0x1E69C1D38], v6, v8);
  sub_1A5242B94();
  (*(v7 + 8))(v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v11 = sub_1A524B5C4();

  (*(v3 + 8))(v5, v2);
  sub_1A524BC74();
  sub_1A52481F4();
  *&v19[19] = v20;
  *&v19[11] = *&v19[35];
  *&v19[3] = *&v19[27];
  v18 = 1;
  v21[0] = v11;
  v21[1] = 0;
  *v22 = 1;
  *&v22[48] = *(&v20 + 1);
  *&v22[34] = *&v19[16];
  *&v22[18] = *&v19[8];
  *&v22[2] = *v19;
  *(v17 + 7) = v11;
  *(&v17[4] + 7) = *&v22[48];
  *(&v17[3] + 7) = *&v22[32];
  *(&v17[2] + 7) = *&v22[16];
  *(&v17[1] + 7) = *v22;
  v16[72] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v12 = v17[1];
  *(a1 + 9) = v17[0];
  v13 = v17[2];
  v14 = v17[3];
  *(a1 + 72) = *(&v17[3] + 15);
  *(a1 + 57) = v14;
  *(a1 + 41) = v13;
  *(a1 + 25) = v12;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  v23[0] = v11;
  v23[1] = 0;
  v24 = 1;
  *&v27[14] = *&v19[23];
  *v27 = *&v19[16];
  v26 = *&v19[8];
  v25 = *v19;
  sub_1A41844EC(v21, v16, sub_1A3E33EB4);
  return sub_1A4184554(v23, sub_1A3E33EB4);
}

double sub_1A41840CC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for LemonadeImportSourceCell();
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  sub_1A3C6B614(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v3[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3C6B614(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], v5);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v3[8]);
  result = 12.0;
  __asm { FMOV            V1.2D, #12.0 }

  *v8 = xmmword_1A53201E0;
  v8[1] = _Q1;
  return result;
}

void sub_1A418422C()
{
  type metadata accessor for LemonadeImportSourceModel();
  if (v0 <= 0x3F)
  {
    sub_1A3C6B614(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A418436C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C6B614(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A418436C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A41843BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A3C6B614(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A418442C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3C6B614(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A4184488(uint64_t a1, uint64_t a2)
{
  sub_1A4182E38();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41844EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4184554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1A41845B4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  sub_1A41849C8(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = objc_allocWithZone(v5);
  v16 = OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel__visualLookupData;
  v23 = 0;
  sub_1A418478C();
  sub_1A52479A4();
  (*(v12 + 32))(&v15[v16], v14, v11);
  v17 = [a3 visualLookupData];
  swift_beginAccess();
  (*(v12 + 8))(&v15[v16], v11);
  v22 = v17;
  sub_1A52479A4();
  swift_endAccess();
  v18 = &v15[OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel_onTappedAction];
  *v18 = a4;
  *(v18 + 1) = a5;
  return sub_1A4467460(a1, v21, a3);
}

void sub_1A418478C()
{
  if (!qword_1EB1267C8)
  {
    sub_1A3C52C70(255, &unk_1EB1267D0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1267C8);
    }
  }
}

uint64_t sub_1A41847F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1A52479F4();
}

uint64_t sub_1A4184860()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A41848D4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A4184954(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1A52479F4();
}

void sub_1A41849C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1A4184A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v4)
  {
    result = [v4 visualDomain];
    if (result)
    {
      v1 = result;
      v2 = [result px:3 stringByApplyingCapitalization:?];

      v3 = sub_1A524C674();
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A4184B24(SEL *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v3)
  {
    v2 = [v3 *a1];

    if (v2)
    {
      sub_1A524C674();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A4184BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v10)
  {
    v0 = [v10 visualDomain];
    if (v0)
    {
      v1 = v0;
      v2 = sub_1A524C674();
      v4 = v3;

      v5 = sub_1A524C634();
      v6 = PXLocalizedString(v5);

      sub_1A524C674();
      sub_1A41849C8(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1A52F8E10;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1A3D710E8();
      *(v7 + 32) = v2;
      *(v7 + 40) = v4;
      v8 = sub_1A524C644();

      return v8;
    }
  }

  return 0;
}

uint64_t sub_1A4184D8C()
{
  v0 = sub_1A446803C();
  v1 = sub_1A4467CD8();
  if (v0 == 5)
  {
    type metadata accessor for PhotosDetailsPeopleWidgetViewModel();
    v2 = sub_1A3F7469C(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_1A4184DF0(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PhotosDetailsPeopleWidgetViewModel();
  return sub_1A3F7469C(a2) & 1;
}

uint64_t sub_1A4184E34()
{
  v0 = sub_1A4467CD8();
  v1 = sub_1A446803C();
  v2 = sub_1A4185000(v0, v1);

  return v2 & 1;
}

uint64_t sub_1A4184EA4()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsVisualLookupWidgetViewModel__visualLookupData;
  sub_1A41849C8(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_1A4185000(void *a1, uint64_t a2)
{
  result = [a1 visualLookupData];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [result visualDomain];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_1A524C674();
  v10 = v9;

  v11 = [v5 glyphImageName];
  if (!v11)
  {

LABEL_15:

    return 0;
  }

  v12 = v11;
  v13 = sub_1A524C674();
  v15 = v14;

  v16 = [a1 firstAsset];
  if (!v16)
  {

    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 isSpatialPresentation];
  sub_1A3C52C70(0, &qword_1EB1268C8);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  v20 = [v19 showVisualLookUpWidget];

  if ((v10 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v21 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    return 0;
  }

  v22 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v22 = v13 & 0xFFFFFFFFFFFFLL;
  }

  return ((v22 != 0) & v20 & ((a2 != 5) | v18 ^ 1));
}

uint64_t type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel()
{
  result = qword_1EB18ECB8;
  if (!qword_1EB18ECB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4185214()
{
  sub_1A41849C8(319, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A41852E4(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  sub_1A41854A8(v7);
  v2 = v7[6];
  *(a1 + 168) = v7[7];
  v3 = v7[9];
  *(a1 + 184) = v7[8];
  *(a1 + 200) = v3;
  *(a1 + 216) = v7[10];
  v4 = v7[2];
  *(a1 + 104) = v7[3];
  v5 = v7[5];
  *(a1 + 120) = v7[4];
  *(a1 + 136) = v5;
  *(a1 + 152) = v2;
  v6 = v7[1];
  *(a1 + 56) = v7[0];
  *(a1 + 72) = v6;
  *(a1 + 88) = v4;
  sub_1A52458F4();
}

double sub_1A41854A8(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1A41854C8@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = (*v2 + 176 * result);
    v4 = v3[2];
    v5 = v3[4];
    v18[1] = v3[3];
    v18[2] = v5;
    v18[0] = v4;
    v6 = v3[5];
    v7 = v3[6];
    v8 = v3[8];
    v18[5] = v3[7];
    v18[6] = v8;
    v18[3] = v6;
    v18[4] = v7;
    v9 = v3[9];
    v10 = v3[10];
    v11 = v3[12];
    v18[9] = v3[11];
    v18[10] = v11;
    v18[7] = v9;
    v18[8] = v10;
    v12 = v3[11];
    a2[8] = v3[10];
    a2[9] = v12;
    a2[10] = v3[12];
    v13 = v3[7];
    a2[4] = v3[6];
    a2[5] = v13;
    v14 = v3[9];
    a2[6] = v3[8];
    a2[7] = v14;
    v15 = v3[3];
    *a2 = v3[2];
    a2[1] = v15;
    v16 = v3[5];
    a2[2] = v3[4];
    a2[3] = v16;
    return sub_1A41855E8(v18, &v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4185584(uint64_t a1, uint64_t a2)
{
  sub_1A3DB7EF8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4185648()
{
  result = qword_1EB12A3C8;
  if (!qword_1EB12A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3C8);
  }

  return result;
}

unint64_t sub_1A41856A0()
{
  result = qword_1EB12A630;
  if (!qword_1EB12A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A630);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore21iCloudLinkParticipantVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_12PhotosUICore14iCloudLinkItemVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1A4185774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1A41857BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void makePhotosCollectionTitleModel(for:displayIntent:)()
{
  sub_1A5246044();
}

{
  sub_1A418747C(0, &qword_1EB124AC0, off_1E7721130);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5246044();
}

uint64_t type metadata accessor for PHAssetCollectionTitleModel()
{
  result = qword_1EB180270;
  if (!qword_1EB180270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4186158()
{
  sub_1A418747C(0, &qword_1EB124AC0, off_1E7721130);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3D9D024();
  PXDisplayAssetCollection.photosCollectionTitleInfo.getter(&v1);
  sub_1A52467F4();
}

uint64_t sub_1A41862E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A418735C(&qword_1EB180288);
    sub_1A52415C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1A4186444(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A418735C(&qword_1EB180288);
    sub_1A52415C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1A41865A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A418735C(&qword_1EB180288);
    sub_1A52415C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

void sub_1A41866FC()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186798(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186848()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41868E4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186994()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186A30(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4186EB0()
{

  sub_1A4187420(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_89EA7250520E0A8DD3D007A4813848C827PHAssetCollectionTitleModel_additionalInfo, &qword_1EB124AC0, off_1E7721130);

  sub_1A5246044();
}

void sub_1A4187014()
{
  sub_1A418747C(319, &qword_1EB124AC0, off_1E7721130);
  if (v0 <= 0x3F)
  {
    sub_1A5246044();
  }
}

void sub_1A4187160()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41871FC()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4187298()
{
  swift_getKeyPath();
  sub_1A418735C(&qword_1EB180288);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A418735C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PHAssetCollectionTitleModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41873A0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41873E0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4187420(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A418747C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A418747C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A41874D0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4186B28();
  }

  return result;
}

void sub_1A4187540(char *a1@<X8>, double a2@<D0>)
{
  if (a2 >= 375.0)
  {
    if (a2 >= 461.0)
    {
      if (a2 >= 1211.0)
      {
        v2 = 6;
      }

      else
      {
        v2 = 5;
      }

      if (a2 >= 982.0)
      {
        v3 = v2;
      }

      else
      {
        v3 = 4;
      }

      if (a2 >= 727.0)
      {
        v4 = v3;
      }

      else
      {
        v4 = 1;
      }

      if (a2 < 550.0)
      {
        v4 = 0;
      }

      *a1 = v4;
    }

    else
    {
      *a1 = 3;
    }
  }

  else
  {
    *a1 = 2;
  }
}

uint64_t sub_1A41875F0(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v32 - v15;
  sub_1A3C52C70(0, &unk_1EB120978);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 useNewMainViewLayout];

  if (v18)
  {
    goto LABEL_19;
  }

  v33 = a1;
  v34 = a4;
  v32[1] = a2;
  v35 = *(v9 + 16);
  v36 = a3;
  v35(v16, a3, v8);
  v19 = *(v9 + 88);
  v20 = v19(v16, v8);
  v21 = *MEMORY[0x1E69C21F8];
  if (v20 == *MEMORY[0x1E69C21F8])
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v22 = [swift_getObjCClassFromMetadata() sharedInstance];
    v23 = [v22 enableShelfIPadLayout];

    if (!v23)
    {
LABEL_19:
      v28 = 0;
      return v28 & 1;
    }

    v24 = *MEMORY[0x1E69C2210];
  }

  else
  {
    v24 = v20;
    if (v20 != *MEMORY[0x1E69C2210])
    {
      (*(v9 + 8))(v16, v8);
      goto LABEL_19;
    }
  }

  v35(v13, v36, v8);
  v25 = v19(v13, v8);
  if (v25 != v21 && v25 != v24)
  {
    (*(v9 + 8))(v13, v8);
    goto LABEL_19;
  }

  v27 = v37;
  (*(v9 + 104))(v37, v24, v8);
  v28 = sub_1A5242D04();
  (*(v9 + 8))(v27, v8);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v29 = [swift_getObjCClassFromMetadata() sharedInstance];
  v30 = [v29 enableShelfIPadLayout];

  if (v30 && (sub_1A5248684() & 1) == 0)
  {
    v33(&v38);
    if (v38 <= 3u)
    {
      goto LABEL_19;
    }

    if (v38 == 4)
    {
      v28 = PLIsPadMini() ^ 1;
      return v28 & 1;
    }

    if (v38 != 5 && v38 != 6)
    {
      goto LABEL_19;
    }

    v28 = 1;
  }

  return v28 & 1;
}

uint64_t LemonadeVerticalSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t LemonadeRootViewOrientation.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4187AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188618(&unk_1EB126C68, type metadata accessor for UIEdgeInsets);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1A4187B38()
{
  sub_1A4188154();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A4187BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188618(&qword_1EB126710, type metadata accessor for CGSize);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1A4187C54()
{
  sub_1A41881A8();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A4187CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3F17D14();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4187D30()
{
  sub_1A41881FC();

  return sub_1A5249244();
}

uint64_t sub_1A4187DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188350();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4187E1C()
{
  sub_1A4188250();

  return sub_1A5249244();
}

_BYTE *sub_1A4187E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A44DAFD8();
  *a1 = *result;
  return result;
}

uint64_t sub_1A4187EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4188660();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A4187F14()
{
  sub_1A41882A4();

  return sub_1A5249244();
}

uint64_t sub_1A4187FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A41883A8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A418802C()
{
  sub_1A41882F8();

  return sub_1A5249244();
}

uint64_t _s12PhotosUICore27LemonadeHorizontalSizeClassO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 3)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_17;
      }

      if (v3 == 3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(v2)
  {
    case 4u:
      return v3 == 4;
    case 5u:
      return v3 == 5;
    case 6u:
      return v3 == 6;
  }

LABEL_17:
  if ((v3 - 2) < 5)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t sub_1A4188154()
{
  result = qword_1EB15A7A0[0];
  if (!qword_1EB15A7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A7A0);
  }

  return result;
}

unint64_t sub_1A41881A8()
{
  result = qword_1EB15ADD8[0];
  if (!qword_1EB15ADD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15ADD8);
  }

  return result;
}

unint64_t sub_1A41881FC()
{
  result = qword_1EB15AA70;
  if (!qword_1EB15AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB15AA70);
  }

  return result;
}

unint64_t sub_1A4188250()
{
  result = qword_1EB15AB98[0];
  if (!qword_1EB15AB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AB98);
  }

  return result;
}

unint64_t sub_1A41882A4()
{
  result = qword_1EB15AD40[0];
  if (!qword_1EB15AD40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15AD40);
  }

  return result;
}

unint64_t sub_1A41882F8()
{
  result = qword_1EB15A9E8[0];
  if (!qword_1EB15A9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A9E8);
  }

  return result;
}

unint64_t sub_1A4188350()
{
  result = qword_1EB129D00;
  if (!qword_1EB129D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D00);
  }

  return result;
}

unint64_t sub_1A41883A8()
{
  result = qword_1EB129AE0;
  if (!qword_1EB129AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129AE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeHorizontalSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_19;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 4;
  if (v8 <= 4)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LemonadeHorizontalSizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A4188554(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A4188570(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1A4188618(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4188660()
{
  result = qword_1EB12A1E8;
  if (!qword_1EB12A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A1E8);
  }

  return result;
}

uint64_t sub_1A41886B4()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsPhotosItem(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v45 - v8;
  v9 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v45 - v12;
  sub_1A418B828();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel___observationRegistrar;
  v57 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v24 = v0 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  sub_1A418B8F8(v24 + *(v3 + 28), v22, type metadata accessor for NotificationsPhotosItem.NotificationType);
  swift_getKeyPath();
  v56 = v0;
  v52 = v23;
  sub_1A52415D4();

  v25 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v26 = *(v1 + v25);
  v27 = *(v14 + 56);
  v28 = v16;
  sub_1A418B890(v22, v16, type metadata accessor for NotificationsPhotosItem.NotificationType);
  *&v16[v27] = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v35 = v50;
    v34 = v51;
    v36 = v49;
    sub_1A418B8F8(v16, v49, type metadata accessor for NotificationsPhotosItem.NotificationType);
    if (v26 >> 61 == 7)
    {
      sub_1A418B890(v36, v35, type metadata accessor for TestNotificationPhotosItem);
      sub_1A418B8F8(v35, v34, type metadata accessor for TestNotificationPhotosItem);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v45 - 2) = v26 & 0x1FFFFFFFFFFFFFFFLL;
      *(&v45 - 1) = v34;
      v55 = v26 & 0x1FFFFFFFFFFFFFFFLL;
      sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);

      sub_1A52415C4();

      sub_1A418B960(v35, type metadata accessor for TestNotificationPhotosItem);
      sub_1A418B960(v34, type metadata accessor for TestNotificationPhotosItem);
      goto LABEL_7;
    }

    v39 = type metadata accessor for TestNotificationPhotosItem;
    v40 = v36;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {

LABEL_12:
    swift_getKeyPath();
    v55 = v1;
    sub_1A52415D4();

    v41 = v53;
    sub_1A418B8F8(v24, v53, type metadata accessor for NotificationsPhotosItem);
    v42 = sub_1A418AB18(v41);
    v43 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v43);
    *(&v45 - 2) = v1;
    *(&v45 - 1) = v42;
    v55 = v1;
    sub_1A52415C4();

    v38 = sub_1A418B828;
    return sub_1A418B960(v28, v38);
  }

  v30 = v16;
  v31 = v48;
  sub_1A418B8F8(v30, v48, type metadata accessor for NotificationsPhotosItem.NotificationType);
  if (v26 >> 61)
  {

    v39 = type metadata accessor for InvitationsItem;
    v40 = v31;
LABEL_11:
    sub_1A418B960(v40, v39);
    goto LABEL_12;
  }

  v32 = v47;
  sub_1A418B890(v31, v47, type metadata accessor for InvitationsItem);
  v33 = v46;
  sub_1A418B8F8(v32, v46, type metadata accessor for InvitationsItem);

  sub_1A4604BCC(v33);
  sub_1A418B960(v32, type metadata accessor for InvitationsItem);
LABEL_7:

  v38 = type metadata accessor for NotificationsPhotosItem.NotificationType;
  return sub_1A418B960(v28, v38);
}

uint64_t sub_1A4188DC0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v5 + v3, a1, type metadata accessor for NotificationsPhotosItem);
}

uint64_t sub_1A4188E9C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v2 = *(v4 + v1);

  return v2;
}

uint64_t (*sub_1A4188F64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4188FC8;
}

uint64_t sub_1A4188FC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A41886B4();
  }

  return result;
}

uint64_t sub_1A4188FFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v3 + v4, a2, type metadata accessor for NotificationsPhotosItem);
}

uint64_t sub_1A41890D8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A418B8F8(a1, v6, type metadata accessor for NotificationsPhotosItem);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415C4();

  return sub_1A418B960(v6, type metadata accessor for NotificationsPhotosItem);
}

uint64_t sub_1A4189248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418B8F8(a2, v6, type metadata accessor for NotificationsPhotosItem);
  v7 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  sub_1A418B9C0(v6, a1 + v7, type metadata accessor for NotificationsPhotosItem);
  swift_endAccess();
  sub_1A41886B4();
  return sub_1A418B960(v6, type metadata accessor for NotificationsPhotosItem);
}

void (*sub_1A4189344(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A4188F64(v4);
  return sub_1A418947C;
}

void sub_1A418947C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void sub_1A4189510()
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41895E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A41896B4()
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415C4();
}

uint64_t sub_1A4189780(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1A41897E8(uint64_t a1)
{
  v2 = type metadata accessor for NotificationsPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  sub_1A5241604();
  sub_1A418B8F8(a1, v5 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item, type metadata accessor for NotificationsPhotosItem);
  sub_1A418B8F8(a1, v4, type metadata accessor for NotificationsPhotosItem);
  v6 = sub_1A418AB18(v4);
  sub_1A418B960(a1, type metadata accessor for NotificationsPhotosItem);
  *(v5 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType) = v6;
  return v5;
}

uint64_t sub_1A41898F0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  sub_1A418B890(a1, v2 + OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item, type metadata accessor for TestNotificationPhotosItem);
  return v2;
}

uint64_t sub_1A4189960()
{
  v1 = v0;
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v5 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = v6 >> 61;
  result = 1;
  if ((v6 >> 61) > 4)
  {
    if (v7 == 5)
    {
      return 0;
    }

    else if (v7 != 6)
    {
      v9 = v6 & 0x1FFFFFFFFFFFFFFFLL;
      swift_getKeyPath();
      v12 = v9;
      sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);

      sub_1A52415D4();

      v10 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
      swift_beginAccess();
      sub_1A418B8F8(v9 + v10, v4, type metadata accessor for TestNotificationPhotosItem);

      v11 = v4[40];
      sub_1A418B960(v4, type metadata accessor for TestNotificationPhotosItem);
      return v11;
    }
  }

  return result;
}

uint64_t sub_1A4189B78@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v5 + v3, a1, type metadata accessor for TestNotificationPhotosItem);
}

uint64_t sub_1A4189C54()
{
  v1 = v0;
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = v0;
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v8 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__notificationType;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = v9 >> 61;
  if ((v9 >> 61) <= 3)
  {
    if (v10 <= 1)
    {
      if (!v10)
      {

        sub_1A4604CB0(v7);
        sub_1A3F644C8();
      }

      v13 = *(*(v9 & 0x1FFFFFFFFFFFFFFFLL) + 328);

      v13(v14);
      goto LABEL_14;
    }

    if (v10 == 2)
    {
      PXPreferencesSetCameraSharingPreferencesState(2);
      return 0;
    }

LABEL_13:
    v15 = *(*(v9 & 0x1FFFFFFFFFFFFFFFLL) + 216);

    v15(v16);
LABEL_14:

    return 0;
  }

  if (v10 > 5)
  {
    if (v10 != 6)
    {
      swift_getKeyPath();
      v20[0] = v9 & 0x1FFFFFFFFFFFFFFFLL;
      sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);

      sub_1A52415D4();

      v19 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
      swift_beginAccess();
      sub_1A418B8F8((v9 & 0x1FFFFFFFFFFFFFFFLL) + v19, v4, type metadata accessor for TestNotificationPhotosItem);
      v17 = sub_1A405696C();

      sub_1A418B960(v4, type metadata accessor for TestNotificationPhotosItem);
      return v17;
    }

    v11 = *(*(v9 & 0x1FFFFFFFFFFFFFFFLL) + 480);

    v11(v12);
    goto LABEL_14;
  }

  if (v10 == 4)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1A418A02C()
{
  sub_1A418B960(v0 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item, type metadata accessor for NotificationsPhotosItem);

  v1 = OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A418A100(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415C4();

  return sub_1A418B960(a1, type metadata accessor for NotificationsPhotosItem);
}

void (*sub_1A418A1E4(uint64_t **a1))(void *)
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
  v2[4] = sub_1A4189344(v2);
  return sub_1A3E62A10;
}

void sub_1A418A258(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C00, type metadata accessor for LemonadeNotificationsModel);
  sub_1A52415D4();

  v4 = v3 + OBJC_IVAR____TtC12PhotosUICore26LemonadeNotificationsModel__item;
  swift_beginAccess();
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A418A32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  swift_beginAccess();
  return sub_1A418B8F8(v3 + v4, a2, type metadata accessor for TestNotificationPhotosItem);
}

uint64_t sub_1A418A408(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A418B8F8(a1, v6, type metadata accessor for TestNotificationPhotosItem);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);
  sub_1A52415C4();

  return sub_1A418B960(v6, type metadata accessor for TestNotificationPhotosItem);
}

uint64_t sub_1A418A558(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  swift_beginAccess();
  sub_1A418B9C0(a2, a1 + v4, type metadata accessor for TestNotificationPhotosItem);
  return swift_endAccess();
}

uint64_t sub_1A418A5FC(unint64_t *a1, void (*a2)(uint64_t))
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

void (*sub_1A418A664(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A418A7AC;
}

void sub_1A418A7B8(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A418A83C()
{
  sub_1A418B960(v0 + OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item, type metadata accessor for TestNotificationPhotosItem);
  v1 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A418A8FC(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);
  sub_1A52415C4();

  return sub_1A418B960(a1, type metadata accessor for TestNotificationPhotosItem);
}

void (*sub_1A418A9E0(uint64_t **a1))(void *)
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
  v2[4] = sub_1A418A664(v2);
  return sub_1A3E658B0;
}

uint64_t sub_1A418AA54@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A418A5FC(&qword_1EB133C08, type metadata accessor for LemonadeTestNotificationsModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item;
  result = swift_beginAccess();
  *a1 = *(v3 + v4);
  return result;
}

uint64_t sub_1A418AB18(uint64_t a1)
{
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v53 - v5;
  v6 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v53 - v9;
  v10 = type metadata accessor for MacSyncedAssetsNotificationItem();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for AssetsRecoveryNotificationItem();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = type metadata accessor for LemonadeSharedLibraryCameraSharingItem(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v53 - v31;
  v33 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(type metadata accessor for NotificationsPhotosItem(0) + 20);
  v58 = a1;
  sub_1A418B8F8(a1 + v36, v35, type metadata accessor for NotificationsPhotosItem.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v42 = *v35;
        sub_1A3E05888();
        v59 = v42;
        v43 = sub_1A4226B64(&v59);
        sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
        return v43 | 0xC000000000000000;
      }

      else
      {
        v50 = v56;
        sub_1A418B890(v35, v56, type metadata accessor for TestNotificationPhotosItem);
        v51 = v57;
        sub_1A418B8F8(v50, v57, type metadata accessor for TestNotificationPhotosItem);
        type metadata accessor for LemonadeTestNotificationsModel(0);
        v52 = swift_allocObject();
        sub_1A5241604();
        sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
        sub_1A418B960(v50, type metadata accessor for TestNotificationPhotosItem);
        sub_1A418B890(v51, v52 + OBJC_IVAR____TtC12PhotosUICore30LemonadeTestNotificationsModel__item, type metadata accessor for TestNotificationPhotosItem);
        return v52 | 0xE000000000000000;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1A418B890(v35, v14, type metadata accessor for MacSyncedAssetsNotificationItem);
        type metadata accessor for MacSyncedAssetsNotificationModel();
        v40 = v53;
        sub_1A418B8F8(v14, v53, type metadata accessor for MacSyncedAssetsNotificationItem);
        sub_1A4A59AD0(v40);
      }

      v47 = v55;
      sub_1A418B890(v35, v55, type metadata accessor for CloudQuotaNotificationItem);
      type metadata accessor for LemonadeCloudQuotaNotificationModel();
      v48 = v54;
      sub_1A418B8F8(v47, v54, type metadata accessor for CloudQuotaNotificationItem);
      v49 = sub_1A444BF98(v48);
      sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
      sub_1A418B960(v47, type metadata accessor for CloudQuotaNotificationItem);
      return v49 | 0xA000000000000000;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1A418B890(v35, v20, type metadata accessor for AssetsRecoveryNotificationItem);
      type metadata accessor for LemonadeAssetsRecoveryNotificationModel();
      sub_1A418B8F8(v20, v17, type metadata accessor for AssetsRecoveryNotificationItem);
      sub_1A4968410(v17);
    }

    sub_1A418B890(v35, v26, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    type metadata accessor for LemonadeSharedLibraryCameraSharingModel(0);
    sub_1A418B8F8(v26, v23, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    v41 = sub_1A48DCE28(v23);
    sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
    sub_1A418B960(v26, type metadata accessor for LemonadeSharedLibraryCameraSharingItem);
    return v41 | 0x4000000000000000;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v44 = *v35;
      v45 = v35[8];
      sub_1A3DB1E58();
      type metadata accessor for LemonadeSharedLibrarySuggestionModel();
      v59 = v44;
      v60 = v45;
      v46 = *(v35 + 2);
      v61 = *(v35 + 1);
      v62 = v46;
      sub_1A3E928AC(&v59);
    }

    sub_1A418B890(v35, v32, type metadata accessor for InvitationsItem);
    type metadata accessor for LemonadeInvitationModel();
    sub_1A418B8F8(v32, v29, type metadata accessor for InvitationsItem);
    v38 = sub_1A4604AFC(v29);
    sub_1A418B960(v58, type metadata accessor for NotificationsPhotosItem);
    sub_1A418B960(v32, type metadata accessor for InvitationsItem);
    return v38;
  }
}

uint64_t sub_1A418B594()
{
  result = type metadata accessor for NotificationsPhotosItem(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A418B674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A418B6D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A418B75C()
{
  result = type metadata accessor for TestNotificationPhotosItem(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A418B828()
{
  if (!qword_1EB133C30)
  {
    type metadata accessor for NotificationsPhotosItem.NotificationType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB133C30);
    }
  }
}

uint64_t sub_1A418B890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A418B8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A418B960(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A418B9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1A418BAD8(void *a1, void *a2, void *a3, void *a4)
{
  v83 = a4;
  v72 = a3;
  v71 = a2;
  v82 = a1;
  v5 = MEMORY[0x1E695C070];
  sub_1A418C3FC(0, &qword_1EB1249D0, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E695C070]);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v70 - v7;
  sub_1A418C330(0);
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31320(0);
  v75 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  sub_1A418C3C8(0);
  v73 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E6158];
  sub_1A418C3FC(0, &qword_1EB128B38, &qword_1EB126FA0, MEMORY[0x1E69E6158], v5);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v70 - v23;
  v25 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactName;
  v26 = v19;
  v27 = MEMORY[0x1E69E6720];
  sub_1A418E190(0, &qword_1EB126FA0, v26, MEMORY[0x1E69E6720]);
  v86 = 0;
  v87 = 0;
  sub_1A52479A4();
  (*(v22 + 32))(v4 + v25, v24, v21);
  v28 = v82;
  v29 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactImage;
  v86 = 0;
  sub_1A4102970();
  sub_1A52479A4();
  (*(v16 + 32))(v4 + v29, v18, v73);
  v30 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationSharedInAttributedTitle;
  v31 = sub_1A52407E4();
  (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
  sub_1A418C478(v14, v74);
  v32 = v76;
  sub_1A52479A4();
  sub_1A418C4DC(v14);
  (*(v77 + 32))(v4 + v30, v32, v78);
  v33 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__messagesAppIcon;
  v86 = 0;
  sub_1A418E190(0, &qword_1EB121CC0, MEMORY[0x1E6981748], v27);
  v34 = v79;
  sub_1A52479A4();
  (*(v80 + 32))(v4 + v33, v34, v81);
  swift_unknownObjectWeakInit();
  v35 = (v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionIdentifier);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = (v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_senderAppName);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForContactImage);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForTextLabels);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForReplyButton);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axHint);
  *v40 = 0;
  v40[1] = 0;
  v41 = [objc_allocWithZone(PXContentSyndicationAttributionInfo) initWithAsset_];
  v42 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo;
  *(v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo) = v41;
  LOBYTE(v33) = [v41 syndicationAttributionInfoIsLoading];
  swift_beginAccess();
  v85 = v33;
  sub_1A52479A4();
  swift_endAccess();
  LOBYTE(v34) = [*(v4 + v42) hasSyndicationAttributionInfo];
  swift_beginAccess();
  v85 = v34;
  sub_1A52479A4();
  swift_endAccess();
  v43 = [*(v4 + v42) axDescriptionForSyndicationLoadingIndicator];
  v44 = sub_1A524C674();
  v46 = v45;

  v47 = (v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForLoadingIndicator);
  *v47 = v44;
  v47[1] = v46;
  v48 = [*(v4 + v42) senderAppName];
  if (v48)
  {
    v49 = v48;
    v50 = sub_1A524C674();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  swift_beginAccess();
  *v36 = v50;
  v36[1] = v52;

  v53 = v83;
  if (v83 || (v54 = sub_1A524D244(), v55 = sub_1A475874C(), swift_beginAccess(), v56 = *v55, !os_log_type_enabled(v56, v54)))
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    type metadata accessor for PhotosDetailsSavedFromAppsWidgetViewModel();
    v61 = v28;
    v62 = v71;
    v63 = v72;
    *(v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_appAttributionModel) = sub_1A4406828(v61, v62, v63);
    v64 = v61;
    v65 = v62;
    v66 = v63;
    v67 = sub_1A4467460(v64, v65, v66);
    v68 = *&v67[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo];
    v69 = v67;
    [v68 setChangeDelegate_];
  }

  else
  {
    v57 = v56;
    v58 = v28;
    v59 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v59 = 136315138;
    v60 = [v58 uuid];

    if (v60)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }
}

void sub_1A418C364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A418C3FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A418E190(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A418C478(uint64_t a1, uint64_t a2)
{
  sub_1A3F31320(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A418C4DC(uint64_t a1)
{
  sub_1A3F31320(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A418C538()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

double sub_1A418C5AC@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  result = *&v3;
  *a1 = v3;
  return result;
}

void sub_1A418C62C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A418C6D4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1A52479F4();
}

uint64_t sub_1A418C748()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();
}

uint64_t sub_1A418C7C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();
}

uint64_t sub_1A418C83C(uint64_t a1, void **a2)
{
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1A418C478(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A418C478(v9, v6);
  v11 = v10;
  sub_1A52479F4();
  return sub_1A418C4DC(v9);
}

uint64_t sub_1A418C984()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A418CA04@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A418CA94(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1A52479F4();
}

uint64_t sub_1A418CB14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A418CB94@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A418CC10(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1A52479F4();
}

uint64_t sub_1A418CC88()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (!v5)
  {
    sub_1A3D72BFC();
    v1 = sub_1A524C674();
    v3 = v2;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A3D72C4C(v1, v3, sub_1A418DE20, v4, 30.0, 30.0);
  }
}

uint64_t sub_1A418CDB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v13[15] == 1)
  {
    v7 = [*(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionInfo) syndicationSharedWithInMessagesAttributedTitle];
    swift_getKeyPath();
    sub_1A52406B4();
    sub_1A418DEB4();
    sub_1A5240804();
    v9 = sub_1A52407E4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v11(v6, 0, 1, v9);
    (*(v10 + 32))(a1, v6, v9);
    return v11(a1, 0, 1, v9);
  }

  else
  {
    v8 = sub_1A52407E4();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1A418D044@<X0>(uint64_t *a1@<X8>)
{
  sub_1A52406C4();
  result = sub_1A52406B4();
  *a1 = result;
  return result;
}

uint64_t sub_1A418D074(void *a1)
{
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v57[-v8];
  v10 = [a1 syndicationAttributionInfoIsLoading];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v58) = v10;
  v11 = v1;
  sub_1A52479F4();
  v12 = [a1 hasSyndicationAttributionInfo];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v58) = v12;
  v13 = v11;
  sub_1A52479F4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if ((v58 & 1) == 0)
  {
    v15 = [a1 syndicationSenderDisplayName];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1A524C674();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v17;
    v59 = v19;
    v20 = v13;
    sub_1A52479F4();
    v21 = [a1 senderThumbnailImage];
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v21;
    v22 = v20;
    sub_1A52479F4();
    v23 = [a1 syndicationSharedWithInMessagesAttributedTitle];
    sub_1A5240834();
    v24 = sub_1A52407E4();
    (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A418C478(v9, v5);
    v25 = v22;
    sub_1A52479F4();
    sub_1A418C4DC(v9);
    v26 = [a1 syndicationAttributionIdentifier];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1A524C674();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v31 = &v25[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_attributionIdentifier];
    swift_beginAccess();
    *v31 = v28;
    v31[1] = v30;

    v32 = [a1 axDescriptionForSyndicationContactImage];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1A524C674();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = &v25[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForContactImage];
    swift_beginAccess();
    *v37 = v34;
    v37[1] = v36;

    v38 = [a1 axDescriptionForSyndicationReplyButton];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1A524C674();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = &v25[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForTextLabels];
    swift_beginAccess();
    *v43 = v40;
    v43[1] = v42;

    v44 = [a1 axDescriptionForSyndicationReplyButton];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1A524C674();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v49 = &v25[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axDescriptionForReplyButton];
    swift_beginAccess();
    *v49 = v46;
    v49[1] = v48;

    v50 = [a1 axHintForSyndicationButton];
    if (v50)
    {
      v51 = v50;
      v52 = sub_1A524C674();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = &v25[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_axHint];
    swift_beginAccess();
    *v55 = v52;
    v55[1] = v54;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A52479E4();

    if ((v57[0] & 1) == 0)
    {
      v56 = &v25[OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_senderAppName];
      swift_beginAccess();
      if (!*(v56 + 1))
      {
        return sub_1A4468130();
      }
    }

    result = sub_1A446803C();
    if (result == 5)
    {
      return sub_1A4468130();
    }
  }

  return result;
}

uint64_t sub_1A418D68C(void *a1)
{
  v1 = [a1 firstAsset];
  if (v1)
  {
    v2 = v1;
    if ([v1 px_isMomentSharedAsset])
    {
      goto LABEL_10;
    }

    if ([v2 px_wasSavedThroughSyndication])
    {
      sub_1A3C52C70(0, &unk_1EB133C50);
      v3 = [swift_getObjCClassFromMetadata() sharedInstance];
      v4 = [v3 showSyndicatedContentWidgetForSavedAssets];

      if (v4)
      {
LABEL_7:
        v7 = [objc_opt_self() sharedInstance];
        if ([v7 isSocialLayerHighlightCachedForAsset_])
        {
          v8 = [v7 cachedSocialLayerHighlightForAsset_];
          if (v8)
          {
            v9 = v2;
          }

          else
          {
            v8 = [v2 syndicatedAppDisplayName];
            if (!v8)
            {
              v6 = 0;
              v9 = v7;
              v7 = v2;
              goto LABEL_16;
            }

            v9 = v7;
            v7 = v2;
          }

          v6 = 1;
        }

        else
        {
          v6 = 1;
          v9 = v2;
        }

LABEL_16:

        v2 = v7;
        goto LABEL_17;
      }
    }

    if (![v2 px_isUnsavedSyndicatedAsset])
    {
LABEL_10:
      v6 = 0;
    }

    else
    {
      sub_1A3C52C70(0, &unk_1EB133C50);
      v5 = [swift_getObjCClassFromMetadata() sharedInstance];
      v6 = [v5 showSyndicatedContentWidgetForGuestAssets];

      if (v6)
      {
        goto LABEL_7;
      }
    }

LABEL_17:

    return v6;
  }

  return 0;
}

uint64_t sub_1A418D894()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactName;
  v2 = MEMORY[0x1E695C070];
  sub_1A418C3FC(0, &qword_1EB128B38, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationContactImage;
  sub_1A418C3C8(0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationSharedInAttributedTitle;
  sub_1A418C330(0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__syndicationAttributionInfoIsLoading;
  sub_1A418E190(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v10 = v9;
  v11 = *(*(v9 - 8) + 8);
  v11(v0 + v8, v9);
  v11(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__hasSyndicationAttributionInfo, v10);
  v12 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel__messagesAppIcon;
  sub_1A418C3FC(0, &qword_1EB1249D0, &qword_1EB121CC0, MEMORY[0x1E6981748], v2);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  MEMORY[0x1A590F020](v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedWithYouWidgetViewModel_viewControllerForPresenting);
}

uint64_t sub_1A418DE20()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_1A52479F4();
  }

  return result;
}

unint64_t sub_1A418DEB4()
{
  result = qword_1EB13FA70;
  if (!qword_1EB13FA70)
  {
    sub_1A52406B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FA70);
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsSharedWithYouWidgetViewModel()
{
  result = qword_1EB18EC30;
  if (!qword_1EB18EC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A418DF60()
{
  sub_1A418C3FC(319, &qword_1EB128B38, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1A418C3C8(319);
    if (v1 <= 0x3F)
    {
      sub_1A418C330(319);
      if (v2 <= 0x3F)
      {
        sub_1A418E190(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          sub_1A418C3FC(319, &qword_1EB1249D0, &qword_1EB121CC0, MEMORY[0x1E6981748], MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1A418E190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A418E1E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1A418E244()
{
  v1 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() != 27;
  sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
  return v4;
}

void sub_1A418E2F8(BOOL *a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  sub_1A3C52C70(0, &qword_1EB126A10);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 defaultPhoneFeedNavigationType];

  if (v3 == 1)
  {
    v6 = 0;
  }

  else if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 != 1;
  }

  *a1 = v6;
}

void sub_1A418E3C8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (, v9 = sub_1A4654080(), , v9))
  {
    *a2 = 0;
  }

  else
  {
    sub_1A418E1E0(v3, v8);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0xBu:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        *a2 = 0;
        return;
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        if (!a1 || (sub_1A4655B34() & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      case 0x15u:
      case 0x16u:
      case 0x21u:
      case 0x22u:
      case 0x24u:
      case 0x26u:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        goto LABEL_10;
      case 0x18u:
      case 0x1Cu:
      case 0x1Du:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        goto LABEL_12;
      case 0x1Au:
        *a2 = 2;
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        return;
      case 0x1Eu:
      case 0x25u:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        v10 = 3;
        goto LABEL_14;
      case 0x1Fu:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        if (!a1 || (sub_1A4655B34() & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_8:
        v10 = 0;
        goto LABEL_14;
      case 0x27u:
LABEL_12:
        v10 = 1;
        goto LABEL_14;
      case 0x28u:
LABEL_10:
        v10 = 2;
LABEL_14:
        *a2 = v10;
        break;
      default:
        sub_1A4192C4C(v8, type metadata accessor for LemonadeNavigationDestination);
        sub_1A418E2F8(a2);
        break;
    }
  }
}

BOOL sub_1A418E5F0()
{
  v1 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  v4 = swift_getEnumCaseMultiPayload() != 11;
  sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
  return v4;
}

uint64_t sub_1A418E6A4()
{
  v1 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0x23 || ((1 << EnumCaseMultiPayload) & 0x9088007F7) == 0)
  {
    v7 = sub_1A524B414();
    sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
    return v7;
  }

  else
  {
    sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
    return sub_1A524B414();
  }
}

uint64_t sub_1A418E7A4()
{
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 preferNewPlayerForFeeds];

  if (v2 && ((sub_1A418E3C8(0, &v11), v3 = [objc_opt_self() currentDevice], v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, v5 = objc_msgSend(ObjCClassFromMetadata, sel_sharedInstance), v6 = objc_msgSend(v5, sel_defaultPhoneFeedNavigationType), v5, v4 == 1) ? (v7 = 0) : v4 ? (v7 = 1) : (v7 = v6 != 1), v10 = v7, static LemonadeDetailsNavigationType.== infix(_:_:)(&v11, &v10)))
  {
    sub_1A418EA00(0, &unk_1EB126290, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A52F8E10;
    *(v8 + 32) = *sub_1A3E5C914();
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1A3D43BC8();
  sub_1A418EA00(0, &unk_1EB126F60, MEMORY[0x1E69E62F8]);
  sub_1A418E98C();
  return sub_1A524E224();
}

unint64_t sub_1A418E98C()
{
  result = qword_1EB126F58;
  if (!qword_1EB126F58)
  {
    sub_1A418EA00(255, &unk_1EB126F60, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126F58);
  }

  return result;
}

void sub_1A418EA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PhotosCollectionPreviewPlayer.Options);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A418EA54()
{
  v1 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7974706D45;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 3:
    case 15:
    case 18:
    case 19:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0xD000000000000011;
    case 2:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6F65505F64656546;
    case 4:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6576455F64656546;
    case 5:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6972545F64656546;
    case 6:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      v6 = 1684366662;
      goto LABEL_18;
    case 7:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x64654D5F64656546;
    case 8:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6974555F64656546;
    case 9:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6C61575F64656546;
    case 10:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6F6F425F64656546;
    case 11:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6165535F64656546;
    case 12:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0x6F68505F64697247;
    case 13:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0xD00000000000001CLL;
    case 14:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      return 0xD00000000000001ALL;
    case 16:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      v6 = 1684632135;
LABEL_18:
      result = v6 | 0x6D654D5F00000000;
      break;
    case 17:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x7265505F64697247;
      break;
    case 20:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000017;
      break;
    case 21:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x7055656E4FLL;
      break;
    case 22:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x6C5079726F6D654DLL;
      break;
    case 23:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000019;
      break;
    case 24:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      sub_1A47E3C0C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 25:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 7364941;
      break;
    case 26:
      sub_1A47E510C();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 27:
    case 34:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000010;
      break;
    case 28:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x6C43695F64697247;
      break;
    case 29:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x425F726F74696445;
      break;
    case 30:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000015;
      break;
    case 31:
    case 32:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000012;
      break;
    case 33:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x706D495F64697247;
      break;
    case 35:
    case 36:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD000000000000014;
      break;
    case 37:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0xD00000000000001BLL;
      break;
    case 38:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x69566D6F74737543;
      break;
    case 39:
      return result;
    case 40:
      result = 0x697463656C6C6F43;
      break;
    default:
      sub_1A4192C4C(v3, type metadata accessor for LemonadeNavigationDestination);
      result = 0x626C415F64656546;
      break;
  }

  return result;
}

void sub_1A418F3D8(uint64_t a1)
{
  v105 = a1;
  v104 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v101 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A418E1E0(v106, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = *v17;
      v62 = *(v17 + 1);
      v64 = *(v17 + 2);
      v63 = *(v17 + 3);
      MEMORY[0x1A590A010](1);
      *&v111 = v19;
      *(&v111 + 1) = v62;
      *&v112 = v64;
      *(&v112 + 1) = v63;
      sub_1A4192A48();
      goto LABEL_25;
    case 2u:
      v48 = *v17;
      v49 = *(v17 + 1);
      v50 = *(v17 + 2);
      v51 = v17[24];
      MEMORY[0x1A590A010](2);
      *&v111 = v48;
      *(&v111 + 1) = v49;
      *&v112 = v50;
      BYTE8(v112) = v51;
      sub_1A3C3682C();
      v52 = &unk_1EB133DA0;
      v53 = sub_1A3C3682C;
      goto LABEL_22;
    case 3u:
      v55 = *v17;
      v56 = *(v17 + 1);
      v57 = *(v17 + 2);
      v58 = v17[24];
      MEMORY[0x1A590A010](3);
      *&v111 = v55;
      *(&v111 + 1) = v56;
      *&v112 = v57;
      BYTE8(v112) = v58;
      sub_1A3C47924();
      v52 = &unk_1EB133D98;
      v53 = sub_1A3C47924;
LABEL_22:
      sub_1A3C36C5C(v52, v53);
      goto LABEL_37;
    case 4u:
      v31 = *v17;
      v32 = v17[8];
      v34 = *(v17 + 2);
      v33 = *(v17 + 3);
      v35 = *(v17 + 4);
      v36 = *(v17 + 5);
      v37 = *(v17 + 6);
      MEMORY[0x1A590A010](4);
      *&v111 = v31;
      BYTE8(v111) = v32;
      *&v112 = v34;
      *(&v112 + 1) = v33;
      *&v113 = v35;
      *(&v113 + 1) = v36;
      *v114 = v37;
      sub_1A41929F4();
      goto LABEL_30;
    case 5u:
      v72 = *v17;
      v73 = v17[8];
      v75 = *(v17 + 2);
      v74 = *(v17 + 3);
      v76 = *(v17 + 4);
      v77 = *(v17 + 5);
      v78 = *(v17 + 6);
      MEMORY[0x1A590A010](5);
      *&v111 = v72;
      BYTE8(v111) = v73;
      *&v112 = v75;
      *(&v112 + 1) = v74;
      *&v113 = v76;
      *(&v113 + 1) = v77;
      *v114 = v78;
      sub_1A41929A0();
LABEL_30:
      sub_1A524C4B4();

      goto LABEL_38;
    case 6u:
      v80 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v80;
      *&v114[9] = *(v17 + 57);
      v81 = *(v17 + 1);
      v111 = *v17;
      v112 = v81;
      MEMORY[0x1A590A010](6);
      v109 = v113;
      *v110 = *v114;
      *&v110[9] = *&v114[9];
      v108 = v112;
      v107 = v111;
      sub_1A41928F8();
      sub_1A524C4B4();
      sub_1A419294C(&v111);
      return;
    case 7u:
      v59 = *v17;
      v60 = *(v17 + 1);
      v61 = *(v17 + 2);
      MEMORY[0x1A590A010](7);
      *&v111 = v59;
      *(&v111 + 1) = v60;
      *&v112 = v61;
      sub_1A41928A4();
      goto LABEL_37;
    case 8u:
      v87 = *v17;
      v88 = *(v17 + 1);
      v89 = *(v17 + 2);
      MEMORY[0x1A590A010](8);
      *&v111 = v87;
      *(&v111 + 1) = v88;
      *&v112 = v89;
      sub_1A4192850();
      goto LABEL_37;
    case 9u:
      v41 = *v17;
      v42 = *(v17 + 1);
      v43 = *(v17 + 2);
      MEMORY[0x1A590A010](9);
      *&v111 = v41;
      *(&v111 + 1) = v42;
      *&v112 = v43;
      sub_1A41927FC();
      goto LABEL_37;
    case 0xAu:
      v84 = *v17;
      v85 = *(v17 + 1);
      v86 = *(v17 + 2);
      MEMORY[0x1A590A010](10);
      *&v111 = v84;
      *(&v111 + 1) = v85;
      *&v112 = v86;
      sub_1A41927A8();
LABEL_37:
      sub_1A524C4B4();
LABEL_38:

      goto LABEL_52;
    case 0xBu:
      v29 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v29;
      *&v114[16] = *(v17 + 4);
      v30 = *(v17 + 1);
      v111 = *v17;
      v112 = v30;
      MEMORY[0x1A590A010](11);
      v109 = v113;
      *v110 = *v114;
      *&v110[16] = *&v114[16];
      v108 = v112;
      v107 = v111;
      sub_1A4192700();
      sub_1A524C4B4();
      sub_1A4192754(&v111);
      return;
    case 0xCu:
      v39 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v39;
      *&v114[16] = *(v17 + 4);
      *&v115 = *(v17 + 10);
      v40 = *(v17 + 1);
      v111 = *v17;
      v112 = v40;
      MEMORY[0x1A590A010](12);
      sub_1A41926AC();
      sub_1A524C4B4();
      sub_1A3EEDCF8(&v111);
      return;
    case 0xDu:
      sub_1A4192644(v17, v14, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      MEMORY[0x1A590A010](13);
      sub_1A3C36C5C(&unk_1EB125FB0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      sub_1A524C4B4();
      sub_1A4192C4C(v14, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      return;
    case 0xEu:
      sub_1A4192644(v17, v11, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      MEMORY[0x1A590A010](14);
      sub_1A3C36C5C(&unk_1EB12AD38, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      sub_1A524C4B4();
      sub_1A4192C4C(v11, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      return;
    case 0xFu:
      sub_1A4192644(v17, v8, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      MEMORY[0x1A590A010](15);
      sub_1A3C36C5C(&qword_1EB133D48, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      sub_1A524C4B4();
      v54 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_56;
    case 0x10u:
      sub_1A4192644(v17, v5, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      MEMORY[0x1A590A010](16);
      sub_1A3C36C5C(&qword_1EB12AD58, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      sub_1A524C4B4();
      sub_1A4192C4C(v5, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      return;
    case 0x11u:
      v66 = *v17;
      v67 = v17[8];
      MEMORY[0x1A590A010](17);
      *&v111 = v66;
      BYTE8(v111) = v67;
      sub_1A41925F0();
      sub_1A524C4B4();

      return;
    case 0x12u:
      v82 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v82;
      *&v114[16] = *(v17 + 8);
      v83 = *(v17 + 1);
      v111 = *v17;
      v112 = v83;
      MEMORY[0x1A590A010](18);
      sub_1A419259C();
      sub_1A524C4B4();
      sub_1A3EEDBFC(&v111);
      return;
    case 0x13u:
      v94 = *v17;
      v93 = *(v17 + 1);
      v95 = *(v17 + 2);
      v71 = *(v17 + 3);
      MEMORY[0x1A590A010](19);
      *&v111 = v94;
      *(&v111 + 1) = v93;
      *&v112 = v95;
      *(&v112 + 1) = v71;
      sub_1A4192548();
      sub_1A524C4B4();

      goto LABEL_45;
    case 0x14u:
      v68 = *v17;
      v69 = *(v17 + 1);
      v70 = *(v17 + 2);
      v71 = *(v17 + 3);
      MEMORY[0x1A590A010](20);
      *&v111 = v68;
      *(&v111 + 1) = v69;
      *&v112 = v70;
      *(&v112 + 1) = v71;
      sub_1A41924F4();
      sub_1A524C4B4();

LABEL_45:

      return;
    case 0x15u:
      v79 = *(v17 + 1);
      v111 = *v17;
      v112 = v79;
      *&v113 = *(v17 + 4);
      MEMORY[0x1A590A010](21);
      v107 = v111;
      v108 = v112;
      *&v109 = v113;
      sub_1A41924A0();
      sub_1A524C4B4();
      sub_1A3EED05C(&v111);
      return;
    case 0x16u:
      v8 = v101;
      sub_1A4192644(v17, v101, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      MEMORY[0x1A590A010](22);
      sub_1A3C36C5C(&qword_1EB133D20, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      sub_1A524C4B4();
      v54 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
      goto LABEL_56;
    case 0x17u:
      v96 = *v17;
      v97 = *(v17 + 1);
      v98 = v17[16];
      MEMORY[0x1A590A010](23);
      *&v111 = v96;
      *(&v111 + 1) = v97;
      LOBYTE(v112) = v98;
      sub_1A419244C();
      sub_1A524C4B4();
      sub_1A4030DDC(v96, v97, v98);
      return;
    case 0x18u:
      v47 = *v17;
      MEMORY[0x1A590A010](24);
      *&v111 = v47;
      sub_1A41923F8();
      goto LABEL_51;
    case 0x19u:
      v44 = *(v17 + 5);
      *&v114[16] = *(v17 + 4);
      v115 = v44;
      v116[0] = *(v17 + 6);
      *(v116 + 11) = *(v17 + 107);
      v45 = *(v17 + 1);
      v111 = *v17;
      v112 = v45;
      v46 = *(v17 + 3);
      v113 = *(v17 + 2);
      *v114 = v46;
      MEMORY[0x1A590A010](25);
      sub_1A41923A4();
      sub_1A524C4B4();
      sub_1A3EED784(&v111);
      return;
    case 0x1Au:
      v8 = v103;
      sub_1A4192644(v17, v103, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      MEMORY[0x1A590A010](26);
      sub_1A3C36C5C(&qword_1EB133D00, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      sub_1A524C4B4();
      v54 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
LABEL_56:
      sub_1A4192C4C(v8, v54);
      return;
    case 0x1Bu:
      v27 = *v17;
      MEMORY[0x1A590A010](28);
      *&v111 = v27;
      sub_1A4192350();
      goto LABEL_51;
    case 0x1Cu:
      v99 = *v17;
      MEMORY[0x1A590A010](29);
      *&v111 = v99;
      sub_1A41922FC();
      goto LABEL_48;
    case 0x1Du:
      v90 = *v17;
      v91 = 30;
      goto LABEL_50;
    case 0x1Eu:
      v90 = *v17;
      v91 = 31;
LABEL_50:
      MEMORY[0x1A590A010](v91);
      *&v111 = v90;
      sub_1A41922A8();
      goto LABEL_51;
    case 0x1Fu:
      v65 = *v17;
      MEMORY[0x1A590A010](32);
      *&v111 = v65;
      sub_1A4192254();
      goto LABEL_48;
    case 0x20u:
      v92 = *v17;
      MEMORY[0x1A590A010](33);
      *&v111 = v92;
      sub_1A4192200();
LABEL_51:
      sub_1A524C4B4();
LABEL_52:

      return;
    case 0x21u:
      v22 = *v17;
      v23 = 34;
      goto LABEL_11;
    case 0x22u:
      v28 = *v17;
      MEMORY[0x1A590A010](35);
      *&v111 = v28;
      sub_1A41921AC();
LABEL_48:
      sub_1A524C4B4();
      swift_unknownObjectRelease();
      return;
    case 0x23u:
      v19 = *v17;
      v24 = *(v17 + 1);
      v26 = *(v17 + 2);
      v25 = *(v17 + 3);
      MEMORY[0x1A590A010](36);
      *&v111 = v19;
      *(&v111 + 1) = v24;
      *&v112 = v26;
      *(&v112 + 1) = v25;
      sub_1A4192158();
      goto LABEL_25;
    case 0x24u:
      v22 = *v17;
      v23 = 37;
      goto LABEL_11;
    case 0x25u:
      v22 = *v17;
      v23 = 38;
LABEL_11:
      MEMORY[0x1A590A010](v23);
      sub_1A524DC04();

      return;
    case 0x26u:
      v100 = *(v17 + 1);
      v111 = *v17;
      v112 = v100;
      v113 = *(v17 + 2);
      *v114 = *(v17 + 6);
      MEMORY[0x1A590A010](39);
      sub_1A4192104();
      sub_1A524C4B4();
      sub_1A3EED4A4(&v111);
      return;
    case 0x27u:
      v38 = 27;
      goto LABEL_43;
    case 0x28u:
      v38 = 40;
LABEL_43:
      MEMORY[0x1A590A010](v38);
      break;
    default:
      v19 = *v17;
      v18 = *(v17 + 1);
      v21 = *(v17 + 2);
      v20 = *(v17 + 3);
      MEMORY[0x1A590A010](0);
      *&v111 = v19;
      *(&v111 + 1) = v18;
      *&v112 = v21;
      *(&v112 + 1) = v20;
      sub_1A4192A9C();
LABEL_25:
      sub_1A524C4B4();

      break;
  }
}

uint64_t sub_1A419036C()
{
  sub_1A524EC94();
  sub_1A418F3D8(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A41903B0()
{
  sub_1A524EC94();
  sub_1A418F3D8(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A41903FC@<X0>(void *a1@<X8>)
{
  if ([v1 px_isBookmarksFolder] || objc_msgSend(v1, sel_px_isUtilitiesFolder) || objc_msgSend(v1, sel_px_isMediaTypesFolder))
  {

    PXDisplayCollectionDetailedCountsMake(v3);
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    type metadata accessor for LemonadeNavigationDestination();
  }

  else if ([v1 px_isSharedAlbumsFolder])
  {

    PXDisplayCollectionDetailedCountsMake(v1);
    *a1 = v7;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v10;
    type metadata accessor for LemonadeNavigationDestination();
  }

  else
  {
    if (([v1 px_isAllMacSyncedAlbumsFolder] & 1) == 0 && (objc_msgSend(v1, sel_px_isMacSyncedFacesFolder) & 1) == 0)
    {
      [v1 px_isMacSyncedEventsFolder];
    }

    v11 = v1;
    PXDisplayCollectionDetailedCountsMake(v1);
    *a1 = v12;
    a1[1] = v13;
    a1[2] = v14;
    a1[3] = v15;
    type metadata accessor for LemonadeNavigationDestination();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A419061C(uint64_t a1, uint64_t *a2)
{
  v292 = a1;
  v293 = a2;
  v2 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v258 = &v248 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v257 = &v248 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v256);
  v255 = &v248 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v254);
  v253 = &v248 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v252);
  v251 = &v248 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v250);
  v249 = &v248 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v291);
  v290 = (&v248 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v289 = (&v248 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v287 = (&v248 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v288 = (&v248 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v286 = (&v248 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v285 = (&v248 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v284 = (&v248 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v282 = (&v248 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v280 = (&v248 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v279 = (&v248 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v278 = (&v248 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v276 = (&v248 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v283 = &v248 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v281 = &v248 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v274 = &v248 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v273 = &v248 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v277 = &v248 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v275 = &v248 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v269 = (&v248 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v267 = (&v248 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v271 = (&v248 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v265 = &v248 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v272 = &v248 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v270 = &v248 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v268 = &v248 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v266 = &v248 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v264 = &v248 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v263 = (&v248 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v262 = (&v248 - v66);
  MEMORY[0x1EEE9AC00](v67);
  v261 = (&v248 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v260 = (&v248 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v259 = (&v248 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v75 = (&v248 - v74);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v248 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v248 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v248 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v248 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v248 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = (&v248 - v92);
  sub_1A4192BE8();
  MEMORY[0x1EEE9AC00](v94 - 8);
  v96 = &v248 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = &v96[*(v97 + 56)];
  sub_1A418E1E0(v292, v96);
  v99 = v293;
  v293 = v98;
  sub_1A418E1E0(v99, v98);
  v100 = v96;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A418E1E0(v96, v90);
      v171 = *v90;
      v172 = *(v90 + 1);
      v173 = *(v90 + 3);
      v174 = v293;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v175 = *(v90 + 2);
        v101 = *v174;
        v108 = sub_1A4244FF4(v171, v172, v175, v173, *v174, v174[1], v174[2], v174[3]);

        goto LABEL_50;
      }

      goto LABEL_116;
    case 2u:
      sub_1A418E1E0(v96, v87);
      v150 = *v87;
      v151 = *(v87 + 2);
      v152 = v293;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_69;
      }

      v153 = v87[24];
      v154 = *(v87 + 1);
      v156 = *v152;
      v155 = v152[1];
      v157 = v152[2];
      v158 = *(v152 + 24);
      *&v298 = v150;
      *(&v298 + 1) = v154;
      *&v299 = v151;
      BYTE8(v299) = v153;
      *&v304 = v156;
      *(&v304 + 1) = v155;
      *&v305 = v157;
      BYTE8(v305) = v158;
      sub_1A3C36888();
      goto LABEL_41;
    case 3u:
      sub_1A418E1E0(v96, v84);
      v161 = *v84;
      v162 = *(v84 + 2);
      v163 = v293;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_69;
      }

      v164 = v84[24];
      v165 = *(v84 + 1);
      v167 = *v163;
      v166 = v163[1];
      v168 = v163[2];
      v169 = *(v163 + 24);
      *&v298 = v161;
      *(&v298 + 1) = v165;
      *&v299 = v162;
      BYTE8(v299) = v164;
      *&v304 = v167;
      *(&v304 + 1) = v166;
      *&v305 = v168;
      BYTE8(v305) = v169;
      type metadata accessor for LemonadeSocialGroupsShelfProvider();
      sub_1A3C36C5C(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
LABEL_41:
      v170 = sub_1A414D090(&v298, &v304);
      goto LABEL_68;
    case 4u:
      sub_1A418E1E0(v96, v81);
      v134 = *(v81 + 1);
      v304 = *v81;
      v305 = v134;
      v306 = *(v81 + 2);
      *v307 = *(v81 + 6);
      v135 = v293;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v136 = *(v135 + 1);
        v298 = *v135;
        v299 = v136;
        v300 = *(v135 + 2);
        *&v301[0] = v135[6];
        v108 = sub_1A4333B0C(&v304, &v298);
        sub_1A4192D00(&v298);
        sub_1A4192D00(&v304);
        goto LABEL_97;
      }

      sub_1A4192D00(&v304);
      goto LABEL_116;
    case 5u:
      sub_1A418E1E0(v96, v78);
      v195 = *(v78 + 1);
      v304 = *v78;
      v305 = v195;
      v306 = *(v78 + 2);
      *v307 = *(v78 + 6);
      v196 = v293;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v197 = *(v196 + 1);
        v298 = *v196;
        v299 = v197;
        v300 = *(v196 + 2);
        *&v301[0] = v196[6];
        v108 = sub_1A4333B0C(&v304, &v298);
        sub_1A4192CAC(&v298);
        sub_1A4192CAC(&v304);
        goto LABEL_97;
      }

      sub_1A4192CAC(&v304);
      goto LABEL_116;
    case 6u:
      sub_1A418E1E0(v96, v75);
      v206 = v75[3];
      v306 = v75[2];
      *v307 = v206;
      *&v307[9] = *(v75 + 57);
      v207 = v75[1];
      v304 = *v75;
      v305 = v207;
      v208 = v293;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v209 = *(v208 + 3);
        v300 = *(v208 + 2);
        v301[0] = v209;
        *(v301 + 9) = *(v208 + 57);
        v210 = *(v208 + 1);
        v298 = *v208;
        v299 = v210;
        v108 = sub_1A45A422C(&v304, &v298);
        sub_1A419294C(&v298);
        sub_1A419294C(&v304);
        goto LABEL_97;
      }

      sub_1A419294C(&v304);
      goto LABEL_116;
    case 7u:
      v141 = v259;
      sub_1A418E1E0(v96, v259);
      v142 = *v141;
      v143 = v141[2];
      v144 = v293;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    case 8u:
      v141 = v260;
      sub_1A418E1E0(v96, v260);
      v142 = *v141;
      v143 = v141[2];
      v144 = v293;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    case 9u:
      v141 = v261;
      sub_1A418E1E0(v96, v261);
      v142 = *v141;
      v143 = v141[2];
      v144 = v293;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_67;
      }

      goto LABEL_69;
    case 0xAu:
      v141 = v262;
      sub_1A418E1E0(v96, v262);
      v142 = *v141;
      v143 = v141[2];
      v144 = v293;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
LABEL_67:
        v170 = sub_1A3D66174(v142, v141[1], v143, *v144, v144[1], v144[2]);
LABEL_68:
        v108 = v170;

        goto LABEL_97;
      }

LABEL_69:

LABEL_70:

      goto LABEL_116;
    case 0xBu:
      v128 = v263;
      sub_1A418E1E0(v96, v263);
      v129 = v128[3];
      v306 = v128[2];
      *v307 = v129;
      *&v307[16] = v128[4];
      v130 = v128[1];
      v304 = *v128;
      v305 = v130;
      v131 = v293;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v132 = *(v131 + 3);
        v300 = *(v131 + 2);
        v301[0] = v132;
        v301[1] = *(v131 + 4);
        v133 = *(v131 + 1);
        v298 = *v131;
        v299 = v133;
        v108 = sub_1A3F3A748(&v304, &v298);
        sub_1A4192754(&v298);
        sub_1A4192754(&v304);
        goto LABEL_97;
      }

      sub_1A4192754(&v304);
      goto LABEL_116;
    case 0xCu:
      v137 = v264;
      sub_1A418E1E0(v96, v264);
      v138 = v293;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v139 = *(v138 + 3);
        v300 = *(v138 + 2);
        v301[0] = v139;
        v301[1] = *(v138 + 4);
        *&v302 = v138[10];
        v140 = *(v138 + 1);
        v298 = *v138;
        v299 = v140;
        v108 = static LemonadePhotosGridConfiguration.== infix(_:_:)(v137, &v298);
        sub_1A3EEDCF8(&v298);
        sub_1A3EEDCF8(v137);
        goto LABEL_97;
      }

      sub_1A3EEDCF8(v137);
      goto LABEL_116;
    case 0xDu:
      v119 = v266;
      sub_1A418E1E0(v96, v266);
      v204 = v293;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v121 = v249;
        sub_1A4192644(v204, v249, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
        v205 = sub_1A3C36C5C(&qword_1EB125FA0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v250, v205);
        v123 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration;
        goto LABEL_96;
      }

      v246 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration;
      goto LABEL_115;
    case 0xEu:
      v119 = v268;
      sub_1A418E1E0(v96, v268);
      v124 = v293;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v121 = v251;
        sub_1A4192644(v124, v251, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
        v125 = sub_1A3C36C5C(&unk_1EB12AD20, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v252, v125);
        v123 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration;
        goto LABEL_96;
      }

      v246 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration;
      goto LABEL_115;
    case 0xFu:
      v119 = v270;
      sub_1A418E1E0(v96, v270);
      v159 = v293;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v121 = v253;
        sub_1A4192644(v159, v253, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
        v160 = sub_1A3C36C5C(&qword_1EB12E448, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v254, v160);
        v123 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
        goto LABEL_96;
      }

      v246 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_115;
    case 0x10u:
      v119 = v272;
      sub_1A418E1E0(v96, v272);
      v120 = v293;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v121 = v255;
        sub_1A4192644(v120, v255, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
        v122 = sub_1A3C36C5C(&qword_1EB12AD48, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
        v108 = static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(v119, v121, v256, v122);
        v123 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
        goto LABEL_96;
      }

      v246 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
      goto LABEL_115;
    case 0x11u:
      v180 = v265;
      sub_1A418E1E0(v96, v265);
      v101 = *v180;
      v181 = v293;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_51;
      }

      v182 = *(v180 + 8);
      v183 = *v181;
      v184 = *(v181 + 8);
      *&v298 = v101;
      BYTE8(v298) = v182;
      *&v304 = v183;
      BYTE8(v304) = v184;
      v108 = static LemonadePhotosPersonGridConfiguration.== infix(_:_:)(&v298, &v304);

      goto LABEL_50;
    case 0x12u:
      v211 = v271;
      sub_1A418E1E0(v96, v271);
      v212 = v293;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v213 = *(v212 + 3);
        v300 = *(v212 + 2);
        v301[0] = v213;
        *&v301[1] = v212[8];
        v214 = *(v212 + 1);
        v298 = *v212;
        v299 = v214;
        v108 = static LemonadePeoplePhotosPagingGridConfiguration.== infix(_:_:)(v211, &v298);
        sub_1A3EEDBFC(&v298);
        sub_1A3EEDBFC(v211);
        goto LABEL_97;
      }

      sub_1A3EEDBFC(v211);
      goto LABEL_116;
    case 0x13u:
      v220 = v267;
      sub_1A418E1E0(v96, v267);
      v222 = v220[1];
      v221 = v220[2];
      v188 = v220[3];
      v223 = v293;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_82;
      }

      v224 = *v220;
      v225 = *v223;
      v226 = v223[1];
      v227 = v223[2];
      v194 = v223[3];
      *&v298 = v224;
      *(&v298 + 1) = v222;
      *&v299 = v221;
      *(&v299 + 1) = v188;
      *&v304 = v225;
      *(&v304 + 1) = v226;
      *&v305 = v227;
      *(&v305 + 1) = v194;
      v108 = static LemonadeUserAlbumsPhotosPagingGridConfiguration.== infix(_:_:)(&v298, &v304);

      goto LABEL_81;
    case 0x14u:
      v185 = v269;
      sub_1A418E1E0(v96, v269);
      v186 = *v185;
      v187 = v185[2];
      v188 = v185[3];
      v189 = v293;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
LABEL_82:

        goto LABEL_116;
      }

      v190 = v185[1];
      v192 = *v189;
      v191 = v189[1];
      v193 = v189[2];
      v194 = v189[3];
      *&v298 = v186;
      *(&v298 + 1) = v190;
      *&v299 = v187;
      *(&v299 + 1) = v188;
      *&v304 = v192;
      *(&v304 + 1) = v191;
      *&v305 = v193;
      *(&v305 + 1) = v194;
      v108 = static LemonadeSharedAlbumsPhotosPagingGridConfiguration.== infix(_:_:)(&v298, &v304);

LABEL_81:

      goto LABEL_97;
    case 0x15u:
      v198 = v275;
      sub_1A418E1E0(v96, v275);
      v199 = *(v198 + 16);
      v298 = *v198;
      v299 = v199;
      *&v300 = *(v198 + 32);
      v200 = v293;
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        v201 = *(v200 + 1);
        v304 = *v200;
        v305 = v201;
        *&v306 = v200[4];
        v202 = *(v198 + 16);
        v296[0] = *v198;
        v296[1] = v202;
        v297 = *(v198 + 32);
        v203 = *(v200 + 1);
        v294[0] = *v200;
        v294[1] = v203;
        v295 = v200[4];
        v108 = static LemonadeOneUpConfiguration.== infix(_:_:)(v296, v294);
        sub_1A3EED05C(&v304);
        sub_1A3EED05C(&v298);
        goto LABEL_97;
      }

      sub_1A3EED05C(&v298);
      goto LABEL_116;
    case 0x16u:
      v119 = v277;
      sub_1A418E1E0(v96, v277);
      v219 = v293;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v121 = v257;
        sub_1A4192644(v219, v257, type metadata accessor for LemonadeMemoryPlayerConfiguration);
        v108 = static LemonadeMemoryPlayerConfiguration.== infix(_:_:)();
        v123 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
        goto LABEL_96;
      }

      v246 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
      goto LABEL_115;
    case 0x17u:
      v228 = v273;
      sub_1A418E1E0(v96, v273);
      v230 = *v228;
      v229 = *(v228 + 8);
      v231 = *(v228 + 16);
      v232 = v293;
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        v233 = *v232;
        v234 = v232[1];
        v235 = *(v232 + 16);
        *&v298 = v230;
        *(&v298 + 1) = v229;
        LOBYTE(v299) = v231;
        *&v304 = v233;
        *(&v304 + 1) = v234;
        LOBYTE(v305) = v235;
        v108 = static LemonadeSharedAlbumsActivityFeedConfiguration.== infix(_:_:)(&v298, &v304);
        sub_1A4030DDC(v233, v234, v235);
        sub_1A4030DDC(v230, v229, v231);
        goto LABEL_97;
      }

      sub_1A4030DDC(v230, v229, v231);
      goto LABEL_116;
    case 0x18u:
      sub_1A418E1E0(v96, v274);
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_70;
      }

      v113 = sub_1A49C55A8();
      goto LABEL_91;
    case 0x19u:
      v145 = v281;
      sub_1A418E1E0(v96, v281);
      v146 = v293;
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        v147 = *(v146 + 5);
        v301[1] = *(v146 + 4);
        v302 = v147;
        v303[0] = *(v146 + 6);
        *(v303 + 11) = *(v146 + 107);
        v148 = *(v146 + 1);
        v298 = *v146;
        v299 = v148;
        v149 = *(v146 + 3);
        v300 = *(v146 + 2);
        v301[0] = v149;
        v108 = static LemonadeMapConfiguration.== infix(_:_:)();
        sub_1A3EED784(&v298);
        sub_1A3EED784(v145);
        goto LABEL_97;
      }

      sub_1A3EED784(v145);
      goto LABEL_116;
    case 0x1Au:
      v119 = v283;
      sub_1A418E1E0(v96, v283);
      v244 = v293;
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        v121 = v258;
        sub_1A4192644(v244, v258, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
        v108 = static LemonadeGenerativeMemoriesConfiguration.== infix(_:_:)(v119, v121);
        v123 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
LABEL_96:
        v245 = v123;
        sub_1A4192C4C(v121, v123);
        sub_1A4192C4C(v119, v245);
        goto LABEL_97;
      }

      v246 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
LABEL_115:
      sub_1A4192C4C(v119, v246);
      goto LABEL_116;
    case 0x1Bu:
      v110 = v276;
      sub_1A418E1E0(v96, v276);
      v111 = *v110;
      v112 = v293;
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_12;
      }

      goto LABEL_70;
    case 0x1Cu:
      v236 = v278;
      sub_1A418E1E0(v96, v278);
      v237 = *v236;
      v238 = v293;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_88;
      }

      v239 = *v238;
      *&v298 = v237;
      *&v304 = v239;
      v118 = static LemonadeICloudLinkGridConfiguration.== infix(_:_:)(&v298, &v304);
      goto LABEL_87;
    case 0x1Du:
      v240 = v279;
      sub_1A418E1E0(v96, v279);
      v216 = *v240;
      v217 = v293;
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_90;
      }

      goto LABEL_70;
    case 0x1Eu:
      v215 = v280;
      sub_1A418E1E0(v96, v280);
      v216 = *v215;
      v217 = v293;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_70;
      }

LABEL_90:
      v113 = sub_1A411FEF4(v216, *v217);
      goto LABEL_91;
    case 0x1Fu:
      v176 = v282;
      sub_1A418E1E0(v96, v282);
      v177 = *v176;
      v178 = v293;
      if (swift_getEnumCaseMultiPayload() != 31)
      {
        goto LABEL_88;
      }

      v179 = *v178;
      *&v298 = v177;
      *&v304 = v179;
      v118 = static LemonadeSharedWithYouGridConfiguration.== infix(_:_:)(&v298, &v304);
      goto LABEL_87;
    case 0x20u:
      v218 = v284;
      sub_1A418E1E0(v96, v284);
      v111 = *v218;
      v112 = v293;
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_70;
      }

LABEL_12:
      v113 = sub_1A43C8984(v111, *v112);
LABEL_91:
      v108 = v113;

      goto LABEL_97;
    case 0x21u:
      v126 = v285;
      sub_1A418E1E0(v96, v285);
      v101 = *v126;
      v106 = v293;
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        goto LABEL_20;
      }

      goto LABEL_51;
    case 0x22u:
      v114 = v286;
      sub_1A418E1E0(v96, v286);
      v115 = *v114;
      v116 = v293;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
LABEL_88:
        swift_unknownObjectRelease();
        goto LABEL_116;
      }

      v117 = *v116;
      *&v298 = v115;
      *&v304 = v117;
      v118 = static LemonadeWallpaperEditorConfiguration.== infix(_:_:)(&v298, &v304);
LABEL_87:
      v108 = v118;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_97;
    case 0x23u:
      v93 = v288;
      sub_1A418E1E0(v96, v288);
      v101 = *v93;
      v102 = v93[1];
      v103 = v93[3];
      v104 = v293;
      if (swift_getEnumCaseMultiPayload() == 35)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 0x24u:
      v109 = v287;
      sub_1A418E1E0(v96, v287);
      v101 = *v109;
      v106 = v293;
      if (swift_getEnumCaseMultiPayload() == 36)
      {
        goto LABEL_20;
      }

      goto LABEL_51;
    case 0x25u:
      v105 = v289;
      sub_1A418E1E0(v96, v289);
      v101 = *v105;
      v106 = v293;
      if (swift_getEnumCaseMultiPayload() == 37)
      {
LABEL_20:
        v127 = *v106;
        sub_1A3C52C70(0, &qword_1EB12B160);
        v108 = sub_1A524DBF4();

        goto LABEL_97;
      }

LABEL_51:

      goto LABEL_116;
    case 0x26u:
      v241 = v290;
      sub_1A418E1E0(v96, v290);
      v242 = v293;
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        v243 = *(v242 + 1);
        v298 = *v242;
        v299 = v243;
        v300 = *(v242 + 2);
        *&v301[0] = v242[6];
        v108 = sub_1A43F82E4(v241, &v298);
        sub_1A3EED4A4(&v298);
        sub_1A3EED4A4(v241);
        goto LABEL_97;
      }

      sub_1A3EED4A4(v241);
      goto LABEL_116;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_78;
      }

      goto LABEL_116;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() != 40)
      {
        goto LABEL_116;
      }

LABEL_78:
      sub_1A4192C4C(v96, type metadata accessor for LemonadeNavigationDestination);
      v108 = 1;
      return v108 & 1;
    default:
      sub_1A418E1E0(v96, v93);
      v101 = *v93;
      v102 = v93[1];
      v103 = v93[3];
      v104 = v293;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_8:

LABEL_116:
        sub_1A4192C4C(v100, sub_1A4192BE8);
        v108 = 0;
      }

      else
      {
LABEL_7:
        v107 = *v104;
        v108 = sub_1A43D906C(v101, v102, v93[2], v103, *v104, v104[1], v104[2], v104[3]);

LABEL_50:
LABEL_97:
        sub_1A4192C4C(v100, type metadata accessor for LemonadeNavigationDestination);
      }

      return v108 & 1;
  }
}

unint64_t sub_1A4192104()
{
  result = qword_1EB133CC0;
  if (!qword_1EB133CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CC0);
  }

  return result;
}

unint64_t sub_1A4192158()
{
  result = qword_1EB133CC8;
  if (!qword_1EB133CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CC8);
  }

  return result;
}

unint64_t sub_1A41921AC()
{
  result = qword_1EB133CD0;
  if (!qword_1EB133CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CD0);
  }

  return result;
}

unint64_t sub_1A4192200()
{
  result = qword_1EB133CD8;
  if (!qword_1EB133CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CD8);
  }

  return result;
}

unint64_t sub_1A4192254()
{
  result = qword_1EB133CE0;
  if (!qword_1EB133CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CE0);
  }

  return result;
}

unint64_t sub_1A41922A8()
{
  result = qword_1EB133CE8;
  if (!qword_1EB133CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CE8);
  }

  return result;
}

unint64_t sub_1A41922FC()
{
  result = qword_1EB133CF0;
  if (!qword_1EB133CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CF0);
  }

  return result;
}

unint64_t sub_1A4192350()
{
  result = qword_1EB133CF8;
  if (!qword_1EB133CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133CF8);
  }

  return result;
}

unint64_t sub_1A41923A4()
{
  result = qword_1EB133D08;
  if (!qword_1EB133D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D08);
  }

  return result;
}

unint64_t sub_1A41923F8()
{
  result = qword_1EB133D10;
  if (!qword_1EB133D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D10);
  }

  return result;
}

unint64_t sub_1A419244C()
{
  result = qword_1EB133D18;
  if (!qword_1EB133D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D18);
  }

  return result;
}

unint64_t sub_1A41924A0()
{
  result = qword_1EB133D28;
  if (!qword_1EB133D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D28);
  }

  return result;
}

unint64_t sub_1A41924F4()
{
  result = qword_1EB133D30;
  if (!qword_1EB133D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D30);
  }

  return result;
}

unint64_t sub_1A4192548()
{
  result = qword_1EB12AE80;
  if (!qword_1EB12AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE80);
  }

  return result;
}

unint64_t sub_1A419259C()
{
  result = qword_1EB133D38;
  if (!qword_1EB133D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D38);
  }

  return result;
}

unint64_t sub_1A41925F0()
{
  result = qword_1EB133D40;
  if (!qword_1EB133D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D40);
  }

  return result;
}

uint64_t sub_1A4192644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41926AC()
{
  result = qword_1EB133D50;
  if (!qword_1EB133D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D50);
  }

  return result;
}

unint64_t sub_1A4192700()
{
  result = qword_1EB133D58;
  if (!qword_1EB133D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D58);
  }

  return result;
}

unint64_t sub_1A41927A8()
{
  result = qword_1EB133D60;
  if (!qword_1EB133D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D60);
  }

  return result;
}

unint64_t sub_1A41927FC()
{
  result = qword_1EB133D68;
  if (!qword_1EB133D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D68);
  }

  return result;
}

unint64_t sub_1A4192850()
{
  result = qword_1EB133D70;
  if (!qword_1EB133D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D70);
  }

  return result;
}

unint64_t sub_1A41928A4()
{
  result = qword_1EB133D78;
  if (!qword_1EB133D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D78);
  }

  return result;
}

unint64_t sub_1A41928F8()
{
  result = qword_1EB133D80;
  if (!qword_1EB133D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D80);
  }

  return result;
}

unint64_t sub_1A41929A0()
{
  result = qword_1EB133D88;
  if (!qword_1EB133D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D88);
  }

  return result;
}

unint64_t sub_1A41929F4()
{
  result = qword_1EB133D90;
  if (!qword_1EB133D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133D90);
  }

  return result;
}

unint64_t sub_1A4192A48()
{
  result = qword_1EB133DA8;
  if (!qword_1EB133DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DA8);
  }

  return result;
}

unint64_t sub_1A4192A9C()
{
  result = qword_1EB133DB0;
  if (!qword_1EB133DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DB0);
  }

  return result;
}

unint64_t sub_1A4192B84()
{
  result = qword_1EB133DB8;
  if (!qword_1EB133DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB133DB8);
  }

  return result;
}

void sub_1A4192BE8()
{
  if (!qword_1EB129888)
  {
    type metadata accessor for LemonadeNavigationDestination();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB129888);
    }
  }
}

uint64_t sub_1A4192C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4192D54(uint64_t a1@<X8>)
{
  type metadata accessor for SharedLibrarySuggestionsItemList();
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  sub_1A52458F4();
}

uint64_t type metadata accessor for SharedLibrarySuggestionsItemList()
{
  result = qword_1EB17BAD0;
  if (!qword_1EB17BAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4192F48@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    v3 = *v2 + 48 * result;
    v4 = *(v3 + 40);
    v6 = *(v3 + 64);
    v5 = *(v3 + 72);
    *a2 = *(v3 + 32);
    *(a2 + 8) = v4;
    *(a2 + 16) = *(v3 + 48);
    *(a2 + 32) = v6;
    *(a2 + 40) = v5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

unint64_t sub_1A4193060()
{
  result = qword_1EB129670;
  if (!qword_1EB129670)
  {
    type metadata accessor for SharedLibrarySuggestionsItemList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129670);
  }

  return result;
}

void sub_1A41930E0()
{
  sub_1A4193220(319, &unk_1EB120CB0, &type metadata for SharedLibrarySuggestionItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1A3DB7EF8();
    if (v1 <= 0x3F)
    {
      sub_1A4193220(319, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1A4193220(319, &qword_1EB1255E8, &type metadata for SharedLibrarySuggestionItem, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A5245EC4();
        }
      }
    }
  }
}

void sub_1A4193220(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A419327C@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  v7 = MEMORY[0x1E697DCC0];
  sub_1A419B518(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v12 - v9);
  *v10 = swift_getKeyPath();
  sub_1A419B518(0, &qword_1EB128AA0, v6, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1A419685C(v10, v5);
  sub_1A419B714(v10, &qword_1EB124870, v6, v7, sub_1A419B518);
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x1E69C2210])
  {
    *a1 = 1;
  }

  else
  {
    *a1 = 0;
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t static LemonadeSegmentedControlPickerStyle.platformDefault.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  v7 = MEMORY[0x1E697DCC0];
  sub_1A419B518(0, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v12 - v9);
  *v10 = swift_getKeyPath();
  sub_1A419B518(0, &qword_1EB128AA0, v6, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1A419685C(v10, v5);
  sub_1A419B714(v10, &qword_1EB124870, v6, v7, sub_1A419B518);
  result = (*(v3 + 88))(v5, v2);
  if (result == *MEMORY[0x1E69C2210])
  {
    *a1 = 1;
  }

  else
  {
    *a1 = 0;
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

int *LemonadeSegmentedControl.init(pickedItem:availableItems:disabledItems:onItemRepicked:pickerStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  v14 = sub_1A524B974();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for LemonadeSegmentedControl();
  *(a7 + result[9]) = a2;
  *(a7 + result[10]) = a3;
  v16 = (a7 + result[11]);
  *v16 = a4;
  v16[1] = a5;
  *(a7 + result[12]) = v13;
  return result;
}

uint64_t LemonadeSegmentedControl.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for LemonadeSegmentedControl.PillPicker();
  v51 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - v10;
  v11 = type metadata accessor for LemonadeSegmentedControl.StandardPicker();
  v61 = v6;
  v12 = sub_1A5249754();
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v49 - v13;
  v14 = sub_1A524B974();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - v16;
  v59 = v11;
  v50 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v52 = &v49 - v22;
  v60 = v12;
  v23 = sub_1A5249754();
  v57 = *(v23 - 8);
  v58 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v49 - v24;
  if (!*(v2 + *(a1 + 48)))
  {
    sub_1A524B924();
    v35 = *(v2 + *(a1 + 36));
    v36 = swift_allocObject();
    *(v36 + 16) = v4;
    *(v36 + 24) = v5;
    (*(v15 + 32))(v20, v17, v14);
    v37 = type metadata accessor for LemonadeSegmentedControl.StandardPicker();
    *&v20[*(v37 + 36)] = v35;
    v38 = &v20[*(v37 + 40)];
    *v38 = sub_1A4199270;
    v38[1] = v36;
    v39 = v59;
    swift_getWitnessTable();
    (*(v50 + 16))(v52, v20, v39);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(v2 + *(a1 + 48)) != 1)
  {
    sub_1A524B924();
    v40 = *(v2 + *(a1 + 36));
    (*(v15 + 32))(v8, v17, v14);
    v41 = v61;
    *&v8[*(v61 + 36)] = v40;
    swift_getWitnessTable();
    (*(v51 + 16))(v53, v8, v41);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A5249434();
  v25 = sub_1A524A444();
  v27 = v26;
  v69[0] = v25;
  v69[1] = v26;
  v29 = v28 & 1;
  v70 = v28 & 1;
  v71 = v30;
  WitnessTable = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v67 = WitnessTable;
  v68 = v32;
  v33 = v60;
  swift_getWitnessTable();
  v34 = v56;
  sub_1A3DF4890(v69, v33, MEMORY[0x1E6981148]);
  sub_1A3E04DF4(v25, v27, v29);

  v42 = v62;
  v44 = v57;
  v43 = v58;
  v45 = MEMORY[0x1E6981138];
  v46 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v65 = v46;
  v66 = v47;
  v63 = swift_getWitnessTable();
  v64 = v45;
  swift_getWitnessTable();
  (*(v44 + 16))(v42, v34, v43);
  return (*(v44 + 8))(v34, v43);
}

uint64_t sub_1A4194020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1A5249804();
  v58 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v57 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = sub_1A524CB74();
  v7 = *(a1 + 24);
  v8 = *(v7 + 8);
  v9 = MEMORY[0x1E6981148];
  v72 = MEMORY[0x1E6981148];
  v73 = v5;
  v10 = MEMORY[0x1E6981138];
  v74 = MEMORY[0x1E6981138];
  v75 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v72 = v6;
  v73 = v5;
  v74 = OpaqueTypeMetadata2;
  v75 = WitnessTable;
  v76 = v8;
  v13 = sub_1A524B9D4();
  v72 = v9;
  v73 = v5;
  v74 = v10;
  v75 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable();
  v72 = v9;
  v73 = v5;
  v54 = v13;
  v74 = v13;
  v75 = v10;
  v56 = v8;
  v76 = v8;
  v77 = v14;
  v49[1] = v14;
  v15 = sub_1A524B824();
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = v49 - v16;
  v17 = swift_getWitnessTable();
  v65 = v15;
  v66 = v3;
  v72 = v15;
  v73 = v3;
  v69 = v17;
  v74 = v17;
  v75 = MEMORY[0x1E697C6A0];
  v18 = swift_getOpaqueTypeMetadata2();
  v55 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v53 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51 = v49 - v21;
  v22 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v49[0] = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v24);
  v68 = v49 - v25;
  v62 = v7;
  v26 = type metadata accessor for UIKitSegmentedControl();
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v64 = v18;
  v63 = sub_1A5249754();
  v61 = *(v63 - 8);
  v28 = MEMORY[0x1EEE9AC00](v63);
  v59 = v49 - v29;
  if (MEMORY[0x1A590D320](v28))
  {
    v57 = *(v60 + *(a1 + 36));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A5249434();
  v30 = sub_1A524B924();
  MEMORY[0x1EEE9AC00](v30);
  v31 = v50;
  sub_1A524B804();
  v32 = v57;
  sub_1A52497F4();
  v33 = v53;
  v35 = v65;
  v34 = v66;
  v36 = v69;
  v37 = MEMORY[0x1E697C6A0];
  sub_1A524A9A4();
  (*(v58 + 8))(v32, v34);
  (*(v52 + 8))(v31, v35);
  v72 = v35;
  v73 = v34;
  v74 = v36;
  v75 = v37;
  v68 = swift_getOpaqueTypeConformance2();
  v38 = v55;
  v39 = *(v55 + 16);
  v40 = v51;
  v41 = v64;
  v39(v51, v33, v64);
  v42 = *(v38 + 8);
  v42(v33, v41);
  v39(v33, v40, v41);
  swift_getWitnessTable();
  v43 = v59;
  sub_1A3DF4890(v33, v26, v41);
  v42(v33, v41);
  v42(v40, v41);
  v44 = swift_getWitnessTable();
  v72 = v35;
  v73 = v34;
  v74 = v69;
  v75 = MEMORY[0x1E697C6A0];
  v45 = swift_getOpaqueTypeConformance2();
  v70 = v44;
  v71 = v45;
  v46 = v63;
  swift_getWitnessTable();
  v47 = v61;
  (*(v61 + 16))(v67, v43, v46);
  return (*(v47 + 8))(v43, v46);
}

id sub_1A4194A24(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = sub_1A524DF24();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v26 = type metadata accessor for LemonadeSegmentedControl.StandardPicker();
  v27 = a2;
  v35[1] = *(a2 + *(v26 + 36));
  v28 = a3;
  v14 = sub_1A524CB74();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5907CC0](v35, v14, WitnessTable);
  v34 = v35[0];
  sub_1A524E734();
  sub_1A524E704();
  v16 = sub_1A524E724();
  v17 = (v9 + 32);
  v29 = TupleTypeMetadata2 - 8;
  v30 = v16;
  v18 = (v5 + 32);
  v19 = (v5 + 8);
  for (i = v28; ; (*v19)(v7, i))
  {
    v21 = v31;
    sub_1A524E714();
    (*v17)(v13, v21, v32);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v22 = *v13;
    (*v18)(v7, &v13[*(TupleTypeMetadata2 + 48)], i);
    (*(v27 + *(v26 + 40)))(v7);
    v23 = sub_1A524C634();

    [v33 setTitle:v23 forSegmentAtIndex:v22];
  }

  return [v33 _setUseGlass_];
}

void sub_1A4194D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A524CB74();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  v5 = sub_1A524B9D4();
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for LemonadeSegmentedControl.StandardPicker();
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4195024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a4;
  v6 = *(a3 + 8);
  v26 = a1;
  v27 = v6;
  v29 = MEMORY[0x1E6981148];
  v30 = a2;
  v31 = MEMORY[0x1E6981138];
  v32 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v29 = (*(a3 + 16))(a2, a3, v12);
  v30 = v15;
  sub_1A3D5F9DC();
  v16 = sub_1A524A464();
  v18 = v17;
  v29 = v16;
  v30 = v17;
  v20 = v19 & 1;
  LOBYTE(v31) = v19 & 1;
  v32 = v21;
  sub_1A4195244(v26, 1, MEMORY[0x1E6981148], a2, MEMORY[0x1E6981138]);
  sub_1A3E04DF4(v16, v18, v20);

  v22 = *(v8 + 16);
  v22(v14, v10, OpaqueTypeMetadata2);
  v23 = *(v8 + 8);
  v23(v10, OpaqueTypeMetadata2);
  v22(v28, v14, OpaqueTypeMetadata2);
  return (v23)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_1A4195244(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5249C74();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x1A5906490](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1A4195400@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = *(a1 + 16);
  v4 = sub_1A524CB74();
  sub_1A419A278(255, &qword_1EB133DC8, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F960]);
  v6 = v5;
  WitnessTable = swift_getWitnessTable();
  v25 = *(a1 + 24);
  v8 = *(v25 + 8);
  v33 = v4;
  v34 = v3;
  v35 = v6;
  v36 = WitnessTable;
  v37 = v8;
  sub_1A524B9D4();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  v9 = sub_1A524B784();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = sub_1A5248804();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1A5249314();
  v28 = v3;
  v29 = v25;
  v30 = v26;
  sub_1A524B774();
  sub_1A524A064();
  v20 = swift_getWitnessTable();
  sub_1A524B0D4();
  (*(v10 + 8))(v12, v9);
  v31 = v20;
  v32 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v21 = *(v14 + 16);
  v21(v19, v16, v13);
  v22 = *(v14 + 8);
  v22(v16, v13);
  v21(v27, v19, v13);
  return (v22)(v19, v13);
}

void sub_1A4195790(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for LemonadeSegmentedControl.PillPicker();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v20 - v9;
  v10 = sub_1A524CB74();
  v28 = v10;
  sub_1A419A278(255, &qword_1EB133DC8, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F960]);
  v12 = v11;
  v27 = v11;
  WitnessTable = swift_getWitnessTable();
  v25 = *(a3 + 8);
  v21 = a3;
  v32 = v10;
  v33 = a2;
  v34 = v12;
  v35 = WitnessTable;
  v36 = v25;
  v13 = sub_1A524B9D4();
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v24 = &v20 - v15;
  v32 = *(a1 + *(v7 + 36));
  v30 = a2;
  v31 = a3;
  KeyPath = swift_getKeyPath();
  v16 = v23;
  (*(v8 + 16))(v23, a1, v7);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v21;
  *(v18 + 16) = a2;
  *(v18 + 24) = v19;
  (*(v8 + 32))(v18 + v17, v16, v7);
  sub_1A419A764();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4195BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a5;
  v9 = sub_1A5249544();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A419A54C(0);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A419A278(0, &qword_1EB133E20, sub_1A419A230, sub_1A419A54C, MEMORY[0x1E697F948]);
  v99 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v76 - v14;
  v15 = sub_1A5249524();
  v87 = *(v15 - 8);
  v88 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A5249E64();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LemonadeSegmentedControl.PillPicker();
  v19 = *(v18 - 8);
  v90 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v76 - v20;
  sub_1A419B6C0(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v95 = *(v21 - 8);
  v96 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v76 - v22;
  sub_1A419A2FC(0);
  v80 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v81 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A419A230(0);
  v98 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a3 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v93 = v18;
  v30 = sub_1A524B974();
  v92 = a2;
  MEMORY[0x1A5906C60](v30);
  v31 = sub_1A524C594();
  (*(v27 + 8))(&v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v32 = *(a4 + 16);
  v97 = a4;
  v103 = v32(a3);
  v104 = v33;
  v34 = v91;
  if (v31)
  {
    v35 = v93;
    (*(v19 + 16))(v91, v92, v93);
    (*(v27 + 16))(&v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v36 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v37 = (v90 + *(v27 + 80) + v36) & ~*(v27 + 80);
    v38 = swift_allocObject();
    v39 = v97;
    *(v38 + 16) = a3;
    *(v38 + 24) = v39;
    (*(v19 + 32))(v38 + v36, v34, v35);
    (*(v27 + 32))(v38 + v37, &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_1A3D5F9DC();
    v40 = v94;
    sub_1A524B754();
    v41 = v77;
    sub_1A5249E54();
    sub_1A3D6E520();
    sub_1A419A504(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    v42 = v81;
    v43 = v96;
    v44 = v79;
    sub_1A524A934();
    (*(v78 + 8))(v41, v44);
    (*(v95 + 8))(v40, v43);
    sub_1A419A3D0(0);
    v46 = (v42 + *(v45 + 36));
    v47 = MEMORY[0x1E6980A08];
    sub_1A419B518(0, &qword_1EB127838, MEMORY[0x1E697C2B0], MEMORY[0x1E6980A08]);
    sub_1A5248B14();
    *v46 = swift_getKeyPath();
    v48 = (v42 + *(v80 + 36));
    sub_1A419B518(0, &qword_1EB127880, MEMORY[0x1E697DC30], v47);
    v50 = *(v49 + 28);
    v51 = *MEMORY[0x1E697DC28];
    v52 = sub_1A5247E14();
    (*(*(v52 - 8) + 104))(v48 + v50, v51, v52);
    *v48 = swift_getKeyPath();
    v53 = v86;
    sub_1A52494E4();
    sub_1A419AB6C(&qword_1EB133E00, sub_1A419A2FC, sub_1A419A938);
    v54 = v82;
    sub_1A524AAF4();
    (*(v87 + 8))(v53, v88);
    sub_1A419AF44(v42, sub_1A419A2FC);
    sub_1A419AFA4(v54, v100, sub_1A419A230);
    swift_storeEnumTagMultiPayload();
    sub_1A419A858();
    sub_1A419AB6C(&qword_1EB133E10, sub_1A419A54C, sub_1A419ABF0);
    sub_1A5249744();
    v55 = sub_1A419A230;
    v56 = v54;
  }

  else
  {
    v57 = v93;
    (*(v19 + 16))(v91, v92, v93);
    (*(v27 + 16))(&v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v58 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v59 = (v90 + *(v27 + 80) + v58) & ~*(v27 + 80);
    v60 = swift_allocObject();
    v61 = v97;
    *(v60 + 16) = a3;
    *(v60 + 24) = v61;
    (*(v19 + 32))(v60 + v58, v34, v57);
    (*(v27 + 32))(v60 + v59, &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    sub_1A3D5F9DC();
    v62 = v94;
    sub_1A524B754();
    v63 = v83;
    sub_1A5249534();
    sub_1A3D6E520();
    sub_1A419A504(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    v64 = v89;
    v65 = v96;
    v66 = v85;
    sub_1A524A934();
    (*(v84 + 8))(v63, v66);
    (*(v95 + 8))(v62, v65);
    sub_1A419A588(0);
    v68 = (v64 + *(v67 + 36));
    v69 = MEMORY[0x1E6980A08];
    sub_1A419B518(0, &qword_1EB127838, MEMORY[0x1E697C2B0], MEMORY[0x1E6980A08]);
    sub_1A5248B14();
    *v68 = swift_getKeyPath();
    v70 = (v64 + *(v101 + 36));
    sub_1A419B518(0, &qword_1EB127880, MEMORY[0x1E697DC30], v69);
    v72 = *(v71 + 28);
    v73 = *MEMORY[0x1E697DC28];
    v74 = sub_1A5247E14();
    (*(*(v74 - 8) + 104))(v70 + v72, v73, v74);
    *v70 = swift_getKeyPath();
    sub_1A419AFA4(v64, v100, sub_1A419A54C);
    swift_storeEnumTagMultiPayload();
    sub_1A419A858();
    sub_1A419AB6C(&qword_1EB133E10, sub_1A419A54C, sub_1A419ABF0);
    sub_1A5249744();
    v55 = sub_1A419A54C;
    v56 = v64;
  }

  return sub_1A419AF44(v56, v55);
}

uint64_t sub_1A419685C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1A5249234();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69C2218];
  v7 = MEMORY[0x1E697DCB8];
  sub_1A419B518(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = MEMORY[0x1E697DCC0];
  sub_1A419B518(0, &qword_1EB124870, v6, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1A419B220(a1, &v18 - v13, &qword_1EB124870, v6, v11, sub_1A419B518);
  sub_1A419B220(v14, v10, &qword_1EB128AA0, v6, v7, sub_1A419B518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A419B714(v14, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0], sub_1A419B518);
    v15 = sub_1A5242D14();
    return (*(*(v15 - 8) + 32))(v21, v10, v15);
  }

  else
  {
    sub_1A524D254();
    v17 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v19 + 8))(v5, v20);
    return sub_1A419B714(v14, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0], sub_1A419B518);
  }
}

uint64_t LemonadeSegmentedControlPickerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

double sub_1A4196C44()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[2];
}

uint64_t sub_1A4196D58(double a1)
{
  result = swift_beginAccess();
  if (v1[2] == a1)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 440))(v5);
  }

  return result;
}

void (*sub_1A4196E5C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A4196FAC;
}

uint64_t sub_1A4196FB8()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[24];
}

uint64_t sub_1A4197038@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41970D0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[24] == v2)
  {
    v1[24] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 440))(v5);
  }

  return result;
}

void (*sub_1A41971CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A419731C;
}

uint64_t sub_1A4197378()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[25];
}

uint64_t sub_1A41973F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41974A0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[25] == v2)
  {
    v1[25] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 440))(v5);
  }

  return result;
}

void (*sub_1A419759C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel);
  sub_1A52415F4();

  v4[7] = sub_1A4197328();
  return sub_1A41976EC;
}

uint64_t sub_1A4197748()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[26];
}

uint64_t sub_1A41977C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4197870(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[26] == v2)
  {
    v1[26] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 440))(v5);
  }

  return result;
}

void (*sub_1A419796C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel);
  sub_1A52415F4();

  v4[7] = sub_1A41976F8();
  return sub_1A4197ABC;
}

uint64_t sub_1A4197B18()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_1A4197B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4197C3C(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[4] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 440))(v5);
  }

  return result;
}

void (*sub_1A4197D34(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel);
  sub_1A52415F4();

  v4[7] = sub_1A4197AC8();
  return sub_1A4197E84;
}

uint64_t sub_1A4197E90()
{
  swift_getKeyPath();
  (*(*v0 + 432))();

  swift_beginAccess();
  return v0[5];
}

uint64_t sub_1A4197F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4197FB4(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[5] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 440))(v5);
  }

  return result;
}

void (*sub_1A41980AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 432))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A419A504(&qword_1EB125518, type metadata accessor for LemonadeSegmentedControlModel);
  sub_1A52415F4();

  v4[7] = sub_1A3DE3B2C();
  return sub_1A41981FC;
}

uint64_t sub_1A4198208()
{
  (*(*v0 + 168))(1.0);
  (*(*v0 + 216))(1);
  (*(*v0 + 312))(0);
  (*(*v0 + 360))(0);
  v1 = *(*v0 + 408);

  return v1(0);
}

uint64_t sub_1A419846C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore29LemonadeSegmentedControlModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4198508()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x3FF0000000000000;
  *(v0 + 24) = 1;
  *(v0 + 26) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A4198564@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5249574();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A419B7FC(0, &qword_1EB133E28, &qword_1EB133E30, sub_1A419B0DC, &qword_1EB133E40);
  a1[3] = v3;
  a1[4] = sub_1A419B19C();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = 0;
  *(result + 48) = v5;
  *(result + 56) = v6;
  *(result + 64) = 2;
  *(result + 72) = v5;
  *(result + 80) = v6;
  return result;
}

double sub_1A41986EC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v21 = sub_1A5249574();
  v23 = 1;
  sub_1A419B9F4(0, &qword_1EB133E88, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v4 = v46;
  v5 = v47;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0x20746E6572727543, 0xEE00203A6D657469);
  sub_1A524B6A4();
  sub_1A524E624();
  v6 = sub_1A524A064();
  v39 = v46;
  LOBYTE(v40) = v47;
  *(&v40 + 1) = v31;
  DWORD1(v40) = *(&v31 + 3);
  v7 = MEMORY[0x1E69E7CC0];
  *(&v40 + 1) = &unk_1F16FA738;
  *v41 = MEMORY[0x1E69E7CC0];
  *&v41[16] = 0;
  v41[24] = v3;
  *&v62[9] = *&v41[9];
  v60 = v46;
  v61 = v40;
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  v25[0] = 0;
  *&v25[4] = *(v68 + 3);
  *&v25[1] = v68[0];
  *&v25[8] = MEMORY[0x1E69E7CC0];
  v25[16] = v6;
  *&v25[20] = *&v67[3];
  *&v25[17] = *v67;
  memset(&v25[24], 0, 32);
  v25[56] = 1;
  *v62 = MEMORY[0x1E69E7CC0];
  v63 = v24;
  v64 = *v25;
  *(v66 + 9) = *&v25[41];
  v65 = *&v25[16];
  v66[0] = *&v25[32];
  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  LOBYTE(v47) = 0;
  DWORD1(v47) = *(v68 + 3);
  *(&v47 + 1) = v68[0];
  *(&v47 + 1) = MEMORY[0x1E69E7CC0];
  v48[0] = v6;
  *&v48[4] = *&v67[3];
  *&v48[1] = *v67;
  memset(&v48[8], 0, 32);
  v48[40] = 1;
  sub_1A419B89C(&v39, v22, sub_1A419B610);
  v8 = MEMORY[0x1E697E5E0];
  v9 = MEMORY[0x1E697E830];
  sub_1A419B220(&v24, v22, &qword_1EB128720, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830], sub_1A419B6C0);
  sub_1A419B714(&v46, &qword_1EB128720, v8, v9, sub_1A419B6C0);
  *v22 = v4;
  v22[16] = v5;
  *&v22[17] = v31;
  *&v22[20] = *(&v31 + 3);
  *&v22[24] = &unk_1F16FA738;
  *&v22[32] = v7;
  *&v22[48] = 0;
  v22[56] = v3;
  sub_1A419B994(v22, sub_1A419B610);
  v37 = v65;
  v38[0] = v66[0];
  *(v38 + 9) = *(v66 + 9);
  v33 = *v62;
  v34 = *&v62[16];
  v35 = v63;
  v36 = v64;
  v31 = v60;
  v32 = v61;
  v44 = v65;
  v45[0] = v66[0];
  *(v45 + 9) = *(v66 + 9);
  *v41 = *v62;
  *&v41[16] = *&v62[16];
  v42 = v63;
  v43 = v64;
  v39 = v60;
  v40 = v61;
  v10 = MEMORY[0x1E6981F40];
  sub_1A419B220(&v31, &v46, &qword_1EB133E60, sub_1A419B57C, MEMORY[0x1E6981F40], sub_1A419B518);
  sub_1A419B714(&v39, &qword_1EB133E60, sub_1A419B57C, v10, sub_1A419B518);
  *&v22[103] = v37;
  *&v22[87] = v36;
  *&v22[39] = v33;
  *&v22[23] = v32;
  *&v22[119] = v38[0];
  *&v22[128] = *(v38 + 9);
  *&v22[55] = v34;
  *&v22[71] = v35;
  *&v22[7] = v31;
  v27 = *&v22[80];
  v28 = *&v22[96];
  v29 = *&v22[112];
  v30 = *(v38 + 9);
  *&v25[17] = *&v22[16];
  *&v25[33] = *&v22[32];
  *&v25[49] = *&v22[48];
  v26 = *&v22[64];
  v24 = v21;
  v25[0] = v23;
  *&v25[1] = *v22;
  v11 = sub_1A524B454();
  sub_1A4198C10(v11, &v46);

  sub_1A419B774(&v24);
  v12 = sub_1A524A064();
  v13 = v57;
  *(a1 + 192) = v56;
  *(a1 + 208) = v13;
  *(a1 + 224) = v58;
  *(a1 + 240) = v59;
  v14 = v53;
  *(a1 + 128) = v52;
  *(a1 + 144) = v14;
  v15 = v55;
  *(a1 + 160) = v54;
  *(a1 + 176) = v15;
  v16 = v49;
  *(a1 + 64) = *&v48[32];
  *(a1 + 80) = v16;
  v17 = v51;
  *(a1 + 96) = v50;
  *(a1 + 112) = v17;
  v18 = v47;
  *a1 = v46;
  *(a1 + 16) = v18;
  v19 = *&v48[16];
  *(a1 + 32) = *v48;
  *(a1 + 48) = v19;
  *(a1 + 248) = v12;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 1;
  return result;
}

uint64_t sub_1A4198C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A5247EE4();
  v5 = v37;
  v6 = v37 * 0.5;
  v7 = v38;
  v8 = DWORD1(v38);
  v9 = *(&v38 + 1);
  v10 = v39;
  v11 = v40;

  v12 = sub_1A524BC74();
  *v41 = v37 * 0.5;
  *(v41 + 1) = v37;
  v41[1] = v38;
  *v42 = v39;
  *&v42[8] = v40;
  *&v42[16] = a1;
  *&v42[24] = 256;
  v35 = v38;
  v36[0] = *v42;
  *(v36 + 10) = *&v42[10];
  v34 = v41[0];
  v13 = v36[0];
  v45 = v36[0];
  v46 = v36[1];
  v43 = v41[0];
  v44 = v38;
  *&v47 = v12;
  *(&v47 + 1) = v14;
  v15 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v15;
  v16 = *(v2 + 32);
  v17 = *(v2 + 48);
  v18 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v18;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  v19 = *(v2 + 96);
  v20 = *(v2 + 112);
  v21 = *(v2 + 128);
  v22 = *(v2 + 144);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 128) = v21;
  *(a2 + 144) = v22;
  *(a2 + 96) = v19;
  *(a2 + 112) = v20;
  v23 = v43;
  *(a2 + 184) = v44;
  v24 = v46;
  *(a2 + 200) = v45;
  *(a2 + 216) = v24;
  *(a2 + 232) = v47;
  *(a2 + 168) = v23;
  v48[0] = v34;
  v48[1] = v35;
  v48[2] = v13;
  v48[3] = v36[1];
  v49 = v12;
  v50 = v14;
  sub_1A419B89C(v41, v26, sub_1A3E73AC0);
  sub_1A419B904(v2, v26);
  sub_1A419B89C(&v43, v26, sub_1A3E73A2C);
  sub_1A419B994(v48, sub_1A3E73A2C);
  *v26 = v6;
  *&v26[1] = v5;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = a1;
  v33 = 256;
  return sub_1A419B994(v26, sub_1A3E73AC0);
}