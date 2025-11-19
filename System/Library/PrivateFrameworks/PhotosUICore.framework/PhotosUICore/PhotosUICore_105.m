uint64_t sub_1A49C86E8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);
  }

  return result;
}

uint64_t sub_1A49C8820(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);
  }

  return result;
}

uint64_t sub_1A49C8958(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  sub_1A49C8A5C(a1, a3, v10);
  v6 = v11;
  v5 = v12;
  v7 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = sub_1A3C66934(v7, v6, *(v5 + 8));

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

uint64_t sub_1A49C8A5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  boxed_opaque_existential_1 = a3;
  v82 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v82);
  v5 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeSuggestionsFeature(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CC018(a1, v17, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v43 = *(v17 + 3);
        *&v89[16] = *(v17 + 2);
        v90 = v43;
        v91 = *(v17 + 4);
        v92 = v17[80];
        v44 = *(v17 + 1);
        v88 = *v17;
        *v89 = v44;
        v45 = *(v17 + 40);
        v86[0] = *(v17 + 24);
        v86[1] = v45;
        v87[0] = *(v17 + 56);
        *(v87 + 9) = *(v17 + 65);
        sub_1A40F214C();
        v46 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v47;
        v46[4] = sub_1A49CC0E0(&qword_1EB146F40, sub_1A40F214C);
        v48 = swift_allocObject();
        *v46 = v48;
        sub_1A3FA1224(&v89[8], v85);
        sub_1A40F227C();
        sub_1A3C51EF8();
        sub_1A49CBDE8(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4);
        sub_1A49CC0E0(&qword_1EB129238, sub_1A3CA2A44);
        sub_1A3D6FBA4();
        sub_1A3CA2B54();
        sub_1A40F2320();
        sub_1A432C3B4(v86, v83, &type metadata for LemonadeAlbumsFeature.ShelfProvider, v48 + 16);
        return sub_1A3FA1280(&v88);
      }

      if (EnumCaseMultiPayload == 1)
      {
        v34 = *(v17 + 2);
        v82 = *(v17 + 1);
        v81 = v34;
        v35 = *(v17 + 3);
        LOBYTE(v34) = v17[32];
        v80[1] = *(v17 + 5);
        *&v88 = v35;
        BYTE8(v88) = v34;
        sub_1A40F294C();
        v36 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v37;
        *(v36 + 32) = sub_1A49CC0E0(&unk_1EB146EF0, sub_1A40F294C);
        sub_1A40F2A7C();
        sub_1A3C445AC();
        sub_1A49CBE58();
        sub_1A3D6ECFC();
        sub_1A3D71010();
        sub_1A40F2BE0();
        sub_1A40F2320();
        v38 = v83;
        v39 = v35;
        sub_1A432C3B4(&v88, v38, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v36);

        goto LABEL_27;
      }

      goto LABEL_28;
    }

    switch(EnumCaseMultiPayload)
    {
      case 2:
        v55 = *(v17 + 2);
        v82 = *(v17 + 1);
        v81 = v55;
        LOWORD(v55) = *(v17 + 16);
        *&v88 = *(v17 + 3);
        v56 = v88;
        WORD4(v88) = v55;
        sub_1A40F2D8C();
        v57 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v58;
        *(v57 + 32) = sub_1A49CC0E0(&unk_1EB146EC0, sub_1A40F2D8C);
        sub_1A40F2EEC();
        sub_1A3C36888();
        sub_1A49CBDE8(&qword_1EB1320A8, sub_1A3D61454, sub_1A40F2F40);
        sub_1A49CC0E0(&qword_1EB124E78, sub_1A3D61454);
        sub_1A40F2F40();
        sub_1A49CC0E0(&qword_1EB12A420, type metadata accessor for PeopleUnifiedItem);
        sub_1A40F2320();
        v59 = v83;
        v60 = v56;
        v61 = &type metadata for LemonadePeopleShelfProvider;
        break;
      case 4:
        v67 = *(v17 + 2);
        v82 = *(v17 + 1);
        v81 = v67;
        LOBYTE(v67) = v17[32];
        *&v88 = *(v17 + 3);
        v68 = v88;
        BYTE8(v88) = v67;
        sub_1A40F31EC();
        v57 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v69;
        *(v57 + 32) = sub_1A49CC0E0(&qword_1EB1320E8, sub_1A40F31EC);
        sub_1A40F3338();
        sub_1A3C440BC();
        sub_1A40F338C();
        sub_1A49CC0E0(&qword_1EB124EC0, sub_1A40F3434);
        sub_1A40F3648(&qword_1EB124B68, sub_1A3D71010);
        sub_1A40F3648(&qword_1EB124B70, sub_1A40F2BE0);
        sub_1A40F2320();
        v59 = v83;
        v60 = v68;
        v61 = &type metadata for LemonadeEventsFeature.ShelfProvider;
        break;
      case 5:
        v19 = *(v17 + 2);
        v82 = *(v17 + 1);
        v81 = v19;
        v21 = *(v17 + 4);
        LOBYTE(v19) = v17[40];
        *&v88 = *(v17 + 3);
        v20 = v88;
        *(&v88 + 1) = v21;
        v89[0] = v19;
        sub_1A40F36F4();
        v22 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v23;
        v22[4] = sub_1A49CC0E0(&qword_1EB132100, sub_1A40F36F4);
        v24 = swift_allocObject();
        *v22 = v24;
        boxed_opaque_existential_1 = sub_1A40F3824();
        sub_1A3C441B4();
        sub_1A49CBCE0(&unk_1EB146E80, &qword_1EB129270, MEMORY[0x1E69C1E60]);
        sub_1A49CBD60();
        sub_1A3D71010();
        sub_1A40F2BE0();
        sub_1A40F2320();
        v25 = v83;
        v26 = v20;
        v27 = v21;
        sub_1A432C3B4(&v88, v25, &type metadata for LemonadeTripsFeature.ShelfProvider, v24 + 16);

LABEL_27:

      default:
        goto LABEL_28;
    }

    v70 = v57;
    v71 = v59;
LABEL_26:
    sub_1A432C3B4(&v88, v71, v61, v70);

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 17)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v50 = *(v17 + 1);
      v88 = *v17;
      *v89 = v50;
      *&v89[16] = *(v17 + 4);
      sub_1A459C7CC();
      v93 = v51;
      v94 = v52;
      sub_1A40F3A20();
      v53 = boxed_opaque_existential_1;
      boxed_opaque_existential_1[3] = v54;
      *(v53 + 32) = sub_1A49CC0E0(&unk_1EB146E60, sub_1A40F3A20);
      sub_1A40F3B50();
      sub_1A3C411C8();
      sub_1A49CBDE8(&qword_1EB124E90, sub_1A3F93438, sub_1A40F3C14);
      sub_1A49CC0E0(&qword_1EB1291B8, sub_1A3F93438);
      sub_1A40F3C14();
      sub_1A40F3BA4();
      sub_1A40F2320();
      sub_1A432C3B4(&v93, v83, &type metadata for LemonadeMemoriesFeature.ShelfProvider, v53);
      v85[0] = v88;
      sub_1A3C651B8(v85);

      v86[0] = *&v89[8];
      return sub_1A49CBC30(v86, &qword_1EB1254A0, sub_1A40A5D98);
    }

    if (EnumCaseMultiPayload == 15)
    {
      sub_1A49CBFB0(v17, v14, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
      sub_1A49CC018(&v14[*(v12 + 24)], v11, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      sub_1A40F2788();
      v40 = boxed_opaque_existential_1;
      boxed_opaque_existential_1[3] = v41;
      v40[4] = sub_1A49CC0E0(&unk_1EB146F20, sub_1A40F2788);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
      sub_1A49CC0E0(&unk_1EB146F00, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      sub_1A49CC0E0(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      sub_1A49CBDE8(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4);
      sub_1A49CC0E0(&qword_1EB129238, sub_1A3CA2A44);
      sub_1A3D6FBA4();
      sub_1A3CA2B54();
      sub_1A40F2320();
      v42 = v83;
      sub_1A432C3B4(v11, v42, v9, boxed_opaque_existential_1);
      v32 = type metadata accessor for LemonadeMacSyncedAlbumsFeature;
      v33 = v14;
      return sub_1A49CC080(v33, v32);
    }

LABEL_28:
    sub_1A3C53294(&v88);
    v75 = *&v89[8];
    v76 = *&v89[16];
    __swift_project_boxed_opaque_existential_1(&v88, *&v89[8]);
    v77 = *(v76 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v79 = boxed_opaque_existential_1;
    boxed_opaque_existential_1[3] = AssociatedTypeWitness;
    v79[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v79);
    v77(v75, v76);
    __swift_destroy_boxed_opaque_existential_0(&v88);
    v32 = type metadata accessor for LemonadeFeatureLibrary.Shelf;
    v33 = v17;
    return sub_1A49CC080(v33, v32);
  }

  if (EnumCaseMultiPayload == 18)
  {
    v62 = *(v17 + 2);
    v82 = *(v17 + 1);
    v81 = v62;
    LOBYTE(v62) = v17[32];
    *&v88 = *(v17 + 3);
    v63 = v88;
    BYTE8(v88) = v62;
    sub_1A40F3D00();
    v64 = boxed_opaque_existential_1;
    boxed_opaque_existential_1[3] = v65;
    *(v64 + 32) = sub_1A49CC0E0(&unk_1EB146E40, sub_1A40F3D00);
    sub_1A40F3E30();
    sub_1A3C442E8();
    sub_1A49CBB00();
    sub_1A49CBBA8();
    sub_1A3D71010();
    sub_1A40F2BE0();
    sub_1A40F2320();
    v66 = v83;
    v60 = v63;
    v61 = &type metadata for LemonadeMediaTypesFeature.ShelfProvider;
LABEL_25:
    v70 = v64;
    v71 = v66;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 19)
  {
    v72 = *(v17 + 2);
    v82 = *(v17 + 1);
    v81 = v72;
    LOBYTE(v72) = v17[32];
    *&v88 = *(v17 + 3);
    v73 = v88;
    BYTE8(v88) = v72;
    sub_1A40F4018();
    v64 = boxed_opaque_existential_1;
    boxed_opaque_existential_1[3] = v74;
    *(v64 + 32) = sub_1A49CC0E0(&unk_1EB146E20, sub_1A40F4018);
    sub_1A40F4148();
    sub_1A3C52114();
    sub_1A49CBB00();
    sub_1A49CBBA8();
    sub_1A3D71010();
    sub_1A40F2BE0();
    sub_1A40F2320();
    v66 = v83;
    v60 = v73;
    v61 = &type metadata for LemonadeUtilitiesFeature.ShelfProvider;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 21)
  {
    goto LABEL_28;
  }

  sub_1A49CBFB0(v17, v8, type metadata accessor for LemonadeSuggestionsFeature);
  sub_1A49CC018(&v8[*(v6 + 24)], v5, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  sub_1A40F426C();
  v28 = boxed_opaque_existential_1;
  boxed_opaque_existential_1[3] = v29;
  v28[4] = sub_1A49CC0E0(&unk_1EB146DF0, sub_1A40F426C);
  v30 = __swift_allocate_boxed_opaque_existential_1(v28);
  sub_1A49CC0E0(&qword_1EB132160, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  sub_1A49CC0E0(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  sub_1A49CBCE0(&qword_1EB132168, &qword_1EB129120, MEMORY[0x1E69C22A0]);
  sub_1A49CBA78();
  sub_1A3D71010();
  sub_1A40F2BE0();
  sub_1A40F2320();
  v31 = v83;
  sub_1A432C3B4(v5, v31, v82, v30);
  v32 = type metadata accessor for LemonadeSuggestionsFeature;
  v33 = v8;
  return sub_1A49CC080(v33, v32);
}

uint64_t sub_1A49C9BAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1A524CC54();
    sub_1A3C67884(sub_1A49CC33C, v1);
  }

  return result;
}

uint64_t sub_1A49C9C48(char a1)
{
  v3 = (*(*v1 + 344))();
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) == v4)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v7);
  }

  swift_getKeyPath();
  (*(*v1 + 656))();

  swift_getKeyPath();
  sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel);
  sub_1A52415F4();

  ++*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal);
  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v1 + v5) == v3)
  {
    *(v1 + v5) = v3;
  }

  else
  {
    v9 = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](v9);
    (*(*v1 + 664))(v10);
  }

  return result;
}

double sub_1A49C9FF8()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1A49CA088(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 416))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void (*sub_1A49CA134(uint64_t *a1))(void *a1)
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A49C9F98();
  return sub_1A49CA284;
}

double sub_1A49CA2F0()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize;
  swift_beginAccess();
  return *v1;
}

void (*sub_1A49CA420(uint64_t *a1))(void *a1)
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A49CA290();
  return sub_1A49CA570;
}

uint64_t sub_1A49CA5DC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___horizontalSizeClass;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A49CA674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49CA6D8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 520))(&v4);
}

void (*sub_1A49CA738(uint64_t *a1))(void *a1)
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A49CA57C();
  return sub_1A49CA888;
}

uint64_t sub_1A49CA8F4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___verticalSizeClass;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A49CA98C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49CA9F0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 568))(&v4);
}

void (*sub_1A49CAA50(uint64_t *a1))(void *a1)
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A49CA894();
  return sub_1A49CABA0;
}

uint64_t sub_1A49CAC0C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void *sub_1A49CACA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 608))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49CAD08(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 616))(&v4);
}

void (*sub_1A49CAD68(uint64_t *a1))(void *a1)
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A49CABAC();
  return sub_1A49CAEB8;
}

uint64_t sub_1A49CAEF0()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = -1;
  return sub_1A49C7B00(v1);
}

uint64_t sub_1A49CB068()
{
  swift_unknownObjectRelease();

  sub_1A49CBC30(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel_cellSpecs, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
  sub_1A4579A80(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier);
  v1 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A49CB134()
{
  sub_1A49CB068();

  return swift_deallocClassInstance();
}

void (*sub_1A49CB1E4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 480))();
  return sub_1A3E62A10;
}

void (*sub_1A49CB2D4(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 432))();
  return sub_1A3E658B0;
}

void (*sub_1A49CB3EC(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 528))();
  return sub_1A3E658B0;
}

void (*sub_1A49CB504(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 576))();
  return sub_1A3E658B0;
}

void (*sub_1A49CB61C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 624))();
  return sub_1A3E658B0;
}

uint64_t sub_1A49CB888()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  swift_beginAccess();
  sub_1A49C766C(v1, v2 + v3);
  return swift_endAccess();
}

double sub_1A49CB8F0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = result;
  return result;
}

__n128 sub_1A49CB918()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A49CB97C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize);
  result = swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  return result;
}

uint64_t sub_1A49CBA1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1A49CBA78()
{
  result = qword_1EB146DE0;
  if (!qword_1EB146DE0)
  {
    sub_1A49CBF00(255, &qword_1EB129120, sub_1A40F35D8, MEMORY[0x1E69C22A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146DE0);
  }

  return result;
}

unint64_t sub_1A49CBB00()
{
  result = qword_1EB146E10;
  if (!qword_1EB146E10)
  {
    sub_1A49CBF00(255, &qword_1EB1290B8, sub_1A40F3F24, MEMORY[0x1E69C2470]);
    sub_1A3D71010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146E10);
  }

  return result;
}

unint64_t sub_1A49CBBA8()
{
  result = qword_1EB124D98;
  if (!qword_1EB124D98)
  {
    sub_1A49CBF00(255, &qword_1EB1290B8, sub_1A40F3F24, MEMORY[0x1E69C2470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124D98);
  }

  return result;
}

uint64_t sub_1A49CBC30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A49CBC8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A49CBC8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A49CBCE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1A49CBF00(255, a2, sub_1A40F35D8, a3);
    sub_1A3D71010();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49CBD60()
{
  result = qword_1EB129290;
  if (!qword_1EB129290)
  {
    sub_1A49CBF00(255, &qword_1EB129270, sub_1A40F35D8, MEMORY[0x1E69C1E60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129290);
  }

  return result;
}

uint64_t sub_1A49CBDE8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49CBE58()
{
  result = qword_1EB146EE0;
  if (!qword_1EB146EE0)
  {
    sub_1A49CBF00(255, &qword_1EB1291F8, sub_1A40F2B70, MEMORY[0x1E69C1F50]);
    sub_1A3D71010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146EE0);
  }

  return result;
}

void sub_1A49CBF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0);
    v11[0] = v8;
    v11[1] = a3();
    v11[2] = sub_1A40F2BE0();
    v11[3] = sub_1A40F2C50();
    v9 = a4(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A49CBFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49CC018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49CC080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49CC0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LemonadePickerRootViewModel()
{
  result = qword_1EB1E4CA0;
  if (!qword_1EB1E4CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49CC174(uint64_t a1)
{
  result = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel);
  *(a1 + 8) = result;
  return result;
}

void sub_1A49CC1D4()
{
  sub_1A49CBC8C(319, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A49CC3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *a4 = v12;
  a4[1] = v14;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

uint64_t sub_1A49CC4A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1A49CC4B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DCB8];
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1A49D4778(v2, &v14 - v10, &qword_1EB128A38, sub_1A3EBE398, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A49D4B10(v11, a1, sub_1A3EBE398);
  }

  sub_1A524D254();
  v13 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t type metadata accessor for PhotosDetailsSearchView()
{
  result = qword_1EB1E4DC0;
  if (!qword_1EB1E4DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49CC710(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A49D5B6C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A49CC790()
{
  type metadata accessor for PhotosDetailsSearchView();
  sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A49CC818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for PhotosDetailsSearchView();
  v11 = (a5 + v10[6]);
  sub_1A49D5B6C(0, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
  sub_1A524B694();
  *v11 = v18;
  v11[1] = v19;
  v12 = (a5 + v10[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a5 + v10[9];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_1A3C341C8(a1, a5 + v10[7]);
  *(a5 + v10[10]) = a4;
  if (!a3)
  {
    a2 = 0;
    a3 = 0xE000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = (a5 + v10[5]);
  *v15 = a2;
  v15[1] = a3;
  v15[2] = 0;
  v16 = a5 + v10[11];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = a5 + v10[12];
  *v17 = 0;
  *(v17 + 1) = 0;
  return result;
}

void sub_1A49CCA20()
{
  if (!qword_1EB146F78)
  {
    sub_1A49CCB24();
    sub_1A5249C44();
    sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24);
    sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146F78);
    }
  }
}

void sub_1A49CCB24()
{
  if (!qword_1EB146F80)
  {
    sub_1A49CCC94();
    sub_1A49CCDEC();
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    sub_1A49CCEC4();
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A49CE424();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146F80);
    }
  }
}

void sub_1A49CCC94()
{
  if (!qword_1EB146F88)
  {
    sub_1A49CCDEC();
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    sub_1A49CCEC4();
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A49CE424();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146F88);
    }
  }
}

void sub_1A49CCDEC()
{
  if (!qword_1EB146F90)
  {
    sub_1A49CCEC4();
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146F90);
    }
  }
}

void sub_1A49CCEC4()
{
  if (!qword_1EB146F98)
  {
    sub_1A49D35A0(255, &qword_1EB146FA0, &qword_1EB146FA8, sub_1A49CCF5C, sub_1A49CDEE0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146F98);
    }
  }
}

void sub_1A49CCF5C()
{
  if (!qword_1EB146FB0)
  {
    sub_1A49CD278(255, &qword_1EB146FB8, sub_1A49CD020, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A49CD190(255, &qword_1EB146FD8, MEMORY[0x1E697F960]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146FB0);
    }
  }
}

void sub_1A49CD020()
{
  if (!qword_1EB146FC0)
  {
    sub_1A49CE26C(255, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A49CD0E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146FC0);
    }
  }
}

unint64_t sub_1A49CD0E4()
{
  result = qword_1EB146FD0;
  if (!qword_1EB146FD0)
  {
    sub_1A49CE26C(255, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A48DA010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146FD0);
  }

  return result;
}

void sub_1A49CD190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A49D5784(255, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
    v7 = a3(a1, v6, MEMORY[0x1E6981840]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49CD278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A49CD2E4()
{
  if (!qword_1EB146FF0)
  {
    sub_1A49CD380(255);
    sub_1A49CD58C(&qword_1EB147020, sub_1A49CD380, sub_1A49CD60C);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB146FF0);
    }
  }
}

void sub_1A49CD3BC()
{
  if (!qword_1EB147000)
  {
    sub_1A49D4BF0(255, &qword_1EB147008, sub_1A49CD450, MEMORY[0x1E6981F40]);
    sub_1A49CD504();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147000);
    }
  }
}

void sub_1A49CD450()
{
  if (!qword_1EB147010)
  {
    sub_1A49CE26C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3FF8D1C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB147010);
    }
  }
}

unint64_t sub_1A49CD504()
{
  result = qword_1EB147018;
  if (!qword_1EB147018)
  {
    sub_1A49D4BF0(255, &qword_1EB147008, sub_1A49CD450, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147018);
  }

  return result;
}

uint64_t sub_1A49CD58C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A49CD640(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A49CD688()
{
  if (!qword_1EB147030)
  {
    sub_1A49CD75C();
    sub_1A52484F4();
    sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147030);
    }
  }
}

void sub_1A49CD75C()
{
  if (!qword_1EB147038)
  {
    sub_1A49CD820();
    sub_1A49CEBFC(&qword_1EB147090, sub_1A49CD820, sub_1A49CDC04);
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147038);
    }
  }
}

void sub_1A49CD820()
{
  if (!qword_1EB147040)
  {
    sub_1A49D5B6C(255, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
    sub_1A49D5784(255, &qword_1EB147048, sub_1A49CD920, sub_1A49CD9E4, MEMORY[0x1E697F960]);
    sub_1A49CDB88();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147040);
    }
  }
}

void sub_1A49CD968()
{
  if (!qword_1EB147058)
  {
    sub_1A49D4C54(255, &qword_1EB147060, sub_1A49CD9E4);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147058);
    }
  }
}

void sub_1A49CD9E4()
{
  if (!qword_1EB147068)
  {
    sub_1A3C71318(255, &qword_1EB147070, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, MEMORY[0x1E69E62F8]);
    sub_1A49CDA9C();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147068);
    }
  }
}

unint64_t sub_1A49CDA9C()
{
  result = qword_1EB147078;
  if (!qword_1EB147078)
  {
    sub_1A3C71318(255, &qword_1EB147070, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147078);
  }

  return result;
}

void sub_1A49CDB20()
{
  if (!qword_1EB147080)
  {
    sub_1A49CD9E4();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147080);
    }
  }
}

unint64_t sub_1A49CDB88()
{
  result = qword_1EB147088;
  if (!qword_1EB147088)
  {
    sub_1A49D5B6C(255, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147088);
  }

  return result;
}

unint64_t sub_1A49CDC04()
{
  result = qword_1EB147098;
  if (!qword_1EB147098)
  {
    sub_1A49D5784(255, &qword_1EB147048, sub_1A49CD920, sub_1A49CD9E4, MEMORY[0x1E697F960]);
    sub_1A49CDD0C();
    sub_1A49CEBFC(&qword_1EB1470B8, sub_1A49CD9E4, sub_1A49CDE8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147098);
  }

  return result;
}

unint64_t sub_1A49CDD0C()
{
  result = qword_1EB1470A0;
  if (!qword_1EB1470A0)
  {
    sub_1A49CD920(255);
    sub_1A49CD640(&qword_1EB1470A8, sub_1A49CD968);
    sub_1A49CDDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470A0);
  }

  return result;
}

unint64_t sub_1A49CDDBC()
{
  result = qword_1EB1470B0;
  if (!qword_1EB1470B0)
  {
    sub_1A49CDB20();
    sub_1A49CEBFC(&qword_1EB1470B8, sub_1A49CD9E4, sub_1A49CDE8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470B0);
  }

  return result;
}

unint64_t sub_1A49CDE8C()
{
  result = qword_1EB1470C0;
  if (!qword_1EB1470C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470C0);
  }

  return result;
}

unint64_t sub_1A49CDEE0()
{
  result = qword_1EB1470D0;
  if (!qword_1EB1470D0)
  {
    sub_1A49D4BF0(255, &qword_1EB146FA8, sub_1A49CCF5C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470D0);
  }

  return result;
}

unint64_t sub_1A49CDF68()
{
  result = qword_1EB1470E0;
  if (!qword_1EB1470E0)
  {
    sub_1A49D35A0(255, &qword_1EB146FA0, &qword_1EB146FA8, sub_1A49CCF5C, sub_1A49CDEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470E0);
  }

  return result;
}

void sub_1A49CDFF8()
{
  if (!qword_1EB1470F0)
  {
    sub_1A49CE16C(255, &qword_1EB1470F8, sub_1A49CE0C8, sub_1A49CE104);
    sub_1A49CE16C(255, &qword_1EB147110, sub_1A49CE1E8, sub_1A49CE2C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1470F0);
    }
  }
}

void sub_1A49CE16C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1A5247F34();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49CE26C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A49CE2C0()
{
  result = qword_1EB147128;
  if (!qword_1EB147128)
  {
    sub_1A49CE1E8(255);
    sub_1A49CD640(&qword_1EB1289A0, sub_1A411848C);
    sub_1A49CE3A0(&qword_1EB147130, sub_1A49CE230, sub_1A3F1EC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147128);
  }

  return result;
}

uint64_t sub_1A49CE3A0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49CE424()
{
  result = qword_1EB147138;
  if (!qword_1EB147138)
  {
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147138);
  }

  return result;
}

uint64_t sub_1A49CE4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_1A49CCDEC();
  v54 = v3;
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49D5784(0, &qword_1EB1471E0, sub_1A49CCA20, sub_1A49CCDEC, MEMORY[0x1E697F948]);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v51 = sub_1A5249C44();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CCB24();
  v12 = v11;
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CCA20();
  v52 = v15;
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (a1 + *(type metadata accessor for PhotosDetailsSearchView() + 28));
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v21 = (*(v20 + 32))(v19, v20);
  if (v21)
  {
    v45[2] = v45;
    MEMORY[0x1EEE9AC00](v21);
    v45[-2] = a1;
    sub_1A49CCC94();
    v45[1] = v22;
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    v24 = v23;
    sub_1A49CCEC4();
    v26 = v25;
    v27 = sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    v28 = sub_1A3D5F9DC();
    v55 = v26;
    v56 = MEMORY[0x1E69E6158];
    v57 = v27;
    v58 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = OpaqueTypeConformance2;
    v30 = sub_1A49CE424();
    v55 = v54;
    v56 = v24;
    v57 = OpaqueTypeConformance2;
    v58 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1A5248474();
    sub_1A5249C34();
    v31 = sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24);
    v32 = sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938]);
    v33 = v51;
    sub_1A524A864();
    (*(v47 + 8))(v10, v33);
    (*(v46 + 8))(v14, v12);
    v34 = v48;
    v35 = v52;
    (*(v48 + 16))(v8, v17, v52);
    swift_storeEnumTagMultiPayload();
    v55 = v12;
    v56 = v33;
    v57 = v31;
    v58 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v34 + 8))(v17, v35);
  }

  else
  {
    sub_1A49CEFF0(v5);
    v37 = v49;
    v38 = v54;
    (*(v49 + 16))(v8, v5, v54);
    swift_storeEnumTagMultiPayload();
    v39 = sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24);
    v40 = sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938]);
    v55 = v12;
    v56 = v51;
    v57 = v39;
    v58 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1A49CCEC4();
    v42 = v41;
    v43 = sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    v44 = sub_1A3D5F9DC();
    v55 = v42;
    v56 = MEMORY[0x1E69E6158];
    v57 = v43;
    v58 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v37 + 8))(v5, v38);
  }
}

uint64_t sub_1A49CEBFC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49CEC6C()
{
  result = qword_1EB147150;
  if (!qword_1EB147150)
  {
    sub_1A49CC9D8(255);
    sub_1A49CCB24();
    sub_1A5249C44();
    sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24);
    sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938]);
    swift_getOpaqueTypeConformance2();
    sub_1A49CCEC4();
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147150);
  }

  return result;
}

uint64_t sub_1A49CEE18(uint64_t a1)
{
  sub_1A49CCDEC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A49CEFF0(v6);
  v13 = a1;
  sub_1A49D4BF0(0, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
  sub_1A49CCEC4();
  v8 = v7;
  v9 = sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
  v10 = sub_1A3D5F9DC();
  v14 = v8;
  v15 = MEMORY[0x1E69E6158];
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeConformance2();
  sub_1A49CE424();
  sub_1A524B0E4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A49CEFF0@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_1A5249284();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosDetailsSearchView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CCEC4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = sub_1A5249574();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_1A49D4A78();
  sub_1A49CFE78(v1, &v14[*(v15 + 44)]);
  sub_1A49D4848(v1, v10, type metadata accessor for PhotosDetailsSearchView);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_1A49D4B10(v10, v17 + v16, type metadata accessor for PhotosDetailsSearchView);
  v18 = &v14[*(v12 + 36)];
  *v18 = sub_1A49D4B78;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v19 = (v1 + *(v7 + 36));
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v24[2] = (*(v21 + 8))(v20, v21);
  v24[3] = v22;
  (*(v3 + 104))(v5, *MEMORY[0x1E697C438], v2);
  sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
  sub_1A3D5F9DC();
  sub_1A524ACF4();
  (*(v3 + 8))(v5, v2);

  return sub_1A49D4B90(v14, sub_1A49CCEC4);
}

uint64_t sub_1A49CF328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A49CDFF8();
  v19[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CE16C(0, &qword_1EB147110, sub_1A49CE1E8, sub_1A49CE2C0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A49CE16C(0, &qword_1EB1470F8, sub_1A49CE0C8, sub_1A49CE104);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - v15;
  sub_1A5249824();
  v19[8] = a1;
  sub_1A49CE0C8(0);
  sub_1A49CE104();
  sub_1A5247F24();
  sub_1A5249834();
  v19[4] = a1;
  sub_1A49CE1E8(0);
  sub_1A49CE2C0();
  sub_1A5247F24();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A49CF664(uint64_t a1)
{
  sub_1A49CD278(0, &qword_1EB1471F8, sub_1A3D6DF58, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for PhotosDetailsSearchView() + 32));
  v14 = *v13;
  if (*v13)
  {
    v15 = v13[1];

    sub_1A5247B34();

    MEMORY[0x1A5906A80](v7, v14, v15);
    (*(v10 + 16))(v4, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1A49CE138();
    sub_1A5249744();
    sub_1A3C784D4(v14, v15);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A49CE138();
    return sub_1A5249744();
  }
}

uint64_t sub_1A49CF8E8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v22[5] = a2;
  sub_1A49CD278(0, &qword_1EB1471E8, sub_1A3F1EA2C, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  v22[3] = v22 - v5;
  sub_1A3F1EA2C(0);
  v22[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1A49CE230(0);
  v22[4] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49D5784(0, &qword_1EB1471F0, sub_1A411848C, sub_1A49CE230, MEMORY[0x1E697F948]);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  sub_1A411848C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1A5248074();
    (*(v16 + 16))(v13, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A49CD640(&qword_1EB1289A0, sub_1A411848C);
    sub_1A49CE3A0(&qword_1EB147130, sub_1A49CE230, sub_1A3F1EC00);
    sub_1A5249744();
    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    v22[1] = v11;
    v20 = (v2 + *(type metadata accessor for PhotosDetailsSearchView() + 36));
    v21 = v20[1];
    if (v21)
    {
      v23 = *v20;
      v24 = v21;
      sub_1A49D4A28(v23, v21);
      sub_1A3D5F9DC();
      v22[0] = v9;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    swift_storeEnumTagMultiPayload();
    sub_1A3F1EC00();
    sub_1A5249744();
    sub_1A49D4848(v9, v13, sub_1A49CE230);
    swift_storeEnumTagMultiPayload();
    sub_1A49CD640(&qword_1EB1289A0, sub_1A411848C);
    sub_1A49CE3A0(&qword_1EB147130, sub_1A49CE230, sub_1A3F1EC00);
    sub_1A5249744();
    return sub_1A49D48B0(v9, sub_1A49CE230);
  }
}

uint64_t sub_1A49CFE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  *(&v105 + 1) = sub_1A52484F4();
  v98 = *(*(&v105 + 1) - 8);
  MEMORY[0x1EEE9AC00](*(&v105 + 1));
  v97 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD75C();
  *&v105 = v4;
  v96 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD688();
  v106 = v6;
  v100 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD190(0, &qword_1EB147210, MEMORY[0x1E697F948]);
  v114 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v116 = (&v93 - v9);
  sub_1A49D5784(0, &qword_1EB147218, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F948]);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v93 - v11;
  sub_1A49D5784(0, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
  v112 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v93 - v13;
  sub_1A49CD23C(0);
  v102 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD190(0, &qword_1EB146FD8, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v115 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v93 - v19;
  v20 = type metadata accessor for PhotosDetailsSearchView();
  v109 = *(v20 - 1);
  v108 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD278(0, &qword_1EB146FB8, sub_1A49CD020, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v110 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22 - 8);
  v111 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v93 - v25;
  v26 = (a1 + v20[5]);
  v27 = *v26;
  v119 = v26[1];
  v120 = v27;
  v118 = v26[2];
  *&v124 = v27;
  *(&v124 + 1) = v119;
  *&v125 = v118;
  sub_1A49D5B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  v122 = v28;
  sub_1A524B6C4();
  v29 = v132;
  v30 = v133;
  v31 = v20[7];
  v121 = v20;
  v33 = *(a1 + v31 + 24);
  v32 = *(a1 + v31 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + v31), v33);
  v34 = (*(v32 + 16))(v33, v32);
  sub_1A4814FC8(v29, *(&v29 + 1), v30, *(&v30 + 1), v34, v35, *(a1 + v20[10]), v130);
  v36 = v107;
  sub_1A49D4848(a1, v107, type metadata accessor for PhotosDetailsSearchView);
  v37 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v38 = swift_allocObject();
  sub_1A49D4B10(v36, v38 + v37, type metadata accessor for PhotosDetailsSearchView);
  v124 = v130[0];
  v125 = v130[1];
  v126 = v130[2];
  *&v127 = v131;
  *(&v127 + 1) = sub_1A49D4EAC;
  v128 = v38;
  v129 = 0;
  *&v132 = v120;
  *(&v132 + 1) = v119;
  *&v133 = v118;
  sub_1A524B6A4();
  sub_1A49D4848(a1, v36, type metadata accessor for PhotosDetailsSearchView);
  v39 = swift_allocObject();
  v40 = a1;
  v41 = v123;
  sub_1A49D4B10(v36, v39 + v37, type metadata accessor for PhotosDetailsSearchView);
  v42 = MEMORY[0x1E69805D8];
  sub_1A49CE26C(0, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  sub_1A49CD0E4();
  sub_1A524B144();

  v134 = v126;
  v135 = v127;
  v136 = v128;
  v137 = v129;
  v132 = v124;
  v133 = v125;
  v43 = v121;
  sub_1A49D4FA8(&v132, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, v42);
  v44 = sub_1A524A054();
  v45 = v41 + *(v110 + 44);
  *v45 = v44;
  *(v45 + 8) = 0u;
  *(v45 + 24) = 0u;
  *(v45 + 40) = 1;
  v46 = (a1 + v43[6]);
  v48 = *v46;
  v47 = v46[1];
  *&v124 = v48;
  *(&v124 + 1) = v47;
  sub_1A49D4658();
  sub_1A524B6A4();
  v49 = *(v138 + 16);

  if (!v49 && (v65 = (a1 + v43[5]), v66 = *v65, v67 = v65[1], v68 = v65[2], *&v124 = *v65, *(&v124 + 1) = v67, *&v125 = v68, sub_1A524B6A4(), v69 = sub_1A524C7A4(), , v69 >= 1) && (v70 = (v40 + v43[7]), v71 = v70[3], v72 = v70[4], __swift_project_boxed_opaque_existential_1(v70, v71), v73 = v71, v43 = v121, (*(v72 + 24))(v73, v72), v74) && (, v75 = v70[3], v76 = v70[4], __swift_project_boxed_opaque_existential_1(v70, v75), *&v124 = v66, *(&v124 + 1) = v67, *&v125 = v68, sub_1A524B6A4(), v77 = v75, v43 = v121, (*(v76 + 40))(v138, v139, v77, v76), v79 = v78, , v79) && (, v80 = v40 + v43[12], v81 = *v80, v82 = *(v80 + 8), LOBYTE(v124) = v81, *(&v124 + 1) = v82, sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]), sub_1A524B6A4(), v138 == 1))
  {
    *&v124 = v120;
    *(&v124 + 1) = v119;
    *&v125 = v118;
    sub_1A524B6A4();
    v83 = v94;
    sub_1A49D10B0(v138, v139);

    sub_1A49D4848(v83, v103, sub_1A49CD23C);
    swift_storeEnumTagMultiPayload();
    sub_1A49CE3A0(&qword_1EB147228, sub_1A49CD23C, sub_1A49D518C);
    v84 = sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C);
    v124 = v105;
    *&v125 = v84;
    *(&v125 + 1) = MEMORY[0x1E697C0D8];
    swift_getOpaqueTypeConformance2();
    v85 = v104;
    sub_1A5249744();
    sub_1A3D31350(v85, v116);
    swift_storeEnumTagMultiPayload();
    sub_1A49D5018();
    v64 = v113;
    sub_1A5249744();
    sub_1A3D313F8(v85);
    sub_1A49D48B0(v83, sub_1A49CD23C);
  }

  else
  {
    v50 = (v40 + v43[6]);
    v52 = *v50;
    v51 = v50[1];
    *&v124 = v52;
    *(&v124 + 1) = v51;
    sub_1A524B6A4();
    v53 = *(v138 + 16);

    if (v53)
    {
      MEMORY[0x1EEE9AC00](v54);
      *(&v93 - 2) = v40;
      sub_1A49CD820();
      sub_1A49CEBFC(&qword_1EB147090, sub_1A49CD820, sub_1A49CDC04);
      v55 = v95;
      sub_1A524A2C4();
      v56 = v97;
      sub_1A52484E4();
      v57 = sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C);
      v58 = MEMORY[0x1E697C0D8];
      v59 = v99;
      v60 = v105;
      sub_1A524B1E4();
      (*(v98 + 8))(v56, *(&v60 + 1));
      (*(v96 + 8))(v55, v60);
      v61 = v100;
      v62 = v106;
      (*(v100 + 16))(v103, v59, v106);
      swift_storeEnumTagMultiPayload();
      sub_1A49CE3A0(&qword_1EB147228, sub_1A49CD23C, sub_1A49D518C);
      v124 = v60;
      *&v125 = v57;
      *(&v125 + 1) = v58;
      swift_getOpaqueTypeConformance2();
      v63 = v104;
      sub_1A5249744();
      sub_1A3D31350(v63, v116);
      swift_storeEnumTagMultiPayload();
      sub_1A49D5018();
      v64 = v113;
      sub_1A5249744();
      sub_1A3D313F8(v63);
      (*(v61 + 8))(v59, v62);
    }

    else
    {
      v86 = v116;
      *v116 = 0;
      *(v86 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1A49D5018();
      v64 = v113;
      sub_1A5249744();
    }
  }

  v87 = v123;
  v88 = v111;
  sub_1A3D31128(v123, v111);
  v89 = v115;
  sub_1A3D311C4(v64, v115);
  v90 = v117;
  sub_1A3D31128(v88, v117);
  sub_1A49CCF5C();
  sub_1A3D311C4(v89, v90 + *(v91 + 48));
  sub_1A3D31244(v64);
  sub_1A3D312BC(v87);
  sub_1A3D31244(v89);
  return sub_1A3D312BC(v88);
}

void sub_1A49D0D1C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsSearchView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = a1 + *(v3 + 28);
  v7 = *v6;
  v8 = *(v6 + 16);
  v15 = v7;
  v16 = v8;
  sub_1A49D5B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v9 = v14[1];
  v10 = v14[2];
  __swift_project_boxed_opaque_existential_1((a1 + *(v3 + 36)), *(a1 + *(v3 + 36) + 24));
  sub_1A49D4848(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1A49D4B10(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PhotosDetailsSearchView);
  v13 = (v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v9;
  v13[1] = v10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49D0F14(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsSearchView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  v8 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + *(v9 + 36)), *(a2 + *(v9 + 36) + 24));
  sub_1A49D4848(a2, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1A49D4B10(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotosDetailsSearchView);
  v12 = (v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v7;
  v12[1] = v8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D10B0(uint64_t a1, uint64_t a2)
{
  sub_1A49CD278(0, &qword_1EB147238, sub_1A49CD2E4, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A49CD2E4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = (v2 + *(type metadata accessor for PhotosDetailsSearchView() + 28));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 24))(v7, v8);
  if (v9)
  {
    v11 = v6[3];
    v10 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v11);
    (*(v10 + 40))(a1, a2, v11, v10);
    if (v12)
    {
      sub_1A3C71318(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1A52F8E10;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 64) = sub_1A3D710E8();
      *(v13 + 32) = a1;
      *(v13 + 40) = a2;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1A49D518C();
  return sub_1A5249744();
}

uint64_t sub_1A49D149C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsSearchView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 32));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  sub_1A49D4658();
  sub_1A524B6A4();
  swift_getKeyPath();
  sub_1A49D4848(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A49D4B10(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PhotosDetailsSearchView);
  sub_1A49D5B6C(0, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
  sub_1A49D5784(0, &qword_1EB147048, sub_1A49CD920, sub_1A49CD9E4, MEMORY[0x1E697F960]);
  sub_1A49CDB88();
  sub_1A49CDC04();
  return sub_1A524B9B4();
}

void sub_1A49D16B0(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v39 = a3;
  sub_1A49CDB20();
  KeyPath = v4;
  v33[10] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33[9] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E697F948];
  sub_1A49D5784(0, &qword_1EB147240, sub_1A49CD968, sub_1A49CDB20, MEMORY[0x1E697F948]);
  v33[12] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  sub_1A49CD968();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v33[11] = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD920(0);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v33[13] = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49D5784(0, &qword_1EB147248, sub_1A49CD920, sub_1A49CD9E4, v6);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - v17;
  v19 = type metadata accessor for PhotosDetailsSearchView();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1A49CD9E4();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v24);
  v27 = a1[1];
  v42 = *a1;
  v43 = v27;
  v44 = *(a1 + 4);
  v37 = v16;
  v35 = v28;
  if (*(&v27 + 1))
  {
    v33[1] = v20;
    v33[2] = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33[3] = v26;
    v33[4] = v33 - v25;
    v33[5] = v11;
    v33[6] = v9;
    v33[7] = v23;
    v33[8] = v18;
    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v45 = v44;
  v41 = v44;
  KeyPath = swift_getKeyPath();
  sub_1A49D4848(v36, v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v40 = v42;
  v29 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v30 = swift_allocObject();
  sub_1A49D4B10(v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for PhotosDetailsSearchView);
  v31 = v30 + ((v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = v43;
  *v31 = v42;
  *(v31 + 16) = v32;
  *(v31 + 32) = v44;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D248C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1A49D24E4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsSearchView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v15 = *(a1 + 4);
  v12[3] = v15;
  swift_getKeyPath();
  sub_1A49D4848(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v7 = *a1;
  v13 = a1[1];
  v14 = v7;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1A49D4B10(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PhotosDetailsSearchView);
  v10 = v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = a1[1];
  *v10 = *a1;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a1 + 4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A49D271C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v24 = a5;
  v11 = type metadata accessor for PhotosDetailsSearchView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3C341C8(a1, v29);
  sub_1A49D4848(a2, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  sub_1A3C341C8(a1, v28);
  v14 = *a3;
  v31 = a3[1];
  v32 = v14;
  v30 = *(a3 + 4);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_1A49D4B10(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for PhotosDetailsSearchView);
  sub_1A3C34460(v28, v17 + v16);
  v18 = v17 + ((v16 + 47) & 0xFFFFFFFFFFFFFFF8);
  v19 = a3[1];
  *v18 = *a3;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a3 + 4);
  sub_1A3C341C8(v29, &v26);
  sub_1A3F30668(&v32, v25);
  sub_1A49CC710(&v31, v25, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
  sub_1A49D2F3C(&v30, v25, &qword_1EB147070, MEMORY[0x1E69E62F8]);
  sub_1A3C34400(0, &qword_1EB12DDB8);
  sub_1A524B694();
  __swift_destroy_boxed_opaque_existential_0(v29);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = v17;
  v25[0] = v24;
  v25[1] = v20;
  sub_1A3C3637C();
  sub_1A524B694();
  v21 = v27;
  result = *&v26;
  *(a6 + 48) = v26;
  *(a6 + 64) = v21;
  return result;
}

uint64_t sub_1A49D2990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3EBE398(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for PhotosDetailsSearchView() + 28));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 56))(a1, a2, a3, v12, v13);
  sub_1A49CC4B4(v10);
  MEMORY[0x1A5906C60](v8);
  sub_1A52489B4();
  sub_1A524B904();
  return sub_1A49D48B0(v10, sub_1A3EBE398);
}

void sub_1A49D2B00(uint64_t a1)
{
  sub_1A49D4BF0(0, &qword_1EB147208, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = type metadata accessor for PhotosDetailsSearchView();
  sub_1A3C341C8(a1 + *(v5 + 28), v17);
  sub_1A3C34400(0, &qword_1EB1471C8);
  v6 = type metadata accessor for PhotosDetailsTimeZoneSearchDataSource(0);
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v8(v4, 0, 1, v6);
    sub_1A49D47E8(v4, &qword_1EB147208, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource, MEMORY[0x1E69E6720], sub_1A49D4BF0);
    v9 = objc_opt_self();
    v10 = sub_1A524C634();
    sub_1A3F37DA4();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v12;
    v17[3] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    sub_1A49D4848(a1, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsSearchView);
    String.init(forType:)(v17);
    v14 = sub_1A524C634();

    *(inited + 48) = v14;
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A49D47E8(inited + 32, &qword_1EB126F80, sub_1A3C7B6A4, MEMORY[0x1E69E6158], sub_1A49D4C54);
    sub_1A3C7B6A4();
    v15 = sub_1A524C3D4();

    [v9 sendEvent:v10 withPayload:v15];
  }

  else
  {
    v8(v4, 1, 1, v6);
    sub_1A49D47E8(v4, &qword_1EB147208, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource, MEMORY[0x1E69E6720], sub_1A49D4BF0);
  }
}

void sub_1A49D2E54()
{
  type metadata accessor for PhotosDetailsSearchView();
  sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A49D4658();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D2F3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3C71318(0, a3, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1A49D2FBC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5249314();
  v31 = 1;
  sub_1A49D38B0(&v15);
  v44 = v27;
  v45 = v28;
  v46[0] = *v29;
  *(v46 + 9) = *&v29[9];
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v47[12] = v27;
  v47[13] = v28;
  v48[0] = *v29;
  *(v48 + 9) = *&v29[9];
  v47[8] = v23;
  v47[9] = v24;
  v47[10] = v25;
  v47[11] = v26;
  v47[4] = v19;
  v47[5] = v20;
  v47[6] = v21;
  v47[7] = v22;
  v47[0] = v15;
  v47[1] = v16;
  v47[2] = v17;
  v47[3] = v18;
  v3 = MEMORY[0x1E6981F40];
  sub_1A49D4778(&v32, &v14, &qword_1EB147170, sub_1A49D33B0, MEMORY[0x1E6981F40]);
  sub_1A49D47E8(v47, &qword_1EB147170, sub_1A49D33B0, v3, sub_1A49D4BF0);
  *(&v30[12] + 7) = v44;
  *(&v30[13] + 7) = v45;
  *(&v30[14] + 7) = v46[0];
  v30[15] = *(v46 + 9);
  *(&v30[8] + 7) = v40;
  *(&v30[9] + 7) = v41;
  *(&v30[10] + 7) = v42;
  *(&v30[11] + 7) = v43;
  *(&v30[4] + 7) = v36;
  *(&v30[5] + 7) = v37;
  *(&v30[6] + 7) = v38;
  *(&v30[7] + 7) = v39;
  *(v30 + 7) = v32;
  *(&v30[1] + 7) = v33;
  *(&v30[2] + 7) = v34;
  *(&v30[3] + 7) = v35;
  v4 = v30[13];
  *(a1 + 209) = v30[12];
  *(a1 + 225) = v4;
  v5 = v30[15];
  *(a1 + 241) = v30[14];
  *(a1 + 257) = v5;
  v6 = v30[9];
  *(a1 + 145) = v30[8];
  *(a1 + 161) = v6;
  v7 = v30[11];
  *(a1 + 177) = v30[10];
  *(a1 + 193) = v7;
  v8 = v30[5];
  *(a1 + 81) = v30[4];
  *(a1 + 97) = v8;
  v9 = v30[7];
  *(a1 + 113) = v30[6];
  *(a1 + 129) = v9;
  v10 = v30[1];
  *(a1 + 17) = v30[0];
  *(a1 + 33) = v10;
  result = *&v30[2];
  v12 = v30[3];
  *(a1 + 49) = v30[2];
  v13 = v31;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v13;
  *(a1 + 65) = v12;
  return result;
}

void sub_1A49D331C()
{
  if (!qword_1EB147168)
  {
    sub_1A49D4BF0(255, &qword_1EB147170, sub_1A49D33B0, MEMORY[0x1E6981F40]);
    sub_1A49D380C();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147168);
    }
  }
}

void sub_1A49D33B0()
{
  if (!qword_1EB147178)
  {
    sub_1A49D3420();
    sub_1A49D3508();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147178);
    }
  }
}

void sub_1A49D3420()
{
  if (!qword_1EB141510)
  {
    sub_1A49D3710(255, &qword_1EB1236C0, &qword_1EB128560, sub_1A3EC18C4);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB141510);
    }
  }
}

void sub_1A49D34A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A49D3508()
{
  if (!qword_1EB147180)
  {
    sub_1A49D35A0(255, &qword_1EB147188, &qword_1EB147190, sub_1A49D3628, sub_1A49D3784);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147180);
    }
  }
}

void sub_1A49D35A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1A49D4BF0(255, a3, a4, MEMORY[0x1E6981F40]);
    a5();
    v7 = sub_1A524B894();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49D3628()
{
  if (!qword_1EB147198)
  {
    sub_1A49D368C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147198);
    }
  }
}

void sub_1A49D368C()
{
  if (!qword_1EB1471A0)
  {
    sub_1A49D3710(255, &qword_1EB1283A8, &qword_1EB1286C0, sub_1A3EBB1B4);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1471A0);
    }
  }
}

void sub_1A49D3710(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A49D34A4(255, a3, a4);
    sub_1A3D6D248();
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A49D3784()
{
  result = qword_1EB1471A8;
  if (!qword_1EB1471A8)
  {
    sub_1A49D4BF0(255, &qword_1EB147190, sub_1A49D3628, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1471A8);
  }

  return result;
}

unint64_t sub_1A49D380C()
{
  result = qword_1EB1471B0;
  if (!qword_1EB1471B0)
  {
    sub_1A49D4BF0(255, &qword_1EB147170, sub_1A49D33B0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1471B0);
  }

  return result;
}

uint64_t sub_1A49D38B0@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  sub_1A49D4BF0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v87 - v2;
  sub_1A3C71318(0, &qword_1EB147158, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v4 = *&v139[8];
  v5 = *&v139[16];
  __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
  v102 = (*(v5 + 32))(v4, v5);
  if (v102)
  {
    v6 = sub_1A524A154();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v101 = sub_1A524A1B4();
    sub_1A49D47E8(v3, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1A49D4BF0);
    KeyPath = swift_getKeyPath();
    __swift_destroy_boxed_opaque_existential_0(&v137);
    sub_1A524B6A4();
    v7 = *&v139[8];
    v8 = *&v139[16];
    __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
    v99 = (*(v8 + 40))(v7, v8);
    v98 = swift_getKeyPath();
    __swift_destroy_boxed_opaque_existential_0(&v137);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v137);
    KeyPath = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = sub_1A5249584();
  v111 = 1;
  sub_1A524B6A4();
  v9 = *&v139[8];
  v10 = *&v139[16];
  __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
  v11 = (*(v10 + 16))(v9, v10);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(&v137);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v137 = v11;
    v138 = v13;
    sub_1A3D5F9DC();
    v15 = sub_1A524A464();
    v17 = v16;
    v19 = v18;
    v20 = sub_1A524A3A4();
    v95 = v21;
    v96 = v20;
    v23 = v22;
    v94 = v24;
    sub_1A3E04DF4(v15, v17, v19 & 1);

    v93 = swift_getKeyPath();
    v92 = sub_1A524B484();
    v25 = swift_getKeyPath();
    LOBYTE(v137) = v23 & 1;
    LOBYTE(v131) = 0;
    v103 = v23 & 1;
    v104 = v25;
    v90 = 0;
    v89 = 1;
  }

  else
  {

    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    v89 = 0;
    v90 = 0;
    v103 = 0;
    v104 = 0;
    v92 = 0;
  }

  sub_1A524B6A4();
  v26 = *&v139[8];
  v27 = *&v139[16];
  __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
  v28 = (*(v27 + 24))(v26, v27);
  v30 = v29;
  if (!v29)
  {
    __swift_destroy_boxed_opaque_existential_0(&v137);
    v48 = 0;
    v47 = 0;
    v46 = 0;
LABEL_16:
    v50 = 0;
    v45 = 0;
    v44 = 0;
    v49 = 0;
    goto LABEL_17;
  }

  v31 = v28;
  __swift_destroy_boxed_opaque_existential_0(&v137);
  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    v48 = 0;
    v47 = 0;
    v46 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v137 = v31;
  v138 = v30;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  v35 = v34;
  v37 = v36;
  sub_1A524A224();
  v38 = sub_1A524A3C4();
  v40 = v39;
  v88 = v41;
  v43 = v42;

  sub_1A3E04DF4(v33, v35, v37 & 1);

  v30 = swift_getKeyPath();
  v44 = sub_1A524B4A4();
  v45 = swift_getKeyPath();
  v46 = v43;
  v47 = v40;
  v48 = v38;
  LOBYTE(v137) = v88 & 1;
  LOBYTE(v131) = 0;
  v49 = v88 & 1;
  v50 = 1;
LABEL_17:
  v52 = v95;
  v51 = v96;
  *&v122 = v96;
  *(&v122 + 1) = v95;
  *&v123 = v103;
  v54 = v93;
  v53 = v94;
  *(&v123 + 1) = v94;
  *&v124 = v93;
  v56 = v89;
  v55 = v90;
  *(&v124 + 1) = v89;
  *&v125 = v90;
  *(&v125 + 1) = v104;
  v57 = v92;
  *&v126 = v92;
  v154 = v124;
  v155 = v125;
  v152 = v122;
  v153 = v123;
  *&v105 = v48;
  *(&v105 + 1) = v47;
  *&v106 = v49;
  *(&v106 + 1) = v46;
  *&v107 = v30;
  *(&v107 + 1) = v50;
  *&v108 = 0;
  *(&v108 + 1) = v45;
  v109 = v44;
  *&v156[8] = v105;
  *v156 = v92;
  *&v156[72] = v44;
  *&v156[56] = v108;
  *&v156[40] = v107;
  *&v156[24] = v106;
  v131 = v48;
  v132 = v47;
  *&v133[0] = v49;
  *(&v133[0] + 1) = v46;
  *&v133[1] = v30;
  *(&v133[1] + 1) = v50;
  *&v133[2] = 0;
  *(&v133[2] + 1) = v45;
  *&v133[3] = v44;
  sub_1A49D4848(&v122, &v137, sub_1A49D368C);
  sub_1A49D4848(&v105, &v137, sub_1A49D368C);
  sub_1A49D48B0(&v131, sub_1A49D368C);
  v137 = v51;
  v138 = v52;
  *v139 = v103;
  *&v139[8] = v53;
  *&v139[16] = v54;
  *&v139[24] = v56;
  *&v139[32] = v55;
  *&v139[40] = v104;
  *&v139[48] = v57;
  sub_1A49D48B0(&v137, sub_1A49D368C);
  v119 = *&v156[32];
  v120 = *&v156[48];
  v121 = *&v156[64];
  v115 = v154;
  v116 = v155;
  v117 = *v156;
  v118 = *&v156[16];
  v113 = v152;
  v114 = v153;
  v128 = *&v156[32];
  v129 = *&v156[48];
  v130 = *&v156[64];
  v124 = v154;
  v125 = v155;
  v126 = *v156;
  v127 = *&v156[16];
  v122 = v152;
  v123 = v153;
  v58 = MEMORY[0x1E6981F40];
  sub_1A49D4778(&v113, &v137, &qword_1EB147190, sub_1A49D3628, MEMORY[0x1E6981F40]);
  sub_1A49D47E8(&v122, &qword_1EB147190, sub_1A49D3628, v58, sub_1A49D4BF0);
  *&v110[87] = v118;
  *&v110[103] = v119;
  *&v110[119] = v120;
  *&v110[135] = v121;
  *&v110[23] = v114;
  *&v110[39] = v115;
  *&v110[55] = v116;
  *&v110[71] = v117;
  *&v110[7] = v113;
  LOBYTE(v53) = v111;
  v59 = sub_1A524A064();
  sub_1A5247BC4();
  v60 = v97;
  v131 = v97;
  v132 = 0;
  LOBYTE(v133[0]) = v53;
  v61 = *&v110[80];
  *(&v133[6] + 1) = *&v110[96];
  v62 = *&v110[96];
  *(&v133[7] + 1) = *&v110[112];
  v63 = *&v110[112];
  *(&v133[8] + 1) = *&v110[128];
  *&v133[9] = *&v110[143];
  v64 = *&v110[16];
  *(&v133[2] + 1) = *&v110[32];
  v65 = *&v110[32];
  *(&v133[3] + 1) = *&v110[48];
  v66 = *&v110[48];
  *(&v133[4] + 1) = *&v110[64];
  v67 = *&v110[64];
  *(&v133[5] + 1) = *&v110[80];
  *(v133 + 1) = *v110;
  v68 = *v110;
  *(&v133[1] + 1) = *&v110[16];
  BYTE8(v133[9]) = v59;
  HIDWORD(v133[9]) = *&v112[3];
  *(&v133[9] + 9) = *v112;
  *&v134 = v69;
  *(&v134 + 1) = v70;
  *&v135 = v71;
  *(&v135 + 1) = v72;
  v73 = v133[0];
  v74 = v91;
  *(v91 + 40) = v97;
  *(v74 + 56) = v73;
  v75 = v133[3];
  *(v74 + 120) = v133[4];
  *(v74 + 104) = v75;
  v76 = v133[1];
  *(v74 + 88) = v133[2];
  *(v74 + 72) = v76;
  v77 = v133[7];
  *(v74 + 184) = v133[8];
  *(v74 + 168) = v77;
  v78 = v133[5];
  *(v74 + 152) = v133[6];
  *(v74 + 136) = v78;
  v79 = v134;
  *(v74 + 232) = v135;
  v80 = v133[9];
  *(v74 + 216) = v79;
  *(v74 + 200) = v80;
  v142 = v62;
  v143 = v63;
  *v144 = *&v110[128];
  *&v139[33] = v65;
  *&v139[49] = v66;
  v136 = 0;
  v82 = v101;
  v81 = v102;
  v84 = v99;
  v83 = KeyPath;
  *v74 = v102;
  *(v74 + 8) = v83;
  v85 = v98;
  *(v74 + 16) = v82;
  *(v74 + 24) = v85;
  *(v74 + 32) = v84;
  *(v74 + 248) = 0;
  v137 = v60;
  v138 = 0;
  v139[0] = v53;
  *&v144[15] = *&v110[143];
  v140 = v67;
  v141 = v61;
  *&v139[1] = v68;
  *&v139[17] = v64;
  v145 = v59;
  *v146 = *v112;
  *&v146[3] = *&v112[3];
  v147 = v69;
  v148 = v70;
  v149 = v71;
  v150 = v72;
  v151 = 0;
  sub_1A477D7D0(v81);
  sub_1A49D4848(&v131, &v105, sub_1A49D3508);
  sub_1A49D48B0(&v137, sub_1A49D3508);
  return sub_1A477D840(v81);
}

uint64_t sub_1A49D41F0()
{
  sub_1A49D4BF0(0, &qword_1EB147160, sub_1A3C3637C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  *(swift_allocObject() + 16) = v1;
  sub_1A49D331C();
  sub_1A49CD640(&qword_1EB1471B8, sub_1A49D331C);
  return sub_1A524B704();
}

uint64_t sub_1A49D4338()
{
  sub_1A49CC9A4(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CE4AC(v0, v3);
  sub_1A49CEBFC(&qword_1EB147148, sub_1A49CC9A4, sub_1A49CEC6C);
  sub_1A524AEF4();
  return sub_1A49D4B90(v3, sub_1A49CC9A4);
}

void sub_1A49D4480()
{
  sub_1A49D4BF0(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A49D5B6C(319, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A49D4658();
      if (v2 <= 0x3F)
      {
        sub_1A3C34400(319, &qword_1EB1471C8);
        if (v3 <= 0x3F)
        {
          sub_1A49D4BF0(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A49D5B6C(319, &qword_1EB146F60, &type metadata for PhotosDetailsSearchViewNavigationItem, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A49D5B6C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A49D4658()
{
  if (!qword_1EB1471C0)
  {
    sub_1A49D5B6C(255, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1471C0);
    }
  }
}

void sub_1A49D46E4()
{
  if (!qword_1EB1471D8)
  {
    sub_1A49D331C();
    sub_1A49CD640(&qword_1EB1471B8, sub_1A49D331C);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1471D8);
    }
  }
}

uint64_t sub_1A49D4778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A49D4BF0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A49D47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A49D4848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49D48B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49D4928@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v3 + *(type metadata accessor for PhotosDetailsSearchView() + 44));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v10[0]) = v5;
  v10[1] = v6;
  v7 = MEMORY[0x1E69E6370];
  sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A49D5B6C(0, &qword_1EB127320, v7, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](v10);
  v8 = v10[0];

  return sub_1A49CF8E8(v8, a1);
}

void sub_1A49D4A28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A49D4A78()
{
  if (!qword_1EB147200)
  {
    sub_1A49D4BF0(255, &qword_1EB146FA8, sub_1A49CCF5C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147200);
    }
  }
}

uint64_t sub_1A49D4B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49D4B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49D4BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A49D4C54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t objectdestroy_65Tm_0()
{
  v1 = type metadata accessor for PhotosDetailsSearchView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v5 = *(v4 + 32);
    v6 = sub_1A52489C4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v2 + v1[7]);
  if (*(v2 + v1[8]))
  {
  }

  if (*(v2 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A49D4EC4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosDetailsSearchView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A49D4F38(uint64_t a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for PhotosDetailsSearchView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1A49D0F14(a2, v5);
}

uint64_t sub_1A49D4FA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1A49CE26C(0, a2, a3, a4, MEMORY[0x1E697E830]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1A49D5018()
{
  result = qword_1EB147220;
  if (!qword_1EB147220)
  {
    sub_1A49D5784(255, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
    sub_1A49CE3A0(&qword_1EB147228, sub_1A49CD23C, sub_1A49D518C);
    sub_1A49CD75C();
    sub_1A52484F4();
    sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147220);
  }

  return result;
}

void sub_1A49D5704(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotosDetailsSearchView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A49D16B0(a1, v6, a2);
}

void sub_1A49D5784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t objectdestroy_83Tm_1()
{
  v1 = type metadata accessor for PhotosDetailsSearchView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v5 = *(v4 + 32);
    v6 = sub_1A52489C4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v2 + v1[7]);
  if (*(v2 + v1[8]))
  {
  }

  if (*(v2 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

double sub_1A49D5A9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for PhotosDetailsSearchView() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return sub_1A49D271C(a1, v4 + v10, (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

void sub_1A49D5B6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_89Tm_0()
{
  v1 = type metadata accessor for PhotosDetailsSearchView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v7 = *(v6 + 32);
    v8 = sub_1A52489C4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(v4 + v1[7]);
  if (*(v4 + v1[8]))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1A49D5E1C()
{
  v1 = *(type metadata accessor for PhotosDetailsSearchView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A49D2990(v0 + v2, v0 + v3, v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_113Tm_0()
{
  v1 = type metadata accessor for PhotosDetailsSearchView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v5 = *(v4 + 32);
    v6 = sub_1A52489C4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v2 + v1[7]);
  if (*(v2 + v1[8]))
  {
  }

  if (*(v2 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

void sub_1A49D60B4()
{
  type metadata accessor for PhotosDetailsSearchView();

  sub_1A49D2E54();
}

uint64_t TTRWorkflow.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRWorkflow.init(stepsBuilder:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v8 = sub_1A5241164();
  v10 = v9;
  v11 = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  result = a1(v11);
  a2[2] = result;
  return result;
}

void sub_1A49D6330()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  type metadata accessor for TTRWorkflowViewController();
  v4 = v2;
  v5 = v1;
  v6 = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49D63E0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  type metadata accessor for TTRWorkflowViewController();
  v4 = v2;
  v5 = v1;
  v6 = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t static TTRWorkflow.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  return sub_1A49D66F4(v2, v3);
}

uint64_t sub_1A49D654C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v30 = v2;
  v31 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v9 = v5[3];
    v24 = v5[2];
    v25[0] = v9;
    *(v25 + 9) = *(v5 + 57);
    v10 = v5[1];
    v23[0] = *v5;
    v23[1] = v10;
    v11 = v6[3];
    v28 = v6[2];
    v29[0] = v11;
    *(v29 + 9) = *(v6 + 57);
    v12 = v6[1];
    v26 = *v6;
    v27 = v12;
    v13 = v5[3];
    v21[4] = v24;
    v22[0] = v13;
    *(v22 + 9) = *(v5 + 57);
    v21[2] = v23[0];
    v21[3] = v8;
    sub_1A44A34F0(v23, v20);
    sub_1A44A34F0(&v26, v20);
    v14 = TTRWorkflowAction.description.getter();
    v16 = v15;
    v20[2] = v28;
    v21[0] = v29[0];
    *(v21 + 9) = *(v29 + 9);
    v20[0] = v26;
    v20[1] = v27;
    if (v14 == TTRWorkflowAction.description.getter() && v16 == v17)
    {

      sub_1A440448C(&v26);
      sub_1A440448C(v23);
      goto LABEL_9;
    }

    v18 = sub_1A524EAB4();

    sub_1A440448C(&v26);
    sub_1A440448C(v23);
    if ((v18 & 1) == 0)
    {
      break;
    }

LABEL_9:
    if (!i)
    {
      return 1;
    }

    v6 += 5;
    v5 += 5;
  }

  return 0;
}

uint64_t sub_1A49D66F4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v23 = a2 + 32;
  v24 = result + 32;
  while (v3 != v2)
  {
    v4 = (v24 + 56 * v3);
    v5 = *v4;
    v6 = v4[1];
    v8 = v4[2];
    v7 = v4[3];
    v9 = v4[4];
    v28 = v4[5];
    v10 = v4[6];
    v11 = (v23 + 56 * v3);
    v12 = v11[2];
    v25 = v11[3];
    v14 = v11[4];
    v13 = v11[5];
    v15 = v11[6];
    v16 = v5 == *v11 && v6 == v11[1];
    v26 = v11[5];
    v27 = v7;
    if (!v16)
    {
      v17 = sub_1A524EAB4();
      v7 = v27;
      v13 = v26;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != v12 || v7 != v25)
    {
      v19 = sub_1A524EAB4();
      v13 = v26;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (v28)
    {
      if (!v13)
      {
        return 0;
      }

      v20 = v9 == v14 && v28 == v13;
      if (!v20 && (sub_1A524EAB4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    v21 = *(v10 + 16);
    if (v21 != *(v15 + 16))
    {
      return 0;
    }

    if (v21)
    {
      v22 = v10 == v15;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A49D6AD4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  return sub_1A49D66F4(v2, v3);
}

uint64_t TTRWorkflowStep.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void __swiftcall TTRWorkflowStep.init(title:description:)(PhotosUICore::TTRWorkflowStep *__return_ptr retstr, Swift::String title, Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  v5 = title._object;
  v6 = title._countAndFlagsBits;
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = MEMORY[0x1E69E7CC0];
  retstr->id._countAndFlagsBits = v12;
  retstr->id._object = v14;
  retstr->description.value._object = object;
  retstr->actions._rawValue = v15;
  retstr->title._countAndFlagsBits = v6;
  retstr->title._object = v5;
  retstr->description.value._countAndFlagsBits = countAndFlagsBits;
}

void TTRWorkflowStep.add(action:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v15 = a1[2];
  v16[0] = v4;
  *(v16 + 9) = *(a1 + 57);
  v5 = a1[1];
  v13 = *a1;
  v14 = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = v2[6];
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v11;
  a2[5] = v10;
  a2[6] = v12;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D6E24()
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t static TTRWorkflowAction.== infix(_:_:)()
{
  v0 = TTRWorkflowAction.description.getter();
  v2 = v1;
  if (v0 == TTRWorkflowAction.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A524EAB4();
  }

  return v4 & 1;
}

unint64_t TTRWorkflowAction.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[5];
  v5 = *(v0 + 72);
  if (v5 <= 1)
  {
    if (!*(v0 + 72))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53F6770);
    MEMORY[0x1A5907B60](0xD000000000000019, 0x80000001A53F6830);
    MEMORY[0x1A5907B60](v2, v1);
    MEMORY[0x1A5907B60](0x746341736168202CLL, 0xED0000203A6E6F69);
    if (v3)
    {
      v7 = 7562617;
    }

    else
    {
      v7 = 28526;
    }

    if (v3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    MEMORY[0x1A5907B60](v7, v8);

    MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53F6850);
    if (v4)
    {
      v9 = 7562617;
    }

    else
    {
      v9 = 28526;
    }

    if (v4)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    MEMORY[0x1A5907B60](v9, v10);

    v6 = 0;
  }

  else
  {
    if (v5 == 2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v5 == 3)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v3 | v1 | v2 | v0[3] | v4 | v0[6] | v0[7] | v0[8] | (*(v0 + 33) << 8) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 40) | *(v0 + 32))
    {
      v6 = 0xD00000000000002CLL;
    }

    else
    {
      v6 = 0xD000000000000024;
    }
  }

  v12 = v6;
  MEMORY[0x1A5907B60](62, 0xE100000000000000);
  return v12;
}

PhotosUICore::TTRWorkflowAction::BasicMenuItem __swiftcall TTRWorkflowAction.BasicMenuItem.init(title:submenuItems:)(Swift::String title, Swift::OpaquePointer submenuItems)
{
  *v2 = title;
  *(v2 + 16) = submenuItems;
  result.title = title;
  result.submenuItems = submenuItems;
  return result;
}

uint64_t sub_1A49D7510(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v3 = 0;
  v4 = *(a3 + 16);
  v5 = a3 + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 == v4)
    {
      goto LABEL_7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

    *&v14 = v3;
    sub_1A3C341C8(v5 + 40 * v3, &v14 + 8);
    v6 = v14;
    v8 = v15;
    v9 = v16;
LABEL_7:
    v17[0] = v6;
    v17[1] = v8;
    v17[2] = v9;
    if (!v9)
    {
      *&v17[0] = 0;
      *(&v17[0] + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53F6870);
      MEMORY[0x1A5907B60](v11, a2);
      MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53F68A0);
      MEMORY[0x1A5907B60](0, 0xE000000000000000);

      MEMORY[0x1A5907B60](15965, 0xE200000000000000);
      return *&v17[0];
    }

    v13 = v6;
    sub_1A3C34460((v17 + 8), &v14);
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    v10 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v10);

    if (v13 < (v4 - 1))
    {
      MEMORY[0x1A5907B60](44, 0xE100000000000000);
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v14);
    v3 = v7;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t TTRWorkflowAction.MenuItem.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  result = v4();
  v6 = 0;
  v7 = *(result + 16);
  v15 = result + 32;
  v16 = result;
  while (1)
  {
    v8 = 0uLL;
    v9 = v7;
    v10 = 0uLL;
    v11 = 0uLL;
    if (v6 == v7)
    {
      goto LABEL_6;
    }

    if (v6 >= *(v16 + 16))
    {
      break;
    }

    v9 = v6 + 1;
    *&v18 = v6;
    sub_1A3C341C8(v15 + 40 * v6, &v18 + 8);
    v8 = v18;
    v10 = v19;
    v11 = v20;
LABEL_6:
    v21[0] = v8;
    v21[1] = v10;
    v21[2] = v11;
    if (!v11)
    {

      *&v21[0] = 0;
      *(&v21[0] + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53F6870);
      v14 = (*(a2 + 16))(a1, a2);
      MEMORY[0x1A5907B60](v14);

      MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53F68A0);
      MEMORY[0x1A5907B60](0, 0xE000000000000000);

      MEMORY[0x1A5907B60](15965, 0xE200000000000000);
      return *&v21[0];
    }

    v17 = v8;
    sub_1A3C34460((v21 + 8), &v18);
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v12 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v12);

    v13 = *((v4)(a1, a2) + 16);

    if (v17 < v13 - 1)
    {
      MEMORY[0x1A5907B60](44, 0xE100000000000000);
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v18);
    v6 = v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A49D7948()
{
  v0 = TTRWorkflowAction.description.getter();
  v2 = v1;
  if (v0 == TTRWorkflowAction.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A524EAB4();
  }

  return v4 & 1;
}

PhotosUICore::TTRRadarObject::MetadataTag_optional __swiftcall TTRRadarObject.MetadataTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TTRRadarObject.MetadataTag.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x74696C6962617473;
  v3 = 0x65757373497861;
  if (v1 != 3)
  {
    v3 = 0x6E6F697461727563;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (*v0)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A49D7AE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x74696C6962617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v4)
    {
      v5 = 0x80000001A53F6730;
    }

    else
    {
      v5 = 0x80000001A53F6710;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0x74696C6962617473;
    v5 = 0xE900000000000079;
  }

  else if (a1 == 3)
  {
    v5 = 0xE700000000000000;
    v6 = 0x65757373497861;
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6E6F697461727563;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65757373497861;
  if (a2 != 3)
  {
    v8 = 0x6E6F697461727563;
    v7 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v3 = v8;
    v2 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000001A53F6730;
  if (a2)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v10 = 0x80000001A53F6710;
  }

  if (a2 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v2;
  }

  if (v6 == v11 && v5 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A524EAB4();
  }

  return v13 & 1;
}

uint64_t sub_1A49D7C78()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A49D7D68()
{
  sub_1A524C794();
}

uint64_t sub_1A49D7E44()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A49D7F3C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x74696C6962617473;
  v5 = 0xE700000000000000;
  v6 = 0x65757373497861;
  if (v2 != 3)
  {
    v6 = 0x6E6F697461727563;
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001A53F6710;
  if (*v1)
  {
    v7 = 0xD000000000000017;
    v8 = 0x80000001A53F6730;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v8;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A49D7FE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A49D8134@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A49D8280@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A49D8354(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___PXTTRRadarObject_classification;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1A49D8414@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A49D84F0(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1A49D8538(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___PXTTRRadarObject_component;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1A49D85F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49D879C(uint64_t a1, void **a2)
{
  sub_1A3C4D3F0(0, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1A426E444(a1, &v8 - v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x148))(v6);
}

uint64_t sub_1A49D8884@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PXTTRRadarObject_preflightScreenshotURL;
  swift_beginAccess();
  return sub_1A426E444(v1 + v3, a1);
}

uint64_t sub_1A49D88DC(uint64_t a1)
{
  v3 = OBJC_IVAR___PXTTRRadarObject_preflightScreenshotURL;
  swift_beginAccess();
  sub_1A46A2154(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A49D8A14(_BYTE *a1)
{
  v2 = *a1;
  v3 = 0xE900000000000079;
  v4 = 0x74696C6962617473;
  v5 = 0xE700000000000000;
  v6 = 0x65757373497861;
  if (v2 != 3)
  {
    v6 = 0x6E6F697461727563;
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001A53F6710;
  if (*a1)
  {
    v7 = 0xD000000000000017;
    v8 = 0x80000001A53F6730;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  v11 = OBJC_IVAR___PXTTRRadarObject_metadataTags;
  swift_beginAccess();
  v12 = *(v1 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1A3D3D914(0, *(v12 + 2) + 1, 1, v12);
    *(v1 + v11) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1A3D3D914((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = v9;
  *(v16 + 5) = v10;
  *(v1 + v11) = v12;
  return swift_endAccess();
}

uint64_t sub_1A49D8C90(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = *a2;
  swift_beginAccess();
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1A3ECD488(0, v11[2] + 1, 1, v11);
    *(v2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1A3ECD488(v13 > 1, v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  result = (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v5);
  *(v2 + v10) = v11;
  return result;
}

uint64_t sub_1A49D8E24()
{
  v1 = OBJC_IVAR___PXTTRRadarObject_diagnosticProviders;
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();
  MEMORY[0x1A5907D70](v2);
  if (*((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  return swift_endAccess();
}

void sub_1A49D8F40(char a1)
{
  v2 = v1;
  sub_1A3C4D3F0(0, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = v71 - v5;
  v77 = sub_1A5240E64();
  v6 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v71 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v71 - v12;
  v14 = [objc_allocWithZone(PXRadarConfiguration) init];
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  if (v16)
  {
    v17 = sub_1A524C634();
  }

  else
  {
    v17 = 0;
  }

  [v14 setTitle_];

  (*((*v15 & *v2) + 0xC8))();
  if (v18)
  {
    v19 = sub_1A524C634();
  }

  else
  {
    v19 = 0;
  }

  [v14 setDescription_];

  v20 = (*((*v15 & *v2) + 0xF8))();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  [v14 setComponent_];
  (*((*v15 & *v2) + 0x1D8))(0x36353235313731, 0xE700000000000000);
  (*((*v15 & *v2) + 0x170))([v14 setAttachmentsIncludeAnyUserAsset_]);
  v23 = sub_1A524CA14();

  v78 = v14;
  [v14 setKeywordIDs_];

  v24 = *((*v15 & *v2) + 0x188);
  v25 = *(v24() + 16);

  v75 = v2;
  v76 = v6;
  if (v25)
  {
    v72 = v10;
    v27 = v13;
    v28 = (v24)(v26);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v6 + 16);
      v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v71[1] = v28;
      v32 = v28 + v31;
      v33 = *(v6 + 72);
      v34 = (v6 + 8);
      v36 = v77;
      v35 = v78;
      do
      {
        v30(v27, v32, v36);
        v37 = sub_1A5240D44();
        [v35 addScreenshot_];

        (*v34)(v27, v36);
        v32 += v33;
        --v29;
      }

      while (v29);

      v2 = v75;
      v6 = v76;
      v15 = MEMORY[0x1E69E7D40];
    }

    else
    {
    }

    v10 = v72;
  }

  v38 = (*((*v15 & *v2) + 0x1A0))(v26);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = *(v6 + 16);
    v41 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v72 = v38;
    v42 = v38 + v41;
    v43 = *(v6 + 72);
    v44 = (v6 + 8);
    v46 = v77;
    v45 = v78;
    do
    {
      v40(v10, v42, v46);
      v47 = sub_1A5240D44();
      [v45 addAttachment_];

      (*v44)(v10, v46);
      v42 += v43;
      --v39;
    }

    while (v39);

    v2 = v75;
  }

  else
  {
  }

  v48 = v78;
  [v78 addDiagnosticProvider_];
  v49 = OBJC_IVAR___PXTTRRadarObject_diagnosticProviders;
  v50 = swift_beginAccess();
  v51 = *(v2 + v49);
  if (v51 >> 62)
  {
    v50 = sub_1A524E2B4();
    v52 = v50;
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = MEMORY[0x1E69E7D40];
  v54 = v76;
  if (v52)
  {
    if (v52 >= 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    return;
  }

  v55 = v74;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))(v50);
  v56 = v77;
  if ((*(v54 + 48))(v55, 1, v77) == 1)
  {
    sub_1A3D75F5C(v55);
  }

  else
  {
    v57 = v73;
    (*(v54 + 32))(v73, v55, v56);
    v79 = 0xD000000000000011;
    v80 = 0x80000001A53F66D0;
    v58 = sub_1A524E384();
    v59 = (*((*v53 & *v2) + 0x128))(v58);
    if (*(v59 + 16) && (v60 = sub_1A3D5C0BC(v81), (v61 & 1) != 0))
    {
      sub_1A3C2F0BC(*(v59 + 56) + 32 * v60, v82);
      sub_1A3D5FAFC(v81);

      if ((swift_dynamicCast() & 1) != 0 && v79 == 1)
      {
        v62 = sub_1A5240D44();
        [v48 addScreenshot_];
      }
    }

    else
    {

      sub_1A3D5FAFC(v81);
    }

    (*(v54 + 8))(v57, v56);
  }

  v82[0] = 0xD000000000000018;
  v82[1] = 0x80000001A53F66F0;
  v63 = sub_1A524E384();
  v64 = (*((*v53 & *v2) + 0x128))(v63);
  if (!*(v64 + 16) || (v65 = sub_1A3D5C0BC(v81), (v66 & 1) == 0))
  {

    sub_1A3D5FAFC(v81);
    goto LABEL_41;
  }

  sub_1A3C2F0BC(*(v64 + 56) + 32 * v65, v82);
  sub_1A3D5FAFC(v81);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    v67 = 1;
    goto LABEL_42;
  }

  v67 = v79;
LABEL_42:
  [v48 setWantsPhotosDiagnostics_];
  (*((*v53 & *v2) + 0x1B8))([v48 setWantsSystemDiagnostics_]);
  v68 = sub_1A524CA14();

  [v48 setAdditionalExtensionIdentifiers_];

  v69 = (*((*v53 & *v2) + 0xE0))();
  if ((v70 & 1) == 0)
  {
    [v48 setClassification_];
  }

  PXFileRadarWithConfiguration(v48);
}

void sub_1A49D9978(void *a1)
{
  if (*((*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))() + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = sub_1A524C634();

  v3 = sub_1A524C634();
  [a1 addAttachmentWithText:v2 name:v3];
}

id TTRRadarObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRRadarObject.init()()
{
  v1 = &v0[OBJC_IVAR___PXTTRRadarObject_title];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___PXTTRRadarObject_radarDescription];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR___PXTTRRadarObject_classification];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR___PXTTRRadarObject_component];
  *v4 = 0;
  v4[8] = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___PXTTRRadarObject_diagnosticProviders] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR___PXTTRRadarObject_additionalInfo;
  *&v0[v6] = sub_1A3DAED90(v5);
  v7 = OBJC_IVAR___PXTTRRadarObject_preflightScreenshotURL;
  v8 = sub_1A5240E64();
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  *&v0[OBJC_IVAR___PXTTRRadarObject_metadataTags] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_keywordIds] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_attachmentImageURLs] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_attachmentFileURLs] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_additionalExtensionIdentifiers] = v5;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TTRRadarObject();
  return objc_msgSendSuper2(&v10, sel_init);
}

id TTRRadarObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRRadarObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRRadarObject.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1A3C4D3F0(0, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for TTRRadarObject();
  v8 = [objc_allocWithZone(v7) init];
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  v11 = (*((*v9 & *v8) + 0xB8))(v10);
  v12 = (*((*v9 & *v1) + 0xC8))(v11);
  v13 = (*((*v9 & *v8) + 0xD0))(v12);
  v14 = (*((*v9 & *v1) + 0xE0))(v13);
  v16 = (*((*v9 & *v8) + 0xE8))(v14, v15 & 1);
  v17 = (*((*v9 & *v1) + 0xF8))(v16);
  v19 = (*((*v9 & *v8) + 0x100))(v17, v18 & 1);
  v20 = (*((*v9 & *v1) + 0x188))(v19);
  v21 = OBJC_IVAR___PXTTRRadarObject_attachmentImageURLs;
  swift_beginAccess();
  *(v8 + v21) = v20;

  v23 = (*((*v9 & *v2) + 0x128))(v22);
  v24 = (*((*v9 & *v8) + 0x130))(v23);
  (*((*v9 & *v2) + 0x140))(v24);
  v25 = (*((*v9 & *v8) + 0x148))(v6);
  v26 = (*((*v9 & *v2) + 0x158))(v25);
  v27 = OBJC_IVAR___PXTTRRadarObject_metadataTags;
  swift_beginAccess();
  *(v8 + v27) = v26;

  v29 = (*((*v9 & *v2) + 0x170))(v28);
  v30 = OBJC_IVAR___PXTTRRadarObject_keywordIds;
  swift_beginAccess();
  *(v8 + v30) = v29;

  v32 = (*((*v9 & *v2) + 0x1A0))(v31);
  v33 = OBJC_IVAR___PXTTRRadarObject_attachmentFileURLs;
  swift_beginAccess();
  *(v8 + v33) = v32;

  v35 = (*((*v9 & *v2) + 0x1B8))(v34);
  v36 = OBJC_IVAR___PXTTRRadarObject_additionalExtensionIdentifiers;
  swift_beginAccess();
  *(v8 + v36) = v35;

  a1[3] = v7;
  *a1 = v8;
  return result;
}

char *sub_1A49DA458(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A49DB01C(0, &qword_1EB147298, &type metadata for TTRWorkflowAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s12PhotosUICore15TTRWorkflowStepV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A524EAB4() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (sub_1A524EAB4() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:

  return sub_1A49D654C(v5, v11);
}

uint64_t type metadata accessor for TTRRadarObject()
{
  result = qword_1EB16E620;
  if (!qword_1EB16E620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A49DA6F8(uint64_t a1)
{
  result = sub_1A49DA720();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A49DA720()
{
  result = qword_1EB147280;
  if (!qword_1EB147280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147280);
  }

  return result;
}

unint64_t sub_1A49DA778()
{
  result = qword_1EB147288;
  if (!qword_1EB147288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147288);
  }

  return result;
}

uint64_t sub_1A49DA804(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 72) = a2;
  return result;
}

void sub_1A49DA8D0()
{
  sub_1A3C4D3F0(319, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A49DB01C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A49DB100(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return Phototype.supportInfo(for:)(a1);
}

uint64_t sub_1A49DB1B8()
{
  v1 = *(v0 + 16);
  *v1 = 0u;
  v1[1] = 0u;
  return (*(v0 + 8))();
}

uint64_t PhototypeContext.selectedAssets.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t PhototypeContext.containerAssets.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 24) = a1;
  return result;
}

_BYTE *PhototypeContext.init(kind:photoLibrary:selectedAssets:containerAssets:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void PhototypeContext.init(kind:asset:)(uint64_t a1, void *a2)
{
  sub_1A3C4EE68(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  *(v3 + 32) = a2;
  sub_1A3D435C4();
  v4 = a2;
  sub_1A524CA14();

  PXDisplayAssetFetchResultFromArray();
}

uint64_t PhototypeWrapper.__allocating_init(phototype:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1A3C34460(a1, v2 + 16);
  return v2;
}

uint64_t PhototypeWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PhototypeSupportInfo.customName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PhototypeSupportInfo.customSymbolName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PhotosUICore::PhototypeSupportInfo __swiftcall PhototypeSupportInfo.init(customName:customSymbolName:)(Swift::String_optional customName, Swift::String_optional customSymbolName)
{
  *v2 = customName;
  v2[1] = customSymbolName;
  result.customSymbolName = customSymbolName;
  result.customName = customName;
  return result;
}

unint64_t sub_1A49DB654()
{
  result = qword_1EB1472A0;
  if (!qword_1EB1472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1472A0);
  }

  return result;
}

unint64_t sub_1A49DB6AC()
{
  result = qword_1EB1472A8;
  if (!qword_1EB1472A8)
  {
    sub_1A3C4EE68(255, &qword_1EB1472B0, &type metadata for PhototypeContext.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1472A8);
  }

  return result;
}

unint64_t sub_1A49DB72C()
{
  result = qword_1EB1472B8;
  if (!qword_1EB1472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1472B8);
  }

  return result;
}

uint64_t dispatch thunk of Phototype.supportInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3D60150;

  return v11(a1, a2, a3, a4);
}

uint64_t PXPhototypeSupport.phototype.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 phototypeWrapper];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  type metadata accessor for PhototypeWrapper();
  swift_dynamicCast();
  sub_1A3C341C8(v5 + 16, a1);
}

uint64_t PXPhototypeSupport.name.getter()
{
  v1 = [v0 customName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    PXPhototypeSupport.phototype.getter(v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v7;
  }
}

uint64_t PXPhototypeSupport.symbolName.getter()
{
  v1 = [v0 customSymbolName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    PXPhototypeSupport.phototype.getter(v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = (*(v6 + 16))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v7;
  }
}

uint64_t sub_1A49DBBB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  sub_1A49E04B4(v1 + *(v10 + 28), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for PhotosDetailsAssetProvenanceWidgetView()
{
  result = qword_1EB18ED70;
  if (!qword_1EB18ED70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49DBE00@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1A530D8E0;
  *(a1 + 16) = 0x4028000000000000;
  v2 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  v3 = v2[7];
  *(a1 + v3) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[8];
  *(a1 + v4) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + v2[9]);
  type metadata accessor for PhotosDetailsAssetProvenanceViewModel();
  sub_1A49DFF94(&qword_1EB125E80, type metadata accessor for PhotosDetailsAssetProvenanceViewModel);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

void sub_1A49DBF3C()
{
  if (!qword_1EB1472C8)
  {
    sub_1A49E0230(255, &qword_1EB1472D0, sub_1A49DBFD8, sub_1A49DC738, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1472C8);
    }
  }
}

void sub_1A49DC020()
{
  if (!qword_1EB1472E0)
  {
    sub_1A49DC15C();
    sub_1A49DC260();
    sub_1A5249764();
    sub_1A49DFEB8(&qword_1EB147350, sub_1A49DC260, sub_1A49DC614);
    sub_1A49DFF94(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1472E0);
    }
  }
}

void sub_1A49DC15C()
{
  if (!qword_1EB1472E8)
  {
    sub_1A49DC260();
    sub_1A5249764();
    sub_1A49DFEB8(&qword_1EB147350, sub_1A49DC260, sub_1A49DC614);
    sub_1A49DFF94(&qword_1EB122360, MEMORY[0x1E697C658]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1472E8);
    }
  }
}

void sub_1A49DC260()
{
  if (!qword_1EB1472F0)
  {
    sub_1A49E0230(255, &qword_1EB1472F8, sub_1A49DC304, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1472F0);
    }
  }
}

void sub_1A49DC304()
{
  if (!qword_1EB147300)
  {
    sub_1A49DC398(255);
    sub_1A49DFF94(&qword_1EB147348, sub_1A49DC398);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147300);
    }
  }
}

void sub_1A49DC3D4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A49DC8AC(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49DC46C()
{
  if (!qword_1EB147320)
  {
    sub_1A49DC500(255);
    sub_1A49DFF94(&qword_1EB147340, sub_1A49DC500);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147320);
    }
  }
}

void sub_1A49DC534()
{
  if (!qword_1EB147330)
  {
    sub_1A49DC59C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147330);
    }
  }
}

unint64_t sub_1A49DC614()
{
  result = qword_1EB147358;
  if (!qword_1EB147358)
  {
    sub_1A49E0230(255, &qword_1EB1472F8, sub_1A49DC304, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A49DFF94(&qword_1EB147360, sub_1A49DC304);
    sub_1A49DFF94(&qword_1EB122308, sub_1A3EC447C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147358);
  }

  return result;
}

void sub_1A49DC738()
{
  if (!qword_1EB147368)
  {
    sub_1A49E0230(255, &qword_1EB147370, sub_1A49DC7DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147368);
    }
  }
}

void sub_1A49DC7DC()
{
  if (!qword_1EB147378)
  {
    sub_1A49DC870(255);
    sub_1A49DFF94(&qword_1EB1473C8, sub_1A49DC870);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB147378);
    }
  }
}

void sub_1A49DC8AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A49DC9A0()
{
  if (!qword_1EB1473A0)
  {
    sub_1A49DCA34(255);
    sub_1A49DF3D4(&qword_1EB1473B8, sub_1A49DCA34, sub_1A49DCB10);
    v0 = type metadata accessor for PhotosDetailsDiscoverableView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1473A0);
    }
  }
}

void sub_1A49DCAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A49DCB10()
{
  result = qword_1EB1473C0;
  if (!qword_1EB1473C0)
  {
    sub_1A49DCA68(255);
    sub_1A49DFEB8(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473C0);
  }

  return result;
}

uint64_t sub_1A49DCBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  sub_1A49DC738();
  v84 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49E0230(0, &qword_1EB147408, sub_1A49DBFD8, sub_1A49DC738, MEMORY[0x1E697F948]);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = v59 - v7;
  v8 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A5249524();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1A5249D74();
  v11 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1A5249764();
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v65 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v60);
  sub_1A49DC260();
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A49DC15C();
  v66 = v17;
  v63 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v61 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DC020();
  v69 = v19;
  v67 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v64 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DBFD8(0);
  v80 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v70 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v73 = v59 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v76 = v59 - v26;
  v27 = *(a1 + *(type metadata accessor for PhotosDetailsAssetProvenanceWidgetView() + 36) + 8);
  v28 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v27) + 0x140))() == 5)
  {
    *v16 = sub_1A524BC74();
    v16[1] = v29;
    sub_1A49E02B4(0, &qword_1EB147418, sub_1A49DC398);
    v31 = v16 + *(v30 + 44);
    v59[1] = v11;
    sub_1A49DD938(a1, v31);
  }

  *v5 = sub_1A5249574();
  *(v5 + 1) = 0;
  v5[16] = 0;
  sub_1A49E02B4(0, &qword_1EB147410, sub_1A49DC870);
  sub_1A49DE740(a1, &v5[*(v32 + 44)]);
  sub_1A49E0230(0, &qword_1EB147370, sub_1A49DC7DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
  v34 = &v5[*(v33 + 36)];
  sub_1A4110614(v27);
  v35 = sub_1A524BC74();
  v37 = v36;
  sub_1A3FA9268();
  v39 = &v34[*(v38 + 36)];
  *v39 = v35;
  v39[1] = v37;
  v40 = (*((*v28 & *v27) + 0xC0))();
  [v40 contentGuideInsets];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = EdgeInsets.init(_:)(v42, v44, v46, v48);
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = sub_1A524A064();
  v57 = &v5[*(v84 + 36)];
  *v57 = v56;
  *(v57 + 1) = v49;
  *(v57 + 2) = v51;
  *(v57 + 3) = v53;
  *(v57 + 4) = v55;
  v57[40] = 0;
  sub_1A49E0320(v5, v82, sub_1A49DC738);
  swift_storeEnumTagMultiPayload();
  sub_1A49DF514();
  sub_1A49DF6AC();
  sub_1A5249744();
  return sub_1A49E0388(v5, sub_1A49DC738);
}

void sub_1A49DD938(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1A52486A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3E2C(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v21 = &v17 - v11;
  v12 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  v18 = *(a1 + *(v12 + 36) + 8);
  sub_1A4110614(v18);
  sub_1A49DBBB8(v6);
  sub_1A4394B64(v6, v12, &off_1EE6EE860);
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_1A49DBBB8(v6);
  v14 = sub_1A4394B64(v6, v12, &off_1EE6EE860);
  (v13)(v6, v3, v14);
  sub_1A524BC74();
  sub_1A52481F4();
  v15 = &v21[*(v8 + 44)];
  v16 = v25;
  *v15 = v24;
  *(v15 + 1) = v16;
  *(v15 + 2) = v26;
  v19 = sub_1A5249574();
  v23 = 0;
  sub_1A49DE174(v28);
  sub_1A52492C4();
  v27 = 0;
  sub_1A49DE3A4(v28);
}

uint64_t sub_1A49DE174@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  if (sub_1A3FBCFB8())
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v6 = sub_1A524B5C4();
    (*(v3 + 8))(v5, v2);
    v7 = sub_1A3FBD10C();
    KeyPath = swift_getKeyPath();
    sub_1A3FBBFA8();
    sub_1A3FBBFA8();
    sub_1A524BC74();
    sub_1A52481F4();
    v11[1] = v6;
    v11[2] = 0;
    v12 = 257;
    v13 = KeyPath;
    v14 = v7;
    v15 = 256;
    sub_1A49E0230(0, &qword_1EB12F8C8, sub_1A3F2F0CC, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A3FA9DC0();
    v9 = sub_1A524B8E4();
  }

  else
  {
    result = sub_1A524B8E4();
    v9 = result;
  }

  *a1 = v9;
  return result;
}

void sub_1A49DE3A4(uint64_t a1@<X8>)
{
  v15[0] = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  sub_1A3FBC7A0();
  v9 = sub_1A524A454();
  v16 = v10;
  v17 = v9;
  v12 = v11;
  v18 = v13;
  v15[1] = swift_getKeyPath();
  if (sub_1A3FBBFF8())
  {
    sub_1A524B544();
    (*(v5 + 104))(v7, *MEMORY[0x1E6980F18], v4);
    v14 = sub_1A524A154();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_1A524A184();
    sub_1A524A1C4();
    sub_1A49E051C(v3, sub_1A3E75D84);
    (*(v5 + 8))(v7, v4);
    swift_getKeyPath();
    sub_1A524B4A4();
    swift_getKeyPath();
  }

  v19 = v12 & 1;
  sub_1A3E75E68(v17, v16, v12 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49DE740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  v4 = v3 - 8;
  v76[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v76[1] = v5;
  v77 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49E03E8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = v76 - v9;
  sub_1A49DC9A0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DC964(0);
  v84 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v83 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DC928(0);
  v81 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v87 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = v76 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v86 = v76 - v19;
  v20 = sub_1A524B9A4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  v82 = v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v76 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v76 - v35;
  v37 = sub_1A524B994();
  if ((*((*MEMORY[0x1E69E7D40] & **(a1 + *(v4 + 44) + 8)) + 0x108))(v37))
  {
    v38 = 0.8;
  }

  else
  {
    v38 = 0.0;
  }

  (*(v21 + 32))(v27, v23, v20);
  v39 = *(v25 + 44);
  v40 = v78;
  *&v27[v39] = v38;
  v41 = sub_1A524A094();
  v42 = *(a1 + 8);
  sub_1A5247BC4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1A49E044C(v27, v33, sub_1A3EE16E8);
  v51 = &v33[*(v29 + 44)];
  *v51 = v41;
  v52 = v79;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_1A49E044C(v33, v36, sub_1A3FA8D64);
  sub_1A49DF850(v89);
  sub_1A3FBC7A0();
  v53 = sub_1A52407E4();
  v54 = *(*(v53 - 8) + 56);
  v54(v40, 0, 1, v53);
  v54(v52, 1, 1, v53);
  v55 = 0;
  v56 = 0;
  if (sub_1A3FBBFF8())
  {
    v57 = v77;
    sub_1A49E04B4(a1, v77, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
    v58 = (*(v76[0] + 80) + 16) & ~*(v76[0] + 80);
    v56 = swift_allocObject();
    sub_1A49E044C(v57, v56 + v58, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
    v55 = sub_1A49DF30C;
  }

  sub_1A49DCA34(0);
  sub_1A49DF3D4(&qword_1EB1473B8, sub_1A49DCA34, sub_1A49DCB10);
  v59 = v85;
  sub_1A42F9768(v89, v40, 0, 0, 0, v52, 0, 0, v85, v55, v56, 3);
  sub_1A3FAACE8(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v61 = sub_1A524A094();
  *(inited + 32) = v61;
  v62 = sub_1A524A0B4();
  *(inited + 33) = v62;
  v63 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v61)
  {
    v63 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v62)
  {
    v63 = sub_1A524A0A4();
  }

  v64 = v83;
  sub_1A49E044C(v59, v83, sub_1A49DC9A0);
  *(v64 + *(v84 + 36)) = v63;
  v65 = *(a1 + 16);
  v66 = sub_1A524A064();
  v67 = v64;
  v68 = v80;
  sub_1A49E044C(v67, v80, sub_1A49DC964);
  v69 = v68 + *(v81 + 36);
  *v69 = v66;
  *(v69 + 8) = v65;
  *(v69 + 16) = v42;
  *(v69 + 24) = v65;
  *(v69 + 32) = v42;
  *(v69 + 40) = 0;
  v70 = v86;
  sub_1A49E044C(v68, v86, sub_1A49DC928);
  v71 = v82;
  sub_1A49E04B4(v36, v82, sub_1A3FA8D64);
  v72 = v87;
  sub_1A49E04B4(v70, v87, sub_1A49DC928);
  v73 = v88;
  sub_1A49E04B4(v71, v88, sub_1A3FA8D64);
  sub_1A49DC8AC(0, &qword_1EB147388, sub_1A3FA8D64, sub_1A49DC928);
  sub_1A49E04B4(v72, v73 + *(v74 + 48), sub_1A49DC928);
  sub_1A49E051C(v70, sub_1A49DC928);
  sub_1A49E051C(v36, sub_1A3FA8D64);
  sub_1A49E051C(v72, sub_1A49DC928);
  return sub_1A49E051C(v71, sub_1A3FA8D64);
}

uint64_t sub_1A49DF0C0()
{
  v0 = sub_1A5248334();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  sub_1A3FBC17C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1A49E051C(v6, sub_1A3EE53E0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1A3EE4C48(v3);
  sub_1A5248304();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1A49DF324()
{
  result = qword_1EB1473D0;
  if (!qword_1EB1473D0)
  {
    sub_1A49DBF00(255);
    sub_1A49DF3D4(&qword_1EB1473D8, sub_1A49DBF3C, sub_1A49DF450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473D0);
  }

  return result;
}

uint64_t sub_1A49DF3D4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49DF450()
{
  result = qword_1EB1473E0;
  if (!qword_1EB1473E0)
  {
    sub_1A49E0230(255, &qword_1EB1472D0, sub_1A49DBFD8, sub_1A49DC738, MEMORY[0x1E697F960]);
    sub_1A49DF514();
    sub_1A49DF6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473E0);
  }

  return result;
}

unint64_t sub_1A49DF514()
{
  result = qword_1EB1473E8;
  if (!qword_1EB1473E8)
  {
    sub_1A49DBFD8(255);
    sub_1A49DC15C();
    sub_1A49DC260();
    sub_1A5249764();
    sub_1A49DFEB8(&qword_1EB147350, sub_1A49DC260, sub_1A49DC614);
    sub_1A49DFF94(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49DFF94(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473E8);
  }

  return result;
}

unint64_t sub_1A49DF6AC()
{
  result = qword_1EB1473F0;
  if (!qword_1EB1473F0)
  {
    sub_1A49DC738();
    sub_1A49DF72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473F0);
  }

  return result;
}

unint64_t sub_1A49DF72C()
{
  result = qword_1EB1473F8;
  if (!qword_1EB1473F8)
  {
    sub_1A49E0230(255, &qword_1EB147370, sub_1A49DC7DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A49DFF94(&qword_1EB147400, sub_1A49DC7DC);
    sub_1A49DFF94(&qword_1EB12F910, sub_1A3FA9268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473F8);
  }

  return result;
}

__n128 sub_1A49DF850@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  if (sub_1A3FBCFB8())
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v6 = sub_1A524B5C4();
    (*(v3 + 8))(v5, v2);
    sub_1A3FBBFA8();
    sub_1A3FBBFA8();
    sub_1A524BC74();
    sub_1A52481F4();
    LOBYTE(v12[0]) = 1;
    *&v15[6] = v13[2];
    *&v15[22] = v13[3];
    *&v15[38] = v14;
    v9[0] = v6;
    v9[1] = 0;
    *v10 = 257;
    *&v10[2] = *v15;
    *&v10[18] = *&v15[16];
    *&v10[34] = *&v15[32];
    *&v10[48] = *(&v14 + 1);
    *v15 = v6;
    *&v15[16] = *v10;
    *&v15[32] = *&v10[16];
    *&v15[48] = *&v10[32];
    *&v15[64] = *(&v14 + 1);
    v11 = 0;
    v15[72] = 0;
    sub_1A49E04B4(v9, v12, sub_1A3E33EB4);
    sub_1A49E04B4(v9, v12, sub_1A3E33EB4);
    sub_1A3E33EB4();
    sub_1A49DFEB8(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    sub_1A5249744();

    sub_1A49E051C(v9, sub_1A3E33EB4);
    sub_1A49E051C(v9, sub_1A3E33EB4);
    *&v15[32] = v12[2];
    *&v15[48] = v13[0];
    *&v15[57] = *(v13 + 9);
    *v15 = v12[0];
    *&v15[16] = v12[1];
  }

  else
  {
    LOBYTE(v9[0]) = 1;
    BYTE8(v13[1]) = 1;
    sub_1A3E33EB4();
    sub_1A49DFEB8(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    sub_1A5249744();
  }

  v7 = *&v15[48];
  *(a1 + 32) = *&v15[32];
  *(a1 + 48) = v7;
  *(a1 + 57) = *&v15[57];
  result = *&v15[16];
  *a1 = *v15;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A49DFB9C@<X0>(int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1A530D8E0;
  *(a2 + 16) = 0x4028000000000000;
  v4 = a1[7];
  *(a2 + v4) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = a1[8];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + a1[9]);
  type metadata accessor for PhotosDetailsAssetProvenanceViewModel();
  sub_1A49DFF94(&qword_1EB125E80, type metadata accessor for PhotosDetailsAssetProvenanceViewModel);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_1A49DFC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v15[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A49DBF00(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DCBC0(v3, v9);
  sub_1A49E04B4(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A49E044C(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  v12 = &v9[*(v7 + 36)];
  *v12 = sub_1A49E0778;
  *(v12 + 1) = v11;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  sub_1A49E04B4(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  v13 = swift_allocObject();
  sub_1A49E044C(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  sub_1A49DF324();
  sub_1A524AA84();

  return sub_1A49E0388(v9, sub_1A49DBF00);
}

uint64_t sub_1A49DFEB8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A49DFF3C(uint64_t a1)
{
  result = sub_1A49DFF94(&qword_1EB13FA98, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A49DFF94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A49E0020()
{
  sub_1A49E03E8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A49E03E8(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A49E0134();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A49E0134()
{
  if (!qword_1EB1243B8)
  {
    type metadata accessor for PhotosDetailsAssetProvenanceViewModel();
    sub_1A49DFF94(&qword_1EB125E80, type metadata accessor for PhotosDetailsAssetProvenanceViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243B8);
    }
  }
}

void sub_1A49E0230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A49E02B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A49E0320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49E0388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49E03E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E044C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49E04B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49E051C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_89()
{
  v1 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[7];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A49E0704(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosDetailsAssetProvenanceWidgetView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A49E0780(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (!a4)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (result == 0x8000000000000000 && a4 == -1)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(a4, 1))
    {
      goto LABEL_23;
    }

    v4 = vcvts_n_f32_s64(a4 - 1, 1uLL);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v4 <= -9.2234e18)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v4 >= 9.2234e18)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (!__OFSUB__(result % a4, v4))
    {
      return result;
    }

    __break(1u);
  }

  if (!a3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(a3, 1))
  {
    goto LABEL_24;
  }

  v5 = vcvts_n_f32_s64(a3 - 1, 1uLL);
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (__OFSUB__(result % a3, v5))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A49E089C(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (__OFSUB__(a3, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    v4 = vcvts_n_f32_s64(a3 - 1, 1uLL);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v4 <= -9.2234e18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v4 >= 9.2234e18)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (!a4)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (result == 0x8000000000000000 && a4 == -1)
    {
      goto LABEL_32;
    }

    if (!__OFSUB__(v4, result / a4))
    {
      return result;
    }

    __break(1u);
  }

  if (__OFSUB__(a4, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = vcvts_n_f32_s64(a4 - 1, 1uLL);
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!a3)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(v5, result / a3))
  {
    goto LABEL_31;
  }

  return result;
}

double sub_1A49E09B0(uint64_t a1, char a2)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  v7 = sub_1A3E2AFA0(a1, 0.1, 0.25);
  v9 = v8;
  sub_1A3E2AFA0(v7, 0.1, 0.25);
  v11 = v10;
  sub_1A49E0780(a1, a2, v6, v5);
  *&v15 = -(v9 * v12);
  sub_1A49E089C(a1, a2, v6, v5);
  return COERCE_DOUBLE(__PAIR64__(-(v11 * v13), v15));
}

double sub_1A49E0A60(uint64_t a1, char a2)
{
  v5 = *v2;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_1A49E0780(a1, a2, v7, v6);
  v8 = v5 + 1.0;
  *&v12 = v8 * v9;
  sub_1A49E089C(a1, a2, v7, v6);
  return COERCE_DOUBLE(__PAIR64__(v8 * v10, v12));
}

uint64_t sub_1A49E0AF4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
LABEL_7:
    v3 = *(v2 + 32);
    v4 = v3 - 1;
    if (!__OFSUB__(v3, 1))
    {
      if (v3)
      {
        if (result != 0x8000000000000000 || v3 != -1)
        {
          goto LABEL_11;
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v3 = *(v2 + 40);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result == 0x8000000000000000 && v3 == -1)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v5 = result % v3;
  return !v5 || v5 == v4;
}

BOOL sub_1A49E0B70(_BOOL8 result, char a2)
{
  if ((a2 & 1) == 0)
  {
LABEL_7:
    v7 = *(v2 + 40);
    v4 = __OFSUB__(v7, 1);
    v5 = v7 - 1;
    if (!v4)
    {
      v6 = *(v2 + 32);
      if (v6)
      {
        if (result != 0x8000000000000000 || v6 != -1)
        {
          goto LABEL_11;
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v3 = *(v2 + 32);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v2 + 40);
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result == 0x8000000000000000 && v6 == -1)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = result / v6;
  return !v8 || v8 == v5;
}

__n64 sub_1A49E0BF0(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1A49E0780(a1, a2, v6, v7);
  v8 = v5 + 1.0;
  v10 = (v5 + 1.0) * v9;
  v11 = sub_1A49E089C(a1, a2, v6, v7);
  v13 = v12;
  v14 = sub_1A3E2AFA0(v11, 0.7, 0.85);
  v16 = v15;
  sub_1A3E2AFA0(v14, 0.7, 0.85);
  v18 = v17;
  v19 = sub_1A49E0B70(a1, a2);
  if (sub_1A49E0AF4(a1, a2))
  {
    v20 = 0.85;
    result.n64_f32[0] = v10 * 0.85;
    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  result.n64_f32[0] = v10 * v16;
  if (!v19)
  {
LABEL_6:
    v20 = v18;
    goto LABEL_7;
  }

  v20 = 0.85;
LABEL_7:
  result.n64_f32[1] = (v8 * v13) * v20;
  return result;
}

uint64_t *sub_1A49E0D18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A4731C18();
  v3 = *v2;
  result = sub_1A4731C24();
  v5 = *result;
  v6 = *v2;
  *a1 = 1017370378;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = 1072064102;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  return result;
}

void sub_1A49E0D80(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1A49E0780(a1, a2, v6, v7);
  v9 = v8;
  sub_1A49E089C(a1, a2, v6, v7);
  v11 = v10;
  v12 = sub_1A3E28488(a1, *(v2 + 32));
  if (v12)
  {
    v13 = atan2f((v5 + 1.0) * v9, (v5 + 1.0) * v11);
    v15 = sub_1A3E2AFA0(v14, -0.3, 0.3);
    v17 = v13 + v16;
    sub_1A3E2AFA0(v15, -0.25, 0.25);
LABEL_5:
    __sincosf_stret(v17);
    return;
  }

  v18 = sub_1A3E2AFA0(v12, -3.1416, 3.1416);
  v17 = v19;
  v20 = *(v2 + 24) + -0.5;
  if (v20 >= 0.0)
  {
    sub_1A3E2AFA0(v18, 0.0, v20);
    goto LABEL_5;
  }

  __break(1u);
}

double sub_1A49E0EFC@<D0>(uint64_t a1@<X8>)
{
  v2 = *sub_1A4731C18();
  v3 = *sub_1A4731C24();
  v4 = sub_1A49E1110(&unk_1F17329E8);
  v5 = sub_1A49E1110(&unk_1F1732A50);
  v6 = sub_1A49E1110(&unk_1F1732AA0);
  sub_1A49E1250(0, &qword_1EB120238, sub_1A49E121C, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A533E260;
  *(v7 + 32) = xmmword_1A537AED0;
  *(v7 + 48) = 0;
  *(v7 + 64) = xmmword_1A537AEE0;
  *(v7 + 80) = 0;
  *(v7 + 96) = xmmword_1A537AEE0;
  *(v7 + 112) = 0;
  *(v7 + 128) = xmmword_1A537AEF0;
  *(v7 + 144) = 0;
  *(v7 + 160) = xmmword_1A537AF00;
  *(v7 + 176) = 0;
  *(v7 + 192) = xmmword_1A537AF10;
  *(v7 + 208) = 0;
  *(v7 + 224) = xmmword_1A537AF20;
  *(v7 + 240) = 0;
  result = 512.000369;
  *(v7 + 256) = xmmword_1A537AF30;
  *(v7 + 272) = 0;
  *a1 = 1017370378;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = &unk_1F1732AF0;
  *(a1 + 56) = &unk_1F1732B50;
  *(a1 + 64) = v7;
  *(a1 + 72) = &unk_1F1732BB0;
  *(a1 + 80) = &unk_1F1732C10;
  return result;
}

uint64_t sub_1A49E1070()
{
  v0 = *sub_1A4731C18();
  sub_1A4731C24();
  return v0;
}

double sub_1A49E10AC(uint64_t a1)
{
  v1 = sub_1A3E2AFA0(a1, 0.0, 1.0);
  v3 = v2;
  result = 0.0;
  if (v3 > 0.1)
  {
    sub_1A3E2AFA0(v1, -0.43633, 0.43633);
    return 0.0;
  }

  return result;
}

uint64_t sub_1A49E1110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A49E1384();
    v3 = sub_1A524E3D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_1A524EC84();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1A49E1250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E12D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A49E131C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A49E1384()
{
  if (!qword_1EB120538)
  {
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120538);
    }
  }
}

void sub_1A49E13E0(unint64_t a1)
{
  if (a1 >= 3)
  {
    if (a1 == 3)
    {
      v6 = [objc_opt_self() globalSession];
      [v6 releaseCachedResources];
    }

    else
    {
      sub_1A524E404();

      v2 = PXApplicationVisibilityStateDescription(a1);
      v3 = sub_1A524C674();
      v5 = v4;

      MEMORY[0x1A5907B60](v3, v5);

      sub_1A524E6E4();
      __break(1u);
    }
  }
}

id VisionKitUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisionKitUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionKitUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisionKitUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionKitUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A49E195C(void *a1)
{
  v2 = [a1 allowsPreviewHeader] ^ 1;

  return [a1 setAllowsPreviewHeader_];
}

void sub_1A49E1A84()
{
  v0 = sub_1A49E2418();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A524C1D4();
}

id PhotosGridTogglePreviewHeaderActionPerformer.__allocating_init(viewModel:actionType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A524C634();

  v5 = [v3 initWithViewModel:a1 actionType:v4];

  return v5;
}

id PhotosGridTogglePreviewHeaderActionPerformer.init(viewModel:actionType:)(void *a1)
{
  v3 = sub_1A524C634();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for PhotosGridTogglePreviewHeaderActionPerformer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithViewModel_actionType_, a1, v3);

  return v4;
}

id PhotosGridTogglePreviewHeaderActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridTogglePreviewHeaderActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A49E212C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B6D0);
  __swift_project_value_buffer(v0, qword_1EB15B6D0);
  sub_1A5246EF4();
}

uint64_t sub_1A49E2418()
{
  result = qword_1EB120E60;
  if (!qword_1EB120E60)
  {
    sub_1A524C1D4();
  }

  return result;
}

uint64_t sub_1A49E2470(uint64_t a1)
{
  v2 = sub_1A49E2418();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A49E24D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for PhotosSceneOrientation(0);
  sub_1A49E31E8(0, &unk_1EB124980, type metadata accessor for PhotosSceneOrientation.NotificationObserver, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  v5 = *(v10 + 24);

  if (v5 >= 3)
  {
    type metadata accessor for PXUserInterfaceOrientation(0);
    sub_1A524EB44();
    __break(1u);
  }

  else
  {
    v6 = qword_1A537B328[v5];
    sub_1A49E309C();
    (*(*(v7 - 8) + 16))(a2, a1, v7);
    sub_1A49E3150();
    v9 = (a2 + *(v8 + 36));
    *v9 = KeyPath;
    v9[1] = v6;
  }
}

uint64_t sub_1A49E2648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SceneOrientationModifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for PhotosSceneOrientation(0);
  type metadata accessor for PhotosSceneOrientation.NotificationObserver(0);
  sub_1A5247C74();
  MEMORY[0x1A5906490](v7, a2, v5, a3);
  return sub_1A49E324C(v7);
}

uint64_t sub_1A49E276C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for PhotosSceneOrientation.NotificationObserver(0);
  v3 = swift_allocObject();
  result = sub_1A49E282C(Strong);
  *a1 = v3;
  return result;
}

uint64_t sub_1A49E282C(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = 1;
  sub_1A5241604();
  v4 = a1;
  sub_1A49E2B5C(a1);
  v5 = [objc_opt_self() defaultCenter];
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A49E3860;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C7C848;
  aBlock[3] = &block_descriptor_319;
  v7 = _Block_copy(aBlock);

  v8 = [v5 addObserverForName:@"PXLemonadeWindowSceneDidUpdateNotification" object:0 queue:0 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v9 = sub_1A49E3358();
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1A49E3044();
  sub_1A52415D4();

  if (*(v2 + 24) != v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v2;
    sub_1A52415C4();
  }

  return v2;
}

uint64_t sub_1A49E2A88(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49E3044();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A49E2B5C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49E3044();
    sub_1A52415C4();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1A3D63AC0();
  v3 = v2;
  v4 = sub_1A524DBF4();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1A49E2CC4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1A49E3358();
    swift_getKeyPath();
    sub_1A49E3044();
    sub_1A52415D4();

    if (*(v1 + 24) != v2)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }
  }

  return result;
}

uint64_t sub_1A49E2E14()
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A49E2E88@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1A49E2F04(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A49E2B5C(v1);
}

uint64_t sub_1A49E2F34()
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  return *(v0 + 24);
}

uint64_t sub_1A49E2FA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  *a2 = *(v3 + 24);
  return result;
}

unint64_t sub_1A49E3044()
{
  result = qword_1EB1914F8;
  if (!qword_1EB1914F8)
  {
    type metadata accessor for PhotosSceneOrientation.NotificationObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1914F8);
  }

  return result;
}

void sub_1A49E309C()
{
  if (!qword_1EB127C38)
  {
    type metadata accessor for SceneOrientationModifier(255);
    sub_1A49E3698(&qword_1EB129E48, type metadata accessor for SceneOrientationModifier);
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127C38);
    }
  }
}

void sub_1A49E3150()
{
  if (!qword_1EB1287D0)
  {
    sub_1A49E309C();
    sub_1A49E31E8(255, &qword_1EB127738, type metadata accessor for PXUserInterfaceOrientation, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1287D0);
    }
  }
}

void sub_1A49E31E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E324C(uint64_t a1)
{
  v2 = type metadata accessor for SceneOrientationModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A49E32EC()
{
  result = type metadata accessor for PhotosSceneOrientation(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A49E3358()
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong viewIfLoaded], v1, v2) && (v3 = objc_msgSend(v2, sel_window), v2, v3) && (v4 = objc_msgSend(v3, sel_windowScene), v3, v4) && (v5 = objc_msgSend(v4, sel_effectiveGeometry), v4, v6 = objc_msgSend(v5, sel_interfaceOrientation), v5, (v6 - 1) <= 3))
  {
    return qword_1A537B340[(v6 - 1)];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A49E3494()
{
  MEMORY[0x1A590F020](v0 + 16);
  v1 = OBJC_IVAR____TtCV12PhotosUICoreP33_0353D17CBE1C867E9E0FB31C003D882622PhotosSceneOrientation20NotificationObserver___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A49E3540()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A49E35E8()
{
  result = qword_1EB1287D8;
  if (!qword_1EB1287D8)
  {
    sub_1A49E3150();
    sub_1A49E3698(&qword_1EB127C40, sub_1A49E309C);
    sub_1A49E36E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287D8);
  }

  return result;
}

uint64_t sub_1A49E3698(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A49E36E0()
{
  result = qword_1EB127740;
  if (!qword_1EB127740)
  {
    sub_1A49E31E8(255, &qword_1EB127738, type metadata accessor for PXUserInterfaceOrientation, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127740);
  }

  return result;
}

void sub_1A49E3790()
{
  sub_1A49E31E8(319, &unk_1EB124980, type metadata accessor for PhotosSceneOrientation.NotificationObserver, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A49E3860()
{
  v0 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_1A49E394C;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_43_1;
  _Block_copy(aBlock);

  px_dispatch_on_main_queue();
}

uint64_t SearchAIStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t PhotosSearchAIStatus.status.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
  sub_1A52415D4();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_1A49E3A90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
  sub_1A52415D4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for PhotosSearchAIStatus()
{
  result = qword_1EB173F00;
  if (!qword_1EB173F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unsigned __int8 *sub_1A49E3BBC(unsigned __int8 *result)
{
  if (*(v1 + 16) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A49E3CC4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB173F18);
  __swift_project_value_buffer(v0, qword_1EB173F18);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t PhotosSearchAIStatus.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosSearchAIStatus.init()();
  return v0;
}

uint64_t PhotosSearchAIStatus.init()()
{
  *(v0 + 16) = 4;
  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
  v2 = sub_1A5241DF4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_notification) = 0;
  sub_1A5241604();
  v3 = [objc_opt_self() sharedScheduler];
  v4 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1A49E41B8;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3C2E0D0;
  v7[3] = &block_descriptor_320;
  v5 = _Block_copy(v7);

  [v3 scheduleTaskWithQoS:1 block:v5];
  _Block_release(v5);

  return v0;
}

uint64_t sub_1A49E3EF4()
{
  v0 = sub_1A5241DC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1A5241DA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1A524C674();
    (*(v1 + 104))(v3, *MEMORY[0x1E69A12A0], v0);
    sub_1A5241D94();
    sub_1A5241DD4();
    (*(v5 + 8))(v7, v4);
    v13 = sub_1A5241DF4();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
    swift_beginAccess();
    sub_1A49E58DC(v10, v12 + v14);
    swift_endAccess();
    sub_1A49E4604();
    sub_1A49E41C0();
  }

  return result;
}

void sub_1A49E41C0()
{
  v1 = v0;
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_1A5241DF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
  swift_beginAccess();
  sub_1A49E5970(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A49E55EC(v4);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getKeyPath();
    v17 = v1;
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
    sub_1A52415D4();

    if (*(v1 + 16) != 2)
    {
      swift_allocObject();
      swift_weakInit();

      v15 = sub_1A5241DE4();

      (*(v6 + 8))(v8, v5);

      *(v1 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_notification) = v15;

      return;
    }

    (*(v6 + 8))(v8, v5);
  }

  if (*(v1 + 16) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v16[-16] = v1;
    v16[-8] = 2;
    v17 = v1;
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
    sub_1A52415C4();
  }

  if (qword_1EB173F10 != -1)
  {
    swift_once();
  }

  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB173F18);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "Not observing Apple Intelligence changes because device is unsupported", v14, 2u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }
}

uint64_t sub_1A49E4604()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C29A58();
  v8 = sub_1A524D474();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A49E5A58;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_12_11;
  v10 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A49E5A60(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A49E5AA8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v3, v10);
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A49E48E0()
{
  v0 = sub_1A5241D54();
  v57 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5241D84();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = sub_1A5241DF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = v0;
    v15 = v13;
    v16 = v10;
    v17 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
    v18 = result;
    swift_beginAccess();
    sub_1A49E5970(v18 + v17, v9);
    if ((*(v11 + 48))(v9, 1, v16) == 1)
    {

      return sub_1A49E55EC(v9);
    }

    v54 = v16;
    v55 = v18;
    v19 = v16;
    v20 = v15;
    (*(v11 + 32))(v15, v9, v19);
    sub_1A5241DB4();
    v21 = (*(v4 + 88))(v6, v3);
    v22 = *MEMORY[0x1E69A0EF8];
    (*(v4 + 8))(v6, v3);
    if (v21 == v22)
    {
      if (qword_1EB173F10 != -1)
      {
        swift_once();
      }

      v23 = sub_1A5246F24();
      __swift_project_value_buffer(v23, qword_1EB173F18);
      v24 = sub_1A5246F04();
      v25 = sub_1A524D264();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v54;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1A3C1C000, v24, v25, "Apple Intelligence status is restricted", v28, 2u);
        MEMORY[0x1A590EEC0](v28, -1, -1);
      }

      v29 = v55;
      if (*(v55 + 16) != 3)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v54 - 2) = v29;
        *(&v54 - 8) = 3;
        v58 = v29;
        sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
        sub_1A52415C4();

        (*(v11 + 8))(v20, v27);
      }

      (*(v11 + 8))(v20, v27);
      v30 = 3;
LABEL_36:
      *(v29 + 16) = v30;
    }

    v31 = sub_1A49E5B0C();
    if (!v31)
    {
      (*(v11 + 8))(v15, v54);
    }

    v32 = *(v31 + 16);
    if (!v32)
    {

      if (qword_1EB173F10 != -1)
      {
        swift_once();
      }

      v42 = sub_1A5246F24();
      __swift_project_value_buffer(v42, qword_1EB173F18);
      v43 = sub_1A5246F04();
      v44 = sub_1A524D264();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1A3C1C000, v43, v44, "Apple Intelligence status is on", v45, 2u);
        MEMORY[0x1A590EEC0](v45, -1, -1);
      }

      v46 = v55;
      if (!*(v55 + 16))
      {
        (*(v11 + 8))(v20, v54);
        *(v46 + 16) = 0;
      }

      v47 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v47);
      *(&v54 - 2) = v46;
      *(&v54 - 8) = 0;
      v58 = v46;
      sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
      goto LABEL_40;
    }

    if (v32 == 1)
    {
      v33 = v56;
      v34 = v57;
      v35 = v31;
      (*(v57 + 104))(v2, *MEMORY[0x1E69A1010], v56);
      v36 = sub_1A49E5354(v2, v35);

      (*(v34 + 8))(v2, v33);
      if (v36)
      {
        if (qword_1EB173F10 != -1)
        {
          swift_once();
        }

        v37 = sub_1A5246F24();
        __swift_project_value_buffer(v37, qword_1EB173F18);
        v38 = sub_1A5246F04();
        v39 = sub_1A524D264();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_1A3C1C000, v38, v39, "Apple Intelligence status is off", v40, 2u);
          MEMORY[0x1A590EEC0](v40, -1, -1);
        }

        v29 = v55;
        if (*(v55 + 16) == 1)
        {
          (*(v11 + 8))(v20, v54);
          v30 = 1;
          goto LABEL_36;
        }

        v53 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v53);
        *(&v54 - 2) = v29;
        *(&v54 - 8) = 1;
        v58 = v29;
        sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
LABEL_40:
        sub_1A52415C4();

        (*(v11 + 8))(v20, v54);
      }
    }

    else
    {
    }

    if (qword_1EB173F10 != -1)
    {
      swift_once();
    }

    v48 = sub_1A5246F24();
    __swift_project_value_buffer(v48, qword_1EB173F18);
    v49 = sub_1A5246F04();
    v50 = sub_1A524D264();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1A3C1C000, v49, v50, "Apple Intelligence status is unsupported", v51, 2u);
      MEMORY[0x1A590EEC0](v51, -1, -1);
    }

    v29 = v55;
    if (*(v55 + 16) == 2)
    {
      (*(v11 + 8))(v20, v54);
      v30 = 2;
      goto LABEL_36;
    }

    v52 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v52);
    *(&v54 - 2) = v29;
    *(&v54 - 8) = 2;
    v58 = v29;
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus);
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_1A49E5354(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5241D54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A49E5A60(&qword_1EB124FA8, MEMORY[0x1E69A1168]), v7 = sub_1A524C4A4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A49E5A60(&qword_1EB124FA0, MEMORY[0x1E69A1168]);
      v15 = sub_1A524C594();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t PhotosSearchAIStatus.deinit()
{
  sub_1A49E55EC(v0 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability);

  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A49E55EC(uint64_t a1)
{
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosSearchAIStatus.__deallocating_deinit()
{
  sub_1A49E55EC(v0 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability);

  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A49E5738()
{
  result = qword_1EB147420;
  if (!qword_1EB147420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147420);
  }

  return result;
}

void sub_1A49E57A4()
{
  sub_1A49E5AA8(319, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A49E58DC(uint64_t a1, uint64_t a2)
{
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49E5970(uint64_t a1, uint64_t a2)
{
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49E5A04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A49E4604();
  }

  return result;
}

uint64_t sub_1A49E5A60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A49E5AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E5B0C()
{
  v28 = sub_1A5241D74();
  v0 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5241D84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v33 = sub_1A5241DC4();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A5241DA4();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5241DF4();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB173F10 != -1)
  {
    swift_once();
  }

  v15 = sub_1A5246F24();
  __swift_project_value_buffer(v15, qword_1EB173F18);
  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v4;
    v19 = v3;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1A3C1C000, v16, v17, "Checking Apple Intelligence availability", v18, 2u);
    v21 = v20;
    v3 = v19;
    v4 = v27;
    MEMORY[0x1A590EEC0](v21, -1, -1);
  }

  sub_1A524C674();
  (*(v31 + 104))(v30, *MEMORY[0x1E69A12A0], v33);
  sub_1A5241D94();
  v22 = v34;
  sub_1A5241DD4();
  (*(v29 + 8))(v12, v32);
  sub_1A5241DB4();
  (*(v4 + 16))(v7, v9, v3);
  if ((*(v4 + 88))(v7, v3) == *MEMORY[0x1E69A0F00])
  {
    (*(v4 + 96))(v7, v3);
    v23 = v28;
    (*(v0 + 32))(v2, v7, v28);
    v24 = sub_1A5241D64();
    (*(v0 + 8))(v2, v23);
    (*(v4 + 8))(v9, v3);
    (*(v35 + 8))(v22, v36);
    return v24;
  }

  else
  {
    v26 = *(v4 + 8);
    v26(v9, v3);
    (*(v35 + 8))(v22, v36);
    v26(v7, v3);
    return MEMORY[0x1E69E7CD0];
  }
}

id sub_1A49E60B4(void *a1, void *a2, uint64_t a3)
{
  v25[4] = a3;
  sub_1A49E6868();
  v25[6] = *(v6 - 8);
  v25[7] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25[5] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1A524E2B4())
  {
    v8 = sub_1A45EBD20(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_subscriptions) = v8;
  v9 = (v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusContextObservation);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryStatusContextObservation);
  *v10 = 0;
  v10[1] = 0;
  v11 = [objc_allocWithZone(PXSharedLibraryAssetStatusProvider) initWithAsset_];
  v12 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusProvider;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusProvider) = v11;
  result = [a1 photoLibrary];
  v25[3] = a1;
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

    *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryStatusProvider) = v15;
    v16 = *(v3 + v12);
    v25[1] = [a2 userInterfaceIdiom];
    type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel.ViewContent(0);
    v17 = swift_allocObject();
    v18 = *v17;
    v25[2] = a2;
    v19 = v18;
    v20 = *(MEMORY[0x1E69DDCE0] + 16);
    *(v17 + 16) = *MEMORY[0x1E69DDCE0];
    *(v17 + 32) = v20;
    *(v17 + 56) = xmmword_1A537B4B0;
    *(v17 + 72) = 0;
    *(v17 + 80) = 0;
    *(v17 + 88) = 0;
    sub_1A5241604();
    *(v17 + 48) = v16;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v16;
    v22[4] = v19;
    v25[12] = 0xD00000000000008FLL;
    v25[13] = 0x80000001A53BFEC0;
    v25[8] = 26;
    v23 = v16;

    v25[0] = v3;
    v24 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v24);

    sub_1A49E916C();
    swift_allocObject();
    sub_1A5245834();
  }

  __break(1u);
  return result;
}

void sub_1A49E6868()
{
  if (!qword_1EB13B248)
  {
    sub_1A3C52C70(255, &qword_1EB126C78);
    v0 = sub_1A5247A04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B248);
    }
  }
}

uint64_t sub_1A49E68F0@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusProvider) fetchParticipants];
  if (v3)
  {
    v4 = v3;
    v5 = PXSharedLibrarySearchURL(v3);
    sub_1A5240DE4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1A5240E64();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

double sub_1A49E69E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 480))(KeyPath);

  return v1[7];
}

uint64_t (*sub_1A49E6A60(void *a1))(double *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent);
  a1[1] = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 480))(KeyPath);

  *a1 = v3[7];
  return sub_1A49E6B0C;
}

uint64_t sub_1A49E6B34()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  if (v0[11])
  {

    sub_1A5245814();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A49E6BC4()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  if (v0[10])
  {

    sub_1A5245814();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A49E6C64(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  (*(*v4 + 480))();

  v10 = v4[2] == a1 && v4[3] == a2;
  if (!v10 || (v4[4] == a3 ? (v11 = v4[5] == a4) : (v11 = 0), !v11))
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 488))(v13);
  }

  return result;
}

double sub_1A49E6DBC()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[2];
}

__n128 sub_1A49E6E24@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  result = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1A49E6EC8(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v4[1], v5), vceqq_f64(v4[2], v6)))))
  {
    v4[1].f64[0] = a1;
    v4[1].f64[1] = a2;
    v4[2].f64[0] = a3;
    v4[2].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*&v4->f64[0] + 488))();
  }
}

void sub_1A49E6FE8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 3) != 0)
    {
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x158))();
    }
  }
}

void sub_1A49E707C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 2) != 0)
    {
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x158))();
    }
  }
}

void sub_1A49E710C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;

    sub_1A49E754C([v1 layoutDirection] == 2);

    [v1 displayScale];
    sub_1A49E739C(v4);

    [v1 contentGuideInsets];
    sub_1A49E6C64(v5, v6, v7, v8);
  }
}

uint64_t sub_1A49E71EC(double a1)
{
  v2 = *(v1 + 56);
  if (v2 == a1)
  {
    *(v1 + 56) = a1;
    KeyPath = swift_getKeyPath();
    v4 = *(*v1 + 480);
    (v4)(KeyPath);

    if (*(v1 + 56) != v2)
    {
      swift_getKeyPath();
      v4();

      if (*(v1 + 80))
      {

        sub_1A5245804();
      }

      __break(1u);
    }
  }

  else
  {
    v6 = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(*v1 + 488))(v7);
  }

  return result;
}

uint64_t sub_1A49E739C(double a1)
{
  v2 = *(v1 + 64);
  if (v2 == a1)
  {
    *(v1 + 64) = a1;
    KeyPath = swift_getKeyPath();
    v4 = *(*v1 + 480);
    (v4)(KeyPath);

    if (*(v1 + 64) != v2)
    {
      swift_getKeyPath();
      v4();

      if (*(v1 + 88))
      {

        sub_1A5245804();
      }

      __break(1u);
    }
  }

  else
  {
    v6 = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(*v1 + 488))(v7);
  }

  return result;
}

uint64_t sub_1A49E754C(char a1)
{
  v2 = *(v1 + 72);
  if (v2 == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;
    KeyPath = swift_getKeyPath();
    v7 = *(*v1 + 480);
    (v7)(KeyPath);

    if (v2 != *(v1 + 72))
    {
      swift_getKeyPath();
      v7();

      if (*(v1 + 88))
      {

        sub_1A5245804();
      }

      __break(1u);
    }
  }

  else
  {
    v3 = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](v3);
    (*(*v1 + 488))(v4);
  }

  return result;
}

uint64_t sub_1A49E7700(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A524BEE4();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A524BF64();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1E53E0 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1EB1E53E8;
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a1;
  aBlock[4] = sub_1A49E96A0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_88_1;
  v13 = _Block_copy(aBlock);

  v14 = a3;

  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A49E9604(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v15 = MEMORY[0x1E69E7F60];
  sub_1A49E9578(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9B078(&qword_1EB12B1B0, &qword_1EB12B1C0, v15);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v7, v13);
  _Block_release(v13);
  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

void sub_1A49E7A88(uint64_t a1, void *a2)
{
  sub_1A49E9578(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    (*(*v7 + 480))();

    v8 = [a2 attributedLocalizedContributionStatusForPreferredWidth:v7[7] maximumNumberOfLines:1.0];
    if (v8)
    {
      v9 = v8;
      sub_1A5240834();
      v10 = sub_1A52407E4();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
      sub_1A5245824();
    }
  }

  v11 = sub_1A52407E4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1A5245824();
}

uint64_t sub_1A49E7C90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1A524BEE4();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1E53E0 != -1)
  {
    swift_once();
  }

  v19[1] = qword_1EB1E53E8;
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a1;
  v14[5] = a4;
  aBlock[4] = sub_1A49E9344;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_321;
  v15 = _Block_copy(aBlock);

  v16 = a3;

  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A49E9604(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A49E9578(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9B078(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v9, v15);
  _Block_release(v15);
  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);
}

double sub_1A49E801C()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[7];
}

double sub_1A49E8080@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  result = v3[7];
  *a2 = result;
  return result;
}

double sub_1A49E8120()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[8];
}

double sub_1A49E8184@<D0>(double **a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  result = v3[8];
  *a2 = result;
  return result;
}

uint64_t sub_1A49E8224()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[72];
}

uint64_t sub_1A49E8288@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[72];
  return result;
}

uint64_t sub_1A49E8328()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A49E9604(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A49E9578(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9B078(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1E53E8 = result;
  return result;
}

uint64_t sub_1A49E85AC()
{
  swift_getKeyPath();
  (*(*v0 + 480))();
}

uint64_t sub_1A49E8620@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[10];
}

uint64_t sub_1A49E86C8()
{
  swift_getKeyPath();
  (*(*v0 + 480))();
}

uint64_t sub_1A49E873C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[11];
}

uint64_t sub_1A49E87E4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 488))(KeyPath, a6, v11, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A49E89C4()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel11ViewContent___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1A49E8A78(void *a1)
{
  result = [a1 firstAsset];
  if (result)
  {
    v2 = result;
    result = [result photoLibrary];
    if (result)
    {
      v3 = result;
      v4 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];

      if ([v4 hasSharedLibraryOrPreview])
      {
        sub_1A3C52C70(0, &qword_1EB1268C8);
        v5 = [swift_getObjCClassFromMetadata() sharedInstance];
        v6 = [v5 showSharedLibraryWidget];

        if (v6)
        {
          v7 = [objc_allocWithZone(PXSharedLibraryAssetStatusProvider) initWithAsset_];
          v8 = [v7 status];

          return (v8 == 3);
        }
      }

      else
      {
      }

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A49E8BB8()
{

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id sub_1A49E8C38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A49E8D9C()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A49E8E6C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 72);
  *(v2 + 72) = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  v5 = *(*v2 + 480);
  (v5)(KeyPath);

  if (v3 != *(v2 + 72))
  {
    swift_getKeyPath();
    v5();

    if (*(v2 + 88))
    {

      sub_1A5245804();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A49E8F54()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 64);
  *(v2 + 64) = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  v5 = *(*v2 + 480);
  (v5)(KeyPath);

  if (*(v2 + 64) != v3)
  {
    swift_getKeyPath();
    v5();

    if (*(v2 + 88))
    {

      sub_1A5245804();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A49E9074()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 56);
  *(v2 + 56) = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  v5 = *(*v2 + 480);
  (v5)(KeyPath);

  if (*(v2 + 56) != v3)
  {
    swift_getKeyPath();
    v5();

    if (*(v2 + 80))
    {

      sub_1A5245804();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A49E916C()
{
  result = qword_1EB147438;
  if (!qword_1EB147438)
  {
    sub_1A52407E4();
    sub_1A49E9604(&qword_1EB136580, MEMORY[0x1E6968848]);
    sub_1A5245844();
  }

  return result;
}

uint64_t sub_1A49E9200()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t objectdestroy_67Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1A49E9294()
{
  result = qword_1EB147440;
  if (!qword_1EB147440)
  {
    sub_1A3C52C70(255, &qword_1EB126630);
    sub_1A40480E4();
    sub_1A5245844();
  }

  return result;
}

uint64_t sub_1A49E9308()
{
  *(*(v0 + 16) + 88) = *(v0 + 24);
}

uint64_t sub_1A49E9344()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_9:
    aBlock[0] = 0;
    sub_1A5245824();
  }

  v5 = Strong;
  v6 = [v1 fetchParticipants];
  if (!v6 || (v7 = v6, v8 = [v6 firstObject], v7, !v8))
  {

    goto LABEL_9;
  }

  v9 = [objc_allocWithZone(PXSharedLibraryPhotoKitImageProvider) initWithParticipant_];
  if (v3 == 5)
  {
    v10 = 80.0;
  }

  else
  {
    v10 = 32.0;
  }

  KeyPath = swift_getKeyPath();
  v12 = *(*v5 + 480);
  (v12)(KeyPath);

  v13 = *(v5 + 64);
  swift_getKeyPath();
  v12();

  v14 = *(v5 + 72);
  aBlock[4] = sub_1A49E95DC;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3DEF568;
  aBlock[3] = &block_descriptor_81_2;
  v15 = _Block_copy(aBlock);

  [v9 requestImageWithTargetSize:v14 displayScale:v15 isRTL:v10 completionHandler:{v10, v13}];
  _Block_release(v15);
}

void sub_1A49E9578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E9604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_77Tm_1()
{

  return swift_deallocObject();
}

uint64_t GenerativeStoryPendingMemoryHandler.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v2 + v3, v4, v5);
  *(v2 + 112) = a1;
  return v2;
}

uint64_t GenerativeStoryPendingMemoryHandler.init(photoLibrary:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v1 + v3, v4, v5);
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1A49E9834(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A49E9858, v2, 0);
}

void sub_1A49E9858()
{
  v1 = v0[19];
  v2 = v0[18];
  v3 = [*(v0[20] + 112) librarySpecificFetchOptions];
  v0[21] = v3;
  [v3 setFetchLimit_];
  [v3 setIncludeStoryMemories_];
  [v3 setIncludePendingMemories_];
  sub_1A3C52C70(0, &qword_1EB1265E0);
  swift_getObjCClassFromMetadata();
  sub_1A3C4D548(0, &qword_1EB12B260);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49E9C58()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1A49E9EDC;
  }

  else
  {
    v4 = sub_1A49E9D78;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A49E9EDC()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  swift_willThrow();
  _Block_release(v2);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    *v7 = 136315138;
    *(v0 + 80) = v6;
    v8 = v6;
    sub_1A3C34400(0, &qword_1EB126160);
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 176);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A49EA0D0()
{
  v1 = *(v0[18] + 112);
  v2 = [v1 librarySpecificFetchOptions];
  v0[19] = v2;
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3E072BC();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531D3E0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1A3D710E8();
  *(v3 + 64) = v5;
  strcpy((v3 + 32), "pendingState");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  v6 = MEMORY[0x1E69E75F8];
  v7 = MEMORY[0x1E69E7660];
  *(v3 + 96) = MEMORY[0x1E69E75F8];
  *(v3 + 104) = v7;
  *(v3 + 72) = 1;
  *(v3 + 136) = v4;
  *(v3 + 144) = v5;
  strcpy((v3 + 112), "creationType");
  *(v3 + 125) = 0;
  *(v3 + 126) = -5120;
  *(v3 + 176) = v6;
  *(v3 + 184) = v7;
  *(v3 + 152) = 1;
  v8 = sub_1A524D134();
  [v2 setInternalPredicate_];

  [v2 setIncludeStoryMemories_];
  [v2 setIncludePendingMemories_];
  sub_1A3C52C70(0, &qword_1EB1265E0);
  v9 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v2];
  v0[20] = v9;
  if ([v9 count] < 1)
  {

    v14 = v0[1];

    return v14();
  }

  else
  {
    v0[21] = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
    v10 = v9;
    v11 = sub_1A5246F04();
    v12 = sub_1A524D264();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = [v10 count];

      _os_log_impl(&dword_1A3C1C000, v11, v12, "Found %ld pending generative memories to delete", v13, 0xCu);
      MEMORY[0x1A590EEC0](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    v0[14] = sub_1A49EAAA4;
    v0[15] = v16;
    v17 = MEMORY[0x1E69E9820];
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A3C2E0D0;
    v0[13] = &block_descriptor_9_12;
    v18 = _Block_copy(v0 + 10);
    v0[22] = v18;
    v19 = v10;

    v0[2] = v0;
    v0[3] = sub_1A49EA4F4;
    v20 = swift_continuation_init();
    sub_1A43AC0B0();
    v0[17] = v21;
    v0[10] = v17;
    v0[11] = 1107296256;
    v0[12] = sub_1A4077B64;
    v0[13] = &block_descriptor_12_12;
    v0[14] = v20;
    [v1 performChanges:v18 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1A49EA4F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_1A49EA740;
  }

  else
  {
    v4 = sub_1A49EA614;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A49EA614()
{
  v1 = *(v0 + 160);
  _Block_release(*(v0 + 176));
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v6 count];

    _os_log_impl(&dword_1A3C1C000, v3, v4, "%ld pending generative memories were deleted", v8, 0xCu);
    MEMORY[0x1A590EEC0](v8, -1, -1);
    v9 = v7;
  }

  else
  {

    v9 = v6;
    v6 = v7;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A49EA740()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  swift_willThrow();
  _Block_release(v2);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    *v7 = 136315138;
    *(v0 + 80) = v6;
    v8 = v6;
    sub_1A3C34400(0, &qword_1EB126160);
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 160);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t GenerativeStoryPendingMemoryHandler.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t GenerativeStoryPendingMemoryHandler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore35GenerativeStoryPendingMemoryHandler_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1A49EAA0C()
{
  v1 = [objc_opt_self() changeRequestForMemory_];
  if (v1)
  {
    v2 = v1;
    [v1 setPendingState_];
  }
}

id sub_1A49EAAA4()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 deleteMemories_];
}

uint64_t type metadata accessor for GenerativeStoryPendingMemoryHandler()
{
  result = qword_1EB160BE0;
  if (!qword_1EB160BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49EAB48()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of GenerativeStoryPendingMemoryHandler.markAsNonPending(memoryLocalIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3CA8098;

  return v8(a1, a2);
}

uint64_t dispatch thunk of GenerativeStoryPendingMemoryHandler.deleteAllPendingGenerativeMemories()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3D60150;

  return v4();
}

void sub_1A49EAE60()
{
  swift_getKeyPath();
  (*(*v0 + 152))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49EAEDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49EAF7C(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2])
  {
    if (a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 160))(v4);
  }

  v1[2] = 0;
}

void (*sub_1A49EB0A4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 152))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore20LemonadeToolbarModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49EB49C();
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A49EB1B0;
}

void sub_1A49EB1B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A49EB244()
{
  v1 = (*(*v0 + 120))();
  if (v1)
  {
    if (v1 >> 62)
    {
      v4 = sub_1A524E2B4();

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v2)
      {
        return 1;
      }
    }
  }

  return 2;
}

uint64_t sub_1A49EB3B0()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore20LemonadeToolbarModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A49EB454()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1A5241604();
  return v0;
}

unint64_t sub_1A49EB49C()
{
  result = qword_1EB147450;
  if (!qword_1EB147450)
  {
    type metadata accessor for LemonadeToolbarModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147450);
  }

  return result;
}

uint64_t sub_1A49EB4FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  sub_1A49EEA74(0, &qword_1EB147458, MEMORY[0x1E697F948]);
  v101 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v84 - v4;
  v100 = type metadata accessor for GenerativeStorySuggestionsView();
  v88 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v89 = v6;
  v91 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EC28C(0);
  v90 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v104 = (&v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A49EC264(0);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EC23C(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49EC13C();
  v102 = v14;
  v96 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1A5242D14();
  v16 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A5249234();
  v87 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = **v1;
  v24 = *(v23 + 184);
  v97 = v23 + 184;
  KeyPath = v24;
  v25 = *(v24(v20) + 16);

  if (v25)
  {
    v85 = v12;
    v86 = v5;
    v26 = v2[10];
    if (*(v2 + 96) != 1)
    {
      v84 = v2[11];

      sub_1A524D254();
      v37 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3F1B4C4(v26, v84, 0);
      (*(v87 + 8))(v22, v19);
    }

    sub_1A4497C3C();
    sub_1A3D61808(v18);
    sub_1A4491F0C(v18);
    v38 = *(v16 + 8);
    v39 = v99;
    v38(v18, v99);
    sub_1A3D61808(v18);
    sub_1A4496374(v18);
    v38(v18, v39);
    v40 = sub_1A5249584();
    v41 = v2[5];
    v42 = v104;
    *v104 = v40;
    v42[1] = v41;
    *(v42 + 16) = 0;
    sub_1A49EE3A4();
    v44 = *(v43 + 44);
    v45 = KeyPath();
    v46 = sub_1A49ECB2C(v2[3], v45);
    if ((v49 >> 1) < v48)
    {
      __break(1u);
      sub_1A524D254();
      v83 = sub_1A524A014();
      sub_1A5246DF4();
    }

    else
    {
      v50 = v48;
      v51 = v49;
      v52 = v2;
      *&v116 = v48;
      *(&v116 + 1) = v49 >> 1;
      v87 = v46;
      v53 = v47;
      KeyPath = swift_getKeyPath();
      v99 = type metadata accessor for GenerativeStorySuggestionsView;
      v54 = v2;
      v55 = v91;
      sub_1A49EF26C(v54, v91, type metadata accessor for GenerativeStorySuggestionsView);
      v56 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v97 = v56 + v89;
      v100 = v52;
      v57 = (v56 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      v89 = v44;
      v59 = v58;
      sub_1A49EF048(v55, v58 + v56, type metadata accessor for GenerativeStorySuggestionsView);
      v60 = (v59 + v57);
      *v60 = v87;
      v60[1] = v53;
      v60[2] = v50;
      v60[3] = v51;
      sub_1A49EECE4(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      sub_1A49EC3D8();
      sub_1A3DE77C8();
      sub_1A49EC5D0();
      v44 = v104;
      v61 = v100;
      sub_1A524B9B4();
      sub_1A49EF26C(v61, v55, v99);
      v62 = swift_allocObject();
      sub_1A49EF048(v55, v62 + v56, type metadata accessor for GenerativeStorySuggestionsView);
      v63 = (v44 + *(v90 + 36));
      *v63 = sub_1A49EE4C0;
      v63[1] = v62;
      v63[2] = 0;
      v63[3] = 0;
      sub_1A524BC84();
    }

    sub_1A5248AD4();
    v64 = v93;
    sub_1A49EF048(v44, v93, sub_1A49EC28C);
    v65 = (v64 + *(v92 + 36));
    v66 = v114;
    v65[4] = v113;
    v65[5] = v66;
    v65[6] = v115;
    v67 = v110;
    *v65 = v109;
    v65[1] = v67;
    v68 = v112;
    v65[2] = v111;
    v65[3] = v68;
    sub_1A524BC84();
    sub_1A5248AD4();
    v69 = v94;
    sub_1A49EF048(v64, v94, sub_1A49EC264);
    v70 = v85;
    v71 = (v69 + *(v85 + 36));
    v72 = v121;
    v71[4] = v120;
    v71[5] = v72;
    v71[6] = v122;
    v73 = v117;
    *v71 = v116;
    v71[1] = v73;
    v74 = v119;
    v71[2] = v118;
    v71[3] = v74;
    v75 = sub_1A524BD54();
    MEMORY[0x1EEE9AC00](v75);
    sub_1A49EC808(0, &qword_1EB1474D8, sub_1A49EC86C);
    v77 = v76;
    v78 = sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    v79 = sub_1A49ECA0C();
    v80 = v95;
    sub_1A524B184();

    sub_1A49EF20C(v69, sub_1A49EC23C);
    v81 = v96;
    v82 = v102;
    (*(v96 + 16))(v86, v80, v102);
    swift_storeEnumTagMultiPayload();
    sub_1A49EECE4(0, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v105 = v70;
    v106 = v77;
    v107 = v78;
    v108 = v79;
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    sub_1A5249744();
    return (*(v81 + 8))(v80, v82);
  }

  else
  {
    v27 = sub_1A524B414();
    sub_1A4497E70();
    sub_1A524BC74();
    sub_1A52481F4();
    v28 = v116;
    v29 = BYTE8(v116);
    v30 = v117;
    v31 = BYTE8(v117);
    *v5 = v27;
    *(v5 + 1) = v28;
    v5[16] = v29;
    *(v5 + 3) = v30;
    v5[32] = v31;
    *(v5 + 40) = v118;
    swift_storeEnumTagMultiPayload();
    sub_1A49EECE4(0, &qword_1EB128608, MEMORY[0x1E69815C0], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A49EC808(255, &qword_1EB1474D8, sub_1A49EC86C);
    v33 = v32;
    v34 = sub_1A49EC8DC(&qword_1EB1474E8, sub_1A49EC23C, sub_1A49EC8A0);
    v35 = sub_1A49ECA0C();
    *&v109 = v12;
    *(&v109 + 1) = v33;
    *&v110 = v34;
    *(&v110 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_1A3F94CD0();
    return sub_1A5249744();
  }
}