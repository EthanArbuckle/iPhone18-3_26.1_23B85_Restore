id sub_1A443492C(void *a1)
{
  v3 = *(v1 + 40);
  result = [a1 contactType];
  if (!result)
  {
    v5 = [a1 identifier];
    v6 = sub_1A524C674();
    v8 = v7;

    LOBYTE(v5) = sub_1A3C62374(v6, v8, v3);

    if ((v5 & 1) == 0)
    {
      type metadata accessor for PeopleNamingItem();
      v9 = a1;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

uint64_t sub_1A4434AF4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x198))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4434B9C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1A0);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A4434C80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13A9A0);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3C7146C;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x870))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A4434EC0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4434A94();
  return sub_1A4435078;
}

void sub_1A4435084(uint64_t a1)
{
  v3 = qword_1EB13A9A8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A443513C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A44351A0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1D0);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A443524C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A44350DC();
  return sub_1A4435404;
}

uint64_t sub_1A4435410()
{
  v1 = qword_1EB13A9B0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4435454(char a1)
{
  v3 = qword_1EB13A9B0;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4435504@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4435608(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A44354A4();
  return sub_1A44357C0;
}

uint64_t sub_1A443584C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A443596C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A44357EC();
  return sub_1A4435B24;
}

uint64_t sub_1A4435BB0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A4435CD0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4435B50();
  return sub_1A4435E88;
}

uint64_t sub_1A4435E94()
{
  v1 = qword_1EB13A9C8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4435ED8(char a1)
{
  v3 = qword_1EB13A9C8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4435F88@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x288))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A443608C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4435F28();
  return sub_1A4436244;
}

uint64_t sub_1A44362D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A44363F0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4436270();
  return sub_1A44365A8;
}

uint64_t sub_1A44365B4@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB13A9D8;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A4436608(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB13A9D8;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1A44366B8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A443672C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2F0))(&v4);
}

uint64_t sub_1A44367B0(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA3F8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13A9D8;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x870))(v9);
  }

  return result;
}

void (*sub_1A4436960(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4436658();
  return sub_1A4436B18;
}

uint64_t sub_1A4436B90@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x318))();
  *a2 = result;
  return result;
}

void (*sub_1A4436C9C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4436B30();
  return sub_1A4436E54;
}

uint64_t sub_1A4436E78()
{
  sub_1A4444CFC();
}

uint64_t sub_1A4436EA0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4444CFC();
}

uint64_t sub_1A4436F08(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*((*v3 & *v1) + 0x870))(KeyPath, sub_1A44475A0, &v6, MEMORY[0x1E69E7CA8] + 8);
}

void sub_1A4436FF0(uint64_t a1)
{
  v3 = qword_1EB13A9F0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A44370A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443710C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x380);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4437190(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4444DB8(0, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
  sub_1A4444E20();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13A9F0;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }
}

void (*sub_1A4437378(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437048();
  return sub_1A4437530;
}

void sub_1A443753C(uint64_t a1)
{
  v3 = qword_1EB13A9F8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A44375F4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4437658(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x3B0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A44376DC(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A524DF24();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13A9F8;
    swift_beginAccess();
    v7 = *(v2 + v6);
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }
}

void (*sub_1A44378D8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437594();
  return sub_1A4437A90;
}

uint64_t sub_1A4437A9C()
{
  v1 = qword_1EB13AA00;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4437AE0(char a1)
{
  v3 = qword_1EB13AA00;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4437B90@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4437C94(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437B30();
  return sub_1A4437E4C;
}

uint64_t sub_1A4437ED8@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x408))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_1A3DDBE10;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4437F74(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x410);

  return v6(sub_1A3E30F88, v5);
}

uint64_t sub_1A4438034()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  v3 = (v0 + qword_1EB13AA08);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_1A4438118(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v14 = *((v7 & v5) + 0x50);
  KeyPath = swift_getKeyPath();
  v11 = v2;
  v12 = a1;
  v13 = a2;
  (*((*v6 & *v2) + 0x870))(KeyPath, sub_1A4444F44, &v10, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A443822C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4437E78();
  return sub_1A44383E4;
}

uint64_t sub_1A44383F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13AA10);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_1A44384B0()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4438594@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x438))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4438678(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C398E8(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1A4444FB4();
  v6 = sub_1A524C594();
  if (v6)
  {
    v7 = (v2 + qword_1EB13AA10);
    swift_beginAccess();
    *v7 = a1;
    v7[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v5 & *v2) + 0x870))(v10);
  }
}

void (*sub_1A4438868(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4438450();
  return sub_1A4438A20;
}

uint64_t sub_1A4438AAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A4438BCC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4438A4C();
  return sub_1A4438D84;
}

uint64_t sub_1A4438D90()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x3A8))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 localIdentifier];

  v4 = sub_1A524C674();
  return v4;
}

uint64_t sub_1A4438E54()
{
  v1 = qword_1EB13AA20;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4438E98(char a1)
{
  v3 = qword_1EB13AA20;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A4438F48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A443904C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4438EE8();
  return sub_1A4439204;
}

void sub_1A4439210(uint64_t a1)
{
  v3 = qword_1EB13AA28;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A44392C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4E0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443932C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4E8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A44393B0(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = v7;
  return v7;
}

void sub_1A44394A8(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A4444DB8(0, &qword_1EB126620, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E69E6720]);
  sub_1A3EBA4B8();
  v7 = sub_1A524C594();
  if (v7)
  {
    v8 = *a2;
    swift_beginAccess();
    v9 = *(v4 + v8);
    *(v4 + v8) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v2) + 0x870))(v11);
  }
}

void (*sub_1A443968C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4439268();
  return sub_1A4439844;
}

uint64_t sub_1A4439850()
{
  v1 = v0 + qword_1EB13AA30;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A443989C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + qword_1EB13AA30;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1A4439960@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x510))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1A4439A38()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  v3 = v0 + qword_1EB13AA30;
  swift_beginAccess();
  return *v3;
}

uint64_t sub_1A4439B10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C68BEC(0, &unk_1EB1266F0, type metadata accessor for CGSize, MEMORY[0x1E69E6720]);
  sub_1A3EBA740();
  v9 = sub_1A524C594();
  if (v9)
  {
    v10 = v4 + qword_1EB13AA30;
    result = swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v10[16] = a3 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9);
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v8 & *v4) + 0x870))(v13);
  }

  return result;
}

void (*sub_1A4439D24(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4439900();
  return sub_1A4439EDC;
}

uint64_t sub_1A4439EE8()
{
  result = sub_1A4444CFC();
  if (result)
  {
    v1 = *(*result + 280);

    v3 = v1(v2);

    v4 = *(v3 + 24);
    v5 = v4;

    if (v4 && (v6 = [v5 fetchedObjects], v5, v6))
    {
      sub_1A3C52C70(0, &qword_1EB126660);
      v7 = sub_1A524CA34();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A4439FC8@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EB13AA38;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A443A01C(char *a1)
{
  v2 = *a1;
  v3 = qword_1EB13AA38;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_1A443A0CC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x548))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A443A140(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(&v4);
}

uint64_t sub_1A443A1C4@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v2) + 0x868))(KeyPath);

  v7 = *a1;
  result = swift_beginAccess();
  *a2 = *(v2 + v7);
  return result;
}

uint64_t sub_1A443A29C(char *a1)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *a1;
  swift_beginAccess();
  sub_1A3EBA5E8();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AA38;
    result = swift_beginAccess();
    *(v2 + v6) = v4;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v3 & *v1) + 0x870))(v9);
  }

  return result;
}

void (*sub_1A443A44C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443A06C();
  return sub_1A443A604;
}

uint64_t sub_1A443A610()
{
  v1 = qword_1EB13AA40;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443A654(char a1)
{
  v3 = qword_1EB13AA40;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443A704@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x578))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A443A808(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443A6A4();
  return sub_1A443A9C0;
}

uint64_t sub_1A443A9CC()
{
  v1 = qword_1EB13AA48;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443AA10(char a1)
{
  v3 = qword_1EB13AA48;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443AAC0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5A8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A443ABC4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443AA60();
  return sub_1A443AD7C;
}

uint64_t sub_1A443AD88()
{
  v1 = qword_1EB13AA50;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443ADCC(char a1)
{
  v3 = qword_1EB13AA50;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443AE7C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5D8))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A443AF80(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443AE1C();
  return sub_1A443B138;
}

uint64_t sub_1A443B144()
{
  v1 = qword_1EB13AA58;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443B188(char a1)
{
  v3 = qword_1EB13AA58;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443B238@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x608))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A443B33C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443B1D8();
  return sub_1A443B4F4;
}

uint64_t sub_1A443B56C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x638))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A443B614(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x640);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A443B6F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13AA60);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x870))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A443B938(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443B50C();
  return sub_1A443BAF0;
}

uint64_t sub_1A443BAFC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x650))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A443BBC4()
{
  v1 = qword_1EB13A998;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443BC08(char a1)
{
  v3 = qword_1EB13A998;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443BCB8()
{
  v1 = qword_1EB13AA68;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443BCFC(uint64_t a1)
{
  v3 = qword_1EB13AA68;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443BDAC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x680))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443BE84(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for _PHPickerSourceType(0);
  sub_1A444793C(&qword_1EB12DB98, type metadata accessor for _PHPickerSourceType);
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AA68;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }

  return result;
}

void (*sub_1A443C064(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443BD4C();
  return sub_1A443C21C;
}

uint64_t sub_1A443C228()
{
  v1 = qword_1EB13AA70;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443C26C(char a1)
{
  v3 = qword_1EB13AA70;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443C330@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6B0))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A443C420(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443C2BC();
  return sub_1A443C5D8;
}

uint64_t sub_1A443C5E4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6B8))(1);
  v3 = *((*((*v1 & *v0) + 0x6E0))(v2) + 16);

  (*((*v1 & *v0) + 0x808))(v3);

  return sub_1A443FEA4();
}

uint64_t sub_1A443C6E4(uint64_t a1)
{
  v3 = qword_1EB13AA78;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A443C5E4();
}

uint64_t (*sub_1A443C740(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A443C7A4;
}

uint64_t sub_1A443C7A4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A443C5E4();
  }

  return result;
}

uint64_t sub_1A443C7D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x6E0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443C8BC(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C68BEC(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v4 = sub_1A524C594();
  if (v4)
  {
    return sub_1A443C6E4(a1);
  }

  MEMORY[0x1EEE9AC00](v4);
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*v3 & *v1) + 0x870))(v7);
}

void (*sub_1A443CA88(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443C740(v4);
  return sub_1A443CC40;
}

uint64_t sub_1A443CCB8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x710))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443CD9C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  sub_1A3C68BEC(0, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
  sub_1A3EBA9E0();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AA80;
    swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }
}

void (*sub_1A443CF8C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443CC58();
  return sub_1A443D144;
}

uint64_t sub_1A443D150()
{
  v1 = qword_1EB13AA88;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443D194(char a1)
{
  v3 = qword_1EB13AA88;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443D244@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x740))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A443D320(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A443D410(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v7 = a1 & 1;
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = *a2;
    result = swift_beginAccess();
    *(v4 + v9) = v7;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v6 & *v4) + 0x870))(v12);
  }

  return result;
}

void (*sub_1A443D5C0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443D1E4();
  return sub_1A443D778;
}

uint64_t sub_1A443D7F0@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x770))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A443D898(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x778);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A443D97C(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = (v2 + *a2);
  swift_beginAccess();
  v7 = *v6;
  sub_1A3C66EE8(*v6);
  return v7;
}

uint64_t sub_1A443DA5C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EB13AA90);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (!v6)
  {
    v9 = 0;
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1A3DDBE10;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_1A3DDBE10;
LABEL_6:
  sub_1A3C66EE8(v6);
  sub_1A3C66EE8(a1);
  sub_1A3C33378(v11);
  v12 = sub_1A3C33378(v9);
  MEMORY[0x1EEE9AC00](v12);
  KeyPath = swift_getKeyPath();
  v14 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x870))(v14);
  sub_1A3C33378(a1);
}

void (*sub_1A443DC9C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443D790();
  return sub_1A443DE54;
}

uint64_t sub_1A443DE80(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_1A443DF44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7A0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1A443E03C()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A443E140(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v8 = sub_1A524C594();
  if (v8)
  {
    v9 = (v3 + *a3);
    swift_beginAccess();
    *v9 = a1;
    v9[1] = a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v7 & *v3) + 0x870))(v12);
  }
}

void (*sub_1A443E308(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443DEE4();
  return sub_1A443E4C0;
}

uint64_t sub_1A443E538@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x7D0))();
  *a2 = result;
  return result;
}

void sub_1A443E61C()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A443E710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v15 = *((v9 & v7) + 0x50);
  KeyPath = swift_getKeyPath();
  v13 = v4;
  v14 = a1;
  (*((*v8 & *v4) + 0x870))(KeyPath, a4, &v12, MEMORY[0x1E69E7CA8] + 8);
}

void (*sub_1A443E814(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443E4D8();
  return sub_1A443E9CC;
}

uint64_t sub_1A443E9D8()
{
  v1 = qword_1EB13AAA8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A443EA1C(uint64_t a1)
{
  v3 = qword_1EB13AAA8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A443EACC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x800))();
  *a2 = result;
  return result;
}

uint64_t sub_1A443EBA4(uint64_t a1, uint64_t *a2)
{
  v4 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v4 & *v2) + 0x868))(KeyPath);

  v6 = *a2;
  swift_beginAccess();
  return *(v2 + v6);
}

uint64_t sub_1A443EC6C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  v5 = sub_1A524C594();
  if (v5)
  {
    v6 = qword_1EB13AAA8;
    result = swift_beginAccess();
    *(v2 + v6) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*v4 & *v1) + 0x870))(v9);
  }

  return result;
}

void (*sub_1A443EE18(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = v1;
  v5 = MEMORY[0x1E69E7D40];
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*((*v5 & *v1) + 0x868))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v7);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A443EA6C();
  return sub_1A443EFD0;
}

void sub_1A443EFDC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getKeyPath();
  type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

id LemonadeCollectionCustomizationFoldersModel.init(collection:)(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = (v1 + qword_1EB13A9A0);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + qword_1EB13A9A8) = 0;
  *(v1 + qword_1EB13A9B0) = 1;
  v5 = sub_1A3C38BD4();
  v6 = (v1 + qword_1EB13A9B8);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_1A3C38BD4();
  v9 = (v1 + qword_1EB13A9C0);
  *v9 = v8;
  v9[1] = v10;
  *(v1 + qword_1EB13A9C8) = 1;
  v11 = sub_1A3C38BD4();
  v12 = (v1 + qword_1EB13A9D0);
  *v12 = v11;
  v12[1] = v13;
  *(v1 + qword_1EB13A9D8) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E0) = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E8) = 0;
  v15 = qword_1EB13A9F0;
  *(v1 + qword_1EB13A9F0) = 0;
  *(v1 + qword_1EB13A9F8) = 0;
  *(v1 + qword_1EB13AA00) = 0;
  v16 = (v1 + qword_1EB13AA08);
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  v17 = (v1 + qword_1EB13AA10);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + qword_1EB13AA18);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(v1 + qword_1EB13AA20) = 1;
  *(v1 + qword_1EB13AA28) = 0;
  v19 = v1 + qword_1EB13AA30;
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v1 + qword_1EB13AA38) = 1;
  *(v1 + qword_1EB13AA40) = 0;
  *(v1 + qword_1EB13AA48) = 0;
  *(v1 + qword_1EB13AA50) = 1;
  *(v1 + qword_1EB13AA58) = 0;
  v20 = (v1 + qword_1EB13AA60);
  *v20 = 0;
  v20[1] = 0;
  *(v1 + qword_1EB13A998) = 0;
  *(v1 + qword_1EB13AA68) = 2;
  *(v1 + qword_1EB13AA70) = 0;
  *(v1 + qword_1EB13AA78) = v14;
  *(v1 + qword_1EB13AA80) = v14;
  *(v1 + qword_1EB13AA88) = 1;
  v21 = (v1 + qword_1EB13AA90);
  *v21 = PXDisplayCollectionDetailedCountsMake;
  v21[1] = 0;
  v22 = sub_1A3C38BD4();
  v23 = (v1 + qword_1EB13AA98);
  *v23 = v22;
  v23[1] = v24;
  *(v1 + qword_1EB13AAA0) = v14;
  *(v1 + qword_1EB13AAA8) = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (!result)
  {
    __break(1u);
    return result;
  }

  *(v1 + qword_1EB13A980) = result;

  *(v1 + v15) = 0;
  v26 = *(v3 + 80);
  v68.receiver = v1;
  v68.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  v27 = objc_msgSendSuper2(&v68, sel_init);
  v28 = [a1 photoLibrary];
  if (!v28)
  {
    v44 = sub_1A524D244();
    v45 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v45, v44))
    {
      v46 = v45;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = a1;
      *v48 = a1;
      v49 = a1;
      _os_log_impl(&dword_1A3C1C000, v46, v44, "Folder %@ has no photo library, will not refresh.", v47, 0xCu);
      sub_1A3CB65E4(v48);
      MEMORY[0x1A590EEC0](v48, -1, -1);
      MEMORY[0x1A590EEC0](v47, -1, -1);
    }

    goto LABEL_12;
  }

  v29 = v28;
  v30 = [v28 librarySpecificFetchOptions];
  v31 = objc_opt_self();
  sub_1A3C398E8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A52F8E10;
  v67 = a1;
  v33 = [a1 localIdentifier];
  v34 = v26;
  v35 = sub_1A524C674();
  v37 = v36;

  *(v32 + 32) = v35;
  *(v32 + 40) = v37;
  v26 = v34;
  v38 = sub_1A524CA14();

  v39 = [v31 fetchCollectionListsWithLocalIdentifiers:v38 options:v30];

  v40 = [v39 firstObject];
  if (!v40)
  {
LABEL_9:
    v50 = sub_1A524D244();
    v51 = *sub_1A3CAA3FC();
    v52 = os_log_type_enabled(v51, v50);
    v53 = v51;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v67;
      *v55 = v67;
      v56 = v67;
      _os_log_impl(&dword_1A3C1C000, v53, v50, "Failed to refresh folder %@.", v54, 0xCu);
      sub_1A3CB65E4(v55);
      MEMORY[0x1A590EEC0](v55, -1, -1);
      MEMORY[0x1A590EEC0](v54, -1, -1);
    }

    a1 = v67;
LABEL_12:
    v43 = a1;
    goto LABEL_13;
  }

  v41 = v40;
  v42 = swift_dynamicCastUnknownClass();
  if (!v42)
  {

    goto LABEL_9;
  }

  v43 = v42;

  a1 = v67;
LABEL_13:
  v57 = v43;
  sub_1A44376DC(v43);
  v58 = 0xE000000000000000;
  sub_1A4435944(0, 0xE000000000000000);
  v59 = [v57 localizedTitle];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1A524C674();
    v58 = v62;
  }

  else
  {
    v61 = 0;
  }

  sub_1A4438BA4(v61, v58);
  v63 = sub_1A44453F4(v57);
  sub_1A443C8BC(v63);
  sub_1A443C3F8(0);
  v64 = sub_1A443FC44();
  sub_1A443CD9C(v64);
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v26;
  *(v66 + 24) = v65;

  sub_1A443DA5C(sub_1A4447994, v66);

  return v27;
}

id sub_1A443F868(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = (v1 + qword_1EB13A9A0);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + qword_1EB13A9A8) = 0;
  *(v1 + qword_1EB13A9B0) = 1;
  v5 = sub_1A3C38BD4();
  v6 = (v1 + qword_1EB13A9B8);
  *v6 = v5;
  v6[1] = v7;
  v8 = sub_1A3C38BD4();
  v9 = (v1 + qword_1EB13A9C0);
  *v9 = v8;
  v9[1] = v10;
  *(v1 + qword_1EB13A9C8) = 1;
  v11 = sub_1A3C38BD4();
  v12 = (v1 + qword_1EB13A9D0);
  *v12 = v11;
  v12[1] = v13;
  *(v1 + qword_1EB13A9D8) = 0;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E0) = MEMORY[0x1E69E7CC0];
  *(v1 + qword_1EB13A9E8) = 0;
  v15 = qword_1EB13A9F0;
  *(v1 + qword_1EB13A9F0) = 0;
  *(v1 + qword_1EB13A9F8) = 0;
  *(v1 + qword_1EB13AA00) = 0;
  v16 = (v1 + qword_1EB13AA08);
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  v17 = (v1 + qword_1EB13AA10);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + qword_1EB13AA18);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(v1 + qword_1EB13AA20) = 1;
  *(v1 + qword_1EB13AA28) = 0;
  v19 = v1 + qword_1EB13AA30;
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *(v1 + qword_1EB13AA38) = 1;
  *(v1 + qword_1EB13AA40) = 0;
  *(v1 + qword_1EB13AA48) = 0;
  *(v1 + qword_1EB13AA50) = 1;
  *(v1 + qword_1EB13AA58) = 0;
  v20 = (v1 + qword_1EB13AA60);
  *v20 = 0;
  v20[1] = 0;
  *(v1 + qword_1EB13A998) = 0;
  *(v1 + qword_1EB13AA68) = 2;
  *(v1 + qword_1EB13AA70) = 0;
  *(v1 + qword_1EB13AA78) = v14;
  *(v1 + qword_1EB13AA80) = v14;
  *(v1 + qword_1EB13AA88) = 1;
  v21 = (v1 + qword_1EB13AA90);
  *v21 = PXDisplayCollectionDetailedCountsMake;
  v21[1] = 0;
  v22 = sub_1A3C38BD4();
  v23 = (v1 + qword_1EB13AA98);
  *v23 = v22;
  v23[1] = v24;
  *(v1 + qword_1EB13AAA0) = v14;
  *(v1 + qword_1EB13AAA8) = 0;
  sub_1A5241604();
  result = [a1 photoLibrary];
  if (result)
  {
    *(v1 + qword_1EB13A980) = result;
    v26 = *(v1 + v15);
    v27 = a1;

    *(v1 + v15) = a1;
    v28 = *(v3 + 80);
    v33.receiver = v1;
    v33.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
    v29 = objc_msgSendSuper2(&v33, sel_init);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = v30;
    v32 = v29;

    sub_1A443DA5C(sub_1A44456B4, v31);

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A443FC44()
{
  v1 = sub_1A523FBB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524C2C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + qword_1EB13A980);
  sub_1A524C2A4();
  sub_1A524C254();
  MEMORY[0x1A59075D0](20);
  v10 = sub_1A524C294();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x438))(v10);
  if (v11)
  {
    sub_1A523FB54();
    sub_1A3C68BEC(0, &qword_1EB12E380, MEMORY[0x1E6985D18], MEMORY[0x1E69E6F90]);
    v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A52F8E10;
    (*(v2 + 32))(v13 + v12, v4, v1);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_1A443FEA4()
{
  v1 = *(v0 + qword_1EB13A980);
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6E0))();
  sub_1A4444DB8(0, &qword_1EB129F98, &qword_1EB126660, 0x1E6978630, type metadata accessor for PhotoKitItemListManager);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  memset(&v8[11], 0, 24);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = 4;
  v4 = sub_1A3C52C70(0, &qword_1EB126660);
  v5 = v1;
  sub_1A43FD8EC(v8, v4);
  v6 = PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v5, 0, v9);

  return sub_1A4436F08(v6);
}

uint64_t sub_1A4440014(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v3 = 0;
  v34 = *(a1 + 16);
  v35 = a2;
  v4 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E6158];
  v33 = xmmword_1A52F8E10;
  while (1)
  {
    if (v34 == v3)
    {
LABEL_21:
      v26 = sub_1A3D35BE4(v4);
      sub_1A4440428(v26);

      sub_1A524C674();
      v27 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      v28 = sub_1A524CA14();

      v29 = sub_1A524C634();

      v30 = [v27 initWithObjects:v28 photoLibrary:v35 fetchType:v29 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

      return v30;
    }

    sub_1A523FBB4();
    v6 = [v35 librarySpecificFetchOptions];
    sub_1A3C398E8(0, &qword_1EB12B260, v5, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = v33;
    result = sub_1A523FB64();
    if (!v9)
    {
      break;
    }

    v10 = result;
    v11 = v9;
    v12 = objc_opt_self();
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    v13 = v5;
    v14 = sub_1A524CA14();

    v15 = v6;
    v16 = [v12 fetchAssetCollectionsWithLocalIdentifiers:v14 options:v15];

    v17 = [v16 firstObject];
    if (v17)
    {
      v18 = objc_opt_self();
      v19 = v17;
      v20 = [v18 fetchKeyAssetsInAssetCollection:v19 options:v15];

      if (v20 && (v21 = [v20 firstObject], v20, v21))
      {
        v36 = v21;
        MEMORY[0x1EEE9AC00](v22);
        v31[2] = &v36;
        if (sub_1A40C23C4(sub_1A44474B4, v31, v4))
        {

          if (v4 >> 62)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v25 = v21;
          MEMORY[0x1A5907D70]();
          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          v4 = v37;
          if (v37 >> 62)
          {
LABEL_20:
            v23 = sub_1A524E2B4();
            goto LABEL_14;
          }
        }
      }

      else
      {

        if (v4 >> 62)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

      if (v4 >> 62)
      {
        goto LABEL_20;
      }
    }

    v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:

    ++v3;
    v24 = v23 == v32;
    v5 = v13;
    if (v24)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A4440428(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A524E2B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1A3D3E490(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1A59097F0](i, a1);
        sub_1A3C52C70(0, &qword_1EB126660);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1A3D3E490((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1A3C52C70(0, &qword_1EB126660);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1A3D3E490((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1A3C57128(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1A4440624(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5)
{
  v6 = v5;
  v11 = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x468);
  v13 = v12();
  v15 = v14;

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    (v12)(v16);
    v18 = objc_allocWithZone(PXRenameCollectionAction);
    v19 = sub_1A524C634();

    v20 = [v18 initWithCollection:a1 title:v19];

    if (!v20)
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (!a2)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    v21 = v20;
    MEMORY[0x1A5907D70]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v11 = v42;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_9:
  v22 = objc_allocWithZone(PXEditChildCollectionsAction);
  v23 = a2;
  v24 = [v22 initWithCollectionList:a1 childCollections:v23];
  if (v24)
  {
    v25 = v24;
    MEMORY[0x1A5907D70]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v11 = v42;
  }

  else
  {
  }

LABEL_16:
  if (v11 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_18;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_18:
    v26 = objc_allocWithZone(PXActionGroup);
    sub_1A3C52C70(0, &qword_1EB12DBC0);
    v27 = sub_1A524CA14();

    v28 = [v26 initWithActions_];

    v29 = sub_1A524C634();
    v30 = PXLocalizedString(v29);

    if (!v30)
    {
      sub_1A524C674();
      v30 = sub_1A524C634();
    }

    [v28 setLocalizedActionName_];

    v31 = swift_allocObject();
    v31[2] = v6;
    v31[3] = a1;
    v31[4] = a4;
    v31[5] = a5;
    aBlock[4] = sub_1A44475E4;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_251;
    v32 = _Block_copy(aBlock);
    v33 = v6;
    v34 = a1;

    [v28 executeWithUndoManager:a3 completionHandler:v32];
    _Block_release(v32);

    return;
  }

  v35 = sub_1A524D224();
  v36 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v36, v35))
  {
    v37 = v36;
    v38 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v38 = 136446210;
    v39 = [a1 localIdentifier];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  a4(1, a1);
}

void sub_1A4440B30(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x378))();
  if (v10)
  {
    v11 = v10;
    v12 = *((*v9 & *v4) + 0x468);
    v13 = v12();
    v15 = v14;

    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      (v12)(v16);
    }

    else
    {
      sub_1A3C38BD4();
    }

    v19 = objc_allocWithZone(PXCreateCollectionListAction);
    v20 = a1;
    v21 = v11;
    v22 = sub_1A524C634();

    v23 = [v19 initWithTitle:v22 parentCollectionList:v21 childCollections:v20];

    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a3;
    v24[4] = a4;
    aBlock[4] = sub_1A4445774;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D6084C;
    aBlock[3] = &block_descriptor_186;
    v25 = _Block_copy(aBlock);
    v26 = v23;

    [v26 executeWithUndoManager:a2 completionHandler:v25];
    _Block_release(v25);
    v27 = sub_1A44E6630();
    v28 = *(**v27 + 264);

    v28(aBlock, v29);

    if (LemonadeAlbumsContentFilter.isFilterApplied.getter() && (aBlock[0] = *sub_1A44E72F8(), sub_1A43FED2C(), (sub_1A524E114() & 1) != 0))
    {
      v30 = *v27;

      aBlock[0] = *sub_1A44E6F70();
      (*(*v30 + 272))(aBlock);
    }

    else
    {
    }
  }

  else
  {
    sub_1A524D234();
    v18 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    a3(0, 0);
  }
}

void sub_1A4440ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A523FBB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7D40];
  v14 = 0;
  if ((*((*MEMORY[0x1E69E7D40] & *v4) + 0x6B0))(v10))
  {
    v41 = a3;
    v15 = (*((*v13 & *v4) + 0x6E0))();
    v16 = *(v15 + 16);
    if (v16)
    {
      v38 = a4;
      v39 = a2;
      v40 = v4;
      v18 = *(v9 + 16);
      v17 = v9 + 16;
      v19 = *(v17 + 64);
      v37 = v15;
      v20 = v15 + ((v19 + 32) & ~v19);
      v42 = *(v17 + 56);
      v43 = v18;
      v44 = v17;
      v21 = (v17 - 8);
      v22 = MEMORY[0x1E69E7CC0];
      v18(v12, v20, v8);
      while (1)
      {
        v24 = sub_1A523FB64();
        v26 = v25;
        (*v21)(v12, v8);
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1A3D3D914(0, *(v22 + 2) + 1, 1, v22);
          }

          v28 = *(v22 + 2);
          v27 = *(v22 + 3);
          if (v28 >= v27 >> 1)
          {
            v22 = sub_1A3D3D914((v27 > 1), v28 + 1, 1, v22);
          }

          *(v22 + 2) = v28 + 1;
          v23 = &v22[16 * v28];
          *(v23 + 4) = v24;
          *(v23 + 5) = v26;
        }

        v20 += v42;
        if (!--v16)
        {
          break;
        }

        v43(v12, v20, v8);
      }

      a2 = v39;
      v4 = v40;
      a4 = v38;
    }

    else
    {
    }

    v29 = [*(v4 + qword_1EB13A980) librarySpecificFetchOptions];
    v30 = objc_opt_self();
    v31 = sub_1A524CA14();

    v14 = [v30 fetchAssetCollectionsWithLocalIdentifiers:v31 options:v29];

    a3 = v41;
    v13 = MEMORY[0x1E69E7D40];
  }

  v32 = (*((*v13 & *v4) + 0x3A8))();
  if (v32)
  {
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = a3;
    *(v34 + 24) = a4;
    sub_1A3C66EE8(a3);
    sub_1A4440624(v33, v14, a2, sub_1A4445A74, v34);
  }

  else
  {
    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    *(v35 + 24) = a4;
    v36 = *((*v13 & *v4) + 0x848);
    sub_1A3C66EE8(a3);
    v36(v14, a2, sub_1A4445A6C, v35);
  }
}

void sub_1A44412FC(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB6C8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_257;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A444793C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C68BEC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

void sub_1A4441620(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v22 = v14;
    sub_1A3C52C70(0, &qword_1EB12B180);

    v21 = sub_1A524D474();
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1 & 1;
    *(v17 + 40) = a2;
    aBlock[4] = sub_1A3EBB230;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_264;
    v18 = _Block_copy(aBlock);
    sub_1A3C66EE8(a3);
    v19 = a2;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A444793C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C68BEC(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    v20 = v21;
    MEMORY[0x1A5908800](0, v16, v11, v18);
    _Block_release(v18);

    sub_1A3C33378(a3);
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v16, v22);
  }
}

id LemonadeCollectionCustomizationFoldersModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeCollectionCustomizationFoldersModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeCollectionCustomizationFoldersModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4441B94(uint64_t a1)
{
  sub_1A3C33378(*(a1 + qword_1EB13A9A0));

  sub_1A3C33378(*(a1 + qword_1EB13AA60));

  sub_1A3C33378(*(a1 + qword_1EB13AA90));

  v2 = qword_1EB1C1440;
  v3 = sub_1A5241614();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1A4441D68@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3A8))();
  *a1 = result;
  return result;
}

void (*sub_1A4441E2C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3B8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442048(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x238))();
  return sub_1A3E658B0;
}

void (*sub_1A44421B0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x208))();
  return sub_1A3E658B0;
}

void (*sub_1A4442314(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x268))();
  return sub_1A3E658B0;
}

void (*sub_1A4442478(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x418))();
  return sub_1A3E658B0;
}

void (*sub_1A44425E0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x298))();
  return sub_1A3E658B0;
}

void (*sub_1A44427A0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x478))();
  return sub_1A3E658B0;
}

void (*sub_1A4442918(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x2F8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442A7C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x328))();
  return sub_1A3E658B0;
}

void (*sub_1A4442BE0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1A8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442D44(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x1D8))();
  return sub_1A3E658B0;
}

void (*sub_1A4442F10(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x4F0))();
  return sub_1A3E658B0;
}

void (*sub_1A444307C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x520))();
  return sub_1A3E658B0;
}

void (*sub_1A44431F4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x558))();
  return sub_1A3E658B0;
}

void (*sub_1A44433B8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x588))();
  return sub_1A3E658B0;
}

void (*sub_1A4443520(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5B8))();
  return sub_1A3E658B0;
}

void (*sub_1A4443688(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x3E8))();
  return sub_1A3E658B0;
}

void (*sub_1A44437EC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x6F0))();
  return sub_1A3E658B0;
}

void (*sub_1A4443950(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x720))();
  return sub_1A3E658B0;
}

void (*sub_1A4443AB4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x690))();
  return sub_1A3E658B0;
}

void (*sub_1A4443C1C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x750))();
  return sub_1A3E62A10;
}

void (*sub_1A4443D80(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x780))();
  return sub_1A3E658B0;
}

void (*sub_1A4443EE4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7B0))();
  return sub_1A3E658B0;
}

void (*sub_1A4444048(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x7E0))();
  return sub_1A3E658B0;
}

void (*sub_1A44441D8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x810))();
  return sub_1A3E658B0;
}

void (*sub_1A4444340(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x5E8))();
  return sub_1A3E658B0;
}

void (*sub_1A44444A8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x618))();
  return sub_1A3E658B0;
}

void (*sub_1A444460C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x648))();
  return sub_1A3E658B0;
}

void (*sub_1A4444774(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x660))();
  return sub_1A3E658B0;
}

uint64_t sub_1A4444908@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x480))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1A444496C(uint64_t a1, uint64_t a2)
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

  sub_1A3C398E8(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1A4444A10(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A4444DB8(0, &qword_1EB120C10, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E62F8]);
          sub_1A444751C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A3C52C70(0, &qword_1EB126660);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4444CFC()
{
  v1 = MEMORY[0x1E69E7D40];
  KeyPath = swift_getKeyPath();
  (*((*v1 & *v0) + 0x868))(KeyPath);

  return *(v0 + qword_1EB13A9E8);
}

void sub_1A4444DB8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A4444E20()
{
  result = qword_1EB13A988;
  if (!qword_1EB13A988)
  {
    sub_1A4444DB8(255, &unk_1EB120A60, &qword_1EB120A70, 0x1E6978760, MEMORY[0x1E69E6720]);
    sub_1A3EBA020(&qword_1EB13A990, &qword_1EB120A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A988);
  }

  return result;
}

uint64_t sub_1A4444F44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + qword_1EB13AA08);

  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

unint64_t sub_1A4444FB4()
{
  result = qword_1EB126F90;
  if (!qword_1EB126F90)
  {
    sub_1A3C398E8(255, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126F90);
  }

  return result;
}

uint64_t sub_1A4445118()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + qword_1EB13AA30;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1A4445254(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1A3C66EE8(v3);
  return a1(v3, v4);
}

unint64_t sub_1A44453F4(uint64_t a1)
{
  v2 = sub_1A523FBB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = [objc_opt_self() fetchCollectionsInCollectionList:a1 options:0];
  if ([v9 count] < 1)
  {
    goto LABEL_11;
  }

  result = [v9 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v11 = result;
    if (result)
    {
      v12 = 0;
      v19[2] = v3 + 8;
      v20 = (v3 + 16);
      v19[1] = v3 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      v14 = v9;
      v21 = v11;
      v22 = v9;
      do
      {
        v15 = [v14 objectAtIndex_];
        v16 = [v15 localIdentifier];
        sub_1A524C674();

        sub_1A523FB54();
        (*v20)(v5, v8, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1A3D5BB08(0, v13[2] + 1, 1, v13);
        }

        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          v13 = sub_1A3D5BB08(v17 > 1, v18 + 1, 1, v13);
        }

        ++v12;

        (*(v3 + 8))(v8, v2);
        v13[2] = v18 + 1;
        (*(v3 + 32))(v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v5, v2);
        v14 = v22;
      }

      while (v21 != v12);

      return v13;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

void sub_1A44456B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x588))(v4);
    *v3 = !*v3;
    v2(v4, 0);
  }
}

void sub_1A4445774(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = [*(v2 + 16) createdCollectionList];
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = v6;
      v9 = sub_1A524D224();
      v10 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v10, v9))
      {
        v10;
        v11 = swift_slowAlloc();
        swift_slowAlloc();
        *v11 = 136446210;
        v12 = [v8 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    else
    {
      sub_1A524D244();
      v18 = *sub_1A3CAA3FC();
      sub_1A5246DF4();
    }
  }

  else
  {
    v13 = sub_1A524D244();
    v14 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      *v16 = 136315138;
      v17 = a2;
      sub_1A3C68BEC(0, &qword_1EB139220, sub_1A3DBD9A0, MEMORY[0x1E69E6720]);
      sub_1A524C714();
      sub_1A3C2EF94();
    }
  }

  v5(a1 & 1, v7);
}

uint64_t sub_1A4445AAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4445B04()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

unint64_t sub_1A444751C()
{
  result = qword_1EB13F410;
  if (!qword_1EB13F410)
  {
    sub_1A4444DB8(255, &qword_1EB120C10, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13F410);
  }

  return result;
}

uint64_t sub_1A44475A0()
{
  *(*(v0 + 16) + qword_1EB13A9E8) = *(v0 + 24);
}

void sub_1A44475E4(char a1)
{
  v3 = v1[3];
  v4 = v1[4];
  if ((a1 & 1) == 0)
  {
    v10 = sub_1A524D244();
    v11 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v11, v10))
    {
      log = v11;
      v12 = swift_slowAlloc();
      swift_slowAlloc();
      *v12 = 136315394;
      v13 = [v3 localIdentifier];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    goto LABEL_10;
  }

  v5 = *(v1[2] + qword_1EB13A980);
  v6 = [v3 localIdentifier];
  if (!v6)
  {
    sub_1A524C674();
    v6 = sub_1A524C634();
  }

  v7 = [v5 px:v6 collectionListWithLocalIdentifier:?];

  if (!v7)
  {
    v14 = sub_1A524D244();
    v15 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = v15;
      v17 = swift_slowAlloc();
      swift_slowAlloc();
      *v17 = 136446210;
      v18 = [v3 localIdentifier];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

LABEL_10:
    v8 = v3;
    v9 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = v8;
LABEL_11:
  v4(a1 & 1, v8);
}

uint64_t sub_1A444793C(unint64_t *a1, void (*a2)(uint64_t))
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

id PXGridTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PXGridTipsHelper.shared.getter()
{
  if (qword_1EB18B130 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18B138;

  return v1;
}

uint64_t sub_1A4447B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A3CB8D98(0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A4447C28, v7, v6);
}

uint64_t sub_1A4447C28()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = sub_1A5247414();
  v3 = v2;
  v4 = sub_1A3CB40B4();
  v5 = *v4 == v1 && v4[1] == v3;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    v9 = sub_1A3FD5440();
    (*(v7 + 16))(v6, v9, v8);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v11 = sub_1A4447F90;
LABEL_7:
    v10[1] = v11;

    return MEMORY[0x1EEDE6BA0]();
  }

  v12 = sub_1A3CB3EC8();
  v13 = *v12 == v1 && v12[1] == v3;
  if (v13 || (sub_1A524EAB4() & 1) != 0)
  {
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v0 + 24);

    v17 = sub_1A3FD55DC();
    (*(v15 + 16))(v14, v17, v16);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v11 = sub_1A40A7470;
    goto LABEL_7;
  }

  v18 = sub_1A3C92168();
  v19 = *v18 == v1 && v18[1] == v3;
  if (v19 || (sub_1A524EAB4() & 1) != 0)
  {
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    v22 = *(v0 + 24);

    v23 = sub_1A3FD5C08();
    (*(v21 + 16))(v20, v23, v22);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v11 = sub_1A40A75F4;
    goto LABEL_7;
  }

  v24 = sub_1A3C92768();
  if (*v24 == v1 && v24[1] == v3)
  {

LABEL_26:
    v27 = *(v0 + 32);
    v26 = *(v0 + 40);
    v28 = *(v0 + 24);
    v29 = sub_1A3FD5DCC();
    (*(v27 + 16))(v26, v29, v28);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v11 = sub_1A40A7778;
    goto LABEL_7;
  }

  v25 = sub_1A524EAB4();

  if (v25)
  {
    goto LABEL_26;
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1A4447F90()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A7A80, v6, v5);
}

id PXGridTipsHelper.init()(uint64_t a1)
{
  PXDisplayCollectionDetailedCountsMake(a1);
  PXDisplayCollectionDetailedCountsMake(v2);
  PXDisplayCollectionDetailedCountsMake(v3);
  PXDisplayCollectionDetailedCountsMake(v4);
  v1[OBJC_IVAR___PXGridTipsHelper_Swift_hasStartedTips] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PXGridTipsHelper();
  return objc_msgSendSuper2(&v6, sel_init);
}

id PXGridTipsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXGridTipsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore16PXGridTipsHelperC21setTipActionPerformedyySSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1A5247634();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A45C1604();
  result = swift_beginAccess();
  if (*v11 == 1)
  {
    v13 = sub_1A45C1034();
    swift_beginAccess();
    v14 = *v13;
    if (v14 && *(v14 + 16) && (v15 = sub_1A3C5DCA4(a1, a2), (v16 & 1) != 0))
    {
      sub_1A3C341C8(*(v14 + 56) + 40 * v15, &v22);
      if (*(&v23 + 1))
      {
        sub_1A3C34460(&v22, v25);
        __swift_project_boxed_opaque_existential_1(v25, v25[3]);
        (*(v8 + 104))(v10, *MEMORY[0x1E6982AE0], v7);
        sub_1A5247424();
        (*(v8 + 8))(v10, v7);
        v17 = sub_1A524CCB4();
        (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        sub_1A3C341C8(v25, &v22);
        sub_1A524CC54();
        v18 = sub_1A524CC44();
        v19 = swift_allocObject();
        v20 = MEMORY[0x1E69E85E0];
        *(v19 + 16) = v18;
        *(v19 + 24) = v20;
        sub_1A3C34460(&v22, v19 + 32);
        sub_1A3D4D930(0, 0, v6, &unk_1A533CD50, v19);

        return __swift_destroy_boxed_opaque_existential_0(v25);
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    return sub_1A3CB4DE8(&v22, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  return result;
}

uint64_t sub_1A4448504()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3CA8098;

  return sub_1A4447B34(v2, v3, v4, v0 + 32);
}

uint64_t sub_1A4448594()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6980EF8], v3, v5);
  v8 = sub_1A524A154();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1A524A184();
  v9 = sub_1A524A1C4();
  sub_1A441183C(v2);
  (*(v4 + 8))(v7, v3);
  return v9;
}

void sub_1A44487A0(void *a1, void *a2)
{
  v3 = v2;
  v3[4] = 0;
  v3[5] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[7] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v6 = objc_allocWithZone(PXPhotosGridPeopleBannerProvider);
  v7 = a1;
  v8 = a2;
  v9 = [v6 initWithPerson_];
  v3[6] = v9;
  [v9 setInvalidationDelegate_];
  swift_allocObject();
  swift_weakInit();

  sub_1A524D1A4();
}

uint64_t sub_1A44488A4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v4 = result;
      v5 = [*(result + 24) currentDataSource];
      v6 = [v5 container];

      if (v6)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v8 = v7;
          v9 = *(v4 + 48);
          [v9 setPerson_];

          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1A444899C()
{
  v1[2] = v0;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v1[5] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1A4448A54;

  return sub_1A4448DE0();
}

uint64_t sub_1A4448A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = a3;
  v5[10] = v3;

  v7 = sub_1A524CBC4();
  if (v3)
  {
    v8 = sub_1A4448CF4;
  }

  else
  {
    v8 = sub_1A4448BB8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A4448BB8()
{
  v1 = v0[10];

  sub_1A524CDD4();
  if (v1)
  {
    sub_1A3C6EC48(v0[7], v0[8]);
    v0[11] = v1;
    v2 = sub_1A524CBC4();
    v4 = v3;
    v5 = sub_1A4448D7C;
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[2];
    v10 = v9[7];
    v11 = v9[8];
    v9[7] = v8;
    v9[8] = v7;
    v9[9] = v6;
    sub_1A3C6DD08(v8, v7);
    sub_1A3C6EC48(v10, v11);
    sub_1A444933C();
    sub_1A3C6EC48(v8, v7);
    v2 = sub_1A524CBC4();
    v4 = v12;
    v5 = sub_1A3DDC7D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1A4448CF4()
{

  *(v0 + 88) = *(v0 + 80);
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4448D7C, v2, v1);
}

uint64_t sub_1A4448D7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4448DE0()
{
  v1[19] = v0;
  sub_1A524CC54();
  v1[20] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A4448E78, v3, v2);
}

uint64_t sub_1A4448E78()
{
  v1 = *(v0[19] + 48);
  v0[23] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A4448F90;
  v2 = swift_continuation_init();
  sub_1A4449F4C();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A43001A8;
  v0[13] = &block_descriptor_188;
  v0[14] = v2;
  [v1 loadBannerView_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A4448F90()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1A4449098, v2, v1);
}

uint64_t sub_1A4449098()
{

  v1 = *(v0 + 144);
  if (!v1)
  {

LABEL_5:
    v6 = 0;
    v7 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 184);
    v5 = swift_allocObject();
    v6 = 0;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v7 = sub_1A444A0A4;
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    if (qword_1EB1C16E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB1C16E8);
    v14 = v1;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v1;
      v19 = v14;
      _os_log_impl(&dword_1A3C1C000, v15, v16, "unexpected banner view %@", v17, 0xCu);
      sub_1A3CB65E4(v18);
      MEMORY[0x1A590EEC0](v18, -1, -1);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    v20 = *(v0 + 184);

    goto LABEL_5;
  }

  v9 = v8;
  v10 = *(v0 + 184);
  v5 = swift_allocObject();
  *(v5 + 16) = v10;
  *(v5 + 24) = v9;
  v7 = sub_1A444A050;
  v6 = 1;
LABEL_8:
  v11 = *(v0 + 8);

  return v11(v6, v7, v5);
}

uint64_t sub_1A4449300()
{
  if (*v0)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x6974736567677573;
  }
}

void sub_1A444933C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = type metadata accessor for PhotosViewPersonBannerModel();

    v5 = v1(v4);
    v7 = v6;
    v9 = v8;
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v2 & 1;
    v17 = sub_1A4368F04(v5, v7, v9, sub_1A4449CFC, v11);
    v12 = sub_1A3F97880();
    v14 = v13;
    v16[3] = &type metadata for PhotosViewPersonBannerProvider;
    v16[4] = sub_1A4449EF8();
    v16[0] = v12;
    v16[1] = v14;
    v15 = sub_1A44499E8();
    PXPhotosViewModel.setBanner<A>(model:provider:)(&v17, v16, v3, v15);
  }

  PXPhotosViewModel.removeBanner()();
}

uint64_t sub_1A44494A4()
{
  v0[2] = sub_1A524CC54();
  v0[3] = sub_1A524CC44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1A4449550;

  return sub_1A444899C();
}

uint64_t sub_1A4449550()
{
  *(*v1 + 40) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A44496AC;
  }

  else
  {
    v4 = sub_1A3E539B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A44496AC()
{

  if (qword_1EB1C16E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1C16E8);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Failed to load next banner %@", v8, 0xCu);
    sub_1A3CB65E4(v9);
    MEMORY[0x1A590EEC0](v9, -1, -1);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A4449988()
{
  swift_unknownObjectRelease();

  sub_1A3C6EC48(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

unint64_t sub_1A44499E8()
{
  result = qword_1EB12F588;
  if (!qword_1EB12F588)
  {
    type metadata accessor for PhotosViewPersonBannerModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F588);
  }

  return result;
}

uint64_t sub_1A4449A48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A444899C();
}

void sub_1A4449B2C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  PhotosViewBannerController.isActive.modify(v7, v6, a3);
}

uint64_t sub_1A4449C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A44494A4();
}

uint64_t sub_1A4449CA0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1C16E8);
  __swift_project_value_buffer(v0, qword_1EB1C16E8);
  v1 = *sub_1A4843F98();
  return sub_1A5246F34();
}

uint64_t sub_1A4449CFC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EB1C16E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1A5246F24();
    __swift_project_value_buffer(v1, qword_1EB1C16E8);
    v2 = sub_1A5246F04();
    v3 = sub_1A524D264();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      swift_slowAlloc();
      *v4 = 136315394;
      sub_1A3C2EF94();
    }
  }

  return result;
}

unint64_t sub_1A4449EF8()
{
  result = qword_1EB13AB80;
  if (!qword_1EB13AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AB80);
  }

  return result;
}

void sub_1A4449F4C()
{
  if (!qword_1EB13AB88)
  {
    sub_1A3C5676C(255, &qword_1EB13AB90, sub_1A4449FD0);
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13AB88);
    }
  }
}

unint64_t sub_1A4449FD0()
{
  result = qword_1EB13AB98;
  if (!qword_1EB13AB98)
  {
    sub_1A3C52C70(255, &qword_1EB12B170);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13AB98);
  }

  return result;
}

uint64_t sub_1A444A050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for LegacyPersonActionBannerModel();
  return sub_1A4287ADC(v1, v2);
}

uint64_t sub_1A444A0A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  v3 = sub_1A3F28848(v1, v2);
  sub_1A524CC54();

  v4 = sub_1A524CC44();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = v3;
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_1A524B944();

  return v10;
}

unint64_t sub_1A444A1C8()
{
  result = qword_1EB1C1800[0];
  if (!qword_1EB1C1800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C1800);
  }

  return result;
}

unint64_t sub_1A444A220()
{
  result = qword_1EB13AC08;
  if (!qword_1EB13AC08)
  {
    sub_1A3C4EE68(255, &unk_1EB13AC10, &type metadata for PhotosViewPersonBannerController.PersonSubBanner.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AC08);
  }

  return result;
}

unint64_t sub_1A444A2E0()
{
  result = qword_1EB190F30[0];
  if (!qword_1EB190F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB190F30);
  }

  return result;
}

void PhotosEnvironmentValues.photosCurationContext.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1A444A2E0();
  sub_1A5245BB4();
}

uint64_t sub_1A444A4E8(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___PXComposablePhotosAction_actionsCompleted] = 0;
  v4 = &v1[OBJC_IVAR___PXComposablePhotosAction_completionHandler];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___PXComposablePhotosAction_success] = 2;
  *&v1[OBJC_IVAR___PXComposablePhotosAction_error] = 0;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    LODWORD(v12) = 0;
    v11 = 23;
    sub_1A524E6E4();
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_12:
    v6 = MEMORY[0x1A59097F0](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  v6 = *(a1 + 32);
LABEL_6:
  v7 = v6;
  *&v1[OBJC_IVAR___PXComposablePhotosAction_subActions] = a1;
  if (a1 >> 62)
  {
    v8 = sub_1A524E2B4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v1[OBJC_IVAR___PXComposablePhotosAction_subActionCount] = v8;
  v9 = [v7 photoLibrary];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v13, sel_initWithPhotoLibrary_, v9);

  return v10;
}

uint64_t sub_1A444A6D0()
{
  v0 = sub_1A524D464();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A444B674(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A421EB84(0);
  sub_1A444B674(&qword_1EB126E30, sub_1A421EB84);
  sub_1A524E224();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A524D4B4();
  qword_1EB1C1A18 = result;
  return result;
}

void sub_1A444A93C(char a1, void *a2)
{
  v5 = sub_1A524BFF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB1C1A18;
  *v8 = qword_1EB1C1A18;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1A524C024();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v11 = *(v2 + OBJC_IVAR___PXComposablePhotosAction_success);
    v12 = v11 == 2;
    v13 = v11 & a1;
    if (v12)
    {
      v13 = a1;
    }

    *(v2 + OBJC_IVAR___PXComposablePhotosAction_success) = v13 & 1;
    if (a2)
    {
      v14 = *(v2 + OBJC_IVAR___PXComposablePhotosAction_error);
      *(v2 + OBJC_IVAR___PXComposablePhotosAction_error) = a2;
      v15 = a2;
    }

    v16 = *(v2 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(v2 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted) = v18;
      sub_1A444B264();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A444AAEC(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB1C1A18;
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = a1 & 1;
  *(v10 + 48) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1A444B7A0;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1A3DDBE10;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_38;
  v12 = _Block_copy(aBlock);

  v13 = a2;

  dispatch_sync(v7, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1A444ADA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v22 = a1;
  v10 = (v7 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
  v11 = *(v7 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
  v12 = *(v7 + OBJC_IVAR___PXComposablePhotosAction_completionHandler + 8);
  *v10 = a1;
  v10[1] = a2;
  sub_1A3C784D4(v11, v12);
  v13 = *(v7 + OBJC_IVAR___PXComposablePhotosAction_subActions);
  if (v13 >> 62)
  {
    v14 = sub_1A524E2B4();
    if (v14)
    {
LABEL_3:
      if (v14 < 1)
      {
        __break(1u);
      }

      else
      {

        v15 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1A59097F0](v15, v13);
          }

          else
          {
            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          ++v15;
          v18 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v19 = swift_allocObject();
          v19[2] = v18;
          v19[3] = v22;
          v19[4] = a2;
          v19[5] = ObjectType;
          aBlock[4] = a4;
          aBlock[5] = v19;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3D6084C;
          aBlock[3] = a5;
          v20 = _Block_copy(aBlock);

          [v17 *a6];
          _Block_release(v20);
        }

        while (v14 != v15);
      }

      return;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1A444AFB0(char a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB1C1A18;
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = a1 & 1;
  *(v10 + 48) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1A444B670;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_27_4;
  v12 = _Block_copy(aBlock);

  v13 = a2;

  dispatch_sync(v7, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1A444B264()
{
  v1 = sub_1A524BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB1C1A18;
  *v4 = qword_1EB1C1A18;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1A524C024();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (*(v0 + OBJC_IVAR___PXComposablePhotosAction_subActionCount) == *(v0 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted))
    {
      v7 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
      if (v7)
      {
        v8 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler + 8);
        v9 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_error);
        v10 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_success);
        sub_1A3D607F0(*(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler));
        v11 = v9;
        v7(v10 & 1, v9);
        sub_1A3C784D4(v7, v8);
      }

      sub_1A444B438();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A444B438()
{
  v1 = sub_1A524BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1C1A10 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB1C1A18;
  *v4 = qword_1EB1C1A18;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1A524C024();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    *(v0 + OBJC_IVAR___PXComposablePhotosAction_actionsCompleted) = 0;
    v7 = (v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
    v8 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler);
    v9 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_completionHandler + 8);
    *v7 = 0;
    v7[1] = 0;
    sub_1A3C784D4(v8, v9);
    *(v0 + OBJC_IVAR___PXComposablePhotosAction_success) = 2;
    v10 = *(v0 + OBJC_IVAR___PXComposablePhotosAction_error);
    *(v0 + OBJC_IVAR___PXComposablePhotosAction_error) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A444B674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_20Tm()
{

  return swift_deallocObject();
}

void sub_1A444B704()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1A444A93C(v2, v3);
  }

  else
  {
    v1(0, 0);
  }
}

void sub_1A444B7B0(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD00000000000001ALL;
  a2[1] = 0x80000001A53D7CB0;
  v3 = a1;
  sub_1A3C5A374();
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
  sub_1A460D6DC(v3, a2 + *(v4 + 20));
  v5 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

  *(a2 + *(v4 + 24)) = v5;
}

id sub_1A444B868(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  result = [v2 hasSharedLibrary];
  if (result)
  {
    result = PXPreferencesIsSharedLibrarySuggestionsEnabled();
    if (result)
    {
      return (PXPreferencesGetLibraryFilterViewModeWithSharedLibraryOrPreview([v2 hasSharedLibraryOrPreview]) != 2);
    }
  }

  return result;
}

uint64_t sub_1A444B8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A444B970(uint64_t a1)
{
  result = sub_1A444B9C8(&qword_1EB1294D8, type metadata accessor for LemonadeSharedLibrarySuggestionsFeature);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A444B9C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A444BA38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  return sub_1A42D8EA8(v5 + v3, a1);
}

uint64_t sub_1A444BB00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  return sub_1A42D8EA8(v3 + v4, a2);
}

uint64_t sub_1A444BBC8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A42D8EA8(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel);
  sub_1A52415C4();

  return sub_1A3DB7E34(v6);
}

uint64_t type metadata accessor for LemonadeCloudQuotaNotificationModel()
{
  result = qword_1EB160800;
  if (!qword_1EB160800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A444BD3C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  sub_1A444C550(a2, a1 + v4);
  return swift_endAccess();
}

void (*sub_1A444BDCC(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A444BF14;
}

void sub_1A444BF14(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A444BF98(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  sub_1A42D8F0C(a1, v2 + OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item);
  return v2;
}

uint64_t sub_1A444BFF4()
{
  sub_1A3DB7E34(v0 + OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item);
  v1 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A444C178(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel);
  sub_1A52415C4();

  return sub_1A3DB7E34(a1);
}

void (*sub_1A444C248(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1A444BDCC(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A444C300(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A444C34C@<X0>(unint64_t *a1@<X8>)
{
  v3 = type metadata accessor for CloudQuotaNotificationItem();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  swift_getKeyPath();
  v12[1] = v6;
  sub_1A444C300(&qword_1EB13AC58, type metadata accessor for LemonadeCloudQuotaNotificationModel);
  sub_1A52415D4();

  v7 = OBJC_IVAR____TtC12PhotosUICore35LemonadeCloudQuotaNotificationModel__item;
  swift_beginAccess();
  sub_1A42D8EA8(v6 + v7, v5);
  v8 = sub_1A441CEAC();
  v10 = v9;
  result = sub_1A3DB7E34(v5);
  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_1A444C484()
{
  result = type metadata accessor for CloudQuotaNotificationItem();
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

uint64_t sub_1A444C550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudQuotaNotificationItem();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1A444C5D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_1A5249574();
  v46 = 1;
  v4 = sub_1A524BC74();
  v37 = v5;
  v38 = v4;
  v36 = (*(*a1 + 624))();
  *&v47 = 0;
  v6 = sub_1A524B694();
  v33 = *(&v60 + 1);
  v34 = v60;
  v7 = (*(*a1 + 672))(v6);
  *&v47 = 0;
  sub_1A524B694();
  v8 = v60;
  sub_1A524BC74();
  sub_1A52481F4();
  v9 = sub_1A524BC74();
  v31 = v10;
  v32 = v9;
  v30 = (*(*a1 + 720))();
  *&v47 = 0;
  v11 = sub_1A524B694();
  v12 = (*(*a1 + 768))(v11);
  sub_1A524B694();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v94 = v38;
  *(&v94 + 1) = v37;
  *v95 = v36;
  *&v95[8] = v60;
  *&v95[24] = v7;
  v13 = *(&v60 + 1);
  v96 = v60;
  v97 = v91;
  v98 = v92;
  v78 = v91;
  v79 = v92;
  v77 = v60;
  v76 = *&v95[16];
  v74 = v94;
  v75 = *v95;
  *&v39 = v32;
  *(&v39 + 1) = v31;
  *v40 = v30;
  *&v40[8] = v60;
  *&v40[24] = v12;
  v41 = v60;
  v42 = v88;
  v43 = v89;
  v44 = v90;
  v86 = v89;
  v87 = v90;
  v85 = v88;
  v84 = v60;
  v83 = *&v40[16];
  v82 = *v40;
  v99 = v93;
  v80 = v93;
  v81 = v39;
  *&v47 = v32;
  *(&v47 + 1) = v31;
  *v48 = v30;
  *&v48[8] = v60;
  *&v48[24] = v12;
  v49 = v60;
  v51 = v89;
  v52 = v90;
  v50 = v88;
  v14 = MEMORY[0x1E697E048];
  sub_1A444F564(&v94, &v60, &unk_1EB123A08, sub_1A444CC94, MEMORY[0x1E697E048], sub_1A444F0CC);
  sub_1A444F564(&v39, &v60, &unk_1EB123A08, sub_1A444CC94, v14, sub_1A444F0CC);
  sub_1A444F5D8(&v47, &unk_1EB123A08, sub_1A444CC94, v14, sub_1A444F0CC);
  *&v60 = v38;
  *(&v60 + 1) = v37;
  *&v61 = v36;
  *(&v61 + 1) = v34;
  *&v62 = v33;
  *(&v62 + 1) = v7;
  *&v63 = v8;
  *(&v63 + 1) = v13;
  v64 = v91;
  v65 = v92;
  v66 = v93;
  sub_1A444F5D8(&v60, &unk_1EB123A08, sub_1A444CC94, v14, sub_1A444F0CC);
  v56 = v84;
  v57 = v85;
  v58 = v86;
  v59 = v87;
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v55 = v83;
  *&v48[16] = v76;
  v49 = v77;
  v50 = v78;
  v51 = v79;
  v47 = v74;
  *v48 = v75;
  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v66 = v80;
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v62 = v76;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v60 = v74;
  v61 = v75;
  v15 = MEMORY[0x1E6981F40];
  sub_1A444F564(&v47, &v39, &unk_1EB1211C8, sub_1A444CC0C, MEMORY[0x1E6981F40], sub_1A444F500);
  v16 = sub_1A444F5D8(&v60, &unk_1EB1211C8, sub_1A444CC0C, v15, sub_1A444F500);
  *&v45[167] = v56;
  *&v45[183] = v57;
  *&v45[199] = v58;
  *&v45[215] = v59;
  *&v45[103] = v52;
  *&v45[119] = v53;
  *&v45[135] = v54;
  *&v45[151] = v55;
  *&v45[39] = *&v48[16];
  *&v45[55] = v49;
  *&v45[71] = v50;
  *&v45[87] = v51;
  *&v45[7] = v47;
  *&v45[23] = *v48;
  v17 = v46;
  v18 = *(*a1 + 328);
  if ((v18)(v16))
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = sub_1A524BD44();
  v21 = v18();
  v22 = *&v45[160];
  *(a2 + 193) = *&v45[176];
  v23 = *&v45[208];
  *(a2 + 209) = *&v45[192];
  *(a2 + 225) = v23;
  v24 = *&v45[96];
  *(a2 + 129) = *&v45[112];
  v25 = *&v45[144];
  *(a2 + 145) = *&v45[128];
  *(a2 + 161) = v25;
  *(a2 + 177) = v22;
  v26 = *&v45[32];
  *(a2 + 65) = *&v45[48];
  v27 = *&v45[80];
  *(a2 + 81) = *&v45[64];
  *(a2 + 97) = v27;
  *(a2 + 113) = v24;
  result = *v45;
  v29 = *&v45[16];
  *(a2 + 17) = *v45;
  *(a2 + 33) = v29;
  *a2 = v35;
  *(a2 + 8) = 0;
  *(a2 + 16) = v17;
  *(a2 + 240) = *&v45[223];
  *(a2 + 49) = v26;
  *(a2 + 248) = v19;
  *(a2 + 256) = v20;
  *(a2 + 264) = v21 & 1;
  return result;
}

void sub_1A444CC0C()
{
  if (!qword_1EB123A00)
  {
    sub_1A444F0CC(255, &unk_1EB123A08, sub_1A444CC94);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123A00);
    }
  }
}

void sub_1A444CC94()
{
  if (!qword_1EB1215A0)
  {
    sub_1A444F500(255, &qword_1EB1212F0, sub_1A444CD48, MEMORY[0x1E6981F40]);
    sub_1A444F1E4(&qword_1EB1212F8, &qword_1EB1212F0, sub_1A444CD48);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1215A0);
    }
  }
}

void sub_1A444CD48()
{
  if (!qword_1EB1258D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1258D0);
    }
  }
}

void sub_1A444CDAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14[1] = a2;
  v14[4] = a4;
  sub_1A444D0F8(0);
  v14[3] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1A5249314();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A444D4AC();
  v14[2] = *(v10 + 44);
  sub_1A444DFCC(a1);
  v14[5] = v11;
  v14[0] = swift_getKeyPath();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1A444E32C;
  *(v13 + 24) = v12;
  sub_1A444F500(0, &qword_1EB120C78, sub_1A444D2C4, MEMORY[0x1E69E62F8]);
  type metadata accessor for TimelineTextEngineCell();
  sub_1A444D37C();
  sub_1A444ED74(&qword_1EB125FD0, type metadata accessor for TimelineTextEngineText);
  sub_1A444ED74(&qword_1EB125890, type metadata accessor for TimelineTextEngineCell);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A444D140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A444D1C0()
{
  if (!qword_1EB121490)
  {
    sub_1A444F500(255, &qword_1EB120C78, sub_1A444D2C4, MEMORY[0x1E69E62F8]);
    type metadata accessor for TimelineTextEngineText(255);
    type metadata accessor for TimelineTextEngineCell();
    sub_1A444D37C();
    sub_1A444ED74(&qword_1EB125FD0, type metadata accessor for TimelineTextEngineText);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121490);
    }
  }
}

void sub_1A444D2C4()
{
  if (!qword_1EB120B40)
  {
    type metadata accessor for TimelineTextEngineText(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120B40);
    }
  }
}

uint64_t type metadata accessor for TimelineTextEngineCell()
{
  result = qword_1EB1697F0;
  if (!qword_1EB1697F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A444D37C()
{
  result = qword_1EB120C70;
  if (!qword_1EB120C70)
  {
    sub_1A444F500(255, &qword_1EB120C78, sub_1A444D2C4, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120C70);
  }

  return result;
}

unint64_t sub_1A444D404()
{
  result = qword_1EB121498;
  if (!qword_1EB121498)
  {
    sub_1A444D1C0();
    sub_1A444ED74(&qword_1EB125890, type metadata accessor for TimelineTextEngineCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121498);
  }

  return result;
}

void sub_1A444D4AC()
{
  if (!qword_1EB1244C8)
  {
    sub_1A444D1C0();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1244C8);
    }
  }
}

uint64_t sub_1A444D520()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TimelineTextEngineCell() + 32);
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

void sub_1A444D678(uint64_t a1@<X8>)
{
  v10 = a1;
  v6 = type metadata accessor for TimelineTextEngineCell();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v2;
  v9 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = (v1 + *(type metadata accessor for TimelineTextEngineText(0) + 20));
  v4 = v3[1];
  v11 = *v3;
  v12 = v4;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A444DD00()
{
  type metadata accessor for TimelineTextEngineCell();
  sub_1A444EF44(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A524B6B4();
  if (sub_1A444D520())
  {
    sub_1A47F2988();
  }

  sub_1A47F356C();
  sub_1A524BD44();
  sub_1A444DF0C();
  sub_1A524BCD4();

  MEMORY[0x1EEE9AC00](v0);
  sub_1A52483D4();

  if (sub_1A444D520())
  {
    sub_1A47F2988();
  }

  sub_1A47F3560();
  sub_1A524BCF4();
  sub_1A444DF0C();
  sub_1A524BCD4();

  MEMORY[0x1EEE9AC00](v1);
  sub_1A52483D4();
}

void *sub_1A444DF0C()
{
  v1 = *(v0 + *(type metadata accessor for TimelineTextEngineCell() + 20));
  v2 = sub_1A444D520();
  if (v1 == 2)
  {
    if (v2)
    {
      sub_1A47F297C();
    }

    return sub_1A47F3554();
  }

  else if (v1 == 1)
  {
    if (v2)
    {
      sub_1A47F297C();
    }

    v3 = sub_1A47F3548();
    return sub_1A3E2AEFC(v3, -0.1, 0.1);
  }

  else
  {
    if (v2)
    {
      sub_1A47F297C();
    }

    return sub_1A47F3548();
  }
}

void sub_1A444DFCC(uint64_t a1)
{
  sub_1A444D2C4();
  v43 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = *(v3 + 80);
    v40 = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x1E69E7CC0] + v41;
    v13 = 0;
    v14 = 0;
    v15 = *(type metadata accessor for TimelineTextEngineText(0) - 8);
    v16 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v17 = v10;
    v38 = v9;
    v39 = v3;
    while (1)
    {
      v19 = *(v43 + 48);
      *v5 = v13;
      sub_1A444E6DC(v16, v5 + v19, type metadata accessor for TimelineTextEngineText);
      sub_1A444F498(v5, v8, sub_1A444D2C4);
      if (v14)
      {
        v10 = v17;
        v18 = __OFSUB__(v14--, 1);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v20 = v17[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v21 = v8;
        v22 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        sub_1A444F500(0, &qword_1EB120278, sub_1A444D2C4, MEMORY[0x1E69E6F90]);
        v24 = *(v3 + 72);
        v25 = v41;
        v10 = swift_allocObject();
        v26 = _swift_stdlib_malloc_size(v10);
        if (!v24)
        {
          goto LABEL_34;
        }

        v27 = v26 - v25;
        if (v26 - v25 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_35;
        }

        v29 = v27 / v24;
        v10[2] = v23;
        v10[3] = 2 * (v27 / v24);
        v30 = v10 + v25;
        v31 = v17[3] >> 1;
        v32 = v31 * v24;
        if (v17[2])
        {
          if (v10 < v17 || v30 >= v17 + v41 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17[2] = 0;
        }

        v12 = &v30[v32];
        v34 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v8 = v21;
        v9 = v38;
        v3 = v39;
        v18 = __OFSUB__(v34, 1);
        v14 = v34 - 1;
        if (v18)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      sub_1A444F498(v8, v12, sub_1A444D2C4);
      v12 += *(v3 + 72);
      v16 += v42;
      v17 = v10;
      if (v9 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v35 = v10[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v18 = __OFSUB__(v36, v14);
    v37 = v36 - v14;
    if (v18)
    {
      goto LABEL_36;
    }

    v10[2] = v37;
  }
}

uint64_t sub_1A444E32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v15 = *(v3 + 24);
  sub_1A444EF44(0, &unk_1EB121BE0, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v8 = sub_1A444E65C(a1, v14, *(v7 + 16));
  sub_1A444E6DC(a2, a3, type metadata accessor for TimelineTextEngineText);
  v9 = type metadata accessor for TimelineTextEngineCell();
  v10 = (a3 + v9[6]);
  sub_1A524B694();
  *v10 = v15;
  v11 = (a3 + v9[7]);
  sub_1A524B694();
  *v11 = v15;
  v12 = a3 + v9[8];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  *(a3 + v9[5]) = v8;
  return result;
}

uint64_t sub_1A444E474(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_1A444D2C4();
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t objectdestroyTm_53()
{

  return swift_deallocObject();
}

uint64_t sub_1A444E510()
{
  sub_1A4429704(2uLL);
  sub_1A444EF44(0, &unk_1EB121BE0, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

unint64_t sub_1A444E584()
{
  result = qword_1EB120D20;
  if (!qword_1EB120D20)
  {
    sub_1A444F500(255, &qword_1EB120D28, type metadata accessor for TimelineTextEngineText, MEMORY[0x1E69E62F8]);
    sub_1A444ED74(&qword_1EB125FC8, type metadata accessor for TimelineTextEngineText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120D20);
  }

  return result;
}

uint64_t sub_1A444E65C(uint64_t result, char a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = result & ~(result >> 63);
  if (v3 < v4)
  {
    v4 = a3 - 1;
  }

  if (a3 == 2)
  {
    if ((v3 & 0x8000000000000000) == 0 && v4 <= 1)
    {
      v7 = &unk_1F170E860;
      return v7[v4];
    }

    goto LABEL_23;
  }

  if (a3 != 3)
  {
    return result;
  }

  v6 = v3 < 0 || v4 > 2;
  if (a2)
  {
    if (!v6)
    {
      v7 = &unk_1F170E828;
      return v7[v4];
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = &unk_1F170E7F0;
  return v7[v4];
}

uint64_t sub_1A444E6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A444E78C()
{
  if (!qword_1EB1227D8)
  {
    sub_1A444F248(255, &qword_1EB124080, MEMORY[0x1E6981148], &type metadata for TimelineTextEngineCellViewModifier, MEMORY[0x1E697E830]);
    sub_1A444E820();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1227D8);
    }
  }
}

void sub_1A444E820()
{
  if (!qword_1EB123868)
  {
    sub_1A444F248(255, &qword_1EB124070, MEMORY[0x1E6981148], &type metadata for WriteOutEffect, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123868);
    }
  }
}

unint64_t sub_1A444E8AC()
{
  result = qword_1EB1227E0;
  if (!qword_1EB1227E0)
  {
    sub_1A444E78C();
    sub_1A444EA58(&qword_1EB124088, &qword_1EB124080, &type metadata for TimelineTextEngineCellViewModifier, sub_1A444E958);
    sub_1A444E9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227E0);
  }

  return result;
}

unint64_t sub_1A444E958()
{
  result = qword_1EB1252C8;
  if (!qword_1EB1252C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252C8);
  }

  return result;
}

unint64_t sub_1A444E9AC()
{
  result = qword_1EB123870;
  if (!qword_1EB123870)
  {
    sub_1A444E820();
    sub_1A444EA58(&qword_1EB124078, &qword_1EB124070, &type metadata for WriteOutEffect, sub_1A444EAF8);
    sub_1A444E958();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123870);
  }

  return result;
}

uint64_t sub_1A444EA58(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A444F248(255, a2, MEMORY[0x1E6981148], a3, MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A444EAF8()
{
  result = qword_1EB125BA8;
  if (!qword_1EB125BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125BA8);
  }

  return result;
}

uint64_t sub_1A444EB4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A444EBAC()
{
  v1 = *(type metadata accessor for TimelineTextEngineCell() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  result = type metadata accessor for TimelineTextEngineText(0);
  v4 = (v2 + *(result + 20));
  v6 = *v4;
  v5 = v4[1];
  v7 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    return sub_1A444DD00();
  }

  return result;
}

void sub_1A444EC30()
{
  if (!qword_1EB123858)
  {
    sub_1A444F248(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A444E744(255);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123858);
    }
  }
}

unint64_t sub_1A444ECC4()
{
  result = qword_1EB123860;
  if (!qword_1EB123860)
  {
    sub_1A444EC30();
    sub_1A4234634();
    sub_1A444ED74(&qword_1EB122EC0, sub_1A444E744);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123860);
  }

  return result;
}

uint64_t sub_1A444ED74(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A444EE58()
{
  type metadata accessor for TimelineTextEngineText(319);
  if (v0 <= 0x3F)
  {
    sub_1A444EF44(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A444EF44(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A444EF44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A444EF94()
{
  result = qword_1EB123560;
  if (!qword_1EB123560)
  {
    sub_1A444F014();
    sub_1A444F29C();
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123560);
  }

  return result;
}

void sub_1A444F014()
{
  if (!qword_1EB123558)
  {
    sub_1A444F0CC(255, &qword_1EB123A98, sub_1A444F130);
    sub_1A444F248(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123558);
    }
  }
}

void sub_1A444F0CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A444F130()
{
  if (!qword_1EB121730)
  {
    sub_1A444F500(255, &qword_1EB1211C8, sub_1A444CC0C, MEMORY[0x1E6981F40]);
    sub_1A444F1E4(&qword_1EB1211D0, &qword_1EB1211C8, sub_1A444CC0C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121730);
    }
  }
}

uint64_t sub_1A444F1E4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A444F500(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A444F248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A444F29C()
{
  result = qword_1EB123AA0;
  if (!qword_1EB123AA0)
  {
    sub_1A444F0CC(255, &qword_1EB123A98, sub_1A444F130);
    sub_1A444ED74(&qword_1EB121738, sub_1A444F130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123AA0);
  }

  return result;
}

uint64_t sub_1A444F370()
{
  type metadata accessor for TimelineTextEngineCell();
  sub_1A444EF44(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A444F404()
{
  type metadata accessor for TimelineTextEngineCell();
  sub_1A444EF44(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A444F498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A444F500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A444F564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A444F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A444F638(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A444F8F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A444F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v9);
  v8[10] = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  swift_getWitnessTable();
  v8[5] = a3;
  sub_1A5249DB4();
  sub_1A5249DA4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A444FFB0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 16))(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1A4450004()
{
  v1 = sub_1A524B974();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - v2;
  type metadata accessor for UIKitSegmentedControl.Coordinator();
  sub_1A524B924();
  v4 = *v0;
  swift_allocObject();
  sub_1A445084C(v3, v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44500E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1A445084C(a1, a2);
  return v4;
}

uint64_t sub_1A445014C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  v8 = sub_1A524B974();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, v1 + *(v3 + 96), v8, v10);
  (*(v5 + 16))(v7, a1, v4);
  sub_1A524B904();
  (*(v5 + 8))(a1, v4);
  return (*(v9 + 8))(v12, v8);
}

uint64_t (*sub_1A445031C(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*v1 + 80);
  *v4 = v6;
  v7 = *(v6 - 8);
  v4[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = sub_1A524B974();
  v5[4] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[5] = v11;
  if (v3)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v5[6] = v13;
  (*(v12 + 16))();
  MEMORY[0x1A5906C60](v10);
  return sub_1A44504E4;
}

void sub_1A44504E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 16);
  if (a2)
  {
    v8 = *v2;
    v9 = v2[1];
    (*(v9 + 16))(*(*a1 + 16), v5, *v2);
    sub_1A524B904();
    (*(v4 + 8))(v3, v6);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    sub_1A524B904();
    (*(v4 + 8))(v3, v6);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1A44505FC(void (*a1)(uint64_t))
{
  v3 = *v1;
  v4 = sub_1A524B974();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, &v1[*(v3 + 96)], v4, v6);
  a1(v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A445077C(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A445084C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 96);
  v6 = sub_1A524B974();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + *(*v2 + 104)) = a2;
  return v2;
}

uint64_t sub_1A44508FC(uint64_t a1)
{
  *&v2 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v4 = &v7 - v3;
  [v5 selectedSegmentIndex];
  (*(*v1 + 144))();
  sub_1A524CB94();

  return (*(*v1 + 120))(v4);
}

uint64_t sub_1A44509F8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1A44508FC(v3);
}

uint64_t sub_1A4450A48()
{
  v1 = *(*v0 + 96);
  v2 = sub_1A524B974();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1A4450AE8()
{
  sub_1A4450A48();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4450B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for UIKitSegmentedControl();
  v10 = *(v9 + 36);
  v11 = sub_1A524B974();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  v13 = &a5[*(v9 + 40)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

uint64_t sub_1A4450C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A4450C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1A4450D18()
{
  swift_getWitnessTable();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A4450DA4()
{
  sub_1A524CB74();
  if (v0 <= 0x3F)
  {
    sub_1A524B974();
    if (v1 <= 0x3F)
    {
      sub_1A44511E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4450E4C(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-9 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((a1 + v9 + 8) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v19 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void *sub_1A4450FD4(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((-2 - ((((-9 - v8) | v8) & 0xFFFFFFFFFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = (v8 + ((((result + (v8 | 7) + 8) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8;

        return v19(v20);
      }

      return result;
    }
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((-2 - ((((-9 - v8) | v8) & 0xFFFFFFF8) + ((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64))) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1A44511E8()
{
  if (!qword_1EB1201F0)
  {
    sub_1A3C3637C();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1201F0);
    }
  }
}

uint64_t sub_1A4451240()
{
  result = sub_1A524B974();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id PXSensitivityInterventionManager.init(compactSCSensitivityAnalysis:analysisMediaType:interventionType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithCompactSCSensitivityAnalysis:a1 analysisMediaType:a2 interventionType:a3];
}

{
  v38 = *MEMORY[0x1E69E9840];
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_internalInterventionFlow] = 0;
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_asset] = 0;
  v11 = OBJC_IVAR___PXSensitivityInterventionManager_delegateHandler;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for PXSensitivityInterventionManagerDelegateHandler()) init];
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_interventionType] = a3;
  *&v3[OBJC_IVAR___PXSensitivityInterventionManager_analysisMediaType] = a2;
  v36.receiver = v3;
  v36.super_class = PXSensitivityInterventionManager;
  v12 = objc_msgSendSuper2(&v36, sel_init);
  swift_unknownObjectWeakAssign();
  v13 = objc_allocWithZone(MEMORY[0x1E697B670]);
  v35 = 0;
  v14 = v12;
  v15 = v12;
  v16 = [v13 initFromCompactAnalysis:a1 error:&v35];
  v17 = v35;
  if (v16)
  {
    v18 = v16;
    v35 = 0;
    v19 = v17;
    if ([v15 createInterventionFlow:v18 error:&v35])
    {
      v20 = v35;

      return v14;
    }

    v22 = v35;
  }

  else
  {
    v22 = v35;
    v18 = v15;
  }

  v23 = sub_1A5240B84();

  swift_willThrow();
  v35 = v23;
  sub_1A3DBD9A0();
  sub_1A3C52C70(0, &qword_1EB12C740);
  swift_dynamicCast();
  v24 = v34;
  v25 = [v34 code];
  if (v25 == *sub_1A45D8288())
  {
  }

  else
  {
    v26 = sub_1A45D8754();
    (*(v8 + 16))(v10, v26, v7);
    v27 = v24;
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v30 = 136315138;
      v31 = [v27 localizedDescription];
      v33[2] = v7;
      v32 = v31;
      sub_1A524C674();
      v33[1] = v8;

      sub_1A3C2EF94();
    }

    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

id PXSensitivityInterventionManager.init(asset:interventionType:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAsset:a1 interventionType:a2];

  return v3;
}

char *PXSensitivityInterventionManager.init(asset:interventionType:)(void *a1, uint64_t a2)
{
  v4 = a1;
  if ([a1 isVideo])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [v2 initWithCompactSCSensitivityAnalysis:objc_msgSend(v4 analysisMediaType:sel_compactSCSensitivityAnalysis) interventionType:{v5, a2}];
  v7 = v6;
  if (v6)
  {
    v8 = *&v6[OBJC_IVAR___PXSensitivityInterventionManager_asset];
    *&v6[OBJC_IVAR___PXSensitivityInterventionManager_asset] = v4;
    v4 = v8;
  }

  return v7;
}

uint64_t sub_1A4451B24(void *a1)
{
  v3 = v1;
  v5 = sub_1A5246DD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  sub_1A4451CF4(a1);
  sub_1A524D924();
  (*(v6 + 16))(v8, v11, v5);
  v12 = sub_1A524D914();
  if (!v2)
  {
    v13 = v12;
    [v12 setModalInPresentation_];
    [v3 setInternalInterventionFlow_];
    v14 = [v3 internalInterventionFlow];
    if (v14)
    {
      v15 = v14;
      v16 = [v3 delegateHandler];
      [v15 setInterventionDelegate_];

      v13 = v16;
    }
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1A4451CF4(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246D74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4453B48(0, &qword_1EB13AD10, MEMORY[0x1E697B4C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v29 - v13;
  v15 = [v2 analysisMediaType];
  if (v15)
  {
    if (v15 == 2)
    {
      sub_1A5246D44();
    }

    else
    {
      if (v15 != 1)
      {
        v31 = 0;
        v32 = 0xE000000000000000;
        sub_1A524E404();
        MEMORY[0x1A5907B60](0xD000000000000033, 0x80000001A53D8180);
        v30 = [v2 analysisMediaType];
        v28 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v28);

        goto LABEL_23;
      }

      sub_1A5246D34();
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1A5246D54();
  (*(*(v17 - 8) + 56))(v14, v16, 1, v17);
  sub_1A4453AB4(v14, v10);
  v18 = a1;
  sub_1A5246D64();
  v19 = [v2 interventionType];
  if (v19 <= 1)
  {
    if (!v19)
    {
      sub_1A5246D94();
LABEL_20:
      (*(v5 + 8))(v7, v4);
      return sub_1A4453BAC(v14);
    }

    if (v19 == 1)
    {
      sub_1A5246DC4();
      goto LABEL_20;
    }
  }

  else
  {
    switch(v19)
    {
      case 2:
        sub_1A4453B48(0, &qword_1EB13AD18, MEMORY[0x1E697B4F0], MEMORY[0x1E69E6F90]);
        v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1A52F8E10;
        (*(v5 + 16))(v23 + v22, v7, v4);
        sub_1A5246D84();
        goto LABEL_17;
      case 3:
        sub_1A4453B48(0, &qword_1EB13AD18, MEMORY[0x1E697B4F0], MEMORY[0x1E69E6F90]);
        v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1A52F8E10;
        (*(v5 + 16))(v21 + v20, v7, v4);
        sub_1A5246DB4();
LABEL_17:

        goto LABEL_20;
      case 4:
        sub_1A4453B48(0, &qword_1EB13AD18, MEMORY[0x1E697B4F0], MEMORY[0x1E69E6F90]);
        v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1A52F8E10;
        (*(v5 + 16))(v25 + v24, v7, v4);
        sub_1A5246DA4();
        goto LABEL_17;
    }
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1A524E404();

  v31 = 0xD000000000000026;
  v32 = 0x80000001A53D8150;
  v30 = [v2 interventionType];
  v27 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v27);

LABEL_23:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4452300(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() changeRequestForAsset_];
  if (a2 == 1)
  {
    v11 = [a3 compactAnalysis];
    [v18 setCompactVideoSCSensitivityAnalysis_];
    goto LABEL_5;
  }

  if (!a2)
  {
    v10 = [a3 compactAnalysis];
    [v18 setCompactImageSCSensitivityAnalysis_];
LABEL_5:
    v12 = v18;

    return;
  }

  v13 = sub_1A45D8754();
  (*(v7 + 16))(v9, v13, v6);
  v14 = sub_1A5246F04();
  v15 = sub_1A524D264();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_1A3C1C000, v14, v15, "Unexpected analysis type %ld", v16, 0xCu);
    MEMORY[0x1A590EEC0](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
}

void sub_1A445258C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 viewControllerToPresent];
  if (v6)
  {
    v7 = v6;
    if (a1)
    {
      v8[4] = a1;
      v8[5] = a2;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 1107296256;
      v8[2] = sub_1A3C2E0D0;
      v8[3] = &block_descriptor_27_5;
      a1 = _Block_copy(v8);
    }

    [v7 dismissViewControllerAnimated:1 completion:a1];
    _Block_release(a1);
  }
}

void __swiftcall PXSensitivityInterventionManager.init()(PXSensitivityInterventionManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1A44528CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

uint64_t sub_1A445293C(uint64_t a1, char a2)
{
  v2 = (a1 + OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion);
  v3 = *(a1 + OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion);
  if (v3)
  {

    v3(a2 & 1);
    sub_1A3C33378(v3);
    v5 = *v2;
  }

  else
  {
    v5 = 0;
  }

  *v2 = 0;
  v2[1] = 0;

  return sub_1A3C33378(v5);
}

id sub_1A44529C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXSensitivityInterventionManagerDelegateHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4452A58(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = [a2 internalInterventionFlow];
  if (v7)
  {
    v11 = v7;
    v8 = [a2 delegateHandler];
    v9 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion];
    v10 = *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_completion];
    *v9 = sub_1A3DB5554;
    v9[1] = v6;

    sub_1A3C33378(v10);

    [a1 presentViewController:v11 animated:1 completion:0];
  }

  else
  {
    a3[2](a3, 0);
  }
}

void sub_1A4452BAC(void *a1, uint64_t a2)
{
  v44 = a2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  sub_1A3C52C70(0, &qword_1EB12BB48);
  v9 = sub_1A524D724();
  v10 = sub_1A45D8754();
  v11 = *(v4 + 16);
  v41 = v10;
  v42 = v4 + 16;
  v40 = v11;
  (v11)(v8);
  v12 = a1;
  v13 = sub_1A5246F04();
  v14 = sub_1A524D264();
  if (os_log_type_enabled(v13, v14))
  {
    v38 = v4;
    v39 = v3;
    v15 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v15 = 136315138;
    v16 = [v12 uuid];

    if (v16)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {

    v17 = *(v4 + 8);
    v17(v8, v3);
    v18 = [v12 photoLibrary];
    v19 = v44;
    if (!v18)
    {
      __break(1u);
    }

    v20 = v18;
    v21 = swift_allocObject();
    v21[2] = v12;
    v21[3] = v19;
    v21[4] = v9;
    aBlock[4] = sub_1A4453AA8;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_33_4;
    v22 = _Block_copy(aBlock);
    v23 = v12;
    v24 = v9;

    aBlock[0] = 0;
    v25 = [v20 performChangesAndWait:v22 error:aBlock];
    _Block_release(v22);

    if (v25)
    {
      v26 = aBlock[0];
    }

    else
    {
      v27 = aBlock[0];
      v28 = sub_1A5240B84();

      swift_willThrow();
      aBlock[0] = v28;
      sub_1A3DBD9A0();
      sub_1A3C52C70(0, &qword_1EB12C740);
      swift_dynamicCast();
      v29 = v45;
      v30 = v43;
      v40(v43, v41, v3);
      v31 = v29;
      v32 = sub_1A5246F04();
      v33 = sub_1A524D244();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v38 = v4;
        v35 = v34;
        v46 = swift_slowAlloc();
        *v35 = 134218242;
        *(v35 + 4) = v19;
        *(v35 + 12) = 2080;
        v36 = [v31 localizedDescription];
        sub_1A524C674();
        v39 = v3;

        sub_1A3C2EF94();
      }

      v17(v30, v3);
    }
  }
}

void sub_1A445311C()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = OBJC_IVAR____TtC12PhotosUICoreP33_AEF562763F3BEE3B23D607568135135047PXSensitivityInterventionManagerDelegateHandler_manager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v11 = Strong;
  v12 = [Strong interventionType];
  if ((v12 - 2) >= 3)
  {
    if (v12 > 1)
    {
      aBlock = 0;
      v33 = 0xE000000000000000;
      sub_1A524E404();

      aBlock = 0xD000000000000026;
      v33 = 0x80000001A53D8150;
      v38 = [v11 interventionType];
      v30 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v30);

      goto LABEL_22;
    }

    v19 = [v11 asset];
    if (v19)
    {
      v20 = v19;
      [v11 overrideAnalysisFor:v19 :0];
      if ([v20 isPhotoIris] && objc_msgSend(v20, sel_canPlayPhotoIris) && !objc_msgSend(v20, sel_isPhotoIrisPlaceholder) || objc_msgSend(v20, sel_isVideo))
      {
        [v11 overrideAnalysisFor:v20 :1];
      }
    }
  }

  else
  {
    v13 = sub_1A45D8754();
    (*(v3 + 16))(v8, v13, v2);
    v14 = v11;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D224();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = v9;
      v18 = v17;
      *v17 = 134217984;
      *(v17 + 4) = [v14 interventionType];

      _os_log_impl(&dword_1A3C1C000, v15, v16, "Skipping override asset's sensitivity analysis for %ld.", v18, 0xCu);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {

      v15 = v14;
    }

    (*(v3 + 8))(v8, v2);
  }

  v21 = sub_1A45D8754();
  (*(v3 + 16))(v5, v21, v2);
  v22 = sub_1A5246F04();
  v23 = sub_1A524D224();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1A3C1C000, v22, v23, "User confirmed intervention flow for assets.", v24, 2u);
    MEMORY[0x1A590EEC0](v24, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = 1;
    v36 = sub_1A4453C44;
    v37 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1A3C2E0D0;
    v35 = &block_descriptor_21_7;
    v28 = _Block_copy(&aBlock);
    v29 = v1;

    [v26 dismissInterventionFlow_];
    _Block_release(v28);

    return;
  }

  __break(1u);
LABEL_22:
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A4453634()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v7 = sub_1A45D8754();
    (*(v3 + 16))(v5, v7, v2);
    v8 = sub_1A5246F04();
    v9 = sub_1A524D224();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "User rejected intervention flow for assets.", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v1;
      *(v13 + 24) = 0;
      aBlock[4] = sub_1A4453A9C;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_190;
      v14 = _Block_copy(aBlock);
      v15 = v1;

      [v12 dismissInterventionFlow_];
      _Block_release(v14);

      return;
    }

    __break(1u);
  }

  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A44538C4()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  [objc_opt_self() openChatWithParents];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = sub_1A45D8754();
    (*(v1 + 16))(v3, v5, v0);
    v6 = sub_1A5246F04();
    v7 = sub_1A524D224();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, v7, "User contacted someone in intervention flow for assets.", v8, 2u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4453AB4(uint64_t a1, uint64_t a2)
{
  sub_1A4453B48(0, &qword_1EB13AD10, MEMORY[0x1E697B4C0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4453B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4453BAC(uint64_t a1)
{
  sub_1A4453B48(0, &qword_1EB13AD10, MEMORY[0x1E697B4C0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SyntheticPerson.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v3);
  v11 = &v10[OBJC_IVAR___PXSyntheticPerson_px_localIdentifier];
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  *v11 = v12;
  v11[1] = v14;
  v15 = &v10[OBJC_IVAR___PXSyntheticPerson_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  v17.receiver = v10;
  v17.super_class = v3;
  return objc_msgSendSuper2(&v17, sel_init);
}

id SyntheticPerson.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1A52411C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v3[OBJC_IVAR___PXSyntheticPerson_px_localIdentifier];
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  *v11 = v12;
  v11[1] = v14;
  v15 = &v3[OBJC_IVAR___PXSyntheticPerson_name];
  *v15 = a1;
  *(v15 + 1) = a2;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t SyntheticPerson.requestFaceCropImage(withTargetSize:displayScale:cropFactor:style:cacheResult:synchronous:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, unint64_t))
{
  v6 = sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  a5(0, v6);

  return 0;
}

id SyntheticPerson.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SyntheticPerson.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A44542F0()
{
  sub_1A4462A80(0, &qword_1EB13B1E8, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v12)
  {
    return v11;
  }

  v2 = *v0;
  v3 = [*v0 displayName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  v9 = [v2 displayAddress];
  v10 = sub_1A524C674();

  return v10;
}

void sub_1A4454400(uint64_t a1@<X8>)
{
  v3 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShareParticipantImageConfiguration(0);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = [*v1 emailAddressString];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A524C674();
    v34 = v14;
    v35 = v13;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v15 = [v10 phoneNumberString];
  if (v15)
  {
    v16 = v15;
    v33 = sub_1A524C674();
    v18 = v17;
  }

  else
  {
    v33 = 0;
    v18 = 0;
  }

  v19 = [v10 firstName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1A524C674();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [v10 lastName];
  if (v24)
  {
    v26 = v24;
    v27 = sub_1A524C674();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  sub_1A482211C(v25);
  v30 = sub_1A41F7694();
  sub_1A481E150(v35, v34, v33, v18, v21, v23, v27, v29, v9, v30, v5);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4461D4C(0, &qword_1EB13AD38, &qword_1EB13AD40, sub_1A4454F6C);
  sub_1A44546BC(v9, v1, a1 + *(v31 + 44));
}

void sub_1A44546BC(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v49[3] = a3;
  v5 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v49 - v8;
  sub_1A44550B4(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52F8E10;
  sub_1A4461DC8(a1, v12 + v11, type metadata accessor for ShareParticipantImageConfiguration);
  sub_1A493BE2C(&v57);
  v13 = v9;
  sub_1A493BE50(v12, &v57, v9, 32.0);
  v54 = sub_1A5249584();
  v56 = 1;
  *&v57 = sub_1A44542F0();
  *(&v57 + 1) = v14;
  v49[1] = sub_1A3D5F9DC();
  v15 = sub_1A524A464();
  v17 = v16;
  LOBYTE(v9) = v18;
  sub_1A524A214();
  sub_1A524A104();

  v51 = sub_1A524A3C4();
  v52 = v19;
  v21 = v20;
  v53 = v22;

  sub_1A3E04DF4(v15, v17, v9 & 1);

  v23 = sub_1A44542F0();
  v25 = v24;
  v26 = *a2;
  v27 = [*a2 displayAddress];
  v28 = sub_1A524C674();
  v30 = v29;

  v49[4] = v13;
  if (v23 == v28 && v25 == v30)
  {
  }

  else
  {
    v31 = sub_1A524EAB4();

    if ((v31 & 1) == 0)
    {
      v32 = [v26 displayAddress];
      v33 = sub_1A524C674();
      v35 = v34;

      *&v57 = v33;
      *(&v57 + 1) = v35;
      v36 = sub_1A524A464();
      v38 = v37;
      LOBYTE(v35) = v39;
      sub_1A524A254();
      v40 = sub_1A524A3C4();
      v42 = v41;
      v44 = v43;
      v50 = v21;

      sub_1A3E04DF4(v36, v38, v35 & 1);

      sub_1A524B334();
      v45 = sub_1A524A364();
      v47 = v46;
      LOBYTE(v35) = v48;

      sub_1A3E04DF4(v40, v42, v44 & 1);

      sub_1A3E75E68(v45, v47, v35 & 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A3E75E68(v51, v52, v21 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4454F6C()
{
  if (!qword_1EB13AD48)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView();
    sub_1A4455020();
    sub_1A3C39938(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13AD48);
    }
  }
}

void sub_1A4455020()
{
  if (!qword_1EB13AD50)
  {
    sub_1A44550B4(255, &qword_1EB13AD58, sub_1A4455118, MEMORY[0x1E6981F40]);
    sub_1A44551A4();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13AD50);
    }
  }
}

void sub_1A44550B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4455118()
{
  if (!qword_1EB13AD60)
  {
    sub_1A3C39938(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13AD60);
    }
  }
}

unint64_t sub_1A44551A4()
{
  result = qword_1EB13AD70;
  if (!qword_1EB13AD70)
  {
    sub_1A44550B4(255, &qword_1EB13AD58, sub_1A4455118, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AD70);
  }

  return result;
}

void sub_1A445528C()
{
  if (!qword_1EB13AD80)
  {
    sub_1A44550B4(255, &qword_1EB13AD40, sub_1A4454F6C, MEMORY[0x1E6981F40]);
    sub_1A4455320();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13AD80);
    }
  }
}

unint64_t sub_1A4455320()
{
  result = qword_1EB13AD88;
  if (!qword_1EB13AD88)
  {
    sub_1A44550B4(255, &qword_1EB13AD40, sub_1A4454F6C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13AD88);
  }

  return result;
}

uint64_t sub_1A44553E0()
{
  v1 = v0;
  sub_1A44550B4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v14 = *(v0 + 32);
  v12[0] = *(v0 + 32);
  v15 = *(&v14 + 1);
  sub_1A4461DC8(&v15, v13, sub_1A445E630);
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v13[0])
  {
    return sub_1A445E6AC(&v14, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  }

  v12[0] = *(v0 + 48);
  sub_1A524B6A4();
  if (v13[0])
  {
    return sub_1A445E6AC(&v14, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  }

  v12[0] = v14;
  v13[0] = 1;
  sub_1A524B6B4();
  sub_1A445E6AC(&v14, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524CC74();
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_1A524CC54();
  sub_1A44553A8(v0, v12);
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = v1[1];
  *(v8 + 32) = *v1;
  *(v8 + 48) = v10;
  v11 = v1[3];
  *(v8 + 64) = v1[2];
  *(v8 + 80) = v11;
  sub_1A3D4D930(0, 0, v4, &unk_1A533DC00, v8);
}

uint64_t sub_1A4455654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  sub_1A44550B4(0, &qword_1EB13B1D0, MEMORY[0x1E6968A70], MEMORY[0x1E69E6720]);
  v4[18] = swift_task_alloc();
  v5 = sub_1A5240A24();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  sub_1A524CC54();
  v4[22] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44557A4, v7, v6);
}

uint64_t sub_1A44557A4()
{
  v1 = *(v0 + 136);

  v2 = [*v1 matchingContact];
  if (v2)
  {
    v3 = *(v0 + 160);
    v31 = *(v0 + 168);
    v29 = v3;
    v33 = *(v0 + 152);
    v30 = *(v0 + 144);
    v32 = *(v0 + 136);
    v4 = v2;
    v5 = [v2 namePrefix];
    sub_1A524C674();

    v6 = [v4 givenName];
    sub_1A524C674();

    v7 = [v4 middleName];
    sub_1A524C674();

    v8 = [v4 familyName];
    sub_1A524C674();

    v9 = [v4 nameSuffix];
    v10 = sub_1A524C674();
    v12 = v11;

    v13 = [v4 nickname];
    v14 = sub_1A524C674();
    v16 = v15;

    (*(v3 + 56))(v30, 1, 1, v33);
    sub_1A52409F4();
    v17 = objc_opt_self();
    v18 = sub_1A5240A04();
    v19 = [v17 localizedStringFromPersonNameComponents:v18 style:2 options:{0, v10, v12, v14, v16, v30}];

    v20 = sub_1A524C674();
    v22 = v21;

    *(v0 + 16) = *(v32 + 8);
    v23 = *(v32 + 24);
    v24 = *(v32 + 8);
    *(v0 + 88) = v20;
    *(v0 + 40) = v24;
    *(v0 + 120) = v23;
    *(v0 + 32) = v23;
    *(v0 + 96) = v22;
    v25 = MEMORY[0x1E69E6158];
    sub_1A4461718(v0 + 40, v0 + 104, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
    sub_1A4461DC8(v0 + 120, v0 + 128, sub_1A4462A0C);
    sub_1A4462A80(0, &qword_1EB13B1E8, MEMORY[0x1E6981790]);
    sub_1A524B6B4();

    sub_1A445E6AC(v0 + 40, &qword_1EB126FA0, v25, MEMORY[0x1E69E6720]);
    sub_1A445F380(v0 + 120, sub_1A4462A0C);
    (*(v29 + 8))(v31, v33);
  }

  v26 = *(v0 + 136);
  *(v0 + 56) = *(v26 + 48);
  *(v0 + 184) = 1;
  sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  *(v0 + 72) = *(v26 + 32);
  *(v0 + 185) = 0;
  sub_1A524B6B4();

  v27 = *(v0 + 8);

  return v27();
}

void sub_1A4455BD8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 fullName];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1A524C674();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = [a1 appleID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1A524C674();
  }

  else
  {
    v12 = 0;
  }

  sub_1A5249314();
  v15 = 1;
  sub_1A4455F44(a2, a3, v7, v9, v12, &v14);
}

void sub_1A4455F44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14[2] = a5;
  v14[8] = a6;
  v10 = sub_1A524B554();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = a2;
  sub_1A445D28C();
  sub_1A524B6A4();
  sub_1A524B524();
  (*(v11 + 104))(v13, *MEMORY[0x1E6981630], v10);
  v14[9] = sub_1A524B5C4();

  (*(v11 + 8))(v13, v10);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v22) = 1;
  v15 = v18;
  v16 = v19;
  v17 = v20;
  v14[7] = sub_1A5249584();
  v21 = 1;
  v22 = a3;
  v23 = a4;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4456514(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v16 = a3;
    v17 = sub_1A3C56D80();
    (*(v13 + 16))(v15, v17, v12);
    v18 = a3;
    v19 = a4;
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v22 = 138412546;
      v24 = [v19 dsid];
      *(v22 + 4) = v24;
      *v23 = v24;
      *(v22 + 12) = 2080;
      v31 = a3;
      v25 = a3;
      sub_1A3C34400(0, &qword_1EB126160);
      sub_1A524C714();
      sub_1A3C2EF94();
    }

    (*(v13 + 8))(v15, v12);
  }

  else if (a2 >> 60 != 15)
  {
    v26 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    sub_1A3D602A8(a1, a2);
    sub_1A3D602A8(a1, a2);
    v27 = sub_1A5240E84();
    v28 = [v26 initWithData_];

    sub_1A3DB556C(a1, a2);
    if (v28)
    {
      v32 = a5;
      v33 = a6;
      v31 = v28;
      sub_1A445D28C();
      v29 = a5;

      sub_1A524B6B4();
      sub_1A3DB556C(a1, a2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A445687C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1A5240EA4();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(v6, v10, a3, a4);

  sub_1A3DB556C(v6, v10);
}

__n128 sub_1A4456944@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A445D630();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  sub_1A445D6C4(0, &qword_1EB13ADD0, sub_1A445D738, sub_1A3E42C88);
  sub_1A445D864();
  v14 = a1;

  swift_unknownObjectRetain();
  sub_1A524B704();
  sub_1A524BC74();
  sub_1A5248AD4();
  (*(v10 + 32))(a4, v12, v9);
  sub_1A445DB34(0);
  v16 = a4 + *(v15 + 36);
  v17 = v20[5];
  *(v16 + 64) = v20[4];
  *(v16 + 80) = v17;
  *(v16 + 96) = v20[6];
  v18 = v20[1];
  *v16 = v20[0];
  *(v16 + 16) = v18;
  result = v20[3];
  *(v16 + 32) = v20[2];
  *(v16 + 48) = result;
  return result;
}

void sub_1A4456B60()
{
  sub_1A5249314();
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  v0 = sub_1A524A464();
  sub_1A3E75E68(v0, v2, v1 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4456D9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  sub_1A445DC40();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - v6;
  v8 = *(a1 + 8);
  v46 = *a1;
  v9 = v46;
  v47 = v8;
  sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v39[2] = v10;
  v11 = sub_1A524B6A4();
  v12 = v48;
  v13 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x2B0))(v11);

  v46 = v13;
  v39[1] = swift_getKeyPath();
  v48 = v8;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  v18 = v9;
  swift_unknownObjectRetain();
  sub_1A4462940(&v48, &v45, &qword_1EB13AE38, sub_1A445DB70, MEMORY[0x1E69E6720]);
  sub_1A3DA3304();
  sub_1A445DD08(0);
  sub_1A445D81C(&qword_1EB13AED0, sub_1A3DA3304);
  sub_1A445D9B8(&qword_1EB13B1B8, sub_1A445DD08, sub_1A44623C4);
  v39[0] = v15;
  v40 = v7;
  v19 = v18;
  sub_1A524B9B4();
  v46 = v18;
  v47 = v8;
  v20 = sub_1A524B6A4();
  v21 = v45;
  v22 = (*((*MEMORY[0x1E69E7D40] & *v45) + 0x2B0))(v20);

  if (!v15)
  {

LABEL_7:
    v46 = v19;
    v47 = v8;
    sub_1A524B6A4();
    type metadata accessor for SharedAlbumActionViewModel();
    swift_unknownObjectRetain();
    sub_1A524B694();
    v26 = v46;
    v27 = v47;

    swift_unknownObjectRetain();
    v28 = v26;
    goto LABEL_8;
  }

  if (v22 >> 62)
  {
    v23 = sub_1A524E2B4();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v39[0];

  CanAddParticipants = PXSharedAlbumsCanAddParticipants(v24, v23);

  if (CanAddParticipants)
  {
    goto LABEL_7;
  }

  v26 = 0;
  v27 = 0;
  v14 = 0;
LABEL_8:
  v30 = v42;
  v29 = v43;
  v31 = *(v43 + 16);
  v32 = v40;
  v33 = v44;
  v31(v42, v40, v44);
  v34 = v41;
  v31(v41, v30, v33);
  sub_1A445DBAC();
  v36 = &v34[*(v35 + 48)];
  sub_1A4462474(v26);
  sub_1A44624CC(v26);
  *v36 = v26;
  *(v36 + 1) = v27;
  *(v36 + 2) = v14;
  v37 = *(v29 + 8);
  v37(v32, v33);
  sub_1A44624CC(v26);
  return (v37)(v30, v33);
}

void sub_1A445727C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 displayAddress];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1A44572D4@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  sub_1A445DDD0();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445DD44();
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445DD08(0);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445E0E8();
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44550B4(0, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v76 - v14;
  v78 = type metadata accessor for SharedAlbumSubscriberDetailsView(0);
  MEMORY[0x1EEE9AC00](v78);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445FD48(0, &unk_1EB13AE90, type metadata accessor for SharedAlbumSubscriberDetailsView, sub_1A445E0B4);
  v82 = v18;
  v80 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v76 - v19;
  sub_1A445DF5C();
  v85 = v20;
  v98 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = a2;
  v96 = &v76 - v23;
  v24 = *a1;
  v25 = a2[1];
  v100 = *a2;
  v26 = v100;
  v101 = v25;
  sub_1A44550B4(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v86 = v26;
  v104 = v26;
  v105 = v25;
  v84 = v25;
  v27 = v24;
  sub_1A524B6C4();
  v28 = v100;
  v29 = v101;
  v30 = v102;
  swift_getKeyPath();
  v100 = v28;
  v101 = v29;
  v102 = v30;
  sub_1A44550B4(0, &qword_1EB13E370, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v31 = v104;
  v32 = v105;
  v33 = v106;

  sub_1A4050694(v34);
  v97 = v27;
  v35 = v33;
  v36 = v77;
  sub_1A405071C(v15, v27, v31, v32, v35, v17);
  LODWORD(v28) = *(v95 + 32);
  v37 = v78;
  v38 = sub_1A445E0B4();
  sub_1A524AF24();
  sub_1A445F380(v17, type metadata accessor for SharedAlbumSubscriberDetailsView);
  if (v28 == 1)
  {
    v39 = v79;
    sub_1A524B704();
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v79;
  }

  sub_1A4462B04(0, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  v100 = v37;
  v101 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_1A445E56C(&unk_1EB13AEB0, sub_1A445E0E8, sub_1A445E16C);
  v44 = v96;
  v45 = v82;
  v46 = v83;
  sub_1A524ACD4();
  sub_1A445F380(v39, sub_1A445E0E8);
  (*(v80 + 8))(v36, v45);
  v47 = v85;
  v48 = (*(v98 + 16))(v81, v44, v85);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v97;
  *(&v76 - 2) = v97;
  sub_1A445E1F0();
  v100 = v45;
  v101 = v46;
  v102 = OpaqueTypeConformance2;
  v103 = v43;
  swift_getOpaqueTypeConformance2();
  v50 = v88;
  sub_1A5248444();
  v51 = [v49 displayAddress];
  v52 = sub_1A524C674();
  v54 = v53;

  v55 = [v49 invalidAddressString];
  if (v55)
  {
    v56 = v55;
    v57 = sub_1A524C674();
    v59 = v58;

    if (v52 == v57 && v54 == v59)
    {
      v60 = 1;
    }

    else
    {
      v60 = sub_1A524EAB4();
    }
  }

  else
  {
    v60 = 0;
  }

  KeyPath = swift_getKeyPath();
  v62 = swift_allocObject();
  *(v62 + 16) = v60 & 1;
  v63 = v93;
  (*(v89 + 32))(v93, v50, v90);
  v64 = &v63[*(v87 + 36)];
  *v64 = KeyPath;
  v64[1] = sub_1A3E07024;
  v64[2] = v62;
  v65 = sub_1A5249564();
  (*(v98 + 8))(v96, v47);
  v100 = v84;
  v66 = v95;
  v104 = v95[2];
  v67 = swift_allocObject();
  v68 = v97;
  *(v67 + 16) = v97;
  v69 = *(v66 + 1);
  *(v67 + 24) = *v66;
  *(v67 + 40) = v69;
  *(v67 + 56) = *(v66 + 32);
  v70 = v63;
  v71 = v91;
  sub_1A44627D0(v70, v91, sub_1A445DD44);
  v72 = (v71 + *(v92 + 36));
  *v72 = v65;
  v72[1] = sub_1A4462560;
  v72[2] = v67;
  sub_1A44627D0(v71, v94, sub_1A445DD08);
  v73 = v68;
  v74 = v86;
  sub_1A4462940(&v100, v99, &qword_1EB13AE38, sub_1A445DB70, MEMORY[0x1E69E6720]);
  sub_1A4461DC8(&v104, v99, sub_1A4462838);
  return swift_unknownObjectRetain();
}

double sub_1A4457D38@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharingDisplayNameIncludingEmail:1 allowsEmail:1];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1A524C674();
    v6 = v5;

    v7 = sub_1A524C634();
    v8 = PXLocalizedString(v7);

    sub_1A524C674();
    sub_1A3E072BC();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A52F8E10;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1A3D710E8();
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;
    v10 = sub_1A524C6C4();
    v12 = v11;

    *&v29 = v10;
    *(&v29 + 1) = v12;
  }

  else
  {
    v23 = sub_1A524C634();
    v24 = PXLocalizedString(v23);

    v25 = sub_1A524C674();
    v27 = v26;

    *&v29 = v25;
    *(&v29 + 1) = v27;
  }

  sub_1A3D5F9DC();
  v13 = sub_1A524A464();
  v15 = v14;
  v17 = v16;
  sub_1A524A254();
  v18 = sub_1A524A3C4();
  v20 = v19;
  v22 = v21;

  sub_1A3E04DF4(v13, v15, v17 & 1);

  sub_1A524B334();
  sub_1A524A364();

  sub_1A3E04DF4(v18, v20, v22 & 1);

  sub_1A5249744();
  result = *&v29;
  *a1 = v29;
  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  return result;
}

uint64_t sub_1A4458094()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [objc_opt_self() sharedAlbumIsOwned_];
  }

  sub_1A44550B4(0, &qword_1EB13AE48, sub_1A445DBAC, MEMORY[0x1E6981F40]);
  sub_1A3C39938(0, &qword_1EB13AEE0, &type metadata for SubscribersSection.creatorInvitationInfo, MEMORY[0x1E69E6720]);
  sub_1A445E244();
  sub_1A445E2CC();
  return sub_1A524BA44();
}

void sub_1A44581CC()
{
  swift_getKeyPath();
  sub_1A445E49C();
  sub_1A445D81C(&qword_1EB13AF18, sub_1A445E49C);
  sub_1A445E504();
  sub_1A445E5DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44582C0(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1A524C634();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    sub_1A3C52C70(0, &qword_1EB126630);
    sub_1A524B694();
    *a2 = v3;
    a2[1] = v6;
    a2[2] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A445838C()
{
  sub_1A3C38BD4();
  sub_1A3D5F9DC();
  sub_1A524DFA4();

  sub_1A524A464();
  sub_1A445E3C4();
  sub_1A445E56C(&qword_1EB13AF28, sub_1A445E3C4, sub_1A445E5DC);
  return sub_1A524BA34();
}

uint64_t sub_1A44584D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  sub_1A3EE53E0(0);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445D774(0, &qword_1EB13AF38, sub_1A445E8E4, MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  sub_1A445EAE8();
  v10 = v9;
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445EC9C();
  v59 = v13;
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445EF80();
  v62 = v15;
  v63 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A445F0A8();
  v64 = v17;
  v65 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v2;
  *&v68 = sub_1A3C38BD4();
  *(&v68 + 1) = v19;
  sub_1A3D5F9DC();
  *&v68 = sub_1A524A464();
  *(&v68 + 1) = v20;
  LOBYTE(v69) = v21 & 1;
  v70 = v22;
  sub_1A445A7D0(v2, v8);
  sub_1A44550B4(0, &qword_1EB13AF70, sub_1A445EBC8, MEMORY[0x1E6981F40]);
  sub_1A445EE10();
  sub_1A445EE98();
  sub_1A524BA44();
  v72 = *(v2 + 8);
  v68 = *(v2 + 8);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v23 = sub_1A524B6A4();
  (*(*v71 + 360))(v23);

  v24 = swift_allocObject();
  v25 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v2 + 64);
  *(v24 + 96) = *(v2 + 80);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  sub_1A445F348(v2, &v68);
  v27 = sub_1A445ED84();
  v28 = sub_1A445E56C(&unk_1EB13AFD0, sub_1A3EE53E0, sub_1A4397634);
  v29 = v58;
  sub_1A524B144();

  sub_1A445F380(v5, sub_1A3EE53E0);
  (*(v56 + 8))(v12, v10);
  v68 = v72;
  v30 = sub_1A524B6A4();
  LOBYTE(v5) = (*(*v71 + 312))(v30);

  LOBYTE(v71) = v5 & 1;
  v31 = swift_allocObject();
  v32 = *(v2 + 48);
  *(v31 + 48) = *(v2 + 32);
  *(v31 + 64) = v32;
  *(v31 + 80) = *(v2 + 64);
  *(v31 + 96) = *(v2 + 80);
  v33 = *(v2 + 16);
  *(v31 + 16) = *v2;
  *(v31 + 32) = v33;
  sub_1A445F348(v2, &v68);
  *&v68 = v10;
  *(&v68 + 1) = v29;
  v69 = v27;
  v70 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = MEMORY[0x1E69E6370];
  v36 = MEMORY[0x1E69E6388];
  v37 = v57;
  v38 = v59;
  v39 = v55;
  sub_1A524B144();

  v40 = v38;
  (*(v60 + 8))(v39, v38);
  v68 = v72;
  v41 = sub_1A524B6A4();
  LOBYTE(v38) = (*(*v71 + 408))(v41);

  LOBYTE(v71) = v38 & 1;
  v42 = swift_allocObject();
  v43 = *(v2 + 48);
  *(v42 + 48) = *(v2 + 32);
  *(v42 + 64) = v43;
  *(v42 + 80) = *(v2 + 64);
  *(v42 + 96) = *(v2 + 80);
  v44 = *(v2 + 16);
  *(v42 + 16) = *v2;
  *(v42 + 32) = v44;
  sub_1A445F348(v2, &v68);
  *&v68 = v40;
  *(&v68 + 1) = v35;
  v69 = OpaqueTypeConformance2;
  v70 = v36;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v61;
  v47 = v62;
  sub_1A524B144();

  (*(v63 + 8))(v37, v47);
  v68 = v72;
  v48 = sub_1A524B6A4();
  v49 = (*(*v71 + 456))(v48);

  LOBYTE(v71) = v49 & 1;
  v50 = swift_allocObject();
  v51 = *(v2 + 48);
  *(v50 + 48) = *(v2 + 32);
  *(v50 + 64) = v51;
  *(v50 + 80) = *(v2 + 64);
  *(v50 + 96) = *(v2 + 80);
  v52 = *(v2 + 16);
  *(v50 + 16) = *v2;
  *(v50 + 32) = v52;
  sub_1A445F348(v2, &v68);
  *&v68 = v47;
  *(&v68 + 1) = v35;
  v69 = v45;
  v70 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v53 = v64;
  sub_1A524B144();

  return (*(v65 + 8))(v46, v53);
}

uint64_t sub_1A4458E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  sub_1A3FF75A0();
  v100 = v3;
  v98 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1A44550B4(0, &unk_1EB13AF90, sub_1A3FF75A0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v101 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v89 - v11;
  sub_1A4462B04(0, &qword_1EB130100, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D6A0]);
  v13 = v12;
  v104 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v89 - v14;
  sub_1A3FF705C();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44550B4(0, &unk_1EB13AF80, sub_1A3FF705C, v7);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v97 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v89 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v108 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v89 - v32;
  v34 = objc_opt_self();
  v115 = *(a1 + 8);
  v111 = *(a1 + 8);
  sub_1A44550B4(0, &unk_1EB13AFF0, type metadata accessor for SharedAlbumObservableModel, MEMORY[0x1E6981790]);
  v103 = v35;
  v36 = sub_1A524B6A4();
  v37 = (*(*v114 + 216))(v36);

  v105 = v34;
  v38 = [v34 canSetMultipleContributorsEnabledForSharedAlbum_];

  v106 = v33;
  v94 = v13;
  v92 = v20;
  if (v38)
  {
    *&v113 = sub_1A3C38BD4();
    *(&v113 + 1) = v39;
    v114 = *(a1 + 24);
    v112 = *(a1 + 24);
    sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    sub_1A3D5F9DC();
    v33 = v106;
    sub_1A524B864();
    v111 = v114;
    sub_1A524B6A4();
    v40 = swift_allocObject();
    v41 = *(a1 + 48);
    *(v40 + 48) = *(a1 + 32);
    *(v40 + 64) = v41;
    *(v40 + 80) = *(a1 + 64);
    *(v40 + 96) = *(a1 + 80);
    v42 = *(a1 + 16);
    *(v40 + 16) = *a1;
    *(v40 + 32) = v42;
    sub_1A445F348(a1, &v111);
    sub_1A3FF7120();
    sub_1A524B144();

    (*(v104 + 8))(v15, v13);
    (*(v18 + 32))(v33, v20, v17);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v93 = v18;
  v44 = *(v18 + 56);
  v45 = 1;
  v44(v33, v43, 1, v17);
  v111 = v115;
  v46 = sub_1A524B6A4();
  v47 = (*(*v113 + 216))(v46);

  v48 = [v105 canSetNotificationsEnabledForSharedAlbum_];

  if (v48)
  {
    *&v112 = sub_1A3C38BD4();
    *(&v112 + 1) = v49;
    v113 = *(a1 + 40);
    v110 = *(a1 + 40);
    sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    sub_1A3D5F9DC();
    sub_1A524B864();
    v111 = v113;
    sub_1A524B6A4();
    v50 = swift_allocObject();
    v51 = *(a1 + 48);
    *(v50 + 48) = *(a1 + 32);
    *(v50 + 64) = v51;
    *(v50 + 80) = *(a1 + 64);
    *(v50 + 96) = *(a1 + 80);
    v52 = *(a1 + 16);
    *(v50 + 16) = *a1;
    *(v50 + 32) = v52;
    sub_1A445F348(a1, &v111);
    sub_1A3FF7120();
    v53 = v92;
    v54 = v94;
    sub_1A524B144();

    (*(v104 + 8))(v15, v54);
    (*(v93 + 32))(v108, v53, v17);
    v45 = 0;
  }

  v55 = 1;
  v44(v108, v45, 1, v17);
  v111 = v115;
  v56 = sub_1A524B6A4();
  v57 = (*(*v112 + 216))(v56);

  v58 = [v105 canSetPublicURLEnabledForSharedAlbum_];

  if (v58)
  {
    *&v110 = sub_1A3C38BD4();
    *(&v110 + 1) = v59;
    v112 = *(a1 + 56);
    v109 = *(a1 + 56);
    sub_1A3C39938(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6C4();
    sub_1A3D5F9DC();
    sub_1A524B864();
    v111 = v112;
    sub_1A524B6A4();
    v60 = swift_allocObject();
    v61 = *(a1 + 48);
    *(v60 + 48) = *(a1 + 32);
    *(v60 + 64) = v61;
    *(v60 + 80) = *(a1 + 64);
    *(v60 + 96) = *(a1 + 80);
    v62 = *(a1 + 16);
    *(v60 + 16) = *a1;
    *(v60 + 32) = v62;
    sub_1A445F348(a1, &v111);
    sub_1A3FF7120();
    v63 = v92;
    v64 = v94;
    sub_1A524B144();

    (*(v104 + 8))(v15, v64);
    (*(v93 + 32))(v107, v63, v17);
    v55 = 0;
  }

  v65 = 1;
  v44(v107, v55, 1, v17);
  v111 = v115;
  v66 = sub_1A524B6A4();
  v67 = (*(*v110 + 312))(v66);

  v68 = v100;
  v69 = v99;
  v70 = v98;
  if (v67)
  {
    v111 = v115;
    v71 = sub_1A524B6A4();
    v72 = v91;
    (*(*v110 + 360))(v71);

    v73 = sub_1A5240E64();
    v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
    sub_1A445F380(v72, sub_1A3EE53E0);
    if (v74 != 1)
    {
      v75 = swift_allocObject();
      v76 = *(a1 + 48);
      *(v75 + 48) = *(a1 + 32);
      *(v75 + 64) = v76;
      *(v75 + 80) = *(a1 + 64);
      *(v75 + 96) = *(a1 + 80);
      v77 = *(a1 + 16);
      *(v75 + 16) = *a1;
      *(v75 + 32) = v77;
      sub_1A445F348(a1, &v111);
      sub_1A3FF7634();
      sub_1A445D81C(&qword_1EB13AFA0, sub_1A3FF7634);
      v78 = v90;
      sub_1A524B704();
      (*(v70 + 32))(v69, v78, v68);
      v65 = 0;
    }
  }

  (*(v70 + 56))(v69, v65, 1, v68);
  v79 = v95;
  sub_1A3CFE47C(v106, v95);
  v80 = v96;
  sub_1A3CFE47C(v108, v96);
  v81 = v107;
  v82 = v97;
  sub_1A3CFE47C(v107, v97);
  v83 = MEMORY[0x1E69E6720];
  v84 = v101;
  sub_1A4462940(v69, v101, &unk_1EB13AF90, sub_1A3FF75A0, MEMORY[0x1E69E6720]);
  v85 = v102;
  sub_1A3CFE47C(v79, v102);
  sub_1A445EBC8();
  v87 = v86;
  sub_1A3CFE47C(v80, v85 + *(v86 + 48));
  sub_1A3CFE47C(v82, v85 + *(v87 + 64));
  sub_1A4462940(v84, v85 + *(v87 + 80), &unk_1EB13AF90, sub_1A3FF75A0, v83);
  sub_1A44629B0(v69, &unk_1EB13AF90, sub_1A3FF75A0, v83);
  sub_1A3CFE510(v81);
  sub_1A3CFE510(v108);
  sub_1A3CFE510(v106);
  sub_1A44629B0(v84, &unk_1EB13AF90, sub_1A3FF75A0, v83);
  sub_1A3CFE510(v82);
  sub_1A3CFE510(v80);
  return sub_1A3CFE510(v79);
}