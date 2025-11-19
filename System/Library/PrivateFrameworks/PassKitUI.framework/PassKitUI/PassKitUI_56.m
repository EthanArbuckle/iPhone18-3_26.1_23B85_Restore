uint64_t sub_1BD61C714@<X0>(double *a1@<X8>)
{
  sub_1BE04E9E4();
  v3 = v2;
  sub_1BE04E9D4();
  v5 = v3 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  result = sub_1BE0516A4();
  v7 = v5 / v8;
  if (v5 / v8 <= 0.0)
  {
    v7 = 0.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1BD61C7B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

uint64_t sub_1BD61C850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD61C8E8, v5, v4);
}

uint64_t sub_1BD61C8E8()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F8798;

  return sub_1BD61EF54();
}

id sub_1BD61C9A8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v47 = a2;
  v5 = sub_1BE051584();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE049B04();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v91 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900);
  sub_1BE0516A4();
  v14 = v89;
  swift_getKeyPath();
  *&v91 = v14;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v15 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  (*(v10 + 16))(v13, v14 + v15, v9);

  MEMORY[0x1BFB3FF90](v13);
  PKScreenScale();
  result = PKIconForFKCategory();
  if (result)
  {
    sub_1BE051544();
    v18 = v51;
    v17 = v52;
    (*(v51 + 104))(v8, *MEMORY[0x1E6981630], v52);
    v43 = sub_1BE0515E4();

    (*(v18 + 8))(v8, v17);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    LOBYTE(v18) = v100;
    v19 = v102;
    v51 = v103;
    v52 = v101;
    v49 = v99;
    v50 = v104;
    v20 = [objc_opt_self() systemGrayColor];
    v48 = sub_1BE0511C4();
    v21 = PKUIPixelLength();
    v98 = v18;
    v96 = v19;
    v44 = v19;
    v45 = sub_1BE04F7B4();
    LOBYTE(v53[0]) = 0;
    sub_1BD61D11C(v46, v47, &v91);
    v78 = *&v92[64];
    v79 = *&v92[80];
    v80 = *&v92[96];
    v81 = *&v92[112];
    v75 = *&v92[16];
    v76 = *&v92[32];
    v77 = *&v92[48];
    v73 = v91;
    v74 = *v92;
    v82[6] = *&v92[80];
    v82[7] = *&v92[96];
    v82[8] = *&v92[112];
    v82[2] = *&v92[16];
    v82[3] = *&v92[32];
    v82[4] = *&v92[48];
    v82[5] = *&v92[64];
    v82[0] = v91;
    v82[1] = *v92;
    sub_1BD0DE19C(&v73, &v89, &qword_1EBD4D920);
    sub_1BD0DE53C(v82, &qword_1EBD4D920);
    *&v72[87] = v78;
    *&v72[103] = v79;
    *&v72[119] = v80;
    *&v72[135] = v81;
    *&v72[23] = v74;
    *&v72[39] = v75;
    *&v72[55] = v76;
    *&v72[71] = v77;
    *&v72[7] = v73;
    v22 = v43;
    *&v83 = v43;
    *(&v83 + 1) = v49;
    LOBYTE(v84) = v18;
    *(&v84 + 1) = *v97;
    DWORD1(v84) = *&v97[3];
    *(&v84 + 1) = v52;
    LOBYTE(v85) = v19;
    *(&v85 + 1) = *v95;
    DWORD1(v85) = *&v95[3];
    *(&v85 + 1) = v51;
    *&v86 = v50;
    BYTE8(v86) = 1;
    HIDWORD(v86) = *&v94[3];
    *(&v86 + 9) = *v94;
    *&v87 = v48;
    *(&v87 + 1) = v21;
    v69 = v86;
    v70 = v87;
    v67 = v84;
    v68 = v85;
    v66 = v83;
    v23 = *&v72[16];
    *&v90[17] = *&v72[16];
    v24 = *v72;
    *&v90[1] = *v72;
    v25 = *&v72[80];
    *&v90[81] = *&v72[80];
    v26 = *&v72[64];
    *&v90[65] = *&v72[64];
    v27 = *&v72[48];
    *&v90[49] = *&v72[48];
    v28 = *&v72[32];
    *&v90[33] = *&v72[32];
    *&v90[144] = *(&v81 + 1);
    v29 = *&v72[128];
    *&v90[129] = *&v72[128];
    v30 = *&v72[112];
    *&v90[113] = *&v72[112];
    v31 = *&v72[96];
    *&v90[97] = *&v72[96];
    *(&v71[4] + 8) = *&v90[48];
    *(&v71[3] + 8) = *&v90[32];
    *(&v71[7] + 8) = *&v90[96];
    *(&v71[8] + 8) = *&v90[112];
    *(&v71[9] + 8) = *&v90[128];
    v32 = v53[0];
    v33 = v45;
    *&v89 = v45;
    *(&v89 + 1) = 0x4008000000000000;
    v90[0] = v53[0];
    *(&v71[5] + 8) = *&v90[64];
    *(&v71[6] + 8) = *&v90[80];
    *(v71 + 8) = v89;
    *&v71[0] = 0x4020000000000000;
    *(&v71[10] + 1) = *&v90[144];
    *(&v71[1] + 8) = *v90;
    *(&v71[2] + 8) = *&v90[16];
    v34 = v71[8];
    a3[12] = v71[7];
    a3[13] = v34;
    v35 = v71[10];
    a3[14] = v71[9];
    a3[15] = v35;
    v36 = v71[4];
    a3[8] = v71[3];
    a3[9] = v36;
    v37 = v71[6];
    a3[10] = v71[5];
    a3[11] = v37;
    v38 = v71[0];
    a3[4] = v70;
    a3[5] = v38;
    v39 = v71[2];
    a3[6] = v71[1];
    a3[7] = v39;
    v40 = v67;
    *a3 = v66;
    a3[1] = v40;
    v41 = v69;
    a3[2] = v68;
    a3[3] = v41;
    *&v92[97] = v31;
    *&v92[113] = v30;
    *v93 = v29;
    *&v92[33] = v28;
    *&v92[49] = v27;
    v88 = 0x4020000000000000;
    *&v91 = v33;
    *(&v91 + 1) = 0x4008000000000000;
    v92[0] = v32;
    *&v93[15] = *&v72[143];
    *&v92[65] = v26;
    *&v92[81] = v25;
    *&v92[1] = v24;
    *&v92[17] = v23;
    sub_1BD0DE19C(&v83, v53, &qword_1EBD4D928);
    sub_1BD0DE19C(&v89, v53, &qword_1EBD4D930);
    sub_1BD0DE53C(&v91, &qword_1EBD4D930);
    v53[0] = v22;
    v53[1] = v49;
    v54 = v18;
    *v55 = *v97;
    *&v55[3] = *&v97[3];
    v56 = v52;
    v57 = v44;
    *v58 = *v95;
    *&v58[3] = *&v95[3];
    v59 = v51;
    v60 = v50;
    v61 = 1;
    *&v62[3] = *&v94[3];
    *v62 = *v94;
    v63 = v48;
    v64 = v21;
    v65 = 0x4020000000000000;
    return sub_1BD0DE53C(v53, &qword_1EBD4D928);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD61D11C(__int128 *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v62 = a2;
  v65 = a3;
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900);
  sub_1BE0516A4();
  v9 = v86[0];
  swift_getKeyPath();
  *&v96 = v9;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v10 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  (*(v5 + 16))(v8, v9 + v10, v4);

  v11 = sub_1BE049AE4();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  *&v96 = v11;
  *(&v96 + 1) = v13;
  v61 = sub_1BD0DDEBC();
  v14 = sub_1BE0506C4();
  v16 = v15;
  LOBYTE(v8) = v17;
  sub_1BE050344();
  v18 = sub_1BE0505F4();
  v20 = v19;
  v22 = v21;

  sub_1BD0DDF10(v14, v16, v8 & 1);

  sub_1BE050364();
  v23 = sub_1BE050544();
  v68 = v24;
  v69 = v23;
  LOBYTE(v14) = v25;
  v70 = v26;
  sub_1BD0DDF10(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  v64 = sub_1BE051464();
  v63 = swift_getKeyPath();
  v66 = v14 & 1;
  LOBYTE(v96) = v14 & 1;
  LOBYTE(v86[0]) = 0;
  v27 = sub_1BE052404();
  v28 = PKLocalizedString(v27);

  if (v28)
  {
    sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BE0B69E0;
    v30 = *(v62 + 16);
    v31 = MEMORY[0x1E69E65A8];
    *(v29 + 56) = MEMORY[0x1E69E6530];
    *(v29 + 64) = v31;
    *(v29 + 32) = v30;
    v32 = sub_1BE052454();
    v34 = v33;

    *&v96 = v32;
    *(&v96 + 1) = v34;
    v35 = sub_1BE0506C4();
    v37 = v36;
    v39 = v38;
    sub_1BE0502A4();
    v40 = sub_1BE0505F4();
    v42 = v41;
    v44 = v43;
    v62 = v45;

    sub_1BD0DDF10(v35, v37, v39 & 1);

    v46 = swift_getKeyPath();
    v47 = sub_1BE051494();
    v48 = swift_getKeyPath();
    v49 = v44 & 1;
    v109 = v44 & 1;
    v107 = 0;
    *&v76 = v69;
    *(&v76 + 1) = v68;
    LOBYTE(v77) = v66;
    *(&v77 + 1) = v111[0];
    DWORD1(v77) = *(v111 + 3);
    *(&v77 + 1) = v70;
    *&v78 = KeyPath;
    *(&v78 + 1) = 2;
    LOBYTE(v79) = 0;
    DWORD1(v79) = *&v110[3];
    *(&v79 + 1) = *v110;
    v51 = v63;
    v50 = v64;
    *(&v79 + 1) = v63;
    v80 = v64;
    *&v75[0] = v64;
    v73 = v78;
    v74 = v79;
    v71 = v76;
    v72 = v77;
    *&v81 = v40;
    *(&v81 + 1) = v42;
    LOBYTE(v82) = v49;
    DWORD1(v82) = *&v108[3];
    *(&v82 + 1) = *v108;
    v52 = v62;
    *(&v82 + 1) = v62;
    *&v83 = v46;
    *(&v83 + 1) = 1;
    LOBYTE(v84) = 0;
    DWORD1(v84) = *&v106[3];
    *(&v84 + 1) = *v106;
    *(&v84 + 1) = v48;
    v85 = v47;
    *(v75 + 8) = v81;
    *(&v75[4] + 1) = v47;
    *(&v75[3] + 8) = v84;
    *(&v75[2] + 8) = v83;
    *(&v75[1] + 8) = v82;
    v53 = v76;
    v54 = v77;
    v55 = v79;
    v56 = v65;
    v65[2] = v78;
    v56[3] = v55;
    *v56 = v53;
    v56[1] = v54;
    v57 = v75[0];
    v58 = v75[1];
    v59 = v75[4];
    v56[7] = v75[3];
    v56[8] = v59;
    v60 = v75[2];
    v56[5] = v58;
    v56[6] = v60;
    v56[4] = v57;
    v86[0] = v40;
    v86[1] = v42;
    v87 = v49;
    *v88 = *v108;
    *&v88[3] = *&v108[3];
    v89 = v52;
    v90 = v46;
    v91 = 1;
    v92 = 0;
    *v93 = *v106;
    *&v93[3] = *&v106[3];
    v94 = v48;
    v95 = v47;
    sub_1BD0DE19C(&v76, &v96, &qword_1EBD4D938);
    sub_1BD0DE19C(&v81, &v96, &qword_1EBD4D938);
    sub_1BD0DE53C(v86, &qword_1EBD4D938);
    *&v96 = v69;
    *(&v96 + 1) = v68;
    v97 = v66;
    *v98 = v111[0];
    *&v98[3] = *(v111 + 3);
    v99 = v70;
    v100 = KeyPath;
    v101 = 2;
    v102 = 0;
    *v103 = *v110;
    *&v103[3] = *&v110[3];
    v104 = v51;
    v105 = v50;
    sub_1BD0DE53C(&v96, &qword_1EBD4D938);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD61D744(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v16[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
    sub_1BE04B584();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_1BD61DA0C@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_1BD61DB0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_1BD61DC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_1BD61DCE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_1BD626BFC(&qword_1EBD3A340, MEMORY[0x1E6967AD0]);
  v16[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
    sub_1BE04B584();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_1BD61DF84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = a4(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_1BD61E050(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v17 - v10;
  v12 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v12, v11, &qword_1EBD38DB8);
  sub_1BE04AF64();
  sub_1BD626BFC(&qword_1EBD3E460, MEMORY[0x1E6969530]);
  if ((sub_1BE052334() & 1) == 0)
  {
    sub_1BD0DE53C(v11, &qword_1EBD38DB8);
    goto LABEL_5;
  }

  v13 = sub_1BE052334();
  sub_1BD0DE53C(v11, &qword_1EBD38DB8);
  if ((v13 & 1) == 0)
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v15);
    v17[-2] = v2;
    v17[-1] = a1;
    v17[1] = v2;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
    sub_1BE04B584();

    return sub_1BD0DE53C(a1, &qword_1EBD38DB8);
  }

  sub_1BD0DE19C(a1, v8, &qword_1EBD38DB8);
  swift_beginAccess();
  sub_1BD2C7C4C(v8, v2 + v12, &qword_1EBD38DB8);
  swift_endAccess();
  return sub_1BD0DE53C(a1, &qword_1EBD38DB8);
}

uint64_t sub_1BD61E320()
{
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  return sub_1BE048964();
}

uint64_t sub_1BD61E3CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store);
  return sub_1BE048964();
}

uint64_t sub_1BD61E480(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v3);
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
    sub_1BE04B584();
  }
}

uint64_t sub_1BD61E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v15 - v12;
  sub_1BD0DE19C(a1, &v15 - v12, a5);
  return a7(v13);
}

uint64_t sub_1BD61E68C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD498D0);
  v8 = sub_1BD629D90(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD498D0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD498D0);
    swift_beginAccess();
    sub_1BD2C7C4C(v6, v1 + v7, &qword_1EBD498D0);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498D0);
}

uint64_t sub_1BD61E8B8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v7 = *a1;
  swift_beginAccess();
  return sub_1BD0DE19C(v9 + v7, a3, a2);
}

uint64_t sub_1BD61E998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v8 = *a2;
  swift_beginAccess();
  return sub_1BD0DE19C(v7 + v8, a4, a3);
}

uint64_t sub_1BD61EA7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v7, v6, &qword_1EBD498C8);
  v8 = sub_1BD629A70(v6, a1);
  sub_1BD0DE53C(v6, &qword_1EBD498C8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v10);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
    sub_1BE04B584();
  }

  else
  {
    sub_1BD0DE19C(a1, v6, &qword_1EBD498C8);
    swift_beginAccess();
    sub_1BD2C7C4C(v6, v1 + v7, &qword_1EBD498C8);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD498C8);
}

uint64_t sub_1BD61EC84()
{
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  return sub_1BE048C84();
}

uint64_t sub_1BD61ED30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions);
  return sub_1BE048C84();
}

uint64_t sub_1BD61EDE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions;
  if (!*(v1 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v7);
    sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
    sub_1BE04B584();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1BE048C84();
  v5 = sub_1BD400C50(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1BD61EF54()
{
  v1[26] = v0;
  v2 = sub_1BE04D214();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_1BE049A94();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7B0);
  v1[41] = v5;
  v1[42] = *(v5 - 8);
  v1[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7E0);
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  v1[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980);
  v1[46] = swift_task_alloc();
  v6 = sub_1BE049E74();
  v1[47] = v6;
  v1[48] = *(v6 - 8);
  v1[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v1[50] = swift_task_alloc();
  v7 = sub_1BE049D74();
  v1[51] = v7;
  v1[52] = *(v7 - 8);
  v1[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  v1[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0);
  v1[55] = swift_task_alloc();
  v8 = sub_1BE049CC4();
  v1[56] = v8;
  v1[57] = *(v8 - 8);
  v1[58] = swift_task_alloc();
  v9 = sub_1BE049D44();
  v1[59] = v9;
  v1[60] = *(v9 - 8);
  v1[61] = swift_task_alloc();
  v10 = sub_1BE049E54();
  v1[62] = v10;
  v1[63] = *(v10 - 8);
  v1[64] = swift_task_alloc();
  v11 = sub_1BE0495A4();
  v1[65] = v11;
  v1[66] = *(v11 - 8);
  v1[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v1[70] = swift_task_alloc();
  v12 = sub_1BE049B64();
  v1[71] = v12;
  v1[72] = *(v12 - 8);
  v1[73] = swift_task_alloc();
  v13 = sub_1BE049C24();
  v1[74] = v13;
  v1[75] = *(v13 - 8);
  v1[76] = swift_task_alloc();
  v14 = sub_1BE04AFE4();
  v1[77] = v14;
  v1[78] = *(v14 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = sub_1BE0528A4();
  v1[81] = sub_1BE052894();
  v16 = sub_1BE052844();
  v1[82] = v16;
  v1[83] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BD61F6C0, v16, v15);
}

uint64_t sub_1BD61F6C0()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[70];
  v14 = v0[77];
  v15 = v0[65];
  v4 = v0[26];
  swift_getKeyPath();
  v0[84] = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel___observationRegistrar;
  v0[13] = v4;
  v0[85] = sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v5 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v0[86] = v6;
  v0[87] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v14);
  swift_getKeyPath();
  v0[14] = v4;
  sub_1BE04B594();

  v7 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store;
  v0[88] = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store;
  v0[89] = *(v4 + v7);
  v8 = swift_task_alloc();
  v0[90] = v8;
  *(v8 + 16) = v1;
  sub_1BE048964();
  v0[15] = v15;
  sub_1BE04B444();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF8);
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  sub_1BE049B54();
  v10 = swift_task_alloc();
  v0[91] = v10;
  *v10 = v0;
  v10[1] = sub_1BD61F964;
  v11 = v0[76];
  v12 = v0[73];

  return MEMORY[0x1EEDC14B8](v11, v12);
}

uint64_t sub_1BD61F964()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  (*(v2[72] + 8))(v2[73], v2[71]);

  v3 = v2[83];
  v4 = v2[82];
  if (v0)
  {
    v5 = sub_1BD621F54;
  }

  else
  {
    v5 = sub_1BD61FB08;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD61FB08()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = sub_1BE049C14();
  (*(v2 + 8))(v1, v3);
  if (*(v4 + 16))
  {
    (*(v0[66] + 16))(v0[69], v4 + ((*(v0[66] + 80) + 32) & ~*(v0[66] + 80)), v0[65]);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[26];

  (*(v8 + 56))(v6, v5, 1, v9);
  sub_1BD61EA7C(v6);
  swift_getKeyPath();
  v0[16] = v10;
  sub_1BE04B594();

  v11 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v10 + v11, v7, &qword_1EBD498C8);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    v12 = v0[79];
    v13 = v0[78];
    v14 = v0[77];
    v15 = v0[68];

    sub_1BD0DE53C(v15, &qword_1EBD498C8);
    (*(v13 + 8))(v12, v14);

    v16 = v0[1];

    return v16();
  }

  else
  {
    v32 = v0[88];
    v19 = v0[63];
    v18 = v0[64];
    v20 = v0[62];
    v21 = v0[55];
    v22 = v0[26];
    (*(v0[66] + 32))(v0[67], v0[68], v0[65]);
    sub_1BE049524();
    v23 = sub_1BE049E24();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    swift_getKeyPath();
    v0[17] = v22;
    sub_1BE04B594();

    v0[93] = *(v22 + v32);
    v26 = swift_task_alloc();
    v0[94] = v26;
    *(v26 + 16) = v23;
    *(v26 + 24) = v25;
    sub_1BE048964();
    v27 = sub_1BE049184();
    v0[95] = v27;
    v0[18] = v27;
    sub_1BE04B444();

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E00);
    (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
    sub_1BE049CB4();
    v29 = swift_task_alloc();
    v0[96] = v29;
    *v29 = v0;
    v29[1] = sub_1BD620074;
    v30 = v0[61];
    v31 = v0[58];

    return MEMORY[0x1EEDC14C8](v30, v31);
  }
}

uint64_t sub_1BD620074()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  (*(v2[57] + 8))(v2[58], v2[56]);

  v3 = v2[83];
  v4 = v2[82];
  if (v0)
  {
    v5 = sub_1BD622258;
  }

  else
  {
    v5 = sub_1BD620218;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD620218()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = v0[59];
  v4 = sub_1BE049D34();
  (*(v2 + 8))(v1, v3);
  v5 = v0[95];
  if (*(v4 + 16))
  {
    v6 = *(v5 - 8);
    (*(v6 + 16))(v0[54], v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    v7 = 0;
  }

  else
  {

    v6 = *(v5 - 8);
    v7 = 1;
  }

  v8 = v0[88];
  v9 = v0[54];
  v10 = v0[50];
  v11 = v0[31];
  v18 = v0[30];
  v12 = v0[26];
  (*(v6 + 56))(v9, v7, 1, v0[95]);
  sub_1BD61E68C(v9);
  swift_getKeyPath();
  v0[19] = v12;
  sub_1BE04B594();

  v0[98] = *(v12 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B6CA0;
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE048964();
  sub_1BE04A4F4();
  swift_getKeyPath();
  sub_1BD626BFC(&qword_1EBD38DE8, MEMORY[0x1E69695A8]);
  sub_1BE04A4F4();
  sub_1BD623104(v10);
  (*(v11 + 56))(v10, 0, 1, v18);
  v13 = sub_1BE049CE4();
  v14 = MEMORY[0x1E6967BC8];
  v0[5] = v13;
  v0[6] = v14;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v15 = swift_task_alloc();
  v0[99] = v15;
  *v15 = v0;
  v15[1] = sub_1BD620600;
  v16 = v0[53];

  return MEMORY[0x1EEDC14D8](v16, v0 + 2);
}

uint64_t sub_1BD620600()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_1BD62258C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    v3 = *(v2 + 664);
    v4 = *(v2 + 656);
    v5 = sub_1BD620734;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD620734()
{
  v31 = v0[100];
  v28 = v0[86];
  v27 = v0[79];
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[46];
  v4 = v0[26];
  v5 = sub_1BE049D54();
  sub_1BD61EDE4(v5);
  swift_getKeyPath();
  v0[20] = v4;
  sub_1BE04B594();

  v28(v3, v27, v2);
  (*(v1 + 56))(v3, 0, 1, v2);
  sub_1BE048964();
  sub_1BE049D64();
  sub_1BE048FD4();
  if (v31)
  {
    v30 = v0[67];
    v6 = v0[66];
    v29 = v0[65];
    v7 = v0[52];
    v8 = v0[53];
    v9 = v0[51];
    v10 = v0[45];
    v11 = v0[46];

    sub_1BD0DE53C(v10, &qword_1EBD3F788);
    sub_1BD0DE53C(v11, &qword_1EBD39980);
    (*(v7 + 8))(v8, v9);
    (*(v6 + 8))(v30, v29);

    (*(v0[78] + 8))(v0[79], v0[77]);
    sub_1BE04D114();
    v12 = v31;
    v13 = sub_1BE04D204();
    v14 = sub_1BE052C54();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v31;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1BD026000, v13, v14, "Failed to load/observe transactions in category view model with error: %@", v15, 0xCu);
      sub_1BD0DE53C(v16, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    else
    {
    }

    (*(v0[28] + 8))(v0[29], v0[27]);

    v25 = v0[1];

    return v25();
  }

  else
  {
    v20 = v0[45];
    v19 = v0[46];

    sub_1BD0DE53C(v20, &qword_1EBD3F788);
    sub_1BD0DE53C(v19, &qword_1EBD39980);
    sub_1BE049E64();

    v0[101] = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions;
    v0[102] = sub_1BE052894();
    v21 = sub_1BD626BFC(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
    v22 = swift_task_alloc();
    v0[103] = v22;
    *v22 = v0;
    v22[1] = sub_1BD620CF4;
    v23 = v0[47];
    v24 = v0[44];

    return MEMORY[0x1EEE6D8C8](v24, v23, v21);
  }
}

uint64_t sub_1BD620CF4()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 816);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD621B3C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_1BE052844();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1BD620E8C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1BD620E8C()
{

  v1 = *(v0 + 664);
  v2 = *(v0 + 656);

  return MEMORY[0x1EEE6DFA0](sub_1BD620EF4, v2, v1);
}

uint64_t sub_1BD620EF4()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v13 = v0[101];
    v14 = v0[26];
    (*(v3 + 32))(v0[43], v1, v2);
    swift_getKeyPath();
    v0[23] = v14;
    sub_1BE04B594();

    v15 = MEMORY[0x1E69E7CC0];
    if (*(v14 + v13))
    {
      v15 = *(v14 + v13);
    }

    v0[22] = v15;
    sub_1BE048C84();
    v16 = sub_1BE0490E4();
    v132 = *(v16 + 16);
    if (v132)
    {
      v17 = v0[104];
      v19 = v0[39];
      v18 = v0[40];
      v20 = v0[34];
      v21 = v0[35];
      v22 = v0[33];
      v23 = *(v21 + 16);
      v134 = v16;
      v23(v18, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);
      sub_1BD623104(v22);
      v23(v19, v18, v20);
      v0[24] = v19;
      v24 = v17;
      v25 = sub_1BE04B434();
      if (v17)
      {
        v128 = v0[67];
        v26 = v0[66];
        v27 = v0[52];
        v117 = v0[51];
        v118 = v0[53];
        v28 = v0[48];
        v113 = v0[47];
        v115 = v0[49];
        v29 = v0[42];
        v109 = v0[41];
        v111 = v0[43];
        v107 = v0[40];
        v120 = v0[39];
        v124 = v0[65];
        v30 = v0[35];
        v105 = v0[34];
        v31 = v0[33];
        v32 = v0[30];
        v33 = v0[31];

        (*(v33 + 8))(v31, v32);
        v34 = *(v30 + 8);
        v34(v107, v105);
        (*(v29 + 8))(v111, v109);
        (*(v28 + 8))(v115, v113);
        (*(v27 + 8))(v118, v117);
        (*(v26 + 8))(v128, v124);

        v34(v120, v105);
LABEL_45:

        (*(v0[78] + 8))(v0[79], v0[77]);
        sub_1BE04D114();
        v95 = v24;
        v96 = sub_1BE04D204();
        v97 = sub_1BE052C54();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *v98 = 138412290;
          v100 = v24;
          v101 = _swift_stdlib_bridgeErrorToNSError();
          *(v98 + 4) = v101;
          *v99 = v101;
          _os_log_impl(&dword_1BD026000, v96, v97, "Failed to load/observe transactions in category view model with error: %@", v98, 0xCu);
          sub_1BD0DE53C(v99, &unk_1EBD3E590);
          MEMORY[0x1BFB45F20](v99, -1, -1);
          MEMORY[0x1BFB45F20](v98, -1, -1);
        }

        else
        {
        }

        (*(v0[28] + 8))(v0[29], v0[27]);
        goto LABEL_49;
      }

      v35 = v0[39];
      v36 = v0[34];
      v37 = v0[35];
      v38 = v25;
      (*(v0[31] + 8))(v0[33], v0[30]);
      v39 = *(v37 + 8);
      v39(v35, v36);
      if (v38)
      {
        sub_1BD62A0B0(v0[40], v0 + 22);
      }

      v39(v0[40], v0[34]);
      if (v132 == 1)
      {
        v24 = 0;
      }

      else
      {
        v42 = 1;
        v43 = v134;
        do
        {
          if (v42 >= *(v43 + 16))
          {
            goto LABEL_53;
          }

          v45 = v0[39];
          v44 = v0[40];
          v46 = v0[34];
          v47 = v0[35];
          v48 = v0[33];
          v49 = *(v47 + 16);
          v49(v44, v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, v46);
          sub_1BD623104(v48);
          v49(v45, v44, v46);
          v0[24] = v45;
          v50 = sub_1BE04B434();
          v51 = v0[39];
          v52 = v0[34];
          v53 = v0[35];
          (*(v0[31] + 8))(v0[33], v0[30]);
          v54 = *(v53 + 8);
          v54(v51, v52);
          if (v50)
          {
            sub_1BD62A0B0(v0[40], v0 + 22);
          }

          ++v42;
          v54(v0[40], v0[34]);
          v43 = v134;
        }

        while (v132 != v42);
        v24 = 0;
      }
    }

    else
    {
      v24 = v0[104];
    }

    v43 = sub_1BE0490D4();
    v121 = *(v43 + 16);
    if (v121)
    {
      v55 = 0;
      v119 = v43;
      while (1)
      {
        if (v55 >= *(v43 + 16))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v58 = v0[38];
        v60 = v0[34];
        v59 = v0[35];
        v129 = v0[32];
        v133 = v0[37];
        v61 = *(v59 + 16);
        v61(v58, v43 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v55, v60);
        v62 = v0[22];
        v63 = swift_task_alloc();
        *(v63 + 16) = v58;
        v125 = sub_1BD619C58(sub_1BD62A3DC, v63, v62, MEMORY[0x1E6967A40]);
        v65 = v64;

        sub_1BD623104(v129);
        v61(v133, v58, v60);
        v0[25] = v133;
        v66 = sub_1BE04B434();
        if (v24)
        {
          v130 = v0[67];
          v86 = v0[66];
          v126 = v0[65];
          v87 = v0[52];
          v112 = v0[51];
          v114 = v0[53];
          v88 = v0[48];
          v108 = v0[47];
          v110 = v0[49];
          v89 = v0[42];
          v104 = v0[41];
          v106 = v0[43];
          v135 = v0[38];
          v122 = v0[37];
          v90 = v0[35];
          v116 = v0[34];
          v92 = v0[31];
          v91 = v0[32];
          v93 = v0[30];

          (*(v92 + 8))(v91, v93);
          (*(v89 + 8))(v106, v104);
          (*(v88 + 8))(v110, v108);
          (*(v87 + 8))(v114, v112);
          (*(v86 + 8))(v130, v126);

          v94 = *(v90 + 8);
          v94(v122, v116);
          v94(v135, v116);
          goto LABEL_45;
        }

        v67 = v66;
        v68 = v0[37];
        v69 = v0[34];
        v70 = v0[35];
        (*(v0[31] + 8))(v0[32], v0[30]);
        v71 = *(v70 + 8);
        v71(v68, v69);
        if (v67)
        {
          break;
        }

        v72 = v0[34];
        if ((v65 & 1) == 0)
        {
          v73 = v0[36];
          sub_1BD3B37CC(v125, v73);
          v71(v73, v72);
LABEL_30:
          v56 = v0[38];
LABEL_31:
          v57 = v0[34];
          goto LABEL_22;
        }

        v56 = v0[38];
        v57 = v0[34];
LABEL_22:
        v71(v56, v57);
        v24 = 0;
        ++v55;
        v43 = v119;
        if (v121 == v55)
        {
          goto LABEL_32;
        }
      }

      v56 = v0[38];
      if (v65)
      {
        sub_1BD62A0B0(v56, v0 + 22);
        goto LABEL_30;
      }

      goto LABEL_31;
    }

LABEL_32:

    v74 = sub_1BE0490C4();
    v75 = sub_1BD537330(v74);

    sub_1BE048C84();
    v76 = sub_1BD62A3FC(v0 + 22, v75);

    v77 = v0[22];
    v78 = v77[2];
    if (v76 > v78)
    {
      goto LABEL_54;
    }

    if (v76 < 0)
    {
LABEL_55:
      __break(1u);
    }

    else if (!__OFADD__(v78, v76 - v78))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v76 > v77[3] >> 1)
      {
        if (v78 <= v76)
        {
          v80 = v76;
        }

        else
        {
          v80 = v78;
        }

        v77 = sub_1BD1D825C(isUniquelyReferenced_nonNull_native, v80, 1, v77);
        v0[22] = v77;
      }

      v82 = v0[42];
      v81 = v0[43];
      v83 = v0[41];
      sub_1BD1DDE18(v76, v78, 0);

      sub_1BD61EDE4(v77);
      (*(v82 + 8))(v81, v83);
      v0[102] = sub_1BE052894();
      v84 = sub_1BD626BFC(&qword_1EBD3F7E8, MEMORY[0x1E6967C80]);
      v85 = swift_task_alloc();
      v0[103] = v85;
      *v85 = v0;
      v85[1] = sub_1BD620CF4;
      v40 = v0[47];
      v43 = v0[44];
      v41 = v84;

      return MEMORY[0x1EEE6D8C8](v43, v40, v41);
    }

    __break(1u);
    return MEMORY[0x1EEE6D8C8](v43, v40, v41);
  }

  v131 = v0[79];
  v4 = v0[78];
  v127 = v0[77];
  v123 = v0[67];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[52];
  v8 = v0[53];
  v9 = v0[51];
  v10 = v0[48];
  v11 = v0[49];
  v12 = v0[47];

  (*(v10 + 8))(v11, v12);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v123, v6);
  (*(v4 + 8))(v131, v127);

LABEL_49:

  v102 = v0[1];

  return v102();
}

uint64_t sub_1BD621B3C()
{
  v0[21] = v0[104];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  swift_willThrowTypedImpl();

  v1 = v0[83];
  v2 = v0[82];

  return MEMORY[0x1EEE6DFA0](sub_1BD621BDC, v2, v1);
}

uint64_t sub_1BD621BDC()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];
  v7 = v0[48];
  v8 = v0[49];
  v9 = v0[47];

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[104];
  (*(v0[78] + 8))(v0[79], v0[77]);
  sub_1BE04D114();
  v11 = v10;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C54();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1BD026000, v12, v13, "Failed to load/observe transactions in category view model with error: %@", v14, 0xCu);
    sub_1BD0DE53C(v15, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v15, -1, -1);
    MEMORY[0x1BFB45F20](v14, -1, -1);
  }

  else
  {
  }

  (*(v0[28] + 8))(v0[29], v0[27]);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1BD621F54()
{

  v1 = v0[92];
  (*(v0[78] + 8))(v0[79], v0[77]);
  sub_1BE04D114();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to load/observe transactions in category view model with error: %@", v5, 0xCu);
    sub_1BD0DE53C(v6, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v6, -1, -1);
    MEMORY[0x1BFB45F20](v5, -1, -1);
  }

  else
  {
  }

  (*(v0[28] + 8))(v0[29], v0[27]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD622258()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];

  (*(v2 + 8))(v1, v3);

  v4 = v0[97];
  (*(v0[78] + 8))(v0[79], v0[77]);
  sub_1BE04D114();
  v5 = v4;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v6, v7, "Failed to load/observe transactions in category view model with error: %@", v8, 0xCu);
    sub_1BD0DE53C(v9, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[28] + 8))(v0[29], v0[27]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BD62258C()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v4 = v0[100];
  (*(v0[78] + 8))(v0[79], v0[77]);
  sub_1BE04D114();
  v5 = v4;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v6, v7, "Failed to load/observe transactions in category view model with error: %@", v8, 0xCu);
    sub_1BD0DE53C(v9, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[28] + 8))(v0[29], v0[27]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BD6228C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v20[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v9 + 8))(v12, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D830);
  a2[4] = sub_1BD62A9C0();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v18 = v21;
  sub_1BE04A714();
  (*(v22 + 8))(v7, v18);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD622C64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v21 - v17;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  (*(v10 + 8))(v13, v9);
  v25 = v21;
  v26 = v22;
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E28);
  a3[4] = sub_1BD0F9CDC();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08);
  v19 = v23;
  sub_1BE04A714();
  (*(v24 + 8))(v8, v19);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1BD622FD0()
{
  v0 = sub_1BE04AFE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v12 - v7;
  sub_1BE049A14();
  sub_1BE049A14();
  v9 = _s9PassKitUI28NearbyPeerPaymentButtonsViewC6ActionV2eeoiySbAE_AEtFZ_0();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v8, v0);
  return v9 & 1;
}

uint64_t sub_1BD623104@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1BE049904();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v45 = &v38 - v7;
  v8 = sub_1BE049B04();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04AFE4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v52 = v1;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v17 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  swift_beginAccess();
  v40 = v16;
  v41 = v13;
  v18 = *(v13 + 16);
  v42 = v12;
  v19 = v12;
  v20 = v39;
  v18(v16, v1 + v17, v19);
  swift_getKeyPath();
  v51 = v1;
  sub_1BE04B594();

  v21 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  v22 = *(v20 + 16);
  v43 = v8;
  v22(v11, v1 + v21, v8);
  swift_getKeyPath();
  v50 = v1;
  sub_1BE04B594();

  v23 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v23, v45, &qword_1EBD38DB8);
  (*(v47 + 104))(v46, *MEMORY[0x1E6967980], v48);
  LOBYTE(v23) = sub_1BE049AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D610);
  v24 = sub_1BE049B44();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  if (v23)
  {
    *(v28 + 16) = xmmword_1BE0B69E0;
    (*(v25 + 104))(v28 + v27, *MEMORY[0x1E6967B10], v24);
    v29 = sub_1BD5374CC(v28);
    swift_setDeallocating();
    (*(v25 + 8))(v28 + v27, v24);
  }

  else
  {
    *(v28 + 16) = xmmword_1BE0B6CA0;
    v30 = *(v25 + 104);
    v30(v28 + v27, *MEMORY[0x1E6967B18], v24);
    v30(v28 + v27 + v26, *MEMORY[0x1E6967B10], v24);
    v29 = sub_1BD5374CC(v28);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  v31 = sub_1BE049AD4();
  MEMORY[0x1EEE9AC00](v31, v32);
  v33 = v40;
  *(&v38 - 6) = v40;
  *(&v38 - 5) = v29;
  v35 = v45;
  v34 = v46;
  *(&v38 - 4) = v36;
  *(&v38 - 3) = v34;
  *(&v38 - 2) = v35;
  v49 = sub_1BE049A94();
  sub_1BE04B444();

  (*(v20 + 8))(v11, v43);
  (*(v47 + 8))(v34, v48);
  sub_1BD0DE53C(v35, &qword_1EBD38DB8);
  return (*(v41 + 8))(v33, v42);
}

uint64_t sub_1BD62373C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, void, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v206 = a6;
  v189 = a5;
  v208 = a4;
  v166 = a3;
  v217 = a2;
  v193 = a7;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0);
  v195 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v8);
  v192 = &v141 - v9;
  v205 = sub_1BE04A7A4();
  v212 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v10);
  v203 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D618);
  v209 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v12);
  v200 = &v141 - v13;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D620);
  v213 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v14);
  v185 = &v141 - v15;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49A38);
  v210 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202, v16);
  v188 = &v141 - v17;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D628);
  v211 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v18);
  v190 = &v141 - v19;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D630);
  v184 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v20);
  v176 = &v141 - v21;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D638);
  v180 = *(v179 - 1);
  MEMORY[0x1EEE9AC00](v179, v22);
  v173 = &v141 - v23;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D640);
  v182 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181, v24);
  v175 = &v141 - v25;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D648);
  v170 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v26);
  v162 = &v141 - v27;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D650);
  v165 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v28);
  v159 = &v141 - v29;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D658);
  v168 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v30);
  v163 = &v141 - v31;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D660);
  v156 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v32);
  v149 = &v141 - v33;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D668);
  v152 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v34);
  v146 = &v141 - v35;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D670);
  v154 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153, v36);
  v150 = &v141 - v37;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828);
  v145 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v38);
  v40 = &v141 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v141 - v44;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0);
  v143 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v46);
  v48 = &v141 - v47;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830);
  v148 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v49);
  v141 = &v141 - v50;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D678);
  v158 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v51);
  v196 = &v141 - v52;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D680);
  v161 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v53);
  v197 = &v141 - v54;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D688);
  v172 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v55);
  v198 = &v141 - v56;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D690);
  v178 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v57);
  v199 = &v141 - v58;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D698);
  v187 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v59);
  v174 = &v141 - v60;
  v216 = *a1;
  v61 = v45;
  v62 = v41;
  v219 = sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v63 = *(v42 + 8);
  v218 = v42 + 8;
  v220 = v63;
  v63(v61, v41);
  sub_1BE04AFE4();
  v64 = v40;
  sub_1BE04A7B4();
  v217 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0);
  v207 = MEMORY[0x1E6968D20];
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828);
  sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
  v65 = v142;
  v66 = v144;
  sub_1BE04A714();
  (*(v145 + 8))(v64, v66);
  (*(v143 + 8))(v48, v65);
  v221 = v166;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D6A0);
  v67 = v146;
  sub_1BE04A7B4();
  v214 = v61;
  v215 = v62;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v68 = v149;
  sub_1BE04A724();

  v220(v61, v62);
  sub_1BD0DE4F4(&qword_1EBD4D6A8, &qword_1EBD4D668);
  sub_1BD0DE4F4(&qword_1EBD4D6B0, &qword_1EBD4D660);
  sub_1BD0DE4F4(&qword_1EBD4D6B8, &qword_1EBD4D6A0);
  sub_1BD626BFC(&qword_1EBD40690, MEMORY[0x1E6967B20]);
  v69 = v150;
  v70 = v151;
  v71 = v155;
  sub_1BE04A754();
  (*(v156 + 8))(v68, v71);
  (*(v152 + 8))(v67, v70);
  sub_1BD0DE4F4(&qword_1EBD3F858, &qword_1EBD3F830);
  v166 = MEMORY[0x1E6968C08];
  sub_1BD0DE4F4(&qword_1EBD4D6C0, &qword_1EBD4D670);
  v72 = v141;
  v73 = v147;
  v74 = v153;
  sub_1BE04A784();
  (*(v154 + 8))(v69, v74);
  (*(v148 + 8))(v72, v73);
  v221 = v208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D6C8);
  v75 = v159;
  sub_1BE04A7B4();
  v77 = v214;
  v76 = v215;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v78 = v162;
  sub_1BE04A724();

  v220(v77, v76);
  sub_1BD0DE4F4(&qword_1EBD4D6D0, &qword_1EBD4D650);
  sub_1BD0DE4F4(&qword_1EBD4D6D8, &qword_1EBD4D648);
  sub_1BD0DE4F4(&qword_1EBD4D6E0, &qword_1EBD4D6C8);
  sub_1BD626BFC(&qword_1EBD3A340, MEMORY[0x1E6967AD0]);
  v79 = v163;
  v80 = v164;
  v81 = v169;
  sub_1BE04A754();
  (*(v170 + 8))(v78, v81);
  (*(v165 + 8))(v75, v80);
  v208 = MEMORY[0x1E6968B68];
  sub_1BD0DE4F4(&qword_1EBD4D6E8, &qword_1EBD4D678);
  sub_1BD0DE4F4(&qword_1EBD4D6F0, &qword_1EBD4D658);
  v82 = v196;
  v83 = v157;
  v84 = v167;
  sub_1BE04A784();
  (*(v168 + 8))(v79, v84);
  (*(v158 + 8))(v82, v83);
  v86 = v214;
  v85 = v215;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v87 = v173;
  sub_1BE04A724();

  v220(v86, v85);
  sub_1BE049904();
  v88 = v176;
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD4D6F8, &qword_1EBD4D638);
  sub_1BD0DE4F4(&qword_1EBD4D700, &qword_1EBD4D630);
  sub_1BD626BFC(&qword_1EBD3F7A0, MEMORY[0x1E6967988]);
  v89 = v175;
  v90 = v88;
  v91 = v179;
  v92 = v183;
  sub_1BE04A744();
  (*(v184 + 8))(v90, v92);
  (*(v180 + 1))(v87, v91);
  sub_1BD0DE4F4(&qword_1EBD4D708, &qword_1EBD4D680);
  sub_1BD0DE4F4(&qword_1EBD4D710, &qword_1EBD4D640);
  v93 = v197;
  v94 = v160;
  v95 = v181;
  sub_1BE04A784();
  (*(v182 + 8))(v89, v95);
  (*(v161 + 8))(v93, v94);
  v96 = v86;
  v97 = v215;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v98 = v188;
  sub_1BE04A724();

  v220(v96, v97);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  v99 = v200;
  sub_1BE04A7B4();
  swift_getKeyPath();
  v207 = sub_1BD0DE4F4(&qword_1EBD4D718, &qword_1EBD4D618);
  v100 = v185;
  v101 = v201;
  sub_1BE04A724();

  v102 = *(v209 + 8);
  v209 += 8;
  v196 = v102;
  (v102)(v99, v101);
  v103 = *MEMORY[0x1E6968C38];
  v104 = v212;
  v105 = *(v212 + 104);
  v184 = v212 + 104;
  v189 = v105;
  v106 = v203;
  v107 = v205;
  v105(v203, v103, v205);
  v183 = sub_1BD0DE4F4(&qword_1EBD49A48, &qword_1EBD49A38);
  v182 = sub_1BD0DE4F4(&qword_1EBD4D720, &qword_1EBD4D620);
  v181 = sub_1BD626BFC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  v108 = v190;
  v109 = v202;
  v110 = v204;
  sub_1BE04A774();
  v111 = *(v104 + 8);
  v212 = v104 + 8;
  v180 = v111;
  v111(v106, v107);
  v112 = *(v213 + 8);
  v213 += 8;
  v179 = v112;
  v113 = v100;
  (v112)(v100, v110);
  v114 = *(v210 + 8);
  v210 += 8;
  v115 = v98;
  v114(v98, v109);
  sub_1BD0DE4F4(&qword_1EBD4D728, &qword_1EBD4D688);
  v176 = sub_1BD0DE4F4(&qword_1EBD4D730, &qword_1EBD4D628);
  v116 = v198;
  v117 = v171;
  v118 = v191;
  sub_1BE04A784();
  v119 = *(v211 + 8);
  v211 += 8;
  v175 = v119;
  v120 = v108;
  (v119)(v108, v118);
  (*(v172 + 8))(v116, v117);
  v121 = v214;
  v122 = v215;
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v220(v121, v122);
  v123 = v200;
  sub_1BE04A7B4();
  swift_getKeyPath();
  v124 = v113;
  v125 = v201;
  sub_1BE04A724();

  (v196)(v123, v125);
  v126 = v203;
  v127 = v205;
  v189(v203, *MEMORY[0x1E6968C40], v205);
  v128 = v202;
  v129 = v204;
  sub_1BE04A774();
  v180(v126, v127);
  (v179)(v124, v129);
  v114(v115, v128);
  sub_1BD0DE4F4(&qword_1EBD4D738, &qword_1EBD4D690);
  v130 = v174;
  v131 = v199;
  v132 = v177;
  sub_1BE04A784();
  (v175)(v120, v118);
  (*(v178 + 8))(v131, v132);
  v133 = v214;
  sub_1BE04A7C4();
  swift_getKeyPath();
  v134 = v192;
  sub_1BE04A724();

  v220(v133, v122);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D740);
  v136 = v193;
  v193[3] = v135;
  v136[4] = sub_1BD628D28();
  __swift_allocate_boxed_opaque_existential_1(v136);
  sub_1BD0DE4F4(&qword_1EBD4D828, &qword_1EBD4D698);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0);
  v137 = v130;
  v138 = v186;
  v139 = v194;
  sub_1BE04A784();
  (*(v195 + 8))(v134, v139);
  return (*(v187 + 8))(v137, v138);
}

uint64_t sub_1BD6255CC(uint64_t a1)
{
  v2 = sub_1BE049904();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1BE049A44();
}

void sub_1BD625694(uint64_t a1, void *a2)
{
  v3 = v2;
  v107 = a2;
  v90 = a1;
  v81 = sub_1BE04AF64();
  v88 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v4);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1BE04B0F4();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v7);
  v78 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE0493F4();
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v99 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v91 = v74 - v14;
  v15 = sub_1BE049A94();
  v16 = *(v15 - 8);
  v101 = v15;
  v102 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v100 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE049B04();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v74 - v26;
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel___observationRegistrar;
  v110 = v3;
  v29 = sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  v92 = v28;
  v93 = v29;
  sub_1BE04B594();

  v30 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  v31 = *(v20 + 16);
  v84 = v20 + 16;
  v83 = v31;
  v31(v27, v3 + v30, v19);
  (*(v20 + 104))(v23, *MEMORY[0x1E6967AC0], v19);
  sub_1BD626BFC(&qword_1EBD3A340, MEMORY[0x1E6967AD0]);
  v32 = sub_1BE052334();
  v33 = *(v20 + 8);
  v33(v23, v19);
  v85 = v27;
  v87 = v19;
  v86 = v20 + 8;
  v82 = v33;
  v33(v27, v19);
  if ((v32 & 1) == 0)
  {
    v76 = v30;
    v77 = v6;
    v98 = v9;
    MEMORY[0x1EEE9AC00](0, 0);
    v34 = v90;
    v74[-2] = v3;
    v74[-1] = v34;
    v35 = v107;
    sub_1BE048C84();
    v36 = sub_1BD1CEA30(sub_1BD628CF8, &v74[-4], v35);
    v106 = (MEMORY[0x1BFB403C0](0) >> 48);
    v107 = HIDWORD(v37);
    v38 = HIWORD(v37);
    v39 = *(v36 + 16);
    LODWORD(v105) = HIWORD(v40);
    if (v39)
    {
      v75 = v3;
      v97 = *(v102 + 16);
      v41 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v74[1] = v36;
      v42 = v36 + v41;
      v96 = *(v102 + 72);
      v95 = (v89 + 8);
      v94 = (v102 + 8);
      v44 = v100;
      v43 = v101;
      v102 += 16;
      do
      {
        v104 = v38;
        v105 = v39;
        v97(v44, v42, v43);
        v45 = v99;
        sub_1BE0499A4();
        sub_1BE0493C4();
        v103 = v46;
        (*v95)(v45, v98);
        v44 = v100;
        v43 = v101;
        v106 = (sub_1BE053384() >> 48);
        v107 = HIDWORD(v47);
        v38 = HIWORD(v47);
        v49 = HIWORD(v48);
        (*v94)(v44, v43);
        v42 += v96;
        v39 = v105 - 1;
      }

      while (v105 != 1);
      LODWORD(v105) = v49;

      v50 = v88;
      v3 = v75;
    }

    else
    {

      v50 = v88;
    }

    sub_1BE049594();
    sub_1BE049404();
    swift_getKeyPath();
    v109 = v3;
    sub_1BE04B594();

    v51 = v85;
    v52 = v87;
    v83(v85, v3 + v76, v87);
    v53 = sub_1BE049AA4();
    v82(v51, v52);
    if (v53)
    {
      v54 = v78;
      sub_1BE04B054();
      v55 = sub_1BE0493E4();
      v104 = v56;
      v105 = v55;
      (*(v79 + 8))(v54, v80);
      v57 = v77;
    }

    else
    {
      v58 = sub_1BE052404();
      v59 = PKLocalizedPaymentString(v58);

      v57 = v77;
      if (!v59)
      {
        goto LABEL_15;
      }

      sub_1BE052434();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1BE0B69E0;
      v61 = v78;
      sub_1BE04B054();
      v62 = sub_1BE0493E4();
      v64 = v63;
      (*(v79 + 8))(v61, v80);
      *(v60 + 56) = MEMORY[0x1E69E6158];
      *(v60 + 64) = sub_1BD110550();
      *(v60 + 32) = v62;
      *(v60 + 40) = v64;
      v65 = sub_1BE052454();
      v104 = v66;
      v105 = v65;
    }

    swift_getKeyPath();
    v109 = v3;
    sub_1BE04B594();

    v67 = v3 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
    swift_beginAccess();
    v106 = *(v50 + 16);
    v68 = v81;
    v106(v57, v67, v81);
    v107 = sub_1BE04AE64();
    v69 = *(v50 + 8);
    v69(v57, v68);
    swift_getKeyPath();
    v108 = v3;
    sub_1BE04B594();

    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
    v106(v57, v67 + *(v70 + 36), v68);
    v71 = sub_1BE04AE64();
    v69(v57, v68);
    v72 = v107;
    v73 = PKDateRangeStringFromDateToDate();

    if (v73)
    {
      sub_1BE052434();

      (*(v89 + 8))(v91, v98);
      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1BD626198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = a1;
  v4 = sub_1BE049904();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v38 = &v38 - v9;
  v10 = sub_1BE0493F4();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04AF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v38 - v20;
  swift_getKeyPath();
  v47 = a2;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v22 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range;
  swift_beginAccess();
  sub_1BD0DE19C(a2 + v22, v21, &qword_1EBD38DB8);
  sub_1BE049974();
  sub_1BD626BFC(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  if (sub_1BE052314())
  {
    v23 = sub_1BE0522F4();
    (*(v14 + 8))(v17, v13);
    sub_1BD0DE53C(v21, &qword_1EBD38DB8);
    if (v23)
    {
      v24 = v42;
      sub_1BE0499A4();
      v25 = sub_1BE0493A4();
      v27 = v26;
      (*(v43 + 8))(v24, v44);
      if (v25 == sub_1BE049594() && v27 == v28)
      {

LABEL_10:
        v32 = v38;
        sub_1BE049A34();
        v34 = v39;
        v33 = v40;
        v35 = v41;
        (*(v40 + 104))(v39, *MEMORY[0x1E6967980], v41);
        sub_1BD626BFC(&qword_1EBD3F7A0, MEMORY[0x1E6967988]);
        v36 = sub_1BE052334();
        v37 = *(v33 + 8);
        v37(v34, v35);
        v37(v32, v35);
        v29 = v36 ^ 1;
        return v29 & 1;
      }

      v31 = sub_1BE053B84();

      if (v31)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    sub_1BD0DE53C(v21, &qword_1EBD38DB8);
  }

  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1BD6266BC()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__accountID;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  v4 = sub_1BE049B04();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__range, &qword_1EBD38DB8);

  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution, &qword_1EBD498D0);
  sub_1BD0DE53C(v0 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account, &qword_1EBD498C8);

  v5 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel___observationRegistrar;
  v6 = sub_1BE04B5D4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_1BD626880()
{
  sub_1BE04AFE4();
  if (v0 <= 0x3F)
  {
    sub_1BE049B04();
    if (v1 <= 0x3F)
    {
      sub_1BD0F5C4C();
      if (v2 <= 0x3F)
      {
        sub_1BD626A84(319, &qword_1EBD4D590, MEMORY[0x1E69676C0]);
        if (v3 <= 0x3F)
        {
          sub_1BD626A84(319, &qword_1EBD4D598, MEMORY[0x1E6967810]);
          if (v4 <= 0x3F)
          {
            sub_1BE04B5D4();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1BD626A84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD626B20()
{
  sub_1BD49DA08();
  if (v0 <= 0x3F)
  {
    sub_1BE049A94();
    if (v1 <= 0x3F)
    {
      sub_1BE049184();
      if (v2 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD4D5B0);
        if (v3 <= 0x3F)
        {
          sub_1BD626C44();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1BD626BFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BD626C44()
{
  if (!qword_1EBD4D5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB0);
    v0 = sub_1BE0516D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D5B8);
    }
  }
}

uint64_t sub_1BD626D08@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37228);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - v5;
  sub_1BD627168(v1, &v32 - v5);
  v7 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  sub_1BD628898(v1, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BE0528A4();
  v11 = sub_1BE052894();
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_1BD6288FC(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v15 = sub_1BE0528D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = &v32 - v19;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v35 = sub_1BE04EAA4();
    v36 = &v32;
    v34 = *(v35 - 8);
    MEMORY[0x1EEE9AC00](v35, v21);
    v33 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1BE053834();

    v38 = 0xD000000000000045;
    v39 = 0x80000001BE131C50;
    v37 = 356;
    v23 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v23);

    v32 = v6;
    v26 = MEMORY[0x1EEE9AC00](v24, v25);
    (*(v16 + 16))(&v32 - v19, &v32 - v19, v15, v26);
    v27 = v33;
    sub_1BE04EA94();
    (*(v16 + 8))(v20, v15);
    sub_1BD0DE204(v32, a1, &qword_1EBD37228);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37230);
    return (*(v34 + 32))(a1 + *(v28 + 36), v27, v35);
  }

  else
  {
    v30 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37238) + 36));
    v31 = sub_1BE04E7B4();
    (*(v16 + 32))(&v30[*(v31 + 20)], &v32 - v19, v15);
    *v30 = &unk_1BE0E8AC8;
    *(v30 + 1) = v13;
    return sub_1BD0DE204(v6, a1, &qword_1EBD37228);
  }
}

uint64_t sub_1BD627168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v4 = v3 - 8;
  v27 = *(v3 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5C8);
  MEMORY[0x1EEE9AC00](v28, v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5D0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5D8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  v31 = *(a1 + *(v4 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5C0);
  sub_1BE0516A4();
  v18 = v30;
  if (v30)
  {
    sub_1BD628898(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v20 = swift_allocObject();
    v21 = sub_1BD6288FC(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    MEMORY[0x1EEE9AC00](v21, v22);
    *(&v27 - 2) = v18;
    *(&v27 - 1) = a1;
    sub_1BD628C9C();
    sub_1BE051704();
    v23 = &v9[*(v28 + 36)];
    v23[32] = 0;
    *v23 = 0u;
    *(v23 + 1) = 0u;
    sub_1BD0DE19C(v9, v13, &qword_1EBD4D5C8);
    swift_storeEnumTagMultiPayload();
    sub_1BD628A98();
    sub_1BD628B7C();
    sub_1BE04F9A4();

    v24 = v9;
    v25 = &qword_1EBD4D5C8;
  }

  else
  {
    sub_1BE04E4F4();
    *&v17[*(v14 + 36)] = 0;
    sub_1BD0DE19C(v17, v13, &qword_1EBD4D5D8);
    swift_storeEnumTagMultiPayload();
    sub_1BD628A98();
    sub_1BD628B7C();
    sub_1BE04F9A4();
    v24 = v17;
    v25 = &qword_1EBD4D5D8;
  }

  return sub_1BD0DE53C(v24, v25);
}

uint64_t sub_1BD62750C(uint64_t *a1)
{
  v2 = sub_1BE049184();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - v8;
  v10 = sub_1BE04AFE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *a1;
  if (*a1)
  {
    v18 = &v39 - v16;
    v19 = type metadata accessor for FinanceKitInternalTransactionCell(0);
    sub_1BE048964();
    v44 = v18;
    sub_1BE049A14();
    v20 = *(v3 + 16);
    v20(v9, a1 + *(v19 + 24), v2);
    v39 = v2;
    v40 = v20;
    v43 = v3;
    v21 = *(v11 + 16);
    v21(v45, v18, v10);
    v22 = v21;
    v20(v46, v9, v2);
    v41 = _s9ViewModelCMa_3(0);
    v23 = swift_allocObject();
    v42 = v9;
    v24 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__transaction;
    v25 = sub_1BE049A94();
    (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
    v26 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__account;
    v27 = sub_1BE0495A4();
    (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
    v28 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__historyToken;
    v29 = sub_1BE048F54();
    (*(*(v29 - 8) + 56))(v23 + v28, 1, 1, v29);
    sub_1BE048964();
    sub_1BE04B5C4();
    v30 = OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID;
    v31 = v45;
    v22(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_transactionID, v45, v10);
    (*(v11 + 56))(v23 + v30, 0, 1, v10);
    v32 = v17;
    v33 = v10;
    v34 = v46;
    v35 = v39;
    v40(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_institution, v46, v39);
    *(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel_style) = 0;
    v36 = *(v43 + 8);
    v36(v34, v35);
    v37 = *(v11 + 8);
    v37(v31, v33);
    *(v23 + OBJC_IVAR____TtCV9PassKitUI25FinanceKitTransactionView9ViewModel__insights) = MEMORY[0x1E69E7CC0];
    v47 = v23;
    sub_1BE051694();
    v36(v42, v35);
    v37(v44, v33);
    v49 = sub_1BD628CF0;
    v50 = v32;
    v51 = 0;
    sub_1BD9824C4(&v48);
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD626BFC(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD6279EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1BE049184();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD498E8);
  v11 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(v7 + 16))(v10, a2 + *(v11 + 24), v6);
  v12 = sub_1BE052BF4();
  v13 = [objc_opt_self() transactionFromFKPaymentTransaction:a1 institution:v12];

  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 presentationInformationForTransaction:v15 transactionSource:0 secondaryTransactionSource:0 familyMember:0 account:0 deviceName:0 context:0];
  v17 = *(a2 + *(v11 + 28));
  type metadata accessor for TransactionPresentation();
  swift_allocObject();
  v18 = v17;
  sub_1BD6AF5A8(v15, v16, v17);

  sub_1BD626BFC(&qword_1EBD3B840, type metadata accessor for TransactionPresentation);
  sub_1BE048964();
  v19 = sub_1BE04E954();
  v21 = v20;
  sub_1BD6AE91C();

  *a3 = v19;
  a3[1] = v21;
  return result;
}

uint64_t sub_1BD627C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v3[7] = swift_task_alloc();
  v4 = sub_1BE04D214();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_1BE04AFE4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  sub_1BE0528A4();
  v3[15] = sub_1BE052894();
  v7 = sub_1BE052844();
  v3[16] = v7;
  v3[17] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD627DC8, v7, v6);
}

uint64_t sub_1BD627DC8()
{
  sub_1BE0490F4();
  v0[18] = sub_1BE0490B4();
  sub_1BE049A14();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1BD627EA4;
  v2 = v0[14];

  return MEMORY[0x1EEDC1478](v2);
}

uint64_t sub_1BD627EA4(uint64_t a1)
{
  v4 = *v2;
  v4[20] = v1;

  v5 = v4[14];
  v6 = v4[12];
  v7 = v4[11];
  if (v1)
  {
    v8 = *(v6 + 8);
    v4[22] = v8;
    v4[23] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v7);

    v9 = v4[16];
    v10 = v4[17];
    v11 = sub_1BD62812C;
  }

  else
  {
    v4[21] = a1;
    (*(v6 + 8))(v5, v7);

    v9 = v4[16];
    v10 = v4[17];
    v11 = sub_1BD62805C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BD62805C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  *(v0 + 16) = *(v2 + *(v3 + 32));
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D5C0);
  sub_1BE0516B4();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD62812C()
{
  v32 = v0;
  v1 = v0[20];
  v2 = v0[7];
  v3 = v0[5];

  sub_1BE04D114();
  sub_1BD628898(v3, v2);
  v4 = v1;
  v5 = sub_1BE04D204();
  v6 = sub_1BE052C34();

  if (os_log_type_enabled(v5, v6))
  {
    v25 = v0[22];
    v26 = v0[20];
    v7 = v0[13];
    v8 = v0[11];
    v28 = v0[9];
    v29 = v0[8];
    v30 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v10 = 136315394;
    sub_1BE049A14();
    sub_1BD626BFC(&unk_1EBD39960, MEMORY[0x1E69695A8]);
    v12 = sub_1BE053B24();
    v14 = v13;
    v25(v7, v8);
    sub_1BD628A3C(v9);
    v15 = sub_1BD123690(v12, v14, &v31);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v26;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_1BD026000, v5, v6, "Failed to load FKPaymentTransaction for id: %s with error: %@.", v10, 0x16u);
    sub_1BD0DE53C(v11, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1BFB45F20](v27, -1, -1);
    MEMORY[0x1BFB45F20](v10, -1, -1);

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v18 = v0[20];
    v20 = v0[9];
    v19 = v0[10];
    v22 = v0[7];
    v21 = v0[8];

    sub_1BD628A3C(v22);
    (*(v20 + 8))(v19, v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1BD628424(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v29 - v12;
  v14 = *(a1 + 16);
  v15 = v14 == 0;
  v31 = v14;
  if (!v14)
  {
    return 0;
  }

  v29 = v2;
  v30 = v11;
  v37 = v11 + 16;
  v38 = a2 + 56;
  v16 = (v11 + 8);
  v17 = sub_1BE049A94();
  v18 = 0;
  v19 = *(v17 - 8);
  v34 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v33 = *(v19 + 72);
  v39 = v13;
  while (1)
  {
    v32 = v15;
    v35 = v18;
    sub_1BE049A14();
    if (*(a2 + 16))
    {
      sub_1BD626BFC(&qword_1EBD3A360, MEMORY[0x1E69695A8]);
      v20 = sub_1BE052284();
      v21 = -1 << *(a2 + 32);
      v22 = v20 & ~v21;
      if ((*(v38 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        break;
      }
    }

LABEL_3:
    (*v16)(v39, v5);
    v18 = v35 + 1;
    v15 = v35 + 1 == v31;
    if (v35 + 1 == v31)
    {
      return 0;
    }
  }

  v36 = ~v21;
  v23 = *(v30 + 72);
  v24 = *(v30 + 16);
  while (1)
  {
    v25 = a2;
    v24(v8, *(a2 + 48) + v23 * v22, v5);
    sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
    v26 = sub_1BE052334();
    v27 = *v16;
    (*v16)(v8, v5);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v36;
    a2 = v25;
    if (((*(v38 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v27(v39, v5);
  return v35;
}

id sub_1BD628774@<X0>(uint64_t a1@<X8>)
{
  sub_1BE051694();
  sub_1BE051694();
  sub_1BE051694();
  result = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (result)
  {
    v3 = result;
    type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel(0);
    result = sub_1BE051694();
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 32) = v4;
    *(a1 + 40) = v5;
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    *(a1 + 64) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD628898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6288FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD628960()
{
  v2 = *(type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD627C3C(v4, v5, v0 + v3);
}

uint64_t sub_1BD628A3C(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD628A98()
{
  result = qword_1EBD4D5E0;
  if (!qword_1EBD4D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D5C8);
    sub_1BD0DE4F4(&qword_1EBD4D5E8, &qword_1EBD4D5F0);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D5E0);
  }

  return result;
}

unint64_t sub_1BD628B7C()
{
  result = qword_1EBD4D5F8;
  if (!qword_1EBD4D5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D5D8);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D5F8);
  }

  return result;
}

uint64_t sub_1BD628C34()
{
  v1 = *(type metadata accessor for FinanceKitInternalTransactionCell(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1BD62750C(v2);
}

unint64_t sub_1BD628C9C()
{
  result = qword_1EBD4D600;
  if (!qword_1EBD4D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D600);
  }

  return result;
}

unint64_t sub_1BD628D28()
{
  result = qword_1EBD4D748;
  if (!qword_1EBD4D748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D740);
    sub_1BD628DCC();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D748);
  }

  return result;
}

unint64_t sub_1BD628DCC()
{
  result = qword_1EBD4D750;
  if (!qword_1EBD4D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D698);
    sub_1BD628E58();
    sub_1BD629744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D750);
  }

  return result;
}

unint64_t sub_1BD628E58()
{
  result = qword_1EBD4D758;
  if (!qword_1EBD4D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D690);
    sub_1BD628EE4();
    sub_1BD629744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D758);
  }

  return result;
}

unint64_t sub_1BD628EE4()
{
  result = qword_1EBD4D760;
  if (!qword_1EBD4D760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D688);
    sub_1BD628F70();
    sub_1BD6295B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D760);
  }

  return result;
}

unint64_t sub_1BD628F70()
{
  result = qword_1EBD4D768;
  if (!qword_1EBD4D768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D680);
    sub_1BD628FFC();
    sub_1BD629320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D768);
  }

  return result;
}

unint64_t sub_1BD628FFC()
{
  result = qword_1EBD4D770;
  if (!qword_1EBD4D770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D678);
    sub_1BD58197C();
    sub_1BD629088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D770);
  }

  return result;
}

unint64_t sub_1BD629088()
{
  result = qword_1EBD4D778;
  if (!qword_1EBD4D778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D670);
    sub_1BD62912C();
    sub_1BD0FA424(&qword_1EBD4D7A8, &qword_1EBD4D660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D778);
  }

  return result;
}

unint64_t sub_1BD62912C()
{
  result = qword_1EBD4D780;
  if (!qword_1EBD4D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D668);
    sub_1BD6291B8();
    sub_1BD62926C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D780);
  }

  return result;
}

unint64_t sub_1BD6291B8()
{
  result = qword_1EBD4D788;
  if (!qword_1EBD4D788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6A0);
    sub_1BD626BFC(&qword_1EBD4D790, MEMORY[0x1E6967B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D788);
  }

  return result;
}

unint64_t sub_1BD62926C()
{
  result = qword_1EBD4D798;
  if (!qword_1EBD4D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6A0);
    sub_1BD626BFC(&qword_1EBD4D7A0, MEMORY[0x1E6967B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D798);
  }

  return result;
}

unint64_t sub_1BD629320()
{
  result = qword_1EBD4D7B0;
  if (!qword_1EBD4D7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D658);
    sub_1BD6293C4();
    sub_1BD0FA424(&qword_1EBD4D7E0, &qword_1EBD4D648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7B0);
  }

  return result;
}

unint64_t sub_1BD6293C4()
{
  result = qword_1EBD4D7B8;
  if (!qword_1EBD4D7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D650);
    sub_1BD629450();
    sub_1BD629504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7B8);
  }

  return result;
}

unint64_t sub_1BD629450()
{
  result = qword_1EBD4D7C0;
  if (!qword_1EBD4D7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6C8);
    sub_1BD626BFC(&qword_1EBD4D7C8, MEMORY[0x1E6967AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7C0);
  }

  return result;
}

unint64_t sub_1BD629504()
{
  result = qword_1EBD4D7D0;
  if (!qword_1EBD4D7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D6C8);
    sub_1BD626BFC(&qword_1EBD4D7D8, MEMORY[0x1E6967AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7D0);
  }

  return result;
}

unint64_t sub_1BD6295B8()
{
  result = qword_1EBD4D7E8;
  if (!qword_1EBD4D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D640);
    sub_1BD0FA424(&qword_1EBD4D7F0, &qword_1EBD4D638);
    sub_1BD62965C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7E8);
  }

  return result;
}

unint64_t sub_1BD62965C()
{
  result = qword_1EBD4D7F8;
  if (!qword_1EBD4D7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D630);
    v1 = MEMORY[0x1E6967988];
    sub_1BD626BFC(&qword_1EBD4D800, MEMORY[0x1E6967988]);
    sub_1BD626BFC(&qword_1EBD4D808, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D7F8);
  }

  return result;
}

unint64_t sub_1BD629744()
{
  result = qword_1EBD4D810;
  if (!qword_1EBD4D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D628);
    sub_1BD0FA424(&qword_1EBD49A90, &qword_1EBD49A38);
    sub_1BD6297E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D810);
  }

  return result;
}

unint64_t sub_1BD6297E8()
{
  result = qword_1EBD4D818;
  if (!qword_1EBD4D818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D620);
    sub_1BD62986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D818);
  }

  return result;
}

unint64_t sub_1BD62986C()
{
  result = qword_1EBD4D820;
  if (!qword_1EBD4D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D618);
    sub_1BD6298F8();
    sub_1BD6299AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D820);
  }

  return result;
}

unint64_t sub_1BD6298F8()
{
  result = qword_1EBD4B4F0;
  if (!qword_1EBD4B4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB8);
    sub_1BD626BFC(&qword_1EBD49AA0, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B4F0);
  }

  return result;
}

unint64_t sub_1BD6299AC()
{
  result = qword_1EBD4B500;
  if (!qword_1EBD4B500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38DB8);
    sub_1BD626BFC(&qword_1EBD49AA8, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B500);
  }

  return result;
}

uint64_t sub_1BD629A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE0495A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D840);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1BD0DE19C(a1, &v24 - v16, &qword_1EBD498C8);
  sub_1BD0DE19C(a2, &v17[v18], &qword_1EBD498C8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BD0DE19C(v17, v12, &qword_1EBD498C8);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BD626BFC(&qword_1EBD4D848, MEMORY[0x1E6967810]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v17, &qword_1EBD498C8);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v17, &qword_1EBD4D840);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v17, &qword_1EBD498C8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD629D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049184();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D850);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1BD0DE19C(a1, &v24 - v16, &qword_1EBD498D0);
  sub_1BD0DE19C(a2, &v17[v18], &qword_1EBD498D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BD0DE19C(v17, v12, &qword_1EBD498D0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BD626BFC(&qword_1EBD4D858, MEMORY[0x1E69676C0]);
      v21 = sub_1BE052334();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1BD0DE53C(v17, &qword_1EBD498D0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v17, &qword_1EBD4D850);
    v20 = 1;
    return v20 & 1;
  }

  sub_1BD0DE53C(v17, &qword_1EBD498D0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1BD62A0B0(uint64_t a1, uint64_t *a2)
{
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CAB0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - v5;
  v42 = sub_1BE049A94();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v8);
  v40 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v39, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v32 - v16;
  v18 = *a2;
  v19 = *(*a2 + 16);
  if (v19)
  {
    v33 = v6;
    v34 = a2;
    v20 = 2 * v19;
    v37 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v38 = v7;
    v41 = v7 + 16;
    v35 = v18;
    v36 = v7 + 8;
    v21 = (v15 + 8);
    result = sub_1BE048C84();
    v23 = 0;
    do
    {
      v24 = v23 + ((v20 >> 1) - v23) / 2;
      if (__OFADD__(v23, ((v20 >> 1) - v23) / 2))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      result = sub_1BE049974();
      if (v24 < v23 || v24 >= (v20 >> 1))
      {
        goto LABEL_18;
      }

      v26 = v38;
      v27 = *(v38 + 16);
      v28 = v40;
      v29 = v42;
      v27(v40, v37 + *(v38 + 72) * v24, v42);
      sub_1BE049974();
      (*(v26 + 8))(v28, v29);
      LOBYTE(v28) = sub_1BE04AE84();
      v30 = *v21;
      v31 = v39;
      (*v21)(v12, v39);
      result = (v30)(v17, v31);
      if (v28)
      {
        v20 = 2 * v24;
      }

      else
      {
        v23 = v24 + 1;
      }
    }

    while (v23 != v20 >> 1);
    if (*(v35 + 16) >= v23)
    {
      v6 = v33;
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }

  else
  {
    v27 = *(v7 + 16);
    sub_1BE048C84();
    v23 = 0;
LABEL_16:
    v27(v6, v43, v42);
    sub_1BD1DA5E0(v23, v23, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD62A3FC(void **a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v56 - v11;
  v13 = sub_1BE049A94();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v60 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v61 = &v56 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v56 - v22;
  v59 = a1;
  v24 = *a1;
  v25 = v78;
  result = sub_1BD628424(v24, a2);
  if (!v25)
  {
    v70 = v23;
    v71 = result;
    if (v27)
    {
      return v24[2];
    }

    else
    {
      v28 = v71 + 1;
      if (!__OFADD__(v71, 1))
      {
        v56 = 0;
        v69 = v14 + 16;
        v75 = v5 + 16;
        v77 = a2 + 56;
        v78 = (v5 + 8);
        v63 = (v14 + 8);
        v58 = (v14 + 40);
        v29 = v70;
        v57 = v5;
        v79 = v12;
        v76 = v8;
        v68 = v13;
        v62 = v14;
        while (1)
        {
          v32 = v24[2];
          if (v28 == v32)
          {
            return v71;
          }

          if (v28 >= v32)
          {
            break;
          }

          v33 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v73 = v24;
          v74 = v28;
          v64 = v33;
          v34 = v24 + v33;
          v65 = *(v14 + 72);
          v35 = v65 * v28;
          v36 = *(v14 + 16);
          v72 = v35;
          v66 = v36;
          v67 = v34;
          v36(v29, &v34[v35], v13);
          sub_1BE049A14();
          if (*(a2 + 16) && (sub_1BD626BFC(&qword_1EBD3A360, MEMORY[0x1E69695A8]), v37 = sub_1BE052284(), v38 = -1 << *(a2 + 32), v39 = v37 & ~v38, ((*(v77 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
          {
            v40 = ~v38;
            v41 = *(v57 + 72);
            v42 = *(v57 + 16);
            while (1)
            {
              v43 = a2;
              v44 = v76;
              v42(v76, *(a2 + 48) + v41 * v39, v4);
              sub_1BD626BFC(&unk_1EBD36A30, MEMORY[0x1E69695A8]);
              v45 = sub_1BE052334();
              v46 = *v78;
              (*v78)(v44, v4);
              if (v45)
              {
                break;
              }

              v39 = (v39 + 1) & v40;
              a2 = v43;
              if (((*(v77 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v46(v79, v4);
            v29 = v70;
            v13 = v68;
            result = (*v63)(v70, v68);
            a2 = v43;
            v24 = v73;
            v30 = v74;
          }

          else
          {
LABEL_15:
            (*v78)(v79, v4);
            v29 = v70;
            v13 = v68;
            result = (*v63)(v70, v68);
            v47 = v71;
            v30 = v74;
            if (v71 == v74)
            {
              v24 = v73;
            }

            else
            {
              if ((v71 & 0x8000000000000000) != 0)
              {
                goto LABEL_31;
              }

              v48 = v73[2];
              if (v71 >= v48)
              {
                goto LABEL_32;
              }

              v49 = v66;
              v50 = v65 * v71;
              v51 = v67;
              result = (v66)(v61, &v67[v65 * v71], v13);
              if (v74 >= v48)
              {
                goto LABEL_33;
              }

              v49(v60, &v51[v72], v13);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v73 = sub_1BD4FFF40(v73);
              }

              v52 = v73 + v64;
              v53 = *v58;
              v54 = v73 + v64 + v50;
              v24 = v73;
              v13 = v68;
              result = (*v58)(v54, v60, v68);
              if (v74 >= v24[2])
              {
                goto LABEL_34;
              }

              result = v53(&v52[v72], v61, v13);
              v30 = v74;
              *v59 = v24;
              v29 = v70;
            }

            v31 = __OFADD__(v47, 1);
            v55 = v47 + 1;
            if (v31)
            {
              goto LABEL_30;
            }

            v71 = v55;
          }

          v31 = __OFADD__(v30, 1);
          v28 = v30 + 1;
          v14 = v62;
          if (v31)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1BD62A9C0()
{
  result = qword_1EBD4D838;
  if (!qword_1EBD4D838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D830);
    sub_1BD0F9F28();
    sub_1BD2737D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D838);
  }

  return result;
}

uint64_t sub_1BD62AA4C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions) = *(v0 + 24);
  sub_1BE048C84();
}

uint64_t sub_1BD62AAF8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__store) = *(v0 + 24);
  sub_1BE048964();
}

unint64_t sub_1BD62ABF0()
{
  result = qword_1EBD4D860;
  if (!qword_1EBD4D860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37228);
    sub_1BD62AC74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D860);
  }

  return result;
}

unint64_t sub_1BD62AC74()
{
  result = qword_1EBD4D868;
  if (!qword_1EBD4D868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D870);
    sub_1BD628A98();
    sub_1BD628B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D868);
  }

  return result;
}

unint64_t sub_1BD62AD24()
{
  result = qword_1EBD4D8A8;
  if (!qword_1EBD4D8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D8A0);
    sub_1BD62ADA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8A8);
  }

  return result;
}

unint64_t sub_1BD62ADA8()
{
  result = qword_1EBD4D8B0;
  if (!qword_1EBD4D8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D8B8);
    sub_1BD62AE40();
    sub_1BD0F92F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8B0);
  }

  return result;
}

unint64_t sub_1BD62AE40()
{
  result = qword_1EBD4D8C0;
  if (!qword_1EBD4D8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D8C8);
    sub_1BD0DE4F4(&qword_1EBD4D8D0, &qword_1EBD4D8D8);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8C0);
  }

  return result;
}

unint64_t sub_1BD62AF24()
{
  result = qword_1EBD4D8E0;
  if (!qword_1EBD4D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D898);
    sub_1BD0DE4F4(&qword_1EBD4D8E8, &qword_1EBD4D8F0);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8E0);
  }

  return result;
}

double sub_1BD62B010@<D0>(_OWORD *a1@<X8>)
{
  sub_1BD61C3A0(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

unint64_t sub_1BD62B094()
{
  result = qword_1EBD4D8F8;
  if (!qword_1EBD4D8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D898);
    sub_1BD62AF24();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0);
    sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD279F20();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D8F8);
  }

  return result;
}

uint64_t sub_1BD62B2E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD61C850(v2, v3, v0 + 32);
}

uint64_t objectdestroy_124Tm_0()
{

  return swift_deallocObject();
}

double sub_1BD62B450@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1BE049184() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD61B214(a1, v2 + v6, v7, a2);
}

unint64_t sub_1BD62B500()
{
  result = qword_1EBD4D940;
  if (!qword_1EBD4D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D940);
  }

  return result;
}

unint64_t sub_1BD62B558()
{
  result = qword_1EBD4D948;
  if (!qword_1EBD4D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D948);
  }

  return result;
}

uint64_t sub_1BD62B630()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB348);
  __swift_project_value_buffer(v9, qword_1EBDAB348);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD62B844(uint64_t a1)
{
  v1[52] = a1;
  sub_1BE04B0F4();
  v1[53] = swift_task_alloc();
  v2 = sub_1BE04A874();
  v1[54] = v2;
  v1[55] = *(v2 - 8);
  v1[56] = swift_task_alloc();
  sub_1BE0523D4();
  v1[57] = swift_task_alloc();
  sub_1BE0523B4();
  v1[58] = swift_task_alloc();
  sub_1BE04A884();
  v1[59] = swift_task_alloc();
  v3 = sub_1BE048654();
  v1[60] = v3;
  v1[61] = *(v3 - 8);
  v1[62] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[63] = v4;
  v1[64] = *(v4 - 8);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[67] = v5;
  v1[68] = *(v5 - 8);
  v1[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD62BAD4, 0, 0);
}

uint64_t sub_1BD62BAD4()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:GetDefaultCardIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[63];
  v11 = v0[64];

  (*(v11 + 16))(v9, v8, v10);
  sub_1BE04D024();
  swift_allocObject();
  v0[70] = sub_1BE04D014();
  (*(v11 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v0[71] = v12;
  if (v12)
  {
    v13 = v12;
    v14 = [v12 defaultPaymentPassIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() sharedInstance];
      v0[72] = v16;
      if (v16)
      {
        v17 = v16;
        v18 = [v16 passWithUniqueID_];
        v0[73] = v18;

        v15 = v17;
        if (v18)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
          v19 = swift_allocObject();
          v0[74] = v19;
          *(v19 + 16) = xmmword_1BE0B7020;
          *(v19 + 32) = v18;
          v20 = v18;
          v21 = swift_task_alloc();
          v0[75] = v21;
          *v21 = v0;
          v21[1] = sub_1BD62BEA4;

          return sub_1BD0391EC(v19, 1);
        }
      }

      v13 = v15;
    }
  }

  sub_1BE0484B4();
  sub_1BD1029F4();
  swift_allocError();
  sub_1BE048B24();
  swift_willThrow();
  sub_1BD62C430();

  v23 = v0[1];

  return v23();
}

uint64_t sub_1BD62BEA4(uint64_t a1)
{
  *(*v1 + 608) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD62BFC4, 0, 0);
}

uint64_t sub_1BD62BFC4()
{
  v1 = *(v0 + 608);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 80);
    *(v0 + 48) = *(v1 + 64);
    *(v0 + 64) = v4;
    *(v0 + 16) = v2;
    *(v0 + 32) = v3;
    sub_1BD0303B8(v0 + 16, v0 + 80);

    sub_1BE0487C4();
    if (*(v0 + 408))
    {
      v5 = *(v0 + 32);
      *(v0 + 272) = *(v0 + 16);
      *(v0 + 288) = v5;
      v6 = *(v0 + 64);
      *(v0 + 304) = *(v0 + 48);
      *(v0 + 320) = v6;
      sub_1BD0303B8(v0 + 16, v0 + 336);
      sub_1BE0523A4();
      sub_1BE052394();
      sub_1BE052374();

      sub_1BE052394();
      sub_1BE0523C4();
      if (qword_1EBD36CF8 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 568);
      v25 = *(v0 + 576);
      v29 = *(v0 + 584);
      v8 = *(v0 + 488);
      v7 = *(v0 + 496);
      v27 = *(v0 + 480);
      v9 = *(v0 + 448);
      v11 = *(v0 + 432);
      v10 = *(v0 + 440);
      v12 = __swift_project_value_buffer(v11, qword_1EBDAB400);
      (*(v10 + 16))(v9, v12, v11);
      sub_1BE04B0A4();
      sub_1BE04A894();
      sub_1BE048664();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D968);
      sub_1BD62C8F8();
      sub_1BE048744();

      sub_1BD030458(v0 + 16);
      (*(v8 + 8))(v7, v27);
      v13 = *(v0 + 288);
      *(v0 + 208) = *(v0 + 272);
      *(v0 + 224) = v13;
      v14 = *(v0 + 320);
      *(v0 + 240) = *(v0 + 304);
      *(v0 + 256) = v14;
      sub_1BD62C97C(v0 + 208);
      goto LABEL_11;
    }

    sub_1BD030458(v0 + 16);
  }

  else
  {
  }

  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 568);
  v26 = *(v0 + 576);
  v30 = *(v0 + 584);
  v16 = *(v0 + 488);
  v15 = *(v0 + 496);
  v28 = *(v0 + 480);
  v17 = *(v0 + 448);
  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  v20 = __swift_project_value_buffer(v19, qword_1EBDAB400);
  (*(v18 + 16))(v17, v20, v19);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE048664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D968);
  sub_1BD62C8F8();
  sub_1BE048744();

  (*(v16 + 8))(v15, v28);
LABEL_11:
  sub_1BD62C430();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1BD62C430()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "perform:GetDefaultCardIntent", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD62C71C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36CC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD62C7C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD62B844(a1);
}

uint64_t sub_1BD62C85C(uint64_t a1)
{
  v2 = sub_1BD15D29C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1BD62C8A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D958);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD62C8F8()
{
  result = qword_1EBD4D970;
  if (!qword_1EBD4D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D968);
    sub_1BD030618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D970);
  }

  return result;
}

uint64_t sub_1BD62C97C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProvisioningAvailableCredentialsProvider.__allocating_init(networks:capabilities:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) init];
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3 & 1;
  *(v6 + 41) = a3 & 1 | ((a2 & 0x80) == 0);
  return v6;
}

Swift::Void __swiftcall ProvisioningAvailableCredentialsProvider.preflightAvailableCredentials()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  if (*(v0 + 41) == 1 && !*(v0 + 48))
  {
    v5 = sub_1BE0528D4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1BE0528A4();
    sub_1BE048964();
    v6 = v0;
    v7 = sub_1BE052894();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    *(v6 + 48) = sub_1BD122C00(0, 0, v4, &unk_1BE0E9260, v8);
  }
}

uint64_t ProvisioningAvailableCredentialsProvider.availableCredentials()()
{
  v1[2] = v0;
  sub_1BE0528A4();
  v1[3] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD62CC4C, v3, v2);
}

uint64_t sub_1BD62CC4C()
{
  v1 = v0[2];
  if ((*(v1 + 41) & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v2 = *(v1 + 56);
  if (v2)
  {
    sub_1BE048C84();
LABEL_5:

    v3 = v0[1];

    return v3(v2);
  }

  v0[6] = sub_1BD62CF98();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1BD62CD70;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BD62CD70()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1BD62CE90, v3, v2);
}

uint64_t sub_1BD62CE90()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 56);
  if (v2)
  {
    sub_1BE048C84();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t ProvisioningAvailableCredentialsProvider.init(networks:capabilities:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) init];
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 16) = v7;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3 & 1;
  *(v3 + 41) = a3 & 1 | ((a2 & 0x80) == 0);
  return v3;
}

uint64_t sub_1BD62CF98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  if (*(v0 + 48))
  {
    v5 = *(v0 + 48);
  }

  else
  {
    v6 = sub_1BE0528D4();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1BE0528A4();
    sub_1BE048964();
    v7 = v0;
    v8 = sub_1BE052894();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    v5 = sub_1BD122C00(0, 0, v4, &unk_1BE0E9420, v9);
    *(v7 + 48) = v5;
    sub_1BE048964();
  }

  sub_1BE048964();
  return v5;
}

uint64_t sub_1BD62D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_1BE0528A4();
  v4[5] = sub_1BE052894();
  v6 = sub_1BE052844();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD62D188, v6, v5);
}

uint64_t sub_1BD62D188()
{
  v1 = sub_1BE052894();
  v0[8] = v1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1BD62D274;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x1E69E85E0];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, v1, v5, 0xD00000000000001ALL, 0x80000001BE131E10, sub_1BD62DC94, v4, v6);
}

uint64_t sub_1BD62D274()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BD62D3B8, v3, v2);
}

uint64_t sub_1BD62D3B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD62D418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD62D0EC(a1, v4, v5, v6);
}

void sub_1BD62D4CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = aBlock - v8;
  v10 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_1BD62DC9C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD62D8D8;
  aBlock[3] = &block_descriptor_142;
  v13 = _Block_copy(aBlock);
  sub_1BE048964();

  [v10 provisioningExtensionProductsWithCompletionHandler_];
  _Block_release(v13);
}

void sub_1BD62D690(unint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      v5 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
        break;
      }

      v23 = MEMORY[0x1E69E7CC0];
      sub_1BD532334(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return;
      }

      v20 = a2;
      v6 = 0;
      v5 = v23;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFB40900](v6, a1);
        }

        else
        {
          if (v6 >= *(v21 + 16))
          {
            goto LABEL_23;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = [v8 thumbnailCachedImageForSize:0 completion:{28.0, 28.0}];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v12 = sub_1BE052404();
          v11 = PKUIImageNamed(v12);

          if (!v11)
          {
            goto LABEL_27;
          }
        }

        v13 = v9;
        v14 = [v9 displayName];
        if (!v14)
        {
          goto LABEL_26;
        }

        v15 = v14;
        v22 = sub_1BE052434();
        v17 = v16;

        a2 = *(v23 + 16);
        v18 = *(v23 + 24);
        if (a2 >= v18 >> 1)
        {
          sub_1BD532334((v18 > 1), a2 + 1, 1);
        }

        *(v23 + 16) = a2 + 1;
        v19 = (v23 + 48 * a2);
        v19[4] = v22;
        v19[5] = v17;
        v19[6] = 0;
        v19[7] = 0;
        v19[8] = v11;
        v19[9] = v13;
        ++v6;
        if (v7 == i)
        {
          a2 = v20;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_21:
  *(a2 + 56) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980);
  sub_1BE052864();
}

uint64_t sub_1BD62D8D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_1BD0DB624();
    v2 = sub_1BE052744();
  }

  sub_1BE048964();
  v3(v2);
}

uint64_t ProvisioningAvailableCredentialsProvider.deinit()
{

  return v0;
}

uint64_t ProvisioningAvailableCredentialsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ProvisioningAvailableCredentialsProvider.AvailableCredentialType.hashValue.getter()
{
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](0);
  return sub_1BE053D64();
}

uint64_t ProvisioningAvailableCredentialsProvider.AvailableCredential.title.getter()
{
  v1 = *v0;
  sub_1BE048C84();
  return v1;
}

uint64_t ProvisioningAvailableCredentialsProvider.AvailableCredential.subtitle.getter()
{
  v1 = *(v0 + 16);
  sub_1BE048C84();
  return v1;
}

void ProvisioningAvailableCredentialsProvider.AvailableCredential.id.getter()
{
  v1 = [*(v0 + 40) configuration];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 productIdentifier];

    if (v3)
    {
      sub_1BE052434();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD62DB40(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + 40) configuration];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 productIdentifier];

    if (v5)
    {
      v6 = sub_1BE052434();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1BD62DBCC()
{
  result = qword_1EBD4D978;
  if (!qword_1EBD4D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D978);
  }

  return result;
}

void sub_1BD62DC9C(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D980);
  v3 = *(v1 + 16);

  sub_1BD62D690(a1, v3);
}

uint64_t sub_1BD62DD1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD0F985C;

  return sub_1BD62D0EC(a1, v4, v5, v6);
}

void sub_1BD62DDD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for PaymentOfferInstallmentSummaryView() + 32);
  v5 = *MEMORY[0x1E69BC950];
  v6 = sub_1BE04C744();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  *(a2 + 25) = *(a1 + 25);
  if (*(a1 + 40))
  {
    goto LABEL_17;
  }

  v8 = *a1;
  sub_1BD630C8C(a1, v58);
  v9 = [v8 dynamicContent];
  if (!v9 || (v10 = v9, v11 = [v9 dynamicContentPageForPageType_], v10, v12 = objc_msgSend(v11, sel_customLayout), v11, !v12))
  {
    sub_1BD630CC4(a1);

LABEL_17:
    v23 = 0;
    v17 = 0;
    i = 0;
    goto LABEL_18;
  }

  v55 = v8;
  v56 = v12;
  v13 = [v12 items];
  v57 = sub_1BD630CF4();
  v14 = sub_1BE052744();

  v15 = (v14 & 0xFFFFFFFFFFFFFF8);
  if (v14 >> 62)
  {
LABEL_75:
    v16 = sub_1BE053704();
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = &selRef_thumbnailWidth;
  while (1)
  {
    if (v16 == v17)
    {

LABEL_21:
      v25 = [v56 items];
      v26 = sub_1BE052744();

      i = sub_1BD9F736C(v26);
      sub_1BD630CC4(a1);

LABEL_22:
      v23 = 0;
      v17 = 0;
      goto LABEL_18;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1BFB40900](v17, v14);
    }

    else
    {
      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v19 = *(v14 + 8 * v17 + 32);
    }

    v20 = v19;
    v21 = [v19 type];

    if (v21 == 2)
    {
      break;
    }

    if (__OFADD__(v17++, 1))
    {
      goto LABEL_74;
    }
  }

  if (sub_1BE04A0E4() == v17)
  {
    goto LABEL_21;
  }

  v27 = [v56 items];
  i = sub_1BE052744();

  v28 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_77;
  }

  if (v28 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v15 = (i >> 62);
  if (i >> 62)
  {
LABEL_78:
    if (sub_1BE053704() < 0)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      return;
    }

    if (sub_1BE053704() >= v28)
    {
      goto LABEL_27;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10) < v28)
  {
    goto LABEL_80;
  }

LABEL_27:
  if ((i & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    if (v17 != -1)
    {
      v29 = 0;
      do
      {
        v30 = v29 + 1;
        sub_1BE053864();
        v29 = v30;
      }

      while (v17 + 1 != v30);
    }
  }

  else
  {
    sub_1BE048C84();
  }

  if (v15)
  {
    v32 = sub_1BE0539D4();
    v54 = v34;
    v31 = v35;
    v33 = v36;

    v15 = v56;
    v18 = v57;
    if ((v33 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v31 = 0;
    v32 = i & 0xFFFFFFFFFFFFFF8;
    v54 = (i & 0xFFFFFFFFFFFFFF8) + 32;
    v33 = (2 * v28) | 1;
    v18 = v57;
  }

  v15 = v31;
  i = sub_1BE053BB4();
  swift_unknownObjectRetain_n();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v38 + 16);

  if (__OFSUB__(v33 >> 1, v15))
  {
    __break(1u);
    goto LABEL_83;
  }

  if (v39 != (v33 >> 1) - v15)
  {
    goto LABEL_87;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v15 = v56;
  if (i)
  {
    goto LABEL_44;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v37)
  {
    swift_unknownObjectRelease();
LABEL_44:
    v40 = [v15 items];
    v41 = sub_1BE052744();

    if (v41 >> 62)
    {
LABEL_81:
      v42 = sub_1BE053704();
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28 >= v42)
    {
      sub_1BD630CC4(a1);

      goto LABEL_22;
    }

    v43 = [v15 items];
    v28 = sub_1BE052744();

    v33 = v28 >> 62;
    if (!(v28 >> 62))
    {
      break;
    }

LABEL_83:
    v53 = sub_1BE053704();
    if (v53 < v17)
    {
      goto LABEL_95;
    }

    v32 = v53;
    if (sub_1BE053704() < v17)
    {
      goto LABEL_96;
    }

    v15 = v56;
    v18 = v57;
    if (sub_1BE053704() >= v32)
    {
      goto LABEL_49;
    }

    __break(1u);
LABEL_87:
    swift_unknownObjectRelease_n();
    v31 = v15;
    v15 = v56;
LABEL_36:
    sub_1BD1DA320(v32, v54, v31, v33);
  }

  v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v32 < v17)
  {
    __break(1u);
    goto LABEL_89;
  }

LABEL_49:
  if ((v32 & 0x8000000000000000) != 0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if ((v28 & 0xC000000000000001) != 0 && v32 != v17)
  {
    if (v17 < v32)
    {
      sub_1BE048C84();
      v44 = v17;
      do
      {
        v45 = v44 + 1;
        sub_1BE053864();
        v44 = v45;
      }

      while (v32 != v45);
      goto LABEL_58;
    }

    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  sub_1BE048C84();
LABEL_58:

  if (v33)
  {
    v18 = sub_1BE0539D4();
    v33 = v46;
    v17 = v47;
    v32 = v48;
  }

  else
  {
    v18 = (v28 & 0xFFFFFFFFFFFFFF8);
    v33 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
    v32 = (2 * v32) | 1;
  }

  if (v32)
  {
    sub_1BE053BB4();
    swift_unknownObjectRetain_n();
    v50 = swift_dynamicCastClass();
    if (!v50)
    {
      swift_unknownObjectRelease();
      v50 = MEMORY[0x1E69E7CC0];
    }

    v51 = *(v50 + 16);

    if (__OFSUB__(v32 >> 1, v17))
    {
      goto LABEL_92;
    }

    if (v51 != (v32 >> 1) - v17)
    {
LABEL_93:
      swift_unknownObjectRelease_n();
      goto LABEL_62;
    }

    v17 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
LABEL_62:
    sub_1BD1DA320(v18, v33, v17, v32);
    v17 = v49;
  }

  sub_1BD630CC4(a1);

  swift_unknownObjectRelease();
  if ((v17 & 0x8000000000000000) == 0 && (v17 & 0x4000000000000000) == 0)
  {
    v52 = *(v17 + 16);
    goto LABEL_72;
  }

LABEL_90:
  v52 = sub_1BE053704();
LABEL_72:
  v23 = v52 > 0;
LABEL_18:
  *(a2 + 48) = i;
  *(a2 + 56) = v17;
  *(a2 + 41) = v23;
}

void sub_1BD62E514(uint64_t a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 40) & 1) == 0)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    sub_1BE048964();

    (*(v3 + 104))(v6, *MEMORY[0x1E69BC8E0], v2);
    v7(v6);

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BD62E63C(uint64_t a1)
{
  v2 = sub_1BE04C624();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1BE04C744();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  v12 = type metadata accessor for PaymentOfferInstallmentSummaryView();
  (*(v8 + 16))(v11, a1 + *(v12 + 32), v7);
  v15 = a1;
  (*(v3 + 104))(v6, *MEMORY[0x1E69BC908], v2);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9C0);
  sub_1BD63154C(&qword_1EBD3C5D8, MEMORY[0x1E69BC970]);
  sub_1BD631100();
  sub_1BD631354();
  return sub_1BE04C6D4();
}

uint64_t sub_1BD62E8B0()
{
  sub_1BE0512B4();

  return sub_1BE04C774();
}

uint64_t sub_1BD62E904@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA78);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v47 - v5;
  v7 = type metadata accessor for PaymentOfferInstallmentSummaryView();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA80);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v51 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA88);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9D8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v47 - v19;
  v21 = *v1;
  v55 = *(v1 + 8);
  v56 = v3;
  if (*(v1 + 40))
  {
    v54 = a1;
    v22 = *(v1 + 32);
    v52 = *(v1 + 24);
    v53 = v22;
    v51 = *(v1 + 16);
    v48 = v21;
    v23 = v21;
    v24 = sub_1BE04F7C4();
    v59 = 1;
    sub_1BD62F5AC(v23, &v70);
    v66 = v71[5];
    v67[0] = v71[6];
    *(v67 + 9) = *(&v71[6] + 9);
    v62 = v71[1];
    v63 = v71[2];
    v64 = v71[3];
    v65 = v71[4];
    v60 = v70;
    v61 = v71[0];
    v68[6] = v71[5];
    v69[0] = v71[6];
    *(v69 + 9) = *(&v71[6] + 9);
    v68[2] = v71[1];
    v68[3] = v71[2];
    v68[4] = v71[3];
    v68[5] = v71[4];
    v68[0] = v70;
    v68[1] = v71[0];
    sub_1BD0DE19C(&v60, v57, &qword_1EBD4DA90);
    sub_1BD0DE53C(v68, &qword_1EBD4DA90);
    *(&v58[5] + 7) = v65;
    *(&v58[6] + 7) = v66;
    *(&v58[7] + 7) = v67[0];
    v58[8] = *(v67 + 9);
    *(&v58[1] + 7) = v61;
    *(&v58[2] + 7) = v62;
    *(&v58[3] + 7) = v63;
    *(&v58[4] + 7) = v64;
    *(v58 + 7) = v60;
    v25 = v59;
    KeyPath = swift_getKeyPath();
    *(&v71[2] + 1) = v58[2];
    *(&v71[1] + 1) = v58[1];
    *(&v71[5] + 1) = v58[5];
    *(&v71[6] + 1) = v58[6];
    *(&v71[7] + 1) = v58[7];
    *(&v71[8] + 1) = v58[8];
    *(&v71[3] + 1) = v58[3];
    v70 = v24;
    LOBYTE(v71[0]) = v25;
    *(&v71[4] + 1) = v58[4];
    *(v71 + 1) = v58[0];
    *(&v71[9] + 1) = KeyPath;
    v72 = 0;
    v6[176] = 0;
    v27 = v71[8];
    *(v6 + 8) = v71[7];
    *(v6 + 9) = v27;
    v28 = v71[4];
    *(v6 + 4) = v71[3];
    *(v6 + 5) = v28;
    v29 = v71[6];
    *(v6 + 6) = v71[5];
    *(v6 + 7) = v29;
    v30 = v71[0];
    *v6 = v70;
    *(v6 + 1) = v30;
    v31 = v71[2];
    *(v6 + 2) = v71[1];
    *(v6 + 3) = v31;
    *(v6 + 10) = v71[9];
    swift_storeEnumTagMultiPayload();
    v32 = &qword_1EBD4D9F8;
    sub_1BD0DE19C(&v70, v57, &qword_1EBD4D9F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9F8);
    sub_1BD63118C();
    sub_1BD631270();
    sub_1BE04F9A4();
    sub_1BD630FA8(v48, v55, v51, v52, v53, 1);
    v33 = &v70;
  }

  else
  {
    v49 = v17;
    v48 = v21;
    v34 = v55;
    *v20 = sub_1BE04F7C4();
    *(v20 + 1) = 0;
    v20[16] = 1;
    v35 = *(v1 + 48);
    v55 = v34;
    if (v35)
    {
      v36 = [v34 updatedSelectedOfferContents];
      v54 = a1;
      v37 = v36;
      *&v70 = v35;
      v47 = swift_getKeyPath();
      sub_1BD630F44(v1, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v38 = (*(v50 + 80) + 17) & ~*(v50 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      sub_1BD631008(&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA50);
      sub_1BD0DE4F4(&qword_1EBD4DA58, &qword_1EBD4D9A0);
      sub_1BD63154C(&qword_1EBD390D0, sub_1BD630CF4);
      sub_1BD631594();
      v40 = v51;
      sub_1BE0519C4();
      v42 = v52;
      v41 = v53;
      (*(v52 + 32))(v16, v40, v53);
      (*(v42 + 56))(v16, 0, 1, v41);
    }

    else
    {
      (*(v52 + 56))(v16, 1, 1, v53);
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA98);
    sub_1BD0DE204(v16, &v20[*(v43 + 44)], &qword_1EBD4DA88);
    v44 = swift_getKeyPath();
    v45 = &v20[*(v49 + 36)];
    *v45 = v44;
    v45[8] = 0;
    v32 = &qword_1EBD4D9D8;
    sub_1BD0DE19C(v20, v6, &qword_1EBD4D9D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9F8);
    sub_1BD63118C();
    sub_1BD631270();
    sub_1BE04F9A4();

    v33 = v20;
  }

  return sub_1BD0DE53C(v33, v32);
}

uint64_t sub_1BD62F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 41) == 1)
  {
    sub_1BD62F0F8(a2);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_1BD62F0F8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA40);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v29 - v5;
  v7 = type metadata accessor for PaymentOfferInstallmentSummaryView();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA28);
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA18);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v29 - v16;
  if (*(v1 + 40))
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD6313E0();
    return sub_1BE04F9A4();
  }

  else
  {
    v31 = v14;
    v32 = v3;
    v33 = a1;
    v19 = *(v1 + 8);
    v20 = *v1;
    v21 = v19;

    v22 = *(v1 + 56);
    if (v22)
    {
      *v13 = sub_1BE04F7C4();
      *(v13 + 1) = 0;
      v13[16] = 1;
      v29[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA48) + 44);
      v23 = [v21 updatedSelectedOfferContents];
      v30 = v21;
      v24 = v23;
      v36 = v22;
      v29[1] = swift_getKeyPath();
      sub_1BD630F44(v1, v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = (*(v34 + 80) + 17) & ~*(v34 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      sub_1BD631008(v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA50);
      sub_1BD0DE4F4(&qword_1EBD4DA58, &qword_1EBD4D9A0);
      sub_1BD63154C(&qword_1EBD390D0, sub_1BD630CF4);
      sub_1BD631594();
      v21 = v30;
      sub_1BE0519C4();
      KeyPath = swift_getKeyPath();
      v28 = &v13[*(v10 + 36)];
      *v28 = KeyPath;
      v28[8] = 0;
      sub_1BD0DE204(v13, v17, &qword_1EBD4DA28);
      (*(v35 + 56))(v17, 0, 1, v10);
    }

    else
    {
      (*(v35 + 56))(v17, 1, 1, v10);
    }

    sub_1BD0DE19C(v17, v6, &qword_1EBD4DA18);
    swift_storeEnumTagMultiPayload();
    sub_1BD6313E0();
    sub_1BE04F9A4();

    return sub_1BD0DE53C(v17, &qword_1EBD4DA18);
  }
}

id sub_1BD62F5AC@<X0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = v82 - v12;
  v14 = [a1 programName];
  v86 = a2;
  v87 = v8;
  v88 = v5;
  v89 = v4;
  if (v14 || (v14 = [a1 localizedTitleOverride]) != 0)
  {
    v15 = v14;
    v16 = sub_1BE052434();
    v18 = v17;
  }

  else
  {
    (*(v5 + 104))(v13, *MEMORY[0x1E69B8068], v4);
    result = PKPassKitBundle();
    if (!result)
    {
      goto LABEL_9;
    }

    v80 = result;
    v16 = sub_1BE04B6F4();
    v18 = v81;

    (*(v5 + 8))(v13, v4);
  }

  v91 = sub_1BE051494();
  sub_1BE050414();
  v122 = v16;
  v123 = v18;
  v82[1] = sub_1BD0DDEBC();
  v19 = sub_1BE0506C4();
  v21 = v20;
  v23 = v22;
  v24 = sub_1BE050564();
  v26 = v25;
  v28 = v27;
  sub_1BD0DDF10(v19, v21, v23 & 1);

  v29 = sub_1BE0505F4();
  v31 = v30;
  v33 = v32;
  sub_1BD0DDF10(v24, v26, v28 & 1);

  v34 = sub_1BE0505E4();
  v84 = v35;
  v85 = v34;
  v37 = v36;
  v92 = v38;

  sub_1BD0DDF10(v29, v31, v33 & 1);

  KeyPath = swift_getKeyPath();
  v91 = swift_getKeyPath();
  v90 = v37 & 1;
  LOBYTE(v122) = v37 & 1;
  LOBYTE(v112[0]) = 1;
  v40 = v87;
  v39 = v88;
  v41 = v89;
  (*(v88 + 104))(v87, *MEMORY[0x1E69B8078], v89);
  result = PKPassKitBundle();
  if (result)
  {
    v43 = result;
    v44 = sub_1BE04B6F4();
    v46 = v45;

    (*(v39 + 8))(v40, v41);
    v88 = sub_1BE051464();
    sub_1BE050324();
    v122 = v44;
    v123 = v46;
    v47 = sub_1BE0506C4();
    v49 = v48;
    v51 = v50;
    v52 = sub_1BE050564();
    v54 = v53;
    v56 = v55;
    sub_1BD0DDF10(v47, v49, v51 & 1);

    v57 = sub_1BE0505F4();
    v59 = v58;
    v61 = v60;
    sub_1BD0DDF10(v52, v54, v56 & 1);

    v62 = sub_1BE0505E4();
    v64 = v63;
    LOBYTE(v52) = v65;
    v89 = v66;

    sub_1BD0DDF10(v57, v59, v61 & 1);

    v67 = swift_getKeyPath();
    v68 = swift_getKeyPath();
    LOBYTE(v122) = v52 & 1;
    v70 = v84;
    v69 = v85;
    *&v100 = v85;
    *(&v100 + 1) = v84;
    LOBYTE(v101) = v90;
    *(&v101 + 1) = v134[0];
    DWORD1(v101) = *(v134 + 3);
    v71 = KeyPath;
    *(&v101 + 1) = v92;
    *&v102 = KeyPath;
    BYTE8(v102) = 0;
    HIDWORD(v102) = *&v133[3];
    *(&v102 + 9) = *v133;
    v103 = v91;
    v104 = 0;
    v105 = 1;
    LOBYTE(v97[0]) = 1;
    v95 = v102;
    v96 = v91;
    v93 = v100;
    v94 = v101;
    *&v106 = v62;
    *(&v106 + 1) = v64;
    LOBYTE(v107) = v52 & 1;
    DWORD1(v107) = *&v99[3];
    *(&v107 + 1) = *v99;
    v72 = v89;
    *(&v107 + 1) = v89;
    *&v108 = v67;
    BYTE8(v108) = 0;
    HIDWORD(v108) = *&v98[3];
    *(&v108 + 9) = *v98;
    v109 = v68;
    v110 = 0;
    v111 = 1;
    *(v97 + 8) = v106;
    BYTE8(v97[4]) = 1;
    *(&v97[3] + 8) = v68;
    *(&v97[2] + 8) = v108;
    *(&v97[1] + 8) = v107;
    v73 = v100;
    v74 = v101;
    v75 = v91;
    v76 = v86;
    v86[2] = v102;
    v76[3] = v75;
    *v76 = v73;
    v76[1] = v74;
    v77 = v97[0];
    v78 = v97[1];
    *(v76 + 121) = *(&v97[3] + 9);
    v79 = v97[3];
    v76[6] = v97[2];
    v76[7] = v79;
    v76[4] = v77;
    v76[5] = v78;
    v112[0] = v62;
    v112[1] = v64;
    v113 = v52 & 1;
    *v114 = *v99;
    *&v114[3] = *&v99[3];
    v115 = v72;
    v116 = v67;
    v117 = 0;
    *v118 = *v98;
    *&v118[3] = *&v98[3];
    v119 = v68;
    v120 = 0;
    v121 = 1;
    sub_1BD0DE19C(&v100, &v122, &qword_1EBD39160);
    sub_1BD0DE19C(&v106, &v122, &qword_1EBD39160);
    sub_1BD0DE53C(v112, &qword_1EBD39160);
    v122 = v69;
    v123 = v70;
    v124 = v90;
    *v125 = v134[0];
    *&v125[3] = *(v134 + 3);
    v126 = v92;
    v127 = v71;
    v128 = 0;
    *v129 = *v133;
    *&v129[3] = *&v133[3];
    v130 = v91;
    v131 = 0;
    v132 = 1;
    return sub_1BD0DE53C(&v122, &qword_1EBD39160);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

double sub_1BD62FC5C@<D0>(id *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 type];
  if (!v6)
  {
    LOBYTE(v73[0]) = 0;
    goto LABEL_8;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      sub_1BD6316F8(&v39);
      v73[8] = v47;
      v73[9] = v48;
      *v74 = v49;
      *&v74[16] = v50;
      v73[4] = v43;
      v73[5] = v44;
      v73[6] = v45;
      v73[7] = v46;
      v73[0] = v39;
      v73[1] = v40;
      v73[2] = v41;
      v73[3] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110);
      sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110);
      sub_1BE04F9A4();
      v70 = v22;
      v71 = v23;
      *v72 = v24;
      *&v72[16] = v25;
      v66 = v18;
      v67 = v19;
      v68 = v20;
      v69 = v21;
      v62 = v14;
      v63 = v15;
      v64 = v16;
      v65 = v17;
      sub_1BD6316F0(&v62);
      v59 = v70;
      v60 = v71;
      v61[0] = *v72;
LABEL_9:
      *(v61 + 15) = *&v72[15];
      v55 = v66;
      v56 = v67;
      v57 = v68;
      v58 = v69;
      v51 = v62;
      v52 = v63;
      v53 = v64;
      v54 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
      sub_1BD631620();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      goto LABEL_10;
    }

    LOBYTE(v73[0]) = 1;
LABEL_8:
    sub_1BE04F9A4();
    sub_1BD6316D8(&v62);
    v59 = v70;
    v60 = v71;
    v61[0] = *v72;
    goto LABEL_9;
  }

  v13 = sub_1BE04F504();
  LOBYTE(v51) = 1;
  sub_1BD6302B8(v5, a2 & 1, v73);
  v32 = v73[6];
  v33 = v73[7];
  *v34 = v73[8];
  *&v34[9] = *(&v73[8] + 9);
  v28 = v73[2];
  v29 = v73[3];
  v30 = v73[4];
  v31 = v73[5];
  v26 = v73[0];
  v27 = v73[1];
  v35[6] = v73[6];
  v35[7] = v73[7];
  v36[0] = v73[8];
  *(v36 + 9) = *(&v73[8] + 9);
  v35[2] = v73[2];
  v35[3] = v73[3];
  v35[4] = v73[4];
  v35[5] = v73[5];
  v35[0] = v73[0];
  v35[1] = v73[1];
  sub_1BD0DE19C(&v26, &v62, &qword_1EBD39140);
  sub_1BD0DE53C(v35, &qword_1EBD39140);
  *(&v73[3] + 7) = v29;
  *(&v73[2] + 7) = v28;
  *(&v73[6] + 7) = v32;
  *(&v73[7] + 7) = v33;
  *(&v73[8] + 7) = *v34;
  v73[9] = *&v34[9];
  *(&v73[4] + 7) = v30;
  *(&v73[5] + 7) = v31;
  *(v73 + 7) = v26;
  *(&v73[1] + 7) = v27;
  v37[0] = v13;
  v37[1] = 0;
  v38[0] = v51;
  *&v38[113] = v73[7];
  *&v38[97] = v73[6];
  *&v38[129] = v73[8];
  *&v38[145] = *&v34[9];
  *&v38[33] = v73[2];
  *&v38[49] = v73[3];
  *&v38[65] = v73[4];
  *&v38[81] = v73[5];
  *&v38[1] = v73[0];
  *&v38[17] = v73[1];
  v47 = *&v38[112];
  v48 = *&v38[128];
  v49 = *&v38[144];
  LOBYTE(v50) = v34[24];
  v43 = *&v38[48];
  v44 = *&v38[64];
  v45 = *&v38[80];
  v46 = *&v38[96];
  v39 = v13;
  v40 = *v38;
  v41 = *&v38[16];
  v42 = *&v38[32];
  sub_1BD6316E4(&v39);
  v73[8] = v47;
  v73[9] = v48;
  *v74 = v49;
  *&v74[16] = v50;
  v73[4] = v43;
  v73[5] = v44;
  v73[6] = v45;
  v73[7] = v46;
  v73[0] = v39;
  v73[1] = v40;
  v73[2] = v41;
  v73[3] = v42;
  sub_1BD0DE19C(v37, &v62, &qword_1EBD39110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110);
  sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110);
  sub_1BE04F9A4();
  v70 = v22;
  v71 = v23;
  *v72 = v24;
  *&v72[16] = v25;
  v66 = v18;
  v67 = v19;
  v68 = v20;
  v69 = v21;
  v62 = v14;
  v63 = v15;
  v64 = v16;
  v65 = v17;
  sub_1BD6316F0(&v62);
  v73[8] = v70;
  v73[9] = v71;
  *v74 = *v72;
  *&v74[15] = *&v72[15];
  v73[4] = v66;
  v73[5] = v67;
  v73[6] = v68;
  v73[7] = v69;
  v73[0] = v62;
  v73[1] = v63;
  v73[2] = v64;
  v73[3] = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120);
  sub_1BD631620();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v37, &qword_1EBD39110);
  v73[8] = v59;
  v73[9] = v60;
  *v74 = v61[0];
  *&v74[15] = *(v61 + 15);
  v73[4] = v55;
  v73[5] = v56;
  v73[6] = v57;
  v73[7] = v58;
  v73[0] = v51;
  v73[1] = v52;
  v73[2] = v53;
  v73[3] = v54;
LABEL_10:
  v7 = v73[9];
  *(a3 + 128) = v73[8];
  *(a3 + 144) = v7;
  *(a3 + 160) = *v74;
  *(a3 + 175) = *&v74[15];
  v8 = v73[5];
  *(a3 + 64) = v73[4];
  *(a3 + 80) = v8;
  v9 = v73[7];
  *(a3 + 96) = v73[6];
  *(a3 + 112) = v9;
  v10 = v73[1];
  *a3 = v73[0];
  *(a3 + 16) = v10;
  result = *&v73[2];
  v12 = v73[3];
  *(a3 + 32) = v73[2];
  *(a3 + 48) = v12;
  return result;
}

uint64_t sub_1BD6302B8@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = [a1 leadingText];
  v6 = [a1 trailingText];
  v90 = v6;
  v91 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v7 text];
    v9 = sub_1BE052434();
    v11 = v10;

    if (a2)
    {
      v12 = [v7 altText];
      if (v12)
      {
        v13 = v12;
        v9 = sub_1BE052434();
        v15 = v14;

        v11 = v15;
      }
    }

    sub_1BE051464();
    v16 = [v7 textColor];
    if (v16 == 3)
    {
      sub_1BE0511D4();
    }

    else if (v16 == 2)
    {
      sub_1BE051494();
    }

    else
    {
      if (v16 != 1)
      {
        goto LABEL_14;
      }

      sub_1BE051464();
    }

LABEL_14:
    sub_1BD47C8E4();
    [v7 isBold];
    v117 = v9;
    v118 = v11;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v22 = v21;
    v24 = v23;
    v25 = sub_1BE050564();
    v27 = v26;
    v29 = v28;
    sub_1BD0DDF10(v20, v22, v24 & 1);

    v30 = sub_1BE0505F4();
    v32 = v31;
    v34 = v33;
    sub_1BD0DDF10(v25, v27, v29 & 1);

    v35 = sub_1BE0505E4();
    v96 = v36;
    v97 = v35;
    v38 = v37;
    v95 = v39;

    sub_1BD0DDF10(v30, v32, v34 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v117) = v38 & 1;
    v98 = 1;
    LOBYTE(v111) = 1;
    v92 = v38 & 1;
    v93 = swift_getKeyPath();
    v17 = v90;
    if (v90)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v17 = v6;
  v96 = 0;
  v97 = 0;
  v93 = 0;
  KeyPath = 0;
  v98 = 0;
  v92 = 0;
  v95 = 1;
  if (v6)
  {
LABEL_15:
    v78 = v5 != 0;
    v40 = v17;
    v41 = [v40 text];
    v42 = sub_1BE052434();
    v44 = v43;

    if (a2)
    {
      v45 = [v40 altText];
      if (v45)
      {
        v46 = v45;
        v42 = sub_1BE052434();
        v48 = v47;

        v44 = v48;
      }
    }

    sub_1BE051464();
    v49 = [v40 textColor];
    if (v49 == 3)
    {
      sub_1BE0511D4();
    }

    else if (v49 == 2)
    {
      sub_1BE051494();
    }

    else
    {
      if (v49 != 1)
      {
LABEL_25:
        v88 = v5 == 0;
        sub_1BD47C8E4();
        [v40 isBold];
        v117 = v42;
        v118 = v44;
        sub_1BD0DDEBC();
        v50 = sub_1BE0506C4();
        v52 = v51;
        v54 = v53;
        v55 = sub_1BE050564();
        v57 = v56;
        v86 = v40;
        v59 = v58;
        sub_1BD0DDF10(v50, v52, v54 & 1);

        v60 = sub_1BE0505F4();
        v62 = v61;
        v64 = v63;
        sub_1BD0DDF10(v55, v57, v59 & 1);

        v65 = sub_1BE0505E4();
        v67 = v66;
        LOBYTE(v55) = v68;
        v70 = v69;

        sub_1BD0DDF10(v60, v62, v64 & 1);

        v71 = swift_getKeyPath();
        v72 = swift_getKeyPath();
        v73 = v55 & 1;
        LOBYTE(v117) = v55 & 1;
        LOBYTE(v128[0]) = v88;
        *&v111 = v65;
        *(&v111 + 1) = v67;
        LOBYTE(v112) = v55 & 1;
        *(&v112 + 1) = *v100;
        DWORD1(v112) = *&v100[3];
        *(&v112 + 1) = v70;
        *&v113 = v71;
        v74 = v70;
        BYTE8(v113) = 0;
        HIDWORD(v113) = *&v99[3];
        *(&v113 + 9) = *v99;
        v114 = v72;
        LOBYTE(v115) = 1;
        sub_1BD0DE19C(&v111, &v117, &qword_1EBD39160);

        v85 = *(&v111 + 1);
        v87 = v111;
        v19 = *(&v112 + 1);
        v83 = v113;
        v84 = v112;
        v81 = v114;
        v82 = *(&v113 + 1);
        v80 = *(&v114 + 1);
        v79 = v115;
        v75 = LOBYTE(v128[0]);
        v117 = v65;
        v118 = v67;
        LOBYTE(v119) = v73;
        *(&v119 + 1) = *v100;
        HIDWORD(v119) = *&v100[3];
        v120 = v74;
        v121 = v71;
        LOBYTE(v122) = 0;
        *(&v122 + 1) = *v99;
        HIDWORD(v122) = *&v99[3];
        v123 = v72;
        v124 = 0;
        LOBYTE(v125) = 1;
        sub_1BD0DE53C(&v117, &qword_1EBD39160);
        v18 = v78 | (v75 << 8);
        v17 = v90;
        goto LABEL_26;
      }

      sub_1BE051464();
    }

    goto LABEL_25;
  }

LABEL_10:
  v85 = 0;
  v87 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v79 = 0;
  v18 = 0;
  v19 = 1;
LABEL_26:
  v77 = v18;
  *&v104 = v97;
  *(&v104 + 1) = v96;
  *&v105 = v92;
  *(&v105 + 1) = v95;
  v106 = KeyPath;
  v107 = 0;
  v108 = v93;
  v109 = 0;
  v110 = v98;
  v103[0] = v98;
  v101 = v104;
  v102 = v105;
  *&v111 = 0;
  *(&v111 + 1) = v18;
  *&v112 = v87;
  *(&v112 + 1) = v85;
  *&v113 = v84;
  *(&v113 + 1) = v19;
  *&v114 = v83;
  *(&v114 + 1) = v82;
  *&v115 = v81;
  *(&v115 + 1) = v80;
  v116 = v79;
  sub_1BD0DE19C(&v104, &v117, &qword_1EBD39150);
  sub_1BD0DE19C(&v111, &v117, &qword_1EBD39158);

  *&v103[8] = v111;
  *&v103[24] = v112;
  *&v103[40] = v113;
  *&v103[56] = v114;
  *&v103[72] = v115;
  v103[88] = v116;
  a3[2] = KeyPath;
  a3[3] = v93;
  *a3 = v101;
  a3[1] = v102;
  a3[4] = *v103;
  a3[5] = *&v103[16];
  *(a3 + 137) = *&v103[73];
  a3[7] = *&v103[48];
  a3[8] = *&v103[64];
  a3[6] = *&v103[32];
  v117 = 0;
  v118 = v77;
  v119 = v87;
  v120 = v85;
  v121 = v84;
  v122 = v19;
  v123 = v83;
  v124 = v82;
  v125 = v81;
  v126 = v80;
  v127 = v79;
  sub_1BD0DE53C(&v117, &qword_1EBD39158);
  v128[0] = v97;
  v128[1] = v96;
  v128[2] = v92;
  v128[3] = v95;
  v128[4] = KeyPath;
  v128[5] = 0;
  v128[6] = v93;
  v128[7] = 0;
  v129 = v98;
  return sub_1BD0DE53C(v128, &qword_1EBD39150);
}

uint64_t sub_1BD630A88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  sub_1BD630F44(v2, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD631008(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D9A8);
  sub_1BD0DE4F4(&qword_1EBD4D9B0, &qword_1EBD4D9A8);
  return sub_1BE051704();
}

void sub_1BD630BF0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BE131EA0;
  v3 = 0x74636574656C6573;
  if (*(v1 + 40))
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xEF726566664F6465;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t type metadata accessor for PaymentOfferInstallmentSummaryView()
{
  result = qword_1EBD4D988;
  if (!qword_1EBD4D988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD630CF4()
{
  result = qword_1EBD390A8;
  if (!qword_1EBD390A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD390A8);
  }

  return result;
}

uint64_t sub_1BD630D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BD630D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

void sub_1BD630E28()
{
  sub_1BD630EC4();
  if (v0 <= 0x3F)
  {
    sub_1BE04C744();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD630EC4()
{
  if (!qword_1EBD4D998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9A0);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D998);
    }
  }
}

uint64_t sub_1BD630F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSummaryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD630FA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

uint64_t sub_1BD631008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentSummaryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD63106C()
{
  v1 = *(type metadata accessor for PaymentOfferInstallmentSummaryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD62E514(v2);
}

unint64_t sub_1BD631100()
{
  result = qword_1EBD4D9C8;
  if (!qword_1EBD4D9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9B8);
    sub_1BD63118C();
    sub_1BD631270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D9C8);
  }

  return result;
}

unint64_t sub_1BD63118C()
{
  result = qword_1EBD4D9D0;
  if (!qword_1EBD4D9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9D8);
    sub_1BD0DE4F4(&qword_1EBD4D9E0, &qword_1EBD4D9E8);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D9D0);
  }

  return result;
}

unint64_t sub_1BD631270()
{
  result = qword_1EBD4D9F0;
  if (!qword_1EBD4D9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9F8);
    sub_1BD0DE4F4(&qword_1EBD4DA00, &qword_1EBD3A420);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D9F0);
  }

  return result;
}

unint64_t sub_1BD631354()
{
  result = qword_1EBD4DA08;
  if (!qword_1EBD4DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D9C0);
    sub_1BD6313E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA08);
  }

  return result;
}

unint64_t sub_1BD6313E0()
{
  result = qword_1EBD4DA10;
  if (!qword_1EBD4DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA18);
    sub_1BD631464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA10);
  }

  return result;
}

unint64_t sub_1BD631464()
{
  result = qword_1EBD4DA20;
  if (!qword_1EBD4DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA28);
    sub_1BD0DE4F4(&qword_1EBD4DA30, &qword_1EBD4DA38);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA20);
  }

  return result;
}

uint64_t sub_1BD63154C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD631594()
{
  result = qword_1EBD4DA60;
  if (!qword_1EBD4DA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA50);
    sub_1BD631620();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA60);
  }

  return result;
}

unint64_t sub_1BD631620()
{
  result = qword_1EBD4DA68;
  if (!qword_1EBD4DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DA70);
    sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DA68);
  }

  return result;
}

uint64_t objectdestroy_9Tm_1()
{
  v1 = (type metadata accessor for PaymentOfferInstallmentSummaryView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 17) & ~*(*v1 + 80));
  sub_1BD630FA8(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));

  v3 = v1[10];
  v4 = sub_1BE04C744();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

double sub_1BD631804@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PaymentOfferInstallmentSummaryView();
  v5 = *(v2 + 16);

  return sub_1BD62FC5C(a1, v5, a2);
}

uint64_t static FlightWidgetPreflightContent.createContent(viewModel:context:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE0524C4();
  v4 = v3;
  result = sub_1BE0524C4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

unint64_t sub_1BD6318FC()
{
  result = qword_1EBD4DAB0;
  if (!qword_1EBD4DAB0)
  {
    type metadata accessor for FlightWidgetPreflightView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DAB0);
  }

  return result;
}

uint64_t sub_1BD631954@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE0524C4();
  v4 = v3;
  result = sub_1BE0524C4();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  a1[3] = v6;
  return result;
}

void *sub_1BD6319D0()
{
  v1 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BD631A1C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (!v6)
  {
    if (!a1)
    {
      return;
    }

    v5 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_1BD0E5E8C(0, &qword_1EBD43B00), v7 = a1, v8 = v6, v9 = sub_1BE053074(), v8, (v9 & 1) == 0))
  {
LABEL_7:
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))(v5);
    if (*(v2 + v4))
    {
      sub_1BD6323D4();
      v10 = [v2 view];
      if (!v10)
      {
        __break(1u);
        return;
      }

      v11 = v10;
      [v10 setNeedsLayout];
    }

    v8 = a1;
    goto LABEL_11;
  }

LABEL_11:
}

void (*sub_1BD631B6C(uint64_t *a1))(id a1, char a2)
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
  v5 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1BD631C08;
}

void sub_1BD631C08(id a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v7)
    {
      if (v3)
      {
        sub_1BD0E5E8C(0, &qword_1EBD43B00);
        v8 = v3;
        v9 = v7;
        v10 = sub_1BE053074();

        if (v10)
        {

LABEL_16:
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (!v3)
      {
LABEL_17:
        v11 = *v4;
        goto LABEL_24;
      }

      a1 = v3;
    }

    v14 = v2[4];
    v15 = v2[5];
    (*((*MEMORY[0x1E69E7D40] & *v14) + 0x278))(a1);
    if (!*(v14 + v15))
    {
LABEL_15:

      v8 = v3;
      goto LABEL_16;
    }

    v16 = v2[4];
    sub_1BD6323D4();
    v17 = [v16 view];
    if (v17)
    {
      v18 = v17;
      [v17 setNeedsLayout];

      goto LABEL_15;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v3)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43B00);
      v11 = v3;
      v12 = v7;
      v13 = sub_1BE053074();

      if (v13)
      {

LABEL_24:
        goto LABEL_25;
      }
    }

LABEL_20:
    v19 = v2[4];
    v20 = v2[5];
    (*((*MEMORY[0x1E69E7D40] & *v19) + 0x278))(a1);
    if (*(v19 + v20))
    {
      v21 = v2[4];
      sub_1BD6323D4();
      v22 = [v21 view];
      if (!v22)
      {
        goto LABEL_29;
      }

      v23 = v22;
      [v22 setNeedsLayout];
    }

    v11 = v3;
    goto LABEL_24;
  }

  if (v3)
  {
    a1 = v3;
    goto LABEL_20;
  }

LABEL_25:

  free(v2);
}

uint64_t sub_1BD631E4C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BD631E90(char a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BD631F40()
{
  v1 = sub_1BE04B0F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  sub_1BE04AFF4();
  v9 = sub_1BE04B044();
  (*(v2 + 8))(v5, v1);
  v10 = [v8 minimalFormattedStringValueInLocale_];

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1BE052434();

  return v11;
}

double sub_1BD6320A8()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize;
  swift_beginAccess();
  return *v1;
}

void (*sub_1BD63211C(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BD6321A4;
}

uint64_t sub_1BD6321D8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1BD632240(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(uint64_t, double, double))
{
  v10 = a3 & 1;
  v11 = v5 + *a4;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = v10;
  if ((a3 & 1) == 0)
  {
    return a5(result, *&a1, *&a2);
  }

  return result;
}

void (*sub_1BD6322C8(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BD632350;
}

void sub_1BD632368(void **a1, char a2, void (*a3)(uint64_t, double, double))
{
  v5 = *a1;
  v6 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = v5[3] + v5[4];
    if ((*(v7 + 16) & 1) == 0)
    {
      a3(v6, *v7, *(v7 + 8));
    }
  }

  free(v5);
}

id sub_1BD6323D4()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v76 - v9;
  v11 = sub_1BE04B0F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v17 = *&v1[v16];
  if (!v17 || (v18 = v17, sub_1BE04AFF4(), v19 = sub_1BE04B044(), *&v78 = v6, v20 = v1, v21 = v10, v22 = v3, v23 = v2, v24 = v19, (*(v12 + 8))(v15, v11), v25 = [v18 minimalFormattedStringValueInLocale_], v18, v24, v2 = v23, v3 = v22, v26 = v21, v27 = v20, v6 = v78, !v25))
  {
    sub_1BE04D094();
    v65 = sub_1BE04D204();
    v66 = sub_1BE052C34();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1BD026000, v65, v66, "NearbyPeerPayment/VFX: no amount present when updating character bounds for vfx", v67, 2u);
      MEMORY[0x1BFB45F20](v67, -1, -1);
    }

    v68 = *(v3 + 8);
    v69 = v6;
    return v68(v69, v2);
  }

  v28 = sub_1BE052434();
  v30 = v29;

  static NearbyPeerPaymentVFXUtilities.updateCharacterPlacement(formattedAmount:)(v28, v30, v81);
  v84 = v81[2];
  v85 = v81[3];
  v86 = v81[4];
  v87 = v81[5];
  v82 = v81[0];
  v83 = v81[1];
  if (!*&v81[0])
  {
    sub_1BE04D094();
    sub_1BE048C84();
    v70 = sub_1BE04D204();
    v71 = sub_1BE052C34();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v2;
      v74 = swift_slowAlloc();
      v80[0] = v74;
      *v72 = 136315138;
      v75 = sub_1BD123690(v28, v30, v80);

      *(v72 + 4) = v75;
      _os_log_impl(&dword_1BD026000, v70, v71, "NearbyPeerPayment/VFX: failed to update character placement for formattedAmount: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1BFB45F20](v74, -1, -1);
      MEMORY[0x1BFB45F20](v72, -1, -1);

      return (*(v3 + 8))(v26, v73);
    }

    v68 = *(v3 + 8);
    v69 = v26;
    return v68(v69, v2);
  }

  v31 = *(&v82 + 1);
  v33 = v83;
  v32 = *&v84;
  v34 = v87;
  sub_1BD0DE19C(&v82, v80, &qword_1EBD4DC38);

  v88.origin.x = v31;
  *&v88.origin.y = v33;
  v88.size.height = v32;
  *&v35 = CGRectGetWidth(v88);
  v78 = v35;
  result = [v27 view];
  if (result)
  {
    v37 = result;
    [result bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v89.origin.x = v39;
    v89.origin.y = v41;
    v89.size.width = v43;
    v89.size.height = v45;
    *&v46 = CGRectGetWidth(v89);
    v77 = v46;
    *&v46 = v31;
    v48 = v33 >> 64;
    v47 = v33;
    v49 = v32;
    *&v50 = CGRectGetHeight(*&v46);
    v76 = v50;
    result = [v27 view];
    if (result)
    {
      v51 = result;

      [v51 bounds];
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;

      v90.origin.x = v53;
      v90.origin.y = v55;
      v90.size.width = v57;
      v90.size.height = v59;
      Height = CGRectGetHeight(v90);
      *&v61.f64[0] = v78;
      *&v62.f64[0] = v77;
      *&v61.f64[1] = v76;
      v62.f64[1] = Height;
      v79[0] = 0;
      v63 = [objc_opt_self() valueWithVFXFloat2_];
      v80[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
      v80[0] = v63;
      VFXNode.setBehaviorGraphValue(key:value:)(v79, v80);
      sub_1BD0DE53C(v80, &qword_1EBD3EC90);
      v64 = &v27[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize];
      swift_beginAccess();
      *v64 = *(&v33 + 1);
      v64[1] = v32;
      sub_1BD0DE19C(&v82, v80, &qword_1EBD4DC38);

      sub_1BD633E0C(*(&v34 + 1));

      return sub_1BD0DE53C(v81, &unk_1EBD4DC40);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD632A4C(double a1, double a2)
{
  result = [v2 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v31.origin.x = v8;
    v31.origin.y = v10;
    v31.size.width = v12;
    v31.size.height = v14;
    Width = CGRectGetWidth(v31);
    result = [v2 view];
    if (result)
    {
      v16 = result;
      v17 = a1 / Width;
      [result bounds];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v32.origin.x = v19;
      v32.origin.y = v21;
      v32.size.width = v23;
      v32.size.height = v25;
      Height = CGRectGetHeight(v32);
      v30 = 8;
      *&v27 = v17;
      *&Height = a2 / Height;
      HIDWORD(v27) = LODWORD(Height);
      v28 = [objc_opt_self() valueWithVFXFloat2_];
      v29[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
      v29[0] = v28;
      VFXNode.setBehaviorGraphValue(key:value:)(&v30, v29);
      return sub_1BD0DE53C(v29, &qword_1EBD3EC90);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD632BE4()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v89 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings);
  sub_1BE04D094();
  v12 = v11;
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C54();

  v15 = os_log_type_enabled(v13, v14);
  v91 = v2;
  v100 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v101 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    *&v109 = v18;
    *v17 = 136315650;
    LOBYTE(v107) = 48;
    v19 = VFXNode.behaviorGraphValue(key:)(&v107);
    v20 = sub_1BD123690(v19._countAndFlagsBits, v19._object, &v109);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    LOBYTE(v107) = 26;
    v21 = VFXNode.behaviorGraphValue(key:)(&v107);
    v22 = sub_1BD123690(v21._countAndFlagsBits, v21._object, &v109);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    LOBYTE(v107) = 51;
    v23 = VFXNode.behaviorGraphValue(key:)(&v107);
    v24 = sub_1BD123690(v23._countAndFlagsBits, v23._object, &v109);

    *(v17 + 24) = v24;
    _os_log_impl(&dword_1BD026000, v13, v14, "NearbyPeerPayment/VFX: Amount placement. Shader values. transferAmount: %s; modelOpacity: %s; textMaterialCircularMask: %s", v17, 0x20u);
    swift_arrayDestroy();
    v25 = v18;
    v2 = v91;
    MEMORY[0x1BFB45F20](v25, -1, -1);
    v26 = v17;
    v3 = v101;
    MEMORY[0x1BFB45F20](v26, -1, -1);
  }

  v98 = v3[1];
  v98(v10, v2);
  v27 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  result = swift_beginAccess();
  v29 = *(v1 + v27);
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = sub_1BE053704();
  v30 = result;
  if (result)
  {
LABEL_5:
    if (v30 < 1)
    {
      __break(1u);
      return result;
    }

    v96 = v29 & 0xC000000000000001;
    v89[1] = "mitter.pointCache";
    v95 = v3 + 1;
    v89[0] = "starterTextBurstCount";
    sub_1BE048C84();
    v31 = 0;
    *&v32 = 136315906;
    v90 = v32;
    v92 = v29;
    v97 = v30;
    while (1)
    {
      v34 = v96 ? MEMORY[0x1BFB40900](v31, v29) : *(v29 + 8 * v31 + 32);
      v35 = v34;
      v36 = sub_1BE052404();
      v37 = [v35 childNodeWithName_];

      v101 = v35;
      if (v37 && (v38 = [v37 behaviorGraph]) != 0)
      {
        v39 = v38;
        v40 = sub_1BE052404();
        v41 = [v39 objectForKeyedSubscript_];

        v42 = v31;
        if (v41)
        {
          sub_1BE053624();
          swift_unknownObjectRelease();
        }

        else
        {
          v107 = 0u;
          v108 = 0u;
        }

        v44 = v2;
        v109 = v107;
        v110 = v108;
        v43 = v92;
      }

      else
      {
        v42 = v31;
        v43 = v29;
        v44 = v2;
        v109 = 0u;
        v110 = 0u;
      }

      v45 = v100;
      sub_1BE04D094();
      sub_1BD0DE19C(&v109, &v107, &qword_1EBD3EC90);
      v46 = v37;
      v47 = sub_1BE04D204();
      v48 = sub_1BE052C54();

      v99 = v48;
      if (os_log_type_enabled(v47, v48))
      {
        break;
      }

      sub_1BD0DE53C(&v107, &qword_1EBD3EC90);
      v2 = v44;
      v98(v45, v44);
      sub_1BD0DE53C(&v109, &qword_1EBD3EC90);
      v29 = v43;
      v33 = v42;
LABEL_8:
      v31 = v33 + 1;
      if (v97 == v31)
      {
      }
    }

    v94 = v46;
    v49 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v106 = v93;
    *v49 = v90;
    sub_1BD0DE19C(&v107, v104, &qword_1EBD3EC90);
    if (v105)
    {
      sub_1BD0E5E8C(0, &qword_1EBD4DB08);
      v50 = v47;
      v33 = v42;
      if (swift_dynamicCast())
      {
        v51 = v102;
        v52 = [v102 name];

        v53 = sub_1BE052434();
        v55 = v54;

LABEL_25:
        sub_1BD0DE53C(&v107, &qword_1EBD3EC90);
        v56 = sub_1BD123690(v53, v55, &v106);

        *(v49 + 4) = v56;
        *(v49 + 12) = 2080;
        if (v37)
        {
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
          v57 = swift_allocObject();
          v104[0] = v57;
          v58 = v94;
          v59 = [v94 behaviorGraph];
          if (v59)
          {
            v60 = v59;
            v61 = sub_1BE052404();
            v62 = [v60 objectForKeyedSubscript_];

            if (v62)
            {
              sub_1BE053624();
              swift_unknownObjectRelease();
            }

            else
            {
              v102 = 0u;
              v103 = 0u;
            }

            v66 = v103;
            *(v57 + 16) = v102;
            *(v57 + 32) = v66;
          }

          else
          {
            *(v57 + 16) = 0u;
            *(v57 + 32) = 0u;
          }

          v67 = sub_1BE0524A4();
          v69 = sub_1BD123690(v67, v68, &v106);

          *(v49 + 14) = v69;
          *(v49 + 22) = 2080;
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
          v70 = swift_allocObject();
          v104[0] = v70;
          v71 = [v58 behaviorGraph];
          if (v71)
          {
            v72 = v71;
            v73 = sub_1BE052404();
            v74 = [v72 objectForKeyedSubscript_];

            if (v74)
            {
              sub_1BE053624();
              swift_unknownObjectRelease();
            }

            else
            {
              v102 = 0u;
              v103 = 0u;
            }

            v75 = v103;
            *(v70 + 16) = v102;
            *(v70 + 32) = v75;
          }

          else
          {
            *(v70 + 16) = 0u;
            *(v70 + 32) = 0u;
          }

          v65 = sub_1BE0524A4();
          v63 = v76;
        }

        else
        {
          v63 = 0xE300000000000000;
          v64 = sub_1BD123690(7104878, 0xE300000000000000, &v106);

          *(v49 + 14) = v64;
          *(v49 + 22) = 2080;
          v65 = 7104878;
          v58 = v94;
        }

        v77 = sub_1BD123690(v65, v63, &v106);

        *(v49 + 24) = v77;
        *(v49 + 32) = 2080;
        if (v37)
        {
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
          v78 = swift_allocObject();
          v104[0] = v78;
          v79 = [v58 behaviorGraph];
          if (v79)
          {
            v80 = v79;
            v81 = sub_1BE052404();
            v82 = [v80 objectForKeyedSubscript_];

            if (v82)
            {
              sub_1BE053624();
              swift_unknownObjectRelease();
            }

            else
            {
              v102 = 0u;
              v103 = 0u;
            }

            v2 = v91;
            v85 = v103;
            *(v78 + 16) = v102;
            *(v78 + 32) = v85;
          }

          else
          {
            *(v78 + 16) = 0u;
            *(v78 + 32) = 0u;
            v2 = v91;
          }

          v84 = sub_1BE0524A4();
          v83 = v86;
        }

        else
        {
          v83 = 0xE300000000000000;
          v84 = 7104878;
          v2 = v91;
        }

        v87 = sub_1BD123690(v84, v83, &v106);

        *(v49 + 34) = v87;
        _os_log_impl(&dword_1BD026000, v50, v99, "NearbyPeerPayment/VFX: Character placement values. model render mesh: %s; digitScale: %s; startingHeight: %s; digitPositionFromCenter: %s", v49, 0x2Au);
        v88 = v93;
        swift_arrayDestroy();
        MEMORY[0x1BFB45F20](v88, -1, -1);
        MEMORY[0x1BFB45F20](v49, -1, -1);

        v98(v100, v2);
        sub_1BD0DE53C(&v109, &qword_1EBD3EC90);
        v29 = v92;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1BD0DE53C(v104, &qword_1EBD3EC90);
      v50 = v47;
      v33 = v42;
    }

    v55 = 0xE400000000000000;
    v53 = 1701736302;
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1BD633728()
{
  aBlock = 0x5F72616863;
  v9 = 0xE500000000000000;
  MEMORY[0x1BFB3F610]();
  v14 = 0;
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_world) assetRegistry];
  v2 = [v1 rootNode];

  v3 = swift_allocObject();
  v3[2] = 0x5F72616863;
  v3[3] = 0xE500000000000000;
  v3[4] = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BD638110;
  *(v4 + 24) = v3;
  v12 = sub_1BD63816C;
  v13 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1BD637520;
  v11 = &block_descriptor_57_3;
  v5 = _Block_copy(&aBlock);
  sub_1BE048964();

  [v2 enumerateHierarchyUsingBlock_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v14;

    return v7;
  }

  return result;
}

uint64_t sub_1BD6338F0()
{
  aBlock = 6251376;
  v9 = 0xE300000000000000;
  MEMORY[0x1BFB3F610]();
  v14 = 0;
  v1 = [*(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_world) assetRegistry];
  v2 = [v1 rootNode];

  v3 = swift_allocObject();
  v3[2] = 6251376;
  v3[3] = 0xE300000000000000;
  v3[4] = &v14;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1BD6380DC;
  *(v4 + 24) = v3;
  v12 = sub_1BD6380E8;
  v13 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1BD637520;
  v11 = &block_descriptor_47_0;
  v5 = _Block_copy(&aBlock);
  sub_1BE048964();

  [v2 enumerateHierarchyUsingBlock_];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v14;

    return v7;
  }

  return result;
}

void sub_1BD633AB4(void *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitTemplate) clone];
  v4 = sub_1BE052404();
  v5 = [v3 childNodeWithName_];

  v6 = sub_1BE052404();
  v7 = [v3 childNodeWithName_];

  v8 = sub_1BE052404();
  v9 = [v3 childNodeWithName_];

  v10 = sub_1BE052404();
  v11 = [v3 childNodeWithName_];

  if (v5 && v7 && v9 && v11)
  {
    v19 = v11;
    v18 = v9;
    v17 = v7;
    v12 = v5;
    v13 = sub_1BD6338F0();
    if (v13)
    {
      v16 = v13;
      v14 = sub_1BD633728();

      if (v14)
      {
        v22 = 58;
        ObjectType = swift_getObjectType();
        v20[0] = v14;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v22, v20);
        sub_1BD0DE53C(v20, &qword_1EBD3EC90);
        v22 = 57;
        v15 = swift_getObjectType();
        ObjectType = v15;
        v20[0] = v16;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v22, v20);
        sub_1BD0DE53C(v20, &qword_1EBD3EC90);
        v22 = 57;
        ObjectType = v15;
        v20[0] = v16;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v22, v20);
        sub_1BD0DE53C(v20, &qword_1EBD3EC90);
        v22 = 57;
        ObjectType = v15;
        v20[0] = v16;
        swift_unknownObjectRetain();
        VFXNode.setBehaviorGraphValue(key:value:)(&v22, v20);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1BD0DE53C(v20, &qword_1EBD3EC90);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v11;
}

uint64_t sub_1BD633E0C(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04B0F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (!v15 || (v16 = v15, sub_1BE04AFF4(), v17 = sub_1BE04B044(), (*(v10 + 8))(v13, v9), v18 = [v16 minimalFormattedStringValueInLocale_], v16, v17, !v18))
  {
    sub_1BE04D094();
    v26 = sub_1BE04D204();
    v27 = sub_1BE052C34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1BD026000, v26, v27, "NearbyPeerPayment/VFX: no amount present when updating character bounds for vfx", v28, 2u);
      MEMORY[0x1BFB45F20](v28, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  sub_1BE052434();

  v171 = _s9PassKitUI29NearbyPeerPaymentVFXUtilitiesO21mappedCharacterValues15formattedAmountSaySSGSS_tFZ_0();
  v183 = sub_1BD5131E0();

  v19 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels;
  result = swift_beginAccess();
  v21 = *&v19[v2];
  if (v21 >> 62)
  {
LABEL_105:
    result = sub_1BE053704();
    v22 = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_5:
      if (v22 < 1)
      {
        goto LABEL_108;
      }

      sub_1BE048C84();
      for (i = 0; i != v22; ++i)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1BFB40900](i, v21);
        }

        else
        {
          v24 = *(v21 + 8 * i + 32);
        }

        v25 = v24;
        [v24 removeFromParentNode];
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC0];
  *&v19[v2] = MEMORY[0x1E69E7CC0];

  v30 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes;
  swift_beginAccess();
  v174 = v30;
  *(v2 + v30) = v29;

  v31 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes;
  swift_beginAccess();
  v170 = v31;
  *(v2 + v31) = v29;

  v32 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes;
  swift_beginAccess();
  v173 = v32;
  *(v2 + v32) = v29;

  v180 = *(v171 + 16);
  if (!v180)
  {
LABEL_101:

    return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))(v168);
  }

  if (v180 > a1[2])
  {
    goto LABEL_109;
  }

  v176 = *(v2 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitRoot);
  v179 = a1 + 4;
  v178 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
  swift_beginAccess();
  v33 = 0;
  v175 = "starterTextBurstCount";
  v182 = v183 + 32;
  v34 = (v171 + 40);
  v177 = v19;
  v172 = v2;
  while (1)
  {
    v38 = *(v34 - 1);
    v37 = *v34;
    v186 = v34;
    sub_1BE048C84();
    v187 = v38;
    v188 = v37;
    sub_1BD633AB4(&v196);
    v19 = v196;
    v39 = v197;
    v41 = v198;
    v40 = v199;
    v42 = v200;
    v190 = *&v179[2 * v33];
    v191 = v199;
    v192 = v198;
    v185 = v197;
    v193 = v200;
    v189 = vextq_s8(v190, v190, 8uLL);
    if (v197)
    {
      v181 = v33;
      v43 = v196;
      v44 = objc_opt_self();
      v45 = v42;
      v46 = v43;
      v47 = v39;
      v48 = v41;
      v49 = v40;
      a1 = [v44 valueWithVFXFloat2_];
      v199 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
      v196 = a1;
      v50 = [v47 behaviorGraph];
      if (v50)
      {
        a1 = v50;
        sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
        v51 = v195;
        if (v195)
        {
          v52 = __swift_project_boxed_opaque_existential_1(v194, v195);
          v53 = *(v51 - 8);
          v54 = MEMORY[0x1EEE9AC00](v52, v52);
          v56 = &v169 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v53 + 16))(v56, v54);
          v57 = sub_1BE053B74();
          (*(v53 + 8))(v56, v51);
          __swift_destroy_boxed_opaque_existential_0(v194);
        }

        else
        {
          v57 = 0;
        }

        v62 = sub_1BE052404();
        [a1 setObject:v57 forKeyedSubscript:v62];

        swift_unknownObjectRelease();
      }

      sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
      v199 = MEMORY[0x1E69E6448];
      LODWORD(v196) = v190.i32[1];
      v21 = v47;
      v63 = [v21 behaviorGraph];
      v64 = v21;
      v41 = v192;
      v19 = v43;
      v2 = v172;
      v33 = v181;
      if (v63)
      {
        a1 = v63;
        sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
        v65 = v195;
        if (v195)
        {
          v66 = __swift_project_boxed_opaque_existential_1(v194, v195);
          v67 = *(v65 - 8);
          v68 = MEMORY[0x1EEE9AC00](v66, v66);
          v70 = &v169 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v67 + 16))(v70, v68);
          v71 = sub_1BE053B74();
          v72 = v70;
          v41 = v192;
          (*(v67 + 8))(v72, v65);
          __swift_destroy_boxed_opaque_existential_0(v194);
        }

        else
        {
          v71 = 0;
        }

        v64 = sub_1BE052404();
        [a1 setObject:v71 forKeyedSubscript:v64];

        swift_unknownObjectRelease();
      }

      sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
      v199 = MEMORY[0x1E69E6448];
      if (v33 >= *(v183 + 2))
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      LODWORD(v196) = *&v182[4 * v33];
      v73 = v21;
      v74 = [v73 behaviorGraph];
      if (v74)
      {
        v75 = v74;
        sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
        v76 = v195;
        if (v195)
        {
          v77 = __swift_project_boxed_opaque_existential_1(v194, v195);
          v78 = *(v76 - 8);
          v79 = MEMORY[0x1EEE9AC00](v77, v77);
          v81 = &v169 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v78 + 16))(v81, v79);
          v82 = sub_1BE053B74();
          v83 = v81;
          v41 = v192;
          (*(v78 + 8))(v83, v76);
          __swift_destroy_boxed_opaque_existential_0(v194);
        }

        else
        {
          v82 = 0;
        }

        v84 = sub_1BE052404();
        [v75 setObject:v82 forKeyedSubscript:v84];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
      v40 = v191;
      v42 = v193;
    }

    else
    {
      v58 = v200;
      v59 = v19;
      v60 = v41;
      v61 = v40;
    }

    v85 = v188;
    if (*(v2 + v178) == 1)
    {
      if (v41)
      {
        v86 = objc_opt_self();
        v87 = v41;
        a1 = [v86 valueWithVFXFloat2_];
        v199 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
        v196 = a1;
        v88 = [v87 behaviorGraph];
        v89 = v87;
        if (v88)
        {
          a1 = v88;
          sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
          v90 = v195;
          if (v195)
          {
            v91 = __swift_project_boxed_opaque_existential_1(v194, v195);
            v92 = *(v90 - 8);
            v93 = MEMORY[0x1EEE9AC00](v91, v91);
            v95 = &v169 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v92 + 16))(v95, v93);
            v96 = sub_1BE053B74();
            v97 = v95;
            v41 = v192;
            (*(v92 + 8))(v97, v90);
            __swift_destroy_boxed_opaque_existential_0(v194);
          }

          else
          {
            v96 = 0;
          }

          v89 = sub_1BE052404();
          [a1 setObject:v96 forKeyedSubscript:v89];

          swift_unknownObjectRelease();
        }

        sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
        v199 = MEMORY[0x1E69E6448];
        LODWORD(v196) = v190.i32[1];
        v21 = v87;
        v98 = [v21 behaviorGraph];
        v99 = v21;
        if (v98)
        {
          a1 = v98;
          sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
          v100 = v195;
          if (v195)
          {
            v101 = __swift_project_boxed_opaque_existential_1(v194, v195);
            v102 = *(v100 - 8);
            v103 = MEMORY[0x1EEE9AC00](v101, v101);
            v105 = &v169 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v102 + 16))(v105, v103);
            v106 = sub_1BE053B74();
            v107 = v105;
            v41 = v192;
            (*(v102 + 8))(v107, v100);
            __swift_destroy_boxed_opaque_existential_0(v194);
          }

          else
          {
            v106 = 0;
          }

          v99 = sub_1BE052404();
          [a1 setObject:v106 forKeyedSubscript:v99];

          swift_unknownObjectRelease();
        }

        sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
        v199 = MEMORY[0x1E69E6448];
        if (v33 >= *(v183 + 2))
        {
          goto LABEL_104;
        }

        LODWORD(v196) = *&v182[4 * v33];
        v108 = v21;
        v109 = [v108 behaviorGraph];
        if (v109)
        {
          v110 = v109;
          sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
          v111 = v195;
          if (v195)
          {
            v112 = __swift_project_boxed_opaque_existential_1(v194, v195);
            v113 = *(v111 - 8);
            v114 = MEMORY[0x1EEE9AC00](v112, v112);
            v116 = &v169 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v113 + 16))(v116, v114);
            v117 = sub_1BE053B74();
            v118 = v116;
            v41 = v192;
            (*(v113 + 8))(v118, v111);
            __swift_destroy_boxed_opaque_existential_0(v194);
          }

          else
          {
            v117 = 0;
          }

          v119 = sub_1BE052404();
          [v110 setObject:v117 forKeyedSubscript:v119];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
        v40 = v191;
        v42 = v193;
        v85 = v188;
      }
    }

    else
    {
      [v41 removeFromParentNode];
    }

    v120 = v187;
    v184 = v19;
    if (v187 == 0x646F69726570 && v85 == 0xE600000000000000 || (sub_1BE053B84() & 1) != 0 || v120 == 0x616D6D6F63 && v85 == 0xE500000000000000)
    {

LABEL_67:
      [v40 removeFromParentNode];
      v19 = v177;
      goto LABEL_68;
    }

    v159 = sub_1BE053B84();

    if (v159)
    {
      goto LABEL_67;
    }

    v19 = v177;
    if (v40)
    {
      break;
    }

LABEL_68:
    if (v42)
    {
      v121 = objc_opt_self();
      v122 = v42;
      a1 = [v121 valueWithVFXFloat2_];
      v199 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
      v196 = a1;
      v123 = [v122 behaviorGraph];
      v124 = v122;
      if (v123)
      {
        a1 = v123;
        sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
        v125 = v195;
        if (v195)
        {
          v126 = __swift_project_boxed_opaque_existential_1(v194, v195);
          v127 = *(v125 - 8);
          v128 = MEMORY[0x1EEE9AC00](v126, v126);
          v130 = &v169 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v127 + 16))(v130, v128);
          v131 = sub_1BE053B74();
          (*(v127 + 8))(v130, v125);
          v41 = v192;
          __swift_destroy_boxed_opaque_existential_0(v194);
        }

        else
        {
          v131 = 0;
        }

        v124 = sub_1BE052404();
        [a1 setObject:v131 forKeyedSubscript:v124];

        swift_unknownObjectRelease();
        v42 = v193;
      }

      sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
      v199 = MEMORY[0x1E69E6448];
      LODWORD(v196) = v190.i32[1];
      v21 = v122;
      v132 = [v21 behaviorGraph];
      v133 = v21;
      if (v132)
      {
        a1 = v132;
        sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
        v134 = v195;
        if (v195)
        {
          v135 = __swift_project_boxed_opaque_existential_1(v194, v195);
          v136 = *(v134 - 8);
          v137 = MEMORY[0x1EEE9AC00](v135, v135);
          v139 = &v169 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v136 + 16))(v139, v137);
          v140 = sub_1BE053B74();
          (*(v136 + 8))(v139, v134);
          v41 = v192;
          __swift_destroy_boxed_opaque_existential_0(v194);
        }

        else
        {
          v140 = 0;
        }

        v133 = sub_1BE052404();
        [a1 setObject:v140 forKeyedSubscript:v133];

        swift_unknownObjectRelease();
        v42 = v193;
      }

      sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
      v199 = MEMORY[0x1E69E6448];
      if (v33 >= *(v183 + 2))
      {
        goto LABEL_103;
      }

      LODWORD(v196) = *&v182[4 * v33];
      v141 = v21;
      v142 = [v141 behaviorGraph];
      if (v142)
      {
        v143 = v142;
        sub_1BD0DE19C(&v196, v194, &qword_1EBD3EC90);
        v144 = v195;
        if (v195)
        {
          v145 = __swift_project_boxed_opaque_existential_1(v194, v195);
          v146 = *(v144 - 8);
          v147 = MEMORY[0x1EEE9AC00](v145, v145);
          v149 = &v169 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v146 + 16))(v149, v147);
          v150 = sub_1BE053B74();
          (*(v146 + 8))(v149, v144);
          v41 = v192;
          __swift_destroy_boxed_opaque_existential_0(v194);
        }

        else
        {
          v150 = 0;
        }

        v151 = sub_1BE052404();
        [v143 setObject:v150 forKeyedSubscript:v151];

        swift_unknownObjectRelease();
        sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
        v42 = v193;
      }

      else
      {

        sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
      }
    }

    v152 = v184;
    [v176 addChildNode_];
    swift_beginAccess();
    v153 = v152;
    MEMORY[0x1BFB3F7A0]();
    if (*((*&v19[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v19[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    if (v41)
    {
      v154 = v174;
      swift_beginAccess();
      v155 = v41;
      MEMORY[0x1BFB3F7A0]();
      if (*((*(v2 + v154) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v154) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      swift_endAccess();
      v42 = v193;
    }

    if (v42)
    {
      v156 = v42;
      v157 = v173;
      swift_beginAccess();
      v158 = v156;
      MEMORY[0x1BFB3F7A0]();
      if (*((*(v2 + v157) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v157) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BE052774();
      }

      sub_1BE0527C4();
      swift_endAccess();
    }

    ++v33;

    v35 = v185;
    v36 = v191;

    v34 = v186 + 2;
    if (v180 == v33)
    {
      goto LABEL_101;
    }
  }

  LOBYTE(v194[0]) = 31;
  v160 = objc_opt_self();
  v161 = v40;
  v162 = [v160 valueWithVFXFloat2_];
  v199 = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  v196 = v162;
  VFXNode.setBehaviorGraphValue(key:value:)(v194, &v196);

  sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
  LOBYTE(v194[0]) = 32;
  v163 = MEMORY[0x1E69E6448];
  v199 = MEMORY[0x1E69E6448];
  LODWORD(v196) = v190.i32[1];
  v164 = v161;
  VFXNode.setBehaviorGraphValue(key:value:)(v194, &v196);

  result = sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
  LOBYTE(v194[0]) = 25;
  v199 = v163;
  if (v33 < *(v183 + 2))
  {
    LODWORD(v196) = *&v182[4 * v33];
    v165 = v164;
    VFXNode.setBehaviorGraphValue(key:value:)(v194, &v196);

    sub_1BD0DE53C(&v196, &qword_1EBD3EC90);
    v166 = v170;
    swift_beginAccess();
    v167 = v165;
    MEMORY[0x1BFB3F7A0]();
    if (*((*(v2 + v166) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v166) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    swift_endAccess();
    goto LABEL_68;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  return result;
}

uint64_t sub_1BD6359BC(float64x2_t a1, double a2)
{
  a1.f64[1] = a1.f64[0] + a1.f64[0] + a2 + a2;
  v5 = 23;
  v2 = [objc_opt_self() valueWithVFXFloat2_];
  v4[3] = sub_1BD0E5E8C(0, &qword_1EBD4DBD0);
  v4[0] = v2;
  VFXNode.setBehaviorGraphValue(key:value:)(&v5, v4);
  return sub_1BD0DE53C(v4, &qword_1EBD3EC90);
}

id static NearbyPeerPaymentVFXViewController.controller(for:)(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 2)
    {
      return 0;
    }

    else if (a1 == 1)
    {
      return [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentSenderVFXViewController()) init];
    }

    else
    {
      result = sub_1BE053BE4();
      __break(1u);
    }
  }

  else
  {
    v2 = [objc_allocWithZone(type metadata accessor for NearbyPeerPaymentReceiverVFXViewController()) init];
    v3 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles;
    swift_beginAccess();
    result = v2;
    *(v2 + v3) = 0;
  }

  return result;
}

void sub_1BD635B58(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1BD635BC0(v5);
}

void sub_1BD635BC0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount;
  v5 = swift_beginAccess();
  v6 = *(v2 + v4);
  if (a1)
  {
    if (v6)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43B00);
      v7 = v6;
      v8 = a1;
      v9 = sub_1BE053074();

      if (v9)
      {
        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x278))(v5);
  if (*(v2 + v4))
  {
    sub_1BD6323D4();
    v10 = [v2 view];
    if (v10)
    {
      v11 = v10;
      [v10 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD635CF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, double, double))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *a2 + *a5;
  result = swift_beginAccess();
  *v10 = v7;
  *(v10 + 8) = v8;
  *(v10 + 16) = v9;
  if ((v9 & 1) == 0)
  {
    return a6(result, v7, v8);
  }

  return result;
}

id NearbyPeerPaymentVFXViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NearbyPeerPaymentVFXViewController.init()()
{
  v1 = v0;
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v90 - v9;
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount] = 0;
  v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles] = 1;
  v11 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes] = v14;
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes] = v14;
  *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes] = v14;
  v15 = &v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_rotationMatrix];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion] = 0;
  v16 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_stateTransitionSequencer;
  type metadata accessor for NearbyPeerPaymentStateTransitionSequencer();
  swift_allocObject();
  *&v0[v16] = sub_1BD5127F8();
  sub_1BD0E5E8C(0, &qword_1EBD35DA8);
  v17 = sub_1BE053014();
  v18 = sub_1BE052404();
  v19 = sub_1BE052404();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (!v20)
  {
    while (1)
    {
LABEL_32:
      sub_1BE053994();
      __break(1u);
    }
  }

  sub_1BE04A9F4();

  sub_1BD0E5E8C(0, &unk_1EBD4DB60);
  (*(v3 + 16))(v6, v10, v2);
  v21 = sub_1BD1AAE28(MEMORY[0x1E69E7CC0]);
  v22 = sub_1BD636A80(v6, v21);
  v23 = v22;
  v100 = v3;
  if (!v22)
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_1BE053834();

    v104 = 0xD000000000000022;
    v105 = 0x80000001BE131F50;
    sub_1BD63811C(&qword_1EBD49660, MEMORY[0x1E6968FB0]);
    v87 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v87);

    goto LABEL_32;
  }

  v102 = v2;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_world] = v22;
  type metadata accessor for NearbyPeerPaymentVFXView();
  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = v23;
  v26 = [v24 init];
  [v26 setWorld_];
  [v26 setPixelFormat_];
  [v26 setAntialiasingMode_];
  [v26 setRendersContinuously_];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 blackColor];
  [v28 setBackgroundColor_];

  v30 = [v25 rootNode];
  v31 = sub_1BE052404();
  v32 = [v30 childNodeWithName_];

  v98 = v32;
  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = [v25 rootNode];
  v34 = sub_1BE052404();
  v35 = [v33 childNodeWithName_];

  v97 = v35;
  if (!v35)
  {
LABEL_22:

    goto LABEL_32;
  }

  v36 = [v25 rootNode];
  v37 = sub_1BE052404();
  v38 = [v36 childNodeWithName_];

  if (!v38)
  {
LABEL_21:

    v98 = v97;
    goto LABEL_22;
  }

  v99 = v28;
  v39 = [v25 rootNode];
  v40 = sub_1BE052404();
  v41 = [v39 childNodeWithName_];

  v94 = v41;
  if (!v41)
  {
    v94 = v38;
LABEL_20:

    v89 = v97;
    v97 = v94;
    v98 = v89;
    goto LABEL_21;
  }

  v95 = v38;
  v42 = [v25 rootNode];
  v43 = sub_1BE052404();
  v44 = [v42 childNodeWithName_];

  v92 = v44;
  if (!v44)
  {

    v88 = v97;
    v97 = v95;
    v98 = v88;
    goto LABEL_20;
  }

  v45 = [v25 rootNode];
  v46 = sub_1BE052404();
  v47 = [v45 childNodeWithName_];

  if (!v47)
  {
    goto LABEL_32;
  }

  v48 = [v25 rootNode];
  v49 = sub_1BE052404();
  v50 = [v48 childNodeWithName_];

  if (!v50)
  {
LABEL_31:

    goto LABEL_32;
  }

  v96 = v47;
  v51 = [v25 rootNode];
  v52 = sub_1BE052404();
  v53 = [v51 childNodeWithName_];

  if (!v53)
  {
    v47 = v50;
LABEL_30:

    goto LABEL_31;
  }

  v101 = v10;
  v54 = [v25 rootNode];
  v55 = sub_1BE052404();
  v56 = [v54 childNodeWithName_];

  if (!v56)
  {
    v47 = v53;
    v53 = v50;
LABEL_29:

    v96 = v53;
    goto LABEL_30;
  }

  v57 = [v25 rootNode];
  v58 = sub_1BE052404();
  v59 = [v57 childNodeWithName_];

  if (!v59)
  {
    v59 = v56;
LABEL_28:

    v96 = v50;
    v47 = v59;
    goto LABEL_29;
  }

  v91 = v53;
  v93 = v50;
  v60 = [v25 rootNode];
  v61 = sub_1BE052404();
  v62 = [v60 childNodeWithName_];

  if (!v62)
  {

    v96 = v93;
    v50 = v91;
    v53 = v56;
    goto LABEL_28;
  }

  v64 = v98;
  v63 = v99;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_vfxView] = v99;
  v65 = v92;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_camera] = v92;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ambientEmitter] = v64;
  v66 = v97;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_unknownAmountEmitter] = v97;
  v68 = v94;
  v67 = v95;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_nodeBindings] = v95;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitRoot] = v68;
  v90 = v63;
  v69 = v68;
  v95 = v67;
  v97 = v66;
  v98 = v64;
  v94 = v65;
  v70 = sub_1BE052404();
  v99 = v69;
  v71 = [v69 childNodeWithName_];

  if (!v71)
  {
    goto LABEL_32;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_digitTemplate] = v71;
  v72 = v71;
  [v72 removeFromParentNode];
  v73 = v93;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRing] = v93;
  v74 = v91;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_blueRingParticles] = v91;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_pulsingGradient] = v56;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstA] = v59;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferParticlesBurstB] = v62;
  v75 = v96;
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_transferStatusParticles] = v96;
  v76 = objc_allocWithZone(MEMORY[0x1E69634D0]);
  v77 = v73;
  v78 = v74;
  v79 = v56;
  v80 = v59;
  v81 = v62;
  v82 = v75;
  v83 = [v76 init];
  *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_motionManager] = v83;
  [v83 setDeviceMotionUpdateInterval_];
  v84 = type metadata accessor for NearbyPeerPaymentVFXViewController();
  v103.receiver = v1;
  v103.super_class = v84;
  v85 = objc_msgSendSuper2(&v103, sel_initWithNibName_bundle_, 0, 0);

  (*(v100 + 8))(v101, v102);
  return v85;
}

id sub_1BD636A80(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BE04A9C4();
  if (a2)
  {
    type metadata accessor for VFXWorldLoaderOption(0);
    sub_1BD63811C(&qword_1EBD38240, type metadata accessor for VFXWorldLoaderOption);
    v5 = sub_1BE052224();
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() worldWithURL:v4 options:v5 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_1BE04AA64();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14[0];
    sub_1BE04A854();

    swift_willThrow();
    v12 = sub_1BE04AA64();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_1BD636D40()
{
  v1 = v0;
  v83.receiver = v0;
  v83.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  objc_msgSendSuper2(&v83, sel_viewDidLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_vfxView];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame_];
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  [result bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v84.origin.x = v15;
  v84.origin.y = v17;
  v84.size.width = v19;
  v84.size.height = v21;
  Height = CGRectGetHeight(v84);
  v80[0] = 9;
  v23 = MEMORY[0x1E69E7DE0];
  v82 = MEMORY[0x1E69E7DE0];
  v81[0] = 60.0 / Height;
  VFXNode.setBehaviorGraphValue(key:value:)(v80, v81);
  sub_1BD0DE53C(v81, &qword_1EBD3EC90);
  v80[0] = 10;
  v82 = v23;
  v81[0] = 0.0666666667;
  VFXNode.setBehaviorGraphValue(key:value:)(v80, v81);
  sub_1BD0DE53C(v81, &qword_1EBD3EC90);
  v24 = &v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter];
  swift_beginAccess();
  if (v24[16] == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v25 = result;
    [result bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v85.origin.x = v27;
    v85.origin.y = v29;
    v85.size.width = v31;
    v85.size.height = v33;
    MidX = CGRectGetMidX(v85);
    v86.origin.x = v27;
    v86.origin.y = v29;
    v86.size.width = v31;
    v86.size.height = v33;
    MidY = CGRectGetMidY(v86);
    sub_1BD632A40(MidX, MidY);
  }

  v36 = &v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter];
  swift_beginAccess();
  if (v36[16] != 1)
  {
LABEL_10:
    v79 = 21;
    result = [v1 view];
    if (result)
    {
      v59 = result;
      [result bounds];
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;

      v90.origin.x = v61;
      v90.origin.y = v63;
      v90.size.width = v65;
      v90.size.height = v67;
      Width = CGRectGetWidth(v90);
      result = [v1 view];
      if (result)
      {
        v69 = result;
        [result bounds];
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;

        v91.origin.x = v71;
        v91.origin.y = v73;
        v91.size.width = v75;
        v91.size.height = v77;
        v78 = Width / CGRectGetHeight(v91);
        v82 = MEMORY[0x1E69E6448];
        *v81 = v78;
        VFXNode.setBehaviorGraphValue(key:value:)(&v79, v81);
        return sub_1BD0DE53C(v81, &qword_1EBD3EC90);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = result;
  [result bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v87.origin.x = v39;
  v87.origin.y = v41;
  v87.size.width = v43;
  v87.size.height = v45;
  v46 = CGRectGetHeight(v87);
  result = [v1 view];
  if (result)
  {
    v47 = result;
    v48 = v46 * 0.49;
    [result bounds];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v88.origin.x = v50;
    v88.origin.y = v52;
    v88.size.width = v54;
    v88.size.height = v56;
    v57 = CGRectGetMidX(v88);
    v89.origin.x = v50;
    v89.origin.y = v52;
    v89.size.width = v54;
    v89.size.height = v56;
    CGRectGetMidY(v89);
    v58 = &v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize];
    swift_beginAccess();
    sub_1BD632A34(v57, v48 + v58[1] * -0.5);
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1BD637210(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion] = 1;
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_motionManager];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainQueue];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1BD637AE0;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1BD14E1D8;
  v9[3] = &block_descriptor_143;
  v8 = _Block_copy(v9);

  [v5 startDeviceMotionUpdatesToQueue:v6 withHandler:v8];
  _Block_release(v8);
}

void sub_1BD637368(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = [a1 attitude];
      if (v4)
      {
        if (*(v3 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion) == 1)
        {
          v5 = v4;
          [v4 quaternion];
          sub_1BD6359BC(v6, v7);
          v8 = v3;
          v3 = v5;
        }

        else
        {
          v8 = v4;
        }
      }
    }
  }
}

void sub_1BD637520(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1BD63757C(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a1 name];
  v11 = sub_1BE052434();
  v13 = v12;

  if (v11 == a3 && v13 == a4)
  {
  }

  else
  {
    v15 = sub_1BE053B84();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  *a2 = 1;
  *a5 = [a1 asset];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BE0B69E0;
  sub_1BE053834();

  MEMORY[0x1BFB3F610](a3, a4);
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 32) = 0xD000000000000020;
  *(v17 + 40) = 0x80000001BE132230;
  sub_1BE053784();
}

uint64_t sub_1BD637734(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [a1 name];
  v11 = sub_1BE052434();
  v13 = v12;

  if (v11 == a3 && v13 == a4)
  {
  }

  else
  {
    v15 = sub_1BE053B84();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  *a2 = 1;
  *a5 = [a1 asset];

  return swift_unknownObjectRelease();
}

id NearbyPeerPaymentVFXViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id NearbyPeerPaymentVFXViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyPeerPaymentVFXViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 keypath_get_11Tm@<Q0>(void *a1@<X0>, void *a2@<X3>, __n128 *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a3 = *v4;
  a3[1].n128_u8[0] = v5;
  return result;
}

void sub_1BD637F9C()
{
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amount) = 0;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_showsInitialStarterParticles) = 1;
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountSize);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_amountCenter;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v3 = v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_ringCenter;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDigitModels) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentStarterTextNodes) = v4;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentDissipateTextNodes) = v4;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_currentTransferTextNodes) = v4;
  v5 = (v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_rotationMatrix);
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *(v0 + OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_isMonitoringMotion) = 0;
  v6 = OBJC_IVAR____TtC9PassKitUI34NearbyPeerPaymentVFXViewController_stateTransitionSequencer;
  type metadata accessor for NearbyPeerPaymentStateTransitionSequencer();
  swift_allocObject();
  *(v0 + v6) = sub_1BD5127F8();
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD63811C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD6381A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC50);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v17[-v3];
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 32);
  v21 = *(v0 + 40);
  v8 = swift_allocObject();
  v9 = *(v0 + 16);
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 32);
  *(v8 + 64) = *(v0 + 48);
  v18 = v0;
  v10 = v5;
  v11 = v6;
  sub_1BE048964();
  v12 = v7;
  sub_1BD0DE19C(&v21, &v20, &qword_1EBD54350);
  sub_1BD10E5DC();
  sub_1BE051704();
  v20 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LOBYTE(v7) = v19;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  v15 = &v4[*(v1 + 36)];
  *v15 = KeyPath;
  v15[1] = sub_1BD10DF54;
  v15[2] = v14;
  sub_1BE052434();
  sub_1BD638FE4();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v4, &qword_1EBD4DC50);
}

id sub_1BD6383C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v19[-v5];
  v7 = *(a1 + 32);
  result = [v7 isEligible];
  if (result)
  {
    v9 = sub_1BE0528D4();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = *a1;
    v11 = *(a1 + 8);
    v20 = *(a1 + 40);
    sub_1BE0528A4();
    v12 = v10;
    v13 = v11;
    sub_1BE048964();
    v14 = v7;
    sub_1BD0DE19C(&v20, v19, &qword_1EBD54350);
    v15 = sub_1BE052894();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    v18 = *(a1 + 16);
    *(v16 + 32) = *a1;
    *(v16 + 48) = v18;
    *(v16 + 64) = *(a1 + 32);
    *(v16 + 80) = *(a1 + 48);
    sub_1BD122C00(0, 0, v6, &unk_1BE0E9890, v16);
  }

  return result;
}

uint64_t sub_1BD638568()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD16DB04;

  return sub_1BD638614();
}

uint64_t sub_1BD638614()
{
  v1[32] = v0;
  sub_1BE0528A4();
  v1[33] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[34] = v3;
  v1[35] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD6386AC, v3, v2);
}

uint64_t sub_1BD6386AC()
{
  v1 = **(v0 + 256);
  v2 = [v1 identifier];
  if (!v2)
  {
    sub_1BE052434();
    v2 = sub_1BE052404();
  }

  v3 = *(*(v0 + 256) + 8);
  v4 = [v3 dynamicContentPageForCriteriaIdentifier:v2 pageType:1];

  if (v4)
  {
    v5 = *(v0 + 256);

    (*(v5 + 16))(0);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 256);
    *(v0 + 192) = *(v8 + 40);
    *(v0 + 240) = *(v0 + 200);
    *(v0 + 208) = *(v8 + 40);
    *(v0 + 320) = 1;
    sub_1BD0DE19C(v0 + 240, v0 + 248, &unk_1EBD4EF10);
    *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0D39A0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    sub_1BD112388(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v10 = [v1 identifier];
    if (!v10)
    {
      sub_1BE052434();
      v10 = sub_1BE052404();
    }

    *(v0 + 296) = v10;
    sub_1BD63945C();
    sub_1BD639564(&qword_1EBD3E5A8, sub_1BD63945C);
    v11 = sub_1BE052A24();
    *(v0 + 304) = v11;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 321;
    *(v0 + 24) = sub_1BD638A38;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD22B1E0;
    *(v0 + 104) = &block_descriptor_144;
    *(v0 + 112) = v12;
    [v3 updateDynamicContentPageForCriteriaIdentifier:v10 pageTypes:v11 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1BD638A38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_1BD638BE8;
  }

  else
  {
    sub_1BD0DE53C(v1 + 192, &qword_1EBD54350);
    v3 = *(v1 + 272);
    v4 = *(v1 + 280);
    v5 = sub_1BD638B60;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD638B60()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[32];

  sub_1BD638E10();
  (*(v3 + 16))(0);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BD638BE8()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 256);

  swift_willThrow();

  *(v0 + 224) = *(v0 + 192);
  *(v0 + 322) = 0;
  sub_1BE0516B4();
  sub_1BD0DE53C(v0 + 192, &qword_1EBD54350);
  v5 = *(v4 + 16);
  v6 = sub_1BE04A844();
  v5();

  v7 = *(v0 + 8);

  return v7();
}

id sub_1BD638CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [v4 issuerName];
  v6 = sub_1BE052434();
  v8 = v7;

  v9 = *(a1 + 32);
  if ([v9 isEligible])
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1BE051234();
  }

  v11 = *(a1 + 8);
  v12 = sub_1BD6390C8(v4, v11, v9);
  v14 = v13;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if (v18)
  {
    v17 = 1;
  }

  else
  {
    result = [v9 isEligible];
    if (result)
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = 0;
  *(a2 + 48) = v17;
  *(a2 + 56) = v4;
  *(a2 + 64) = v15;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4042000000000000;
  return result;
}

uint64_t sub_1BD638E10()
{
  v1 = *v0;
  v2 = [*v0 identifier];
  if (!v2)
  {
    sub_1BE052434();
    v2 = sub_1BE052404();
  }

  v3 = *(v0 + 8);
  v4 = [v1 associatedPassUniqueID];
  v5 = [v3 loadingDetailsForPaymentOffersForCriteriaIdentifier:v2 passUniqueID:v4];

  if (v5)
  {
    v6 = [v5 state] == 1;
    v9 = *(v0 + 40);
    v10 = v9;
    v8[15] = v6;
    v11 = *(&v9 + 1);
    sub_1BD0DE19C(&v11, v8, &unk_1EBD4EF10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516B4();

    return sub_1BD0DE53C(&v10, &qword_1EBD54350);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }
}

unint64_t sub_1BD638FE4()
{
  result = qword_1EBD4DC58;
  if (!qword_1EBD4DC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4DC50);
    sub_1BD0DE4F4(&qword_1EBD39678, &qword_1EBD39658);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4DC58);
  }

  return result;
}

id sub_1BD6390C8(void *a1, void *a2, void *a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a3 isEligible])
  {
    v17 = [a2 configuration];
    v18 = [v17 currencyCode];

    if (v18)
    {
      v19 = sub_1BE052434();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    sub_1BD480FEC(v19, v21);
    v16 = v22;

    return v16;
  }

  v12 = [a1 merchandisingIdentifier];
  v13 = [a2 merchandisingOfferForMerchandisingIdentifier_];

  if (v13)
  {
    v14 = [v13 primaryTitle];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1BE052434();

      return v16;
    }
  }

  v24 = [a1 localizedSubtitleOverride];
  if (v24)
  {
    v25 = v24;
    v16 = sub_1BE052434();
    v27 = v26;

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {

      return 0;
    }

    return v16;
  }

  v29 = [a1 programName];
  if (v29)
  {
    v30 = v29;
    v16 = sub_1BE052434();

    return v16;
  }

  (*(v7 + 104))(v11, *MEMORY[0x1E69B8078], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v31 = result;
    v16 = sub_1BE04B6F4();

    (*(v7 + 8))(v11, v6);
    return v16;
  }

  __break(1u);
  return result;
}