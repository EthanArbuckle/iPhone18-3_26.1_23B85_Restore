void sub_1A49162AC(uint64_t *a1, void *a2, uint64_t a3, double a4)
{
  v6 = a1[1];
  v7 = a2;
  v8 = sub_1A524EA34();
  if (v8 < v6)
  {
    if (v6 >= -1)
    {
      v9 = v8;
      v10 = v6 / 2;
      if (v6 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3C52C70(0, &qword_1EB145058);
        v11 = sub_1A524CAC4();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v41[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v41[1] = v10;
      v12 = v7;
      sub_1A4915708(v41, a4, v42, a1, v9, v12, a3);

      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v6 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (v6 > 1)
  {
    v13 = *a1;
    v14 = v7;
    v15 = -1;
    v16 = 1;
    v17 = v13;
    v35 = v6;
    do
    {
      v18 = *(v13 + 8 * v16);
      v36 = v17;
      v37 = v15;
      v19 = v17;
      do
      {
        v20 = *v19;
        v21 = v18;
        v22 = v20;
        [v14 frameForPlaybackRecord:v21 minPlayableSize:a3];
        width = v43.size.width;
        height = v43.size.height;
        y = v43.origin.y;
        x = v43.origin.x;
        v25 = vabdd_f64(a4, CGRectGetMinY(v43));
        [v14 frameForPlaybackRecord:v22 minPlayableSize:a3];
        v26 = v44.origin.x;
        v27 = v44.origin.y;
        v28 = v44.size.width;
        v29 = v44.size.height;
        v30 = vabdd_f64(a4, CGRectGetMinY(v44));
        if (v25 == v30)
        {
          v45.origin.y = y;
          v45.origin.x = x;
          v45.size.width = width;
          v45.size.height = height;
          MinX = CGRectGetMinX(v45);
          v46.origin.x = v26;
          v46.origin.y = v27;
          v46.size.width = v28;
          v46.size.height = v29;
          v32 = CGRectGetMinX(v46);

          if (MinX >= v32)
          {
            break;
          }
        }

        else
        {

          if (v25 >= v30)
          {
            break;
          }
        }

        if (!v13)
        {
          goto LABEL_24;
        }

        v33 = *v19;
        v18 = *(v19 + 8);
        *v19 = v18;
        *(v19 + 8) = v33;
        v19 -= 8;
      }

      while (!__CFADD__(v15++, 1));
      ++v16;
      v17 = v36 + 8;
      v15 = v37 - 1;
    }

    while (v16 != v35);
  }

  else
  {
  }
}

void sub_1A4916558(uint64_t *a1, void *a2, uint64_t a3, double a4)
{
  v7 = *a1;
  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1A3D35B98(v7);
    *a1 = v7;
  }

  v10 = *(v7 + 16);
  v12[0] = v7 + 32;
  v12[1] = v10;
  v11 = v8;
  sub_1A49162AC(v12, v11, a3, a4);

  sub_1A524E524();
}

void sub_1A4916618(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 2) != 0)
    {
      v4 = Strong;
      [Strong invalidatePlaybackEnabled];
      Strong = v4;
    }
  }
}

uint64_t sub_1A4916680()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A49166F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A4916764(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3E4FCF4;
}

uint64_t sub_1A4916808()
{
  swift_beginAccess();
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A49168A0(uint64_t a1)
{
  sub_1A49188D8(0, &qword_1EB145078, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_1A4916A1C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A49188D8(0, &qword_1EB145078, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore30PhotosDetailsTimeEditViewModel__selectedDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41BE354;
}

void sub_1A4916C3C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v38 = a3;
  v32 = sub_1A5241534();
  v28 = *(v32 - 8);
  v7 = v28;
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v25 - v11;
  v37 = sub_1A5241144();
  v29 = *(v37 - 8);
  v12 = v29;
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  a2 &= 1u;
  v18 = sub_1A4954E30(a1, a2);
  v35 = v4;
  *(v4 + 16) = v18;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  v19 = objc_opt_self();
  v33 = a1;
  v20 = v18;
  v31 = v20;
  v21 = [v19 originalCreationDateForItem_];
  v30 = v17;
  sub_1A52410F4();

  v22 = [v19 originalTimeZoneForItem_];
  v23 = v36;
  sub_1A5241524();

  type metadata accessor for PhotosDetailsAssetDate();
  v24 = *(v12 + 16);
  v24(v14, v17, v37);
  v27 = v24;
  v26 = *(v7 + 16);
  v26(v9, v23, v32);
  sub_1A3FD6BC4();
}

BOOL sub_1A491703C()
{
  if (sub_1A49175CC())
  {
    return 1;
  }

  return sub_1A49178D0();
}

uint64_t sub_1A49170BC()
{
  v21 = sub_1A52413B4();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v20 = sub_1A52413D4();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241394();
  v15 = (*(**(v0 + 48) + 112))(v14);
  (*(**(v0 + 40) + 112))(v15);
  v16 = v21;
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A88], v21);
  v17 = sub_1A5241384();
  (*(v1 + 8))(v3, v16);
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  (*(v11 + 8))(v13, v20);
  return v17 & 1;
}

BOOL sub_1A4917390()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5241534();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = (*(**(v0 + 48) + 136))(v10);
  (*(**(v0 + 40) + 136))(v13);
  sub_1A5241134();
  v14 = sub_1A5241504();
  v15 = *(v2 + 8);
  v15(v4, v1);
  sub_1A5241134();
  v16 = sub_1A5241504();
  v15(v4, v1);
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v12, v5);
  return v14 == v16;
}

BOOL sub_1A49175CC()
{
  v22 = sub_1A52413B4();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v21 = sub_1A52413D4();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241394();
  v15 = ((*v0)[15])(v14);
  (*(*v15 + 112))(v15);

  (*(*v0[6] + 112))(v16);
  v17 = v22;
  (*(v1 + 104))(v3, *MEMORY[0x1E6969A98], v22);
  v18 = sub_1A5241384();
  (*(v1 + 8))(v3, v17);
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  (*(v11 + 8))(v13, v21);
  return (v18 & 1) == 0;
}

BOOL sub_1A49178D0()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5241534();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = ((*v0)[15])(v10);
  (*(*v13 + 136))(v13);

  (*(*v0[6] + 136))(v14);
  sub_1A5241134();
  v15 = sub_1A5241504();
  v16 = *(v2 + 8);
  v16(v4, v1);
  sub_1A5241134();
  v17 = sub_1A5241504();
  v16(v4, v1);
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v12, v5);
  return v15 != v17;
}

double sub_1A4917B38()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  v9 = (*(*v0 + 120))(v6);
  v10 = v0[6];
  v11 = (*(*v9 + 112))();
  (*(*v10 + 112))(v11);
  sub_1A5241054();
  v13 = v12;

  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v8, v1);
  return v13;
}

double sub_1A4917CDC()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = *(v0 + 48);
  v10 = (*(**(v0 + 40) + 112))(v6);
  (*(*v9 + 112))(v10);
  sub_1A5241054();
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v4, v1);
  v13(v8, v1);
  return v12;
}

uint64_t sub_1A4917E48()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v79 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5240664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v14 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A52413D4();
  v81 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  if (sub_1A49175CC() || sub_1A49178D0())
  {
    v75 = v6;
    v76 = v5;
    sub_1A49188D8(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v23 = sub_1A52413B4();
    v24 = *(v23 - 8);
    v73 = v16;
    v71 = v2;
    v25 = v22;
    v26 = v24;
    v83 = v13;
    v27 = *(v24 + 72);
    v28 = *(v24 + 80);
    v74 = v10;
    v29 = (v28 + 32) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1A5347440;
    v31 = v30 + v29;
    v32 = *(v26 + 104);
    v32(v31, *MEMORY[0x1E6969A50], v23);
    v32(v31 + v27, *MEMORY[0x1E6969A68], v23);
    v32(v31 + 2 * v27, *MEMORY[0x1E6969A78], v23);
    v32(v31 + 3 * v27, *MEMORY[0x1E6969A48], v23);
    v32(v31 + 4 * v27, *MEMORY[0x1E6969A58], v23);
    v32(v31 + 5 * v27, *MEMORY[0x1E6969A88], v23);
    v32(v31 + 6 * v27, *MEMORY[0x1E6969A98], v23);
    sub_1A441F9F4(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v33 = objc_opt_self();
    v34 = [v33 currentCalendar];
    sub_1A5241344();

    v35 = *(*v1 + 120);
    v36 = v35();
    (*(*v36 + 136))(v36);

    v37 = sub_1A52413A4();
    v38 = (v35)(v37);
    (*(*v38 + 112))(v38);

    v72 = v25;
    v39 = v1;
    sub_1A5241314();
    v40 = *(v79 + 8);
    v41 = v71;
    v40(v4, v71);
    v42 = [v33 currentCalendar];
    v43 = v80;
    sub_1A5241344();

    v79 = v39;
    v44 = *(v39 + 48);
    (*(*v44 + 136))();
    v45 = v43;
    v46 = sub_1A52413A4();
    v47 = *(*v44 + 112);
    v48 = v74;
    v47(v46);
    sub_1A5241314();
    v40(v4, v41);
    v49 = v73;
    v50 = [v33 currentCalendar];
    v51 = v78;
    sub_1A5241344();

    v52 = v82;
    sub_1A52412F4();

    v53 = *(v81 + 8);
    v53(v51, v49);
    v54 = objc_opt_self();
    v55 = sub_1A5240604();
    v56 = [v54 localizedStringFromDateComponents:v55 unitsStyle:3];

    if (v56)
    {
      v57 = sub_1A524C674();
      v59 = v58;

      v84 = 0;
      v85 = 0xE000000000000000;
      sub_1A524E404();

      v84 = 0xD00000000000002BLL;
      v85 = 0x80000001A53F2E60;
      v60 = sub_1A4954E7C(*(v79 + 24), *(v79 + 32));
      MEMORY[0x1A5907B60](v60);

      v61 = sub_1A524C634();

      v62 = PXLocalizedString(v61);

      sub_1A524C674();
      sub_1A49188D8(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1A52F8E10;
      *(v63 + 56) = MEMORY[0x1E69E6158];
      *(v63 + 64) = sub_1A3D710E8();
      *(v63 + 32) = v57;
      *(v63 + 40) = v59;
      v64 = sub_1A524C644();

      v65 = v76;
      v66 = *(v75 + 8);
      v66(v82, v76);
      v66(v48, v65);
      v53(v45, v49);
      v66(v83, v65);
      v53(v72, v49);
      return v64;
    }

    v68 = v76;
    v69 = *(v75 + 8);
    v69(v52, v76);
    v69(v48, v68);
    v53(v45, v49);
    v69(v83, v68);
    v53(v72, v49);
  }

  return 0;
}

uint64_t sub_1A49187AC()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosDetailsTimeEditViewModel__selectedDate;
  sub_1A49188D8(0, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4918898@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDetailsTimeEditViewModel();
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

void sub_1A49188D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for PhotosDetailsTimeEditViewModel()
{
  result = qword_1EB18FBC0;
  if (!qword_1EB18FBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4918990()
{
  sub_1A49188D8(319, &qword_1EB128B40, type metadata accessor for PhotosDetailsAssetDate, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1A4918AC4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v5 = a3;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1A524C634();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

Swift::Void __swiftcall PeopleChangeTypeActionPerformer.performBackgroundTask()()
{
  v1 = [v0 people];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 undoManager];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A49194EC(v2, v3, sub_1A3DE1F24, v4);
  }

  else
  {

    [v0 completeBackgroundTaskWithSuccess:0 error:0];
  }
}

id PeopleChangeTypeActionPerformer.__allocating_init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v7 = sub_1A524C3D4();

  v8 = [v5 initWithActionType:v6 assetCollectionReference:a3 parameters:v7];

  return v8;
}

id PeopleChangeTypeActionPerformer.init(__actionType:assetCollectionReference:parameters:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1A524C634();

  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  v7 = sub_1A524C3D4();

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithActionType_assetCollectionReference_parameters_, v6, a3, v7);

  return v8;
}

id PeopleChangeTypeActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(void *a1)
{
  v1 = [a1 fetchedObjects];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v3 = sub_1A524CA34();

  if (v3 >> 62)
  {
LABEL_19:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 1;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1A59097F0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = [v7 type];

    ++v5;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  v6 = 0;
LABEL_15:

  return v6;
}

uint64_t sub_1A4919104(void *a1)
{
  if ([a1 count] < 1)
  {
    v4 = sub_1A524C634();
    v5 = PXLocalizedString(v4);
  }

  else
  {
    _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(a1);
    v2 = [a1 photoLibrary];
    v3 = [v2 px_peoplePetsHomeVisibility];

    [a1 count];
    v4 = sub_1A524C634();

    v5 = PXLocalizedStringForPersonOrPetAndVisibility(0, v3, v4);
  }

  v6 = v5;

  v7 = sub_1A524C674();
  return v7;
}

id _s12PhotosUICore31PeopleChangeTypeActionPerformerC14localizedTitle3forSSSgSo8PHPersonC_tFZ_0(void *a1)
{
  sub_1A3CA6C04(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9790;
  *(v2 + 32) = a1;
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v3 = a1;
  v4 = sub_1A524CA14();
  result = [v3 photoLibrary];
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();

    v8 = [v7 peopleFetchResultFromFastEnumeration:v4 photoLibrary:v6];

    v9 = sub_1A4919104(v8);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s12PhotosUICore31PeopleChangeTypeActionPerformerC15systemImageName3forSSSgSo8PHPersonC_tFZ_0(void *a1)
{
  sub_1A3CA6C04(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9790;
  *(v2 + 32) = a1;
  sub_1A3C52C70(0, &qword_1EB1265C0);
  v3 = a1;
  v4 = sub_1A524CA14();
  result = [v3 photoLibrary];
  if (result)
  {
    v6 = result;
    v7 = objc_opt_self();

    v8 = [v7 peopleFetchResultFromFastEnumeration:v4 photoLibrary:v6];

    v9 = _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(v8);
    if (v9 == 1)
    {
      return 0x7472616568;
    }

    else
    {
      return 0x6C732E7472616568;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A49194EC(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = _s12PhotosUICore31PeopleChangeTypeActionPerformerC06changeE03forSo08PHPersonE0VSo13PHFetchResultCySo0J0CG_tFZ_0(a1);
  v9 = [a1 photoLibrary];
  v24 = [v9 librarySpecificFetchOptions];

  [v24 setPersonContext_];
  v10 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v10)
  {
    sub_1A3C52C70(0, &qword_1EB126610);
    sub_1A524CA34();
    v10 = sub_1A524CA14();
  }

  [v24 setIncludedDetectionTypes_];

  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3E072BC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1A52F8E10;
  v13 = MEMORY[0x1E69E65A8];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = v8;
  v14 = sub_1A524D134();
  [v24 setPredicate_];

  v15 = [objc_opt_self() reverseSortDescriptorsForManualSort];
  if (!v15)
  {
    sub_1A3C52C70(0, &qword_1EB126B60);
    sub_1A524CA34();
    v15 = sub_1A524CA14();
  }

  [v24 setSortDescriptors_];

  [v24 setFetchLimit_];
  v16 = [objc_opt_self() fetchPersonsWithOptions_];
  v17 = [v16 firstObject];

  if (v17)
  {
    v18 = [v17 manualOrder];
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(PXChangePeopleTypeAction) initWithPeople:a1 type:v8];
  if (v19)
  {
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = v19;
      [v19 setFirstManualOrder_];
      v21 = swift_allocObject();
      v21[2] = a1;
      v21[3] = v8;
      v21[4] = v18;
      v21[5] = a3;
      v21[6] = a4;
      aBlock[4] = sub_1A4919908;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D6084C;
      aBlock[3] = &block_descriptor_303;
      v22 = _Block_copy(aBlock);
      v23 = a1;
      sub_1A3D607F0(a3);

      [v20 executeWithUndoManager:a2 completionHandler:v22];

      _Block_release(v22);
    }
  }

  else
  {
    if (a3)
    {
      a3(0, 0);
    }
  }
}

void sub_1A4919908(char a1, void *a2)
{
  v5 = v2[5];
  if ((a1 & 1) == 0)
  {
    v7 = v2[2];
    v6 = v2[3];
    v8 = v2[4];
    v9 = sub_1A524D244();
    v10 = PLPeopleGetLog();
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    if (os_log_type_enabled(v10, v9))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v6;
      v15 = v13;
      *v12 = 138413058;
      *(v12 + 4) = v7;
      *v13 = v7;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v14;
      *(v12 + 22) = 2048;
      *(v12 + 24) = v8;
      *(v12 + 32) = 2112;
      v16 = v7;
      if (a2)
      {
        v17 = a2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v18 = 0;
      }

      *(v12 + 34) = v18;
      v15[1] = v18;
      _os_log_impl(&dword_1A3C1C000, v11, v9, "Error changing type for people: %@ to type: %ld with order: %ld error: %@", v12, 0x2Au);
      sub_1A3D3F118();
      swift_arrayDestroy();
      MEMORY[0x1A590EEC0](v15, -1, -1);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }
  }

  if (v5)
  {
    v5(a1 & 1, a2);
  }
}

uint64_t sub_1A4919A80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A524EC94();
  if (v2)
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A4919B0C()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1A590A010](1);
    return MEMORY[0x1A590A010](v1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    return sub_1A524C4B4();
  }
}

uint64_t sub_1A4919B8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A524EC94();
  if (v2)
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A4919C18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeShelfItem(0);
  sub_1A491FCB0(v1 + *(v6 + 20), v5, type metadata accessor for LemonadeShelfItem.BackingItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = 1;
  }

  else
  {
    sub_1A491FD18(v5, a1, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v7 = 0;
  }

  v8 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

unint64_t sub_1A4919D3C()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LemonadeShelfItem(0);
  sub_1A491FCB0(v0 + *(v7 + 20), v6, type metadata accessor for LemonadeShelfItem.BackingItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v6;
    v13 = 0x2D656B6146;
    v14 = 0xE500000000000000;
    v12[1] = v8;
    v9 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v9);

    return v13;
  }

  else
  {
    sub_1A491FD18(v6, v3, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    sub_1A3C5322C();
    v11 = LemonadeShelfIdentifier.description.getter();
    sub_1A4920D00(v3, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    return v11;
  }
}

void *sub_1A4919EE8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v53 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for LemonadeShelfItem(0);
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v19 = *(v14 + 72);
  v20 = MEMORY[0x1E69E7CC0];
  v49 = v10;
  v50 = v7;
  v47 = v19;
  v48 = v4;
  v21 = v54;
  do
  {
    sub_1A491FCB0(v18, v16, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    if (sub_1A4870D30())
    {
      v55 = v20;
      v22 = sub_1A3C5322C();
      v23 = v57[0];
      v24 = *(*v21 + 256);
      v24(v57, v22);
      v26 = v58;
      v25 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v56 = v23;
      v27 = (*(v25 + 144))(&v56, v26, v25);
      v28 = __swift_destroy_boxed_opaque_existential_0(v57);
      v24(v57, v28);
      v30 = v58;
      v29 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v56 = v23;
      v31 = v48;
      v32 = *(v29 + 128);
      v33 = v29;
      v34 = v50;
      v35 = v32(&v56, v30, v33);
      __swift_destroy_boxed_opaque_existential_0(v57);
      sub_1A491FCB0(v16, v34, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      swift_storeEnumTagMultiPayload();
      if (v35)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      if (v27)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }

      sub_1A491FCB0(v34, v31, type metadata accessor for LemonadeShelfItem.BackingItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v39 = *v31;
      }

      else
      {
        v40 = v46;
        sub_1A491FD18(v31, v46, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        sub_1A3C5322C();
        sub_1A4920D00(v40, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v39 = LOBYTE(v57[0]);
      }

      v41 = v49;
      *v49 = v39;
      *(v41 + 8) = EnumCaseMultiPayload == 1;
      v42 = v52;
      sub_1A491FD18(v34, v41 + *(v52 + 20), type metadata accessor for LemonadeShelfItem.BackingItem);
      *(v41 + *(v42 + 28)) = v37;
      *(v41 + *(v42 + 24)) = 0;
      v20 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1A491EE70(0, v20[2] + 1, 1, v20, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
      }

      v44 = v20[2];
      v43 = v20[3];
      if (v44 >= v43 >> 1)
      {
        v20 = sub_1A491EE70(v43 > 1, v44 + 1, 1, v20, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
      }

      sub_1A4920D00(v16, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v20[2] = v44 + 1;
      sub_1A491FD18(v41, v20 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v44, type metadata accessor for LemonadeShelfItem);
      v19 = v47;
    }

    else
    {
      sub_1A4920D00(v16, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    }

    v18 += v19;
    --v17;
  }

  while (v17);
  return v20;
}

uint64_t sub_1A491A474()
{
  sub_1A524EC94();
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A491A500()
{
  sub_1A524EC94();
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v1);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A524ECE4();
}

unint64_t sub_1A491A590()
{
  sub_1A524E404();

  v0 = sub_1A524C714();
  MEMORY[0x1A5907B60](v0);

  MEMORY[0x1A5907B60](0x3A736D65746920, 0xE700000000000000);
  v1 = sub_1A491A69C();
  v2 = type metadata accessor for LemonadeShelfItem(0);
  v3 = MEMORY[0x1A5907DB0](v1, v2);
  v5 = v4;

  MEMORY[0x1A5907B60](v3, v5);

  MEMORY[0x1A5907B60](32032, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1A491A69C()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v29 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v12 = *(v29 + 20);
  sub_1A491FF2C(v0 + v12, v11, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v13 = type metadata accessor for LemonadeShelfItem(0);
  v27 = *(v13 - 8);
  v14 = *(v27 + 48);
  v15 = v14(v11, 1, v13);
  sub_1A4920D60(v11, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v1);
  if (v15 == 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1A491FF2C(v0 + v12, v8, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    result = v14(v8, 1, v13);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_16;
    }

    v16 = sub_1A491EE70(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1A491EE70(v18 > 1, v19 + 1, 1, v16, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    }

    v16[2] = v19 + 1;
    sub_1A491FD18(v8, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v19, type metadata accessor for LemonadeShelfItem);
  }

  v20 = v28;
  v21 = *(v29 + 24);
  sub_1A491FF2C(v0 + v21, v28, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v22 = v14(v20, 1, v13);
  sub_1A4920D60(v20, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  if (v22 == 1)
  {
    return v16;
  }

  v23 = v26;
  sub_1A491FF2C(v0 + v21, v26, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  result = v14(v23, 1, v13);
  if (result != 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1A491EE70(0, v16[2] + 1, 1, v16, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    }

    v25 = v16[2];
    v24 = v16[3];
    if (v25 >= v24 >> 1)
    {
      v16 = sub_1A491EE70(v24 > 1, v25 + 1, 1, v16, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
    }

    v16[2] = v25 + 1;
    sub_1A491FD18(v23, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, type metadata accessor for LemonadeShelfItem);
    return v16;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A491AB70(uint64_t a1, uint64_t a2)
{
  v86 = a2;
  v3 = type metadata accessor for LemonadeShelfItem(0);
  v87 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v85 - v6;
  v8 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v85 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v85 - v14;
  v16 = MEMORY[0x1E69E6720];
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v103 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v110 = (&v85 - v20);
  sub_1A491F4D8(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, v16);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v105 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v85 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v85 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v85 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v96 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v102 = &v85 - v32;
  v113 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v33 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v91 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v95 = &v85 - v36;
  v112 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v37 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v39 = &v85 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1A491F53C(a1, 0);
  v40 = *(a1 + 16);
  if (v40)
  {
    v93 = v15;
    v92 = v12;
    v41 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v111 = *(v37 + 72);
    v42 = (v87 + 48);
    v108 = (v33 + 7);
    v101 = v33 + 6;
    v94 = MEMORY[0x1E69E7CC0];
    v99 = MEMORY[0x1E69E7CC0];
    v90 = v3;
    v107 = v7;
    v43 = v103;
    v109 = v33;
    v100 = (v87 + 48);
    while (1)
    {
      sub_1A491FCB0(v41, v39, type metadata accessor for LemonadeTwoShelfItemsRow);
      v44 = *(v112 + 20);
      if (*v39)
      {
        sub_1A491FF2C(&v39[v44], v43, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
        if ((*v42)(v43, 1, v3) == 1)
        {
          sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
          sub_1A4920D60(v43, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
        }

        else
        {
          sub_1A491FD18(v43, v7, type metadata accessor for LemonadeShelfItem);
          v45 = v92;
          sub_1A491FCB0(&v7[*(v3 + 20)], v92, type metadata accessor for LemonadeShelfItem.BackingItem);
          v46 = v7;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v47 = 1;
            v48 = v98;
          }

          else
          {
            v48 = v98;
            sub_1A491FD18(v45, v98, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            v47 = 0;
          }

          v55 = v113;
          (*v108)(v48, v47, 1, v113);
          v56 = v48;
          v57 = v97;
          sub_1A491FFAC(v56, v97, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          if ((*v101)(v57, 1, v55) == 1)
          {
            sub_1A4920D00(v46, type metadata accessor for LemonadeShelfItem);
            sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
            v58 = v57;
            v7 = v46;
            sub_1A4920D60(v58, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
            v43 = v103;
            v33 = v109;
          }

          else
          {
            v59 = v91;
            sub_1A491FD18(v57, v91, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            v33 = v109;
            if ((*(v46 + 8) & 1) == 0)
            {
              sub_1A3C5322C();
              v88 = v116;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = sub_1A3D3DA38(0, *(v94 + 2) + 1, 1, v94);
              }

              v67 = *(v94 + 2);
              v66 = *(v94 + 3);
              if (v67 >= v66 >> 1)
              {
                v94 = sub_1A3D3DA38((v66 > 1), v67 + 1, 1, v94);
              }

              sub_1A4920D00(v91, type metadata accessor for LemonadeFeatureLibrary.Shelf);
              v7 = v107;
              sub_1A4920D00(v107, type metadata accessor for LemonadeShelfItem);
              sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
              v68 = v94;
              *(v94 + 2) = v67 + 1;
              v68[v67 + 32] = v88;
              v3 = v90;
LABEL_32:
              v43 = v103;
              v33 = v109;
              goto LABEL_4;
            }

            v7 = v46;
            sub_1A4920D00(v59, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            sub_1A4920D00(v46, type metadata accessor for LemonadeShelfItem);
            sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
            v43 = v103;
          }
        }
      }

      else
      {
        v49 = v110;
        sub_1A491FF2C(&v39[v44], v110, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
        if ((*v42)(v49, 1, v3) == 1)
        {
          v50 = v3;
          sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
          sub_1A4920D60(v49, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
          v51 = v102;
          (*v108)(v102, 1, 1, v113);
          v33 = v109;
        }

        else
        {
          v50 = v3;
          v52 = v93;
          sub_1A491FCB0(v49 + *(v3 + 20), v93, type metadata accessor for LemonadeShelfItem.BackingItem);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v53 = 1;
            v54 = v96;
          }

          else
          {
            v60 = v52;
            v54 = v96;
            sub_1A491FD18(v60, v96, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            v53 = 0;
          }

          v61 = v113;
          (*v108)(v54, v53, 1, v113);
          v51 = v102;
          sub_1A491FFAC(v54, v102, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          sub_1A4920D00(v110, type metadata accessor for LemonadeShelfItem);
          if ((*v101)(v51, 1, v61) != 1)
          {
            sub_1A491FD18(v51, v95, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            sub_1A3C5322C();
            v62 = v115;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_1A3D3DA38(0, *(v99 + 2) + 1, 1, v99);
            }

            v42 = v100;
            v64 = *(v99 + 2);
            v63 = *(v99 + 3);
            if (v64 >= v63 >> 1)
            {
              v99 = sub_1A3D3DA38((v63 > 1), v64 + 1, 1, v99);
            }

            sub_1A4920D00(v95, type metadata accessor for LemonadeFeatureLibrary.Shelf);
            sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
            v65 = v99;
            *(v99 + 2) = v64 + 1;
            v65[v64 + 32] = v62;
            v3 = v90;
            v7 = v107;
            goto LABEL_32;
          }

          sub_1A4920D00(v39, type metadata accessor for LemonadeTwoShelfItemsRow);
          v43 = v103;
          v33 = v109;
        }

        sub_1A4920D60(v51, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
        v7 = v107;
        v3 = v50;
        v42 = v100;
      }

LABEL_4:
      v41 += v111;
      if (!--v40)
      {
        goto LABEL_34;
      }
    }
  }

  v94 = MEMORY[0x1E69E7CC0];
  v99 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v69 = v89[2];
  if (v69)
  {
    v112 = *(v3 + 20);
    v70 = v89 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v71 = *(v87 + 72);
    v110 = (v33 + 7);
    v111 = v71;
    v109 = v33 + 6;
    v72 = MEMORY[0x1E69E7CC0];
    v74 = v105;
    v73 = v106;
    v75 = v104;
    do
    {
      v76 = v114;
      sub_1A491FCB0(v70, v114, type metadata accessor for LemonadeShelfItem);
      sub_1A491FCB0(v76 + v112, v73, type metadata accessor for LemonadeShelfItem.BackingItem);
      v77 = v8;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v78 = 1;
      }

      else
      {
        sub_1A491FD18(v73, v74, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v78 = 0;
      }

      v79 = v113;
      (*v110)(v74, v78, 1, v113);
      sub_1A491FFAC(v74, v75, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      if ((*v109)(v75, 1, v79) == 1)
      {
        sub_1A4920D00(v114, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D60(v75, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
        v8 = v77;
      }

      else
      {
        v80 = v77;
        sub_1A3C5322C();
        sub_1A4920D00(v114, type metadata accessor for LemonadeShelfItem);
        v81 = v117;
        sub_1A4920D00(v75, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1A3D3DA38(0, *(v72 + 2) + 1, 1, v72);
        }

        v83 = *(v72 + 2);
        v82 = *(v72 + 3);
        if (v83 >= v82 >> 1)
        {
          v72 = sub_1A3D3DA38((v82 > 1), v83 + 1, 1, v72);
        }

        *(v72 + 2) = v83 + 1;
        v72[v83 + 32] = v81;
        v8 = v80;
        v74 = v105;
        v73 = v106;
        v75 = v104;
      }

      v70 += v111;
      --v69;
    }

    while (v69);
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
  }

  (*(*v86 + 496))(v72, v94, v99);
}

uint64_t sub_1A491BAF8(void *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v282 = a7;
  LODWORD(v321) = a6;
  v309 = a5;
  v312 = a2;
  sub_1A491F4D8(0, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v283 = &v275 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v286 = (&v275 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v288 = &v275 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v289 = (&v275 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v291 = &v275 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v276 = &v275 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v299 = &v275 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v294 = &v275 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v275 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v278 = &v275 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v315 = &v275 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v277 = &v275 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v314 = &v275 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v323 = &v275 - v38;
  sub_1A491F4D8(0, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, v11);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v302 = &v275 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v275 = &v275 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v317 = &v275 - v44;
  v45 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v327 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v292 = &v275 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v284 = &v275 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v285 = &v275 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v298 = &v275 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v307 = &v275 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v296 = &v275 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v313 = &v275 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v295 = &v275 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v293 = &v275 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v301 = &v275 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v275 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v300 = &v275 - v69;
  v318 = type metadata accessor for LemonadeShelfItem.BackingItem(0);
  MEMORY[0x1EEE9AC00](v318);
  v279 = (&v275 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v71);
  v287 = (&v275 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v281 = (&v275 - v74);
  MEMORY[0x1EEE9AC00](v75);
  v290 = (&v275 - v76);
  MEMORY[0x1EEE9AC00](v77);
  v306 = (&v275 - v78);
  sub_1A491F4D8(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, v11);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v81 = &v275 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v275 - v83;
  v328 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v85 = *(v328 - 1);
  MEMORY[0x1EEE9AC00](v328);
  v280 = &v275 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v325 = &v275 - v88;
  v89 = type metadata accessor for LemonadeShelfItem(0);
  v90 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v319 = &v275 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v305 = (&v275 - v93);
  MEMORY[0x1EEE9AC00](v94);
  v304 = (&v275 - v95);
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v275 - v97;
  v331 = MEMORY[0x1E69E7CC0];
  v324 = v45;
  v326 = v99;
  v308 = v90;
  v310 = a3;
  v297 = v28;
  if (!a3)
  {
    v331 = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v100 = a1[2];
  if (v100)
  {
    v101 = v90;
    v303 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v102 = a1 + v303;
    v322 = *(v101 + 72);
    v320 = (v85 + 56);
    v103 = (v85 + 48);

    v316 = MEMORY[0x1E69E7CC0];
    v311 = MEMORY[0x1E69E7CC0];
    v104 = v306;
    do
    {
      sub_1A491FCB0(v102, v98, type metadata accessor for LemonadeShelfItem);
      sub_1A491FCB0(&v98[*(v326 + 20)], v104, type metadata accessor for LemonadeShelfItem.BackingItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v106 = 1;
      }

      else
      {
        sub_1A491FD18(v104, v81, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v106 = 0;
      }

      v107 = v328;
      (*v320)(v81, v106, 1, v328);
      sub_1A491FFAC(v81, v84, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      if ((*v103)(v84, 1, v107) == 1)
      {
        sub_1A4920D00(v98, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D60(v84, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
        v105 = v322;
      }

      else
      {
        sub_1A491FD18(v84, v325, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        sub_1A3C5322C();
        if ((*(*v310 + 432))(&v330))
        {
          sub_1A491FCB0(v98, v304, type metadata accessor for LemonadeShelfItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v311 = sub_1A491EE70(0, v311[2] + 1, 1, v311, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          v109 = v311[2];
          v108 = v311[3];
          if (v109 >= v108 >> 1)
          {
            v311 = sub_1A491EE70(v108 > 1, v109 + 1, 1, v311, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          sub_1A4920D00(v325, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          sub_1A4920D00(v98, type metadata accessor for LemonadeShelfItem);
          v110 = v311;
          v311[2] = v109 + 1;
          v111 = v110 + v303 + v109 * v322;
          v105 = v322;
          sub_1A491FD18(v304, v111, type metadata accessor for LemonadeShelfItem);
          v331 = v110;
        }

        else
        {
          sub_1A491FCB0(v98, v305, type metadata accessor for LemonadeShelfItem);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v316 = sub_1A491EE70(0, v316[2] + 1, 1, v316, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          v113 = v316[2];
          v112 = v316[3];
          if (v113 >= v112 >> 1)
          {
            v316 = sub_1A491EE70(v112 > 1, v113 + 1, 1, v316, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          }

          sub_1A4920D00(v325, type metadata accessor for LemonadeFeatureLibrary.Shelf);
          sub_1A4920D00(v98, type metadata accessor for LemonadeShelfItem);
          v114 = v316;
          v316[2] = v113 + 1;
          v115 = v114 + v303 + v113 * v322;
          v105 = v322;
          sub_1A491FD18(v305, v115, type metadata accessor for LemonadeShelfItem);
        }

        v104 = v306;
      }

      v102 += v105;
      --v100;
    }

    while (v100);
  }

  else
  {

    v316 = MEMORY[0x1E69E7CC0];
  }

  sub_1A491E90C(v316, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);

  v117 = v331;
  v118 = v324;
  v119 = v308;
  v330 = MEMORY[0x1E69E7CC0];
  v120 = v331[2];
  v311 = v331;
  v121 = v313;
  v122 = v319;
  v322 = v120;
  if (!v120)
  {
    v306 = MEMORY[0x1E69E7CC0];
    v328 = MEMORY[0x1E69E7CC0];
LABEL_105:
    if (v282)
    {

      if (v312)
      {
        if (v312 == 1)
        {

          v201 = v328[2];
          v202 = v292;
          if (v201)
          {
            v203 = 0;
            v204 = (v119 + 48);
            v325 = v119 + 56;
            v205 = 10000;
            v206 = &qword_1EB125A98;
            v323 = v201;
            while (v203 < v328[2])
            {
              v207 = (*(v327 + 80) + 32) & ~*(v327 + 80);
              v208 = *(v327 + 72) * v203;
              sub_1A491FCB0(v328 + v207 + v208, v202, type metadata accessor for LemonadeTwoShelfItemsRow);
              if (*v202 == 1)
              {
                v209 = &v202[*(v324 + 20)];
                v210 = v291;
                sub_1A491FF2C(v209, v291, v206, type metadata accessor for LemonadeShelfItem);
                v211 = *v204;
                v212 = (*v204)(v210, 1, v326);
                v213 = v206;
                v214 = v212;
                v215 = v213;
                sub_1A4920D60(v210, v213, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                if (v214 == 1)
                {
                  v216 = v290;
                  *v290 = v205;
                  swift_storeEnumTagMultiPayload();
                  v217 = v281;
                  sub_1A491FCB0(v216, v281, type metadata accessor for LemonadeShelfItem.BackingItem);
                  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                  if (EnumCaseMultiPayload == 1)
                  {
                    v219 = *v217;
                  }

                  else
                  {
                    v220 = v280;
                    sub_1A491FD18(v217, v280, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                    sub_1A3C5322C();
                    sub_1A4920D00(v220, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                    v219 = v329;
                  }

                  v202 = v292;
                  v221 = EnumCaseMultiPayload == 1;
                  v222 = v289;
                  *v289 = v219;
                  *(v222 + 8) = v221;
                  v223 = v326;
                  sub_1A491FD18(v290, v222 + *(v326 + 20), type metadata accessor for LemonadeShelfItem.BackingItem);
                  *(v222 + *(v223 + 28)) = 1;
                  *(v222 + *(v223 + 24)) = 0;
                  (*v325)(v222, 0, 1, v223);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_1A459BDE8(v328);
                    v328 = result;
                  }

                  v206 = v215;
                  if (v203 >= v328[2])
                  {
                    goto LABEL_186;
                  }

                  v224 = v328;
                  result = sub_1A491F444(v289, v328 + v207 + *(v324 + 20) + v208);
                  v330 = v224;
                  v225 = __OFADD__(v205++, 1);
                  if (v225)
                  {
                    goto LABEL_188;
                  }
                }

                else
                {
                  v202 = v292;
                  v206 = v215;
                }

                v226 = v288;
                sub_1A491FF2C(&v202[*(v324 + 24)], v288, v206, type metadata accessor for LemonadeShelfItem);
                if (v211(v226, 1, v326) == 1)
                {
                  sub_1A4920D60(v226, v206, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                  v227 = v287;
                  *v287 = v205;
                  swift_storeEnumTagMultiPayload();
                  v228 = v227;
                  v229 = v279;
                  sub_1A491FCB0(v228, v279, type metadata accessor for LemonadeShelfItem.BackingItem);
                  v230 = swift_getEnumCaseMultiPayload();
                  if (v230 == 1)
                  {
                    v231 = *v229;
                  }

                  else
                  {
                    v232 = v229;
                    v233 = v280;
                    sub_1A491FD18(v232, v280, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                    sub_1A3C5322C();
                    sub_1A4920D00(v233, type metadata accessor for LemonadeFeatureLibrary.Shelf);
                    v231 = v329;
                  }

                  v234 = v286;
                  *v286 = v231;
                  *(v234 + 8) = v230 == 1;
                  v235 = v326;
                  sub_1A491FD18(v287, v234 + *(v326 + 20), type metadata accessor for LemonadeShelfItem.BackingItem);
                  *(v234 + *(v235 + 28)) = 2;
                  *(v234 + *(v235 + 24)) = 0;
                  (*v325)(v234, 0, 1, v235);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v328 = sub_1A459BDE8(v328);
                  }

                  v206 = v215;
                  result = sub_1A4920D00(v202, type metadata accessor for LemonadeTwoShelfItemsRow);
                  if (v203 >= v328[2])
                  {
                    goto LABEL_187;
                  }

                  v236 = v328;
                  result = sub_1A491F444(v286, v328 + v207 + *(v324 + 24) + v208);
                  v330 = v236;
                  v225 = __OFADD__(v205++, 1);
                  if (v225)
                  {
                    goto LABEL_189;
                  }

                  v201 = v323;
                }

                else
                {
                  sub_1A4920D00(v202, type metadata accessor for LemonadeTwoShelfItemsRow);
                  result = sub_1A4920D60(v226, v206, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                  v201 = v323;
                }
              }

              else
              {
                result = sub_1A4920D00(v202, type metadata accessor for LemonadeTwoShelfItemsRow);
              }

              if (v201 == ++v203)
              {
                return v330;
              }
            }

            goto LABEL_184;
          }
        }

        else
        {
        }
      }

      else
      {
        sub_1A491E90C(v306, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
      }

      return v330;
    }

    v237 = v328[2];
    if (v237)
    {
      v238 = 0;
      v239 = v119;
      v322 = (*(v327 + 80) + 32) & ~*(v327 + 80);
      v240 = v328 + v322;
      v241 = (v239 + 48);
      v242 = v307;
      v323 = v237;
      do
      {
        if (v238 >= v328[2])
        {
          goto LABEL_183;
        }

        v243 = *(v327 + 72);
        sub_1A491FCB0(&v240[v243 * v238], v242, type metadata accessor for LemonadeTwoShelfItemsRow);
        if (*v242 == 1)
        {
          v325 = v243;
          v244 = v324;
          v245 = v297;
          sub_1A491FF2C(&v242[*(v324 + 24)], v297, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
          v246 = *v241;
          v247 = v326;
          if ((*v241)(v245, 1, v326) == 1)
          {
            sub_1A4920D00(v242, type metadata accessor for LemonadeTwoShelfItemsRow);
            result = sub_1A4920D60(v245, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
            v253 = v299;
            v254 = v298;
LABEL_148:
            v255 = v238 + 1;
            v256 = v328[2];
            if (v256 - 1 == v238)
            {
              goto LABEL_170;
            }

            v258 = v324;
            v257 = v325;
            v259 = v322 + v325 * v255;
            v321 = v246;
            while (2)
            {
              if (v255 >= v256)
              {
                goto LABEL_185;
              }

              sub_1A491FCB0(v328 + v259, v254, type metadata accessor for LemonadeTwoShelfItemsRow);
              if (*v254 == 1)
              {
                sub_1A491FF2C(&v254[*(v258 + 24)], v253, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
                v260 = v258;
                v261 = v254;
                v262 = v326;
                if (v246(v253, 1, v326) == 1)
                {
                  sub_1A4920D00(v261, type metadata accessor for LemonadeTwoShelfItemsRow);
                  result = sub_1A4920D60(v253, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                  v254 = v261;
                  v258 = v260;
                  goto LABEL_152;
                }

                v267 = v260;
                v268 = MEMORY[0x1E69E6720];
                sub_1A4920D60(v253, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
                v269 = v276;
                sub_1A491FF2C(v261 + *(v267 + 20), v276, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
                sub_1A4920D00(v261, type metadata accessor for LemonadeTwoShelfItemsRow);
                v270 = v321(v269, 1, v262);
                v271 = v269;
                v253 = v299;
                v257 = v325;
                result = sub_1A4920D60(v271, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v268);
                v252 = v270 == 1;
                v254 = v261;
                v258 = v267;
                v246 = v321;
                if (!v252)
                {
LABEL_158:
                  if (v255 != v238)
                  {
                    if (v238 < 0)
                    {
                      goto LABEL_190;
                    }

                    v263 = v328[2];
                    if (v238 >= v263)
                    {
                      goto LABEL_191;
                    }

                    v264 = v238 * v257;
                    result = sub_1A491FCB0(v328 + v322 + v264, v285, type metadata accessor for LemonadeTwoShelfItemsRow);
                    if (v255 >= v263)
                    {
                      goto LABEL_192;
                    }

                    v265 = v241;
                    sub_1A491FCB0(v328 + v259, v284, type metadata accessor for LemonadeTwoShelfItemsRow);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v328 = sub_1A459BDE8(v328);
                    }

                    v266 = v328;
                    result = sub_1A491FEC8(v284, v328 + v322 + v264);
                    if (v255 >= v266[2])
                    {
                      goto LABEL_193;
                    }

                    result = sub_1A491FEC8(v285, v328 + v259);
                    v241 = v265;
                    v257 = v325;
                  }

                  ++v238;
                }

LABEL_152:
                ++v255;
                v256 = v328[2];
                v259 += v257;
                if (v255 == v256)
                {
                  if (v255 < v238)
                  {
                    goto LABEL_196;
                  }

                  if (v238 < 0)
                  {
                    goto LABEL_197;
                  }

                  goto LABEL_170;
                }

                continue;
              }

              break;
            }

            result = sub_1A4920D00(v254, type metadata accessor for LemonadeTwoShelfItemsRow);
            goto LABEL_158;
          }

          v248 = MEMORY[0x1E69E6720];
          sub_1A4920D60(v245, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
          v249 = v294;
          sub_1A491FF2C(&v307[*(v244 + 20)], v294, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
          sub_1A4920D00(v307, type metadata accessor for LemonadeTwoShelfItemsRow);
          v250 = v246(v249, 1, v247);
          v251 = v248;
          v237 = v323;
          v242 = v307;
          result = sub_1A4920D60(v249, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v251);
          v252 = v250 == 1;
          v253 = v299;
          v254 = v298;
          if (v252)
          {
            goto LABEL_148;
          }
        }

        else
        {
          result = sub_1A4920D00(v242, type metadata accessor for LemonadeTwoShelfItemsRow);
        }

        ++v238;
      }

      while (v237 != v238);
      v255 = v328[2];
      v238 = v255;
    }

    else
    {
      v255 = 0;
      v238 = 0;
    }

LABEL_170:
    if (__OFADD__(v255, v238 - v255))
    {
      goto LABEL_198;
    }

    v272 = v328;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v330 = v272;
    if (!isUniquelyReferenced_nonNull_native || v238 > v328[3] >> 1)
    {
      if (v255 <= v238)
      {
        v274 = v238;
      }

      else
      {
        v274 = v255;
      }

      v328 = sub_1A491EE70(isUniquelyReferenced_nonNull_native, v274, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
      v330 = v328;
    }

    sub_1A491FD80(v238, v255, 0);

    return v328;
  }

  v325 = 0;
  v320 = (v331 + ((*(v308 + 80) + 32) & ~*(v308 + 80)));
  v316 = (v308 + 56);
  v123 = (v308 + 48);
  v305 = (v327 + 56);
  v304 = (v327 + 48);
  v306 = MEMORY[0x1E69E7CC0];
  v328 = MEMORY[0x1E69E7CC0];
  v124 = v326;
  while (v325 < v117[2])
  {
    result = sub_1A491FCB0(v320 + *(v119 + 72) * v325, v122, type metadata accessor for LemonadeShelfItem);
    if (*(v122 + 8) == 1)
    {
      result = sub_1A4920D00(v122, type metadata accessor for LemonadeShelfItem);
      goto LABEL_27;
    }

    if (v312 != 2)
    {
      if (!v312 && *(v122 + *(v124 + 24)) == 1)
      {
        v125 = *(v118 + 20);
        v126 = v300;
        sub_1A491FCB0(v122, &v300[v125], type metadata accessor for LemonadeShelfItem);
        v127 = *v316;
        (*v316)(&v126[v125], 0, 1, v124);
        v127(&v126[*(v118 + 24)], 1, 1, v124);
        *v126 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v128 = v306;
        }

        else
        {
          v128 = sub_1A491EE70(0, v306[2] + 1, 1, v306, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
        }

        v306 = v128;
        v130 = v128[2];
        v129 = v128[3];
        if (v130 >= v129 >> 1)
        {
          v306 = sub_1A491EE70(v129 > 1, v130 + 1, 1, v306, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
        }

        v131 = v319;
        sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
        v132 = v306;
        v306[2] = v130 + 1;
        v133 = v132 + ((*(v327 + 80) + 32) & ~*(v327 + 80)) + *(v327 + 72) * v130;
        v122 = v131;
        result = sub_1A491FD18(v300, v133, type metadata accessor for LemonadeTwoShelfItemsRow);
        goto LABEL_87;
      }

      if (*(v122 + *(v124 + 28)) == 1)
      {
        v158 = v328[2];
        v159 = v293;
        if (!v158)
        {
LABEL_76:
          v118 = v324;
          v175 = *(v324 + 20);
          v176 = v295;
          sub_1A491FCB0(v319, &v295[v175], type metadata accessor for LemonadeShelfItem);
          v177 = *v316;
          v124 = v326;
          (*v316)(&v176[v175], 0, 1, v326);
          v177(&v176[*(v118 + 24)], 1, 1, v124);
          *v176 = 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v328 = sub_1A491EE70(0, v328[2] + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          v119 = v308;
          v179 = v328[2];
          v178 = v328[3];
          if (v179 >= v178 >> 1)
          {
            v328 = sub_1A491EE70(v178 > 1, v179 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          v180 = v319;
          sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
          v181 = v327;
          v155 = v328;
          v328[2] = v179 + 1;
          v156 = v155 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v179;
          v122 = v180;
          v157 = &v327;
          goto LABEL_86;
        }

        v160 = 0;
        v310 = (*(v327 + 80) + 32) & ~*(v327 + 80);
        v161 = v328 + v310;
        while (v160 < v328[2])
        {
          v162 = *(v327 + 72) * v160;
          sub_1A491FCB0(&v161[v162], v159, type metadata accessor for LemonadeTwoShelfItemsRow);
          if (*v159 == 1)
          {
            v163 = &v159[*(v324 + 20)];
            v164 = v123;
            v165 = v159;
            v166 = v314;
            sub_1A491FF2C(v163, v314, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
            v167 = v164;
            if ((*v164)(v166, 1, v326) == 1)
            {
              sub_1A4920D60(v166, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
              v193 = v277;
              sub_1A491FCB0(v319, v277, type metadata accessor for LemonadeShelfItem);
              v194 = v326;
              (*v316)(v193, 0, 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v328 = sub_1A459BDE8(v328);
              }

              v195 = v324;
              v121 = v313;
              v119 = v308;
              v123 = v167;
              sub_1A4920D00(v293, type metadata accessor for LemonadeTwoShelfItemsRow);
              result = sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
              if (v160 < v328[2])
              {
                v196 = v328;
                v118 = v195;
                result = sub_1A491F444(v277, v328 + v310 + *(v195 + 20) + v162);
                v330 = v196;
                v117 = v311;
                v122 = v319;
                v124 = v194;
                goto LABEL_27;
              }

              goto LABEL_199;
            }

            sub_1A4920D00(v165, type metadata accessor for LemonadeTwoShelfItemsRow);
            result = sub_1A4920D60(v166, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
            v159 = v165;
            v123 = v164;
          }

          else
          {
            result = sub_1A4920D00(v159, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          if (v158 == ++v160)
          {
            goto LABEL_76;
          }
        }

LABEL_181:
        __break(1u);
        break;
      }

      if (*(v122 + *(v124 + 28)))
      {
        v168 = v328[2];
        if (!v168)
        {
LABEL_81:
          v118 = v324;
          v182 = *v316;
          v183 = v296;
          v124 = v326;
          (*v316)(&v296[*(v324 + 20)], 1, 1, v326);
          v184 = *(v118 + 24);
          sub_1A491FCB0(v319, &v183[v184], type metadata accessor for LemonadeShelfItem);
          v182(&v183[v184], 0, 1, v124);
          *v183 = 1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v328 = sub_1A491EE70(0, v328[2] + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          v119 = v308;
          v186 = v328[2];
          v185 = v328[3];
          if (v186 >= v185 >> 1)
          {
            v328 = sub_1A491EE70(v185 > 1, v186 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          v187 = v319;
          sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
          v188 = v327;
          v155 = v328;
          v328[2] = v186 + 1;
          v156 = v155 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v186;
          v122 = v187;
          v157 = &v328;
          goto LABEL_86;
        }

        v169 = 0;
        v303 = (*(v327 + 80) + 32) & ~*(v327 + 80);
        v170 = v328 + v303;
        while (v169 < v328[2])
        {
          v171 = *(v327 + 72) * v169;
          sub_1A491FCB0(&v170[v171], v121, type metadata accessor for LemonadeTwoShelfItemsRow);
          if (*v121 == 1)
          {
            v310 = v171;
            v172 = &v121[*(v324 + 24)];
            v173 = v121;
            v174 = v315;
            sub_1A491FF2C(v172, v315, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
            if ((*v123)(v174, 1, v326) == 1)
            {
              sub_1A4920D60(v174, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
              v197 = v278;
              sub_1A491FCB0(v319, v278, type metadata accessor for LemonadeShelfItem);
              v198 = v197;
              v199 = v326;
              (*v316)(v198, 0, 1);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v328 = sub_1A459BDE8(v328);
              }

              v118 = v324;
              v121 = v313;
              v119 = v308;
              sub_1A4920D00(v313, type metadata accessor for LemonadeTwoShelfItemsRow);
              result = sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
              if (v169 < v328[2])
              {
                v124 = v199;
                v200 = v328;
                result = sub_1A491F444(v278, v328 + v303 + *(v118 + 24) + v310);
                v330 = v200;
                v117 = v311;
                v122 = v319;
                goto LABEL_27;
              }

              goto LABEL_200;
            }

            sub_1A4920D00(v173, type metadata accessor for LemonadeTwoShelfItemsRow);
            result = sub_1A4920D60(v174, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
            v121 = v173;
          }

          else
          {
            result = sub_1A4920D00(v121, type metadata accessor for LemonadeTwoShelfItemsRow);
          }

          if (v168 == ++v169)
          {
            goto LABEL_81;
          }
        }

LABEL_180:
        __break(1u);
        goto LABEL_181;
      }
    }

    v134 = *(v118 + 20);
    v135 = v122;
    v136 = v317;
    sub_1A491FCB0(v135, &v317[v134], type metadata accessor for LemonadeShelfItem);
    v137 = *v316;
    (*v316)(&v136[v134], 0, 1, v124);
    v137(&v136[*(v118 + 24)], 1, 1, v124);
    *v136 = 0;
    v138 = *v305;
    result = (*v305)(v136, 0, 1, v118);
    v139 = v328[2];
    if (!v139)
    {
      goto LABEL_52;
    }

    v140 = 0;
    v141 = v328 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
    while (1)
    {
      if (v140 >= v328[2])
      {
        __break(1u);
        goto LABEL_180;
      }

      sub_1A491FCB0(&v141[*(v327 + 72) * v140], v67, type metadata accessor for LemonadeTwoShelfItemsRow);
      if (*v67 == 1)
      {
        v142 = v323;
        sub_1A491FF2C(&v67[*(v324 + 20)], v323, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
        if ((*v123)(v142, 1, v326) != 1)
        {
          sub_1A4920D00(v67, type metadata accessor for LemonadeTwoShelfItemsRow);
          result = sub_1A4920D60(v142, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
          goto LABEL_43;
        }

        sub_1A4920D60(v142, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
        if ((v321 & 1) == 0 && v309 != v140)
        {
          break;
        }
      }

      result = sub_1A4920D00(v67, type metadata accessor for LemonadeTwoShelfItemsRow);
LABEL_43:
      if (v139 == ++v140)
      {
        v118 = v324;
LABEL_52:
        v143 = v317;
        goto LABEL_53;
      }
    }

    v189 = v275;
    sub_1A491FF2C(v317, v275, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow);
    v118 = v324;
    result = (*v304)(v189, 1, v324);
    if (result == 1)
    {
      goto LABEL_201;
    }

    if (v328[2] < v140)
    {
      goto LABEL_194;
    }

    result = sub_1A491FD18(v189, v283, type metadata accessor for LemonadeTwoShelfItemsRow);
    v190 = v328[2];
    if (v190 < v140)
    {
      goto LABEL_195;
    }

    v191 = v328;
    v192 = swift_isUniquelyReferenced_nonNull_native();
    v330 = v191;
    if (!v192 || v190 >= v328[3] >> 1)
    {
      v328 = sub_1A491EE70(v192, v190 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
      v330 = v328;
    }

    sub_1A491F064(v140, v140, 1, v283);
    v330 = v328;
    sub_1A4920D00(v67, type metadata accessor for LemonadeTwoShelfItemsRow);
    v143 = v317;
    sub_1A4920D60(v317, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
    v138(v143, 1, 1, v118);
LABEL_53:
    v144 = v302;
    sub_1A491FF2C(v143, v302, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow);
    v145 = (*v304)(v144, 1, v118);
    v124 = v326;
    if (v145 == 1)
    {
      v146 = MEMORY[0x1E69E6720];
      sub_1A4920D60(v143, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
      v147 = v319;
      sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
      v148 = v146;
      v122 = v147;
      result = sub_1A4920D60(v144, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, v148);
      v117 = v311;
      v121 = v313;
      v119 = v308;
      goto LABEL_27;
    }

    sub_1A4920D60(v144, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
    v149 = *(v118 + 20);
    v150 = v301;
    sub_1A491FCB0(v319, &v301[v149], type metadata accessor for LemonadeShelfItem);
    v137(&v150[v149], 0, 1, v124);
    v137(&v150[*(v118 + 24)], 1, 1, v124);
    *v150 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v328 = sub_1A491EE70(0, v328[2] + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
    }

    v119 = v308;
    v152 = v328[2];
    v151 = v328[3];
    if (v152 >= v151 >> 1)
    {
      v328 = sub_1A491EE70(v151 > 1, v152 + 1, 1, v328, &qword_1EB120358, type metadata accessor for LemonadeTwoShelfItemsRow, type metadata accessor for LemonadeTwoShelfItemsRow);
    }

    sub_1A4920D60(v317, &qword_1EB125820, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6720]);
    v153 = v319;
    sub_1A4920D00(v319, type metadata accessor for LemonadeShelfItem);
    v154 = v327;
    v155 = v328;
    v328[2] = v152 + 1;
    v156 = v155 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v152;
    v122 = v153;
    v157 = &v332;
LABEL_86:
    result = sub_1A491FD18(*(v157 - 32), v156, type metadata accessor for LemonadeTwoShelfItemsRow);
    v330 = v155;
LABEL_87:
    v117 = v311;
    v121 = v313;
LABEL_27:
    if (++v325 == v322)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
  return result;
}

uint64_t sub_1A491E90C(uint64_t result, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1A491EE70(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A491EA68()
{
  v1 = type metadata accessor for LemonadeShelfItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  MEMORY[0x1A590A010](*v0, v11);
  v14 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v15 = *(v14 + 20);
  v23 = v0;
  sub_1A491FF2C(&v0[v15], v13, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v16 = *(v2 + 48);
  if (v16(v13, 1, v1) == 1)
  {
    sub_1A524ECB4();
  }

  else
  {
    sub_1A491FD18(v13, v6, type metadata accessor for LemonadeShelfItem);
    sub_1A524ECB4();
    v17 = *v6;
    if (v6[8])
    {
      MEMORY[0x1A590A010](1);
      MEMORY[0x1A590A010](v17);
    }

    else
    {
      MEMORY[0x1A590A010](0);
      v24 = v17;
      sub_1A3C3DEB4();
      sub_1A524C4B4();
    }

    sub_1A4920D00(v6, type metadata accessor for LemonadeShelfItem);
  }

  sub_1A491FF2C(&v23[*(v14 + 24)], v9, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  if (v16(v9, 1, v1) == 1)
  {
    return sub_1A524ECB4();
  }

  v19 = v22;
  sub_1A491FD18(v9, v22, type metadata accessor for LemonadeShelfItem);
  sub_1A524ECB4();
  v20 = *v19;
  if (*(v19 + 8))
  {
    MEMORY[0x1A590A010](1);
    MEMORY[0x1A590A010](v20);
  }

  else
  {
    MEMORY[0x1A590A010](0);
    v25 = v20;
    sub_1A3C3DEB4();
    sub_1A524C4B4();
  }

  return sub_1A4920D00(v19, type metadata accessor for LemonadeShelfItem);
}

uint64_t sub_1A491EDE8()
{
  sub_1A524EC94();
  sub_1A491EA68();
  return sub_1A524ECE4();
}

uint64_t sub_1A491EE2C()
{
  sub_1A524EC94();
  sub_1A491EA68();
  return sub_1A524ECE4();
}

size_t sub_1A491EE70(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A491F4D8(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_1A491F064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1A4920D60(a4, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  }

  if (v17 < 1)
  {
    return sub_1A4920D60(a4, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  }

  result = sub_1A491FCB0(a4, v15, type metadata accessor for LemonadeTwoShelfItemsRow);
  if (v12 >= v17)
  {
    return sub_1A4920D60(a4, &qword_1EB1204C8, type metadata accessor for LemonadeTwoShelfItemsRow, MEMORY[0x1E69E6BC0]);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A491F210(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 0;
    }
  }

  else if (*(a2 + 8))
  {
    v2 = 0;
  }

  else
  {
    sub_1A3C5F5F8();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v6 == v4 && v7 == v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1A524EAB4();
    }
  }

  return v2 & 1;
}

BOOL sub_1A491F330(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 0;
    }

    return (v2 & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  sub_1A3C5F5F8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v7 == v5 && v8 == v6)
  {
  }

  else
  {
    v4 = sub_1A524EAB4();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A491F444(uint64_t a1, uint64_t a2)
{
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A491F4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1A491F53C(uint64_t a1, int a2)
{
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v41 = type metadata accessor for LemonadeShelfItem(0);
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v37 - v17;
  v18 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (!v22)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v44 = *(v19 + 72);
  v24 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  v38 = v10;
  v46 = (v10 + 48);
  v45 = a2;
  v25 = v41;
  do
  {
    sub_1A491FCB0(v23, v21, type metadata accessor for LemonadeTwoShelfItemsRow);
    sub_1A491FF2C(&v21[*(v18 + 20)], v9, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    v26 = *v46;
    if ((*v46)(v9, 1, v25) == 1)
    {
      sub_1A4920D60(v9, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
    }

    else
    {
      v27 = v18;
      v28 = v42;
      sub_1A491FD18(v9, v42, type metadata accessor for LemonadeShelfItem);
      if ((v45 & 1) != 0 || (*(v28 + 8) & 1) == 0)
      {
        *(v28 + *(v25 + 28)) = *v21;
        sub_1A491FCB0(v28, v39, type metadata accessor for LemonadeShelfItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1A491EE70(0, v24[2] + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
        }

        v30 = v24[2];
        v29 = v24[3];
        v31 = v42;
        if (v30 >= v29 >> 1)
        {
          v24 = sub_1A491EE70(v29 > 1, v30 + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          v31 = v42;
        }

        sub_1A4920D00(v31, type metadata accessor for LemonadeShelfItem);
        v24[2] = v30 + 1;
        sub_1A491FD18(v39, v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, type metadata accessor for LemonadeShelfItem);
        v25 = v41;
      }

      else
      {
        sub_1A4920D00(v28, type metadata accessor for LemonadeShelfItem);
      }

      v18 = v27;
      v6 = v37;
    }

    sub_1A491FF2C(&v21[*(v18 + 24)], v6, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    if (v26(v6, 1, v25) == 1)
    {
      sub_1A4920D00(v21, type metadata accessor for LemonadeTwoShelfItemsRow);
      sub_1A4920D60(v6, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
    }

    else
    {
      v32 = v43;
      sub_1A491FD18(v6, v43, type metadata accessor for LemonadeShelfItem);
      if ((v45 & 1) != 0 || (*(v32 + 8) & 1) == 0)
      {
        *(v32 + *(v25 + 28)) = 2;
        sub_1A491FCB0(v32, v40, type metadata accessor for LemonadeShelfItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1A491EE70(0, v24[2] + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
        }

        v34 = v24[2];
        v33 = v24[3];
        v35 = v43;
        if (v34 >= v33 >> 1)
        {
          v24 = sub_1A491EE70(v33 > 1, v34 + 1, 1, v24, &qword_1EB120380, type metadata accessor for LemonadeShelfItem, type metadata accessor for LemonadeShelfItem);
          v35 = v43;
        }

        sub_1A4920D00(v35, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D00(v21, type metadata accessor for LemonadeTwoShelfItemsRow);
        v24[2] = v34 + 1;
        sub_1A491FD18(v40, v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34, type metadata accessor for LemonadeShelfItem);
        v25 = v41;
      }

      else
      {
        sub_1A4920D00(v32, type metadata accessor for LemonadeShelfItem);
        sub_1A4920D00(v21, type metadata accessor for LemonadeTwoShelfItemsRow);
      }
    }

    v23 += v44;
    --v22;
  }

  while (v22);
  return v24;
}

uint64_t sub_1A491FCB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A491FD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A491FD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1A491FEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A491FF2C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A491F4D8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A491FFAC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A491F4D8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A492002C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for LemonadeShelfItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  sub_1A491F4D8(0, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  sub_1A459B3AC(0);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - v21;
  if (*a1 != *a2)
  {
    return 0;
  }

  v56 = v7;
  v57 = v13;
  v61 = v20;
  v24 = v19;
  v58 = type metadata accessor for LemonadeTwoShelfItemsRow(0);
  v59 = v24;
  v25 = *(v58 + 20);
  v26 = a1;
  v27 = *(v24 + 48);
  v60 = v26;
  sub_1A491FF2C(&v26[v25], v22, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v28 = &a2[v25];
  v29 = a2;
  sub_1A491FF2C(v28, &v22[v27], &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  v32 = *(v5 + 48);
  v31 = v5 + 48;
  v30 = v32;
  if (v32(v22, 1, v4) != 1)
  {
    sub_1A491FF2C(v22, v16, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
    if (v30(&v22[v27], 1, v4) == 1)
    {
      sub_1A4920D00(v16, type metadata accessor for LemonadeShelfItem);
      goto LABEL_8;
    }

    v54 = v30;
    v55 = v31;
    sub_1A491FD18(&v22[v27], v10, type metadata accessor for LemonadeShelfItem);
    v34 = *v16;
    v35 = *v10;
    v36 = v10[8];
    if (v16[8])
    {
      sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);
      if (v34 == v35)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v10[8] & 1) == 0)
      {
        v67 = *v16;
        v66 = v35;
        sub_1A3C5F5F8();
        sub_1A524C9C4();
        sub_1A524C9C4();
        if (v64 == v62 && v65 == v63)
        {
          sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);
        }

        else
        {
          v40 = sub_1A524EAB4();
          sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);

          if ((v40 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

LABEL_22:
        sub_1A4920D00(v16, type metadata accessor for LemonadeShelfItem);
        v30 = v54;
        goto LABEL_23;
      }

      sub_1A4920D00(v10, type metadata accessor for LemonadeShelfItem);
    }

LABEL_17:
    sub_1A4920D00(v16, type metadata accessor for LemonadeShelfItem);
    v38 = MEMORY[0x1E69E6720];
    v39 = v22;
LABEL_39:
    sub_1A4920D60(v39, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, v38);
    return 0;
  }

  if (v30(&v22[v27], 1, v4) != 1)
  {
LABEL_8:
    v33 = v22;
LABEL_29:
    sub_1A4920D00(v33, sub_1A459B3AC);
    return 0;
  }

LABEL_23:
  sub_1A4920D60(v22, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  v41 = *(v58 + 24);
  v42 = *(v59 + 48);
  v43 = v29;
  v44 = v61;
  sub_1A491FF2C(&v60[v41], v61, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  sub_1A491FF2C(&v43[v41], v44 + v42, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  if (v30(v44, 1, v4) == 1)
  {
    if (v30((v44 + v42), 1, v4) == 1)
    {
      goto LABEL_45;
    }

    goto LABEL_28;
  }

  v45 = v57;
  sub_1A491FF2C(v44, v57, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem);
  if (v30((v44 + v42), 1, v4) == 1)
  {
    sub_1A4920D00(v45, type metadata accessor for LemonadeShelfItem);
LABEL_28:
    v33 = v44;
    goto LABEL_29;
  }

  v46 = v44 + v42;
  v47 = v56;
  sub_1A491FD18(v46, v56, type metadata accessor for LemonadeShelfItem);
  v48 = *v45;
  v49 = *v47;
  v50 = *(v47 + 8);
  if (*(v45 + 8))
  {
    sub_1A4920D00(v47, type metadata accessor for LemonadeShelfItem);
    if (v48 == v49)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    if (v51)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  if (*(v47 + 8))
  {
    sub_1A4920D00(v56, type metadata accessor for LemonadeShelfItem);
LABEL_38:
    sub_1A4920D00(v45, type metadata accessor for LemonadeShelfItem);
    v38 = MEMORY[0x1E69E6720];
    v39 = v44;
    goto LABEL_39;
  }

  v67 = *v45;
  v66 = v49;
  sub_1A3C5F5F8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v64 == v62 && v65 == v63)
  {
    sub_1A4920D00(v56, type metadata accessor for LemonadeShelfItem);
  }

  else
  {
    v52 = sub_1A524EAB4();
    sub_1A4920D00(v56, type metadata accessor for LemonadeShelfItem);

    if ((v52 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

LABEL_44:
  sub_1A4920D00(v45, type metadata accessor for LemonadeShelfItem);
LABEL_45:
  sub_1A4920D60(v44, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  return 1;
}

unint64_t sub_1A4920880()
{
  result = qword_1EB145080;
  if (!qword_1EB145080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145080);
  }

  return result;
}

unint64_t sub_1A49208D8()
{
  result = qword_1EB145088;
  if (!qword_1EB145088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145088);
  }

  return result;
}

unint64_t sub_1A4920930()
{
  result = qword_1EB145090;
  if (!qword_1EB145090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145090);
  }

  return result;
}

unint64_t sub_1A49209D4()
{
  result = qword_1EB145098;
  if (!qword_1EB145098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145098);
  }

  return result;
}

uint64_t sub_1A4920A70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4920AE0()
{
  result = type metadata accessor for LemonadeShelfItem.BackingItem(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4920B84()
{
  result = type metadata accessor for LemonadeFeatureLibrary.Shelf(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A4920C34()
{
  sub_1A491F4D8(319, &qword_1EB125A98, type metadata accessor for LemonadeShelfItem, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A4920D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4920D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A491F4D8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A4920DC4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B4A8);
  __swift_project_value_buffer(v0, qword_1EB15B4A8);
  sub_1A5246EF4();
}

uint64_t sub_1A4920E28()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB1E01B8);
  __swift_project_value_buffer(v4, qword_1EB1E01B8);
  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB15B4A8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

id BoopableItemsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BoopableItemsProvider.init()()
{
  v1 = v0;
  *&v0[OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager] = 0;
  *&v0[OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider] = 0;
  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB15B4A8);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "-= Intializating Boop activity items configuration =-", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  *&v1[OBJC_IVAR___PXBoopableItemsProvider_Swift_assets] = MEMORY[0x1E69E7CC0];
  v6 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *&v1[OBJC_IVAR___PXBoopableItemsProvider_Swift_cachedItemProvidersByAsset] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BoopableItemsProvider();
  return objc_msgSendSuper2(&v8, sel_init);
}

id BoopableItemsProvider.__deallocating_deinit()
{
  v1 = v0;
  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB15B4A8);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "-= Boop activity items configuration deinit =-", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for BoopableItemsProvider();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void *sub_1A4921304()
{
  v1 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A49213DC(void *a1)
{
  sub_1A49245D8();
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A492150C();
}

uint64_t sub_1A4921448@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49214A4(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A492150C()
{
  v1 = v0;
  v2 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = qword_1EB15B4A0;
    v6 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB15B4A8);
    v8 = v6;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v4;
      v13 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Registering observer for changes in selection manager: %@", v11, 0xCu);
      sub_1A3CB65E4(v12);
      MEMORY[0x1A590EEC0](v12, -1, -1);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    [v8 registerChangeObserver:v1 context:0];
    sub_1A4923284([v8 selectionSnapshot]);
  }

  return result;
}

void (*sub_1A49216BC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A4921758;
}

void sub_1A4921758(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *v3;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    v7 = v4;
    sub_1A49245D8();
    v8 = *(v5 + v6);
    *(v5 + v6) = v4;
    v9 = v7;

    sub_1A492150C();
    v10 = *v3;
  }

  else
  {
    sub_1A49245D8();
    v11 = *(v5 + v6);
    *(v5 + v6) = v4;
    v10 = v4;

    sub_1A492150C();
  }

  free(v2);
}

uint64_t sub_1A492197C(unint64_t a1)
{
  sub_1A4921A98(a1);
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A49219D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4921A98(unint64_t a1)
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_12;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 1)
  {
    while (1)
    {
      v11[2] = MEMORY[0x1E69E7CD0];
      if (a1 >> 62)
      {
        if (!sub_1A524E2B4())
        {
LABEL_15:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(a1 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_12:
      result = sub_1A524E2B4();
      if (result < 1)
      {
        return result;
      }
    }

    v6 = MEMORY[0x1A59097F0](0, a1);
LABEL_8:
    result = [v6 uuid];
    if (result)
    {
      v7 = result;
      v8 = sub_1A524C674();
      v10 = v9;

      sub_1A3C44714(v11, v8, v10);
    }

    __break(1u);
    __break(1u);
  }

  return result;
}

void sub_1A492203C(uint64_t *a1)
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
  v5 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49220D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A4921A98(v3);
  *(v4 + v5) = v3;

  free(v2);
}

void *sub_1A49221A8()
{
  v1 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A4922254(uint64_t a1)
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A49222AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4922308(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4922444()
{
  v1 = v0;
  v43 = MEMORY[0x1E69E7CC0];
  v38 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v2 = v38();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_30:
    v5 = sub_1A524E2B4();
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  v6 = 0;
  v41 = OBJC_IVAR___PXBoopableItemsProvider_Swift_cachedItemProvidersByAsset;
  v39 = v5;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v7, v3);
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          goto LABEL_29;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 = *&v1[v41];
      v11 = [v8 uuid];
      if (!v11)
      {
        __break(1u);
        goto LABEL_41;
      }

      v12 = v11;
      v40 = v10;
      v13 = [v10 objectForKey_];

      v42 = v7 + 1;
      if (v13)
      {
        goto LABEL_23;
      }

      if (qword_1EB15B4A0 != -1)
      {
        swift_once();
      }

      v14 = sub_1A5246F24();
      __swift_project_value_buffer(v14, qword_1EB15B4A8);
      v15 = v9;
      v16 = sub_1A5246F04();
      v17 = sub_1A524D264();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        swift_slowAlloc();
        *v18 = 136446210;
        v19 = [v15 uuid];

        if (v19)
        {
          sub_1A524C674();

          sub_1A3C2EF94();
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v20 = PXBoopItemProviderForAsset(v15);
      if (v20)
      {
        break;
      }

      v21 = v15;
      v22 = sub_1A5246F04();
      v23 = sub_1A524D244();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v21;
        *v25 = v21;
        v26 = v21;
        _os_log_impl(&dword_1A3C1C000, v22, v23, "Unable to create a boop item provider from asset: %@", v24, 0xCu);
        sub_1A3CB65E4(v25);
        MEMORY[0x1A590EEC0](v25, -1, -1);
        v27 = v24;
        v5 = v39;
        MEMORY[0x1A590EEC0](v27, -1, -1);
        v21 = v22;
        v22 = v26;
      }

      ++v7;
      if (v42 == v5)
      {
        goto LABEL_31;
      }
    }

    v13 = v20;
    v28 = [v15 uuid];
    if (!v28)
    {
      goto LABEL_42;
    }

    v29 = v28;
    [v40 setObject:v13 forKey:v28];

LABEL_23:
    v30 = v13;
    MEMORY[0x1A5907D70]();
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();

    v6 = v7 + 1;
  }

  while (v42 != v5);
LABEL_31:

  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v31 = sub_1A5246F24();
  __swift_project_value_buffer(v31, qword_1EB15B4A8);
  v32 = v1;
  v33 = sub_1A5246F04();
  v34 = sub_1A524D264();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134349056;
    v36 = v38();
    if (v36 >> 62)
    {
      v37 = sub_1A524E2B4();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v35 + 4) = v37;

    _os_log_impl(&dword_1A3C1C000, v33, v34, "Returning %{public}ld item providers", v35, 0xCu);
    MEMORY[0x1A590EEC0](v35, -1, -1);
  }

  else
  {

    v33 = v32;
  }
}

void sub_1A4922A38()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  sub_1A3C52C70(0, &qword_1EB126660);
  sub_1A524CA14();

  PXMediaTypeForAssets();
}

uint64_t sub_1A4923080(void *a1, char a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    if (a2)
    {
      v5 = result;
      a1;
      sub_1A4923284([v5 selectionSnapshot]);
    }
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A4923284(void *a1)
{
  v15 = MEMORY[0x1E69E7CC0];
  v2 = [a1 selectedIndexPaths];
  if ([v2 count] >= 1)
  {
    v3 = [a1 dataSource];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = &v15;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1A4924D50;
      *(v6 + 24) = v5;
      v14[4] = sub_1A4030BC8;
      v14[5] = v6;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_1A402F794;
      v14[3] = &block_descriptor_21_12;
      v7 = _Block_copy(v14);
      v8 = v3;

      [v2 enumerateItemIndexPathsUsingBlock_];

      _Block_release(v7);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }

  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB15B4A8);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    swift_beginAccess();
    if (v15 >> 62)
    {
      v13 = sub_1A524E2B4();
    }

    else
    {
      v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Found %{public}ld assets in selection snapshot", v12, 0xCu);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A49235D8(void *a1, double a2, double a3)
{
  v7 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xA0))();
  if (v7)
  {
    v8 = v7;
LABEL_9:
    v16 = [objc_allocWithZone(off_1E7721750) init];
    [v16 setVersion_];
    [v16 setDeliveryMode_];
    [v16 setNetworkAccessAllowed_];
    [v16 setDownloadIntent_];
    v17 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
    sub_1A3C52C70(0, &qword_1EB126630);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    *(v19 + 32) = a3;
    *(v19 + 40) = v8;
    *(v19 + 48) = v16;
    v31[4] = sub_1A4924D14;
    v31[5] = v19;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 1107296256;
    v31[2] = sub_1A49242EC;
    v31[3] = &block_descriptor_304;
    v20 = _Block_copy(v31);
    v21 = a1;
    v22 = v8;
    v23 = v16;

    [v17 registerObjectOfClass:ObjCClassFromMetadata visibility:0 loadHandler:v20];

    _Block_release(v20);
    return v17;
  }

  if (qword_1EB15B4A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1A5246F24();
  __swift_project_value_buffer(v9, qword_1EB15B4A8);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Image preview media provider was not supplied, falling back to default media provider", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 imageProviderForAsset_];

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v8 = v15;
    swift_unknownObjectRetain();
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  v25 = a1;
  v26 = sub_1A5246F04();
  v27 = sub_1A524D244();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_1A3C1C000, v26, v27, "Could not retrieve a valid media provider to provide a preview image for asset: %@", v28, 0xCu);
    sub_1A3CB65E4(v29);
    MEMORY[0x1A590EEC0](v29, -1, -1);
    MEMORY[0x1A590EEC0](v28, -1, -1);
  }

  return 0;
}

void sub_1A49239C8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v33 = a1;
  v13 = sub_1A5246E54();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v31 - v18;
  if (qword_1EB1E01B0 != -1)
  {
    swift_once();
  }

  v20 = sub_1A5246E94();
  __swift_project_value_buffer(v20, qword_1EB1E01B8);
  sub_1A5246E84();
  sub_1A5246E24();
  v21 = a3;
  v22 = sub_1A5246E84();
  v32 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v31[1] = a2;
    v31[2] = a4;
    v31[3] = a5;
    v23 = v21;
    v24 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v24 = 136446466;
    v25 = [v23 uuid];
    v31[0] = v23;

    if (v25)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {

    v26 = v21;
    (*(v14 + 16))(v16, v19, v13);
    sub_1A5246ED4();
    swift_allocObject();
    v27 = sub_1A5246EC4();
    (*(v14 + 8))(v19, v13);
    v28 = swift_allocObject();
    *(v28 + 16) = "BoopPreviewImage";
    *(v28 + 24) = 16;
    *(v28 + 32) = 2;
    v29 = v33;
    *(v28 + 40) = v27;
    *(v28 + 48) = v29;
    *(v28 + 56) = a2;
    aBlock[4] = sub_1A4924D3C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A4924238;
    aBlock[3] = &block_descriptor_12_10;
    v30 = _Block_copy(aBlock);

    [a4 requestCGImageForAsset:v26 targetSize:1 contentMode:a5 options:v30 resultHandler:{a6, a7}];
    _Block_release(v30);
  }
}

void sub_1A4923E10(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, int a5, uint64_t a6, void (*a7)(id, void *), uint64_t a8)
{
  v34 = a8;
  v35 = a7;
  v32 = a5;
  v36 = a4;
  v11 = sub_1A5246EA4();
  v31 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A5246E54();
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    goto LABEL_11;
  }

  *&v39 = sub_1A524C674();
  *(&v39 + 1) = v17;
  sub_1A524E384();
  if (!*(a3 + 16) || (v18 = sub_1A3D5C0BC(v37), (v19 & 1) == 0))
  {
    sub_1A3D5FAFC(v37);
LABEL_11:
    v39 = 0u;
    v40 = 0u;
    goto LABEL_12;
  }

  sub_1A3C2F0BC(*(a3 + 56) + 32 * v18, &v39);
  sub_1A3D5FAFC(v37);
  if (*(&v40 + 1))
  {
    sub_1A3C52C70(0, &qword_1EB12C740);
    if (swift_dynamicCast())
    {
      v20 = v37[0];
    }

    else
    {
      v20 = 0;
    }

    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1A3C35B00(&v39);
  v20 = 0;
  if (!a1)
  {
LABEL_9:
    v21 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:a1 imageOrientation:a2];
LABEL_14:
  if (qword_1EB1E01B0 != -1)
  {
    swift_once();
  }

  v22 = sub_1A5246E94();
  __swift_project_value_buffer(v22, qword_1EB1E01B8);
  v23 = sub_1A5246E84();
  sub_1A5246EB4();
  v24 = sub_1A524D644();
  if ((sub_1A524DEC4() & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((v32 & 1) == 0)
  {
    if (v36)
    {
LABEL_24:

      sub_1A5246EE4();

      v25 = v31;
      if ((*(v31 + 88))(v13, v11) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        (*(v25 + 8))(v13, v11);
        v26 = "";
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v23, v24, v28, v36, v26, v27, 2u);
      MEMORY[0x1A590EEC0](v27, -1, -1);
LABEL_28:

      (*(v14 + 8))(v16, v33);
      v29 = v21;
      v30 = v20;
      v35(v21, v20);

      return;
    }

    __break(1u);
  }

  if (v36 >> 32)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v36 & 0xFFFFF800) != 0xD800)
  {
    if (v36 >> 16 <= 0x10)
    {
      v36 = &v38;
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1A4924238(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_1A524C3E4();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v6(a2, a3, v7);
}

id sub_1A49242EC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1A3D96FA4, v4);

  return v5;
}

uint64_t sub_1A492438C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_9;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((a1 & 0xC000000000000001) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v1 = *(a1 + 32);
        goto LABEL_6;
      }

      __break(1u);
LABEL_9:
      v2 = a1;
      v3 = sub_1A524E2B4();
      a1 = v2;
      if (!v3)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    MEMORY[0x1A59097F0](0, a1);
LABEL_6:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A49245D8()
{
  v1 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1EB15B4A0;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB15B4A8);
    v7 = v5;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D264();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v2;
      v12 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, v9, "Unregistering observer for changes in selection manager: %@", v10, 0xCu);
      sub_1A3CB65E4(v11);
      MEMORY[0x1A590EEC0](v11, -1, -1);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    v0 = v3;
    [v7 unregisterChangeObserver:v3 context:0];
  }

  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1A492479C(uint64_t a1, double a2, double a3)
{
  if (a1 < 0 || ((v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88), v8 = v7(), v8 >> 62) ? (v9 = sub_1A524E2B4()) : (v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10)), v10 = , v9 <= a1))
  {
    if (qword_1EB15B4A0 != -1)
    {
      swift_once();
    }

    v15 = sub_1A5246F24();
    __swift_project_value_buffer(v15, qword_1EB15B4A8);
    v16 = v3;
    v13 = sub_1A5246F04();
    v17 = sub_1A524D244();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = a1;
      *(v18 + 12) = 2048;
      v19 = (*((*MEMORY[0x1E69E7D40] & v16->isa) + 0x88))();
      if (v19 >> 62)
      {
        v20 = sub_1A524E2B4();
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 14) = v20;

      _os_log_impl(&dword_1A3C1C000, v13, v17, "Out of bounds request for asset at index %ld when we have %ld assets", v18, 0x16u);
      MEMORY[0x1A590EEC0](v18, -1, -1);
      v14 = 0;
    }

    else
    {

      v14 = 0;
      v13 = v16;
    }

    goto LABEL_16;
  }

  result = (v7)(v10);
  if ((result & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1A59097F0](a1, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v12 = *(result + 8 * a1 + 32);
LABEL_8:
    v13 = v12;

    v14 = sub_1A49235D8(v13, a2, a3);
LABEL_16:

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4924D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v7 = [v5 assetAtItemIndexPath_];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v8 = swift_unknownObjectRetain();
    MEMORY[0x1A5907D70](v8);
    if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }

  return swift_unknownObjectRelease();
}

void *sub_1A4924EFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

void sub_1A4924F90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);

  sub_1A5245714();
}

void sub_1A492505C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);

  sub_1A5245714();
}

uint64_t sub_1A492532C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49253B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

void sub_1A4925414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49254E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);

  sub_1A5245714();
}

void sub_1A49255B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);

  sub_1A5245724();
}

void sub_1A492566C()
{
  type metadata accessor for StoryViewCurationModel.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator);
  sub_1A52456D4();
}

void sub_1A4925770()
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator);
  sub_1A52456D4();
}

void *sub_1A4925870@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49258CC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 128))(&v4);
}

void sub_1A4925924()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A492599C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A4925A0C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t StoryViewCurationModel.Mutator.deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__currentCurationKind;
  v2 = sub_1A4927434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__availableCurationKinds;
  v4 = sub_1A4927504();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__allCurationKinds, v4);
  return v0;
}

uint64_t StoryViewCurationModel.Mutator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__currentCurationKind;
  v2 = sub_1A4927434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__availableCurationKinds;
  v4 = sub_1A4927504();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtCC12PhotosUICore22StoryViewCurationModel7Mutator__allCurationKinds, v4);

  return swift_deallocClassInstance();
}

void (*sub_1A4925D34(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 136))();
  return sub_1A3D3D728;
}

void sub_1A4925DC4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_customStoryViewDurationChangeHandler);
  if (v3)
  {

    v3(a1);

    sub_1A3C33378(v3);
  }

  else
  {
    v4 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_storyViewModel) actionPerformer];
    if (v4)
    {
      [v4 performActionForChromeActionMenuItem:2 withValue:a1 sender:0 presentationSource:0];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EB1E01D0 != -1)
      {
        swift_once();
      }

      v5 = sub_1A5246F24();
      __swift_project_value_buffer(v5, qword_1EB1E01D8);
      oslog = sub_1A5246F04();
      v6 = sub_1A524D254();
      if (os_log_type_enabled(oslog, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1A3C1C000, oslog, v6, "missing action performer", v7, 2u);
        MEMORY[0x1A590EEC0](v7, -1, -1);
      }
    }
  }
}

uint64_t sub_1A4925F7C(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager);
  if (v4)
  {
    if (v4 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  sub_1A4926084();
  v5 = *(v1 + v3);
  if (v5)
  {
    swift_allocObject();
    swift_weakInit();
    v5;

    sub_1A524D1A4();
  }

  v6 = (v2 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManagerObservation);
  *v6 = 0;
  v6[1] = 0;

  return swift_unknownObjectRelease();
}

void sub_1A4926084()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 recipe];
    [v3 overallDurationInfo];
    v4 = *v47;

    if ([v2 manuallyCuratedAssets])
    {
      swift_unknownObjectRelease();
    }

    else if (*v47 != 2)
    {
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v5 = sub_1A4926E00(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1A4926E00((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    *&v5[8 * v7 + 32] = 2;
LABEL_8:
    v8 = [v2 availableCurationLengths];
    if ((PHMemoryCurationLengthFromPFStoryOverallDurationKind(3uLL) & ~v8) == 0 || v4 == 3)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4926E00(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1A4926E00((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = 3;
      swift_endAccess();
    }

    if ((PHMemoryCurationLengthFromPFStoryOverallDurationKind(4uLL) & ~v8) == 0 || v4 == 4)
    {
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4926E00(0, *(v5 + 2) + 1, 1, v5);
      }

      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_1A4926E00((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 2) = v14 + 1;
      *&v5[8 * v14 + 32] = 4;
      swift_endAccess();
    }

    if ((PHMemoryCurationLengthFromPFStoryOverallDurationKind(5uLL) & ~v8) == 0 || v4 == 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A4926E00(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_1A4926E00((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      *&v5[8 * v17 + 32] = 5;
    }

    PFStoryOverallDurationKind.lemonadeCurationKind.getter(v4, v47);
    v44 = v47[0];
    v18 = *(v5 + 2);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v20 = (v5 + 32);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v22 = *v20++;
        PFStoryOverallDurationKind.lemonadeCurationKind.getter(v22, v47);
        v23 = v47[0];
        if (v47[0] != 6)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1A4367EC4(0, *(v21 + 2) + 1, 1, v21);
          }

          v25 = *(v21 + 2);
          v24 = *(v21 + 3);
          if (v25 >= v24 >> 1)
          {
            v21 = sub_1A4367EC4((v24 > 1), v25 + 1, 1, v21);
          }

          *(v21 + 2) = v25 + 1;
          v21[v25 + 32] = v23;
        }

        --v18;
      }

      while (v18);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v43 = swift_allocObject();
    *(v43 + 16) = v19;
    v26 = (v43 + 16);
    if (sub_1A408F39C(3, v21))
    {
      swift_beginAccess();
      v27 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v26 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1A4367EC4(0, *(v27 + 2) + 1, 1, v27);
        *v26 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1A4367EC4((v29 > 1), v30 + 1, 1, v27);
      }

      *(v27 + 2) = v30 + 1;
      v27[v30 + 32] = 3;
      *v26 = v27;
      swift_endAccess();
    }

    swift_beginAccess();
    v31 = *v26;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v26 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_1A4367EC4(0, *(v31 + 2) + 1, 1, v31);
      *v26 = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      v31 = sub_1A4367EC4((v33 > 1), v34 + 1, 1, v31);
    }

    *(v31 + 2) = v34 + 1;
    v31[v34 + 32] = 0;
    *v26 = v31;
    v36 = *(v31 + 2);
    v35 = *(v31 + 3);
    if (v36 >= v35 >> 1)
    {
      v31 = sub_1A4367EC4((v35 > 1), v36 + 1, 1, v31);
    }

    *(v31 + 2) = v36 + 1;
    v31[v36 + 32] = 1;
    *v26 = v31;
    v38 = *(v31 + 2);
    v37 = *(v31 + 3);
    if (v38 >= v37 >> 1)
    {
      v31 = sub_1A4367EC4((v37 > 1), v38 + 1, 1, v31);
    }

    *(v31 + 2) = v38 + 1;
    v31[v38 + 32] = 2;
    *v26 = v31;
    swift_endAccess();
    v46 = static LemonadeCurationKind.allCases.getter();
    v39 = *(v46 + 2);
    if (v39)
    {
      v40 = (v46 + 32);
      do
      {
        v41 = *v40++;
        if (sub_1A408F39C(v41, v21))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        --v39;
      }

      while (v39);
    }

    *v47 = v45;
    v42 = swift_allocObject();
    *(v42 + 16) = v44;
    *(v42 + 24) = v21;
    *(v42 + 32) = v43;
    type metadata accessor for StoryViewCurationModel(0);
    sub_1A49273EC(&qword_1EB145168, type metadata accessor for StoryViewCurationModel);

    sub_1A5245F44();
  }
}

uint64_t StoryViewCurationModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel__currentCurationKind;
  v2 = sub_1A49275D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel__availableCurationKinds;
  v4 = sub_1A49276A4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel__allCurationKinds, v4);

  swift_unknownObjectRelease();
  sub_1A3C33378(*(v0 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_customStoryViewDurationChangeHandler));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t StoryViewCurationModel.__deallocating_deinit()
{
  StoryViewCurationModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4926AD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 232))();
  *a1 = result;
  return result;
}

void sub_1A4926C08()
{
  type metadata accessor for StoryViewCurationModel(0);
  sub_1A49273EC(&qword_1EB145168, type metadata accessor for StoryViewCurationModel);

  sub_1A5245F44();
}

id sub_1A4926C94@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4926CAC()
{
  type metadata accessor for StoryViewCurationModel(0);
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);

  sub_1A5245C54();
}

uint64_t sub_1A4926D38()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1E01D8);
  __swift_project_value_buffer(v0, qword_1EB1E01D8);
  sub_1A524C814();
  return sub_1A5246F14();
}

char *sub_1A4926E00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A4927DB4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1A4926EF8()
{
  v1 = v0;
  v2 = sub_1A49276A4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A49275D4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_observable;
  *(v1 + v4) = [objc_allocWithZone(off_1E77217D8) init];
  v5 = (v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_storyViewModelObservation);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager) = 0;
  v6 = (v1 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManagerObservation);
  *v6 = 0;
  v6[1] = 0;
  sub_1A486B8CC();
  type metadata accessor for StoryViewCurationModel(0);
  v7 = MEMORY[0x1E69E6720];
  sub_1A4927E0C(0, &qword_1EB12A328, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6720]);
  sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);
  sub_1A4927E5C(&qword_1EB12A320, &qword_1EB12A328, v7);
  sub_1A5245754();
}

uint64_t sub_1A49273EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4927434()
{
  result = qword_1EB145130;
  if (!qword_1EB145130)
  {
    type metadata accessor for StoryViewCurationModel.Mutator(255);
    sub_1A4927E0C(255, &qword_1EB12A328, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6720]);
    sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator);
    sub_1A52456C4();
  }

  return result;
}

uint64_t sub_1A4927504()
{
  result = qword_1EB145138;
  if (!qword_1EB145138)
  {
    type metadata accessor for StoryViewCurationModel.Mutator(255);
    sub_1A4927E0C(255, &qword_1EB126F38, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E62F8]);
    sub_1A49273EC(&qword_1EB145128, type metadata accessor for StoryViewCurationModel.Mutator);
    sub_1A52456C4();
  }

  return result;
}

uint64_t sub_1A49275D4()
{
  result = qword_1EB145140;
  if (!qword_1EB145140)
  {
    type metadata accessor for StoryViewCurationModel(255);
    sub_1A4927E0C(255, &qword_1EB12A328, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E6720]);
    sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A49276A4()
{
  result = qword_1EB145148;
  if (!qword_1EB145148)
  {
    type metadata accessor for StoryViewCurationModel(255);
    sub_1A4927E0C(255, &qword_1EB126F38, &type metadata for LemonadeCurationKind, MEMORY[0x1E69E62F8]);
    sub_1A49273EC(&qword_1EB145120, type metadata accessor for StoryViewCurationModel);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A4927780(uint64_t a1)
{
  *(a1 + 8) = sub_1A49273EC(&qword_1EB145150, type metadata accessor for StoryViewCurationModel);
  result = sub_1A49273EC(&qword_1EB145158, type metadata accessor for StoryViewCurationModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4927894(uint64_t a1)
{
  result = sub_1A49273EC(&qword_1EB145160, type metadata accessor for StoryViewCurationModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4927988()
{
  result = sub_1A49275D4();
  if (v1 <= 0x3F)
  {
    result = sub_1A49276A4();
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

uint64_t sub_1A4927B40()
{
  result = sub_1A4927434();
  if (v1 <= 0x3F)
  {
    result = sub_1A4927504();
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

void sub_1A4927CA0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  LOBYTE(v5[0]) = v2;
  (*(*v4 + 128))(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  v5[0] = v3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4927DB4()
{
  if (!qword_1EB145170)
  {
    type metadata accessor for PFStoryOverallDurationKind(255);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145170);
    }
  }
}

void sub_1A4927E0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4927E5C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4927E0C(255, a2, &type metadata for LemonadeCurationKind, a3);
    sub_1A3F5F320();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4927ECC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 0x40) != 0)
    {
      v5 = [*(Strong + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_storyViewModel) mainModel];
      v6 = [v5 recipeManager];

      v7 = *(v4 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager);
      *(v4 + OBJC_IVAR____TtC12PhotosUICore22StoryViewCurationModel_recipeManager) = v6;
      v8 = v6;
      sub_1A4925F7C(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1A4927FA0(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a2 & 0x21) != 0)
    {
      sub_1A4926084();
    }
  }

  return result;
}

void InvitationsItemList.init(invitationsItems:)()
{
  v0 = type metadata accessor for InvitationsItem(0) - 8;
  MEMORY[0x1EEE9AC00](v0);
  sub_1A52458F4();
}

void InvitationsItemList.value.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1A49284F0();
  a1[3] = v4;
  *a1 = v3;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t InvitationsItemList.item(at:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *(v2 + 16);
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(type metadata accessor for InvitationsItem(0) - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;

  return sub_1A4928430(v7, a2);
}

uint64_t InvitationsItemList.deinit()
{

  return v0;
}

uint64_t InvitationsItemList.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1A4928374@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v5 = *(*v2 + 16);
  if (*(v5 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(type metadata accessor for InvitationsItem(0) - 8);
  v7 = v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3;

  return sub_1A4928430(v7, a2);
}

uint64_t sub_1A4928430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvitationsItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4928494(uint64_t a1)
{
  v2 = type metadata accessor for InvitationsItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A49284F0()
{
  if (!qword_1EB145178)
  {
    type metadata accessor for InvitationsItem(255);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145178);
    }
  }
}

uint64_t sub_1A4928600(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4928674@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugInfoPanelViewModel();
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

uint64_t sub_1A49286B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(type metadata accessor for DebugInfoPanel(0) + 20);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A492FC70(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DebugInfoPanelViewModel();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1A492A990(&qword_1EB145180, v8, type metadata accessor for DebugInfoPanelViewModel);
  result = sub_1A5248494();
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t sub_1A49287F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1A492A7B4(0);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInfoPanel(0);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A724();
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5249284();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A650();
  v16 = *(v15 - 8);
  v38 = v15;
  v39 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v20 = *(a1 + 8);
  v43 = *a1;
  v44 = v20;
  (*(v12 + 104))(v14, *MEMORY[0x1E697C438], v11, v17);
  v21 = sub_1A492A6D0();

  sub_1A524ACE4();
  (*(v12 + 8))(v14, v11);

  *v10 = sub_1A5249314();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A4930908();
  v22 = sub_1A524C634();
  v23 = PXLocalizedString(v22);

  v24 = sub_1A524C674();
  v26 = v25;

  v43 = v24;
  v44 = v26;
  v27 = v35;
  v28 = v36;
  sub_1A492FDF0(v35, v36, type metadata accessor for DebugInfoPanel);
  v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v30 = swift_allocObject();
  sub_1A493099C(v28, v30 + v29, type metadata accessor for DebugInfoPanel);
  sub_1A3D5F9DC();
  sub_1A524B754();
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A492FEA8(0, &unk_1EB1453C0, sub_1A492A888);
  sub_1A4928E64(v27, &v5[*(v31 + 44)]);
  v43 = &type metadata for DebugInfoPanelContentView;
  v44 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724);
  sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4);
  v32 = v38;
  sub_1A524ACC4();
  sub_1A492EADC(v5, sub_1A492A7B4);
  sub_1A492EADC(v10, sub_1A492A724);
  return (*(v39 + 8))(v19, v32);
}

uint64_t sub_1A4928D44()
{
  v0 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3EBE398(0);
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugInfoPanel(0);
  sub_1A3F24CA8(v4);
  MEMORY[0x1A5906C60](v2);
  sub_1A52489B4();
  sub_1A524B904();
  return sub_1A492EADC(v4, sub_1A3EBE398);
}

uint64_t sub_1A4928E64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v3 = type metadata accessor for DebugInfoPanel(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v5;
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A908();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  sub_1A492FDF0(a1, v6, type metadata accessor for DebugInfoPanel);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v30 = type metadata accessor for DebugInfoPanel;
  sub_1A493099C(v6, v19 + v18, type metadata accessor for DebugInfoPanel);
  sub_1A492F040(0, &qword_1EB128530, sub_1A3F32A14);
  sub_1A3F37498();
  sub_1A524B704();
  sub_1A492FDF0(v32, v6, type metadata accessor for DebugInfoPanel);
  v20 = swift_allocObject();
  sub_1A493099C(v6, v20 + v18, v30);
  v21 = v33;
  sub_1A524B704();
  v22 = *(v9 + 16);
  v23 = v34;
  v22(v34, v17, v8);
  v24 = v35;
  v22(v35, v21, v8);
  v25 = v36;
  v22(v36, v23, v8);
  sub_1A492E368(0, &qword_1EB1451C0, sub_1A492A908);
  v22(&v25[*(v26 + 48)], v24, v8);
  v27 = *(v9 + 8);
  v27(v21, v8);
  v27(v17, v8);
  v27(v24, v8);
  return (v27)(v23, v8);
}

uint64_t sub_1A492929C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B544();
  sub_1A492F040(0, &qword_1EB128530, sub_1A3F32A14);
  v4 = (a1 + *(v3 + 36));
  sub_1A3F32A14(0);
  v6 = *(v5 + 28);
  v7 = *MEMORY[0x1E69816C0];
  v8 = sub_1A524B5B4();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  result = swift_getKeyPath();
  *v4 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1A4929370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v79 = v7;
  v77 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v59[-v13];
  v78 = type metadata accessor for DebugSection(0);
  v14 = *(v78 - 1);
  MEMORY[0x1EEE9AC00](v78);
  v71 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1A524C8B4();
  v18 = v17;
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_1A524E404();

  v84 = 2570;
  v85 = 0xE200000000000000;
  v61 = v16;
  v62 = v18;
  MEMORY[0x1A5907B60](v16, v18);
  MEMORY[0x1A5907B60](0x202D2D2D2D2D2D2DLL, 0xE800000000000000);
  ObjectType = swift_getObjectType();
  v20 = (*(a2 + 8))(ObjectType, a2);
  MEMORY[0x1A5907B60](v20);

  MEMORY[0x1A5907B60](0x2D2D2D2D2D2D2D20, 0xE800000000000000);
  v22 = v84;
  v21 = v85;
  swift_beginAccess();
  MEMORY[0x1A5907B60](v22, v21);
  swift_endAccess();

  result = (*(a2 + 16))(ObjectType, a2);
  v69 = *(result + 16);
  if (v69)
  {
    v24 = 0;
    v25 = v78[5];
    v68 = v78[6];
    v26 = v71;
    v67 = &v71[v25];
    v66 = &v71[v78[7]];
    v65 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v75 = a3 + 2;
    v27 = __OFADD__(a3, 2);
    v60 = v27;
    v81 = a4;
    v72 = a3;
    v64 = v14;
    v63 = result;
    v73 = v11;
    while (v24 < *(result + 16))
    {
      v28 = *(v14 + 72);
      v70 = v24;
      sub_1A492FDF0(v65 + v28 * v24, v26, type metadata accessor for DebugSection);
      swift_beginAccess();
      MEMORY[0x1A5907B60](10, 0xE100000000000000);
      swift_endAccess();
      if (sub_1A524C7A4() >= 1)
      {
        v84 = v61;
        v85 = v62;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v82 = MEMORY[0x1E69E7CC0];
      result = *&v71[v68];
      if (result)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v29 = *v66;
      if (*v66)
      {
        MEMORY[0x1EEE9AC00](0);
        *&v59[-16] = &v82;

        v29(sub_1A4930DA4, &v59[-32]);
        result = sub_1A3C33378(v29);
      }

      v30 = v82;
      v78 = *(v82 + 16);
      if (v78)
      {
        v31 = 0;
        v32 = MEMORY[0x1E69E7CC0];
        v33 = MEMORY[0x1E69E7CA0];
        v76 = v82;
        while (v31 < *(v30 + 16))
        {
          v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
          v35 = *(v77 + 72);
          v36 = v30 + v34 + v35 * v31;
          v37 = v74;
          sub_1A492AA18(v36, v74, &unk_1EB139448, v33 + 8, type metadata accessor for DebugRow);
          v38 = v79;
          v39 = v33;
          v40 = MEMORY[0x1E69E6720];
          sub_1A492AA18(&v37[v79[8]], &v84, &qword_1EB126130, v39 + 8, MEMORY[0x1E69E6720]);
          v41 = v86;
          sub_1A3C2CD10(&v84, &qword_1EB126130, v39 + 8, v40);
          if (v41 || *&v37[v38[10]] || *&v37[v38[9]] || v37[v38[11]] == 1)
          {
            sub_1A492AA88(v37, v80);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v87 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A492DB64(0, *(v32 + 16) + 1, 1);
              v32 = v87;
            }

            v33 = MEMORY[0x1E69E7CA0];
            v11 = v73;
            v30 = v76;
            v44 = *(v32 + 16);
            v43 = *(v32 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1A492DB64(v43 > 1, v44 + 1, 1);
              v33 = MEMORY[0x1E69E7CA0];
              v32 = v87;
            }

            *(v32 + 16) = v44 + 1;
            result = sub_1A492AA88(v80, v32 + v34 + v44 * v35);
          }

          else
          {
            v33 = MEMORY[0x1E69E7CA0];
            result = sub_1A3C2CD10(v37, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
            v11 = v73;
            v30 = v76;
          }

          if (v78 == ++v31)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
        break;
      }

      v32 = MEMORY[0x1E69E7CC0];
      v33 = MEMORY[0x1E69E7CA0];
LABEL_30:

      v45 = *(v32 + 16);
      if (v45)
      {
        if (v60)
        {
          goto LABEL_41;
        }

        v46 = &v11[v79[9]];
        v47 = v32 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
        v48 = *(v77 + 72);
        do
        {
          sub_1A492AA18(v47, v11, &unk_1EB139448, v33 + 8, type metadata accessor for DebugRow);
          v50 = sub_1A524C8B4();
          v52 = v33;
          v53 = *v46;
          if (*v46)
          {
            v49 = v46[1];
            swift_unknownObjectRetain();

            sub_1A4929370(v53, v49, v72 + 1, v81);
            swift_unknownObjectRelease();
          }

          else
          {
            v82 = 10;
            v83 = 0xE100000000000000;
            MEMORY[0x1A5907B60](v50, v51);

            v54 = v79;
            MEMORY[0x1A5907B60](*&v11[v79[7]], *&v11[v79[7] + 8]);
            MEMORY[0x1A5907B60](8250, 0xE200000000000000);
            v55 = MEMORY[0x1E69E6720];
            sub_1A492AA18(&v11[v54[8]], &v84, &qword_1EB126130, v52 + 8, MEMORY[0x1E69E6720]);
            sub_1A492FE58(0, &qword_1EB126130, v52 + 8, v55);
            v56 = sub_1A524C714();
            MEMORY[0x1A5907B60](v56);

            v57 = v82;
            v58 = v83;
            swift_beginAccess();
            MEMORY[0x1A5907B60](v57, v58);
            swift_endAccess();
          }

          sub_1A3C2CD10(v11, &unk_1EB139448, v52 + 8, type metadata accessor for DebugRow);
          v47 += v48;
          --v45;
          v33 = v52;
        }

        while (v45);
      }

      v26 = v71;
      v24 = v70 + 1;
      sub_1A492EADC(v71, type metadata accessor for DebugSection);
      v14 = v64;
      result = v63;
      if (v24 == v69)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_38:
  }

  return result;
}

uint64_t sub_1A4929CD8()
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v2 = v1;
  v25 = *(v1 - 1);
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v30 = MEMORY[0x1E69E7CC0];
  v7 = type metadata accessor for DebugSection(0);
  if (*(v0 + *(v7 + 24)))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v8 = *(v0 + *(v7 + 28));
  if (v8)
  {
    MEMORY[0x1EEE9AC00](0);
    *(&v21 - 2) = &v30;

    v8(sub_1A492DB84, &v21 - 4);
    sub_1A3C33378(v8);
  }

  result = v30;
  v24 = *(v30 + 16);
  if (v24)
  {
    v23 = v2;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v22 = v30;
    while (v10 < *(result + 16))
    {
      v12 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v13 = *(v25 + 72);
      v14 = MEMORY[0x1E69E7CA0];
      sub_1A492AA18(result + v12 + v13 * v10, v6, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
      v15 = v23;
      v16 = MEMORY[0x1E69E6720];
      sub_1A492AA18(&v6[v23[8]], v27, &qword_1EB126130, v14 + 8, MEMORY[0x1E69E6720]);
      v17 = v28;
      sub_1A3C2CD10(v27, &qword_1EB126130, v14 + 8, v16);
      if (v17 || *&v6[v15[10]] || *&v6[v15[9]] || v6[v15[11]] == 1)
      {
        sub_1A492AA88(v6, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A492DB64(0, *(v11 + 16) + 1, 1);
          v11 = v29;
        }

        v20 = *(v11 + 16);
        v19 = *(v11 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1A492DB64(v19 > 1, v20 + 1, 1);
          v11 = v29;
        }

        *(v11 + 16) = v20 + 1;
        sub_1A492AA88(v26, v11 + v12 + v20 * v13);
      }

      else
      {
        sub_1A3C2CD10(v6, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
      }

      ++v10;
      result = v22;
      if (v24 == v10)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_21:

    return v11;
  }

  return result;
}

uint64_t sub_1A492A064@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_1A5249C44();
  v3 = *(v2 - 8);
  v25 = v2;
  v26 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492A390();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  sub_1A492A4FC();
  v24 = v11;
  sub_1A492A650();
  v13 = v12;
  sub_1A492A724();
  v15 = v14;
  sub_1A492A7B4(255);
  v17 = v16;
  v18 = sub_1A492A6D0();
  v29 = &type metadata for DebugInfoPanelContentView;
  v30 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724);
  v21 = sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4);
  v29 = v13;
  v30 = v15;
  v31 = v17;
  v32 = OpaqueTypeConformance2;
  v33 = v20;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1A5248474();
  sub_1A5249C34();
  sub_1A492A990(&qword_1EB1451E8, 255, sub_1A492A390);
  sub_1A492A990(&qword_1EB13A710, 255, MEMORY[0x1E697C938]);
  v22 = v25;
  sub_1A524A864();
  (*(v26 + 8))(v5, v22);
  return (*(v8 + 8))(v10, v7);
}

void sub_1A492A390()
{
  if (!qword_1EB145188)
  {
    sub_1A492A4FC();
    sub_1A492A650();
    sub_1A492A724();
    sub_1A492A7B4(255);
    sub_1A492A6D0();
    swift_getOpaqueTypeConformance2();
    sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724);
    sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145188);
    }
  }
}

void sub_1A492A4FC()
{
  if (!qword_1EB145190)
  {
    sub_1A492A650();
    sub_1A492A724();
    sub_1A492A7B4(255);
    sub_1A492A6D0();
    swift_getOpaqueTypeConformance2();
    sub_1A492A990(&qword_1EB1451D8, 255, sub_1A492A724);
    sub_1A492A990(&qword_1EB1451E0, 255, sub_1A492A7B4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145190);
    }
  }
}

void sub_1A492A650()
{
  if (!qword_1EB145198)
  {
    sub_1A492A6D0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145198);
    }
  }
}

unint64_t sub_1A492A6D0()
{
  result = qword_1EB1451A0;
  if (!qword_1EB1451A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1451A0);
  }

  return result;
}

void sub_1A492A724()
{
  if (!qword_1EB1451A8)
  {
    sub_1A492E314(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A3D6E520();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1451A8);
    }
  }
}

void sub_1A492A7F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A492A990(a4, 255, a5);
    v8 = sub_1A524B784();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A492A8B0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A492E368(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A492A908()
{
  if (!qword_1EB1451C8)
  {
    sub_1A492F040(255, &qword_1EB128530, sub_1A3F32A14);
    sub_1A3F37498();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1451C8);
    }
  }
}

uint64_t sub_1A492A990(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A492AA18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1A492FE58(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A492AA88(uint64_t a1, uint64_t a2)
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A492AB14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  (*(v4 + 16))(ObjectType, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1A492DD5C(0);
  sub_1A52411C4();
  sub_1A492DD90();
  sub_1A492A990(&qword_1EB145288, 255, sub_1A492DD5C);
  sub_1A492E758();
  sub_1A492A990(&qword_1EB1453A8, 255, type metadata accessor for DebugSection);

  return sub_1A524B9C4();
}

uint64_t sub_1A492AC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1A492E190();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492E5D8();
  v63 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E697F948];
  sub_1A492E000(0, &qword_1EB1452D0, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F948]);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v64 = v58 - v14;
  sub_1A492E000(0, &qword_1EB1452D8, sub_1A492E084, sub_1A492E5D8, v12);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v58 - v16;
  sub_1A492DFB8(0);
  v65 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A492E084();
  v22 = v21;
  v61 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v60 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v25 = (a1 + *(v24 + 36));
  v26 = *v25;
  v68 = v4;
  if (v26)
  {
    v27 = v25[1];
    type metadata accessor for DebugInfoPanelViewModel();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;
    sub_1A492A990(&qword_1EB145180, v29, type metadata accessor for DebugInfoPanelViewModel);
    swift_unknownObjectRetain_n();
    v30 = sub_1A5248494();
    v58[1] = v58;
    *&v69 = v30;
    *(&v69 + 1) = v31;
    v59 = v31;
    MEMORY[0x1EEE9AC00](v30);
    v58[-2] = a1;
    sub_1A492E268();
    v33 = v32;
    sub_1A3E42888(255);
    v35 = v34;
    v36 = sub_1A492E3C8();
    v37 = sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);

    *&v72 = v33;
    *(&v72 + 1) = v35;
    *&v73 = v36;
    *(&v73 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_1A492A6D0();
    v38 = v60;
    sub_1A5248444();
    v39 = v61;
    v61[2](v17, v38, v22);
    swift_storeEnumTagMultiPayload();
    sub_1A492A990(&qword_1EB1452B8, 255, sub_1A492E084);
    sub_1A492A990(&qword_1EB1452C0, 255, sub_1A492E5D8);
    sub_1A5249744();
    sub_1A3D2A89C(v20, v64);
    swift_storeEnumTagMultiPayload();
    sub_1A492E9E8();
    sub_1A5249744();
    swift_unknownObjectRelease();

    sub_1A3D2A900(v20);
    return (v39[1])(v38, v22);
  }

  else
  {
    v59 = v17;
    v60 = v22;
    v61 = v20;
    v41 = v63;
    v42 = *(v24 + 40);
    if (*(a1 + v42))
    {
      *&v69 = *(a1 + v42);
      MEMORY[0x1EEE9AC00](v24);
      v58[-2] = a1;
      sub_1A492E268();
      v44 = v43;
      sub_1A3E42888(255);
      v46 = v45;
      v47 = sub_1A492E3C8();
      v48 = sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);
      swift_retain_n();
      *&v72 = v44;
      *(&v72 + 1) = v46;
      *&v73 = v47;
      *(&v73 + 1) = v48;
      swift_getOpaqueTypeConformance2();
      sub_1A5248444();
      (*(v9 + 16))(v59, v11, v41);
      swift_storeEnumTagMultiPayload();
      sub_1A492A990(&qword_1EB1452B8, 255, sub_1A492E084);
      sub_1A492A990(&qword_1EB1452C0, 255, sub_1A492E5D8);
      v49 = v61;
      sub_1A5249744();
      sub_1A3D2A89C(v49, v64);
      swift_storeEnumTagMultiPayload();
      sub_1A492E9E8();
      sub_1A5249744();

      sub_1A3D2A900(v49);
      return (*(v9 + 8))(v11, v41);
    }

    else
    {
      sub_1A492BCBC(&v72);
      v69 = v72;
      v70 = v73;
      v71[0] = v74[0];
      *(v71 + 15) = *(v74 + 15);
      MEMORY[0x1EEE9AC00](v50);
      v58[-2] = a1;
      sub_1A492E268();
      v52 = v51;
      sub_1A3E42888(0);
      v54 = v53;
      v55 = sub_1A492E3C8();
      v56 = sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);
      sub_1A524A954();
      sub_1A492EADC(&v72, sub_1A492E268);
      v57 = v68;
      (*(v5 + 16))(v64, v7, v68);
      swift_storeEnumTagMultiPayload();
      sub_1A492E9E8();
      *&v69 = v52;
      *(&v69 + 1) = v54;
      *&v70 = v55;
      *(&v70 + 1) = v56;
      swift_getOpaqueTypeConformance2();
      sub_1A5249744();
      return (*(v5 + 8))(v7, v57);
    }
  }
}

uint64_t sub_1A492B6B0()
{
  sub_1A492DB8C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v12 = *v0;
  v13 = v6;
  sub_1A492DC50();
  sub_1A492E828(&qword_1EB145290, sub_1A492DC50, sub_1A492E758);
  sub_1A524A2C4();
  v7 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  v14 = (*(v7 + 8))(ObjectType, v7);
  v15 = v9;
  sub_1A492A990(&qword_1EB1452C8, 255, sub_1A492DB8C);
  sub_1A3D5F9DC();
  sub_1A524ABB4();
  (*(v3 + 8))(v5, v2);
}

void sub_1A492B894(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A43C21B0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A492B9E8(uint64_t a1, void **a2)
{
  v4 = MEMORY[0x1E69E7CA0];
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  sub_1A492AA18(a1, &v14 - v7, &unk_1EB139448, v4 + 8, type metadata accessor for DebugRow);
  v9 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1A43C21B0(0, v9[2] + 1, 1, v9);
    *a2 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1A43C21B0(v11 > 1, v12 + 1, 1, v9);
    *a2 = v9;
  }

  v9[2] = v12 + 1;
  return sub_1A492AA88(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12);
}

int *sub_1A492BB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1A52411B4();
  result = type metadata accessor for DebugSection(0);
  v13 = (a6 + result[5]);
  *v13 = a1;
  v13[1] = a2;
  *(a6 + result[6]) = a3;
  v14 = (a6 + result[7]);
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t sub_1A492BBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_1A52411B4();
  v16 = type metadata accessor for DebugRow();
  v17 = (a8 + v16[7]);
  *v17 = a1;
  v17[1] = a2;
  v18 = v16[8];
  v19 = sub_1A524DF24();
  result = (*(*(v19 - 8) + 32))(a8 + v18, a3, v19);
  *(a8 + v16[10]) = a6;
  v21 = (a8 + v16[9]);
  *v21 = a4;
  v21[1] = a5;
  *(a8 + v16[11]) = a7;
  return result;
}

__n128 sub_1A492BCBC@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v11 = MEMORY[0x1E69E7CA0];
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v13 = v12;
  if (*(v1 + v12[10]) || *(v1 + v12[9]))
  {
    sub_1A492AA18(v1 + v12[8], &v43, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
    if (*(&v44 + 1))
    {
      sub_1A492AA18(&v43, &v39, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
      sub_1A492EDC0();
      if (swift_dynamicCast())
      {

        v14 = (v1 + v13[7]);
        v15 = v14[1];
        *&v47 = *v14;
        *(&v47 + 1) = v15;
        sub_1A3D5F9DC();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __swift_destroy_boxed_opaque_existential_0(&v39);
    }

    v16 = (v1 + v13[7]);
    v17 = v16[1];
    *&v47 = *v16;
    *(&v47 + 1) = v17;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v29[0] = a1;
  v20 = v12[8];
  sub_1A492AA18(v1 + v20, v38, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
  if (v38[3])
  {
    sub_1A492AA18(v38, &v31, &qword_1EB126130, v11 + 8, MEMORY[0x1E69E6720]);
    if (swift_dynamicCast())
    {
      LOBYTE(v33) = 0;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (swift_dynamicCast())
    {
      (*(v5 + 32))(v7, v10, v4);
      sub_1A492A990(&qword_1EB12AFE8, 255, MEMORY[0x1E6969530]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __swift_destroy_boxed_opaque_existential_0(&v31);
  }

  sub_1A5249414();
  sub_1A5249404();
  sub_1A52493F4();
  sub_1A5249404();
  v21 = v11;
  v22 = MEMORY[0x1E69E6720];
  sub_1A492AA18(v1 + v20, &v47, &qword_1EB126130, v21 + 8, MEMORY[0x1E69E6720]);
  sub_1A492FE58(0, &qword_1EB126130, v21 + 8, v22);
  sub_1A524C714();
  sub_1A52493F4();

  sub_1A5249404();
  sub_1A5249444();
  v23 = sub_1A524A444();
  v37 = v24 & 1;
  v36 = 1;
  *&v33 = v23;
  *(&v33 + 1) = v25;
  LOBYTE(v34) = v24 & 1;
  *(&v34 + 1) = v30[0];
  DWORD1(v34) = *(v30 + 3);
  *(&v34 + 1) = v26;
  *v35 = v31;
  v35[16] = v32;
  v35[17] = 1;
  sub_1A492E314(0, &qword_1EB145250, &type metadata for TitleDetailRow, &type metadata for TitleDetailRow, MEMORY[0x1E697F960]);
  sub_1A492E4E4();
  sub_1A5249744();
  sub_1A492EC54(&v47, &v33);
  v39 = v47;
  v40 = v48;
  v41 = *v49;
  v42 = *&v49[16];
  v43 = v47;
  v44 = v48;
  v45 = *v49;
  v46 = *&v49[16];
  sub_1A3C2CD10(v38, &qword_1EB126130, v21 + 8, MEMORY[0x1E69E6720]);
  v47 = v39;
  v48 = v40;
  *v49 = v41;
  *&v49[16] = v42;
  LOBYTE(v31) = 1;
  v49[18] = 1;
  sub_1A492EC54(&v39, &v33);
  sub_1A492E314(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  v27 = MEMORY[0x1E697F960];
  sub_1A492ECD4(0, &qword_1EB145248, MEMORY[0x1E697F960]);
  sub_1A424D1BC();
  sub_1A492E448();
  sub_1A5249744();
  sub_1A492ED64(&v43, &qword_1EB1452E0, MEMORY[0x1E697F948]);
  sub_1A492ED64(&v39, &qword_1EB145248, v27);
  *v49 = *v35;
  *&v49[15] = *&v35[15];
  v28 = v29[0];
  v18 = v34;
  *v29[0] = v33;
  *(v28 + 16) = v18;
  result = *v49;
  *(v28 + 32) = *v49;
  *(v28 + 47) = *&v49[15];
  return result;
}

uint64_t sub_1A492C860@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a1;
  v36 = a2;
  v3 = MEMORY[0x1E69E7CA0];
  v31 = type metadata accessor for DebugRow;
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  sub_1A3E42920();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  sub_1A492AA18(a1, v7, &unk_1EB139448, v3 + 8, type metadata accessor for DebugRow);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_1A492AA88(v7, v20 + v19);
  sub_1A3E429B4();
  sub_1A492A990(&qword_1EB1274F0, 255, sub_1A3E429B4);
  sub_1A524B704();
  sub_1A492AA18(v32, v7, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, v31);
  v21 = swift_allocObject();
  sub_1A492AA88(v7, v21 + v19);
  v22 = v33;
  sub_1A524B704();
  v23 = *(v10 + 16);
  v24 = v34;
  v23(v34, v18, v9);
  v25 = v35;
  v26 = v22;
  v23(v35, v22, v9);
  v27 = v36;
  v23(v36, v24, v9);
  sub_1A492E368(0, &qword_1EB127438, sub_1A3E42920);
  v23(&v27[*(v28 + 48)], v25, v9);
  v29 = *(v10 + 8);
  v29(v26, v9);
  v29(v18, v9);
  v29(v25, v9);
  return (v29)(v24, v9);
}

uint64_t sub_1A492CC88()
{
  sub_1A5249434();

  return sub_1A524B604();
}

uint64_t sub_1A492CCF8()
{
  sub_1A5249434();

  return sub_1A524B604();
}

void sub_1A492CD64(uint64_t a1)
{
  sub_1A492F0A4(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A492E000(0, &qword_1EB145390, sub_1A492EEA8, sub_1A492F0A4, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A492EEA8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 32);
  sub_1A492FE58(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10[15] == 1)
  {
    *v8 = sub_1A5249584();
    *(v8 + 1) = 0;
    v8[16] = 0;
    sub_1A492FEA8(0, &qword_1EB1453A0, sub_1A492EF40);
    sub_1A492D17C(a1, &v8[*(v9 + 44)]);
  }

  *v4 = sub_1A5249314();
  *(v4 + 1) = 0;
  v4[16] = 1;
  sub_1A492FEA8(0, &qword_1EB145398, sub_1A492F0E0);
  sub_1A492D450(a1);
}

void sub_1A492D17C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8[4] = a2;
  sub_1A492EFDC();
  v8[3] = v3;
  v8[1] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v8[2] = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8[5] = v8 - v6;
  v7 = a1[1];
  v8[12] = *a1;
  v8[13] = v7;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A492D450(void *a1)
{
  sub_1A3DF1428();
  MEMORY[0x1EEE9AC00](v2);
  v6[4] = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = a1[1];
  v6[6] = *a1;
  v6[7] = v5;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A492D714(uint64_t a1)
{
  v5 = *(a1 + 32);
  v4[1] = *(a1 + 32);
  v6 = *(&v5 + 1);
  sub_1A492FDF0(&v6, v4, sub_1A445E630);
  v1 = MEMORY[0x1E69E6370];
  v2 = MEMORY[0x1E6981790];
  sub_1A492FE58(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v4[0] = v5;
  sub_1A524B6B4();
  return sub_1A3C2CD10(&v5, &qword_1EB1274B0, v1, v2);
}

void sub_1A492D804()
{
  sub_1A492EE0C();
  MEMORY[0x1EEE9AC00](v1);
  v2 = v0[1];
  v3[0] = *v0;
  v3[1] = v2;
  v3[2] = v0[2];
  sub_1A492CD64(v3);
}

uint64_t sub_1A492D9C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DebugInfoPanelPreviewProvider();
  v2 = sub_1A43C1A90();
  v3 = *(type metadata accessor for DebugInfoPanel(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_1A492FC70(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DebugInfoPanelViewModel();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = &off_1F170A0F0;
  sub_1A492A990(&qword_1EB145180, v5, type metadata accessor for DebugInfoPanelViewModel);
  result = sub_1A5248494();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_1A492DACC(uint64_t a1)
{
  v2 = sub_1A492FD54();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A492DB18(uint64_t a1)
{
  v2 = sub_1A492FD54();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

size_t sub_1A492DB64(size_t a1, int64_t a2, char a3)
{
  result = sub_1A492FFB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1A492DB8C()
{
  if (!qword_1EB1451F0)
  {
    sub_1A492DC50();
    sub_1A492E828(&qword_1EB145290, sub_1A492DC50, sub_1A492E758);
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1451F0);
    }
  }
}

void sub_1A492DC50()
{
  if (!qword_1EB1451F8)
  {
    sub_1A492DD5C(255);
    sub_1A52411C4();
    sub_1A492DD90();
    sub_1A492A990(&qword_1EB145288, 255, sub_1A492DD5C);
    sub_1A492A990(&unk_1EB12AFC0, 255, MEMORY[0x1E69695A8]);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1451F8);
    }
  }
}

void sub_1A492DD90()
{
  if (!qword_1EB145208)
  {
    sub_1A492DDF8();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145208);
    }
  }
}

void sub_1A492DDF8()
{
  if (!qword_1EB145210)
  {
    sub_1A492DF30(255, &qword_1EB145218, MEMORY[0x1E69E62F8]);
    sub_1A52411C4();
    sub_1A492E000(255, &qword_1EB145220, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F960]);
    sub_1A492E6E4();
    sub_1A492A990(&unk_1EB12AFC0, 255, MEMORY[0x1E69695A8]);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145210);
    }
  }
}

void sub_1A492DF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A492FE58(255, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A492E000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A492E084()
{
  if (!qword_1EB145230)
  {
    sub_1A492E190();
    sub_1A492E268();
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);
    swift_getOpaqueTypeConformance2();
    sub_1A492A6D0();
    v0 = sub_1A5248454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145230);
    }
  }
}

void sub_1A492E190()
{
  if (!qword_1EB145238)
  {
    sub_1A492E268();
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145238);
    }
  }
}

void sub_1A492E268()
{
  if (!qword_1EB145240)
  {
    sub_1A492E314(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A492ECD4(255, &qword_1EB145248, MEMORY[0x1E697F960]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145240);
    }
  }
}

void sub_1A492E314(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A492E368(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A492E3C8()
{
  result = qword_1EB145258;
  if (!qword_1EB145258)
  {
    sub_1A492E268();
    sub_1A424D1BC();
    sub_1A492E448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145258);
  }

  return result;
}

unint64_t sub_1A492E448()
{
  result = qword_1EB145260;
  if (!qword_1EB145260)
  {
    sub_1A492ECD4(255, &qword_1EB145248, MEMORY[0x1E697F960]);
    sub_1A492E4E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145260);
  }

  return result;
}

unint64_t sub_1A492E4E4()
{
  result = qword_1EB145268;
  if (!qword_1EB145268)
  {
    sub_1A492E314(255, &qword_1EB145250, &type metadata for TitleDetailRow, &type metadata for TitleDetailRow, MEMORY[0x1E697F960]);
    sub_1A492E584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145268);
  }

  return result;
}

unint64_t sub_1A492E584()
{
  result = qword_1EB145270;
  if (!qword_1EB145270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145270);
  }

  return result;
}

void sub_1A492E5D8()
{
  if (!qword_1EB145278)
  {
    sub_1A492E190();
    sub_1A492E268();
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145278);
    }
  }
}

unint64_t sub_1A492E6E4()
{
  result = qword_1EB145280;
  if (!qword_1EB145280)
  {
    sub_1A492DF30(255, &qword_1EB145218, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145280);
  }

  return result;
}

unint64_t sub_1A492E758()
{
  result = qword_1EB145298;
  if (!qword_1EB145298)
  {
    sub_1A492DD90();
    sub_1A492E828(&qword_1EB1452A0, sub_1A492DDF8, sub_1A492E898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145298);
  }

  return result;
}

uint64_t sub_1A492E828(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A492E898()
{
  result = qword_1EB1452A8;
  if (!qword_1EB1452A8)
  {
    sub_1A492E000(255, &qword_1EB145220, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F960]);
    sub_1A492E9E8();
    sub_1A492E268();
    sub_1A3E42888(255);
    sub_1A492E3C8();
    sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1452A8);
  }

  return result;
}

unint64_t sub_1A492E9E8()
{
  result = qword_1EB1452B0;
  if (!qword_1EB1452B0)
  {
    sub_1A492DFB8(255);
    sub_1A492A990(&qword_1EB1452B8, 255, sub_1A492E084);
    sub_1A492A990(&qword_1EB1452C0, 255, sub_1A492E5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1452B0);
  }

  return result;
}

uint64_t sub_1A492EADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A492EB54()
{
  sub_1A492BCBC(&v1);
  sub_1A492E268();
  sub_1A3E42888(0);
  sub_1A492E3C8();
  sub_1A492A990(&qword_1EB1270A8, 255, sub_1A3E42888);
  sub_1A524A954();
  return sub_1A492EADC(&v1, sub_1A492E268);
}

uint64_t sub_1A492EC54(uint64_t a1, uint64_t a2)
{
  sub_1A492ECD4(0, &qword_1EB1452E0, MEMORY[0x1E697F948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A492ECD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A492E314(255, &qword_1EB145250, &type metadata for TitleDetailRow, &type metadata for TitleDetailRow, MEMORY[0x1E697F960]);
    v7 = a3(a1, v6, MEMORY[0x1E6981148]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A492ED64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  sub_1A492ECD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A492EDC0()
{
  result = qword_1EB139550;
  if (!qword_1EB139550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB139550);
  }

  return result;
}

void sub_1A492EE0C()
{
  if (!qword_1EB1452E8)
  {
    sub_1A492E000(255, &qword_1EB1452F0, sub_1A492EEA8, sub_1A492F0A4, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1452E8);
    }
  }
}

void sub_1A492EEA8()
{
  if (!qword_1EB1452F8)
  {
    sub_1A492EF40(255);
    sub_1A492A990(&qword_1EB145318, 255, sub_1A492EF40);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1452F8);
    }
  }
}

void sub_1A492EF74()
{
  if (!qword_1EB145308)
  {
    sub_1A492EFDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145308);
    }
  }
}

void sub_1A492EFDC()
{
  if (!qword_1EB145310)
  {
    sub_1A3DF14C0();
    sub_1A405D614();
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145310);
    }
  }
}

void sub_1A492F040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A492F114()
{
  if (!qword_1EB145330)
  {
    sub_1A3DF1428();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145330);
    }
  }
}

unint64_t sub_1A492F18C()
{
  result = qword_1EB145348;
  if (!qword_1EB145348)
  {
    sub_1A492E000(255, &qword_1EB1452F0, sub_1A492EEA8, sub_1A492F0A4, MEMORY[0x1E697F960]);
    sub_1A492A990(&qword_1EB145350, 255, sub_1A492EEA8);
    sub_1A492A990(&qword_1EB145358, 255, sub_1A492F0A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145348);
  }

  return result;
}

unint64_t sub_1A492F35C()
{
  result = qword_1EB145360;
  if (!qword_1EB145360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145360);
  }

  return result;
}

void sub_1A492F3F4()
{
  sub_1A492FC70(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A492F4D8()
{
  sub_1A52411C4();
  if (v0 <= 0x3F)
  {
    sub_1A492F5AC();
    if (v1 <= 0x3F)
    {
      sub_1A492FC70(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A492F5AC()
{
  if (!qword_1EB145368)
  {
    sub_1A492DF30(255, &qword_1EB145218, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145368);
    }
  }
}

void sub_1A492F620()
{
  sub_1A52411C4();
  if (v0 <= 0x3F)
  {
    sub_1A524DF24();
    if (v1 <= 0x3F)
    {
      sub_1A492FC70(319, &qword_1EB145370, sub_1A492FCD4, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A492FE58(319, &qword_1EB127340, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A492F73C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(v6 - 8) + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  if (v8 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v7 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = 7;
  if (!v10)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v16 < a2)
  {
    v18 = ((((v17 + v14 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v18 <= 3)
    {
      v19 = ((a2 - v16 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *&a1[v18];
        if (*&a1[v18])
        {
          goto LABEL_28;
        }
      }

      else
      {
        v22 = *&a1[v18];
        if (v22)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v21)
    {
      v22 = a1[v18];
      if (a1[v18])
      {
LABEL_28:
        v23 = (v22 - 1) << (8 * v18);
        if (v18 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v16 + (v24 | v23) + 1;
      }
    }
  }

  if (v8 == v16)
  {
    v25 = *(v7 + 48);

    return v25(a1, v8, v6);
  }

  v27 = &a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8;
  if ((v15 & 0x80000000) != 0)
  {
    if (v10 >= 2)
    {
      v29 = (*(*(*(a3 + 16) - 8) + 48))((v27 + v13 + 16) & ~v13);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(v27 + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_1A492F9A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1A52411C4();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 > v17)
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!v13)
  {
    ++v16;
  }

  v19 = ((((v16 + ((v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 < a3)
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v18 >= a2)
  {
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v19] = 0;
    }

    else if (v9)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v11 == v18)
    {
      v24 = *(v10 + 56);

      v24(a1, a2, v11, v8);
    }

    else
    {
      v25 = (&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v17 & 0x80000000) != 0)
      {
        if (v13 >= 2)
        {
          v26 = *(v12 + 56);

          v26((v25 + v15 + 16) & ~v15, (a2 + 1));
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v25 = a2 & 0x7FFFFFFF;
        v25[1] = 0;
      }

      else
      {
        v25[1] = (a2 - 1);
      }
    }

    return;
  }

  v22 = ~v18 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_28:
      if (v9 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v9 > 1)
    {
      goto LABEL_28;
    }
  }

  if (v9)
  {
    a1[v19] = v23;
  }
}

void sub_1A492FC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A492FCD4()
{
  result = qword_1EB145378;
  if (!qword_1EB145378)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB145378);
  }

  return result;
}

unint64_t sub_1A492FD54()
{
  result = qword_1EB145388;
  if (!qword_1EB145388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145388);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1A492FDF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A492FE58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A492FEA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

size_t sub_1A492FFB0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  v10 = MEMORY[0x1E69E7CA0];
  if (!v9)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A492DF30(0, &qword_1EB139440, MEMORY[0x1E69E6F90]);
  sub_1A492FE58(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_1A492FE58(0, &unk_1EB139448, v10 + 8, type metadata accessor for DebugRow);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_1A49301E0()
{
  v1 = MEMORY[0x1E69E7CA0];
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v3 = v2 - 8;
  v4 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v5 = [objc_opt_self() generalPasteboard];
  v6 = v0 + *(v3 + 40);
  v7 = MEMORY[0x1E69E6720];
  sub_1A492AA18(v6 + v4, &v9, &qword_1EB126130, v1 + 8, MEMORY[0x1E69E6720]);
  sub_1A492FE58(0, &qword_1EB126130, v1 + 8, v7);
  sub_1A524C714();
  v8 = sub_1A524C634();

  [v5 setString_];
}

uint64_t objectdestroy_64Tm_0()
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v2 = v1;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = sub_1A52411C4();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v3 + *(v2 + 32);
  if (*(v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1A493046C()
{
  sub_1A492FE58(0, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = [objc_opt_self() generalPasteboard];
  v5 = (v3 + *(v2 + 36));
  v6 = v5[1];
  v7 = *v5;
  v8 = v6;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49305F4()
{
  sub_1A4929CD8();
  type metadata accessor for DebugSection(0);
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A493072C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_1A492DF30(0, &qword_1EB145218, MEMORY[0x1E69E62F8]);
  sub_1A52411C4();
  sub_1A492E000(0, &qword_1EB145220, sub_1A492DFB8, sub_1A492E190, MEMORY[0x1E697F960]);
  sub_1A492E6E4();
  sub_1A492E898();
  sub_1A4930888();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4930888()
{
  result = qword_1EB1453B0;
  if (!qword_1EB1453B0)
  {
    sub_1A492FE58(255, &unk_1EB139448, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for DebugRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1453B0);
  }

  return result;
}

void sub_1A4930908()
{
  if (!qword_1EB1453B8)
  {
    sub_1A492E314(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1453B8);
    }
  }
}

uint64_t sub_1A493099C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4930A04()
{
  type metadata accessor for DebugInfoPanel(0);

  return sub_1A4928D44();
}

uint64_t objectdestroy_77Tm_0()
{
  v1 = (type metadata accessor for DebugInfoPanel(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  sub_1A492FC70(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v6 = *(v5 + 32);
    v7 = sub_1A52489C4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1A4930BBC()
{
  v1 = *(type metadata accessor for DebugInfoPanel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = *(*(v2 + 8) + 24);
  v5 = swift_unknownObjectRetain();
  sub_1A4929370(v5, v4, 0, v3);
  swift_unknownObjectRelease();
  v6 = [objc_opt_self() generalPasteboard];
  swift_beginAccess();
  v7 = sub_1A524C634();
  [v6 setString_];
}

void sub_1A4930CE0()
{
  v1 = *(type metadata accessor for DebugInfoPanel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = [objc_allocWithZone(PXRadarConfiguration) init];
  [v3 addDiagnosticProvider_];
  PXFileRadarWithConfiguration(v3);
}

id sub_1A4930F28(void *a1)
{
  v2 = [a1 isFaceModeEnabled] ^ 1;

  return [a1 setFaceModeEnabled_];
}

uint64_t sub_1A49310A0()
{
  v1 = [v0 viewModel];
  v2 = [v1 currentDataSource];

  v3 = [v2 container];
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_self();
      swift_unknownObjectRetain_n();
      v7 = sub_1A524C634();
      v8 = [v6 locKeyForPersonOrPet:v5 key:v7];
      swift_unknownObjectRelease();

      sub_1A524C674();
      swift_unknownObjectRelease();
    }
  }

  v9 = sub_1A524C634();

  v10 = PXLocalizedString(v9);

  v11 = sub_1A524C674();
  swift_unknownObjectRelease();

  return v11;
}

id sub_1A49313FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = v3;
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1A3F9ADFC();
  type metadata accessor for PeopleUtilities();
  sub_1A3D78594(a1);
  v13 = sub_1A524DBD4();
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v15 = result;
    v16 = [result px_localDefaults];

    [v16 setNumber:v13 forKey:@"PXPeopleHomeSortingType"];
    lemonadePeopleShelfIdentifier.getter(&v22);
    static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v22, v12);
    (*(v7 + 16))(v9, v12, v6);
    v17 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    (*(v7 + 32))(v18 + v17, v9, v6);
    v19 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x58);
    v20 = v5;
    v19(v21, v18);

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A493176C(uint64_t a1, uint64_t (*a2)(char *))
{
  sub_1A3F9ADFC();
  type metadata accessor for PeopleUtilities();
  sub_1A3D78594(a1);
  v4 = sub_1A524DBD4();
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v6 = result;
    v7 = [result px_localDefaults];

    [v7 setNumber:v4 forKey:@"PXPeopleHomeSortingType"];
    lemonadePeopleShelfIdentifier.getter(&v8);
    return a2(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A493187C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  sub_1A3F9ADFC();
  type metadata accessor for PeopleUtilities();
  v11 = a1;
  sub_1A3D78594(a3);
  v7 = sub_1A524DBD4();
  v8 = [objc_opt_self() px_systemPhotoLibrary];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 px_localDefaults];

    [v10 setNumber:v7 forKey:@"PXPeopleHomeSortingType"];
    lemonadePeopleShelfIdentifier.getter(&v12);
    a4(&v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4931CE4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v18 = *sub_1A45EF990();
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v18, v11);
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v6 + 32))(v13 + v12, v8, v5);
  v14 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v15 = a1;
  v14(a3, v13);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1A493225C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v18 = 15;
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v18, &v17[-v10]);
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  (*(v6 + 32))(v13 + v12, v8, v5);
  v14 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v15 = a1;
  v14(a3, v13);

  return (*(v6 + 8))(v11, v5);
}

void sub_1A4932440(void *a1, uint64_t a2, char a3, void (*a4)(void))
{
  v6 = a3;
  v5 = a1;
  testWithAlbumCellStyle(_:action:)(&v6, a4);
}

uint64_t sub_1A49328E4(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-v12];
  v20 = *a1(v11);
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v20, v13);
  (*(v7 + 16))(v9, v13, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  (*(v7 + 32))(v15 + v14, v9, v6);
  v16 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v17 = v3;
  v16(a3, v15);

  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_1A4932AE4(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-v13];
  v15 = a1;
  v22 = *a3();
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v22, v14);
  (*(v9 + 16))(v11, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v9 + 32))(v17 + v16, v11, v8);
  v18 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x58);
  v19 = v15;
  v18(a5, v17);

  return (*(v9 + 8))(v14, v8);
}

void sub_1A4932DB8(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *))
{
  v6 = a1;
  v7 = *a3();
  a4(&v7);
}

uint64_t sub_1A4932E20(_BYTE *a1)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  LOBYTE(a1) = *a1;
  v36 = a1;
  static LemonadeShelfUtilities.navigationURL(shelfIdentifier:)(&v36, &v30 - v13);
  v35 = a1;
  v15 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifier(shelfIdentifier:)();
  v31 = v16;
  v32 = v15;
  v17 = sub_1A5243724();
  v18 = *(*(v17 - 8) + 56);
  v33 = v7;
  v18(v7, 1, 1, v17);
  (*(v9 + 16))(v11, v14, v8);
  v19 = v7;
  v20 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4936F2C(v19, v20);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v34 + 80) + v22 + 16) & ~*(v34 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  (*(v9 + 32))(v24 + v21, v11, v8);
  v25 = (v24 + v22);
  v26 = v31;
  *v25 = v32;
  v25[1] = v26;
  sub_1A4936FAC(v20, v24 + v23);
  v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v28 = v1;
  v27(&unk_1A5374CA8, v24);

  sub_1A49371A0(v33);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_1A4933148(uint64_t a1)
{
  v1[2] = a1;
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v1[3] = swift_task_alloc();
  v1[4] = sub_1A524CC54();
  v1[5] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1A4933240;

  return sub_1A49362BC();
}

uint64_t sub_1A4933240()
{
  v2 = *v1;
  v2[7] = v0;

  v4 = sub_1A524CBC4();
  v2[8] = v4;
  v2[9] = v3;
  if (v0)
  {
    v5 = sub_1A4933768;
  }

  else
  {
    v5 = sub_1A49333A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A49333A0()
{
  v1 = *(v0 + 24);
  *(v0 + 80) = *(sub_1A4470A48() + 1);
  v2 = *MEMORY[0x1E69C2600];
  v3 = sub_1A5243724();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A493357C()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 96) = v0;

  sub_1A49371A0(v3);

  v4 = *(v2 + 72);
  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1A49337D8;
  }

  else
  {
    v6 = sub_1A49336F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1A49336F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4933768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49337D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4933848()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4933148(v2);
}

uint64_t sub_1A49338DC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1A524CC54();
  v1[4] = sub_1A524CC44();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1A493398C;

  return sub_1A49362BC();
}

uint64_t sub_1A493398C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {
    v4 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A3DDF060, v4, v3);
  }

  else
  {
    v7 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78) + **((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78));
    v5 = swift_task_alloc();
    *(v2 + 56) = v5;
    *v5 = v2;
    v5[1] = sub_1A4933BB4;

    return v7();
  }
}

uint64_t sub_1A4933BB4()
{
  *(*v1 + 64) = v0;

  v3 = sub_1A524CBC4();
  if (v0)
  {
    v4 = sub_1A3DDF0C4;
  }

  else
  {
    v4 = sub_1A3DDC7D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1A4933D10()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A49338DC(v2);
}

uint64_t sub_1A4933DA4(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1A4933EF4;
  v6.n128_u64[0] = 2.0;

  return v8(v6);
}

uint64_t sub_1A4933EF4()
{
  v2 = *v1;
  v2[7] = v0;

  v4 = sub_1A524CBC4();
  v2[8] = v4;
  v2[9] = v3;
  if (v0)
  {
    v5 = sub_1A47CF778;
  }

  else
  {
    v5 = sub_1A4934054;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4934054()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = v2;
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1A49341BC;

  return (v6)(0, 1, &unk_1A5374CB8, v1);
}

uint64_t sub_1A49341BC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A47CF7DC;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A49375A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A49342D8()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4933DA4(v4, v0 + v3);
}

uint64_t sub_1A49343B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4934448, v4, v3);
}

uint64_t sub_1A4934448()
{
  v1 = v0[2];
  v2 = sub_1A3C6E9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1A493458C;
  v5 = v0[3];

  return (v7)(v5, v2, 0);
}

uint64_t sub_1A493458C(void *a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1A446DC90;
  }

  else
  {

    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = sub_1A3DE1864;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A49346B4(_BYTE *a1)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v31 = sub_1A5240E64();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  LOBYTE(a1) = *a1;
  v38 = a1;
  v34 = &v30 - v12;
  static LemonadeShelfUtilities.navigationURLForDetailsOfShelf(withIdentifier:)(&v38, &v30 - v12);
  v37 = a1;
  v14 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  v32 = v15;
  v33 = v14;
  v16 = *MEMORY[0x1E69C25F8];
  v17 = sub_1A5243724();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v7, v16, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = v31;
  (*(v8 + 16))(v10, v13, v31);
  v20 = v35;
  sub_1A4936F2C(v7, v35);
  v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v36 + 80) + v22 + 16) & ~*(v36 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  (*(v8 + 32))(v24 + v21, v10, v19);
  v25 = (v24 + v22);
  v26 = v32;
  *v25 = v33;
  v25[1] = v26;
  sub_1A4936FAC(v20, v24 + v23);
  v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v28 = v1;
  v27(&unk_1A5374CA0, v24);

  sub_1A49371A0(v7);
  return (*(v8 + 8))(v34, v19);
}

uint64_t sub_1A4934D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_1A524CC54();
  v5[8] = sub_1A524CC44();
  v7 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v11 = (*MEMORY[0x1E69E7D40] & *a1) + 160;
  v5[9] = v7;
  v5[10] = v11 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v5[11] = v8;
  *v8 = v5;
  v8[1] = sub_1A4934E9C;
  v9.n128_u64[0] = 2.0;

  return v12(v9);
}

uint64_t sub_1A4934E9C()
{
  v2 = *v1;
  v2[12] = v0;

  v4 = sub_1A524CBC4();
  v2[13] = v4;
  v2[14] = v3;
  if (v0)
  {
    v5 = sub_1A4935674;
  }

  else
  {
    v5 = sub_1A4934FFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4934FFC()
{
  v1 = v0[2];
  v2 = sub_1A3C6E9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1A4935140;
  v5 = v0[3];

  return v7(v5, v2, 1);
}

uint64_t sub_1A4935140(void *a1)
{
  v4 = *v2;
  v4[16] = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];

    return MEMORY[0x1EEE6DFA0](sub_1A49356D8, v5, v6);
  }

  else
  {
    v7 = v4[9];

    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    v4[17] = v8;
    *v8 = v4;
    v8[1] = sub_1A4935320;
    v9.n128_u64[0] = 1.0;

    return v11(v9);
  }
}

uint64_t sub_1A4935320()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1A493573C, v3, v4);
  }

  else
  {
    v10 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x68) + **((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x68));
    v5 = swift_task_alloc();
    *(v2 + 152) = v5;
    *v5 = v2;
    v5[1] = sub_1A4935538;
    v6 = *(v2 + 40);
    v7 = *(v2 + 48);
    v8 = *(v2 + 32);

    return v10(v8, v6, v7);
  }
}

uint64_t sub_1A4935538()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_1A49357A0;
  }

  else
  {
    v5 = sub_1A3FC0550;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4935674()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49356D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A493573C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49357A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4935804(void *a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xA0);
  v8 = (*MEMORY[0x1E69E7D40] & *a1) + 160;
  v2[6] = v4;
  v2[7] = v8 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_1A4935960;
  v6.n128_u64[0] = 2.0;

  return v9(v6);
}

uint64_t sub_1A4935960()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_1A524CBC4();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_1A493612C;
  }

  else
  {
    v5 = sub_1A4935AC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4935AC0()
{
  v1 = v0[2];
  v2 = sub_1A3C6E9EC();
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1A4935C04;
  v5 = v0[3];

  return v7(v5, v2, 1);
}

uint64_t sub_1A4935C04(void *a1)
{
  v4 = *v2;
  v4[13] = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];

    return MEMORY[0x1EEE6DFA0](sub_1A4936190, v5, v6);
  }

  else
  {
    v7 = v4[6];

    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    v4[14] = v8;
    *v8 = v4;
    v8[1] = sub_1A4935DE4;
    v9.n128_u64[0] = 1.0;

    return v11(v9);
  }
}

uint64_t sub_1A4935DE4()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);

    return MEMORY[0x1EEE6DFA0](sub_1A49361F4, v3, v4);
  }

  else
  {
    v7 = (*((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78) + **((*MEMORY[0x1E69E7D40] & **(v2 + 16)) + 0x78));
    v5 = swift_task_alloc();
    *(v2 + 128) = v5;
    *v5 = v2;
    v5[1] = sub_1A4935FF0;

    return v7();
  }
}

uint64_t sub_1A4935FF0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A4936258;
  }

  else
  {
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A493612C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4936190()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49361F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4936258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49362BC()
{
  v1[2] = v0;
  sub_1A3C4D338(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v1[3] = swift_task_alloc();
  v1[4] = sub_1A524CC54();
  v1[5] = sub_1A524CC44();
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0);
  v6 = (*MEMORY[0x1E69E7D40] & *v0) + 160;
  v1[6] = v2;
  v1[7] = v6 & 0xFFFFFFFFFFFFLL | 0xA51D000000000000;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_1A4936460;
  v4.n128_u64[0] = 2.0;

  return v7(v4);
}

uint64_t sub_1A4936460()
{
  v2 = *v1;
  v2[9] = v0;

  v4 = sub_1A524CBC4();
  v2[10] = v4;
  v2[11] = v3;
  if (v0)
  {
    v5 = sub_1A4936ADC;
  }

  else
  {
    v5 = sub_1A49365C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A49365C0()
{
  v1 = v0[3];
  sub_1A5240E34();
  v2 = sub_1A5240E64();
  v0[12] = v2;
  v3 = *(v2 - 8);
  v0[13] = v3;
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v6 = sub_1A3C6E9EC();
    v7 = sub_1A3C5A374();
    v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1A4936790;
    v10 = v0[3];

    return (v11)(v10, v6, v7 & 1);
  }

  return result;
}

uint64_t sub_1A4936790(void *a1)
{
  v4 = *v2;
  v4[15] = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];

    return MEMORY[0x1EEE6DFA0](sub_1A4936B48, v5, v6);
  }

  else
  {
    v7 = v4[12];
    v8 = v4[13];
    v9 = v4[6];
    v10 = v4[3];

    (*(v8 + 8))(v10, v7);
    v14 = (v9 + *v9);
    v11 = swift_task_alloc();
    v4[16] = v11;
    *v11 = v4;
    v11[1] = sub_1A49369A0;
    v12.n128_u64[0] = 1.0;

    return v14(v12);
  }
}

uint64_t sub_1A49369A0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A4936BDC;
  }

  else
  {
    v5 = sub_1A4937484;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}