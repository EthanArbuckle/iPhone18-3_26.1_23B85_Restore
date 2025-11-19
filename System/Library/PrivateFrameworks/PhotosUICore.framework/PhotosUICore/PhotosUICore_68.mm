uint64_t sub_1A44BF3D8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  sub_1A44C2B68(255, &qword_1EB13C428, sub_1A44C6BC0, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  v4 = v3;
  v29 = v3;
  v5 = a1[2];
  v25 = a1[3];
  v6 = a1[5];
  v24 = a1[4];
  v28 = type metadata accessor for SharedAlbumsSection.PickerView();
  v27 = sub_1A44C6DB0();
  WitnessTable = swift_getWitnessTable();
  v42 = v4;
  v43 = v28;
  v44 = v27;
  v45 = WitnessTable;
  v7 = sub_1A5248454();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = swift_getWitnessTable();
  v23[1] = v11;
  v12 = sub_1A44C6EA0();
  v42 = v7;
  v43 = &type metadata for SharedAlbumsSection.NavigationLinkButtonStyle;
  v44 = v11;
  v45 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v23 - v18;
  v37 = v5;
  v38 = v25;
  v39 = v24;
  v40 = v6;
  v41 = v30;
  v32 = v5;
  v33 = v25;
  v34 = v24;
  v35 = v6;
  v36 = v30;
  sub_1A44C0170(sub_1A44C6EF4);
  sub_1A524A944();
  (*(v8 + 8))(v10, v7);
  v20 = *(v14 + 16);
  v20(v19, v16, OpaqueTypeMetadata2);
  v21 = *(v14 + 8);
  v21(v16, OpaqueTypeMetadata2);
  v20(v31, v19, OpaqueTypeMetadata2);
  return (v21)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1A44BF774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v42 = a6;
  v11 = sub_1A524B974();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v14 = a5;
  v39 = a5;
  v15 = type metadata accessor for SharedAlbumsSection.PickerView();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = v14;
  v22 = type metadata accessor for SharedAlbumsSection.NavigationButton();
  sub_1A524B974();
  sub_1A524B924();
  v23 = *(v22 + 60);
  v24 = (a1 + *(v22 + 56));
  v25 = *v24;
  v26 = v24[1];
  v27 = a1 + v23;
  v28 = *(a1 + v23);
  v29 = *(v27 + 8);
  v37 = v25;
  v38 = v28;
  *v18 = swift_getKeyPath();
  sub_1A44C24C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = v39;
  v30 = type metadata accessor for SharedAlbumsSection.PickerView();
  (*(v40 + 32))(v18 + v30[13], v13, v41);
  v31 = (v18 + v30[14]);
  v32 = v38;
  *v31 = v37;
  v31[1] = v26;
  v33 = (v18 + v30[15]);
  *v33 = v32;
  v33[1] = v29;
  swift_getWitnessTable();
  v34 = *(v16 + 16);
  v34(v21, v18, v15);
  v35 = *(v16 + 8);

  v35(v18, v15);
  v34(v42, v21, v15);
  return (v35)(v21, v15);
}

void sub_1A44BFA74()
{
  sub_1A44C6BC0();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A44C2B68(0, &qword_1EB13C470, sub_1A44C6BC0, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for SharedAlbumsSection.NavigationButton();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44BFDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v6 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v8 = [*v7 uuid];
  v9 = sub_1A524C674();
  v11 = v10;

  type metadata accessor for SharedAlbumsSection.NavigationButton();
  v12 = sub_1A524B974();
  MEMORY[0x1A5906C60](v12);
  if (swift_dynamicCast())
  {
    if (v9 == a3 && v11 == a4)
    {

      v14 = 1;
    }

    else
    {
      v14 = sub_1A524EAB4();
    }
  }

  else
  {

    v14 = 0;
  }

  return v14 & 1;
}

void sub_1A44BFF38(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - v18;
  *&v30 = a3;
  *(&v30 + 1) = a4;
  v31 = a5;
  v32 = a6;
  v20 = type metadata accessor for SharedAlbumsSection.NavigationButton();
  v21 = (*(a1 + *(v20 + 60)))();
  v23 = v22;
  LOBYTE(a3) = v24;
  v26 = v25;
  *v19 = a2;
  v29[1] = 0;
  sub_1A44C2458(0, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  v27 = a2;
  sub_1A524B694();
  *(v19 + 8) = v30;
  *&v30 = 0x4040000000000000;
  sub_1A3F185D4();
  sub_1A52480C4();
  sub_1A44C800C(v19, v16, type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  *a7 = v21;
  *(a7 + 8) = v23;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = v26;
  *(a7 + 32) = 0;
  *(a7 + 40) = 1;
  sub_1A44C6D28();
  sub_1A44C800C(v16, a7 + *(v28 + 64), type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  sub_1A3E75E68(v21, v23, a3 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44C0170(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return sub_1A5248444();
}

void sub_1A44C0244()
{
  sub_1A5249314();
  v0[408] = 1;
  sub_1A44C0478(v0);
}

void sub_1A44C0478(uint64_t a1@<X8>)
{
  v37 = sub_1A524B554();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5242264();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  sub_1A52480D4();
  sub_1A52480D4();
  sub_1A524BC74();
  sub_1A52481F4();
  v46 = v61;
  v9 = v62;
  v39 = v63;
  v10 = v64;
  v43 = v62;
  v44 = v64;
  v41 = v66;
  v42 = v65;
  v40 = sub_1A524B414();
  KeyPath = swift_getKeyPath();
  v60 = v9;
  v58 = v10;
  v38 = sub_1A524BC74();
  v12 = v11;
  *v8 = 1937075312;
  v8[1] = 0xE400000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E69C1D38], v5);
  sub_1A5242B94();
  (*(v6 + 8))(v8, v5);
  v13 = v37;
  (*(v2 + 104))(v4, *MEMORY[0x1E6981630], v37);
  v14 = sub_1A524B5C4();

  (*(v2 + 8))(v4, v13);
  v15 = sub_1A524B3C4();
  v16 = swift_getKeyPath();
  LOBYTE(v8) = sub_1A524A064();
  sub_1A5247BC4();
  *(&v68 + 2) = v55;
  WORD3(v68) = v56;
  HIDWORD(v69) = *&v54[3];
  *(&v69 + 9) = *v54;
  DWORD1(v72) = *(&v90 + 3);
  *(&v72 + 1) = v90;
  *&v67 = v14;
  *(&v67 + 1) = 0x3FF0000000000000;
  LOWORD(v68) = 0;
  *(&v68 + 1) = v16;
  *&v69 = v15;
  BYTE8(v69) = v8;
  *&v70 = v17;
  *(&v70 + 1) = v18;
  *&v71 = v19;
  *(&v71 + 1) = v20;
  LOBYTE(v72) = 0;
  *(&v72 + 1) = v38;
  v73 = v12;
  v51 = v71;
  v52 = v72;
  v53 = v12;
  v49 = v69;
  v50 = v70;
  v47 = v67;
  v48 = v68;
  v74[0] = v14;
  v74[1] = 0x3FF0000000000000;
  v75 = 0;
  v77 = v56;
  v76 = v55;
  v78 = v16;
  v79 = v15;
  v80 = v8;
  *&v81[3] = *&v54[3];
  *v81 = *v54;
  v82 = v17;
  v83 = v18;
  v84 = v19;
  v85 = v20;
  v86 = 0;
  *&v87[3] = *(&v90 + 3);
  *v87 = v90;
  v88 = v38;
  v89 = v12;
  sub_1A44C800C(&v67, v101, sub_1A44C41A0);
  sub_1A44C5414(v74, sub_1A44C41A0);
  v101[0] = sub_1A3C38BD4();
  v101[1] = v21;
  sub_1A3D5F9DC();
  v22 = sub_1A524A464();
  v24 = v23;
  *&v90 = v46;
  BYTE8(v90) = v43;
  *(&v90 + 9) = *v59;
  HIDWORD(v90) = *&v59[3];
  *&v91 = v39;
  BYTE8(v91) = v44;
  *(&v91 + 9) = *v57;
  HIDWORD(v91) = *&v57[3];
  *&v92 = v42;
  *(&v92 + 1) = v41;
  *&v93 = KeyPath;
  *(&v93 + 1) = v40;
  v94 = v47;
  v95 = v48;
  v100 = v53;
  v98 = v51;
  v99 = v52;
  v96 = v49;
  v97 = v50;
  v26 = v25 & 1;
  v60 = v25 & 1;
  v27 = v91;
  *a1 = v90;
  *(a1 + 16) = v27;
  v28 = v92;
  v29 = v93;
  v30 = v95;
  *(a1 + 64) = v94;
  *(a1 + 80) = v30;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  v31 = v96;
  v32 = v97;
  v33 = v99;
  v34 = v100;
  *(a1 + 128) = v98;
  *(a1 + 144) = v33;
  *(a1 + 96) = v31;
  *(a1 + 112) = v32;
  *(a1 + 160) = v34;
  *(a1 + 168) = v22;
  *(a1 + 176) = v23;
  *(a1 + 184) = v25 & 1;
  *(a1 + 192) = v35;
  sub_1A44C800C(&v90, v101, sub_1A44C4090);
  sub_1A3E75E68(v22, v24, v26);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44C0A88@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A44C42B4();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = sub_1A5249314();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A44C6FC4();
  sub_1A44C0CE8(v1, &v9[*(v10 + 44)]);
  v9[*(v7 + 44)] = 0;
  v11 = [*v1 uuid];
  v12 = sub_1A524C674();
  v14 = v13;

  sub_1A44C7FA4(v9, a1, sub_1A44C42B4);
  sub_1A44C44A0();
  v16 = a1 + *(v15 + 36);
  *v16 = v12;
  *(v16 + 8) = v14;
  *(v16 + 16) = 1;
  sub_1A44C800C(v1, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_1A44C7FA4(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for SharedAlbumsSection.SharedAlbumCell);
  sub_1A44C2AF4(0, &qword_1EB13C488, sub_1A44C70F8, MEMORY[0x1E697C028]);
  v20 = (a1 + *(v19 + 36));
  sub_1A5248394();
  result = sub_1A524CC74();
  *v20 = &unk_1A5342390;
  v20[1] = v18;
  return result;
}

id sub_1A44C0CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v67 = a2;
  v73 = sub_1A5243834();
  v3 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44C24C0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - v6;
  v71 = sub_1A5243EC4();
  v8 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4178098(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4178070(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4177FC8(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v66 - v24;
  v77 = *(a1 + 8);
  sub_1A44C64E4();
  sub_1A524B6A4();
  v80 = 0u;
  v81 = 0u;
  v82 = 1;
  v25 = sub_1A52429A4();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  (*(v3 + 104))(v69, *MEMORY[0x1E69C2678], v73);
  sub_1A5243ED4();
  (*(v8 + 32))(v14, v10, v71);
  v26 = &v14[*(v12 + 44)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 256;
  type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0);
  sub_1A44C6384(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  v27 = v68;
  sub_1A52480D4();
  v28 = v27;
  sub_1A52480D4();
  sub_1A524BC74();
  sub_1A52481F4();
  v29 = v74;
  sub_1A44C7FA4(v14, v74, sub_1A4178098);
  v30 = (v29 + *(v16 + 44));
  v31 = v78;
  *v30 = v77;
  v30[1] = v31;
  v30[2] = v79;
  v32 = *(v19 + 44);
  v33 = v70;
  v34 = v72;
  v35 = &v72[v32];
  v36 = *(sub_1A5248A14() + 20);
  v37 = *MEMORY[0x1E697F468];
  v38 = sub_1A52494A4();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  __asm { FMOV            V0.2D, #10.0 }

  *v35 = _Q0;
  sub_1A3E42C88();
  *&v35[*(v44 + 36)] = 256;
  sub_1A44C7FA4(v29, v34, sub_1A4178070);
  sub_1A44C7FA4(v34, v33, sub_1A4177FC8);
  result = [*v28 localizedTitle];
  if (result)
  {
    v46 = result;
    v47 = sub_1A524C674();
    v49 = v48;

    v75 = v47;
    v76 = v49;
    sub_1A3D5F9DC();
    v50 = sub_1A524A464();
    v52 = v51;
    v54 = v53;
    sub_1A524B484();
    v55 = sub_1A524A364();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    sub_1A3E04DF4(v50, v52, v54 & 1);

    v62 = v66;
    sub_1A44C800C(v33, v66, sub_1A4177FC8);
    v63 = v67;
    sub_1A44C800C(v62, v67, sub_1A4177FC8);
    sub_1A44C441C(0);
    v65 = v63 + *(v64 + 48);
    *v65 = v55;
    *(v65 + 8) = v57;
    *(v65 + 16) = v59 & 1;
    *(v65 + 24) = v61;
    sub_1A3E75E68(v55, v57, v59 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A44C13DC(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1A524CC54();
  v1[7] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A44C1478, v3, v2);
}

uint64_t sub_1A44C1478()
{
  if (sub_1A524CDC4())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = **(v0 + 40);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_1A44C1550;

    return sub_1A44C17E4(v3);
  }
}

uint64_t sub_1A44C1550(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A44C1650, 0, 0);
}

uint64_t sub_1A44C1650()
{
  *(v0 + 96) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44C16DC, v2, v1);
}

uint64_t sub_1A44C16DC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 8);
  *(v0 + 32) = v1;
  sub_1A44C64E4();
  v3 = v1;
  sub_1A524B6B4();
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1A44C177C, v4, v5);
}

uint64_t sub_1A44C177C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1A44C1804()
{
  v15 = v0;
  result = [*(v0 + 16) photoLibrary];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = *(v0 + 16);
  PHPhotoLibrary.fetcher.getter();

  v4 = sub_1A3C6E9EC();
  PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(1, v4, 0, 0, 0, &v13);
  v5 = v14;
  v11 = 4;
  v12 = 0;
  v6 = PhotoKitFetcher.fetch(_:for:options:)(&v11, v3, &v13);
  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 firstObject];

  if (!v8)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_7;
  }

LABEL_8:
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1A44C1980()
{
  sub_1A44C4F30();
  sub_1A44C4FC8();
  sub_1A44C530C();
  swift_getOpaqueTypeConformance2();
  return sub_1A524BA54();
}

void sub_1A44C1A34()
{
  sub_1A44C24C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v11 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v12 = sub_1A5240D44();
  v13 = [v11 initWithPhotoLibraryURL_];

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  type metadata accessor for LemonadePhotoLibraryContext();
  v15 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v13, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v19);
  v16 = sub_1A3C799F0(v5, 0, 0, 0, v2, &v19, v15, 2);
  type metadata accessor for SharedAlbumActionViewModel();

  v17 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v16, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v17 & 1, 0, 0, 0, 0);
}

uint64_t sub_1A44C1E60(uint64_t a1)
{
  v2 = sub_1A44C5C5C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A44C1EAC(uint64_t a1)
{
  v2 = sub_1A44C5C5C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A44C1EF8(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v24 = a1;
  v27 = type metadata accessor for SharedAlbumAddToView(0);
  MEMORY[0x1EEE9AC00](v27);
  sub_1A44C24C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v14 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v15 = sub_1A5240D44();
  v16 = [v14 initWithPhotoLibraryURL_];

  (*(v10 + 8))(v12, v9);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  type metadata accessor for LemonadePhotoLibraryContext();
  v23 = v16;
  v18 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v23, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v28);
  sub_1A3C799F0(v8, 0, 0, 0, v5, &v28, v18, 2);
  type metadata accessor for SharedAlbumActionViewModel();
  sub_1A44C6320(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A52F9790;
  v20 = v24;
  *(v19 + 32) = v24;

  v21 = v20;
  sub_1A3D607F0(v25);
  sub_1A3C30368();
  v22 = v21;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44C2458(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1A44C24C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44C2544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v27 = a5;
  v24 = a1;
  v25 = a3;
  v28 = type metadata accessor for SharedAlbumAddToView(0);
  MEMORY[0x1EEE9AC00](v28);
  sub_1A44C24C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v16 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v17 = sub_1A5240D44();
  v18 = [v16 initWithPhotoLibraryURL_];

  (*(v12 + 8))(v14, v11);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  type metadata accessor for LemonadePhotoLibraryContext();
  v23 = v18;
  v20 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v23, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v29);
  sub_1A3C799F0(v10, 0, 0, 0, v7, &v29, v20, 2);
  v22 = type metadata accessor for SharedAlbumActionViewModel();
  sub_1A44C6320(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A52F9790;
  *(v21 + 32) = v24;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44C2AF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A44C2B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A44C2BD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A44C2C1C()
{
  if (!qword_1EB13C238)
  {
    sub_1A44C2CB0(255);
    sub_1A44C2BD4(&qword_1EB13C2C0, sub_1A44C2CB0);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C238);
    }
  }
}

void sub_1A44C2CE4()
{
  if (!qword_1EB13C248)
  {
    sub_1A44C5480(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    sub_1A44C2D80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13C248);
    }
  }
}

void sub_1A44C2DBC()
{
  if (!qword_1EB13C258)
  {
    sub_1A44C2F2C();
    sub_1A44C3064();
    sub_1A3D6DF58();
    sub_1A41278A0();
    sub_1A44C3104(255);
    sub_1A44C33E0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A4127958();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C258);
    }
  }
}

void sub_1A44C2F2C()
{
  if (!qword_1EB13C260)
  {
    sub_1A44C3064();
    sub_1A3D6DF58();
    sub_1A41278A0();
    sub_1A44C3104(255);
    sub_1A44C33E0();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A4127958();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C260);
    }
  }
}

void sub_1A44C3064()
{
  if (!qword_1EB13C268)
  {
    sub_1A44C3104(255);
    sub_1A44C33E0();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C268);
    }
  }
}

void sub_1A44C3140()
{
  if (!qword_1EB13C278)
  {
    sub_1A44C31D4(255);
    sub_1A44C2BD4(&qword_1EB13C2A8, sub_1A44C31D4);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C278);
    }
  }
}

void sub_1A44C3208()
{
  if (!qword_1EB13C288)
  {
    type metadata accessor for SharedAlbumPreviewsSection();
    sub_1A44C3298(255);
    sub_1A44C3380();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13C288);
    }
  }
}

void sub_1A44C32CC()
{
  if (!qword_1EB13C298)
  {
    _s12PhotosUICore14CommentSectionVMa_0(255);
    sub_1A44C5480(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C298);
    }
  }
}

void sub_1A44C3380()
{
  if (!qword_1EB13C2A0)
  {
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C2A0);
    }
  }
}

unint64_t sub_1A44C33E0()
{
  result = qword_1EB13C2B0;
  if (!qword_1EB13C2B0)
  {
    sub_1A44C3104(255);
    sub_1A44C2BD4(&qword_1EB13C2B8, sub_1A44C3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C2B0);
  }

  return result;
}

void sub_1A44C34C4()
{
  if (!qword_1EB13C2D0)
  {
    sub_1A44C2C1C();
    sub_1A44C2BD4(&qword_1EB13C2D8, sub_1A44C2C1C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C2D0);
    }
  }
}

void sub_1A44C3578()
{
  if (!qword_1EB13C2E0)
  {
    sub_1A44C3490(255);
    sub_1A4034670(255);
    sub_1A44C3660();
    sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C2E0);
    }
  }
}

unint64_t sub_1A44C3660()
{
  result = qword_1EB13C2E8;
  if (!qword_1EB13C2E8)
  {
    sub_1A44C3490(255);
    sub_1A44C2C1C();
    sub_1A44C2BD4(&qword_1EB13C2D8, sub_1A44C2C1C);
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB12BF60, sub_1A3D9D48C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C2E8);
  }

  return result;
}

uint64_t sub_1A44C3770(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_1A44C3814()
{
  if (!qword_1EB13C300)
  {
    sub_1A44C2CB0(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C300);
    }
  }
}

void sub_1A44C387C()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x340))(v0);

  if (v2)
  {
    sub_1A524B6A4();
    (*((*v1 & *v3) + 0x348))(0);
  }
}

uint64_t objectdestroyTm_55()
{
  v1 = type metadata accessor for SharedAlbumAddToView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_1A44C24C0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A44C2458(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v0 + v2, 1, v4))
    {
      (*(v6 + 8))(v0 + v2, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A44C3BD0()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x550))(v0);

  if (v1)
  {
    sub_1A44BACA4(v1);
  }
}

uint64_t sub_1A44C3CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44C3D54()
{
  if (!qword_1EB13C308)
  {
    sub_1A44C3DE8();
    sub_1A44C5480(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C308);
    }
  }
}

void sub_1A44C3DE8()
{
  if (!qword_1EB13C310)
  {
    sub_1A44C3578();
    sub_1A44C3490(255);
    sub_1A4034670(255);
    sub_1A44C3660();
    sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C310);
    }
  }
}

void sub_1A44C3F08()
{
  if (!qword_1EB13C318)
  {
    sub_1A44C3FA8();
    sub_1A44C6384(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C318);
    }
  }
}

void sub_1A44C3FA8()
{
  if (!qword_1EB13C320)
  {
    sub_1A44C403C(255);
    sub_1A44C2BD4(&qword_1EB13C368, sub_1A44C403C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C320);
    }
  }
}

void sub_1A44C4090()
{
  if (!qword_1EB13C338)
  {
    sub_1A44C4118(255, &qword_1EB13C340, &qword_1EB13C348, MEMORY[0x1E6981EF8], MEMORY[0x1E697E048]);
    sub_1A44C41A0();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C338);
    }
  }
}

void sub_1A44C4118(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A44C5480(255, a3, a4, a5, MEMORY[0x1E697E830]);
    sub_1A3D6D248();
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A44C41A0()
{
  if (!qword_1EB13C350)
  {
    sub_1A44C4234();
    sub_1A44C54D4(&qword_1EB13C360, sub_1A44C4234, sub_1A3FA91E8);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C350);
    }
  }
}

void sub_1A44C4234()
{
  if (!qword_1EB13C358)
  {
    sub_1A44C4118(255, &qword_1EB12EA88, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C358);
    }
  }
}

void sub_1A44C42B4()
{
  if (!qword_1EB13C370)
  {
    sub_1A44C4354();
    sub_1A44C6384(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C370);
    }
  }
}

void sub_1A44C4354()
{
  if (!qword_1EB13C378)
  {
    sub_1A44C43E8(255);
    sub_1A44C2BD4(&qword_1EB13C390, sub_1A44C43E8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C378);
    }
  }
}

void sub_1A44C443C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A44C44A0()
{
  if (!qword_1EB13C398)
  {
    sub_1A44C42B4();
    sub_1A44C5480(255, &qword_1EB13C3A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E6980498]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C398);
    }
  }
}

unint64_t sub_1A44C4538()
{
  result = qword_1EB13C3A8;
  if (!qword_1EB13C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3A8);
  }

  return result;
}

unint64_t sub_1A44C45C8()
{
  result = qword_1EB13C3B0;
  if (!qword_1EB13C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3B0);
  }

  return result;
}

void sub_1A44C4670()
{
  sub_1A44C24C0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A44C473C()
{
  sub_1A44C24C0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4128338();
    if (v1 <= 0x3F)
    {
      sub_1A44C24C0(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A3C52C70(319, &qword_1EB12B5D8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A44C4870()
{
  result = qword_1EB13C3B8;
  if (!qword_1EB13C3B8)
  {
    sub_1A44C3D54();
    sub_1A44C3578();
    sub_1A44C3490(255);
    sub_1A4034670(255);
    sub_1A44C3660();
    sub_1A44C3770(&qword_1EB13C2F0, sub_1A4034670, sub_1A44C37E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3B8);
  }

  return result;
}

void sub_1A44C49F4()
{
  sub_1A44C24C0(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A44C24C0(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A44C5480(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A44C4B5C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  swift_getKeyPath();
  v18 = v24;
  sub_1A44C24C0(0, &qword_1EB13E370, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v17 = v24;
  v3 = v25;

  v4 = sub_1A524B6A4();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x1D8))(v4);

  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;
  *&v24 = v2;
  *(&v24 + 1) = v1;

  v8 = v2;
  v9 = sub_1A524B6A4();
  v10 = (*((*v5 & *v18) + 0x6F8))(v9);

  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10 & 1;
  *&v19 = v6;
  *(&v19 + 1) = sub_1A44C53BC;
  *&v20 = v7;
  *(&v20 + 1) = sub_1A44BD570;
  *&v21 = 0;
  *(&v21 + 1) = KeyPath;
  *&v22 = sub_1A3E07024;
  *(&v22 + 1) = v12;
  *&v24 = v8;
  *(&v24 + 1) = v1;
  v13 = sub_1A524B6A4();
  (*((*v5 & *v2) + 0x370))(v13);

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v1;
  sub_1A44C4FC8();
  sub_1A44C530C();
  v15 = v8;

  sub_1A524B154();

  v27 = v20;
  v28 = v21;
  v29 = v22;
  v24 = v17;
  v25 = v3;
  v26 = v19;
  return sub_1A44C5414(&v24, sub_1A44C4FC8);
}

void sub_1A44C4F30()
{
  if (!qword_1EB13C3C0)
  {
    sub_1A44C4FC8();
    sub_1A44C530C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C3C0);
    }
  }
}

void sub_1A44C4FC8()
{
  if (!qword_1EB13C3C8)
  {
    sub_1A44C5054();
    sub_1A44C6320(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C3C8);
    }
  }
}

void sub_1A44C5054()
{
  if (!qword_1EB13C3D0)
  {
    sub_1A44C5104(255);
    sub_1A44C2BD4(&qword_1EB13C3F8, sub_1A44C5104);
    v0 = type metadata accessor for SharedAlbumsSection.NavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C3D0);
    }
  }
}

void sub_1A44C518C()
{
  if (!qword_1EB13C3E8)
  {
    sub_1A44C2458(255, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
    type metadata accessor for SharedAlbumsSection.SharedAlbumCell(255);
    sub_1A44C5270();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C3E8);
    }
  }
}

unint64_t sub_1A44C5270()
{
  result = qword_1EB13C3F0;
  if (!qword_1EB13C3F0)
  {
    sub_1A44C2458(255, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C3F0);
  }

  return result;
}

unint64_t sub_1A44C530C()
{
  result = qword_1EB13C400;
  if (!qword_1EB13C400)
  {
    sub_1A44C4FC8();
    sub_1A44C53CC(qword_1EB1C4400, sub_1A44C5054);
    sub_1A3E72758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C400);
  }

  return result;
}

uint64_t sub_1A44C53CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A44C5414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44C5480(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A44C54D4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A44C5558(uint64_t a1, uint64_t a2)
{
  v4 = *(_s12PhotosUICore14CommentSectionVMa_0(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1A44BCCDC(a2, v5);
}

uint64_t objectdestroy_68Tm_0()
{
  v1 = _s12PhotosUICore14CommentSectionVMa_0(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A44C24C0(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5249A94();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v0 + v2, 1, v3))
    {
      (*(v4 + 8))(v0 + v2, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A44C5780()
{
  _s12PhotosUICore14CommentSectionVMa_0(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A44C5480(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  sub_1A5247C04();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x348))(v0);
}

uint64_t sub_1A44C58F8()
{
  _s12PhotosUICore14CommentSectionVMa_0(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x340))(v0);

  sub_1A44C5480(0, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
  return sub_1A5247C14();
}

void sub_1A44C5A78()
{
  v1 = (_s12PhotosUICore14CommentSectionVMa_0(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v3 = sub_1A524B6A4();
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x310))(v3);

  v5 = sub_1A3DD1E84(*(v2 + v1[9]));
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x1A5907AC0](v5, v7, v9, v11);
  v14 = v13;

  (*((*v4 & *v15) + 0x318))(v12, v14);
}

unint64_t sub_1A44C5C5C()
{
  result = qword_1EB13C408;
  if (!qword_1EB13C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C408);
  }

  return result;
}

void sub_1A44C5CB0(char a1)
{
  v3 = type metadata accessor for SharedAlbumAddToView(0);
  v4 = (v1 + *(v3 + 24) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));
  v6 = *v4;
  v5 = v4[1];
  v8[0] = v6;
  v8[1] = v5;
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (a1)
  {
    LOBYTE(v8[0]) = 1;
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x4F8))(v8);
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x6E0))(0, 0);
  }
}

void sub_1A44C5E70()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x6E0))(0, 0);
}

void sub_1A44C5F7C()
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x650))(v0);

  v2 = sub_1A524B6A4();
  v3 = (*((*v1 & *v4) + 0x550))(v2);

  if (v3)
  {
    sub_1A44BACA4(v3);
  }
}

uint64_t sub_1A44C6108()
{
  v1 = *(type metadata accessor for SharedAlbumAddToView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A44BB510(v2);
}

void sub_1A44C6168(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SharedAlbumAddToView(0);
  sub_1A44C24C0(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x6E0))(a1, a2);
}

uint64_t sub_1A44C6284(uint64_t a1, uint64_t a2)
{
  sub_1A44C2B68(0, &qword_1EB132C88, sub_1A4126ED4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A44C6320(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A44C6384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44C6400()
{
  sub_1A3C52C70(319, &qword_1EB126AC0);
  if (v0 <= 0x3F)
  {
    sub_1A44C64E4();
    if (v1 <= 0x3F)
    {
      sub_1A44C6384(319, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A44C64E4()
{
  if (!qword_1EB13C410)
  {
    sub_1A44C2458(255, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C410);
    }
  }
}

void sub_1A44C6590()
{
  sub_1A44C6384(319, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A44C6634()
{
  sub_1A524B974();
  if (v0 <= 0x3F)
  {
    sub_1A44C2458(319, &qword_1EB140620, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A44C6700(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((*(*(*(a3 + 24) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1A44C6860(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1A44C6A44()
{
  result = qword_1EB13C418;
  if (!qword_1EB13C418)
  {
    sub_1A44C6B0C();
    sub_1A44C4FC8();
    sub_1A44C530C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C418);
  }

  return result;
}

void sub_1A44C6B0C()
{
  if (!qword_1EB13C420)
  {
    sub_1A44C4F30();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C420);
    }
  }
}

void sub_1A44C6BC0()
{
  if (!qword_1EB13C430)
  {
    sub_1A44C6C60();
    sub_1A44C6384(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C430);
    }
  }
}

void sub_1A44C6C60()
{
  if (!qword_1EB13C438)
  {
    sub_1A44C6CF4(255);
    sub_1A44C2BD4(&qword_1EB13C450, sub_1A44C6CF4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C438);
    }
  }
}

void sub_1A44C6D28()
{
  if (!qword_1EB13C448)
  {
    type metadata accessor for SharedAlbumsSection.SharedAlbumCell(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB13C448);
    }
  }
}

unint64_t sub_1A44C6DB0()
{
  result = qword_1EB13C458;
  if (!qword_1EB13C458)
  {
    sub_1A44C2B68(255, &qword_1EB13C428, sub_1A44C6BC0, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A44C7820(&qword_1EB13C460, sub_1A44C6BC0, &qword_1EB13C468, sub_1A44C6C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C458);
  }

  return result;
}

unint64_t sub_1A44C6EA0()
{
  result = qword_1EB16C060[0];
  if (!qword_1EB16C060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB16C060);
  }

  return result;
}

void sub_1A44C6F5C()
{
  if (!qword_1EB13C478)
  {
    sub_1A44C6CF4(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C478);
    }
  }
}

void sub_1A44C6FC4()
{
  if (!qword_1EB13C480)
  {
    sub_1A44C43E8(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C480);
    }
  }
}

uint64_t sub_1A44C702C()
{
  v2 = *(type metadata accessor for SharedAlbumsSection.SharedAlbumCell(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A44C13DC(v0 + v3);
}

void sub_1A44C70F8()
{
  if (!qword_1EB13C490)
  {
    sub_1A44C42B4();
    sub_1A44C7820(&qword_1EB13C498, sub_1A44C42B4, &qword_1EB13C4A0, sub_1A44C4354);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C490);
    }
  }
}

void sub_1A44C71D8()
{
  sub_1A44C24C0(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A524B974();
    if (v1 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A44C72A8(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  v7 = *(*(a3 + 24) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  v14 = v8 + (v10 | 7) + 1;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((v11 + ((v10 + 16) & ~v10) + (v14 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((((a1 + v14) & ~v13) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v26 = *(*(*(a3 + 24) - 8) + 48);

    return v26((v24 + v10 + 8) & ~v10);
  }

  else
  {
    v25 = *v24;
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_1A44C7494(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5248284() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + (v12 | 7) + 1;
  v15 = ((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v22 = ((((a1 + v14) & ~(v12 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v24 = *(v10 + 56);

        v24((v22 + v12 + 8) & ~v12, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      return;
    }
  }

  if (((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((*(v10 + 64) + ((v12 + 16) & ~v12) + (v14 & ~(v12 | 7)) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

unint64_t sub_1A44C76C4()
{
  result = qword_1EB13C4A8;
  if (!qword_1EB13C4A8)
  {
    sub_1A44C2AF4(255, &qword_1EB13C488, sub_1A44C70F8, MEMORY[0x1E697C028]);
    sub_1A44C42B4();
    sub_1A44C7820(&qword_1EB13C498, sub_1A44C42B4, &qword_1EB13C4A0, sub_1A44C4354);
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB128940, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C4A8);
  }

  return result;
}

uint64_t sub_1A44C7820(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A44C2BD4(a3, a4);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A44C7958@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1A44C7994()
{
  v1 = *(type metadata accessor for SharedAlbumsSection.PickerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_1A44BE86C(v2);
}

uint64_t sub_1A44C7A08(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44C24C0(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1A44C7AC4()
{
  if (!qword_1EB13C4C8)
  {
    sub_1A44C7B58(255);
    sub_1A44C2BD4(&qword_1EB13C508, sub_1A44C7B58);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C4C8);
    }
  }
}

void sub_1A44C7BC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A44C7C78()
{
  if (!qword_1EB13C4E8)
  {
    sub_1A44C7D4C(255);
    sub_1A3EE1D04();
    sub_1A44C7DE0();
    sub_1A44C2BD4(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C4E8);
    }
  }
}

void sub_1A44C7D80()
{
  if (!qword_1EB13C4F8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C4F8);
    }
  }
}

unint64_t sub_1A44C7DE0()
{
  result = qword_1EB13C500;
  if (!qword_1EB13C500)
  {
    sub_1A44C7D4C(255);
    swift_getOpaqueTypeConformance2();
    sub_1A44C2BD4(&qword_1EB127800, sub_1A3D6D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C500);
  }

  return result;
}

void sub_1A44C7EA8()
{
  if (!qword_1EB13C510)
  {
    sub_1A44C7B58(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C510);
    }
  }
}

void sub_1A44C7F10()
{
  if (!qword_1EB13C520)
  {
    sub_1A40EAF5C();
    sub_1A44C2BD4(&qword_1EB1248E8, sub_1A40EAF5C);
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C520);
    }
  }
}

uint64_t sub_1A44C7FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44C800C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A44C8074()
{
  result = qword_1EB13C528;
  if (!qword_1EB13C528)
  {
    sub_1A44C2AF4(255, &qword_1EB13C518, sub_1A44C7A88, sub_1A44C7F10);
    sub_1A44C8154();
    sub_1A44C2BD4(&qword_1EB13C540, sub_1A44C7F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C528);
  }

  return result;
}

unint64_t sub_1A44C8154()
{
  result = qword_1EB13C530;
  if (!qword_1EB13C530)
  {
    sub_1A44C7A88(255);
    sub_1A44C2BD4(&qword_1EB13C538, sub_1A44C7AC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C530);
  }

  return result;
}

double sub_1A44C8214@<D0>(uint64_t a1@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v25 = sub_1A524B544();
  sub_1A524A1A4();
  v5 = sub_1A524A154();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = sub_1A524A1B4();
  sub_1A441183C(v4);
  KeyPath = swift_getKeyPath();
  v8 = sub_1A524B4A4();
  v9 = swift_getKeyPath();
  v10 = sub_1A524A064();
  LOBYTE(v27) = 1;
  v11 = sub_1A524A064();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v26[7] = v27;
  *&v26[23] = v28;
  *&v26[39] = v29;
  sub_1A44C8814(0, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
  v13 = (a1 + *(v12 + 36));
  v14 = *(sub_1A5248A14() + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1A52494A4();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #10.0 }

  *v13 = _Q0;
  sub_1A3E42C88();
  *&v13[*(v22 + 36)] = 256;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v23 = *&v26[16];
  *(a1 + 97) = *v26;
  *a1 = v25;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v6;
  *(a1 + 24) = v9;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 80) = 1;
  *(a1 + 88) = 1;
  *(a1 + 96) = v11;
  *(a1 + 113) = v23;
  result = *&v26[32];
  *(a1 + 129) = *&v26[32];
  *(a1 + 144) = *&v26[47];
  return result;
}

uint64_t sub_1A44C84A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v23 = sub_1A52407E4();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v22 = sub_1A5243C24();
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = sub_1A5243C14();
  (*(*a1 + 184))(v16);
  sub_1A52408B4();
  sub_1A52407F4();
  v17 = v22;
  v18 = (*(v10 + 16))(v12, v15, v22);
  (*(*a1 + 136))(v18);
  v19 = v23;
  (*(v4 + 16))(v6, v9, v23);
  sub_1A5243554();
  (*(v4 + 8))(v9, v19);
  return (*(v10 + 8))(v15, v17);
}

void sub_1A44C8784()
{
  if (!qword_1EB13C550)
  {
    sub_1A44C8814(255, &qword_1EB13C558, sub_1A44C8888, sub_1A44C88E8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C550);
    }
  }
}

void sub_1A44C8814(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A44C8888()
{
  if (!qword_1EB13C560)
  {
    sub_1A3E3527C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C560);
    }
  }
}

void sub_1A44C88E8()
{
  if (!qword_1EB13C568)
  {
    sub_1A44C897C();
    sub_1A44C89D4(&qword_1EB127A40, sub_1A44C897C);
    v0 = sub_1A5249C54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C568);
    }
  }
}

void sub_1A44C897C()
{
  if (!qword_1EB127A38)
  {
    v0 = sub_1A5249F04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127A38);
    }
  }
}

uint64_t sub_1A44C89D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A44C8A1C()
{
  result = qword_1EB13C570;
  if (!qword_1EB13C570)
  {
    sub_1A44C8814(255, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
    sub_1A44C8C34(&qword_1EB13C578, sub_1A44C8784, sub_1A44C8B28);
    sub_1A44C89D4(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C570);
  }

  return result;
}

unint64_t sub_1A44C8B28()
{
  result = qword_1EB13C580;
  if (!qword_1EB13C580)
  {
    sub_1A44C8814(255, &qword_1EB13C558, sub_1A44C8888, sub_1A44C88E8);
    sub_1A44C8C34(&qword_1EB13C588, sub_1A44C8888, sub_1A44C8CB4);
    sub_1A44C89D4(&qword_1EB13C590, sub_1A44C88E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C580);
  }

  return result;
}

uint64_t sub_1A44C8C34(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A44C8CB4()
{
  result = qword_1EB13DA20;
  if (!qword_1EB13DA20)
  {
    sub_1A3E3527C();
    sub_1A3E4509C();
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DA20);
  }

  return result;
}

uint64_t sub_1A44C8D70@<X0>(uint64_t a1@<X8>)
{
  v9[1] = a1;
  v1 = sub_1A5243934();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v9 - v6;
  sub_1A5243904();
  (*(v2 + 16))(v4, v7, v1);
  v10 = 1;

  sub_1A524B954();
  v9[0] = v11;
  sub_1A44C8814(0, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
  sub_1A5243544();
  sub_1A44C8A1C();
  sub_1A44C89D4(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
  sub_1A5242914();
  return (*(v2 + 8))(v7, v1);
}

void sub_1A44C8FD8()
{
  if (!qword_1EB13C5A0)
  {
    sub_1A44C8814(255, &qword_1EB13C548, sub_1A44C8784, sub_1A3E42C88);
    sub_1A5243544();
    sub_1A44C8A1C();
    sub_1A44C89D4(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
    v0 = sub_1A5242904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C5A0);
    }
  }
}

uint64_t type metadata accessor for LemonadeMemoriesShelfCreationButton()
{
  result = qword_1EB17A9A0;
  if (!qword_1EB17A9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A44C9128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A44C918C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = MEMORY[0x1E6981E70];
  v5 = MEMORY[0x1E697F948];
  sub_1A44CA990(0, &qword_1EB122AE0, sub_1A44CA954, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = v61 - v7;
  v8 = type metadata accessor for LemonadeMemoriesShelfCreationButton();
  v9 = v8 - 8;
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v64 = v10;
  v65 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CB064(0);
  v72 = v11;
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CA990(0, &qword_1EB122B30, sub_1A44CA9FC, v4, v5);
  v74 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v76 = v61 - v14;
  sub_1A44CC4B8(0, &qword_1EB122C38, sub_1A44CAA44, sub_1A44CB064, MEMORY[0x1E697F948]);
  v68 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v70 = v61 - v16;
  sub_1A44CA9FC(0);
  v73 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v71 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CAA44(0);
  v69 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v62 = v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44CA954(0);
  v80 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v75 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A52453A4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v81 = v61 - v28;
  sub_1A44CB134(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v61 - v33;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = v61 - v37;
  v39 = *(v9 + 32);
  v77 = v2;
  v40 = *(v2 + v39);
  if (v40)
  {
    (*(*v40 + 192))(v36);
    (*(v24 + 56))(v34, 0, 1, v23);
  }

  else
  {
    (*(v24 + 56))(v34, 1, 1, v23);
  }

  sub_1A475C0F0(v34, v38);
  sub_1A44CB168(v34, sub_1A44CB134);
  sub_1A44CC5BC(v38, v31, sub_1A44CB134);
  if ((*(v24 + 48))(v31, 1, v23) == 1)
  {
    sub_1A44CB168(v31, sub_1A44CB134);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_1A44CB1C8();
    sub_1A5249744();
    return sub_1A44CB168(v38, sub_1A44CB134);
  }

  v61[1] = a1;
  v41 = *(v24 + 32);
  v41(v81, v31, v23);
  if (![objc_opt_self() isMemoryCreationEnabled] || (sub_1A3C52C70(0, &qword_1EB126860), v42 = objc_msgSend(swift_getObjCClassFromMetadata(), sel_sharedInstance), v43 = objc_msgSend(v42, sel_showFreeformMemoryCreationButtonInMemoryShelf), v42, !v43) || (MEMORY[0x1A590D320]() & 1) != 0 || (v45 = static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)(), v83[0] = *(*(v77 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 28)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext), v46 = sub_1A475C390(v83), (v45 & 1) == 0) || !v46)
  {
    (*(v24 + 8))(v81, v23);
    goto LABEL_10;
  }

  static LemonadeMemoriesCreationAvailabilityUtils.navigationPermission(for:)(v81, &v82);
  if (v82)
  {
    if (v82 == 1)
    {
      (*(v24 + 16))(v26, v81, v23);
      v47 = v65;
      sub_1A44CC5BC(v77, v65, type metadata accessor for LemonadeMemoriesShelfCreationButton);
      v48 = (*(v24 + 80) + 16) & ~*(v24 + 80);
      v49 = (v25 + *(v63 + 80) + v48) & ~*(v63 + 80);
      v50 = swift_allocObject();
      v51 = v41;
      v52 = v50;
      v51(v50 + v48, v26, v23);
      v53 = sub_1A44CC450(v47, v52 + v49, type metadata accessor for LemonadeMemoriesShelfCreationButton);
      MEMORY[0x1EEE9AC00](v53);
      v61[-2] = v77;
      sub_1A44CC4B8(0, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
      sub_1A44CAD84();
      v54 = v66;
      sub_1A524B704();
      v55 = v67;
      v56 = v72;
      (*(v67 + 16))(v70, v54, v72);
      swift_storeEnumTagMultiPayload();
      sub_1A44CB2F8();
      sub_1A44CAEF8(&qword_1EB121AB8, sub_1A44CB064);
      v57 = v71;
      sub_1A5249744();
      sub_1A44CB508(v57, v76, sub_1A44CA9FC);
      swift_storeEnumTagMultiPayload();
      sub_1A44CB248();
      v58 = v75;
      sub_1A5249744();
      sub_1A44CB570(v57, sub_1A44CA9FC);
      (*(v55 + 8))(v54, v56);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1A44CB248();
      v58 = v75;
      sub_1A5249744();
    }
  }

  else
  {
    v59 = v62;
    sub_1A44C9D6C(v62);
    sub_1A44CB508(v59, v70, sub_1A44CAA44);
    swift_storeEnumTagMultiPayload();
    sub_1A44CB2F8();
    sub_1A44CAEF8(&qword_1EB121AB8, sub_1A44CB064);
    v60 = v71;
    sub_1A5249744();
    sub_1A44CB508(v60, v76, sub_1A44CA9FC);
    swift_storeEnumTagMultiPayload();
    sub_1A44CB248();
    v58 = v75;
    sub_1A5249744();
    sub_1A44CB570(v60, sub_1A44CA9FC);
    sub_1A44CB570(v59, sub_1A44CAA44);
  }

  sub_1A44CB508(v58, v79, sub_1A44CA954);
  swift_storeEnumTagMultiPayload();
  sub_1A44CB1C8();
  sub_1A5249744();
  sub_1A44CB570(v58, sub_1A44CA954);
  (*(v24 + 8))(v81, v23);
  return sub_1A44CB168(v38, sub_1A44CB134);
}

void sub_1A44C9D6C(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for LemonadeMemoriesShelfCreationButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A44CAB98(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44CAA80();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeShelfDisclosureOptions(0);
  v22 = v1;
  sub_1A44CC5BC(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMemoriesShelfCreationButton);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_1A44CC450(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadeMemoriesShelfCreationButton);
  sub_1A44CC4B8(0, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
  sub_1A44CAD84();

  sub_1A472916C(v15, sub_1A44CC1B8, 0, 0, sub_1A44CC1BC, v14, v7);
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v16 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v16 enableHeaderTitleChevron];
  }

  sub_1A44CC4B8(0, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98);
  sub_1A44CAF40();
  sub_1A524A584();
  sub_1A44CB570(v7, sub_1A44CAB98);
  v17 = v21;
  (*(v10 + 32))(v21, v12, v9);
  sub_1A44CAA44(0);
  v19 = (v17 + *(v18 + 36));
  *v19 = sub_1A44CBD24;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0;
}

void sub_1A44CA198(uint64_t a1, uint64_t a2)
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeMemoriesShelfCreationButton();
  sub_1A3FF29A0(v6);
  sub_1A3D63A8C(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A44CB168(v6, sub_1A3D63A58);
  static LemonadeMemoriesCreationUnavailableAlert.show(state:viewController:photoLibrary:)(a1, 0, *(a2 + *(v7 + 20)));
}

uint64_t sub_1A44CA2F8@<X0>(uint64_t a1@<X8>)
{
  v52[3] = a1;
  sub_1A4499BCC(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE213C();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44CC4B8(0, &qword_1EB13C5B0, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F948]);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v52 - v10;
  sub_1A44CABB8();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()() && (sub_1A3C52C70(0, &qword_1EB126A10), v17 = [swift_getObjCClassFromMetadata() sharedInstance], v18 = objc_msgSend(v17, sel_enableHeaderTitleChevron), v17, !v18))
  {
    sub_1A524B574();
    sub_1A52495A4();
    v38 = sub_1A52495B4();
    (*(*(v38 - 8) + 56))(v3, 0, 1, v38);
    v39 = sub_1A524B584();

    sub_1A44CB168(v3, sub_1A4499BCC);
    v40 = (v7 + *(v5 + 36));
    sub_1A3F32A14(0);
    v42 = *(v41 + 28);
    v43 = *MEMORY[0x1E69816C0];
    v44 = sub_1A524B5B4();
    (*(*(v44 - 8) + 104))(v40 + v42, v43, v44);
    *v40 = swift_getKeyPath();
    *v7 = v39;
    sub_1A44CC5BC(v7, v11, sub_1A3EE213C);
    swift_storeEnumTagMultiPayload();
    sub_1A44CACBC();
    v46 = v45;
    v47 = sub_1A5243474();
    v48 = sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    v49 = MEMORY[0x1E6981148];
    v53 = MEMORY[0x1E6981148];
    v54 = v47;
    v50 = MEMORY[0x1E6981138];
    v55 = MEMORY[0x1E6981138];
    v56 = v48;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = v49;
    v54 = v46;
    v55 = v50;
    v56 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1A3F37498();
    sub_1A5249744();
    return sub_1A44CB168(v7, sub_1A3EE213C);
  }

  else
  {
    v19 = sub_1A524C634();
    v20 = PXMemoryCreationLocalizedString(v19);

    v21 = sub_1A524C674();
    v23 = v22;

    v53 = v21;
    v54 = v23;
    sub_1A3D5F9DC();
    v24 = sub_1A524A464();
    v52[0] = v13;
    v52[1] = v9;
    v25 = v24;
    v27 = v26;
    v52[2] = v5;
    v53 = v24;
    v54 = v26;
    LOBYTE(v23) = v28 & 1;
    LOBYTE(v55) = v28 & 1;
    v56 = v29;
    sub_1A44CACBC();
    v31 = v30;
    v32 = sub_1A5243474();
    v33 = sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    v52[4] = MEMORY[0x1E6981148];
    v52[5] = v32;
    v52[6] = MEMORY[0x1E6981138];
    v52[7] = v33;
    v34 = v16;
    v35 = swift_getOpaqueTypeConformance2();
    sub_1A524A4B4();
    sub_1A3E04DF4(v25, v27, v23);

    v36 = v52[0];
    (*(v14 + 16))(v11, v34, v52[0]);
    swift_storeEnumTagMultiPayload();
    v53 = MEMORY[0x1E6981148];
    v54 = v31;
    v55 = MEMORY[0x1E6981138];
    v56 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1A3F37498();
    sub_1A5249744();
    return (*(v14 + 8))(v34, v36);
  }
}

void sub_1A44CA990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44CAA80()
{
  if (!qword_1EB121FF0)
  {
    sub_1A44CAB98(255);
    sub_1A44CC4B8(255, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98);
    sub_1A44CAF40();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FF0);
    }
  }
}

void sub_1A44CABB8()
{
  if (!qword_1EB122028)
  {
    sub_1A44CACBC();
    sub_1A5243474();
    sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122028);
    }
  }
}

void sub_1A44CACBC()
{
  if (!qword_1EB121EE8)
  {
    sub_1A5243474();
    sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EE8);
    }
  }
}

unint64_t sub_1A44CAD84()
{
  result = qword_1EB122700;
  if (!qword_1EB122700)
  {
    sub_1A44CC4B8(255, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
    sub_1A44CACBC();
    sub_1A5243474();
    sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3F37498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122700);
  }

  return result;
}

uint64_t sub_1A44CAEF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A44CAF40()
{
  result = qword_1EB1241D8;
  if (!qword_1EB1241D8)
  {
    sub_1A44CC4B8(255, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98);
    sub_1A44CAEF8(&qword_1EB1245F8, sub_1A3FA95D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1241D8);
  }

  return result;
}

void sub_1A44CB084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A44CC4B8(255, &qword_1EB1226F8, sub_1A44CABB8, sub_1A3EE213C, MEMORY[0x1E697F960]);
    v7 = v6;
    v8 = sub_1A44CAD84();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A44CB168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A44CB1C8()
{
  result = qword_1EB122470;
  if (!qword_1EB122470)
  {
    sub_1A44CA954(255);
    sub_1A44CB248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122470);
  }

  return result;
}

unint64_t sub_1A44CB248()
{
  result = qword_1EB1227D0;
  if (!qword_1EB1227D0)
  {
    sub_1A44CA9FC(255);
    sub_1A44CB2F8();
    sub_1A44CAEF8(&qword_1EB121AB8, sub_1A44CB064);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227D0);
  }

  return result;
}

unint64_t sub_1A44CB2F8()
{
  result = qword_1EB123FE0;
  if (!qword_1EB123FE0)
  {
    sub_1A44CAA44(255);
    sub_1A44CAB98(255);
    sub_1A44CC4B8(255, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A44CAEF8(&unk_1EB1253F0, sub_1A44CAB98);
    sub_1A44CAF40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FE0);
  }

  return result;
}

void sub_1A44CB43C()
{
  v1 = *(sub_1A52453A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LemonadeMemoriesShelfCreationButton() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1A44CA198(v0 + v2, v5);
}

uint64_t sub_1A44CB508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44CB570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A44CB5EC()
{
  v0 = sub_1A5244854();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v1 - 8);
  objc_opt_self();
  sub_1A4036598();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A44CB878()
{
  v0 = sub_1A52434D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1A5243A34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LemonadeMemoriesShelfCreationButton();
  v8 = sub_1A44CC22C(v3);
  PXDisplayCollectionDetailedCountsMake(v8);
  v45 = &type metadata for GenerativeStoryTransitionIdentifier;
  sub_1A52434B4();
  (*(v1 + 8))(v3, v0);
  __swift_destroy_boxed_opaque_existential_0(v44);
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 || (sub_1A3C52C70(0, &qword_1EB126860), v11 = [swift_getObjCClassFromMetadata() sharedInstance], v12 = objc_msgSend(v11, sel_fullScreenTransitionType), v11, v12 != 1) || (v13 = sub_1A4654ADC()) == 0)
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v14 = v13;
  result = [v13 view];
  if (result)
  {
    v16 = result;
    sub_1A44CAEF8(&qword_1EB13C5A8, MEMORY[0x1E69C2790]);
    v17 = sub_1A524DB54();

    if (v17)
    {
      [v17 bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v26 = [v14 view];
      [v17 convertRect:v26 toView:{v19, v21, v23, v25}];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      result = [v14 view];
      if (result)
      {
        v35 = result;
        [result bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;

        v46.origin.x = v37;
        v46.origin.y = v39;
        v46.size.width = v41;
        v46.size.height = v43;
        v48.origin.x = v28;
        v48.origin.y = v30;
        v48.size.width = v32;
        v48.size.height = v34;
        v47 = CGRectIntersection(v46, v48);
        v49.origin.x = v28;
        v49.origin.y = v30;
        v49.size.width = v32;
        v49.size.height = v34;
        LODWORD(v35) = CGRectEqualToRect(v47, v49);

        (*(v5 + 8))(v7, v4);
        return v35;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v7, v4);

    return 0;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1A44CBC90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A44CB508(a1, a2, sub_1A44CAB98);
  sub_1A44CC4B8(0, &qword_1EB1241D0, sub_1A44CAB98, sub_1A3FA95D4, MEMORY[0x1E697E830]);
  *(a2 + *(v3 + 36)) = 256;
}

void sub_1A44CBD24()
{
  objc_opt_self();
  sub_1A403658C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44CBE08(__int128 *a1)
{
  v2 = sub_1A5243474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(a1 + 16);
  v6 = *(a1 + 3);
  v8 = *a1;
  v9 = v4;
  v10 = v6;
  sub_1A5247D74();
  sub_1A44CAEF8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v3 + 8))(v5, v2);
}

void sub_1A44CBF7C()
{
  type metadata accessor for LemonadeShelfDisclosureOptions(319);
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126BF0);
    if (v1 <= 0x3F)
    {
      sub_1A44C9128(319, &qword_1EB125038, type metadata accessor for LemonadeMemoriesCreationAvailabilityManager, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A44C9128(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LemonadeNavigationContext(319);
          if (v4 <= 0x3F)
          {
            sub_1A44C9128(319, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A44CC100()
{
  result = qword_1EB1223B0;
  if (!qword_1EB1223B0)
  {
    sub_1A44CA990(255, &qword_1EB1223A8, sub_1A44CA954, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A44CB1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223B0);
  }

  return result;
}

void sub_1A44CC1BC()
{
  type metadata accessor for LemonadeMemoriesShelfCreationButton();

  sub_1A44CB5EC();
}

uint64_t sub_1A44CC22C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C24E0];
  sub_1A44C9128(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A44CC53C(v2, &v15 - v10, &qword_1EB128A98, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A52434D4();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A44CC450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A44CC4B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A44CC53C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A44C9128(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A44CC5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id PhotosDetailsLocationSearchViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosDetailsLocationSearchViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsLocationSearchViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosDetailsLocationSearchViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsLocationSearchViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s12PhotosUICore0A32DetailsLocationSearchViewFactoryC06searchF10Controller6assets8delegate10completionSo06UIViewI0CSo13PHFetchResultCySo7PHAssetCG_So08PXPhotoscdE8Delegate_pSgySbcSgtFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a2;
  v71 = a3;
  v72 = type metadata accessor for PhotosDetailsSearchView();
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = (&v66 - v10);
  v68 = [a1 count];
  v69 = a4;
  if (v68 > 1)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
LABEL_8:
    LOBYTE(v19) = 1;
    goto LABEL_9;
  }

  v15 = [a1 objectAtIndexedSubscript_];
  v16 = [v15 px_singleLineMailingAddress];

  if (v16)
  {
    v13 = sub_1A524C674();
    v14 = v17;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v18 = [a1 objectAtIndexedSubscript_];
  v19 = [v18 location];

  if (v19)
  {
    v12 = v11;

    goto LABEL_8;
  }

  v12 = v11;
LABEL_9:
  v20 = type metadata accessor for PhotosDetailsLocationSearchDataSource();
  v21 = a1;
  v22 = sub_1A3EBC7B4(v21, v19);
  v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0xC8);
  v24 = swift_unknownObjectRetain();
  v23(v24);
  v75 = v20;
  v76 = &off_1F16E6170;
  v74[0] = v22;
  v25 = v22;
  v26 = sub_1A3C30368();
  v27 = v12;
  sub_1A49CC818(v74, v13, v14, v26 & 1, v12);
  sub_1A3EBE334(v12, v7);
  sub_1A44CCD14();
  v29 = objc_allocWithZone(v28);
  v30 = sub_1A5249624();
  v31 = swift_allocObject();
  v32 = v71;
  v31[2] = v30;
  v31[3] = v32;
  v33 = v69;
  v31[4] = v69;
  v34 = v30;
  sub_1A3C66EE8(v32);
  v35 = sub_1A5249634();
  v37 = (v36 + *(v72 + 32));
  v38 = *v37;
  *v37 = sub_1A44CCDD0;
  v37[1] = v31;
  sub_1A3C33378(v38);
  v35(v74, 0);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  v40 = *((*MEMORY[0x1E69E7D40] & *v25) + 0xE0);
  v41 = v34;
  v40(sub_1A44CCEC0, v39);
  if (v68 > 1)
  {
    sub_1A44CCF44(v27);
LABEL_14:

    return v41;
  }

  v42 = [v21 objectAtIndexedSubscript_];
  sub_1A44CCEF8();
  if (![swift_getObjCClassFromMetadata() canPerformOnAsset:v42 inAssetCollection:0])
  {
    sub_1A44CCF44(v27);

    goto LABEL_14;
  }

  v43 = sub_1A524C634();
  v44 = PXLocalizedString(v43);
  v68 = v27;
  v45 = v44;

  v67 = sub_1A524C674();
  v47 = v46;

  v48 = sub_1A524B3B4();
  v49 = swift_allocObject();
  v49[2] = v21;
  v49[3] = v41;
  v51 = v70;
  v50 = v71;
  v49[4] = v42;
  v49[5] = v51;
  v49[6] = v25;
  v49[7] = v50;
  v49[8] = v33;
  v52 = v21;
  swift_unknownObjectRetain();
  v53 = v25;
  v41;
  sub_1A3C66EE8(v50);
  v54 = v42;
  sub_1A49CC4A4(v67, v47, v48, sub_1A44CCFA0, v49, v74);
  v55 = v74[0];
  v56 = v74[1];
  v57 = v74[2];
  v58 = v75;
  v59 = v76;
  v60 = sub_1A5249634();
  v62 = (v61 + *(v72 + 36));
  v63 = *v62;
  v64 = v62[1];
  *v62 = v55;
  v62[1] = v56;
  v62[2] = v57;
  v62[3] = v58;
  v62[4] = v59;
  sub_1A3EC6998(v63, v64);
  v60(v73, 0);

  sub_1A44CCF44(v68);
  return v41;
}

void sub_1A44CCD14()
{
  if (!qword_1EB13C5B8)
  {
    type metadata accessor for PhotosDetailsSearchView();
    sub_1A44CCD78();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C5B8);
    }
  }
}

unint64_t sub_1A44CCD78()
{
  result = qword_1EB13C5C0;
  if (!qword_1EB13C5C0)
  {
    type metadata accessor for PhotosDetailsSearchView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C5C0);
  }

  return result;
}

void sub_1A44CCDD0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v6[4] = sub_1A44CD51C;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3C2E0D0;
  v6[3] = &block_descriptor_25_1;
  v5 = _Block_copy(v6);
  sub_1A3C66EE8(v2);

  [v1 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
}

id sub_1A44CCEC0()
{
  v1 = [*(v0 + 16) undoManager];

  return v1;
}

unint64_t sub_1A44CCEF8()
{
  result = qword_1EB12E198;
  if (!qword_1EB12E198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12E198);
  }

  return result;
}

uint64_t sub_1A44CCF44(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsSearchView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A44CCFA0()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = [objc_allocWithZone(PXRevertAssetLocationAction) initWithAssets_];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v17 = v1;
    v10 = [v1 undoManager];
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v2;
    v11[4] = v4;
    v22 = sub_1A44CD1C8;
    v23 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1A3D6084C;
    v21 = &block_descriptor_19_4;
    v12 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v13 = v4;
    v14 = v3;

    [v9 executeWithUndoManager:v10 completionHandler:v12];
    _Block_release(v12);

    v1 = v17;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v6;
  v22 = sub_1A44CD1C0;
  v23 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1A3C2E0D0;
  v21 = &block_descriptor_202;
  v16 = _Block_copy(&aBlock);
  sub_1A3C66EE8(v5);

  [v1 dismissViewControllerAnimated:1 completion:v16];
  _Block_release(v16);
}

void sub_1A44CD1C8(char a1, void *a2)
{
  v3 = v2[2];
  if (a1)
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = sub_1A524D224();
    v7 = sub_1A475874C();
    swift_beginAccess();
    v8 = *v7;
    if (os_log_type_enabled(*v7, v6))
    {
      v9 = v8;
      v10 = v3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446210;
      v13 = [v10 uuid];

      if (v13)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      __break(1u);
LABEL_13:

      __break(1u);
      return;
    }

    if (v5 && ([v5 respondsToSelector_] & 1) != 0)
    {
      [v5 locationSearchDataSourceDidRevertLocation_];
    }
  }

  else
  {
    v5 = a2;
    v14 = sub_1A524D244();
    v15 = sub_1A475874C();
    swift_beginAccess();
    v16 = *v15;
    if (os_log_type_enabled(*v15, v14))
    {
      v12 = v3;
      v17 = v16;
      v18 = v5;
      v19 = swift_slowAlloc();
      swift_slowAlloc();
      *v19 = 136446466;
      v20 = [v12 uuid];
      if (v20)
      {
        v21 = v20;

        sub_1A524C674();
        sub_1A3C2EF94();
      }

      goto LABEL_13;
    }
  }
}

uint64_t sub_1A44CD524(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t type metadata accessor for TimelineVFXEngineCell()
{
  result = qword_1EB16A240;
  if (!qword_1EB16A240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A44CD5B4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TimelineVFXEngineCell();
  v5 = sub_1A52411B4();
  v6 = 0;
  v7 = sub_1A3E2AFA0(v5, 0.0, 1.0);
  *a2 = a1;
  *(a2 + v4[6]) = a1 == 0;
  if (a1)
  {
    v9 = __sincosf_stret((v8 + v8) * 3.1416);
    *(a2 + v4[7]) = v9.__sinval;
    *(a2 + v4[8]) = v9.__cosval;
    v7 = sub_1A3E2AFA0(v10, 0.0, 1.0);
    v6 = v11;
  }

  else
  {
    *(a2 + v4[7]) = 0;
    *(a2 + v4[8]) = 0;
  }

  *(a2 + v4[9]) = v6;
  cosval = 0.0;
  v13 = sub_1A3E2AFA0(v7, 0.0, 1.0);
  *(a2 + v4[10]) = v14;
  sub_1A3E2AFA0(v13, 0.0, 1.0);
  if (a1)
  {
    v16 = __sincosf_stret((v15 + v15) * 3.1416);
    cosval = v16.__cosval;
    *(a2 + v4[11]) = v16.__sinval;
  }

  else
  {
    *(a2 + v4[11]) = 0;
  }

  *(a2 + v4[12]) = cosval;
}

uint64_t sub_1A44CD6DC()
{
  MEMORY[0x1A590A010](*v0);
  type metadata accessor for TimelineVFXEngineCell();
  sub_1A52411C4();
  sub_1A44CD9F4(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  sub_1A524C4B4();
  sub_1A524ECB4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  sub_1A524ECC4();
  return sub_1A524ECC4();
}

uint64_t sub_1A44CD82C()
{
  sub_1A524EC94();
  sub_1A44CD6DC();
  return sub_1A524ECE4();
}

uint64_t sub_1A44CD870()
{
  sub_1A524EC94();
  sub_1A44CD6DC();
  return sub_1A524ECE4();
}

BOOL sub_1A44CD8B0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TimelineVFXEngineCell();
  return (_s12PhotosUICore33LemonadeMemoryPlayerConfigurationV2eeoiySbAC_ACtFZ_0() & 1) != 0 && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]);
}

uint64_t sub_1A44CD9F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A44CDAAC()
{
  result = sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A44CDB48()
{

  return swift_deallocClassInstance();
}

double LemonadePhotosPagingGridConfiguration.titleModel(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1A44CDCA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D6238;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3);
}

uint64_t sub_1A44CDD28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D62B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 72);
  sub_1A3C66EE8(v3);
  result = sub_1A3C33378(v7);
  *(a2 + 72) = v6;
  *(a2 + 80) = v5;
  return result;
}

void LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(void *a1@<X8>)
{
  type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  sub_1A5245B94();
}

void LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(uint64_t a1@<X8>)
{
  *(a1 + 56) = 0;
  type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  sub_1A5245B94();
}

void LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(void *a1@<X8>)
{
  type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  sub_1A5245B94();
}

uint64_t LemonadePhotosPagingAssetCollectionGridConfiguration.assetsFetchResultProvider(for:)()
{
  v1 = *(v0 + *(type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0) + 52));
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t (*sub_1A44CE460())@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D5F14;
}

uint64_t sub_1A44CE4C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *(a2 + 52));
  sub_1A3C66EE8(v3);
  return v3;
}

BOOL static LemonadePhotosPagingGridConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 40);
  v7 = v6(a3, a4);
  swift_unknownObjectRelease();
  v8 = v6(a3, a4);
  swift_unknownObjectRelease();
  return v7 == v8;
}

uint64_t LemonadePhotosPagingGridConfiguration.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 40))(a2, a3);
  swift_unknownObjectRelease();
  return MEMORY[0x1A590A010](v3);
}

void *LemonadePhotosPagingMemoryGridConfiguration.viewConfiguration.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *LemonadePhotosPagingMemoryGridConfiguration.searchMatchInfo.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1A44CE754@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D6238;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3);
}

uint64_t sub_1A44CE7D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D62B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 80);
  sub_1A3C66EE8(v3);
  result = sub_1A3C33378(v7);
  *(a2 + 80) = v6;
  *(a2 + 88) = v5;
  return result;
}

uint64_t LemonadePhotosPagingMemoryGridConfiguration.badgesModifier.getter()
{
  v1 = *(v0 + 80);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t LemonadePhotosPagingMemoryGridConfiguration.badgesModifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A3C33378(*(v2 + 80));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void LemonadePhotosPagingMemoryGridConfiguration.init(itemListManager:initialItem:selectionCoordinator:)(uint64_t a1@<X8>)
{
  *(a1 + 40) = 3;
  type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  swift_retain_n();
  sub_1A5245B94();
}

void LemonadePhotosPagingMemoryGridConfiguration.init(singleItem:photoLibraryContext:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = objc_opt_self();
  v6 = v3;
  v7 = v4;
  v8 = sub_1A524CA14();
  v9 = sub_1A524C634();
  v17 = [v5 transientCollectionListWithCollections:v8 title:v9 identifier:0 photoLibrary:v7];

  sub_1A3C47CBC(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
  v10 = *(a2 + 24);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = sub_1A3C52C70(0, &qword_1EB1265E0);
  v13 = v6;
  v14 = v7;
  v15 = v17;
  v16 = v10;
  sub_1A43FD8EC(v18, v12);
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v15, v10, v20, v18, v19, sub_1A44D444C, v11);
}

id LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(void *a1)
{
  v2 = sub_1A524CA14();
  v3 = sub_1A524C634();
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() transientCollectionListWithCollections:v2 title:v3 identifier:0 photoLibrary:result];

    sub_1A3C47CBC(0, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v24 = 2;
    v13 = v6;
    sub_1A3C6C180(&v14);
    v22 = v14;
    v23 = v15;
    sub_1A3C6C18C(&v20);
    v18 = v20;
    v19 = v21;
    LOBYTE(v6) = sub_1A3C5A374();
    v7 = sub_1A3C30368();
    v8 = sub_1A3C5A374();
    v9 = sub_1A3C5A374();
    v10 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v22, 0, &unk_1F1712450, 0, 1, &v18, v6 & 1, &v24, v17, v7, v8 & 1, v9 & 1, v10 & 1, 0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v12 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v13, 0, v25, v17, &v14, sub_1A44D4608, v11);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A44CF168())@<X0>(void *@<X0>, uint64_t *@<X8>)
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D621C;
}

void *sub_1A44CF1D0()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_1A44CF20C()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_1A44CF234()
{
  v1 = *(v0 + 80);
  sub_1A3C66EE8(v1);
  return v1;
}

void sub_1A44CF300(void *a1@<X8>)
{
  v2 = sub_1A40F354C();
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  sub_1A5245B94();
}

void *_s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV04viewH0So012PXPhotosViewH0CSgvg_0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *_s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV20selectionCoordinatorSo011PXSelectionJ0CSgvg_0()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *_s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV15searchMatchInfoSo013PXSearchQueryjK0CSgvg_0()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t _s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV14badgesModifierSo13PXAssetBadgesVSo09PXDisplayE0_p_AFtcSgvg_0()
{
  v1 = *(v0 + 72);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t _s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV14badgesModifierSo13PXAssetBadgesVSo09PXDisplayE0_p_AFtcSgvs_0(uint64_t a1, uint64_t a2)
{
  result = sub_1A3C33378(*(v2 + 72));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t (*sub_1A44CF6F4())(void *a1)
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D5EE8;
}

id LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer.id.getter()
{
  v1 = [*v0 px_opaqueIdentifier];

  return v1;
}

uint64_t static LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  v5 = v3;
  if (v2 == v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

uint64_t sub_1A44CF880@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = sub_1A3C34460(a2, (a4 + 1));
  a4[6] = a3;
  return result;
}

uint64_t sub_1A44CF93C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D6238;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3);
}

uint64_t sub_1A44CF9BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D62B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 56);
  sub_1A3C66EE8(v3);
  result = sub_1A3C33378(v7);
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  return result;
}

void LemonadePhotosPagingPhotoKitContainerGridConfiguration.init(containers:initialItem:photoLibrary:viewConfiguration:selectionCoordinator:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7[2] = a3;
  v7[4] = a4;
  v7[5] = a2;
  v7[7] = a1;
  v4 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[3] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = 0;
  sub_1A5245B94();
}

uint64_t LemonadePhotosPagingPhotoKitContainerGridConfiguration.existingKeyAsset(for:)()
{
  sub_1A44D07D8(v2);
  if (v2[0])
  {
    v0 = v2[6];
    swift_unknownObjectRetain();
    sub_1A44D4934(v2);
  }

  else
  {
    sub_1A3C2C918(v2, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    return 0;
  }

  return v0;
}

uint64_t sub_1A44D07D8@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  v3 = *(v1 + *(result + 48));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (v5 < *(v3 + 16))
    {
      sub_1A44D48FC(v6, v9);
      sub_1A3C52C70(0, &qword_1EB12B160);
      result = sub_1A524DBF4();
      if (result)
      {
        v7 = v9[1];
        *a1 = v9[0];
        *(a1 + 16) = v7;
        *(a1 + 32) = v9[2];
        *(a1 + 48) = v10;
        return result;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_1EB176240 != -1)
        {
          swift_once();
        }

        sub_1A5246664();
      }

      ++v5;
      result = sub_1A44D4934(v9);
      v6 += 56;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

double LemonadePhotosPagingPhotoKitContainerGridConfiguration.titleModel(for:)@<D0>(uint64_t a1@<X8>)
{
  sub_1A44D07D8(&v3);
  if (v3)
  {
    sub_1A3C341C8(&v4, a1);
    sub_1A44D4934(&v3);
  }

  else
  {
    sub_1A3C2C918(&v3, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t (*sub_1A44D0B2C())@<X0>(void *@<X0>, uint64_t *@<X8>)
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D621C;
}

uint64_t sub_1A44D0B94()
{
  sub_1A44D07D8(v2);
  if (v2[0])
  {
    v0 = v2[6];
    swift_unknownObjectRetain();
    sub_1A44D4934(v2);
  }

  else
  {
    sub_1A3C2C918(v2, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    return 0;
  }

  return v0;
}

double sub_1A44D0C04@<D0>(uint64_t a1@<X8>)
{
  sub_1A44D07D8(&v3);
  if (v3)
  {
    sub_1A3C341C8(&v4, a1);
    sub_1A44D4934(&v3);
  }

  else
  {
    sub_1A3C2C918(&v3, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void *LemonadePhotosPagingHighlightGridConfiguration.viewConfiguration.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *LemonadePhotosPagingHighlightGridConfiguration.searchMatchInfo.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1A44D0DA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D5E14;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A3C66EE8(v3);
}

uint64_t sub_1A44D0E20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A44D5E10;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 56);
  sub_1A3C66EE8(v3);
  result = sub_1A3C33378(v7);
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  return result;
}

uint64_t LemonadePhotosPagingHighlightGridConfiguration.badgesModifier.getter()
{
  v1 = *(v0 + 56);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t LemonadePhotosPagingHighlightGridConfiguration.badgesModifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1A3C33378(*(v2 + 56));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void LemonadePhotosPagingHighlightGridConfiguration.init(collection:photoLibrary:)(uint64_t a1@<X8>)
{
  type metadata accessor for LemonadePhotosPagingHighlightGridConfiguration(0);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  sub_1A5245B94();
}

uint64_t (*sub_1A44D1348())@<X0>(void *@<X0>, uint64_t *@<X8>)
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_1A44D621C;
}

void *sub_1A44D13B0()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *sub_1A44D13E0()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1A44D1408()
{
  v1 = *(v0 + 56);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A44D14B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = (*(a5 + 40))(a4, a5);
  sub_1A3C47CBC(0, &qword_1EB129F80, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListManager);
  v12 = v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = *(v13 + 160);
    v50[2] = *(v13 + 144);
    v50[3] = v14;
    v50[4] = *(v13 + 176);
    v51 = *(v13 + 192);
    v15 = *(v13 + 128);
    v50[0] = *(v13 + 112);
    v50[1] = v15;
    if (BYTE9(v14) == 1)
    {
      v16 = *(v13 + 160);
      v46 = *(v13 + 144);
      v47 = v16;
      v48 = *(v13 + 176);
      v49 = *(v13 + 192);
      v17 = *(v13 + 128);
      v18 = v13;
      v44 = *(v13 + 112);
      v45 = v17;
      swift_unknownObjectRetain();
      sub_1A3C6DB58(v50, v42);
      v19 = sub_1A43FACB0();
      v20 = sub_1A44D24F4(1, v19);

      if (!v20)
      {
        swift_unknownObjectRelease();
        v24 = *(v18 + 160);
        v36 = *(v18 + 144);
        v37 = v24;
        v38 = *(v18 + 176);
        v39 = *(v18 + 192);
        v25 = *(v18 + 128);
        v35[0] = *(v18 + 112);
        v35[1] = v25;
        v34 = v39;
        v31 = v36;
        v32 = v24;
        v33 = v38;
        v29 = v35[0];
        v30 = v25;
        sub_1A3C6DB58(v35, &v44);
        sub_1A43FB968(&unk_1F17124C8);
        v40[2] = v31;
        v40[3] = v32;
        v40[4] = v33;
        v41 = v34;
        v40[0] = v29;
        v40[1] = v30;
        v46 = v31;
        v47 = v32;
        v48 = v33;
        v49 = v34;
        v44 = v29;
        v45 = v30;
        v28 = a3;
        v26 = *(*v18 + 464);
        sub_1A3C6DB58(v40, v42);
        v27 = v26(&v44);
        v42[2] = v46;
        v42[3] = v47;
        v42[4] = v48;
        v43 = v49;
        v42[0] = v44;
        v42[1] = v45;
        sub_1A3C6EAD8(v42);
        sub_1A44D5158();
        v22 = sub_1A44D17D0(v27, a1, v9, v28, a4, v12, a5);

        sub_1A3C6EAD8(v50);
        swift_unknownObjectRelease();
        v46 = v31;
        v47 = v32;
        v48 = v33;
        v49 = v34;
        v44 = v29;
        v45 = v30;
        sub_1A3C6EAD8(&v44);
        return v22;
      }

      sub_1A3C6EAD8(v50);
      swift_unknownObjectRelease();
    }
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_1A44D17D0(v10, a1, v9, a3, a4, AssociatedTypeWitness, a5);
  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_1A44D17D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = a1;
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    LOBYTE(v14[0]) = a3;
    sub_1A44D1944(a2, v14[2], v14, a4, a5, a7);
  }

  sub_1A524E404();

  swift_unknownObjectRetain();
  v12 = sub_1A524C714();
  MEMORY[0x1A5907B60](v12);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A44D1944(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v72 = a2;
  v73 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v74 = AssociatedTypeWitness;
  v75 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v53[3] = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53[1] = v53 - v14;
  v15 = swift_checkMetadataState();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v53[2] = v53 - v17;
  v68 = a5;
  v62 = *(a5 - 8);
  v18 = v62[8];
  MEMORY[0x1EEE9AC00](v19);
  v61 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C37710(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v53[4] = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v53 - v23;
  v25 = swift_checkMetadataState();
  v65 = *(v25 - 8);
  v66 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v64 = v53 - v26;
  v54 = sub_1A524DF24();
  v53[5] = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v63 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v60 = v12;
  v29 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v29);
  v58 = v53 - v30;
  v71 = *a3;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v31 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v12) = [v31 enableDetailsViewPrototype];

  v70 = v24;
  v67 = a4;
  if (v12)
  {
    v55 = v29;
    v56 = v13;
    v57 = v18;
    swift_checkMetadataState();
    sub_1A5245914();
  }

  if (MEMORY[0x1A590D320]())
  {
    swift_checkMetadataState();
    sub_1A5245914();
  }

  v58 = v16;
  v32 = *(*(a4 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
  v59 = v15;
  if (v32)
  {
    v33 = *((*MEMORY[0x1E69E7D40] & *v32) + 0x318);
    v34 = v32;
    LODWORD(v56) = v33();
  }

  else
  {
    LODWORD(v56) = 1;
  }

  LODWORD(v55) = v32 != 0;
  sub_1A46535F0(v24);
  v57 = type metadata accessor for PhotosPagingViewConfiguration();
  v35 = v61;
  v36 = v62;
  v37 = v68;
  (v62[2])(v61, v73, v68);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = (v18 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 17) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v69;
  *(v41 + 16) = v37;
  *(v41 + 24) = v42;
  (v36[4])(v41 + v38, v35, v37);
  v43 = v41 + v39;
  v44 = v67;
  v45 = v72;
  *v43 = v72;
  *(v43 + 8) = v55;
  *(v43 + 9) = v56 & 1;
  *(v41 + v40) = v32;
  v46 = v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v46 = v44;
  v47 = v71;
  *(v46 + 8) = v71;
  v56 = *(v42 + 48);
  v48 = v56;
  swift_unknownObjectRetain_n();
  v61 = v32;
  v62 = v32;

  v49 = v48(v37, v42);
  v51 = v50;
  LOBYTE(v76) = v47;
  v52 = sub_1A41FE5EC();
  sub_1A3EA80D8(v45, sub_1A44D5F48, v41, v49, v51, v52, 0);
  v56(v37, v42);
  sub_1A5245904();
}

BOOL sub_1A44D24F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_1A3C6C358();
  }

  while ((sub_1A524C594() & 1) == 0);
  return v4 != 0;
}

uint64_t PHCollection.px_containerShouldReverseSortOrderInDetailsView.getter()
{
  if ([v0 px_isImportSessionCollection])
  {
    return 1;
  }

  else
  {
    return [v0 px_isAllLibraryDuplicatesSmartAlbum];
  }
}

id sub_1A44D346C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(a1 + 112);
  if (!*(v4 + 16) || (v5 = sub_1A3E4BF44(2u), (v6 & 1) == 0))
  {
    sub_1A3C47CBC(0, &qword_1EB125C40, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItem);

    swift_dynamicCast();
    swift_checkMetadataState();
    sub_1A5245924();
  }

  v7 = *(*(v4 + 56) + 8 * v5);

  return v7;
}

uint64_t sub_1A44D38E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v6 = v4(v5, a3);

  swift_unknownObjectRelease();
  return v6;
}

id sub_1A44D3944()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1A3C52C70(0, &qword_1EB1265E0);
  return [ObjCClassFromMetadata isSubclassOfClass_];
}

void sub_1A44D3A24()
{
  if (qword_1EB176240 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A44D3BC4(id *a1, char a2)
{
  if (a2)
  {
    *a1;
    PHCollection.associatedPhotoKitContainer.setter();
  }

  PHCollection.associatedPhotoKitContainer.setter();
}

id sub_1A44D3C5C()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_7();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A44D3CEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1(v0, v1);
  v5 = *(v0 + 40);
  return sub_1A44D14B4(v3, &v5, *(v0 + 48), v1, v2);
}

uint64_t sub_1A44D3D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44D5E94();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A44D3DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44D5E94();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A44D3E10()
{
  sub_1A44D5E94();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A44D3E38()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) librarySpecificFetchOptions];
  v3 = objc_opt_self();
  v4 = objc_opt_self();
  sub_1A3C37380(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F9790;
  v6 = *(v1 + 16);
  *(v5 + 32) = v6;
  sub_1A3C52C70(0, &qword_1EB126CD0);
  v7 = v6;
  v8 = sub_1A524CA14();

  v9 = [v4 transientCollectionListWithCollections:v8 title:0];

  v10 = [v3 fetchCollectionsInCollectionList:v9 options:v2];
  return v10;
}

void sub_1A44D3F84(uint64_t a1)
{
  v4 = a1;
  v1 = PhotoKitItem.id.getter();
  v3 = MEMORY[0x1E69E5FE0];
  v2 = v1;
  sub_1A3C47CBC(0, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A4338FA4();
  sub_1A5246424();
}

id sub_1A44D4038()
{
  v1 = *(v0 + 16);
  if ([v1 isTransient])
  {
    v2 = objc_opt_self();
    v3 = objc_opt_self();
    sub_1A3C37380(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1A52F9790;
    *(v4 + 32) = v1;
    sub_1A3C52C70(0, &qword_1EB126CD0);
    v5 = v1;
    v6 = sub_1A524CA14();

    v7 = [v3 transientCollectionListWithCollections:v6 title:0];

    sub_1A3C47CBC(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
    v8 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
    v9 = [v2 fetchCollectionsInCollectionList:v7 options:v8];
LABEL_5:
    v16 = v9;

    return v16;
  }

  result = [v1 photoLibrary];
  if (result)
  {
    v7 = result;
    sub_1A3C37380(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    v12 = [v1 localIdentifier];
    v13 = sub_1A524C674();
    v15 = v14;

    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    v8 = sub_1A524CA14();

    v9 = [v7 px:v8 fetchObjectsWithLocalIdentifiers:1 wantsDefaultPredicates:?];
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1A44D4298(uint64_t a1)
{
  v1 = a1;
  sub_1A3C47CBC(0, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A4338FA4();
  sub_1A52463B4();
}

id sub_1A44D444C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [v1 librarySpecificFetchOptions];
  [v3 setIncludeLocalMemories_];
  [v3 setIncludePendingMemories_];
  [v3 setIncludeStoryMemories_];
  sub_1A3C52C70(0, &qword_1EB126D20);
  sub_1A3C6DC44(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FC9F0;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1A3D710E8();
  *(v4 + 64) = v6;
  *(v4 + 32) = 1684632949;
  *(v4 + 40) = 0xE400000000000000;
  v7 = [v2 uuid];
  v8 = sub_1A524C674();
  v10 = v9;

  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v8;
  *(v4 + 80) = v10;
  v11 = sub_1A524D134();
  [v3 setPredicate_];

  v12 = [objc_opt_self() fetchMemoriesWithOptions_];
  return v12;
}

void sub_1A44D4624(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = a1;
  v3 = [v2 px_opaqueIdentifier];
  v5 = sub_1A3C52C70(0, &qword_1EB12B160);
  v4 = v3;
  sub_1A3C47CBC(0, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A44D617C();
  sub_1A5246424();
}

uint64_t sub_1A44D4820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A40F354C();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v1 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1A44D4988(uint64_t a1, uint64_t a2)
{
  sub_1A3C37380(0, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A44D4A10()
{
  if (!qword_1EB13C5E8)
  {
    sub_1A3C37380(255, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13C5E8);
    }
  }
}

uint64_t sub_1A44D4A98(uint64_t a1)
{
  sub_1A44D4988(v1 + 16, &v5);
  if (v5)
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v9 = a1;
    v3 = [v5 px_opaqueIdentifier];

    *(&v6 + 1) = MEMORY[0x1E69E5FE0];
    *&v5 = v3;
    sub_1A3C47CBC(0, &qword_1EB125448, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListImplementation);
    sub_1A44D60F8();
    sub_1A5246424();
  }

  sub_1A3C2C918(&v5, &qword_1EB125FC0, &type metadata for LemonadePhotosPagingPhotoKitContainerGridConfiguration.PhotoKitContainer);
  return 0;
}

uint64_t sub_1A44D4D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A44D4DAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A44D4E48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  sub_1A3C47CBC(0, a2, a3, a4, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v6 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  sub_1A3C37380(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52F9790;
  *(v9 + 32) = v5;
  sub_1A3C52C70(0, &qword_1EB126CD0);
  v10 = v5;
  v11 = sub_1A524CA14();

  v12 = [v8 transientCollectionListWithCollections:v11 title:0];

  v13 = [v7 fetchCollectionsInCollectionList:v12 options:v6];
  return v13;
}

void sub_1A44D4FA4(uint64_t a1)
{
  v1 = a1;
  sub_1A3C47CBC(0, &unk_1EB136E40, &qword_1EB126AA0, 0x1E69789F0, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A44D6074();
  sub_1A52463B4();
}

unint64_t sub_1A44D5158()
{
  result = qword_1EB125860;
  if (!qword_1EB125860)
  {
    sub_1A3C47CBC(255, &qword_1EB129F80, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125860);
  }

  return result;
}

uint64_t sub_1A44D51DC(uint64_t a1)
{
  result = sub_1A3C483F8(&unk_1EB12AD38, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44D5280()
{
  result = qword_1EB129F90;
  if (!qword_1EB129F90)
  {
    sub_1A3C47CBC(255, &qword_1EB129F88, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListManager);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129F90);
  }

  return result;
}

uint64_t sub_1A44D5304(uint64_t a1)
{
  result = sub_1A3C483F8(&qword_1EB12AD58, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44D53EC(uint64_t a1)
{
  result = sub_1A3C483F8(&qword_1EB133D48, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44D5490(uint64_t a1)
{
  result = sub_1A3C483F8(&unk_1EB125FB0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A44D5530(uint64_t a1)
{
  result = sub_1A3C483F8(&qword_1EB13C620, type metadata accessor for LemonadePhotosPagingHighlightGridConfiguration);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A44D55D4()
{
  result = qword_1EB12ADC0;
  if (!qword_1EB12ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADC0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(uint64_t *a1, int a2)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *__swift_store_extra_inhabitant_indexTm_4(void *result, int a2, int a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  *result = (a2 - 1);
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_65Tm(uint64_t *a1, int a2)
{
  if (a2 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *__swift_store_extra_inhabitant_index_66Tm(void *result, int a2, int a3)
{
  if (a3 != 0x7FFFFFFF)
  {
    sub_1A5245BA4();
  }

  *result = (a2 - 1);
  return result;
}

void sub_1A44D5AD8()
{
  sub_1A3C47CBC(319, &qword_1EB13C5F0, &qword_1EB126AA0, 0x1E69789F0, type metadata accessor for PhotoKitItemListManager);
  if (v0 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v1 <= 0x3F)
    {
      sub_1A3C47CBC(319, &qword_1EB120730, &qword_1EB126850, &off_1E7721830, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PXPhotosViewConfigurationAllowedBehaviors(319);
        if (v3 <= 0x3F)
        {
          sub_1A3C47CBC(319, &qword_1EB1207D0, &qword_1EB1207D8, &off_1E77218D0, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1A3C47CBC(319, &unk_1EB1207E0, &qword_1EB1207F0, off_1E771F5C8, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1A3C37710(319, &qword_1EB1201F0, sub_1A3C3637C);
              if (v6 <= 0x3F)
              {
                sub_1A5245BA4();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A44D5E18(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1A44D5E5C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_1A44D5E94()
{
  result = qword_1EB13C650;
  if (!qword_1EB13C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C650);
  }

  return result;
}

uint64_t sub_1A44D5F14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A44D5FFC(uint64_t a1)
{
  sub_1A3C37710(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A44D6074()
{
  result = qword_1EB13C660;
  if (!qword_1EB13C660)
  {
    sub_1A3C47CBC(255, &unk_1EB136E40, &qword_1EB126AA0, 0x1E69789F0, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C660);
  }

  return result;
}

unint64_t sub_1A44D60F8()
{
  result = qword_1EB125450;
  if (!qword_1EB125450)
  {
    sub_1A3C47CBC(255, &qword_1EB125448, &qword_1EB1265D0, 0x1E6978958, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125450);
  }

  return result;
}

unint64_t sub_1A44D617C()
{
  result = qword_1EB125468;
  if (!qword_1EB125468)
  {
    sub_1A3C47CBC(255, &qword_1EB125460, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125468);
  }

  return result;
}

uint64_t sub_1A44D6330(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EB1251A0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A44D639C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EB1251A0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

id sub_1A44D643C(uint64_t a1)
{
  v2 = *(a1 + qword_1EB1251B0);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *sub_1A44D648C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, unsigned __int8 a10)
{
  v55 = a7;
  v56 = a4;
  v57 = a1;
  v54 = a10;
  sub_1A3C37764(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v53 = &v46 - v17;
  v18 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v49 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v10);
  v52 = *a3;
  v21 = &v20[qword_1EB1251A0];
  *&v20[qword_1EB1251A0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v20[qword_1EB1251D0] = 0;
  v22 = qword_1EB1251C8;
  sub_1A52422E4();
  swift_allocObject();
  *&v20[v22] = sub_1A52422D4();
  v23 = qword_1EB125190;
  type metadata accessor for LemonadeFeedSpec();
  *&v20[v23] = LemonadeFeedSpec.__allocating_init()();
  *&v20[qword_1EB125208] = 0;
  *&v20[qword_1EB125200] = 0;
  swift_unknownObjectWeakInit();
  *&v20[qword_1EB1251F0] = a5;
  v24 = objc_opt_self();
  v25 = a5;
  v26 = [v24 defaultManager];
  v27 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *&v20[qword_1EB1251E8] = v27;
  v28 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  type metadata accessor for LemonadePhotoLibraryContext();
  v29 = a8;
  v30 = v25;

  v50 = v30;
  v51 = v28;
  v31 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v30, a8, v28);
  swift_beginAccess();
  *(v21 + 1) = v55;
  v55 = a6;
  swift_unknownObjectWeakAssign();
  *&v20[qword_1EB1251C0] = a8;
  v48 = v29;
  if (a8)
  {
    v32 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x288);
    v33 = v29;
    v34 = v32();
  }

  else
  {
    sub_1A5244244();
    swift_allocObject();
    v34 = sub_1A5244214();
  }

  *&v20[qword_1EB1251D8] = v34;
  *&v20[qword_1EB125188] = a9;
  *&v20[qword_1EB1251B0] = a2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v47 = a9;
  v35 = sub_1A5249624();
  sub_1A44D6AF8(&qword_1EB125170, type metadata accessor for LemonadeDestinationRootViewController);
  v36 = v35;

  sub_1A52422C4();

  sub_1A44D6AF8(&unk_1EB125178, type metadata accessor for LemonadeDestinationRootViewController);

  sub_1A5244234();

  v37 = v57;
  v38 = v49;
  sub_1A44D6B40(v57, v49, type metadata accessor for LemonadeNavigationDestination);
  if (a2)
  {
    v39 = &off_1F1721C48;
  }

  else
  {
    v39 = 0;
  }

  type metadata accessor for LemonadeNavigationContext(0);
  v40 = v56;
  v41 = v53;
  sub_1A44D6B40(v56, v53, type metadata accessor for LemonadeDetailsContext);
  v42 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v58[0] = v52;

  v43 = v36;

  *&v43[qword_1EB1251D0] = sub_1A3C799F0(v38, a2, v39, v35, v41, v58, v31, 2);

  sub_1A4655D24(v54 & 1);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v44 = v43;
  sub_1A5249644();

  swift_unknownObjectRelease();

  sub_1A44D6BA8(v40, type metadata accessor for LemonadeDetailsContext);
  sub_1A44D6BA8(v37, type metadata accessor for LemonadeNavigationDestination);
  return v44;
}

uint64_t type metadata accessor for LemonadeDestinationRootViewController()
{
  result = qword_1EB15F0B0;
  if (!qword_1EB15F0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44D6AF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A44D6B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44D6BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A44D6C30(void *a1)
{
  v1 = a1;
  v2 = sub_1A44D6CB0();

  if (v2)
  {
    sub_1A3C52C70(0, &qword_1EB126B80);
    v3 = sub_1A524CA14();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1A44D6CB0()
{
  if (!*&v0[qword_1EB1251C0])
  {
    goto LABEL_15;
  }

  v1 = [v0 navigationController];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_1A3C52C70(0, &qword_1EB126B10);
  v4 = sub_1A524CA34();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1A59097F0](0, v4);
    goto LABEL_8;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_8:
    v7 = v6;

    if ((sub_1A524DBF4() & 1) == 0)
    {
      v8 = [v7 toolbarItems];
      if (v8)
      {
        v9 = v8;
        sub_1A3C52C70(0, &qword_1EB126B80);
        v10 = sub_1A524CA34();

        return v10;
      }

      return 0;
    }

LABEL_15:
    v13.receiver = v0;
    v13.super_class = type metadata accessor for LemonadeDestinationRootViewController();
    v11 = objc_msgSendSuper2(&v13, sel_toolbarItems);
    if (v11)
    {
      v12 = v11;
      sub_1A3C52C70(0, &qword_1EB126B80);
      v10 = sub_1A524CA34();

      return v10;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1A44D6EA8(void *a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (a3)
  {
    sub_1A3C52C70(0, &qword_1EB126B80);
    sub_1A524CA34();
    v5 = a1;
    v3 = sub_1A524CA14();
  }

  else
  {
    v6 = a1;
  }

  v7.receiver = a1;
  v7.super_class = type metadata accessor for LemonadeDestinationRootViewController();
  objc_msgSendSuper2(&v7, sel_setToolbarItems_, v3);
}

void sub_1A44D6F58()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for LemonadeDestinationRootViewController();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);

  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;

  v7 = [v0 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 safeAreaInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  type metadata accessor for LemonadeFeedSpec();
  sub_1A44D6AF8(&qword_1EB13C680, type metadata accessor for LemonadeFeedSpec);
  v26.top = v10;
  v26.left = v12;
  v26.bottom = v14;
  v26.right = v16;
  LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v26);

  v17 = *&v0[qword_1EB1251C0];
  if (!v17)
  {
    goto LABEL_6;
  }

  if (!*&v0[qword_1EB1251D0])
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3D8);
  v19 = v17;

  v21 = v18(v20);
  sub_1A4655DC0(v21 & 1);

LABEL_6:
  v22 = [v0 px_splitViewController];
  if (!v22)
  {
    return;
  }

  v23 = qword_1EB1251D0;
  if (!*&v0[qword_1EB1251D0])
  {
    goto LABEL_14;
  }

  v24 = v22;

  sub_1A4655D24(1);

  if (!*&v0[v23])
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1A4655DC0([v24 isSidebarVisible]);

  [v24 registerChangeObserver_];
}

void sub_1A44D71E4(void *a1)
{
  v1 = a1;
  sub_1A44D6F58();
}

id sub_1A44D722C()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LemonadeDestinationRootViewController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);

  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;

    result = [v0 view];
    if (result)
    {
      v7 = result;
      [result safeAreaInsets];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      type metadata accessor for LemonadeFeedSpec();
      sub_1A44D6AF8(&qword_1EB13C680, type metadata accessor for LemonadeFeedSpec);
      v17.top = v9;
      v17.left = v11;
      v17.bottom = v13;
      v17.right = v15;
      LemonadeMutableContainerSizeSpecsProviderModel.setContainerSize(_:newSafeAreaInsets:)(__PAIR128__(v6, v4), v17);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A44D738C(void *a1)
{
  v1 = a1;
  sub_1A44D722C();
}

void sub_1A44D73D4(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*&a1[qword_1EB1251D0])
  {
    v5 = a1;
    v6 = a3;
    v8 = v5;

    LOBYTE(v5) = sub_1A4655D4C();

    if (v5)
    {
      v7 = [v8 parentViewController];
      [v7 setContentScrollView:v6 forEdge:a4];
    }

    else
    {
      v9.receiver = v8;
      v9.super_class = type metadata accessor for LemonadeDestinationRootViewController();
      objc_msgSendSuper2(&v9, sel_setContentScrollView_forEdge_, v6, a4);
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_1A44D74DC(char *result, uint64_t a2, void *a3)
{
  if (*&result[qword_1EB1251D0])
  {
    v3 = result;
    v4 = a3;
    v5 = v3;

    v6 = sub_1A465A2B8(v4);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44D7550(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A44D75EC, v5, v4);
}

uint64_t sub_1A44D75EC()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A44D7708;
  v3 = swift_continuation_init();
  sub_1A43A6C50();
  v0[17] = v4;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A43A6168;
  v0[13] = &block_descriptor_205;
  v0[14] = v3;
  [v1 px:v2 dismissPresentedViewControllerWithOptions:v0 + 10 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A44D7708()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A44D7D04;
  }

  else
  {
    v5 = sub_1A44D7838;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1A44D7838()
{
  v1 = v0[18];
  if (v1 == 1)
  {
    v2 = v0[21];
    v3 = qword_1EB1251D0;
    v0[26] = qword_1EB1251D0;
    v4 = *(v2 + v3);
    v0[27] = v4;
    if (v4)
    {

      v5 = swift_task_alloc();
      v0[28] = v5;
      *v5 = v0;
      v5[1] = sub_1A44D7948;
      v7 = v0[19];
      v6 = v0[20];

      sub_1A465A32C(v7, v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v8 = v0[1];

    v8(v1);
  }
}

uint64_t sub_1A44D7948(uint64_t a1)
{
  v3 = *v2;
  v3[29] = a1;
  v3[30] = v1;

  if (v1)
  {
    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A44D7D78;
  }

  else
  {

    v4 = v3[23];
    v5 = v3[24];
    v6 = sub_1A44D7A64;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

void sub_1A44D7A64()
{
  if (v0[29] == 1)
  {
    v1 = *(v0[21] + v0[26]);
    v0[31] = v1;
    if (v1)
    {

      v2 = swift_task_alloc();
      v0[32] = v2;
      *v2 = v0;
      v2[1] = sub_1A44D7B6C;
      v4 = v0[19];
      v3 = v0[20];

      sub_1A465A8EC(v4, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v5 = v0[29];
    v6 = v0[1];

    v6(v5);
  }
}

uint64_t sub_1A44D7B6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A44D7DE8;
  }

  else
  {

    v4[34] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_1A44D7C9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A44D7C9C()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A44D7D04()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A44D7D78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A44D7DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A44D7E58(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = a1;
  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A5343448;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A5343458;
  v16[5] = v15;
  v17 = a3;
  v18 = a1;
  sub_1A403AC74(0, 0, v11, &unk_1A5343468, v16);
}

uint64_t sub_1A44D7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44D8078, v6, v5);
}

uint64_t sub_1A44D8078()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1A44D8140;
  v8 = v0[2];
  v7 = v0[3];

  return sub_1A44D7550(v8, v7);
}

uint64_t sub_1A44D8140(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 56);
  if (v3)
  {
    v11 = sub_1A5240B74();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 56), a1, 0);
  }

  _Block_release(*(v6 + 56));
  v12 = *(v9 + 8);

  return v12();
}

id sub_1A44D82F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1A44D83F0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A44D8450(uint64_t *a1))(void **a1, char a2)
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
  v5 = qword_1EB1251B8;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A44D84E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + qword_1EB1EADB0 + 256))();
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1A524CA14();
  if (a3)
  {
    a3 = sub_1A524CF34();
  }

  v8 = [v6 actionMenuElementsForObjects:v7 allowedActionTypes:a3];

  swift_unknownObjectRelease();
  sub_1A3C5D0E8(0, &qword_1EB120AE0);
  v9 = sub_1A524CA34();

  return v9;
}

uint64_t sub_1A44D8618(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + qword_1EB1EADB0 + 256))();
  if (result)
  {
    v6 = result;
    sub_1A44D9D88(MEMORY[0x1E69E7CC0]);
    type metadata accessor for PXActionParameterKey();
    sub_1A44D6AF8(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
    v7 = sub_1A524C3D4();

    [v6 performActionWithType:a1 objects:a2 parameters:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A44D8768(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + qword_1EB1EADB0 + 256))();
  if (result)
  {
    v4 = result;
    v5 = *off_1E77219D8;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = sub_1A524EA94();
    v7 = [objc_opt_self() arrayWithObject_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1A3C37764(0, &unk_1EB146250, sub_1A44D9E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v9 = *off_1E77219C0;
    *(inited + 32) = *off_1E77219C0;
    *(inited + 64) = swift_getObjectType();
    *(inited + 40) = a1;
    v10 = v9;
    swift_unknownObjectRetain();
    sub_1A44D9D88(inited);
    swift_setDeallocating();
    sub_1A44D6BA8(inited + 32, sub_1A44D9E98);
    type metadata accessor for PXActionParameterKey();
    sub_1A44D6AF8(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
    v11 = sub_1A524C3D4();

    [v4 performActionWithType:v5 objects:v7 parameters:v11];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A44D8A1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for LemonadeDnDUtilities();
  v9 = (*((*MEMORY[0x1E69E7D40] & *v4) + qword_1EB1EADB0 + 256))();
  static LemonadeDnDUtilities.performActionForDragging(containerObject:sourceObjects:targetObject:actionProviderDelegate:merging:)(a1, a2, a3, v9, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A44D8AF4()
{
  sub_1A44D9F04(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + qword_1EB1EADB0 + 104))(v2);
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    sub_1A52441D4();
    sub_1A3E7CAB0();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = sub_1A5244204();
    (*(v7 + 8))(v4, v10, ObjectType, v7);
    swift_unknownObjectRelease();

    return sub_1A44D6BA8(v4, sub_1A44D9F04);
  }

  return result;
}

uint64_t sub_1A44D8CD8()
{

  sub_1A3D35A10(v0 + qword_1EB1251A0);

  swift_unknownObjectRelease();

  v1 = v0 + qword_1EB1251B8;

  return sub_1A3D35A10(v1);
}

id sub_1A44D8DC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDestinationRootViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A44D8E00(uint64_t a1)
{

  sub_1A3D35A10(a1 + qword_1EB1251A0);

  swift_unknownObjectRelease();

  v2 = a1 + qword_1EB1251B8;

  return sub_1A3D35A10(v2);
}

void *sub_1A44D90F4()
{
  v1 = *(*v0 + qword_1EB125188);
  v2 = v1;
  return v1;
}

void sub_1A44D9128(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*&a1[qword_1EB1251D0])
  {
    v5 = a1;

    sub_1A4655DC0(a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A44D9198(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A44D9F38();
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44D9FF4();
  v49 = v7;
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A44DA0A8(0);
  v39[8] = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1A44DA0DC(0);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  sub_1A44DA184(0);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1A44DA254(0);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v43 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA288(0);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA2BC(0);
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v50 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA324(0);
  v39[7] = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44DA110(0, &unk_1EB13C730, sub_1A44DA324, sub_1A44DA38C);
  v21 = v20;
  v51 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v39[6] = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v39[5] = v39 - v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v39[1] = v19;
    v39[2] = v21;
    v53 = *(Strong + qword_1EB125190);
    v39[4] = v2;
    v27 = swift_unknownObjectWeakLoadStrong();
    v39[3] = a1;
    if (!v27)
    {

      goto LABEL_10;
    }

    v28 = v27;
    v29 = *(v27 + qword_1EB1251D0);

    if (v29)
    {
      v30 = *(v29 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

      v31 = *(v30 + 40);
      v32 = v31;

      if (v31)
      {

        v34 = 3;
        goto LABEL_11;
      }

LABEL_10:
      v34 = 0;
LABEL_11:
      v52 = v34;
      MEMORY[0x1EEE9AC00](v33);
      v39[-2] = v26;
      v36 = type metadata accessor for LemonadeFeedSpec();
      sub_1A3EED270();
      sub_1A44D6AF8(&qword_1EB12E400, sub_1A3EED270);
      LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v53, &v52, sub_1A44DA408, v36, v6);
      v37 = sub_1A44D6AF8(&qword_1EB13C6C8, sub_1A44D9F38);
      v38 = v26;
      sub_1A49E2648(v38, v40, v37);
      sub_1A44D6BA8(v6, sub_1A44D9F38);
      swift_getKeyPath();
      sub_1A3D63A24(0);
      sub_1A3C52C70(0, &qword_1EB126B10);
      sub_1A5245CA4();
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    v35 = *(v51 + 56);

    v35(a1, 1, 1, v21);
  }
}

uint64_t sub_1A44D9BC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44D6B40(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v6, a1, 0, a2);
}

void sub_1A44D9C84()
{
  *(v0 + qword_1EB1251A0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_1EB1251D0) = 0;
  v1 = qword_1EB1251C8;
  sub_1A52422E4();
  swift_allocObject();
  *(v0 + v1) = sub_1A52422D4();
  v2 = qword_1EB125190;
  type metadata accessor for LemonadeFeedSpec();
  *(v0 + v2) = LemonadeFeedSpec.__allocating_init()();
  *(v0 + qword_1EB125208) = 0;
  *(v0 + qword_1EB125200) = 0;
  swift_unknownObjectWeakInit();
  sub_1A524E6E4();
  __break(1u);
}

unint64_t sub_1A44D9D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A44DADDC();
    v3 = sub_1A524E794();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A44D6B40(v4, &v11, sub_1A44D9E98);
      v5 = v11;
      result = sub_1A3C8BF74(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A3C57128(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A44D9E98()
{
  if (!qword_1EB13C690)
  {
    type metadata accessor for PXActionParameterKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13C690);
    }
  }
}

void sub_1A44D9F38()
{
  if (!qword_1EB13C6B0)
  {
    type metadata accessor for LemonadeFeedSpec();
    sub_1A3EED270();
    sub_1A44D6AF8(&qword_1EB12E400, sub_1A3EED270);
    v0 = type metadata accessor for LemonadeSpecsProviderView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C6B0);
    }
  }
}

void sub_1A44D9FF4()
{
  if (!qword_1EB13C6C0)
  {
    sub_1A44D9F38();
    sub_1A44D6AF8(&qword_1EB13C6C8, sub_1A44D9F38);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13C6C0);
    }
  }
}

void sub_1A44DA110(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A44DA1EC()
{
  if (!qword_1EB126A70)
  {
    sub_1A3C5D0E8(255, &qword_1EB126A80);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126A70);
    }
  }
}

void sub_1A44DA38C()
{
  if (!qword_1EB1220C8)
  {
    sub_1A3C4886C(255, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v0 = sub_1A5249F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1220C8);
    }
  }
}

uint64_t sub_1A44DA408@<X0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 16) + qword_1EB1251D0))
  {
    type metadata accessor for LemonadeNavigationDestinationView();
    sub_1A44D6AF8(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    swift_retain_n();
    sub_1A47E5794(sub_1A44DADD4, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A44DA4D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A44DA604()
{
  result = qword_1EB13C800;
  if (!qword_1EB13C800)
  {
    sub_1A44DA67C();
    sub_1A44DA704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C800);
  }

  return result;
}

void sub_1A44DA67C()
{
  if (!qword_1EB13C808)
  {
    sub_1A44DA110(255, &unk_1EB13C730, sub_1A44DA324, sub_1A44DA38C);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C808);
    }
  }
}

unint64_t sub_1A44DA704()
{
  result = qword_1EB13C810;
  if (!qword_1EB13C810)
  {
    sub_1A44DA110(255, &unk_1EB13C730, sub_1A44DA324, sub_1A44DA38C);
    sub_1A44DA7E4();
    sub_1A44D6AF8(&qword_1EB1220D8, sub_1A44DA38C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C810);
  }

  return result;
}

unint64_t sub_1A44DA7E4()
{
  result = qword_1EB13C818;
  if (!qword_1EB13C818)
  {
    sub_1A44DA324(255);
    sub_1A44DA894();
    sub_1A44D6AF8(&qword_1EB122170, sub_1A44DA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C818);
  }

  return result;
}

unint64_t sub_1A44DA894()
{
  result = qword_1EB13C820;
  if (!qword_1EB13C820)
  {
    sub_1A44DA2BC(255);
    sub_1A44DA944();
    sub_1A44D6AF8(&qword_1EB122198, sub_1A44DA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C820);
  }

  return result;
}

unint64_t sub_1A44DA944()
{
  result = qword_1EB13C828;
  if (!qword_1EB13C828)
  {
    sub_1A44DA288(255);
    sub_1A44DA9F4();
    sub_1A44D6AF8(&qword_1EB127A20, sub_1A3D63B0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C828);
  }

  return result;
}

unint64_t sub_1A44DA9F4()
{
  result = qword_1EB13C830;
  if (!qword_1EB13C830)
  {
    sub_1A44DA254(255);
    sub_1A44DAAA4();
    sub_1A44D6AF8(&qword_1EB127780, sub_1A3E7D334);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C830);
  }

  return result;
}

unint64_t sub_1A44DAAA4()
{
  result = qword_1EB13C838;
  if (!qword_1EB13C838)
  {
    sub_1A44DA184(255);
    sub_1A44DAB54();
    sub_1A44D6AF8(&unk_1EB127760, sub_1A44DA1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C838);
  }

  return result;
}

unint64_t sub_1A44DAB54()
{
  result = qword_1EB13C840;
  if (!qword_1EB13C840)
  {
    sub_1A44DA0DC(255);
    sub_1A44DAC04();
    sub_1A44D6AF8(&qword_1EB127950, sub_1A3D639BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C840);
  }

  return result;
}

unint64_t sub_1A44DAC04()
{
  result = qword_1EB13C848;
  if (!qword_1EB13C848)
  {
    sub_1A44DA0A8(255);
    sub_1A44D9F38();
    sub_1A44D6AF8(&qword_1EB13C6C8, sub_1A44D9F38);
    swift_getOpaqueTypeConformance2();
    sub_1A44D6AF8(&qword_1EB1278C0, sub_1A3D63A24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C848);
  }

  return result;
}

uint64_t sub_1A44DAD14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A44D7FDC(v2, v3, v5, v4);
}

void sub_1A44DADDC()
{
  if (!qword_1EB13C858)
  {
    type metadata accessor for PXActionParameterKey();
    sub_1A44D6AF8(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C858);
    }
  }
}

uint64_t sub_1A44DAFA0(uint64_t result)
{
  v2 = *v1 + 1;
  v3 = __OFSUB__(result, v2);
  v4 = result - v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = __OFADD__(v4, 3);
  v5 = v4 + 3;
  if (v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v5 <= 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

PhotosUICore::LemonadeFeedZoomLevel_optional __swiftcall LemonadeFeedZoomLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

PXSidebarDataManagerFactory __swiftcall PXSidebarDataManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A44DB454(char a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  swift_getWitnessTable();
  v7 = PhotosModel.photokitObject.getter(v6);
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      if (a3)
      {
        a3 = sub_1A524C634();
      }

      v16 = [objc_allocWithZone(PXNavigationListAssetCollectionItem) initWithAssetCollection:v10 accessoryTitle:0 reorderable:a1 & 1 topLevelIdentifier:a3];

      [v16 setLockState_];
LABEL_13:

      return v16;
    }
  }

  v12 = PhotosModel.photokitObject.getter(v6);
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      if (a3)
      {
        v8 = sub_1A524C634();
      }

      else
      {
        v8 = 0;
      }

      v16 = [objc_allocWithZone(PXNavigationListCollectionListItem) initWithCollectionList:v15 accessoryTitle:0 reorderable:a1 & 1 topLevelIdentifier:v8];

      goto LABEL_13;
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A44DB6B4(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x78));
  *v5 = 0;
  v5[1] = 0;
  v6 = *((*v4 & *v1) + 0x88);
  *(v2 + v6) = sub_1A44DDCB8(MEMORY[0x1E69E7CC0]);
  *(v2 + *((*v4 & *v2) + 0x68)) = a1;
  type metadata accessor for LemonadeMediaTypesItemListManager();
  sub_1A44DE7F4(&qword_1EB13C890, type metadata accessor for LemonadeMediaTypesItemListManager);

  sub_1A5245904();
}

void sub_1A44DB9A8(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x78));
  *v5 = 0;
  v5[1] = 0;
  v6 = *((*v4 & *v1) + 0x88);
  *(v2 + v6) = sub_1A44DDCB8(MEMORY[0x1E69E7CC0]);
  *(v2 + *((*v4 & *v2) + 0x68)) = a1;
  sub_1A3CA2420(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
  sub_1A44DE614(&qword_1EB129FE0, &qword_1EB129FD8, type metadata accessor for PhotoKitItemListManager);

  sub_1A5245904();
}

void sub_1A44DC324()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1A5245904();
}

void sub_1A44DC7CC()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v9[4] = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *((v2 & v1) + 0x58);
  v4 = *((v2 & v1) + 0x50);
  swift_getAssociatedTypeWitness();
  v9[3] = v3;
  v9[2] = v4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9[12] = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = *((v2 & v1) + 0x88);
  swift_beginAccess();
  v9[11] = *(v0 + v8);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A44DD118(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  swift_unknownObjectRelease();
  v3 = *((*v2 & *a1) + 0x70);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v3], AssociatedTypeWitness);
  swift_unknownObjectRelease();
}

uint64_t sub_1A44DD384(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16 - v11;
  MEMORY[0x1A59016D0](a1, v7, v6, v10);
  v13 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x78));
  v14 = (*(*((v5 & v4) + 0x60) + 8))(*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70)), *v13, v13[1], AssociatedTypeWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  return v14;
}

id sub_1A44DD550(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = sub_1A44DD384(a3);

  return v5;
}

id sub_1A44DD5CC(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A44DD658(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
}

uint64_t sub_1A44DD710(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A44DE540();
  v33 = a2;
  result = sub_1A524E774();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void *sub_1A44DD9BC()
{
  v1 = v0;
  sub_1A44DE540();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = 16 * (v13 | (v8 << 6));
        v17 = (*(v2 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + v16);
        v21 = (*(v4 + 48) + v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + v16) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A44DDB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A3C5DCA4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A44DD710(v18, a5 & 1);
      v13 = sub_1A3C5DCA4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A44DD9BC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v26 = (v23[6] + 16 * v13);
    *v26 = a3;
    v26[1] = a4;
    v27 = (v23[7] + 16 * v13);
    *v27 = a1;
    v27[1] = a2;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v24 = (v23[7] + 16 * v13);
  *v24 = a1;
  v24[1] = a2;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A44DDCB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A44DE540();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A44DDDC8(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  type metadata accessor for LemonadePhotoLibraryContext();
  LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(a1, 0, 0);
  sub_1A4A49A88();
  v8 = MEMORY[0x1E69E7D40];
  if (a4)
  {
    type metadata accessor for PickerConfiguration();
    v9 = PickerConfiguration.__allocating_init()();
    if (v9)
    {
      v10 = *((*v8 & *v9) + 0x3E0);
      v11 = v9;
      v10(1);
      v12 = sub_1A4A4A0D4();
      sub_1A3D6B090(v12);
      if (a5)
      {
        sub_1A3D6BDD4(&v13, 2);
      }
    }
  }

  type metadata accessor for UtilityAlbumItemListManager();

  sub_1A4426BEC();
}

void sub_1A44DE1D8()
{
  if (!qword_1EB13C898)
  {
    sub_1A3CA2420(255, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
    sub_1A44DE614(&qword_1EB129FE0, &qword_1EB129FD8, type metadata accessor for PhotoKitItemListManager);
    v0 = type metadata accessor for ItemListManagerDataSectionManager();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C898);
    }
  }
}

uint64_t sub_1A44DE2B8()
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1A44DE380()
{
  result = swift_checkMetadataState();
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

void sub_1A44DE4A0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a2 & 3) != 0)
    {
      v5 = [objc_opt_self() changeDetailsWithNoIncrementalChanges];
      [v4 updateDataSectionWithChangeDetails_];
    }
  }
}

void sub_1A44DE540()
{
  if (!qword_1EB120440)
  {
    sub_1A3C652C8(255, &qword_1EB124A70);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120440);
    }
  }
}

uint64_t sub_1A44DE5BC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1A44DBFB0();
  }

  return result;
}

uint64_t sub_1A44DE614(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3CA2420(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44DE6A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A44DE7F4(a4, a5);
    v8 = type metadata accessor for ItemListManagerDataSectionManager();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A44DE770()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1A44DBCA0();
  }

  return result;
}

uint64_t sub_1A44DE7F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PhotosDetailsVisualLookupWidgetView()
{
  result = qword_1EB18F1D0;
  if (!qword_1EB18F1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A44DE888@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView() + 20));
  type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel();
  sub_1A44E6248(&unk_1EB12A990, type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel);
  result = sub_1A5248494();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t *sub_1A44DE954()
{
  if (qword_1EB18F260 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB5D0;
}

uint64_t *sub_1A44DE9B8()
{
  if (qword_1EB18F268 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB5D8;
}

uint64_t sub_1A44DEA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  sub_1A44E0578(0, &qword_1EB122AD8, sub_1A44E02E8, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v125 - v5;
  sub_1A3EE1618();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v145 = (v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3EE15DC(0);
  v144 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v147 = (v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3EE1534(0);
  v166 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v146 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v149 = (v125 - v14);
  v15 = MEMORY[0x1E697F948];
  sub_1A44E5774(0, &qword_1EB122B28, sub_1A44E0330, sub_1A3EE1534, MEMORY[0x1E697F948]);
  v164 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v165 = v125 - v17;
  v138 = sub_1A52489A4();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v133 = v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PhotosDetailsVisualLookupWidgetView();
  v20 = v19 - 8;
  v129 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v151 = v21;
  v152 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0E4C();
  v132 = v22;
  v131 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v130 = v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0CCC(0);
  v134 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v135 = v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1E697CBE8];
  v27 = MEMORY[0x1E697E830];
  sub_1A44E5774(0, &qword_1EB1237F8, sub_1A44E0CCC, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v136 = v125 - v29;
  sub_1A44E0CA4(0);
  v158 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v139 = v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0BC4(0, &qword_1EB121EB0, sub_1A44E0CA4, sub_1A44E1288);
  v160 = v32;
  v141 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v140 = v125 - v33;
  sub_1A44E0A88();
  v161 = v34;
  v143 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v142 = v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E5774(0, &qword_1EB122BF0, sub_1A44E0378, sub_1A44E0A88, v15);
  v155 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v159 = v125 - v37;
  v156 = sub_1A5249764();
  v150 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v148 = v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0460(0);
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v42 = (v125 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A44E5774(0, &qword_1EB1234F0, sub_1A44E0460, v26, v27);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = v125 - v44;
  sub_1A44E03AC(0);
  v153 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v48 = v125 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0378(0);
  v154 = v49;
  v128 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v127 = v125 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E0330(0);
  v162 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v157 = v125 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E02E8(0);
  v54 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v163 = v125 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v57 = *(a1 + *(v20 + 28) + 8);
  if (sub_1A4184E34())
  {
    v125[1] = v54;
    v125[2] = v4;
    v126 = v6;
    if ((*((*MEMORY[0x1E69E7D40] & *v57) + 0x140))() != 5)
    {
      v88 = sub_1A5249584();
      v89 = v145;
      *v145 = v88;
      v89[1] = 0x4028000000000000;
      *(v89 + 16) = 0;
      sub_1A44E60B8(0, &qword_1EB1244B0, sub_1A3EE16AC);
      sub_1A44E3414(v56, v89 + *(v90 + 44));
    }

    if (sub_1A4184D8C())
    {
      *v42 = sub_1A524BC74();
      v42[1] = v58;
      sub_1A44E60B8(0, &qword_1EB13C8C8, sub_1A44E053C);
      sub_1A44E1830(v56, v42 + *(v59 + 44));
      v60 = v42 + *(v40 + 36);
      v61 = *(sub_1A5248A14() + 20);
      v62 = *MEMORY[0x1E697F468];
      v63 = sub_1A52494A4();
      (*(*(v63 - 8) + 104))(&v60[v61], v62, v63);
      __asm { FMOV            V0.2D, #16.0 }

      *v60 = _Q0;
      sub_1A3EC447C();
      v60[*(v69 + 36)] = 0;
      v70 = sub_1A4184BE4();
      if (v71)
      {
        v72 = v70;
      }

      else
      {
        v72 = 0;
      }

      if (v71)
      {
        v73 = v71;
      }

      else
      {
        v73 = 0xE000000000000000;
      }

      *&v172 = v72;
      *(&v172 + 1) = v73;
      sub_1A44E09A8();
      sub_1A3D5F9DC();
      sub_1A524AC14();

      sub_1A44E61E8(v42, sub_1A44E0460);
      sub_1A44E1EA8();
      sub_1A44E1EA8();
      sub_1A524BC74();
      sub_1A52481F4();
      sub_1A44E5AB0(v45, v48, &qword_1EB1234F0, sub_1A44E0460);
      v74 = v153;
      v75 = &v48[*(v153 + 36)];
      v76 = v173;
      *v75 = v172;
      *(v75 + 1) = v76;
      *(v75 + 2) = v174;
      v77 = v148;
      sub_1A5248B84();
      v78 = sub_1A44E08F0();
      v79 = sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658]);
      v80 = v127;
      v81 = v156;
      sub_1A524A974();
      (*(v150 + 8))(v77, v81);
      sub_1A44E61E8(v48, sub_1A44E03AC);
      v82 = v128;
      v83 = v154;
      (*(v128 + 16))(v159, v80, v154);
      swift_storeEnumTagMultiPayload();
      v168 = v74;
      v169 = v81;
      v170 = v78;
      v171 = v79;
      swift_getOpaqueTypeConformance2();
      v84 = sub_1A44E1288();
      v168 = v158;
      v169 = v81;
      v170 = v84;
      v171 = v79;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v168 = v160;
      v169 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v86 = v157;
      sub_1A5249744();
      (*(v82 + 8))(v80, v83);
    }

    else
    {
      v149 = type metadata accessor for PhotosDetailsVisualLookupWidgetView;
      v91 = v152;
      sub_1A44E570C(v56, v152, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
      v92 = (*(v129 + 80) + 16) & ~*(v129 + 80);
      v93 = swift_allocObject();
      v147 = type metadata accessor for PhotosDetailsVisualLookupWidgetView;
      v94 = sub_1A44E58C8(v91, v93 + v92, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
      MEMORY[0x1EEE9AC00](v94);
      v125[-2] = v56;
      sub_1A44E0EE8(0);
      sub_1A44E1678(&qword_1EB1235F0, sub_1A44E0EE8, sub_1A44E11D8);
      v95 = v130;
      sub_1A524B704();
      v96 = v133;
      sub_1A5248994();
      sub_1A44E6248(&qword_1EB121B08, sub_1A44E0E4C);
      sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248]);
      v97 = v135;
      v98 = v132;
      v99 = v138;
      sub_1A524A934();
      (*(v137 + 8))(v96, v99);
      (*(v131 + 8))(v95, v98);
      v100 = (v97 + *(v134 + 36));
      sub_1A3E744F4(0);
      sub_1A5248AF4();
      *v100 = swift_getKeyPath();
      v101 = sub_1A4184BE4();
      if (v102)
      {
        v103 = v101;
      }

      else
      {
        v103 = 0;
      }

      if (v102)
      {
        v104 = v102;
      }

      else
      {
        v104 = 0xE000000000000000;
      }

      *&v172 = v103;
      *(&v172 + 1) = v104;
      sub_1A44E1418();
      sub_1A3D5F9DC();
      v105 = v136;
      sub_1A524AC14();

      sub_1A44E61E8(v97, sub_1A44E0CCC);
      sub_1A44E1EA8();
      sub_1A44E1EA8();
      sub_1A524BC74();
      sub_1A52481F4();
      v106 = v139;
      sub_1A44E5AB0(v105, v139, &qword_1EB1237F8, sub_1A44E0CCC);
      v107 = v158;
      v108 = (v106 + *(v158 + 36));
      v109 = v173;
      *v108 = v172;
      v108[1] = v109;
      v108[2] = v174;
      v110 = v148;
      sub_1A5248B84();
      v111 = sub_1A44E1288();
      v112 = sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658]);
      v113 = v140;
      v114 = v156;
      sub_1A524A974();
      (*(v150 + 8))(v110, v114);
      sub_1A44E61E8(v106, sub_1A44E0CA4);
      v115 = v56;
      v116 = v152;
      sub_1A44E570C(v115, v152, v149);
      v117 = swift_allocObject();
      sub_1A44E58C8(v116, v117 + v92, v147);
      v168 = v107;
      v169 = v114;
      v170 = v111;
      v171 = v112;
      v118 = swift_getOpaqueTypeConformance2();
      v119 = v142;
      v120 = v160;
      sub_1A524AA84();

      (*(v141 + 8))(v113, v120);
      v121 = v143;
      v122 = v161;
      (*(v143 + 16))(v159, v119, v161);
      swift_storeEnumTagMultiPayload();
      v123 = sub_1A44E08F0();
      v168 = v153;
      v169 = v114;
      v170 = v123;
      v171 = v112;
      swift_getOpaqueTypeConformance2();
      v168 = v120;
      v169 = v118;
      swift_getOpaqueTypeConformance2();
      v86 = v157;
      sub_1A5249744();
      (*(v121 + 8))(v119, v122);
    }

    sub_1A44E5860(v86, v165, sub_1A44E0330);
    swift_storeEnumTagMultiPayload();
    sub_1A44E5570();
    sub_1A44E1678(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
    v124 = v163;
    sub_1A5249744();
    sub_1A44E61E8(v86, sub_1A44E0330);
    sub_1A44E5860(v124, v126, sub_1A44E02E8);
    swift_storeEnumTagMultiPayload();
    sub_1A44E54B8();
    sub_1A5249744();
    return sub_1A44E61E8(v124, sub_1A44E02E8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A44E54B8();
    return sub_1A5249744();
  }
}

void sub_1A44E0258()
{
  if (!qword_1EB121CE0)
  {
    sub_1A44E0578(255, &qword_1EB122398, sub_1A44E02E8, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121CE0);
    }
  }
}

void sub_1A44E03D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A44E5774(255, a3, a4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A44E04A8()
{
  if (!qword_1EB121588)
  {
    sub_1A44E053C(255);
    sub_1A44E6248(&qword_1EB121278, sub_1A44E053C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121588);
    }
  }
}

void sub_1A44E0578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A44E05E4()
{
  if (!qword_1EB123F70)
  {
    sub_1A44E0D50(255, &qword_1EB121F48, sub_1A44E067C, &qword_1EB121A70, sub_1A44E067C);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123F70);
    }
  }
}

void sub_1A44E067C()
{
  if (!qword_1EB121A68)
  {
    sub_1A44E0710();
    sub_1A44E6248(&qword_1EB121700, sub_1A44E0710);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121A68);
    }
  }
}

void sub_1A44E0710()
{
  if (!qword_1EB1216F8)
  {
    sub_1A44E07A4(255);
    sub_1A44E6248(&qword_1EB1210F0, sub_1A44E07A4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1216F8);
    }
  }
}

void sub_1A44E07E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A44E085C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A44E6068(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A44E08F0()
{
  result = qword_1EB123260;
  if (!qword_1EB123260)
  {
    sub_1A44E03AC(255);
    sub_1A44E1340(&qword_1EB1234F8, &qword_1EB1234F0, sub_1A44E0460, sub_1A44E09A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123260);
  }

  return result;
}

unint64_t sub_1A44E09A8()
{
  result = qword_1EB1239E8;
  if (!qword_1EB1239E8)
  {
    sub_1A44E0460(255);
    sub_1A44E6248(&qword_1EB121590, sub_1A44E04A8);
    sub_1A44E6248(&qword_1EB122308, sub_1A3EC447C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1239E8);
  }

  return result;
}

void sub_1A44E0A88()
{
  if (!qword_1EB121E70)
  {
    sub_1A44E0BC4(255, &qword_1EB121EB0, sub_1A44E0CA4, sub_1A44E1288);
    sub_1A44E0CA4(255);
    sub_1A5249764();
    sub_1A44E1288();
    sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E70);
    }
  }
}

void sub_1A44E0BC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5249764();
    a4();
    sub_1A44E6248(&qword_1EB122360, MEMORY[0x1E697C658]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A44E0D50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A52489A4();
    sub_1A44E6248(a4, a5);
    sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A44E0E4C()
{
  if (!qword_1EB121B00)
  {
    sub_1A44E0EE8(255);
    sub_1A44E1678(&qword_1EB1235F0, sub_1A44E0EE8, sub_1A44E11D8);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121B00);
    }
  }
}

void sub_1A44E0F60()
{
  if (!qword_1EB121918)
  {
    sub_1A44E0FF4(255);
    sub_1A44E6248(&qword_1EB121120, sub_1A44E0FF4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121918);
    }
  }
}

void sub_1A44E1028()
{
  if (!qword_1EB123300)
  {
    sub_1A44E10A0(255);
    sub_1A44E10C8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB123300);
    }
  }
}

void sub_1A44E10C8()
{
  if (!qword_1EB121990)
  {
    sub_1A44E115C();
    sub_1A44E6248(&unk_1EB121240, sub_1A44E115C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121990);
    }
  }
}

void sub_1A44E115C()
{
  if (!qword_1EB121238)
  {
    sub_1A44E5EA0(255, &qword_1EB124018, sub_1A3DF14C0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121238);
    }
  }
}

unint64_t sub_1A44E11D8()
{
  result = qword_1EB123BA0;
  if (!qword_1EB123BA0)
  {
    sub_1A44E0F24(255);
    sub_1A44E6248(&qword_1EB121920, sub_1A44E0F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BA0);
  }

  return result;
}

unint64_t sub_1A44E1288()
{
  result = qword_1EB1233E8;
  if (!qword_1EB1233E8)
  {
    sub_1A44E0CA4(255);
    sub_1A44E1340(&qword_1EB123800, &qword_1EB1237F8, sub_1A44E0CCC, sub_1A44E1418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1233E8);
  }

  return result;
}

uint64_t sub_1A44E1340(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A44E5774(255, a2, a3, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    a4();
    sub_1A44E6248(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A44E1418()
{
  result = qword_1EB123F68;
  if (!qword_1EB123F68)
  {
    sub_1A44E0CCC(255);
    sub_1A44E0E4C();
    sub_1A52489A4();
    sub_1A44E6248(&qword_1EB121B08, sub_1A44E0E4C);
    sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A44E6248(&qword_1EB1220F0, sub_1A3E744F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F68);
  }

  return result;
}

void sub_1A44E1578(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A44E07E0(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A44E15D4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A44E16F8(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A44E1678(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A44E16F8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A44E085C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A44E1748(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A44E085C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A44E17CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A44E1830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = sub_1A52489A4();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosDetailsVisualLookupWidgetView();
  v5 = v4 - 8;
  v54 = *(v4 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A44E067C();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44E05E4();
  v59 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  sub_1A3EC3E2C(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = *(a1 + *(v5 + 28) + 8);
  sub_1A4110614(v22);
  sub_1A44E1EA8();
  sub_1A44E1EA8();
  sub_1A524BC74();
  sub_1A52481F4();
  v23 = &v21[*(v17 + 44)];
  v24 = v66;
  *v23 = v65;
  *(v23 + 1) = v24;
  *(v23 + 2) = v67;
  sub_1A44E570C(a1, &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsVisualLookupWidgetView);
  v25 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v26 = swift_allocObject();
  sub_1A44E58C8(&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
  v64 = a1;
  sub_1A44E0710();
  sub_1A44E6248(&qword_1EB121700, sub_1A44E0710);
  sub_1A524B704();
  v27 = v55;
  sub_1A5248994();
  sub_1A44E6248(&qword_1EB121A70, sub_1A44E067C);
  sub_1A44E6248(&qword_1EB122F70, MEMORY[0x1E697C248]);
  v28 = v56;
  v29 = v60;
  sub_1A524A934();
  (*(v62 + 8))(v27, v29);
  v30 = (*(v57 + 8))(v10, v28);
  v31 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0xC0))(v30);
  [v31 contentGuideInsets];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = EdgeInsets.init(_:)(v33, v35, v37, v39);
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = sub_1A524A064();
  v48 = v58;
  v49 = &v15[*(v59 + 44)];
  *v49 = v47;
  *(v49 + 1) = v40;
  *(v49 + 2) = v42;
  *(v49 + 3) = v44;
  *(v49 + 4) = v46;
  v49[40] = 0;
  sub_1A44E5860(v21, v48, sub_1A3EC3E2C);
  v50 = v61;
  sub_1A44E5860(v15, v61, sub_1A44E05E4);
  v51 = v63;
  sub_1A44E5860(v48, v63, sub_1A3EC3E2C);
  sub_1A44E07E0(0, &qword_1EB124288, sub_1A3EC3E2C, sub_1A44E05E4);
  sub_1A44E5860(v50, v51 + *(v52 + 48), sub_1A44E05E4);
  sub_1A44E61E8(v15, sub_1A44E05E4);
  sub_1A44E61E8(v21, sub_1A3EC3E2C);
  sub_1A44E61E8(v50, sub_1A44E05E4);
  return sub_1A44E61E8(v48, sub_1A3EC3E2C);
}

uint64_t sub_1A44E1EA8()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4248EC0(v4);
  v5 = *MEMORY[0x1E69E7D40] & **(v0 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView() + 20) + 8);
  v6 = (*(v5 + 320))();
  v7 = sub_1A4184D8C();
  if (v6 != 5)
  {
    return (*(v2 + 8))(v4, v1);
  }

  if (v7)
  {
    sub_1A4110B60();
  }

  else
  {
    sub_1A4110B54();
  }

  v9 = objc_opt_self();
  [v9 dynamicTextScaleFactorForCategory_];
  return (*(v2 + 8))(v4, v1);
}

void sub_1A44E205C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53[4] = a2;
  sub_1A44E08C8(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53[5] = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v53[3] = v53 - v6;
  v7 = sub_1A524B554();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E33DEC(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53[2] = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v16 = *(a1 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView() + 20) + 8);
  sub_1A4184B18();
  sub_1A524B574();
  (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
  v17 = sub_1A524B5C4();

  (*(v8 + 8))(v10, v7);
  if ((sub_1A4184D8C() & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v16) + 0x140))();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v61 = 1;
  *&v60[6] = v62;
  *&v60[22] = v63;
  *&v60[38] = v64;
  v18 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  v57 = v17;
  LOWORD(v58[0]) = 1;
  *(v58 + 2) = *v60;
  *(&v58[1] + 2) = *&v60[16];
  *(&v58[2] + 2) = *&v60[32];
  *&v58[3] = *&v60[46];
  *(&v58[3] + 1) = KeyPath;
  v59 = v18;
  sub_1A3E33E34();
  sub_1A44E15D4(&qword_1EB1281E0, sub_1A3E33E34, sub_1A3E44BC8);
  sub_1A524AAE4();
  v55[2] = v58[1];
  v55[3] = v58[2];
  v55[4] = v58[3];
  v56 = v59;
  v55[0] = v57;
  v55[1] = v58[0];
  sub_1A44E6188(v55, sub_1A3E33E34);
  sub_1A4184B0C();
  v53[0] = v20;
  v22 = v21;
  v23 = sub_1A4184A2C();
  v25 = v24;
  v26 = *MEMORY[0x1E69DB970];
  v27 = sub_1A44E42F4(*MEMORY[0x1E69DB970]);
  v53[1] = v15;
  v28 = v27;
  v29 = *MEMORY[0x1E69DB980];
  v30 = sub_1A44E42F4(*MEMORY[0x1E69DB980]);
  v31 = objc_opt_self();
  v32 = [v31 secondaryLabelColor];
  v33 = [v31 labelColor];
  sub_1A44132D0(v53[0], v22, v23, v25, v28, v30, v32, v33, v65);
  v34 = sub_1A44E1EA8();
  v36 = v35;
  v37 = *((*MEMORY[0x1E69E7D40] & *v16) + 0xC0);
  v38 = (v37)(v34);
  [v38 contentGuideInsets];
  v40 = v39;

  v41 = v37();
  [v41 contentGuideInsets];

  v42 = sub_1A441277C();
  v43 = sub_1A441282C();
  sub_1A441286C(v65, 2, COERCE__INT64(v36 - (v40 + 8.0)), 0, v42, v43, &v54);
  sub_1A4184B0C();
  v45 = v44;
  v47 = v46;
  v48 = sub_1A4184A2C();
  v50 = v49;
  v51 = sub_1A44E42F4(v26);
  v52 = sub_1A44E42F4(v29);
  sub_1A44132D0(v45, v47, v48, v50, v51, v52, [v31 secondaryLabelColor], objc_msgSend(v31, sel_labelColor), &v66);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A44E27DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1A44E5774(0, &unk_1EB1282D0, sub_1A429B9D8, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  sub_1A44E10A0(0);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v23 = &v20 - v12;
  v13 = *(type metadata accessor for PhotosDetailsVisualLookupWidgetView() + 20);
  v22 = a1;
  v14 = *(a1 + v13 + 8);
  sub_1A4184B18();
  v15 = sub_1A524B574();
  v16 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  v26 = v15;
  v27 = KeyPath;
  v28 = v16;
  sub_1A429B9D8();
  sub_1A3E7440C();
  sub_1A524AAE4();

  if ((sub_1A4184D8C() & 1) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v14) + 0x140))();
  }

  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A44E5FC0(v5, v10);
  v18 = &v10[*(v21 + 36)];
  v19 = v30;
  *v18 = v29;
  *(v18 + 1) = v19;
  *(v18 + 2) = v31;
  sub_1A44E58C8(v10, v23, sub_1A44E10A0);
  sub_1A5249314();
  LOBYTE(v26) = 0;
  sub_1A44E2C18();
}

void sub_1A44E2C18()
{
  v0 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A44E2D54(&v2[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)]);
}

void sub_1A44E2D54(uint64_t a1@<X8>)
{
  v27 = a1;
  sub_1A44E4F68(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A44E4F9C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A44E4FD0();
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52408C4();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v20 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(v1 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView() + 20) + 8);
  v22 = sub_1A4184A2C();
  v23 = v11;
  sub_1A4184B0C();
  sub_1A52408B4();
  v19 = objc_opt_self();
  v12 = [v19 secondaryLabelColor];
  v28 = sub_1A524B284();
  v18 = sub_1A3EE4384();
  v13 = sub_1A52408D4();
  v14 = *MEMORY[0x1E69E7D40] & *v10;
  v16 = *(v14 + 0x140);
  v17 = v14 + 320;
  if (v16(v13) == 5)
  {
    PXCappedFontWithTextStyleAndWeight();
  }

  PXCappedFontWithTextStyle();
}

void sub_1A44E3414(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[4] = a2;
  sub_1A3EE179C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3EE1760(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE1724(0);
  v15[1] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v15[3] = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v15[2] = v15 - v9;
  sub_1A3EE16E8(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v15 - v13;
  sub_1A524B994();
  *&v14[*(v11 + 44)] = 0;
  v15[0] = a1;
  sub_1A44E396C(a1);
}

void sub_1A44E396C(uint64_t a1)
{
  sub_1A3EE16E8(0);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3EE18A8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  *v7 = sub_1A5249314();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A44E60B8(0, &qword_1EB124550, sub_1A3EE193C);
  sub_1A44E3BE4(a1, &v7[*(v8 + 44)]);
}

void sub_1A44E3BE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[7] = a2;
  sub_1A44E1748(0, &qword_1EB1282C0, sub_1A3EE213C);
  v23[3] = v3;
  v23[5] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23[1] = v23 - v4;
  sub_1A3EE2044();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23[6] = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v23[2] = v23 - v8;
  v9 = MEMORY[0x1E69E6720];
  sub_1A44E6124(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  sub_1A44E6124(0, &qword_1EB121598, sub_1A3EE1A7C, v9);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v23 - v15);
  sub_1A3EE19E8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v23[4] = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  *v16 = sub_1A524BC74();
  v16[1] = v20;
  sub_1A44E60B8(0, &qword_1EB124438, sub_1A3EE1B10);
  sub_1A44E45A8(a1, v16 + *(v21 + 44));
  sub_1A3EE1A7C();
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  sub_1A44E2D54(v13);
}

double sub_1A44E4270(uint64_t a1, char a2, char a3)
{
  result = 0.0;
  if (a2)
  {
    if (a3)
    {
      v5 = sub_1A4110B60();
    }

    else
    {
      v5 = sub_1A4110B54();
    }

    v6 = *v5;
    v7 = objc_opt_self();
    [v7 dynamicTextScaleFactorForCategory_];
    return v6 * v8;
  }

  return result;
}

id sub_1A44E42F4(double a1)
{
  type metadata accessor for PhotosDetailsVisualLookupWidgetView();
  v2 = sub_1A4184D8C();
  v3 = MEMORY[0x1E69DDD00];
  if ((v2 & 1) == 0)
  {
    v3 = MEMORY[0x1E69DDCF8];
  }

  v4 = *v3;
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle_];

  v7 = [v6 fontDescriptor];
  sub_1A44E5E20();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v9 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  sub_1A44E6124(0, &qword_1EB12F998, sub_1A3FBDDDC, MEMORY[0x1E69E6F90]);
  v10 = swift_initStackObject();
  v11 = MEMORY[0x1E69DB990];
  *(v10 + 16) = xmmword_1A52F8E10;
  v12 = *v11;
  *(v10 + 32) = *v11;
  *(v10 + 40) = a1;
  v13 = v9;
  v14 = v12;
  v15 = sub_1A3FBDE9C(v10);
  swift_setDeallocating();
  sub_1A44E6188(v10 + 32, sub_1A3FBDDDC);
  sub_1A44E5F0C(0, &qword_1EB12F9A8, MEMORY[0x1E69E5E28]);
  *(inited + 64) = v16;
  *(inited + 40) = v15;
  sub_1A3FE1D98(inited);
  swift_setDeallocating();
  sub_1A3FBDFF8(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_1A44E6248(&qword_1EB1267F8, type metadata accessor for AttributeName);
  v17 = sub_1A524C3D4();

  v18 = [v7 fontDescriptorByAddingAttributes_];

  v19 = [v5 fontWithDescriptor:v18 size:0.0];
  return v19;
}

uint64_t sub_1A44E45A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v72 = a2;
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1D04();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1BA8();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v67[-v12];
  v13 = *(a1 + *(type metadata accessor for PhotosDetailsVisualLookupWidgetView() + 20) + 8);
  sub_1A4184B18();
  v14 = sub_1A524B574();
  v15 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  v17 = sub_1A4184D8C();
  v18 = MEMORY[0x1E69E7D40];
  if (v17)
  {
    if (sub_1A4184D8C())
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  (*((*MEMORY[0x1E69E7D40] & *v13) + 0x140))();
  if ((sub_1A4184D8C() & 1) == 0)
  {
LABEL_3:
    (*((*v18 & *v13) + 0x140))();
  }

LABEL_5:
  sub_1A524BC74();
  sub_1A52481F4();
  if (qword_1EB18F268 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB1EB5D8;
  v20 = swift_getKeyPath();
  *&v85 = v14;
  *(&v85 + 1) = KeyPath;
  *(v86 + 8) = v97;
  *(&v86[1] + 8) = v98;
  *(&v86[2] + 8) = v99;
  *&v86[0] = v15;
  *(&v86[3] + 1) = v20;
  v87 = v19;
  v21 = *MEMORY[0x1E697E6E8];
  v22 = sub_1A52486A4();
  (*(*(v22 - 8) + 104))(v8, v21, v22);
  sub_1A44E6248(&unk_1EB1288C0, MEMORY[0x1E697E730]);

  if (sub_1A524C594())
  {
    sub_1A4070578();
    sub_1A44E15D4(&qword_1EB1281D0, sub_1A4070578, sub_1A40707FC);
    sub_1A44E6248(&unk_1EB1263B0, sub_1A3EE1D04);
    sub_1A524AB84();
    sub_1A44E6188(v8, sub_1A3EE1D04);
    v100[2] = v86[1];
    v100[3] = v86[2];
    v100[4] = v86[3];
    v101 = v87;
    v100[0] = v85;
    v100[1] = v86[0];
    sub_1A44E6188(v100, sub_1A4070578);
    v23 = *sub_1A4758698();
    sub_1A524B5D4();
    v24 = *MEMORY[0x1E6981698];
    v25 = sub_1A524B594();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v5, v24, v25);
    (*(v26 + 56))(v5, 0, 1, v25);
    v71 = sub_1A524B564();

    sub_1A44E6188(v5, sub_1A3EE4C14);
    if (qword_1EB18F260 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_9:
  v27 = qword_1EB1EB5D0;
  v69 = swift_getKeyPath();
  v70 = v27;

  v28 = sub_1A524A094();
  v29 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v28)
  {
    v29 = sub_1A524A0A4();
  }

  v68 = v29;
  sub_1A5247BC4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v92 = 0;
  v38 = sub_1A524A074();
  v39 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v38)
  {
    v39 = sub_1A524A0A4();
  }

  sub_1A5247BC4();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v94 = 0;
  v48 = v73;
  v49 = v74;
  v50 = *(v73 + 16);
  v51 = v75;
  v50(v75, v76, v74);
  v52 = v72;
  v50(v72, v51, v49);
  sub_1A44E07E0(0, &qword_1EB1275B8, sub_1A3EE1BA8, sub_1A3EE1F24);
  v54 = &v52[*(v53 + 48)];
  v56 = v70;
  v55 = v71;
  v57 = v69;
  *&v77 = v71;
  *(&v77 + 1) = v69;
  *&v78 = v70;
  v58 = v68;
  BYTE8(v78) = v68;
  *(&v78 + 9) = *v93;
  HIDWORD(v78) = *&v93[3];
  *&v79 = v31;
  *(&v79 + 1) = v33;
  *&v80 = v35;
  *(&v80 + 1) = v37;
  LOBYTE(v81) = 0;
  *(&v81 + 1) = *v96;
  DWORD1(v81) = *&v96[3];
  BYTE8(v81) = v39;
  HIDWORD(v81) = *&v95[3];
  *(&v81 + 9) = *v95;
  *&v82 = v41;
  *(&v82 + 1) = v43;
  *&v83 = v45;
  *(&v83 + 1) = v47;
  v84 = 0;
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v54[112] = 0;
  *(v54 + 5) = v60;
  *(v54 + 6) = v61;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  *(v54 + 3) = v80;
  *(v54 + 4) = v59;
  *(v54 + 1) = v63;
  *(v54 + 2) = v64;
  *v54 = v62;
  sub_1A44E570C(&v77, &v85, sub_1A3EE1F24);
  v65 = *(v48 + 8);
  v65(v76, v49);
  *&v85 = v55;
  *(&v85 + 1) = v57;
  *&v86[0] = v56;
  BYTE8(v86[0]) = v58;
  *(v86 + 9) = *v93;
  HIDWORD(v86[0]) = *&v93[3];
  *&v86[1] = v31;
  *(&v86[1] + 1) = v33;
  *&v86[2] = v35;
  *(&v86[2] + 1) = v37;
  LOBYTE(v86[3]) = 0;
  *(&v86[3] + 1) = *v96;
  DWORD1(v86[3]) = *&v96[3];
  BYTE8(v86[3]) = v39;
  HIDWORD(v86[3]) = *&v95[3];
  *(&v86[3] + 9) = *v95;
  v87 = v41;
  v88 = v43;
  v89 = v45;
  v90 = v47;
  v91 = 0;
  sub_1A44E6188(&v85, sub_1A3EE1F24);
  return (v65)(v75, v49);
}

uint64_t sub_1A44E4E0C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v4 = (a2 + *(a1 + 20));
  type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel();
  sub_1A44E6248(&unk_1EB12A990, type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel);
  result = sub_1A5248494();
  *v4 = result;
  v4[1] = v6;
  return result;
}

void sub_1A44E4EC0(uint64_t a1@<X8>)
{
  sub_1A44DEA08(v1, a1);
  v3 = sub_1A524BD54();
  v4 = sub_1A4184860();
  sub_1A44E5774(0, &qword_1EB123D10, sub_1A44E0258, sub_1A412D698, MEMORY[0x1E697E830]);
  v6 = (a1 + *(v5 + 36));
  *v6 = v3;
  v6[1] = v4;
}

void sub_1A44E4FD0()
{
  if (!qword_1EB120B18)
  {
    sub_1A52407C4();
    sub_1A44E6248(&qword_1EB126060, MEMORY[0x1E69687E8]);
    v0 = sub_1A524D104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120B18);
    }
  }
}

uint64_t sub_1A44E5064(uint64_t a1)
{
  result = sub_1A44E6248(&qword_1EB12A9F8, type metadata accessor for PhotosDetailsVisualLookupWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A44E5100()
{
  sub_1A44E6124(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A44E51B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A44E51B4()
{
  if (!qword_1EB1243A8)
  {
    type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel();
    sub_1A44E6248(&unk_1EB12A990, type metadata accessor for PhotosDetailsVisualLookupWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243A8);
    }
  }
}

unint64_t sub_1A44E5258()
{
  result = qword_1EB123D18;
  if (!qword_1EB123D18)
  {
    sub_1A44E5774(255, &qword_1EB123D10, sub_1A44E0258, sub_1A412D698, MEMORY[0x1E697E830]);
    sub_1A44E5390(&qword_1EB121CE8, sub_1A44E0258, sub_1A44E5400);
    sub_1A44E6248(&qword_1EB128010, sub_1A412D698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D18);
  }

  return result;
}

uint64_t sub_1A44E5390(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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