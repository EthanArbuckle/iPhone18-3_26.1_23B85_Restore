unint64_t sub_1A4317534()
{
  result = qword_1EB1B76E0;
  if (!qword_1EB1B76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B76E0);
  }

  return result;
}

id ImportSourceItem.value.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  a1[3] = sub_1A3D9E540();
  *a1 = v4;

  return v4;
}

uint64_t sub_1A43175FC(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  v3 = sub_1A524C674();

  return v3;
}

uint64_t ImportSourceItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1A4317770@<X0>(void *a1@<X8>)
{
  v4 = *(*v1 + 16);
  a1[3] = sub_1A3D9E540();
  *a1 = v4;

  return v4;
}

void sub_1A43177C8(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) uuid];
  v4 = sub_1A524C674();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1A4317824()
{
  v1 = [*(*v0 + 16) name];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A4317880()
{
  sub_1A43178F0(&qword_1EB12A5A8);

    ;
  }
}

uint64_t sub_1A43178F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportSourceItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4317934@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  sub_1A4319D48();
  v110 = *(v2 - 8);
  v111 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v108 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4319F0C();
  v106 = *(v4 - 8);
  v107 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A0A0();
  v113 = v6;
  v105 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A1E8();
  v102 = v8;
  v103 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A2B0();
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A470(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431A580();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v1;
  sub_1A43208C0(0, &qword_1EB137F50, sub_1A431A630, MEMORY[0x1E6981F40]);
  sub_1A431B9C8();
  sub_1A524A2C4();
  v22 = sub_1A52484F4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52484E4();
  sub_1A431A9A0(&qword_1EB1380C8, sub_1A431A580);
  sub_1A524B1E4();
  (*(v23 + 8))(v25, v22);
  (*(v19 + 8))(v21, v18);
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v14 + 36)];
  v28 = MEMORY[0x1E6980A08];
  sub_1A43208C0(0, &qword_1EB1220E0, sub_1A3D6D828, MEMORY[0x1E6980A08]);
  v30 = *(v29 + 28);
  v31 = sub_1A524BB24();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 104))(v35, *MEMORY[0x1E697D708], v31, v33);
  sub_1A524B954();
  (*(v32 + 8))(v35, v31);
  sub_1A3D6D85C(0);
  (*(*(v36 - 8) + 56))(v27 + v30, 0, 1, v36);
  *v27 = KeyPath;
  sub_1A431BA50();
  sub_1A524AEB4();
  sub_1A431F34C(v16, sub_1A431A470);
  v37 = sub_1A52493A4();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249394();
  sub_1A431A378(0, &qword_1EB137F28, sub_1A431A3EC, sub_1A3FF7EE8);
  v42 = *(v41 + 36);
  (*(v38 + 16))(&v12[v42], v40, v37);
  v43 = *(v38 + 56);
  v43(&v12[v42], 0, 1, v37);
  v44 = swift_getKeyPath();
  v45 = v99;
  v46 = &v12[*(v99 + 36)];
  sub_1A43208C0(0, &qword_1EB130238, sub_1A3FF7FB0, v28);
  v48 = *(v47 + 28);
  (*(v38 + 32))(v46 + v48, v40, v37);
  v43(v46 + v48, 0, 1, v37);
  *v46 = v44;
  v49 = sub_1A5249284();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v98 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 104))(v53, *MEMORY[0x1E697C438], v49, v51);
  v54 = sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
  v55 = v101;
  sub_1A524AF34();
  (*(v50 + 8))(v53, v49);
  sub_1A431F34C(v12, sub_1A431A2B0);
  v56 = v100;
  v114 = v100;
  sub_1A3D6DF58();
  v58 = v57;
  v116 = v45;
  v117 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58);
  v61 = v104;
  v62 = v102;
  sub_1A524B0F4();
  (*(v103 + 8))(v55, v62);
  v120 = sub_1A3C38BD4();
  v121 = v63;
  v116 = v62;
  v117 = v58;
  v118 = OpaqueTypeConformance2;
  v119 = v60;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_1A3D5F9DC();
  v66 = v113;
  v103 = v65;
  sub_1A524ABB4();

  (*(v105 + 8))(v61, v66);
  v67 = type metadata accessor for LemonadeBookmarksEditView(0);
  v68 = *(v67 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  sub_1A4320E88(v56, &v98 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  sub_1A524CC54();
  v70 = sub_1A524CC44();
  v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v72 = swift_allocObject();
  v73 = MEMORY[0x1E69E85E0];
  *(v72 + 16) = v70;
  *(v72 + 24) = v73;
  sub_1A43201E0(&v98 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v72 + v71, type metadata accessor for LemonadeBookmarksEditView);
  v74 = sub_1A524CCB4();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = &v98 - v77;
  sub_1A524CC74();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v102 = sub_1A52485C4();
    v104 = &v98;
    v101 = *(v102 - 8);
    MEMORY[0x1EEE9AC00](v102);
    v105 = v64;
    v80 = &v98 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116 = 0;
    v117 = 0xE000000000000000;
    sub_1A524E404();

    v116 = 0xD000000000000039;
    v117 = 0x80000001A53D22F0;
    v120 = 60;
    v81 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v81);

    v83 = MEMORY[0x1EEE9AC00](v82);
    (*(v75 + 16))(&v98 - v77, &v98 - v77, v74, v83);
    sub_1A52485B4();
    (*(v75 + 8))(&v98 - v77, v74);
    v84 = v107;
    v85 = v108;
    (*(v106 + 32))(v108, v112, v107);
    sub_1A431A378(0, &qword_1EB1380E8, sub_1A4319F0C, MEMORY[0x1EEE7B8C0]);
    v87 = v80;
    v64 = v105;
    (*(v101 + 4))(&v85[*(v86 + 36)], v87, v102);
  }

  else
  {
    sub_1A431A378(0, &qword_1EB1380F0, sub_1A4319F0C, MEMORY[0x1E697C028]);
    v85 = v108;
    v89 = &v108[*(v88 + 36)];
    v90 = sub_1A5248394();
    (*(v75 + 32))(&v89[*(v90 + 20)], v78, v74);
    *v89 = &unk_1A532FF28;
    *(v89 + 1) = v72;
    v84 = v107;
    (*(v106 + 32))(v85, v112, v107);
  }

  v91 = sub_1A5249A24();
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v94 = &v98 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249494();
  v116 = v113;
  v117 = MEMORY[0x1E69E6158];
  v118 = v64;
  v119 = v103;
  v95 = swift_getOpaqueTypeConformance2();
  v116 = v84;
  v117 = v95;
  swift_getOpaqueTypeConformance2();
  v96 = v111;
  sub_1A524AD14();
  (*(v92 + 8))(v94, v91);
  return (*(v110 + 8))(v85, v96);
}

uint64_t sub_1A431899C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  sub_1A431B2E8(0);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A431B2E8;
  sub_1A431B050(0, &qword_1EB138020, sub_1A431B0CC, sub_1A431B2E8);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v55 - v8;
  sub_1A431AF9C();
  v64 = v9;
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v55 - v12;
  sub_1A431AA7C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431B050(0, &qword_1EB137F68, sub_1A431A754, sub_1A431AA7C);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  sub_1A431A6A0();
  v56 = v22;
  v67 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v55 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v66 = &v55 - v25;
  v70 = a1;
  *v16 = sub_1A5249584();
  *(v16 + 1) = 0x4030000000000000;
  v16[16] = 0;
  sub_1A4320554(0, &qword_1EB138180, &qword_1EB137FB8, sub_1A431AAE0);
  sub_1A431C7B8(&v16[*(v26 + 44)]);
  v27 = sub_1A524A064();
  sub_1A5247BC4();
  v28 = &v16[*(v14 + 36)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_1A431A754(0);
  sub_1A4321068(&qword_1EB137FE0, sub_1A431A754, sub_1A431AD9C, sub_1A431AF68);
  sub_1A431B928(&qword_1EB138008, sub_1A431AA7C, &qword_1EB138010, sub_1A431AAA4);
  sub_1A524BA64();
  sub_1A5248164();
  sub_1A431AC68();
  v33 = v66;
  sub_1A524ADE4();
  (*(v19 + 8))(v21, v18);
  v69 = a1;
  *v5 = sub_1A5249584();
  *(v5 + 1) = 0x4030000000000000;
  v5[16] = 0;
  sub_1A4320554(0, &qword_1EB138188, &qword_1EB138050, sub_1A431B3D4);
  sub_1A431D83C(a1, &v5[*(v34 + 44)]);
  LOBYTE(v21) = sub_1A524A064();
  sub_1A5247BC4();
  v35 = &v5[*(v59 + 36)];
  *v35 = v21;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  sub_1A431B0CC();
  sub_1A431B884();
  sub_1A431B928(&qword_1EB1380B0, v58, &qword_1EB1380B8, sub_1A431B310);
  v40 = v57;
  sub_1A524BA64();
  sub_1A5248164();
  sub_1A431B794();
  v41 = v68;
  v42 = v62;
  sub_1A524ADE4();
  (*(v63 + 8))(v40, v42);
  v43 = *(v67 + 16);
  v45 = v55;
  v44 = v56;
  v43(v55, v33, v56);
  v46 = v60;
  v47 = v61;
  v48 = *(v61 + 16);
  v49 = v64;
  v48(v60, v41, v64);
  v50 = v65;
  v43(v65, v45, v44);
  sub_1A431A630();
  v48(&v50[*(v51 + 48)], v46, v49);
  v52 = *(v47 + 8);
  v52(v68, v49);
  v53 = *(v67 + 8);
  v53(v66, v44);
  v52(v46, v49);
  return (v53)(v45, v44);
}

uint64_t sub_1A43190AC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmarksEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B24();
  sub_1A4320E88(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A43201E0(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LemonadeBookmarksEditView);
  return MEMORY[0x1A5906A80](v7, sub_1A432052C, v9);
}

uint64_t sub_1A4319228(uint64_t a1)
{
  v2 = sub_1A5249234();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697BF90];
  v6 = MEMORY[0x1E697DCB8];
  sub_1A43208C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = sub_1A5248284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LemonadeBookmarksEditView(0);
  sub_1A432010C(a1 + *(v14 + 28), v9, &unk_1EB128A60, v5, v6, sub_1A43208C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v17 + 8))(v4, v18);
  }

  sub_1A5248274();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1A43194EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4319584, v5, v4);
}

void sub_1A4319584()
{
  v1 = *(*(**(v0 + 80) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
  if (v1)
  {
    sub_1A3C341C8(v1 + 16, v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v5 = (*(v3 + 32) + **(v3 + 32));
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1A43196D8;

    v5(v2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A43196D8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1A4319800, v4, v3);
}

uint64_t sub_1A4319800()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1A4319928(sub_1A43204C0, v3, v1);

  *(v0 + 56) = *(v2 + *(type metadata accessor for LemonadeBookmarksEditView(0) + 32));
  *(v0 + 72) = v4;
  sub_1A43208C0(0, &qword_1EB121C00, sub_1A431F49C, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A4319928(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1A431FD50(0, v5, 0);
  v6 = v16;
  v9 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(v15, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1A431FD50((v12 > 1), v13 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v13 + 1;
    sub_1A3C34460(v15, v6 + 40 * v13 + 32);
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4319A90(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v24 = a1;
  v25 = a2;
  v6 = sub_1A52413E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52414C4();
  sub_1A431A9A0(&qword_1EB12AF60, MEMORY[0x1E6969B50]);
  v10 = sub_1A524D004();
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1A3FD1D1C(0, v10 & ~(v10 >> 63), 0);
    v27 = v31;
    sub_1A524CFD4();
    if ((v10 & 0x8000000000000000) == 0)
    {
      v21 = v7;
      v22 = v6;
      v12 = 0;
      v23 = v10;
      while (!__OFADD__(v12, 1))
      {
        v26 = v12 + 1;
        v13 = v5;
        v5 = v9;
        v14 = sub_1A524D0C4();
        v28 = *v15;
        v14(v29, 0);
        v24(&v30, &v28);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        v16 = v30;
        v17 = v27;
        v31 = v27;
        v19 = *(v27 + 16);
        v18 = *(v27 + 24);
        if (v19 >= v18 >> 1)
        {
          v27 = v30;
          sub_1A3FD1D1C((v18 > 1), v19 + 1, 1);
          v16 = v27;
          v17 = v31;
        }

        *(v17 + 16) = v19 + 1;
        v27 = v17;
        *(v17 + 8 * v19 + 32) = v16;
        v9 = v5;
        v5 = v13;
        sub_1A524D044();
        ++v12;
        if (v26 == v23)
        {
          (*(v21 + 8))(v9, v22);
          return v27;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*(v21 + 8))(v5, v22);

    __break(1u);
  }

  return result;
}

void sub_1A4319D48()
{
  if (!qword_1EB137F00)
  {
    sub_1A4319F0C();
    sub_1A431A0A0();
    sub_1A431A1E8();
    sub_1A3D6DF58();
    sub_1A431A2B0();
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F00);
    }
  }
}

void sub_1A4319F0C()
{
  if (!qword_1EB137F08)
  {
    sub_1A431A0A0();
    sub_1A431A1E8();
    sub_1A3D6DF58();
    sub_1A431A2B0();
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F08);
    }
  }
}

void sub_1A431A0A0()
{
  if (!qword_1EB137F10)
  {
    sub_1A431A1E8();
    sub_1A3D6DF58();
    sub_1A431A2B0();
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB121B60, sub_1A3D6DF58);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F10);
    }
  }
}

void sub_1A431A1E8()
{
  if (!qword_1EB137F18)
  {
    sub_1A431A2B0();
    sub_1A4321068(&qword_1EB1380D8, sub_1A431A2B0, sub_1A431BBD8, sub_1A3FF81F0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F18);
    }
  }
}

void sub_1A431A2B0()
{
  if (!qword_1EB137F20)
  {
    sub_1A431A378(255, &qword_1EB137F28, sub_1A431A3EC, sub_1A3FF7EE8);
    sub_1A43208C0(255, &qword_1EB130238, sub_1A3FF7FB0, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137F20);
    }
  }
}

void sub_1A431A378(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A431A3EC()
{
  if (!qword_1EB137F30)
  {
    sub_1A431A470(255);
    sub_1A431BA50();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F30);
    }
  }
}

void sub_1A431A4AC()
{
  if (!qword_1EB137F40)
  {
    sub_1A431A580();
    sub_1A52484F4();
    sub_1A431A9A0(&qword_1EB1380C8, sub_1A431A580);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F40);
    }
  }
}

void sub_1A431A580()
{
  if (!qword_1EB137F48)
  {
    sub_1A43208C0(255, &qword_1EB137F50, sub_1A431A630, MEMORY[0x1E6981F40]);
    sub_1A431B9C8();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137F48);
    }
  }
}

void sub_1A431A630()
{
  if (!qword_1EB137F58)
  {
    sub_1A431A6A0();
    sub_1A431AF9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137F58);
    }
  }
}

void sub_1A431A6A0()
{
  if (!qword_1EB137F60)
  {
    sub_1A431B050(255, &qword_1EB137F68, sub_1A431A754, sub_1A431AA7C);
    sub_1A431AC68();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F60);
    }
  }
}

void sub_1A431A7BC()
{
  if (!qword_1EB137F80)
  {
    sub_1A3C2DEB8(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A43208C0(255, &qword_1EB137F88, sub_1A431A8A4, MEMORY[0x1E69E6720]);
    sub_1A4035564();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137F80);
    }
  }
}

void sub_1A431A8A4()
{
  if (!qword_1EB137F90)
  {
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    sub_1A431A948();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB137F90);
    }
  }
}

unint64_t sub_1A431A948()
{
  result = qword_1EB1B7800;
  if (!qword_1EB1B7800)
  {
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B7800);
  }

  return result;
}

uint64_t sub_1A431A9A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A431A9E8()
{
  if (!qword_1EB137F98)
  {
    sub_1A5248944();
    sub_1A431A9A0(&qword_1EB137FA0, MEMORY[0x1E697C230]);
    v0 = sub_1A52499B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137F98);
    }
  }
}

void sub_1A431AAE0()
{
  if (!qword_1EB137FC0)
  {
    sub_1A43208C0(255, &qword_1EB137FC8, MEMORY[0x1E697D6D0], MEMORY[0x1E69E6720]);
    sub_1A431FCD4(255, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB137FC0);
    }
  }
}

unint64_t sub_1A431ABE0()
{
  result = qword_1EB137FD0;
  if (!qword_1EB137FD0)
  {
    sub_1A43208C0(255, &qword_1EB137FB8, sub_1A431AAE0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FD0);
  }

  return result;
}

unint64_t sub_1A431AC68()
{
  result = qword_1EB137FD8;
  if (!qword_1EB137FD8)
  {
    sub_1A431B050(255, &qword_1EB137F68, sub_1A431A754, sub_1A431AA7C);
    sub_1A4321068(&qword_1EB137FE0, sub_1A431A754, sub_1A431AD9C, sub_1A431AF68);
    sub_1A431B928(&qword_1EB138008, sub_1A431AA7C, &qword_1EB138010, sub_1A431AAA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FD8);
  }

  return result;
}

unint64_t sub_1A431ADE4()
{
  result = qword_1EB137FF0;
  if (!qword_1EB137FF0)
  {
    sub_1A431A7BC();
    sub_1A431AE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FF0);
  }

  return result;
}

unint64_t sub_1A431AE5C()
{
  result = qword_1EB137FF8;
  if (!qword_1EB137FF8)
  {
    sub_1A43208C0(255, &qword_1EB137F88, sub_1A431A8A4, MEMORY[0x1E69E6720]);
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    sub_1A431A948();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137FF8);
  }

  return result;
}

void sub_1A431AF9C()
{
  if (!qword_1EB138018)
  {
    sub_1A431B050(255, &qword_1EB138020, sub_1A431B0CC, sub_1A431B2E8);
    sub_1A431B794();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138018);
    }
  }
}

void sub_1A431B050(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A524BA74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A431B0CC()
{
  if (!qword_1EB138028)
  {
    sub_1A3C34398(255, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
    sub_1A431B190();
    sub_1A431B264();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138028);
    }
  }
}

void sub_1A431B190()
{
  if (!qword_1EB138030)
  {
    sub_1A431B210();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138030);
    }
  }
}

unint64_t sub_1A431B210()
{
  result = qword_1EB1B7808[0];
  if (!qword_1EB1B7808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B7808);
  }

  return result;
}

unint64_t sub_1A431B264()
{
  result = qword_1EB138038;
  if (!qword_1EB138038)
  {
    sub_1A3C34398(255, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138038);
  }

  return result;
}

void sub_1A431B34C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    a5();
    v7 = sub_1A524B894();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A431B3D4()
{
  if (!qword_1EB138058)
  {
    sub_1A524B9A4();
    sub_1A4320408(255, &qword_1EB138060, sub_1A431B468);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138058);
    }
  }
}

void sub_1A431B468()
{
  if (!qword_1EB138068)
  {
    sub_1A431B504(255, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
    sub_1A431B67C();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138068);
    }
  }
}

void sub_1A431B504(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    a5();
    v7 = sub_1A524B784();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A431B58C()
{
  if (!qword_1EB138080)
  {
    type metadata accessor for LemonadeBookmarksEditView.ItemLabel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138080);
    }
  }
}

unint64_t sub_1A431B5F4()
{
  result = qword_1EB138088;
  if (!qword_1EB138088)
  {
    sub_1A43208C0(255, &qword_1EB138078, sub_1A431B58C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138088);
  }

  return result;
}

unint64_t sub_1A431B67C()
{
  result = qword_1EB138090;
  if (!qword_1EB138090)
  {
    sub_1A431B504(255, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138090);
  }

  return result;
}

unint64_t sub_1A431B70C()
{
  result = qword_1EB138098;
  if (!qword_1EB138098)
  {
    sub_1A43208C0(255, &qword_1EB138050, sub_1A431B3D4, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138098);
  }

  return result;
}

unint64_t sub_1A431B794()
{
  result = qword_1EB1380A0;
  if (!qword_1EB1380A0)
  {
    sub_1A431B050(255, &qword_1EB138020, sub_1A431B0CC, sub_1A431B2E8);
    sub_1A431B884();
    sub_1A431B928(&qword_1EB1380B0, sub_1A431B2E8, &qword_1EB1380B8, sub_1A431B310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380A0);
  }

  return result;
}

unint64_t sub_1A431B884()
{
  result = qword_1EB1380A8;
  if (!qword_1EB1380A8)
  {
    sub_1A431B0CC();
    sub_1A431B210();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380A8);
  }

  return result;
}

uint64_t sub_1A431B928(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A431A9A0(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A431B9C8()
{
  result = qword_1EB1380C0;
  if (!qword_1EB1380C0)
  {
    sub_1A43208C0(255, &qword_1EB137F50, sub_1A431A630, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380C0);
  }

  return result;
}

unint64_t sub_1A431BA50()
{
  result = qword_1EB1380D0;
  if (!qword_1EB1380D0)
  {
    sub_1A431A470(255);
    sub_1A431A580();
    sub_1A52484F4();
    sub_1A431A9A0(&qword_1EB1380C8, sub_1A431A580);
    swift_getOpaqueTypeConformance2();
    sub_1A431BB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380D0);
  }

  return result;
}

unint64_t sub_1A431BB50()
{
  result = qword_1EB1220E8;
  if (!qword_1EB1220E8)
  {
    sub_1A43208C0(255, &qword_1EB1220E0, sub_1A3D6D828, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1220E8);
  }

  return result;
}

unint64_t sub_1A431BBD8()
{
  result = qword_1EB1380E0;
  if (!qword_1EB1380E0)
  {
    sub_1A431A378(255, &qword_1EB137F28, sub_1A431A3EC, sub_1A3FF7EE8);
    sub_1A431A470(255);
    sub_1A431BA50();
    swift_getOpaqueTypeConformance2();
    sub_1A431A9A0(&qword_1EB130260, sub_1A3FF7EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1380E0);
  }

  return result;
}

void sub_1A431BCF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v4 = type metadata accessor for LemonadeBookmarksEditView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v22 = sub_1A5243164();
  KeyPath = swift_getKeyPath();
  v20 = type metadata accessor for LemonadeBookmarksEditView;
  sub_1A4320E88(a1, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1A43201E0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A3C2DEB8(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A43208C0(0, &qword_1EB137F88, sub_1A431A8A4, MEMORY[0x1E69E6720]);
  sub_1A4035564();
  sub_1A431AE5C();
  sub_1A524B9B4();
  v10 = v20;
  v9 = v21;
  sub_1A4320E88(v21, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v11 = swift_allocObject();
  sub_1A43201E0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, type metadata accessor for LemonadeBookmarksEditView);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1A4320D30;
  *(v12 + 24) = v11;
  sub_1A431A788(0);
  v14 = (a2 + *(v13 + 36));
  *v14 = sub_1A3F36A00;
  v14[1] = v12;
  sub_1A4320E88(v9, &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = swift_allocObject();
  sub_1A43201E0(&KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v7, type metadata accessor for LemonadeBookmarksEditView);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1A4320DB0;
  *(v16 + 24) = v15;
  sub_1A431A754(0);
  v18 = (a2 + *(v17 + 36));
  *v18 = sub_1A4320E20;
  v18[1] = v16;
}

uint64_t sub_1A431C004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A274();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeBookmarksEditView.ItemLabel(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A431A8A4();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v35[0] = *a1;
  v35[1] = v15;
  v16 = sub_1A52431A4();
  if (v16)
  {
    v31[0] = v4;
    v31[1] = v7;
    v32 = v11;
    v33 = a2;
    v17 = *(*v16 + 160);
    v17(v35);
    v19 = v36;
    v18 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v20 = (*(v18 + 56))(v19, v18);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      sub_1A3F9670C(v35);
      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v25 = sub_1A3F9670C(v35);
    }

    (v17)(v35, v25);
    v27 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v22 = (*(v28 + 64))(v27, v28);
    v23 = v29;
    sub_1A3F9670C(v35);
LABEL_10:
    v35[0] = 0x4036000000000000;
    (*(v34 + 104))(v6, *MEMORY[0x1E6980F10], v31[0]);
    sub_1A3F185D4();
    sub_1A52480B4();
    *v9 = v22;
    v9[1] = v23;
    v9[2] = 0;
    v9[3] = 0;
    sub_1A5248164();
    sub_1A431A948();
    sub_1A524ABD4();

    sub_1A4320374(v9, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
    v11 = v32;
    a2 = v33;
    (*(v12 + 32))(v33, v14, v32);
    v26 = 0;
    return (*(v12 + 56))(a2, v26, 1, v11);
  }

  v26 = 1;
  return (*(v12 + 56))(a2, v26, 1, v11);
}

uint64_t sub_1A431C394(uint64_t a1, unint64_t a2, void *a3)
{
  v18 = a2;
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v20 = a3;
  v11 = sub_1A4319A90(sub_1A43210F4, v19);
  sub_1A431A9A0(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
  sub_1A524E214();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v14 = *v13++;
      v21 = v14;
      sub_1A524E154();
      --v12;
    }

    while (v12);
  }

  (*(v5 + 32))(v10, v7, v4);
  result = sub_1A431EAEC(v18);
  if (*(*(*a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48))
  {
    v16 = result;

    sub_1A42E2204(v10, v16);

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A431C5B4(uint64_t a1, void *a2)
{
  v3 = sub_1A52414C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  v16 = a2;
  v10 = sub_1A4319A90(sub_1A4320E48, v15);
  sub_1A431A9A0(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
  sub_1A524E214();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      v13 = *v12++;
      v17 = v13;
      sub_1A524E154();
      --v11;
    }

    while (v11);
  }

  result = (*(v4 + 32))(v9, v6, v3);
  if (*(*(*a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48))
  {

    sub_1A42E1E60(v9);

    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A431C7B8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A43208C0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v56 - v3;
  v57 = sub_1A524A274();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A431FCD4(0, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v56 - v11;
  v12 = sub_1A524B9A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43208C0(0, &qword_1EB137FC8, MEMORY[0x1E697D6D0], v1);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = *(sub_1A5243164() + 16);

  v59 = v20;
  if (v21)
  {
    sub_1A524B994();
    (*(v13 + 32))(v20, v15, v12);
    (*(v13 + 56))(v20, 0, 1, v12);
  }

  else
  {
    (*(v13 + 56))(v20, 1, 1, v12);
  }

  v64 = sub_1A3C38BD4();
  v65 = v22;
  sub_1A3D5F9DC();
  v23 = sub_1A524A464();
  v25 = v24;
  v27 = v26;
  v28 = v57;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980F38], v57);
  v29 = sub_1A524A154();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  sub_1A524A1C4();
  v30 = MEMORY[0x1E69E6720];
  v56 = sub_1A43208C0;
  sub_1A4320180(v4, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1A43208C0);
  (*(v5 + 8))(v7, v28);
  v31 = sub_1A524A3C4();
  v33 = v32;
  LOBYTE(v28) = v34;

  sub_1A3E04DF4(v23, v25, v27 & 1);

  sub_1A524B4A4();
  v35 = sub_1A524A364();
  v37 = v36;
  v39 = v38;
  v57 = v40;

  sub_1A3E04DF4(v31, v33, v28 & 1);

  v41 = v61;
  v42 = &v61[*(v58 + 36)];
  sub_1A43208C0(0, &unk_1EB127810, sub_1A431ABAC, MEMORY[0x1E6980A08]);
  v44 = *(v43 + 28);
  v45 = *MEMORY[0x1E6980FD8];
  v46 = sub_1A524A394();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v42 + v44, v45, v46);
  (*(v47 + 56))(v42 + v44, 0, 1, v46);
  *v42 = swift_getKeyPath();
  *v41 = v35;
  *(v41 + 8) = v37;
  *(v41 + 16) = v39 & 1;
  *(v41 + 24) = v57;
  v48 = MEMORY[0x1E697D6D0];
  v50 = v59;
  v49 = v60;
  sub_1A432010C(v59, v60, &qword_1EB137FC8, MEMORY[0x1E697D6D0], v30, sub_1A43208C0);
  v51 = v62;
  sub_1A4320B80(v41, v62);
  v52 = v63;
  sub_1A432010C(v49, v63, &qword_1EB137FC8, v48, v30, sub_1A43208C0);
  sub_1A431AAE0();
  sub_1A4320B80(v51, v52 + *(v53 + 48));
  sub_1A4320C10(v41);
  v54 = v56;
  sub_1A4320180(v50, &qword_1EB137FC8, v48, v30, v56);
  sub_1A4320C10(v51);
  return sub_1A4320180(v49, &qword_1EB137FC8, v48, v30, v54);
}

void sub_1A431CE98(uint64_t a1@<X8>)
{
  sub_1A43208C0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A524A274();
  MEMORY[0x1EEE9AC00](v4);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_1A43202F8(0, &qword_1EB138120, &qword_1EB138128, sub_1A431FC14);
  sub_1A431D108(v1, a1 + *(v5 + 44));
}

void sub_1A431D108(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11[1] = a2;
  sub_1A431FCAC(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A43208C0(0, &qword_1EB138138, sub_1A431FCAC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v7);
  if (a1[3])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  (*(v5 + 56))(v11 - v8, 1, 1, v4);
  if (a1[1])
  {
    v9 = *a1;
    v10 = a1[1];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11[2] = v9;
  v11[3] = v10;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A431D54C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmarksEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v16 = *(a1 + *(v5 + 40));
  sub_1A43208C0(0, &qword_1EB121C00, sub_1A431F49C, MEMORY[0x1E6981790]);
  v6 = sub_1A524B6A4();
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v6);
    OpaqueTypeConformance2 = a1;
    v8 = sub_1A431E714(sub_1A4320B20, (&v14 - 4), v7);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v15 = v8;
  swift_getKeyPath();
  sub_1A4320E88(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A43201E0(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A3C34398(0, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
  sub_1A431B190();
  sub_1A431B264();
  v11 = sub_1A431B210();
  *&v16 = &type metadata for LemonadeBookmarksEditView.SuggestionItem;
  *(&v16 + 1) = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_1A524B9B4();
}

uint64_t sub_1A431D7E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1A431D83C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for LemonadeBookmarksEditView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = sub_1A431B468;
  sub_1A4320408(0, &qword_1EB138060, sub_1A431B468);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_1A524B9A4();
  v40 = *(v12 - 8);
  v13 = v40;
  v41 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v39 = &v37 - v17;
  sub_1A524B994();
  sub_1A4320E88(a1, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1A43201E0(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A431B504(0, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
  sub_1A431B67C();
  sub_1A524B704();
  v21 = sub_1A524A084();
  sub_1A5247BC4();
  v22 = &v11[*(v7 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = *(v13 + 16);
  v38 = v15;
  v28 = v18;
  v29 = v41;
  v27(v15, v28, v41);
  v31 = v42;
  v30 = v43;
  sub_1A432010C(v11, v42, &qword_1EB138060, v43, MEMORY[0x1E697E5E0], sub_1A4320408);
  v32 = v44;
  v27(v44, v15, v29);
  sub_1A431B3D4();
  v34 = MEMORY[0x1E697E5E0];
  sub_1A432010C(v31, &v32[*(v33 + 48)], &qword_1EB138060, v30, MEMORY[0x1E697E5E0], sub_1A4320408);
  sub_1A4320180(v11, &qword_1EB138060, v30, v34, sub_1A4320408);
  v35 = *(v40 + 8);
  v35(v39, v29);
  sub_1A4320180(v31, &qword_1EB138060, v30, v34, sub_1A4320408);
  return (v35)(v38, v29);
}

uint64_t sub_1A431DC68(uint64_t *a1)
{
  v2 = type metadata accessor for LemonadeBookmarksEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *a1;
  sub_1A4320E88(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksEditView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1A43201E0(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeBookmarksEditView);
  sub_1A4429F18(v5, sub_1A432085C, v7);
}

uint64_t sub_1A431DD9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = 0;
  sub_1A43202F8(0, &qword_1EB138160, &qword_1EB138078, sub_1A431B58C);
  return sub_1A431DE04((a1 + *(v2 + 44)));
}

uint64_t sub_1A431DE04@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A524A274();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeBookmarksEditView.ItemLabel(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v18 - v10);
  v12 = sub_1A524B384();
  v13 = sub_1A3C38BD4();
  v15 = v14;
  v18[1] = 0x4036000000000000;
  (*(v3 + 104))(v5, *MEMORY[0x1E6980F10], v2);
  sub_1A3F185D4();
  sub_1A52480B4();
  *v11 = v13;
  v11[1] = v15;
  v11[2] = 0;
  v11[3] = 0;
  sub_1A4320E88(v11, v8, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  *a1 = v12;
  sub_1A431B58C();
  sub_1A4320E88(v8, a1 + *(v16 + 48), type metadata accessor for LemonadeBookmarksEditView.ItemLabel);

  sub_1A4320374(v11, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  sub_1A4320374(v8, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
}

uint64_t sub_1A431E030(void *a1)
{
  v2 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[4];
  v6 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v5 + 48))(v6, v5);
  sub_1A42E0F5C(v4);
  return sub_1A4320374(v4, type metadata accessor for LemonadeBookmark);
}

uint64_t sub_1A431E108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a2;
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LemonadeBookmarksEditView.ItemLabel(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v22 - v11);
  v13 = sub_1A524B424();
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 56))(v14, v15);
  v18 = v17;
  v22[1] = 0x4036000000000000;
  (*(v4 + 104))(v6, *MEMORY[0x1E6980F10], v3);
  sub_1A3F185D4();
  sub_1A52480B4();
  *v12 = v16;
  v12[1] = v18;
  v12[2] = 0;
  v12[3] = 0;
  sub_1A4320E88(v12, v9, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  v19 = v22[0];
  *v22[0] = v13;
  sub_1A431B58C();
  sub_1A4320E88(v9, v19 + *(v20 + 48), type metadata accessor for LemonadeBookmarksEditView.ItemLabel);

  sub_1A4320374(v12, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
  sub_1A4320374(v9, type metadata accessor for LemonadeBookmarksEditView.ItemLabel);
}

uint64_t sub_1A431E350()
{
  sub_1A4320248(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  v1[1] = v4[0];
  v1[2] = v2;
  v1[3] = v4[2];
  sub_1A431B504(0, &qword_1EB138070, &qword_1EB138078, sub_1A431B58C, sub_1A431B5F4);
  sub_1A431B67C();
  return sub_1A524B704();
}

void sub_1A431E440(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1A524B544();
  sub_1A3EE213C();
  v6 = (a1 + *(v5 + 36));
  sub_1A43208C0(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x1E69816C0];
  v10 = sub_1A524B5B4();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *v6 = swift_getKeyPath();
  *a1 = v4;
  sub_1A43203D4(0);
  *(a1 + *(v11 + 36)) = v3;

  LOBYTE(v3) = sub_1A524A094();
  sub_1A5247BC4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1A4320408(0, &qword_1EB138168, sub_1A43203D4);
  v21 = a1 + *(v20 + 36);
  *v21 = v3;
  *(v21 + 1) = v13;
  *(v21 + 2) = v15;
  *(v21 + 3) = v17;
  *(v21 + 4) = v19;
  v21[40] = 0;
}

void sub_1A431E5C8(void *a1, void *a2)
{
  v4 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(*a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
  if (v7)
  {
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = *(v9 + 48);

    v10(v8, v9);
    (*(*v7 + 368))(v6);

    sub_1A4320374(v6, type metadata accessor for LemonadeBookmark);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A431E714(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1A3C341C8(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1A3C34460(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A431FD50(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1A431FD50((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_1A3C34460(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_1A431E88C(uint64_t a1)
{
  sub_1A43208C0(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for LemonadeBookmark(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4320924(a1, &v14);
  if (!v15)
  {
    return sub_1A43209B4(&v14);
  }

  sub_1A3C34460(&v14, v16);
  v10 = sub_1A3C341C8(v16, &v14);
  v11 = sub_1A3FA19AC(v10);
  sub_1A3F9DD48(v11, v12, &v14, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0(v16);
    return sub_1A4320180(v5, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720], sub_1A43208C0);
  }

  else
  {
    result = sub_1A43201E0(v5, v9, type metadata accessor for LemonadeBookmark);
    if (*(*(*v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48))
    {

      sub_1A42E0F5C(v9);

      sub_1A4320374(v9, type metadata accessor for LemonadeBookmark);
      return __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A431EAEC(unint64_t a1)
{
  v3 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(sub_1A5243164() + 16);

  if (v4 <= a1)
  {
    v6 = *(*(*v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
    if (v6)
    {
      v7 = *(*v6 + 328);

      v9 = v7(v8);

      v10 = *(v9 + 16);

      return v10;
    }
  }

  else
  {
    result = sub_1A5243164();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 16) > a1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  __break(1u);
  __break(1u);
  return result;
}

double sub_1A431ED94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = type metadata accessor for LemonadeBookmarksEditView(0);
  v5 = v4[6];
  *(a3 + v5) = swift_getKeyPath();
  v6 = MEMORY[0x1E697DCB8];
  sub_1A43208C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A43208C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], v6);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  sub_1A431F49C();
  sub_1A524B694();
  result = *&v10;
  *(a3 + v8) = v10;
  return result;
}

void sub_1A431EEAC()
{
  sub_1A43208C0(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v1);
  v2 = [objc_opt_self() sharedPhotoLibrary];
  type metadata accessor for LemonadeBookmarksManager(0);
  v3 = type metadata accessor for LemonadeMockBookmarksDataSource();
  v4 = v2;
  v5 = sub_1A495E4AC();
  v7 = v3;
  v8 = sub_1A431A9A0(&qword_1EB13D0D0, type metadata accessor for LemonadeMockBookmarksDataSource);
  *&v6 = v5;
  LemonadeBookmarksManager.__allocating_init(photoLibrary:dataSource:)(v4, &v6);
}

uint64_t sub_1A431F2B4(uint64_t a1)
{
  v2 = sub_1A432046C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A431F300(uint64_t a1)
{
  v2 = sub_1A432046C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A431F34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A431F3D4()
{
  v2 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A43194EC(v4, v5, v0 + v3);
}

void sub_1A431F49C()
{
  if (!qword_1EB120CA0)
  {
    sub_1A3C34398(255, &qword_1EB120CA8, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120CA0);
    }
  }
}

void sub_1A431F55C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A43208C0(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A431F650()
{
  result = qword_1EB138108;
  if (!qword_1EB138108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138108);
  }

  return result;
}

void sub_1A431F6E8()
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v0 <= 0x3F)
  {
    sub_1A40EE918();
    if (v1 <= 0x3F)
    {
      sub_1A43208C0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A43208C0(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A43208C0(319, &qword_1EB121C00, sub_1A431F49C, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A431F8D0()
{
  result = qword_1EB127950;
  if (!qword_1EB127950)
  {
    sub_1A43208C0(255, &qword_1EB127948, sub_1A3D639F0, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127950);
  }

  return result;
}

unint64_t sub_1A431F958()
{
  result = qword_1EB127780;
  if (!qword_1EB127780)
  {
    sub_1A43208C0(255, &unk_1EB127770, sub_1A3E7D368, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127780);
  }

  return result;
}

uint64_t sub_1A431F9F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A431FA38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A431FAA8()
{
  if (!qword_1EB128978)
  {
    sub_1A3F185D4();
    v0 = sub_1A52480E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128978);
    }
  }
}

void sub_1A431FB18()
{
  sub_1A3C2DEB8(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A431FAA8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A431FC14()
{
  if (!qword_1EB138130)
  {
    sub_1A43208C0(255, &qword_1EB138138, sub_1A431FCAC, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138130);
    }
  }
}

void sub_1A431FCD4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6980A08]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1A431FD50(void *a1, int64_t a2, char a3)
{
  result = sub_1A431FD70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A431FD70(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A3C34398(0, &qword_1EB138178, &qword_1EB125408, &protocol descriptor for LemonadeCollectionBookmarkModel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C34400(0, &qword_1EB125408);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A431FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  a6(a1, &v14 - v11);
  return a7(v12);
}

void sub_1A431FFE4()
{
  if (!qword_1EB138148)
  {
    sub_1A431B504(255, &qword_1EB138150, &qword_1EB138128, sub_1A431FC14, sub_1A4320084);
    sub_1A3EC18C4();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138148);
    }
  }
}

unint64_t sub_1A4320084()
{
  result = qword_1EB138158;
  if (!qword_1EB138158)
  {
    sub_1A43208C0(255, &qword_1EB138128, sub_1A431FC14, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138158);
  }

  return result;
}

uint64_t sub_1A432010C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A4320180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A43201E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4320288@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = 0;
  sub_1A43202F8(0, &qword_1EB138160, &qword_1EB138078, sub_1A431B58C);
  return sub_1A431E108(v3, a1 + *(v4 + 44));
}

void sub_1A43202F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A4320374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4320408(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1A432046C()
{
  result = qword_1EB138170;
  if (!qword_1EB138170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138170);
  }

  return result;
}

uint64_t sub_1A43204C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(**(v2 + 16) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

  sub_1A3CA015C(a1, v5, a2);
}

void sub_1A4320554(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A43208C0(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_49Tm()
{
  v1 = type metadata accessor for LemonadeBookmarksEditView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_1A43208C0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 28);
  sub_1A43208C0(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A43207E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A43208C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4320924(uint64_t a1, uint64_t a2)
{
  sub_1A3C34398(0, &qword_1EB124AA0, &qword_1EB128C70, off_1E77211E8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43209B4(uint64_t a1)
{
  sub_1A3C34398(0, &qword_1EB124AA0, &qword_1EB128C70, off_1E77211E8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4320A3C(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  result = sub_1A3C341C8(a1, v7);
  v6 = *(*(*(v1 + v4) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 48);
  if (v6)
  {
    sub_1A3C34460(v7, v8);
    v9 = v6;

    sub_1A5248164();
    sub_1A431B210();
    sub_1A524ABD4();
    return sub_1A4320B50(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4320B80(uint64_t a1, uint64_t a2)
{
  sub_1A431FCD4(0, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4320C10(uint64_t a1)
{
  sub_1A431FCD4(0, &qword_1EB124020, &unk_1EB127810, sub_1A431ABAC);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4320CB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LemonadeBookmarksEditView(0);

  return sub_1A431C004(a1, a2);
}

uint64_t sub_1A4320D30(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1A431C394(a1, a2, v6);
}

uint64_t sub_1A4320DB0(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmarksEditView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A431C5B4(a1, v4);
}

uint64_t sub_1A4320E48@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A431EAEC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A4320E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4320EF0()
{
  result = qword_1EB138198;
  if (!qword_1EB138198)
  {
    sub_1A431B504(255, &qword_1EB138150, &qword_1EB138128, sub_1A431FC14, sub_1A4320084);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138198);
  }

  return result;
}

unint64_t sub_1A4320F80()
{
  result = qword_1EB1381A8;
  if (!qword_1EB1381A8)
  {
    sub_1A4320408(255, &qword_1EB138168, sub_1A43203D4);
    sub_1A4321068(&qword_1EB123698, sub_1A43203D4, sub_1A3F37498, sub_1A3F33024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1381A8);
  }

  return result;
}

uint64_t sub_1A4321068(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A432110C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *sub_1A43D435C();
}

uint64_t sub_1A4321148()
{
  sub_1A4321CC4(0, &qword_1EB127F08, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v17 - v1);
  sub_1A4321478();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1A5242264();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0x662E6E6F73726570;
  v10[1] = 0xEB000000006C6C69;
  (*(v7 + 104))(v10, *MEMORY[0x1E69C1D38], v6, v8);
  v11 = sub_1A5242B94();
  (*(v7 + 8))(v10, v6);
  sub_1A3C7E8B0();
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v10) = [v12 allowProfileIcon];

  if (v10 && (sub_1A43216B4(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]), sub_1A5247C84(), v13 = sub_1A43D35A4(), , v13))
  {
    *v5 = sub_1A524BC74();
    v5[1] = v14;
    sub_1A4321948();
    sub_1A4321718(v11, v5 + *(v15 + 44));
    sub_1A43219E0(v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_1A432165C();
    sub_1A5249744();

    return sub_1A4321A44(v5);
  }

  else
  {
    *v2 = v11;
    swift_storeEnumTagMultiPayload();
    sub_1A432165C();
    return sub_1A5249744();
  }
}

void sub_1A4321478()
{
  if (!qword_1EB127348)
  {
    sub_1A43216B4(255, &qword_1EB127128, sub_1A432150C, MEMORY[0x1E6981F40]);
    sub_1A43215D4();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127348);
    }
  }
}

void sub_1A432150C()
{
  if (!qword_1EB128598)
  {
    sub_1A432157C();
    type metadata accessor for PersonFaceView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB128598);
    }
  }
}

void sub_1A432157C()
{
  if (!qword_1EB1285A0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1285A0);
    }
  }
}

unint64_t sub_1A43215D4()
{
  result = qword_1EB127130;
  if (!qword_1EB127130)
  {
    sub_1A43216B4(255, &qword_1EB127128, sub_1A432150C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127130);
  }

  return result;
}

unint64_t sub_1A432165C()
{
  result = qword_1EB127350;
  if (!qword_1EB127350)
  {
    sub_1A4321478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127350);
  }

  return result;
}

void sub_1A43216B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4321718@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1A5243624();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersonFaceView(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v20 - v14);
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2530], v4, v13);

  LOBYTE(v4) = sub_1A3C5A374();
  swift_unknownObjectRetain();
  sub_1A4308C80(v7, 0, v4 & 1, v15);
  v16 = *(v9 + 16);
  v16(v11, v15, v8);
  *a2 = a1;
  sub_1A432150C();
  v16(&a2[*(v17 + 48)], v11, v8);
  v18 = *(v9 + 8);

  v18(v15, v8);
  v18(v11, v8);
}

void sub_1A4321948()
{
  if (!qword_1EB124420)
  {
    sub_1A43216B4(255, &qword_1EB127128, sub_1A432150C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124420);
    }
  }
}

uint64_t sub_1A43219E0(uint64_t a1, uint64_t a2)
{
  sub_1A4321478();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4321A44(uint64_t a1)
{
  sub_1A4321478();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4321AA0()
{
  type metadata accessor for LemonadeUserInfoViewModel();

  return sub_1A5247C74();
}

uint64_t type metadata accessor for LemonadeProfileIconView()
{
  result = qword_1EB185C80;
  if (!qword_1EB185C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4321B8C()
{
  sub_1A43216B4(319, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A4321C28()
{
  result = qword_1EB127D08;
  if (!qword_1EB127D08)
  {
    sub_1A4321CC4(255, &qword_1EB127D00, MEMORY[0x1E697F960]);
    sub_1A432165C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D08);
  }

  return result;
}

void sub_1A4321CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A4321478();
    v7 = a3(a1, v6, MEMORY[0x1E6981748]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id PXUpdateBookmarksOrderAction.init(photoLibrary:orderedCollections:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhotoLibrary:a1 orderedCollections:a2];

  swift_unknownObjectRelease();
  return v3;
}

{
  *(v2 + OBJC_IVAR___PXUpdateBookmarksOrderAction_undoOrderedBookmarks) = 0;
  *(v2 + OBJC_IVAR___PXUpdateBookmarksOrderAction_redoOrderedBookmarks) = 0;
  *(v2 + OBJC_IVAR___PXUpdateBookmarksOrderAction_orderedCollections) = a2;
  v6.super_class = PXUpdateBookmarksOrderAction;
  v4 = objc_msgSendSuper2(&v6, sel_initWithPhotoLibrary_, a1);

  return v4;
}

void PXUpdateBookmarksOrderAction.perform(_:)()
{
  v1 = v0;
  v2 = [v0 orderedCollections];
  v3 = sub_1A3F9ECF0();
  swift_unknownObjectRelease();
  v4 = [v0 photoLibrary];
  v5 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v3;
  v8[4] = sub_1A432214C;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3C2E0D0;
  v8[3] = &block_descriptor_159;
  _Block_copy(v8);
  v7 = v1;

  px_dispatch_on_main_queue();
}

void sub_1A4322098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + OBJC_IVAR___PXUpdateBookmarksOrderAction_undoOrderedBookmarks) = (*(*a2 + 328))();

  sub_1A42E25CC(a3);
}

unint64_t type metadata accessor for PXUpdateBookmarksOrderAction()
{
  result = qword_1EB1B7968[0];
  if (!qword_1EB1B7968[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB1B7968);
  }

  return result;
}

void sub_1A43223D4(void *a1)
{
  v2 = [a1 orderedCollections];
  v3 = sub_1A3F9ECF0();
  swift_unknownObjectRelease();
  v4 = [a1 photoLibrary];
  v5 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = v5;
  v6[4] = v3;
  v8[4] = sub_1A4322584;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3C2E0D0;
  v8[3] = &block_descriptor_33_2;
  _Block_copy(v8);
  v7 = a1;

  px_dispatch_on_main_queue();
}

uint64_t objectdestroyTm_45()
{

  return swift_deallocObject();
}

uint64_t PhotosTabBadgesModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  sub_1A5241604();
  return v0;
}

uint64_t PhotosTabBadgesModel.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  sub_1A5241604();
  return v0;
}

void sub_1A432260C(uint64_t a1, unsigned __int8 *a2)
{
  v20 = a1;
  v3 = *a2;
  swift_getKeyPath();
  v4 = *(*v2 + 176);
  v5 = *v2 + 176;
  v4();

  v6 = swift_beginAccess();
  v7 = *(v2[2] + 16);
  v19 = v3;
  v18 = v4;
  v17[3] = v5;
  if (v7)
  {
    v6 = sub_1A3C345C4(v3);
    if (v8)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
  v17[2] = v17;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v9 + 2;
  if (v9[2])
  {
    sub_1A43231A4(v9 + 4);
  }

  v11 = *v10;
  v12 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v9;
  if (!isUniquelyReferenced_nonNull_native || v12 > v9[3] >> 1)
  {
    if (v11 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v9 = sub_1A3C3422C(isUniquelyReferenced_nonNull_native, v14, 1, v9);
    v22 = v9;
  }

  v15 = v18;
  sub_1A43233C8(v12, v11, 0);
  swift_getKeyPath();
  v15();

  v23 = v2;
  swift_getKeyPath();
  sub_1A3C34170();
  sub_1A52415F4();

  swift_beginAccess();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v2[2];
  v2[2] = 0x8000000000000000;
  sub_1A3C34478(v9, v19, v16);
  v2[2] = v21;
  swift_endAccess();
  v23 = v2;
  swift_getKeyPath();
  sub_1A52415E4();
}

void sub_1A4322C24()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4322CA0(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 176))();

  swift_beginAccess();
  *a2 = v3[2];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4322D30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  v5 = v3;
  v6 = v2;
  (*(*v3 + 184))();
}

uint64_t PhotosTabBadgesModel.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosTabBadgesModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosTabBadgesModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosTabBadgesModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t PhotosBadgableTabIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t PhotosTabBadgeValue.localizedString.getter()
{
  v1 = PXLocalizedStringFromInteger(*v0);
  v2 = sub_1A524C674();

  return v2;
}

void *sub_1A4323054()
{
  v1 = v0;
  sub_1A3C34630();
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
        v16 = v13 | (v8 << 6);
        v17 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + v16) = *(*(v2 + 48) + v16);
        *(*(v4 + 56) + 8 * v16) = v17;
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

void sub_1A43231A4(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v15);
  sub_1A524E424();
  v3 = AssociatedTypeWitness;
  v4 = AssociatedConformanceWitness;
  v5 = __swift_project_boxed_opaque_existential_1(v15, AssociatedTypeWitness);
  v18[3] = v3;
  v18[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1A524E424();
  v7 = v12;
  v8 = v13;
  v9 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v14[3] = v7;
  v14[4] = *(v8 + 8);
  v10 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  sub_1A5246794();
}

unint64_t sub_1A43233C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  sub_1A3C34400(0, &qword_1EB125F68);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A43234B8(uint64_t a1)
{
  sub_1A3C34398(0, &qword_1EB126FA8, &unk_1EB126FB0, MEMORY[0x1E69E6028], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A43235AC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void Image.makeSharedCollectionPreview()(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2, v4);
  v7 = sub_1A524B5C4();
  (*(v3 + 8))(v6, v2);
  sub_1A524BC74();
  sub_1A52481F4();
  v31 = 1;
  *&v30[8] = v32;
  *&v30[24] = v33;
  *&v30[40] = v34;
  sub_1A432388C();
  v9 = (a1 + *(v8 + 36));
  v10 = *(sub_1A5248A14() + 20);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1A52494A4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #20.0 }

  *v9 = _Q0;
  sub_1A3E42C88();
  *&v9[*(v18 + 36)] = 256;
  v19 = *&v30[18];
  *(a1 + 18) = *&v30[2];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 257;
  *(a1 + 34) = v19;
  *(a1 + 50) = *&v30[34];
  *(a1 + 64) = *&v30[48];
  LOBYTE(v7) = sub_1A524A074();
  sub_1A5247BC4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1A4323920(0);
  v29 = a1 + *(v28 + 36);
  *v29 = v7;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
}

void sub_1A432388C()
{
  if (!qword_1EB1381D0)
  {
    sub_1A43263CC(255, &qword_1EB1282F0, &qword_1EB128580, MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1381D0);
    }
  }
}

void sub_1A432395C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A43239C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A4323A30(a1 + *(v2 + 44));
}

uint64_t sub_1A4323A30@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-v12];
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2, v11);
  v14 = sub_1A524B5C4();
  (*(v3 + 8))(v5, v2);
  sub_1A524BC74();
  sub_1A52481F4();
  v38 = 1;
  *&v37[6] = v39;
  *&v37[22] = v40;
  *&v37[38] = v41;
  sub_1A432388C();
  v16 = &v13[*(v15 + 36)];
  v17 = *(sub_1A5248A14() + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1A52494A4();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #20.0 }

  *v16 = _Q0;
  sub_1A3E42C88();
  *&v16[*(v25 + 36)] = 256;
  v26 = *&v37[16];
  *(v13 + 18) = *v37;
  *v13 = v14;
  *(v13 + 1) = 0;
  *(v13 + 8) = 257;
  *(v13 + 34) = v26;
  *(v13 + 50) = *&v37[32];
  *(v13 + 8) = *&v37[46];
  LOBYTE(v14) = sub_1A524A074();
  sub_1A5247BC4();
  v27 = &v13[*(v7 + 44)];
  *v27 = v14;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  sub_1A4328120(v13, v9, sub_1A4323920);
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_1A4327B34(0);
  v33 = v32;
  sub_1A4328120(v9, a1 + *(v32 + 48), sub_1A4323920);
  v34 = a1 + *(v33 + 64);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_1A4327C20(v13, sub_1A4323920);
  return sub_1A4327C20(v9, sub_1A4323920);
}

uint64_t sub_1A4323D60@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5242264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = 0x6F746F6870;
  v6[1] = 0xE500000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x1E69C1D38], v2, v4);
  v7 = sub_1A5242B94();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_1A4323E70@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v2 = sub_1A5243834();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5243844();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[0] = sub_1A5243374();
  MEMORY[0x1EEE9AC00](v12[0]);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 32);
  swift_unknownObjectRetain_n();
  sub_1A5243384();
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2680], v2);
  swift_unknownObjectRetain();
  v10 = v9;
  sub_1A5243814();
  sub_1A4327924(v7, v8);
  sub_1A4327A6C();
  sub_1A4326434(&qword_1EB138418, MEMORY[0x1E69C2440]);
  sub_1A4326434(&qword_1EB138420, sub_1A4327A6C);
  return sub_1A5241E04();
}

uint64_t sub_1A4324134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4323920(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42[-v13];
  v15 = a1;
  sub_1A524B524();
  (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
  v16 = sub_1A524B5C4();
  (*(v5 + 8))(v7, v4);
  sub_1A524BC74();
  sub_1A52481F4();
  v44 = 1;
  *&v43[6] = v45;
  *&v43[22] = v46;
  *&v43[38] = v47;
  sub_1A432388C();
  v18 = &v14[*(v17 + 36)];
  v19 = *(sub_1A5248A14() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A52494A4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #20.0 }

  *v18 = _Q0;
  sub_1A3E42C88();
  *&v18[*(v27 + 36)] = 256;
  v28 = *&v43[16];
  *(v14 + 18) = *v43;
  *v14 = v16;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  *(v14 + 34) = v28;
  *(v14 + 50) = *&v43[32];
  *(v14 + 8) = *&v43[46];
  LOBYTE(v16) = sub_1A524A074();
  sub_1A5247BC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = &v14[*(v9 + 44)];
  *v37 = v16;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_1A4328120(v14, v11, sub_1A4323920);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A4327B34(0);
  v39 = v38;
  sub_1A4328120(v11, a2 + *(v38 + 48), sub_1A4323920);
  v40 = a2 + *(v39 + 64);
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_1A4327C20(v14, sub_1A4323920);
  return sub_1A4327C20(v11, sub_1A4323920);
}

uint64_t sub_1A4324498@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DBD0];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A4324810(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1A4328188(v2, &v16 - v11, &qword_1EB128A70, v8, v9, sub_1A4324810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5247E04();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A43246D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A4327BBC(0, &unk_1EB138428, sub_1A4327B00);
  return sub_1A4324134(v3, a1 + *(v4 + 44));
}

uint64_t SharedCollectionPreviewsSection.viewModel.getter()
{
  type metadata accessor for SharedCollectionPreviewsSection();
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t type metadata accessor for SharedCollectionPreviewsSection()
{
  result = qword_1EB1B7AA0;
  if (!qword_1EB1B7AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4324810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4324874@<X0>(void *a1@<X8>)
{
  type metadata accessor for SharedCollectionPreviewsSection();
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A432490C(void **a1)
{
  v1 = *a1;
  type metadata accessor for SharedCollectionPreviewsSection();
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v2 = v1;
  return sub_1A524B6B4();
}

uint64_t SharedCollectionPreviewsSection.viewModel.setter()
{
  type metadata accessor for SharedCollectionPreviewsSection();
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void (*SharedCollectionPreviewsSection.viewModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for SharedCollectionPreviewsSection() + 20);
  v7 = *v5;
  v6 = *(v5 + 8);
  v4[6] = *v5;
  v4[7] = v6;
  *v4 = v7;
  v4[1] = v6;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v8;
  v9 = v7;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedCollectionPreviewsSection.$viewModel.getter()
{
  type metadata accessor for SharedCollectionPreviewsSection();
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void SharedCollectionPreviewsSection.body.getter(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = type metadata accessor for SharedCollectionPreviewsSection();
  v3 = v2 - 8;
  v16 = *(v2 - 8);
  v15[4] = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v15[3] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  v15[0] = sub_1A5249314();
  v18 = 1;
  v5 = (v1 + *(v3 + 28));
  v7 = v5[1];
  v19 = *v5;
  v6 = v19;
  v20 = v7;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v8 = sub_1A524B6A4();
  v9 = v21;
  v10 = MEMORY[0x1E69E7D40];
  v11 = (*((*MEMORY[0x1E69E7D40] & *v21) + 0x4C0))(v8);

  v19 = v6;
  v20 = v7;
  v12 = sub_1A524B6A4();
  v13 = v21;
  v14 = (*((*v10 & *v21) + 0x338))(v12);

  PXLocalizedAssetCountForUsage(v11, v14, 0, 0);
}

uint64_t sub_1A43250E0(unint64_t a1)
{
  sub_1A432647C();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4326288(0, &qword_1EB138438, sub_1A4326158, sub_1A432647C, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  sub_1A4326158();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for SharedCollectionPreviewsSection() + 20));
  v13 = *v11;
  v12 = v11[1];
  v25 = v13;
  v26 = v12;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v14 = sub_1A524B6A4();
  v15 = v24;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0x4C0))(v14);

  if (v16 <= 0)
  {
    *v10 = sub_1A5249314();
    *(v10 + 1) = 0;
    v10[16] = 1;
    sub_1A4327BBC(0, &qword_1EB138440, sub_1A43261EC);
    sub_1A432551C(a1, &v10[*(v21 + 44)]);
    sub_1A4328120(v10, v7, sub_1A4326158);
    swift_storeEnumTagMultiPayload();
    sub_1A4326434(&qword_1EB13E360, sub_1A4326158);
    sub_1A4326434(&unk_1EB138310, sub_1A432647C);
    sub_1A5249744();
    v19 = sub_1A4326158;
    v20 = v10;
  }

  else
  {
    *v4 = sub_1A524BC74();
    v4[1] = v17;
    sub_1A4327C80();
    sub_1A4325980(a1, v4 + *(v18 + 44));
    sub_1A4328120(v4, v7, sub_1A432647C);
    swift_storeEnumTagMultiPayload();
    sub_1A4326434(&qword_1EB13E360, sub_1A4326158);
    sub_1A4326434(&unk_1EB138310, sub_1A432647C);
    sub_1A5249744();
    v19 = sub_1A432647C;
    v20 = v4;
  }

  return sub_1A4327C20(v20, v19);
}

uint64_t sub_1A432551C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v2 = sub_1A5247E04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = sub_1A5242264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4326240(0);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v44 = sub_1A5249574();
  *v12 = 0x6F746F6870;
  v12[1] = 0xE500000000000000;
  (*(v10 + 104))(v12, *MEMORY[0x1E69C1D38], v9);
  v42 = sub_1A5242B94();
  (*(v10 + 8))(v12, v9);
  sub_1A524BC74();
  sub_1A52481F4();
  v47 = 1;
  sub_1A4324498(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB8], v2);
  LOBYTE(v9) = sub_1A5247DF4();
  v22 = *(v3 + 8);
  v22(v5, v2);
  v22(v8, v2);
  if (v9)
  {
    v23 = sub_1A524B2E4();
  }

  else
  {
    v23 = sub_1A524B2A4();
  }

  v24 = v23;
  v25 = sub_1A524A064();
  v26 = &v18[*(v43 + 36)];
  v27 = *(sub_1A5248A14() + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1A52494A4();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #20.0 }

  *v26 = _Q0;
  sub_1A3E42C88();
  *&v26[*(v35 + 36)] = 256;
  *v18 = v44;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *(v18 + 3) = v42;
  v36 = v49;
  *(v18 + 2) = v48;
  *(v18 + 3) = v36;
  *(v18 + 4) = v50;
  *(v18 + 10) = v24;
  v18[88] = v25;
  sub_1A43280B8(v18, v21, sub_1A4326240);
  sub_1A4328120(v21, v15, sub_1A4326240);
  v37 = v46;
  *v46 = 0;
  *(v37 + 8) = 1;
  sub_1A4326220(0);
  v39 = v38;
  sub_1A4328120(v15, v37 + *(v38 + 48), sub_1A4326240);
  v40 = v37 + *(v39 + 64);
  *v40 = 0;
  v40[8] = 1;
  sub_1A4327C20(v21, sub_1A4326240);
  return sub_1A4327C20(v15, sub_1A4326240);
}

unint64_t sub_1A4325980@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1A4326568(0);
  v47 = v3;
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4326288(0, &unk_1EB138450, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F948]);
  v43 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - v6;
  v7 = type metadata accessor for SharedCollectionPreviewsSection();
  v8 = v7 - 8;
  v39 = *(v7 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A4326524(0);
  v44 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = (a1 + *(v8 + 28));
  v16 = *v14;
  v15 = v14[1];
  v49 = *v14;
  v50 = v15;
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v17 = sub_1A524B6A4();
  v18 = v48;
  v19 = MEMORY[0x1E69E7D40];
  v20 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x140))(v17);

  if (v20)
  {

    v49 = v16;
    v50 = v15;
    v21 = sub_1A524B6A4();
    v22 = v48;
    v23 = (*((*v19 & *v48) + 0x368))(v21);

    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
      if (v24 >= 3)
      {
        v25 = 3;
      }

      else
      {
        v25 = v24;
      }

      v49 = 0;
      v50 = v25;
      swift_getKeyPath();
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      sub_1A4326768(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
      sub_1A4326650(0);
      sub_1A3DE77C8();
      sub_1A4326AB0();
      v27 = v41;
      sub_1A524B9B4();
      v28 = v42;
      v29 = v47;
      (*(v42 + 16))(v45, v27, v47);
      swift_storeEnumTagMultiPayload();
      sub_1A4326A34(&qword_1EB138298, sub_1A4326524, sub_1A43268E0);
      sub_1A4326A34(&qword_1EB1382C0, sub_1A4326568, sub_1A4326AB0);
      sub_1A5249744();
      return (*(v28 + 8))(v27, v29);
    }

    v24 = sub_1A524E2B4();
    if ((v24 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_17;
  }

  v23 = v13;
  v42 = v12;
  v13 = v40;
  v49 = v16;
  v50 = v15;
  v31 = sub_1A524B6A4();
  v32 = v48;
  v12 = (*((*v19 & *v48) + 0x1D0))(v31);

  if (v12 >> 62)
  {
LABEL_17:
    result = sub_1A524E2B4();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v33 = v39;
  if (result >= 3)
  {
    v34 = 3;
  }

  else
  {
    v34 = result;
  }

  v49 = 0;
  v50 = v34;
  swift_getKeyPath();
  sub_1A4328120(v23, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedCollectionPreviewsSection);
  v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v12;
  sub_1A43280B8(&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for SharedCollectionPreviewsSection);
  *(v36 + ((v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
  sub_1A4326768(0, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1A4326544(0);
  sub_1A3DE77C8();
  sub_1A43268E0();
  v37 = v42;
  sub_1A524B9B4();
  v38 = v44;
  (*(v13 + 16))(v45, v37, v44);
  swift_storeEnumTagMultiPayload();
  sub_1A4326A34(&qword_1EB138298, sub_1A4326524, sub_1A43268E0);
  sub_1A4326A34(&qword_1EB1382C0, sub_1A4326568, sub_1A4326AB0);
  sub_1A5249744();
  return (*(v13 + 8))(v37, v38);
}

void sub_1A4326158()
{
  if (!qword_1EB1381E8)
  {
    sub_1A43261EC(255);
    sub_1A4326434(&qword_1EB138228, sub_1A43261EC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1381E8);
    }
  }
}

void sub_1A4326288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A432630C()
{
  if (!qword_1EB138208)
  {
    sub_1A43263CC(255, &qword_1EB138210, &unk_1EB138218, MEMORY[0x1E6981710], MEMORY[0x1E6981860]);
    sub_1A4326768(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138208);
    }
  }
}

void sub_1A43263CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4326768(255, a3, MEMORY[0x1E6981748], a4, a5);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4326434(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A432647C()
{
  if (!qword_1EB138230)
  {
    sub_1A4326288(255, &qword_1EB138238, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F960]);
    sub_1A43267BC();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138230);
    }
  }
}

void sub_1A4326588(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4326768(255, &qword_1EB126D40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    a3(255);
    sub_1A3DE77C8();
    v5 = sub_1A524B9D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4326674(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A43266E8(255, a3, a4, a5);
    sub_1A41EF370(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A43266E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4326768(255, a3, a4, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4326768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A43267BC()
{
  result = qword_1EB138290;
  if (!qword_1EB138290)
  {
    sub_1A4326288(255, &qword_1EB138238, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F960]);
    sub_1A4326A34(&qword_1EB138298, sub_1A4326524, sub_1A43268E0);
    sub_1A4326A34(&qword_1EB1382C0, sub_1A4326568, sub_1A4326AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138290);
  }

  return result;
}

unint64_t sub_1A4326914()
{
  result = qword_1EB1382A8;
  if (!qword_1EB1382A8)
  {
    sub_1A43266E8(255, &qword_1EB138258, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview);
    sub_1A4326C64(&unk_1EB1382B0, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview, sub_1A43269E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1382A8);
  }

  return result;
}

unint64_t sub_1A43269E0()
{
  result = qword_1EB1B7A08;
  if (!qword_1EB1B7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B7A08);
  }

  return result;
}

uint64_t sub_1A4326A34(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A4326AE4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A4326434(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4326B98()
{
  result = qword_1EB1382D0;
  if (!qword_1EB1382D0)
  {
    sub_1A43266E8(255, &qword_1EB138280, &qword_1EB138288, &type metadata for SharedCollectionSourcePreview);
    sub_1A4326C64(&qword_1EB1382D8, &qword_1EB138288, &type metadata for SharedCollectionSourcePreview, sub_1A4326D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1382D0);
  }

  return result;
}

uint64_t sub_1A4326C64(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4326768(255, a2, a3, MEMORY[0x1E697E278], MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4326D00()
{
  result = qword_1EB1B7A10[0];
  if (!qword_1EB1B7A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B7A10);
  }

  return result;
}

unint64_t sub_1A4326D54()
{
  result = qword_1EB138300;
  if (!qword_1EB138300)
  {
    sub_1A4326288(255, &qword_1EB1381E0, sub_1A4326158, sub_1A432647C, MEMORY[0x1E697F960]);
    sub_1A4326434(&qword_1EB13E360, sub_1A4326158);
    sub_1A4326434(&unk_1EB138310, sub_1A432647C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138300);
  }

  return result;
}

void sub_1A4326EC0()
{
  if (!qword_1EB138328)
  {
    sub_1A4326288(255, &qword_1EB1381E0, sub_1A4326158, sub_1A432647C, MEMORY[0x1E697F960]);
    sub_1A3FF7634();
    v0 = sub_1A524BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138328);
    }
  }
}

void sub_1A4326FBC()
{
  type metadata accessor for SharedCollectionPreviewsSection();
  sub_1A4324810(0, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x4C8))(v0);
}

id sub_1A43270C0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A4324810(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SharedCollectionPreviewsSection();
  v3 = (a1 + v2[5]);
  type metadata accessor for SharedCollectionActionViewModel();
  sub_1A524B694();
  *v3 = v10;
  v3[1] = v11;
  v4 = v2[6];
  v5 = [objc_allocWithZone(MEMORY[0x1E6978718]) init];
  v6 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

  *(a1 + v4) = v6;
  v7 = v2[7];
  v8 = [objc_allocWithZone(off_1E7721750) init];
  [v8 setNetworkAccessAllowed_];
  [v8 setAllowSecondaryDegradedImage_];
  result = [v8 setDeliveryMode_];
  *(a1 + v7) = v8;
  return result;
}

void sub_1A4327274()
{
  sub_1A4324810(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4324810(319, &unk_1EB130150, type metadata accessor for SharedCollectionActionViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A4327388();
      if (v2 <= 0x3F)
      {
        sub_1A43273EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A4327388()
{
  result = qword_1EB126A80;
  if (!qword_1EB126A80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB126A80);
  }

  return result;
}

unint64_t sub_1A43273EC()
{
  result = qword_1EB13E380;
  if (!qword_1EB13E380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB13E380);
  }

  return result;
}

unint64_t sub_1A4327438()
{
  result = qword_1EB1383B0;
  if (!qword_1EB1383B0)
  {
    sub_1A4323920(255);
    sub_1A43274B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383B0);
  }

  return result;
}

unint64_t sub_1A43274B8()
{
  result = qword_1EB1383B8;
  if (!qword_1EB1383B8)
  {
    sub_1A432388C();
    sub_1A3E44BC8();
    sub_1A4326434(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383B8);
  }

  return result;
}

unint64_t sub_1A4327568()
{
  result = qword_1EB1383C8;
  if (!qword_1EB1383C8)
  {
    sub_1A432395C(255, &qword_1EB138348, sub_1A4326F74, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A4327620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383C8);
  }

  return result;
}

unint64_t sub_1A4327620()
{
  result = qword_1EB1383D0;
  if (!qword_1EB1383D0)
  {
    sub_1A4326F74(255);
    sub_1A43276D0();
    sub_1A4326434(&qword_1EB1383F0, sub_1A3F332F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383D0);
  }

  return result;
}

unint64_t sub_1A43276D0()
{
  result = qword_1EB1383D8;
  if (!qword_1EB1383D8)
  {
    sub_1A4326E78(255);
    sub_1A4327780();
    sub_1A4326434(&qword_1EB1302A0, sub_1A3F33AEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383D8);
  }

  return result;
}

unint64_t sub_1A4327780()
{
  result = qword_1EB1383E0;
  if (!qword_1EB1383E0)
  {
    sub_1A4326EC0();
    sub_1A4326D54();
    sub_1A4326434(&qword_1EB13AFA0, sub_1A3FF7634);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1383E0);
  }

  return result;
}

uint64_t sub_1A432784C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4327894(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_1A4327924(uint64_t a1, char a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  sub_1A524D254();
  v9 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A3DD15BC(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

void sub_1A4327A6C()
{
  if (!qword_1EB1383F8)
  {
    sub_1A4327B00(255);
    sub_1A4326434(&qword_1EB138410, sub_1A4327B00);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1383F8);
    }
  }
}

void sub_1A4327B54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A4327BBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A4327C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4327C80()
{
  if (!qword_1EB138448)
  {
    sub_1A4326288(255, &qword_1EB138238, sub_1A4326524, sub_1A4326568, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138448);
    }
  }
}

uint64_t sub_1A4327D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for SharedCollectionPreviewsSection();
  v6 = result;
  v7 = (*(*(result - 8) + 80) + 24) & ~*(*(result - 8) + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(*(result - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  if ((v8 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1A59097F0](*a1);
  }

  else
  {
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = *(v8 + 8 * v10 + 32);
  }

  v12 = v11;
  v13 = *(v6 + 28);
  v14 = *(v2 + v7 + *(v6 + 24));
  v15 = *(v2 + v7 + v13);
  result = swift_getKeyPath();
  v16 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (!v17)
  {
    v19 = result;
    v20 = v10 * -0.1 + 1.0;
    v21 = v18;
    v22 = v10 * 10.0 * -2.0;
    swift_unknownObjectRetain();
    v23 = v15;
    sub_1A524BE94();
    v28[88] = 0;
    *&v29 = v19;
    BYTE8(v29) = 0;
    *&v30 = v12;
    *(&v30 + 1) = v14;
    v31 = v23;
    *&v32 = v22;
    *(&v32 + 1) = v20;
    *&v33 = v20;
    *(&v33 + 1) = v24;
    v34 = v25;
    v46 = v29;
    v47 = v30;
    v51 = v25;
    v49 = v32;
    v50 = v33;
    v48 = v23;
    v35 = v19;
    v36 = 0;
    v37 = v12;
    v38 = v14;
    v39 = v23;
    v40 = 0;
    v41 = v22;
    v42 = v20;
    v43 = v20;
    v44 = v24;
    v45 = v25;
    sub_1A4328188(&v29, v28, &qword_1EB138258, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview, sub_1A43266E8);
    result = sub_1A4328044(&v35);
    v26 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v26;
    *(a2 + 64) = v50;
    *(a2 + 80) = v51;
    v27 = v47;
    *a2 = v46;
    *(a2 + 16) = v27;
    *(a2 + 88) = v21;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t *sub_1A4327F6C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *result;
  if ((v4 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1A59097F0](*result);
  }

  else
  {
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    result = *(v4 + 8 * v6 + 32);
  }

  v7 = result;
  v8 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (!v9)
  {
    v11 = v6 * -0.1 + 1.0;
    v12 = v10;
    result = sub_1A524BE94();
    *a2 = v7;
    *(a2 + 8) = 0;
    *(a2 + 16) = v6 * 10.0 * -2.0;
    *(a2 + 24) = v11;
    *(a2 + 32) = v11;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
    *(a2 + 56) = v12;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1A4328044(uint64_t a1)
{
  sub_1A43266E8(0, &qword_1EB138258, &unk_1EB138260, &type metadata for SharedCollectionAssetPreview);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A43280B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4328120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4328188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A43281FC()
{
  if (!qword_1EB138460)
  {
    sub_1A432395C(255, &unk_1EB13E3D0, sub_1A43282F0, MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    sub_1A5243374();
    sub_1A432832C();
    sub_1A4326434(&qword_1EB138418, MEMORY[0x1E69C2440]);
    v0 = sub_1A5241E14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138460);
    }
  }
}

unint64_t sub_1A432832C()
{
  result = qword_1EB13E3E0;
  if (!qword_1EB13E3E0)
  {
    sub_1A432395C(255, &unk_1EB13E3D0, sub_1A43282F0, MEMORY[0x1E6981748], MEMORY[0x1E697F960]);
    sub_1A43283E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13E3E0);
  }

  return result;
}

unint64_t sub_1A43283E4()
{
  result = qword_1EB138480;
  if (!qword_1EB138480)
  {
    sub_1A43282F0(255);
    sub_1A4326434(&qword_1EB138420, sub_1A4327A6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138480);
  }

  return result;
}

unint64_t sub_1A4328494(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A4328534(Strong);
  if (sub_1A3DEFF08())
  {
    sub_1A4329AB0(a1, v3);
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1A4328534(void *a1)
{
  v2 = v1;
  v83 = a1;
  v3 = sub_1A5246F24();
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v74 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v74 - v8;
  v10 = sub_1A524BFF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB12B180);
  *v13 = sub_1A524D474();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
  v14 = sub_1A524C024();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v99[0] = MEMORY[0x1E69E7CC0];
  if ([v83 respondsToSelector_])
  {
    v97 = 0;
    v98 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v77 = objc_opt_self();
    [v77 timeIntervalSinceReferenceDate];
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = v99;
    v16[4] = &v98;
    v16[5] = &v88;
    v16[6] = &v97;
    v16[7] = &v87;
    v16[8] = &v90;
    v16[9] = &v86;
    v16[10] = &v89;
    v16[11] = &v85;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1A432C160;
    *(v17 + 24) = v16;
    v95 = sub_1A432C19C;
    v96 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v92 = 1107296256;
    v93 = sub_1A432C3A8;
    v94 = &block_descriptor_30_3;
    v18 = _Block_copy(&aBlock);

    [v83 appIntentsEnumerateAssetCollections_];
    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      v19 = v98;
      if (v98 < 1)
      {
        v76 = 0x6D75626C61206F6ELL;
      }

      else
      {
        v20 = v88;
        if (v88 < 1)
        {
          v84 = v98;
          aBlock = sub_1A524EA44();
          v92 = v25;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v23 = 0x736D75626C61;
          v24 = 0xE600000000000000;
        }

        else
        {
          aBlock = 0;
          v92 = 0xE000000000000000;
          sub_1A524E404();

          v84 = v19;
          aBlock = sub_1A524EA44();
          v92 = v21;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x736D75626C61, 0xE600000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v84 = v20;
          v22 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v22);

          v23 = 0x657463656C657320;
          v24 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v23, v24);
        v76 = aBlock;
      }

      v26 = v97;
      if (v97 < 1)
      {
        v32 = 0x80000001A53D25E0;
        v75 = 0xD000000000000010;
      }

      else
      {
        v27 = v87;
        if (v87 <= 0)
        {
          v84 = v97;
          aBlock = sub_1A524EA44();
          v92 = v33;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v30 = 0x6120646572616873;
          v31 = 0xED0000736D75626CLL;
        }

        else
        {
          aBlock = 0;
          v92 = 0xE000000000000000;
          sub_1A524E404();

          v84 = v26;
          aBlock = sub_1A524EA44();
          v92 = v28;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x6120646572616873, 0xED0000736D75626CLL);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v84 = v27;
          v29 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v29);

          v30 = 0x657463656C657320;
          v31 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v30, v31);
        v75 = aBlock;
        v32 = v92;
      }

      v78 = v32;
      v34 = v90;
      if (v90 < 1)
      {
        v40 = 0x726F6D656D206F6ELL;
      }

      else
      {
        v35 = v86;
        if (v86 < 1)
        {
          v84 = v90;
          aBlock = sub_1A524EA44();
          v92 = v41;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v38 = 0x736569726F6D656DLL;
          v39 = 0xE800000000000000;
        }

        else
        {
          aBlock = 0;
          v92 = 0xE000000000000000;
          sub_1A524E404();

          v84 = v34;
          aBlock = sub_1A524EA44();
          v92 = v36;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x736569726F6D656DLL, 0xE800000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v84 = v35;
          v37 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v37);

          v38 = 0x657463656C657320;
          v39 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v38, v39);
        v40 = aBlock;
      }

      v74[4] = v40;
      v42 = v89;
      if (v89 < 1)
      {
        v48 = 0x726568746F206F6ELL;
      }

      else
      {
        v43 = v85;
        if (v85 < 1)
        {
          v84 = v89;
          aBlock = sub_1A524EA44();
          v92 = v49;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v46 = 0x726568746FLL;
          v47 = 0xE500000000000000;
        }

        else
        {
          aBlock = 0;
          v92 = 0xE000000000000000;
          sub_1A524E404();

          v84 = v42;
          aBlock = sub_1A524EA44();
          v92 = v44;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x726568746FLL, 0xE500000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v84 = v43;
          v45 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v45);

          v46 = 0x657463656C657320;
          v47 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v46, v47);
        v48 = aBlock;
      }

      v74[3] = v48;
      v50 = sub_1A3CB648C();
      (*(v81 + 16))(v9, v50, v82);
      swift_unknownObjectRetain();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_51;
  }

  if ([v83 respondsToSelector_])
  {
    v97 = 0;
    v98 = 0;
    [objc_opt_self() timeIntervalSinceReferenceDate];
    v51 = swift_allocObject();
    v51[2] = v99;
    v51[3] = &v98;
    v51[4] = &v97;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1A432C110;
    *(v52 + 24) = v51;
    v78 = v51;
    v95 = sub_1A432C3A4;
    v96 = v52;
    aBlock = MEMORY[0x1E69E9820];
    v92 = 1107296256;
    v93 = sub_1A432C3A8;
    v94 = &block_descriptor_21_6;
    v53 = _Block_copy(&aBlock);

    [v83 appIntentsEnumerateAssets_];
    _Block_release(v53);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if ((v53 & 1) == 0)
    {
      v54 = v98;
      if (v98 >= 1)
      {
        v55 = v97;
        if (v97 < 1)
        {
          v90 = v98;
          aBlock = sub_1A524EA44();
          v92 = v60;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          v58 = 0x737465737361;
          v59 = 0xE600000000000000;
        }

        else
        {
          aBlock = 0;
          v92 = 0xE000000000000000;
          sub_1A524E404();

          v90 = v54;
          aBlock = sub_1A524EA44();
          v92 = v56;
          MEMORY[0x1A5907B60](32, 0xE100000000000000);
          MEMORY[0x1A5907B60](0x737465737361, 0xE600000000000000);
          MEMORY[0x1A5907B60](10272, 0xE200000000000000);
          v90 = v55;
          v57 = sub_1A524EA44();
          MEMORY[0x1A5907B60](v57);

          v58 = 0x657463656C657320;
          v59 = 0xEA00000000002964;
        }

        MEMORY[0x1A5907B60](v58, v59);
      }

      v61 = sub_1A3CB648C();
      (*(v81 + 16))(v80, v61, v82);
      swift_unknownObjectRetain();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_52;
  }

  if (![v83 respondsToSelector_])
  {
    v73 = v99[0];
    sub_1A3C33378(0);
    sub_1A3C33378(0);
    sub_1A3C33378(0);
    return v73;
  }

  v80 = 0;
  v97 = 0;
  v98 = 0;
  [objc_opt_self() timeIntervalSinceReferenceDate];
  v62 = swift_allocObject();
  v62[2] = v99;
  v62[3] = &v98;
  v62[4] = &v97;
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1A432C0C0;
  *(v63 + 24) = v62;
  v95 = sub_1A432C3A4;
  v96 = v63;
  aBlock = MEMORY[0x1E69E9820];
  v92 = 1107296256;
  v93 = sub_1A432C3A8;
  v94 = &block_descriptor_160;
  v64 = _Block_copy(&aBlock);

  [v83 appIntentsEnumeratePersons_];
  _Block_release(v64);
  LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

  if ((v64 & 1) == 0)
  {
    v65 = v98;
    if (v98 >= 1)
    {
      v66 = v97;
      if (v97 < 1)
      {
        v90 = v98;
        aBlock = sub_1A524EA44();
        v92 = v71;
        MEMORY[0x1A5907B60](32, 0xE100000000000000);
        v69 = 0x736E6F73726570;
        v70 = 0xE700000000000000;
      }

      else
      {
        aBlock = 0;
        v92 = 0xE000000000000000;
        sub_1A524E404();

        v90 = v65;
        aBlock = sub_1A524EA44();
        v92 = v67;
        MEMORY[0x1A5907B60](32, 0xE100000000000000);
        MEMORY[0x1A5907B60](0x736E6F73726570, 0xE700000000000000);
        MEMORY[0x1A5907B60](10272, 0xE200000000000000);
        v90 = v66;
        v68 = sub_1A524EA44();
        MEMORY[0x1A5907B60](v68);

        v69 = 0x657463656C657320;
        v70 = 0xEA00000000002964;
      }

      MEMORY[0x1A5907B60](v69, v70);
    }

    v72 = sub_1A3CB648C();
    (*(v81 + 16))(v79, v72, v82);
    swift_unknownObjectRetain();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1A4329AB0(void *a1, unint64_t a2)
{
  v57 = a2;
  v3 = sub_1A5240E64();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v53 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v50 - v6;
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v59 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v50 - v12;
  v14 = sub_1A3CB648C();
  v15 = v8;
  v52 = *(v9 + 16);
  v52(v13, v14, v8);
  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v9;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A3C1C000, v16, v17, "⎡ Generating view annotations debug snapshot...", v19, 2u);
    v20 = v19;
    v9 = v18;
    MEMORY[0x1A590EEC0](v20, -1, -1);
  }

  v21 = *(v9 + 8);
  v22 = v15;
  v54 = v9 + 8;
  v21(v13, v15);
  type metadata accessor for PXGraphicsImageRenderer();
  [a1 bounds];
  v25 = sub_1A4A048F0(v23, v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v57;
  v26 = v58;
  v50[-4] = a1;
  v50[-3] = v27;
  v50[-2] = v26;
  v28 = sub_1A4A04928(sub_1A432B9BC, &v50[-6]);

  v29 = DCIM_newPNGRepresentationWithPLImage();
  if (v29)
  {
    v30 = v29;
    v58 = v28;
    v31 = sub_1A5240EA4();
    v33 = v32;

    v34 = NSTemporaryDirectory();
    v35 = sub_1A524C674();
    v37 = v36;

    strcpy(v62, "snapshot.png");
    BYTE5(v62[1]) = 0;
    HIWORD(v62[1]) = -5120;
    v60 = v35;
    v61 = v37;
    v60 = sub_1A524C8D4();
    v61 = v38;
    sub_1A524C7D4();
    sub_1A5240D14();

    v51 = v31;
    v57 = v33;
    sub_1A5240EB4();
    v39 = v59;
    v52(v59, v14, v22);
    v41 = v55;
    v40 = v56;
    v42 = v53;
    (*(v55 + 16))(v53, v7, v56);
    v43 = sub_1A5246F04();
    v44 = sub_1A524D264();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v42;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v22;
      v62[0] = v47;
      *v46 = 136315138;
      sub_1A3F6D3EC();
      sub_1A524EA44();
      v50[0] = v7;
      v50[1] = v21;
      (*(v41 + 8))(v45, v40);
      sub_1A3C2EF94();
    }

    sub_1A3C59280(v51, v57);

    v48 = *(v41 + 8);
    v48(v42, v40);
    v21(v39, v22);
    return (v48)(v7, v40);
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A432A074(void *a1, int a2, size_t *a3, void *a4, uint64_t *a5, void *a6, uint64_t *a7, void *a8, uint64_t *a9, void *a10, uint64_t *a11)
{
  v44 = a8;
  v45 = a7;
  v42 = a4;
  v43 = a6;
  v15 = sub_1A523FC74();
  v16 = *(v15 - 8);
  v17 = (MEMORY[0x1EEE9AC00])(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  v23 = (MEMORY[0x1EEE9AC00])(v22 - 8);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v38 - v26;
  v28 = sub_1A432A478(&v38 - v26, a1, a2);
  sub_1A432C224(v27, v25);
  if ((*(v16 + 48))(v25, 1, v15) == 1)
  {
    sub_1A432C2A4(v27);
    result = sub_1A432C2A4(v25);
  }

  else
  {
    v40 = a5;
    v38 = *(v16 + 32);
    v38(v21, v25, v15);
    (*(v16 + 16))(v19, v21, v15);
    v30 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v30;
    v41 = a3;
    v39 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_1A432B5CC(0, v30[2] + 1, 1, v30);
      *v41 = v30;
    }

    v33 = v30[2];
    v32 = v30[3];
    if (v33 >= v32 >> 1)
    {
      v37 = sub_1A432B5CC(v32 > 1, v33 + 1, 1, v30);
      *v41 = v37;
    }

    (*(v16 + 8))(v21, v15);
    sub_1A432C2A4(v27);
    v34 = *v41;
    *(v34 + 16) = v33 + 1;
    result = (v38)(v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v33, v19, v15);
    a5 = v40;
    LOBYTE(a2) = v39;
  }

  v35 = v45;
  LODWORD(v36) = v28;
  if (v28 <= 1u)
  {
    if (v28)
    {
      goto LABEL_21;
    }

    if (__OFADD__(*v42, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    ++*v42;
    if ((a2 & 1) == 0)
    {
      return result;
    }

    v36 = *a5 + 1;
    if (!__OFADD__(*a5, 1))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v36 == 2)
  {
    if (!__OFADD__(*v44, 1))
    {
      ++*v44;
      if ((a2 & 1) == 0)
      {
        return result;
      }

      a5 = a9;
      v36 = *a9 + 1;
      if (!__OFADD__(*a9, 1))
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_21:
      if (!__OFADD__(*v43, 1))
      {
        ++*v43;
        if ((a2 & 1) == 0)
        {
          return result;
        }

        v36 = *v35 + 1;
        if (!__OFADD__(*v35, 1))
        {
          a5 = v35;
          goto LABEL_28;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (__OFADD__(*a10, 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  ++*a10;
  if ((a2 & 1) == 0)
  {
    return result;
  }

  a5 = a11;
  v36 = *a11 + 1;
  if (__OFADD__(*a11, 1))
  {
LABEL_35:
    __break(1u);
    return result;
  }

LABEL_28:
  *a5 = v36;
  return result;
}

uint64_t sub_1A432A478(uint64_t a1, void *a2, int a3)
{
  v42 = a3;
  v38 = sub_1A523FC44();
  v5 = *(v38 - 8);
  v6 = MEMORY[0x1EEE9AC00](v38);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - v9;
  v11 = sub_1A5240084();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - v19;
  v21 = sub_1A523FC74();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v43 = a1;
  v40 = v23;
  v41 = v21;
  v39 = v22 + 56;
  (v23)(a1, 1, 1);
  if ([a2 px_isRegularAlbum])
  {
    v44 = sub_1A46722CC(a2);
    v45 = v24;
    sub_1A3DB3554();
    sub_1A5240074();
    sub_1A523FC24();
    (*(v12 + 16))(v15, v17, v11);
    v25 = v38;
    (*(v5 + 16))(v8, v10, v38);
    sub_1A523FC04();
    (*(v5 + 8))(v10, v25);
    (*(v12 + 8))(v17, v11);
    sub_1A432C2A4(v43);
    v26 = 0;
  }

  else
  {
    v37 = v20;
    v27 = v8;
    if ([a2 px_isSharedAlbum])
    {
      v44 = sub_1A46722CC(a2);
      v45 = v28;
      sub_1A3DB3554();
      v29 = v17;
      sub_1A5240074();
      sub_1A523FC24();
      (*(v12 + 16))(v15, v17, v11);
      v30 = v38;
      (*(v5 + 16))(v8, v10, v38);
      v20 = v37;
      sub_1A523FC04();
      (*(v5 + 8))(v10, v30);
      (*(v12 + 8))(v29, v11);
      sub_1A432C2A4(v43);
      v26 = 1;
    }

    else
    {
      objc_opt_self();
      v31 = swift_dynamicCastObjCClass();
      if (!v31)
      {
        return 3;
      }

      v32 = v31;
      v36 = a2;
      v44 = sub_1A46722CC(v32);
      v45 = v33;
      sub_1A4105350();
      sub_1A5240074();
      sub_1A523FC24();
      (*(v12 + 16))(v15, v17, v11);
      v34 = v38;
      (*(v5 + 16))(v27, v10, v38);
      v20 = v37;
      sub_1A523FC04();

      (*(v5 + 8))(v10, v34);
      (*(v12 + 8))(v17, v11);
      sub_1A432C2A4(v43);
      v26 = 2;
    }
  }

  v40(v20, 0, 1, v41);
  sub_1A432C31C(v20, v43);
  return v26;
}

uint64_t sub_1A432AA1C(uint64_t a1, int a2, size_t *a3, void *a4, void *a5, uint64_t (*a6)(uint64_t), void (*a7)(void), uint64_t a8)
{
  v46 = a8;
  v43 = a1;
  v44 = a6;
  v40 = a5;
  v48 = a3;
  v49 = a4;
  v47 = sub_1A523FC44();
  v10 = *(v47 - 8);
  v11 = MEMORY[0x1EEE9AC00](v47);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - v13;
  v15 = sub_1A5240084();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  v42 = sub_1A523FC74();
  v22 = *(v42 - 8);
  v23 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v40 - v25;
  v50 = v44(v43);
  v51 = v27;
  a7();
  sub_1A5240074();
  LODWORD(v46) = a2;
  sub_1A523FC24();
  v28 = v15;
  (*(v16 + 16))(v19, v21, v15);
  v29 = v47;
  (*(v10 + 16))(v45, v14, v47);
  sub_1A523FC04();
  (*(v10 + 8))(v14, v29);
  v31 = v41;
  v30 = v42;
  v32 = v21;
  v33 = v48;
  (*(v16 + 8))(v32, v28);
  (*(v22 + 16))(v31, v26, v30);
  v34 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_1A432B5CC(0, v34[2] + 1, 1, v34);
    *v33 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    *v33 = sub_1A432B5CC(v36 > 1, v37 + 1, 1, v34);
  }

  (*(v22 + 8))(v26, v30);
  v38 = *v33;
  v38[2] = v37 + 1;
  result = (*(v22 + 32))(v38 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v37, v31, v30);
  if (__OFADD__(*v49, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  ++*v49;
  if ((v46 & 1) == 0)
  {
    return result;
  }

  if (__OFADD__(*v40, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  ++*v40;
  return result;
}

void sub_1A432AE6C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = *(a1 + 32);
  v11 = a2;
  v10(a3, a4, a5, a6);
}

void sub_1A432AEF8(CGContext *a1, void *a2, uint64_t a3)
{
  v51 = a3;
  v5 = sub_1A5240084();
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246F24();
  v49 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A523FC74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v37 - v17;
  [a2 bounds];
  [a2 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v52 = a1;
  CGContextSetLineWidth(a1, 2.0);
  v20 = *(v51 + 16);
  if (v20)
  {
    v46 = *(v12 + 16);
    v21 = v51 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v22 = *(v12 + 72);
    v44 = (v49 + 16);
    v45 = v22;
    v51 = v12 + 8;
    v42 = (v50 + 8);
    v43 = (v49 + 8);
    *&v19 = 136446210;
    v37 = v19;
    v47 = v14;
    v40 = v10;
    v41 = v5;
    v39 = v8;
    v38 = v18;
    v49 = v21;
    v50 = v20;
    v23 = v46;
    (v46)(v18);
    v24 = sub_1A3CB648C();
    (*v44)(v10, v24, v8);
    v23(v14, v18, v11);
    v25 = sub_1A5246F04();
    v26 = sub_1A524D264();
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v28 = v37;
      sub_1A432B9C4();
      v48 = *v51;
      v48(v14, v11);
      sub_1A3C2EF94();
    }

    v48 = *v51;
    v48(v14, v11);
    (*v43)(v10, v8);
    v29 = sub_1A432BC94();
    CGContextSetStrokeColorWithColor(v52, v29);

    sub_1A523FC64();
    sub_1A523FC14();
    v30 = sub_1A5240054();
    v32 = v31;
    (*v42)(v7, v5);
    v53 = v30;
    v54 = v32;
    sub_1A432BF3C();
    v33 = sub_1A524C714();
    v35 = v34;
    v53 = &type metadata for AssetEntity;
    sub_1A432BFE8();
    if (sub_1A524C714() == v33 && v36 == v35)
    {
    }

    else
    {
      sub_1A524EAB4();
    }

    sub_1A524D1E4();
  }
}

id sub_1A432B598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXAppIntentsViewAnnotationsBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_1A432B5CC(size_t result, int64_t a2, char a3, void *a4)
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A432C1C4(0, &qword_1EB138528, MEMORY[0x1E69E6F90]);
  v10 = *(sub_1A523FC74() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A523FC74() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void _s12PhotosUICore27PXAppIntentsViewAnnotationsC13clearDelegate3forySo6UIViewCSg_tFZ_0(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = sub_1A3CB648C();
    (*(v3 + 16))(v5, v7, v2);
    v8 = v6;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = a1;
      v13 = v8;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Unregister delegate for view: %{public}@", v11, 0xCu);
      sub_1A3CB65E4(v12);
      MEMORY[0x1A590EEC0](v12, -1, -1);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_1A524DB14();
  }
}

uint64_t sub_1A432B9C4()
{
  v0 = sub_1A5240084();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A523FC44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A523FC54();
  v8 = sub_1A523FC34();
  (*(v5 + 8))(v7, v4);
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  if (v8)
  {
    v9 = 0x8FB8EF9198E2;
  }

  else
  {
    v9 = 32;
  }

  if (v8)
  {
    v10 = 0xA600000000000000;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v8)
  {
    v11 = 0x63656C65735B202CLL;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 0xEC0000005D646574;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1A5907B60](v9, v10);

  MEMORY[0x1A5907B60](8224, 0xE200000000000000);
  sub_1A523FC14();
  v13 = sub_1A5240064();
  v15 = v14;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1A5907B60](v13, v15);

  MEMORY[0x1A5907B60](8236, 0xE200000000000000);
  sub_1A523FC64();
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v16, v17, v18, v19];
  v21 = sub_1A524C674();
  v23 = v22;

  MEMORY[0x1A5907B60](v21, v23);

  MEMORY[0x1A5907B60](v11, v12);

  return v25[0];
}

id sub_1A432BC94()
{
  v0 = sub_1A5240084();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A523FC14();
  v4 = sub_1A5240054();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v20[0] = v4;
  v20[1] = v6;
  sub_1A432BF3C();
  v7 = sub_1A524C714();
  v9 = v8;
  v20[0] = &type metadata for AssetEntity;
  sub_1A432BFE8();
  if (sub_1A524C714() == v7 && v10 == v9)
  {
    v11 = &selRef_blueColor;
LABEL_4:

LABEL_7:

    goto LABEL_8;
  }

  v12 = sub_1A524EAB4();

  if (v12)
  {
    v11 = &selRef_blueColor;
    goto LABEL_7;
  }

  v20[0] = &type metadata for MemoryEntity;
  sub_1A432C030();
  if (sub_1A524C714() == v7 && v16 == v9)
  {
    v11 = &selRef_orangeColor;
    goto LABEL_4;
  }

  v17 = sub_1A524EAB4();

  if (v17)
  {
    v11 = &selRef_orangeColor;
    goto LABEL_7;
  }

  v20[0] = &type metadata for PersonEntity;
  sub_1A432C078();
  v11 = &selRef_greenColor;
  if (sub_1A524C714() == v7 && v18 == v9)
  {
    goto LABEL_4;
  }

  v19 = sub_1A524EAB4();

  if ((v19 & 1) == 0)
  {
    v11 = &selRef_redColor;
  }

LABEL_8:
  v13 = [objc_opt_self() *v11];
  v14 = [v13 CGColor];

  return v14;
}

unint64_t sub_1A432BF3C()
{
  result = qword_1EB1384F0;
  if (!qword_1EB1384F0)
  {
    sub_1A432BF84();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB1384F0);
  }

  return result;
}

unint64_t sub_1A432BF84()
{
  result = qword_1EB1384F8;
  if (!qword_1EB1384F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1384F8);
  }

  return result;
}

unint64_t sub_1A432BFE8()
{
  result = qword_1EB138500;
  if (!qword_1EB138500)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138500);
  }

  return result;
}

unint64_t sub_1A432C030()
{
  result = qword_1EB138508;
  if (!qword_1EB138508)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138508);
  }

  return result;
}

unint64_t sub_1A432C078()
{
  result = qword_1EB138510;
  if (!qword_1EB138510)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138510);
  }

  return result;
}

void sub_1A432C1C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A523FC74();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A432C224(uint64_t a1, uint64_t a2)
{
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A432C2A4(uint64_t a1)
{
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A432C31C(uint64_t a1, uint64_t a2)
{
  sub_1A432C1C4(0, &qword_1EB138520, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A432C3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for LemonadePickerShelfProviderAdapter();
  *(a4 + *(result + 84)) = a2;
  return result;
}

uint64_t sub_1A432C4DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C150(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31[-v6];
  v8 = *(a1 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (shouldUseNewCollectionsLayout()())
  {
    v14 = sub_1A3DC1AF8();
    v16 = v15;
    v17 = sub_1A3C5A374();

    return sub_1A42E7F0C(v14, v16 & 1, v17, a2);
  }

  else
  {
    (*(v8 + 16))(&v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1);
    v19 = (*(v8 + 80) + 80) & ~*(v8 + 80);
    v20 = swift_allocObject();
    v21 = a1[2];
    *(v20 + 1) = a1[1];
    *(v20 + 2) = v21;
    v22 = a1[4];
    *(v20 + 3) = a1[3];
    *(v20 + 4) = v22;
    (*(v8 + 32))(&v20[v19], &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
    v23 = sub_1A3C47918();
    v25 = v24;
    v26 = sub_1A3C52D68();
    v28 = v27;
    LOBYTE(v19) = v29;
    v30 = sub_1A3C4ED50();
    v31[8] = 1;
    *v13 = sub_1A432C994;
    *(v13 + 1) = v20;
    v13[16] = 2;
    *(v13 + 3) = 0;
    v13[32] = 1;
    *(v13 + 5) = v23;
    *(v13 + 6) = v25;
    *(v13 + 7) = 0;
    *(v13 + 8) = 0;
    *(v13 + 9) = v26;
    *(v13 + 10) = v28;
    v13[88] = v19;
    v13[89] = v30;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v7);
    return sub_1A3C52D78(v13, 0, v7, a2);
  }
}

uint64_t sub_1A432C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a2;
  v17 = sub_1A5242D14();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x1E69C21F0])
  {
    return 15;
  }

  if (v22 == *MEMORY[0x1E69C2210])
  {
    v27 = a3;
    v28 = a4;
    v29 = a5;
    v30 = a6;
    v31 = a7;
    v32 = a8;
    v33 = a9;
    v34 = a10;
    v24 = *MEMORY[0x1E69E7D40] & **(v26 + *(type metadata accessor for LemonadePickerShelfProviderAdapter() + 84));
    if ((*(v24 + 1128))())
    {
      return 26;
    }

    else
    {
      return 30;
    }
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    return 30;
  }
}

uint64_t sub_1A432C994(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = *(type metadata accessor for LemonadePickerShelfProviderAdapter() - 8);
  return sub_1A432C7A4(a1, v1 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1A432CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(a5 + 8) + 96))(a1, a2, a3, *(a5 + 8));
  v10 = *(a2 + 40);
  if (v10)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v10) + 0x600))(v9))
    {
      (*(a4 + 88))(a1, a2, a3, a4);
    }
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5246004();
}

uint64_t sub_1A432CC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(*(a2 + 32) + 8);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v5 + 224))(a1, v6, v5, v12);
  v15 = *(v8 + 16);
  v15(v14, v10, AssociatedTypeWitness);
  v16 = *(v8 + 8);
  v16(v10, AssociatedTypeWitness);
  v15(a3, v14, AssociatedTypeWitness);
  return (v16)(v14, AssociatedTypeWitness);
}

uint64_t sub_1A432CDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int8 *a3@<X8>)
{
  v39 = a3;
  v40 = a1;
  v5 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a2 + 16);
  v37 = *(v8 - 8);
  v9 = v37;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v34.i8[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11.i64[0] = v8;
  v42 = *(a2 + 72);
  v14 = v42;
  v36 = *(a2 + 24);
  v15 = *(a2 + 56);
  v34 = *(a2 + 40);
  v35 = v15;
  *&v41[48] = v15.i64[1];
  *v41 = vzip1q_s64(v11, v36);
  *&v41[16] = vzip1q_s64(vdupq_laneq_s64(v36, 1), v34);
  *&v41[32] = vextq_s8(v34, v15, 8uLL);
  v16 = type metadata accessor for LemonadePickerContentView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34.i8[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v38 = &v34.i8[-v22];
  (*(v9 + 16))(v13, v3, v8, v21);

  sub_1A432C4DC(a2, v7);
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v19[32] = 0;
  *(v19 + 5) = swift_getKeyPath();
  v19[48] = 0;
  *(v19 + 7) = swift_getKeyPath();
  v19[64] = 0;
  *v41 = v8;
  *&v41[8] = v36;
  *&v41[40] = v35;
  *&v41[24] = v34;
  v42 = v14;
  v23 = type metadata accessor for LemonadePickerContentView();
  v24 = v23[23];
  *&v19[v24] = swift_getKeyPath();
  v25 = MEMORY[0x1E697DCB8];
  sub_1A3C4C150(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v26 = &v19[v23[24]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v19[v23[25]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v23[26];
  *&v19[v28] = swift_getKeyPath();
  sub_1A3C4C150(0, &qword_1EB128A50, MEMORY[0x1E697E730], v25);
  swift_storeEnumTagMultiPayload();
  v29 = &v19[v23[27]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  *&v19[v23[28]] = v40;
  (*(v37 + 32))(&v19[v23[29]], v13, v8);
  sub_1A43315CC(v7, &v19[v23[30]]);
  swift_getWitnessTable();
  v30 = *(v17 + 16);
  v31 = v38;
  v30(v38, v19, v16);
  v32 = *(v17 + 8);
  v32(v19, v16);
  v30(v39, v31, v16);
  return (v32)(v31, v16);
}

void sub_1A432D2AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13[1] = a2;
  v13[6] = a1;
  v13[9] = a4;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v13[2] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13[0] = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  swift_getAssociatedTypeWitness();
  v13[4] = v5;
  v13[5] = v4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13[16] = AssociatedTypeWitness;
  v13[17] = v10;
  v13[18] = v10;
  v13[19] = AssociatedConformanceWitness;
  v13[20] = v12;
  v13[21] = v12;
  sub_1A5245A24();
}

uint64_t sub_1A432DB20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v10 = *((*MEMORY[0x1E69E7D40] & **(a2 + *(type metadata accessor for LemonadePickerShelfProviderAdapter() + 84))) + 0x2D0);
  v11 = a1;
  v19 = v10(v11, v12, v13, v14, v15, v16, v17, v18, a3, a4, a5, a6, a7);
  sub_1A47A9538(v11, 0, 0, 0, v26, v19, 0, a8);
  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A432DC20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(id, uint64_t, uint64_t, uint64_t))
{
  v14 = *((*MEMORY[0x1E69E7D40] & **(a3 + *(type metadata accessor for LemonadePickerShelfProviderAdapter() + 84))) + 0x2D0);
  v15 = a1;

  v17 = v14(v16);
  a12(v15, a2, 1, v17);
  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

void sub_1A432DD28(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  v7 = a2;
  v5 = a1;
  v6 = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = AssociatedTypeWitness;
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  sub_1A5245A24();
}

void sub_1A432E128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = a3;
  v7 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = AssociatedTypeWitness;
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  sub_1A5245A24();
}

uint64_t sub_1A432E58C()
{
  result = sub_1A52437B4();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A432E610(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A432E720(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1A42E6E80(a1, WitnessTable);
}

uint64_t sub_1A432E774()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PickerConfiguration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A432E7FC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1A432E938(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
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

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1A432EAEC()
{
  sub_1A3C9FF7C(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3C9FF7C(319, &unk_1EB124808, &type metadata for LemonadeCellSpec, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3C9FF7C(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C4C150(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3C9FF7C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A3C4C150(319, &qword_1EB1247F8, sub_1A3F17950, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A3C4C150(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A3C9FF7C(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedTypeWitness();
                  swift_getAssociatedConformanceWitness();
                  swift_getAssociatedConformanceWitness();
                  sub_1A5245A24();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A432EFF4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1A5242D14() - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v46 = v7;
  v8 = *(sub_1A52486A4() - 8);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v8 + 64);
  }

  v12 = *(v10 + 84);
  v13 = *(sub_1A5242C84() - 8);
  v14 = *(v13 + 80);
  v15 = ((v14 + 41) & ~v14) + *(v13 + 64);
  if (v15 <= 0x5A)
  {
    v16 = 90;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(sub_1A5241F84() - 8);
  v18 = v17;
  v19 = *(v17 + 84);
  v20 = v19 - 1;
  if (!v19)
  {
    v20 = 0;
  }

  if (v20 <= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v20;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v10 + 80);
  v24 = *(v17 + 80);
  v25 = *(v17 + 64);
  if (v19)
  {
    v26 = -2;
  }

  else
  {
    v26 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = v6 | 7;
  v28 = *(v8 + 80) & 0xF8 | 7;
  v29 = v11 + 24;
  v30 = v14 | v24 | 7;
  v31 = v30 + *(v10 + 64);
  v32 = v16 + v24;
  if (a2 <= v22)
  {
    goto LABEL_44;
  }

  v33 = v26 + v25 - ((-3 - v32) | v24) - ((((((((((((-66 - v27) | v27) - v46 - 24) | 7) - v28 - 9) | v28) - v29) | 7) - v23 - 8) | v23) - v31) | v30);
  v34 = 8 * v33;
  if (v33 <= 3)
  {
    v37 = ((a2 - v22 + ~(-1 << v34)) >> v34) + 1;
    if (HIWORD(v37))
    {
      v35 = *(a1 + v33);
      if (!v35)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v37 > 0xFF)
    {
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v37 < 2)
    {
LABEL_44:
      v41 = ((v29 + (((((((a1 & 0xFFFFFFFFFFFFFFF8) + v27 + 65) & ~v27) + v46) & 0xFFFFFFFFFFFFFFF8) + v28 + 33) & ~v28)) & 0xFFFFFFFFFFFFFFF8);
      if ((v21 & 0x80000000) != 0)
      {
        v43 = (v41 + v23 + 8) & ~v23;
        if (v12 == v22)
        {
          v44 = *(v10 + 48);

          return v44(v43, v12, v9);
        }

        else
        {
          v45 = (*(v18 + 48))((v32 + ((v31 + v43) & ~v30) + 2) & ~v24);
          if (v45 >= 2)
          {
            return v45 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v42 = *v41;
        if (*v41 >= 0xFFFFFFFF)
        {
          LODWORD(v42) = -1;
        }

        return (v42 + 1);
      }
    }
  }

  v35 = *(a1 + v33);
  if (!*(a1 + v33))
  {
    goto LABEL_44;
  }

LABEL_31:
  v38 = (v35 - 1) << v34;
  if (v33 > 3)
  {
    v38 = 0;
  }

  if (v33)
  {
    if (v33 <= 3)
    {
      v39 = v33;
    }

    else
    {
      v39 = 4;
    }

    if (v39 > 2)
    {
      if (v39 == 3)
      {
        v40 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v40 = *a1;
      }
    }

    else if (v39 == 1)
    {
      v40 = *a1;
    }

    else
    {
      v40 = *a1;
    }
  }

  else
  {
    v40 = 0;
  }

  return v22 + (v40 | v38) + 1;
}

void sub_1A432F47C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_1A5242D14() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  if (((v6 + 16) & ~v6) + v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = ((v6 + 16) & ~v6) + v7;
  }

  v9 = *(sub_1A52486A4() - 8);
  v48 = *(a4 + 16);
  v10 = *(v48 - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v9 + 64);
  }

  v12 = *(v10 + 84);
  v13 = *(sub_1A5242C84() - 8);
  v14 = *(v13 + 80);
  v15 = ((v14 + 41) & ~v14) + *(v13 + 64);
  if (v15 <= 0x5A)
  {
    v16 = 90;
  }

  else
  {
    v16 = v15;
  }

  v17 = 0;
  v18 = *(sub_1A5241F84() - 8);
  v19 = v18;
  v20 = *(v18 + 84);
  if (v20)
  {
    v21 = v20 - 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v10 + 80);
  v23 = *(v18 + 80);
  v24 = *(v18 + 64);
  if (v21 <= 0xFE)
  {
    v25 = 254;
  }

  else
  {
    v25 = v21;
  }

  if (v12 <= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v12;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v9 + 80) & 0xF8 | 7;
  v29 = v14 | v23 | 7;
  v30 = v29 + *(v10 + 64);
  v31 = v16 + v23 + 2;
  if (!v20)
  {
    ++v24;
  }

  v32 = (v31 & ~v23) + v24;
  v33 = ((v30 + ((v22 + 8 + ((v11 + 24 + ((v28 + ((v8 + (((v6 | 7) + 65) & ~(v6 | 7)) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v28)) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & ~v29) + v32;
  if (a3 > v27)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v27 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
      if (HIWORD(v34))
      {
        v17 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v17 = v35;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  if (v27 < a2)
  {
    v36 = ~v27 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> (8 * v33)) + 1;
      if (v33)
      {
        v38 = v36 & ~(-1 << (8 * v33));
        bzero(a1, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *a1 = v38;
            if (v17 > 1)
            {
LABEL_78:
              if (v17 == 2)
              {
                *(a1 + v33) = v37;
              }

              else
              {
                *(a1 + v33) = v37;
              }

              return;
            }
          }

          else
          {
            *a1 = v36;
            if (v17 > 1)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_75;
        }

        *a1 = v38;
        *(a1 + 2) = BYTE2(v38);
      }

      if (v17 > 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v36;
      v37 = 1;
      if (v17 > 1)
      {
        goto LABEL_78;
      }
    }

LABEL_75:
    if (v17)
    {
      *(a1 + v33) = v37;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v33) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    *(a1 + v33) = 0;
LABEL_50:
    if (!a2)
    {
      return;
    }

    goto LABEL_51;
  }

  if (!v17)
  {
    goto LABEL_50;
  }

  *(a1 + v33) = 0;
  if (!a2)
  {
    return;
  }

LABEL_51:
  v39 = ((v11 + 24 + (((((((a1 & 0xFFFFFFFFFFFFFFF8) + (v6 | 7) + 65) & ~(v6 | 7)) + v8) & 0xFFFFFFFFFFFFFFF8) + v28 + 33) & ~v28)) & 0xFFFFFFFFFFFFFFF8);
  if ((v26 & 0x80000000) != 0)
  {
    v41 = (v39 + v22 + 8) & ~v22;
    if (v12 == v27)
    {
      v42 = *(v10 + 56);

      v42(v41, a2, v12, v48);
    }

    else
    {
      v43 = (v30 + v41) & ~v29;
      if (v25 >= a2)
      {
        v47 = *(v19 + 56);

        v47((v31 + v43) & ~v23, a2 + 1);
      }

      else
      {
        if (v32 <= 3)
        {
          v44 = ~(-1 << (8 * v32));
        }

        else
        {
          v44 = -1;
        }

        if (v32)
        {
          v45 = v44 & (~v25 + a2);
          if (v32 <= 3)
          {
            v46 = v32;
          }

          else
          {
            v46 = 4;
          }

          bzero(((v30 + v41) & ~v29), v32);
          if (v46 > 2)
          {
            if (v46 == 3)
            {
              *v43 = v45;
              *(v43 + 2) = BYTE2(v45);
            }

            else
            {
              *v43 = v45;
            }
          }

          else if (v46 == 1)
          {
            *v43 = v45;
          }

          else
          {
            *v43 = v45;
          }
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v40 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v40 = a2 - 1;
    }

    *v39 = v40;
  }
}

uint64_t sub_1A432FA74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A524D254();
  v8 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();
  sub_1A3F1B54C(v7, 0);
  (*(v4 + 8))(v6, v3);
  sub_1A40B1C00(0, v10[1], a1);
}

uint64_t sub_1A432FBE4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_1A5244084();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a1 + 48);
  v4 = v30;
  v31 = (a1 + 40);
  v5 = *(a1 + 32);
  v39 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = AssociatedTypeWitness;
  v54 = v7;
  v55 = v4;
  v56 = AssociatedConformanceWitness;
  sub_1A5242A94();
  sub_1A5243134();
  sub_1A5249754();
  sub_1A5249754();
  v9 = sub_1A524B514();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  sub_1A4178698(255);
  v12 = sub_1A5248804();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v32 = &v29 - v17;
  *&v18 = v5;
  *(&v18 + 1) = *v31;
  v40 = v39;
  v41 = v18;
  v42 = v30;
  v43 = *(a1 + 56);
  v44 = *(a1 + 72);
  v45 = v33;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1A433148C(&qword_1EB138540, MEMORY[0x1E69C23B0]);
  v51 = WitnessTable;
  v52 = v20;
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x1E6982070];
  v21 = swift_getWitnessTable();
  sub_1A524B504();
  swift_getKeyPath();
  v22 = v35;
  sub_1A432FA74(v35);
  v48 = v21;
  v23 = swift_getWitnessTable();
  sub_1A524A964();

  (*(v36 + 8))(v22, v37);
  (*(v34 + 8))(v11, v9);
  v24 = sub_1A433148C(&qword_1EB1279C8, sub_1A4178698);
  v46 = v23;
  v47 = v24;
  swift_getWitnessTable();
  v25 = *(v13 + 16);
  v26 = v32;
  v25(v32, v15, v12);
  v27 = *(v13 + 8);
  v27(v15, v12);
  v25(v38, v26, v12);
  return (v27)(v26, v12);
}

void sub_1A4330158(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v65 = a8;
  v64 = a7;
  v66 = a1;
  v56 = a9;
  v15 = sub_1A5243134();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = AssociatedTypeWitness;
  v69 = v18;
  v45 = v18;
  v70 = a6;
  v71 = AssociatedConformanceWitness;
  v42 = AssociatedConformanceWitness;
  v20 = sub_1A5242A94();
  v62 = v15;
  v67 = sub_1A5249754();
  v61 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = v36 - v21;
  v39 = sub_1A5243284();
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a2;
  v69 = a3;
  v47 = a4;
  v70 = a4;
  v71 = a5;
  v48 = a5;
  v49 = a6;
  v72 = a6;
  v73 = v64;
  v74 = v65;
  v75 = a10;
  v59 = a10;
  v52 = type metadata accessor for LemonadePickerContentView();
  v37 = *(v52 - 8);
  v36[6] = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v36[7] = v36 - v23;
  v63 = v20;
  v41 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v44 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v43 = v36 - v27;
  v28 = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedTypeWitness();
  v54 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v36[4] = v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v53 = v36 - v32;
  swift_getAssociatedTypeWitness();
  v58 = a3;
  v57 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v33 = swift_getAssociatedTypeWitness();
  v36[5] = v28;
  v46 = AssociatedTypeWitness;
  v34 = swift_getAssociatedConformanceWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v55 = v29;
  v68 = v29;
  v69 = v33;
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v73 = v35;
  sub_1A5245A24();
}

uint64_t sub_1A4331290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a7;
  v27 = a8;
  v28 = a1;
  v29 = a2;
  v30 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = v26;
  v36 = v27;
  v37 = a10;
  v38 = a11;
  type metadata accessor for LemonadePickerContentView();
  (*(a4 + 104))(v29, a3, a4);
  v22 = *(v16 + 16);
  v22(v21, v18, AssociatedTypeWitness);
  v23 = *(v16 + 8);
  v23(v18, AssociatedTypeWitness);
  v22(v30, v21, AssociatedTypeWitness);
  return (v23)(v21, AssociatedTypeWitness);
}

uint64_t sub_1A433148C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A43314D4@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = *(type metadata accessor for LemonadePickerContentView() - 8);
  v12 = (*(v11 + 80) + 80) & ~*(v11 + 80);
  return sub_1A4331290(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6, v7, v8, a1, v9, v10);
}

uint64_t sub_1A43315CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeShelfBodyStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4331630(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A5244EE4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 setFetchLimit_];
  sub_1A3C52C70(0, &qword_1EB126A10);
  v10 = [swift_getObjCClassFromMetadata() sharedInstance];
  v11 = *(a2 + 16);
  (*(v6 + 104))(v9, *MEMORY[0x1E69C12A8], v5);
  sub_1A5244EF4();
  swift_allocObject();
  v12 = v11;
  v13 = a3;
  sub_1A5244ED4();
  v14 = [v10 tripsSource];
  if (v14 == 2)
  {
    sub_1A5244B94();
    v15 = sub_1A5244B84();
  }

  else if (v14 == 1)
  {
    sub_1A5244D04();
    v15 = sub_1A5245014();
  }

  else
  {
    if (v14)
    {
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    sub_1A52445A4();
    v15 = sub_1A5244594();
  }

  v16 = v15;
  v17 = [v15 firstObject];
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v17 options:v13];
    if (v19)
    {
      v20 = v19;
      v21 = [v12 px_virtualCollections];
      v22 = [v21 featuredTripsCollectionsWithAssetFetchResult_];

      return v22;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1A4331940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4();
  v6 = v5;
  sub_1A4335E5C(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v7 = sub_1A5244EE4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x1E69C12A8], v7);
  v11 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4331AD4@<X0>(uint64_t a1@<X8>)
{
  sub_1A4335E5C(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3DC1AF8();
    v10 = v9 & 1;

    return sub_1A42E7F0C(v8, v10, 2, a1);
  }

  else
  {
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C47918();
    v17 = v16;
    v18 = sub_1A3C52D68();
    v20 = v19;
    v24 = a1;
    v22 = v21;
    v23 = sub_1A3C4ED50();
    v25 = 1;
    *v7 = sub_1A4331CBC;
    *(v7 + 1) = 0;
    v7[16] = 2;
    *(v7 + 3) = 0;
    v7[32] = 1;
    *(v7 + 5) = v12;
    *(v7 + 6) = v14;
    *(v7 + 7) = v15;
    *(v7 + 8) = v17;
    *(v7 + 9) = v18;
    *(v7 + 10) = v20;
    v7[88] = v22;
    v7[89] = v23;
    swift_storeEnumTagMultiPayload();
    sub_1A3C4ED54(v4);
    return sub_1A3C52D78(v7, 0, v4, v24);
  }
}

uint64_t sub_1A4331CBC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F8])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 2;
}

uint64_t sub_1A4331DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v55 = a3;
  v9 = sub_1A5244EE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v45 - v16;
  sub_1A3C52C70(0, &qword_1EB126A10);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 simulateEmptyShelves];

  if (!v18)
  {
    v50 = a4;
    v51 = a5;
    v23 = objc_opt_self();
    v24 = sub_1A524CA14();
    v25 = sub_1A524C634();
    v52 = a1;
    v49 = [v23 transientCollectionListWithCollections:v24 title:v25 identifier:0 photoLibrary:a1];

    v46 = a2;
    v53 = *(a2 + 24);
    v26 = *(v10 + 104);
    v26(v14, *MEMORY[0x1E69C12B0], v9);
    sub_1A4335DB4(&qword_1EB128F98, MEMORY[0x1E69C12C8]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v60[0] == v68)
    {
      v27 = 1;
    }

    else
    {
      v27 = sub_1A524EAB4();
    }

    v28 = *(v10 + 8);
    v48 = v10 + 8;
    v47 = v28;
    v28(v14, v9);

    if (v27)
    {
      sub_1A5244D04();
      v29 = sub_1A5244CF4();
      v26(v56, *MEMORY[0x1E69C12A8], v9);
      v30 = v29;
    }

    else
    {
      (*(v10 + 16))(v56, v55, v9);
      v30 = 0;
    }

    LODWORD(v55) = v27 ^ 1;
    v70 = 0;
    v68 = 0u;
    v69 = 0u;
    v67 = 2;
    v31 = *(v46 + 40);
    if (v31)
    {
      v32 = (*((*MEMORY[0x1E69E7D40] & *v31) + 0x258))(v53);
    }

    else
    {
      v33 = v53;
      v32 = 0;
    }

    sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    sub_1A3C6C180(&v57);
    v65 = v57;
    v66 = v58;
    sub_1A3C6C18C(&v63);
    v61 = v63;
    v62 = v64;
    v34 = sub_1A3C5A374();
    v35 = sub_1A3C30368();
    v36 = sub_1A3C5A374();
    v37 = sub_1A3C5A374();
    v38 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v65, 0, &unk_1F1706C00, v30, v55 & 1, &v61, v34 & 1, &v67, v60, v35, v36 & 1, v37 & 1, v38 & 1, v32);
    v58 = 0;
    v57 = 0;
    v59 = 0;
    v39 = v54;
    (*(v10 + 16))(v54, v56, v9);
    v40 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v41 = swift_allocObject();
    (*(v10 + 32))(v41 + v40, v39, v9);
    v42 = v41 + ((v40 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v42 = v50;
    *(v42 + 8) = v51 & 1;
    v43 = v52;
    *(v41 + ((v40 + v11 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;
    v44 = v43;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v49, v53, &v68, v60, &v57, sub_1A433B714, v41);
  }

  sub_1A4338F3C(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
  v19 = *(a2 + 16);
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v58 = 0;
  v57 = 0;
  v59 = 0;
  v20 = sub_1A3C52C70(0, &qword_1EB126AC0);
  v21 = v19;
  sub_1A43FD8EC(v60, v20);
  return PhotoKitItemListManager.__allocating_init(photoLibrary:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v21, 0, &v68);
}

void sub_1A43324F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  sub_1A43390C4(0, &qword_1EB127F50, MEMORY[0x1E697F948]);
  v11[1] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v11[0] = v11 - v4;
  v12 = type metadata accessor for LemonadeShelfPlaceholderView();
  MEMORY[0x1EEE9AC00](v12);
  v5 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  [v5 isCloudPhotoLibraryEnabled];
  v6 = sub_1A524C634();
  v7 = PXLemonadeLocalizedString(v6);

  sub_1A524C674();
  v8 = sub_1A524C634();

  v9 = PXLemonadeLocalizedString(v8);

  sub_1A524C674();
  sub_1A3C38BD4();
  v10 = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4332864@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ([a1 px_isTripsVirtualCollection])
  {
    v5 = sub_1A3C38BD4();
    v7 = v6;
    sub_1A4335E5C(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
    v8 = sub_1A5244EE4();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69C12A8], v8);
    v12 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
    *a3 = a2;
    *(a3 + 8) = 0;
    *(a3 + 16) = v5;
    *(a3 + 24) = v7;
    *(a3 + 32) = v11;
    *(a3 + 40) = v12;
    *(a3 + 48) = v13;
    v14 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for LemonadeNavigationDestination();
    v17 = *(*(v16 - 8) + 56);

    return v17(a3, 1, 1, v16);
  }
}

void sub_1A4332AAC(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LemonadeNavigationDestination();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 97) == 1)
  {

    sub_1A3C6E9EC();
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(singleItem:photoLibraryContext:defaultSectionBodyStyle:disallowedBehaviors:searchMatchInfo:badgesModifier:)(a5);
  }

  if (MEMORY[0x1A590D320](v11))
  {
    v14 = *(a1 + 16);
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v13);
  }

  v17[0] = a2;
  v17[1] = a3;
  v18 = a4;
  v15 = sub_1A3C51FF0();
  sub_1A3C66934(v17, &type metadata for LemonadeTripsFeature.ShelfProvider, v15);

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(v13);
}

uint64_t sub_1A4332C78()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4335E5C(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A5242E54();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A4332E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = sub_1A5241144();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1A5244EE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A4338F3C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v14 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v15 = *(a2 + 16);
  (*(v10 + 104))(v12, *MEMORY[0x1E69C12A8], v9);
  sub_1A5244EF4();
  swift_allocObject();
  v16 = v15;
  v17 = v14;
  v18 = v37;
  sub_1A5244ED4();
  sub_1A433B638(v18, v8, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    v20 = v35;
    v21 = v36;
    (*(v35 + 32))(v5, v8, v36);
    sub_1A5244E64();
    v22 = sub_1A5244E54();

    (*(v20 + 8))(v5, v21);
    return v22;
  }

  if (EnumCaseMultiPayload)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1A524E404();

    v38 = 0xD00000000000001BLL;
    v39 = 0x80000001A53B42A0;
    sub_1A4335DB4(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v34 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v34);
  }

  else
  {
    v24 = *v8;
    v23 = v8[1];
    v25 = v13;
    v26 = [v13 tripsSource];
    if (v26 == 2)
    {
      sub_1A5244B94();
      sub_1A3C37150(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A52F8E10;
      *(inited + 32) = v24;
      v30 = inited + 32;
      *(inited + 40) = v23;
      sub_1A3DD76A0(inited);
      swift_setDeallocating();
      sub_1A3C651B8(v30);
      goto LABEL_10;
    }

    if (v26 == 1)
    {
      sub_1A5244D04();
      sub_1A3C37150(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1A52F8E10;
      *(v27 + 32) = v24;
      v28 = v27 + 32;
      *(v27 + 40) = v23;
      sub_1A3DD76A0(v27);
      swift_setDeallocating();
      sub_1A3C651B8(v28);
LABEL_10:
      v22 = sub_1A5244E74();

      return v22;
    }

    if (!v26)
    {
      sub_1A52445A4();
      sub_1A3C37150(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_1A52F8E10;
      *(v31 + 32) = v24;
      v32 = v31 + 32;
      *(v31 + 40) = v23;
      sub_1A3DD76A0(v31);
      swift_setDeallocating();
      sub_1A3C651B8(v32);
      goto LABEL_10;
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A43334AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3C38BD4();
  v6 = v5;
  sub_1A4335E5C(0, &qword_1EB126230, MEMORY[0x1E69C12C8], MEMORY[0x1E69E6F90]);
  v7 = sub_1A5244EE4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x1E69C12A8], v7);
  v11 = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  v13 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t sub_1A4333684(void **a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69C12B0], v4, v6);
  v10 = sub_1A4331DF4(v9, a2, v8, 0, 1);
  (*(v5 + 8))(v8, v4);
  return v10;
}

double sub_1A4333798@<D0>(_OWORD *a1@<X8>)
{

  sub_1A46BE164(v2, 0, v5, 14.0, 0.0, 0.0, 0.0);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  a1[2] = v6[0];
  result = *(v6 + 9);
  *(a1 + 41) = *(v6 + 9);
  return result;
}

uint64_t sub_1A4333818(uint64_t a1)
{
  result = PhotosObservableTrip<>.title.getter(a1);
  if (!v2)
  {
    return sub_1A3C38BD4();
  }

  return result;
}

uint64_t sub_1A433385C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A433AD30();

  return sub_1A4201830(a1, a2, a3, v6);
}

void sub_1A43338D4(uint64_t *a1)
{
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A4332AAC(*a1, *v1, *(v1 + 8), *(v1 + 16), &v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
}

unint64_t sub_1A4333A3C(uint64_t a1)
{
  v2 = sub_1A3C441B4();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A4333A78()
{
  v1 = [*(*v0 + 16) px_virtualCollections];
  v2 = [v1 tripsCollection];

  return v2;
}

uint64_t sub_1A4333B0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext();
  if (static LemonadePhotoLibraryContext.== infix(_:_:)(*a1, *a2) & 1) == 0 || ((*(a1 + 8) ^ *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1A524EAB4() & 1) == 0 || (sub_1A4333BDC(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A4333BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244EE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A4335DB4(&qword_1EB1385D8, MEMORY[0x1E69C12C8]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4333DF0()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A4335DB4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524ECB4();
  sub_1A524C794();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  MEMORY[0x1A590A010](v2);
  if (v2)
  {
    v3 = *(sub_1A5244EE4() - 8);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    sub_1A4335DB4(&qword_1EB128FA0, MEMORY[0x1E69C12C8]);
    do
    {
      sub_1A524C4B4();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return sub_1A524C794();
}

uint64_t sub_1A4333F80()
{
  sub_1A524EC94();
  sub_1A4333DF0();
  return sub_1A524ECE4();
}

uint64_t sub_1A4333FC4()
{
  sub_1A524EC94();
  sub_1A4333DF0();
  return sub_1A524ECE4();
}

uint64_t sub_1A4334000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v16 = a1[6];
  v17 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v14 = a2[6];
  v15 = a2[5];
  type metadata accessor for LemonadePhotoLibraryContext();
  v12 = static LemonadePhotoLibraryContext.== infix(_:_:)(v2, v7);
  result = 0;
  if ((v12 & 1) != 0 && ((v3 ^ v8) & 1) == 0)
  {
    if (v4 == v10 && v5 == v9 || (sub_1A524EAB4()) && (sub_1A4333BDC(v6, v11))
    {
      if (v17 == v15 && v16 == v14)
      {
        return 1;
      }

      else
      {

        return sub_1A524EAB4();
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A4334140()
{
  sub_1A4338EAC();
  swift_allocObject();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A43341E0(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v9 = a2;
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v7 = a1[3];
  v5[3] = a1[2];
  v5[4] = v7;
  sub_1A433B3F4(v10, v8);
  sub_1A4335DB4(&qword_1EB124AF0, sub_1A4338E18);
  sub_1A5245F44();
}

void sub_1A43342E4()
{
  sub_1A4335E5C(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A5242D94();
  sub_1A5246544();
}

void sub_1A43344E4(uint64_t a1)
{
  sub_1A43390C4(0, &qword_1EB127F50, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v2);
  v9 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v9);
  v3 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  [v3 isCloudPhotoLibraryEnabled];
  v4 = sub_1A524C634();
  v5 = PXLemonadeLocalizedString(v4);

  sub_1A524C674();
  v6 = sub_1A524C634();

  v7 = PXLemonadeLocalizedString(v6);

  sub_1A524C674();
  sub_1A3C38BD4();
  v8 = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43348A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A433A090(0, &qword_1EB1356A0, type metadata accessor for LemonadeFeatureAvailabilityProcessingView, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7];
  type metadata accessor for LemonadeFeatureAvailabilityMonitor();
  v18 = 4;
  v9 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v10 = static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(&v18, v9);

  v11 = v10;
  v12 = sub_1A3C5A374();
  v13 = sub_1A3C5A374();
  v17[12] = 1;
  sub_1A4092D8C(v11, 0x100000000, 2, 0, 0, 0, 0, v12 & 1, v8, v13 & 1, 0, 0);
  v14 = sub_1A524A074();

  v15 = &v8[*(v5 + 36)];
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  sub_1A4208E70(v8, a2);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

void sub_1A4334B04()
{
  sub_1A433AE94();

    ;
  }
}

void sub_1A4334B40()
{
  sub_1A433AE94();

    ;
  }
}

uint64_t sub_1A4334B7C(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A43362AC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A4334D08@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56))
  {
    v3 = sub_1A437C79C();
  }

  else
  {
    if (qword_1EB16B000 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for LemonadeFeedBodyStyle(0);
    v3 = __swift_project_value_buffer(v4, qword_1EB1EBCB8);
  }

  return sub_1A433B638(v3, a1, type metadata accessor for LemonadeFeedBodyStyle);
}

uint64_t sub_1A4334D98(uint64_t a1)
{
  sub_1A433A090(0, &qword_1EB138550, sub_1A433A0FC, &type metadata for LemonadeTripsCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v16 - v4);
  sub_1A433A0FC();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 56);
  if (v11)
  {
    v12 = v11;
    sub_1A4335048(a1, v12);
    (*(v8 + 16))(v5, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1A4335DB4(&qword_1EB138560, sub_1A433A0FC);
    sub_1A433A1E8();
    sub_1A5249744();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {

    sub_1A46BE164(v14, 1, v16, 14.0, 0.0, 0.0, 0.0);
    v15 = v16[1];
    *v5 = v16[0];
    v5[1] = v15;
    v5[2] = v17[0];
    *(v5 + 41) = *(v17 + 9);
    swift_storeEnumTagMultiPayload();
    sub_1A4335DB4(&qword_1EB138560, sub_1A433A0FC);
    sub_1A433A1E8();
    return sub_1A5249744();
  }
}

uint64_t sub_1A4335048(uint64_t a1, void *a2)
{
  v4 = sub_1A5243284();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x540))(v6);
  v11[1] = a1;

  PhotosObservableTrip<>.title.getter(v9);
  (*(v5 + 104))(v8, *MEMORY[0x1E69C23E0], v4);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A40F3878();
  sub_1A5243EC4();
  sub_1A4335DB4(&qword_1EB129290, sub_1A40F3878);
  sub_1A4335DB4(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
  return sub_1A5242AA4();
}

uint64_t sub_1A4335290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    v6 = *(a1 + 16);
    v7 = *(a2 + 40);
    if (v7)
    {
      (*((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0))(v6);
    }

    else
    {
      v10 = v6;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a3);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = *(a2 + 40);
    if (v9)
    {
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x2D0))();
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A433541C(uint64_t a1)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4335474()
{
  sub_1A524EC94();
  sub_1A43353F4(v2, *v0);
  return sub_1A524ECE4();
}

uint64_t sub_1A43354DC(void *a1)
{
  PXDisplayCollectionDetailedCountsMake(*a1);

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4335534()
{
  swift_getWitnessTable();

  return sub_1A3C47918();
}

id sub_1A4335588()
{
  v0 = objc_allocWithZone(MEMORY[0x1E6978840]);

  return [v0 init];
}

uint64_t sub_1A43355C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v30 = a5;
  v8 = sub_1A5244EE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(v9 + 16);
  v16(&v29 - v14, a2, v8, v13);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A4338F3C(0, &qword_1EB12A000, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v18 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v19 = v18;
  if ((a4 & 1) == 0)
  {
    [v18 setFetchLimit_];
  }

  v20 = [v17 tripsSource];
  if (v20 == 2)
  {
    (v16)(v11, v15, v8);
    sub_1A5244EF4();
    swift_allocObject();
    v21 = v19;
    v24 = v30;
    sub_1A5244ED4();
    sub_1A5244B94();
    v23 = sub_1A5244B84();
    goto LABEL_7;
  }

  if (v20 == 1)
  {
    (v16)(v11, v15, v8);
    sub_1A5244EF4();
    swift_allocObject();
    v21 = v19;
    v22 = v30;
    sub_1A5244ED4();
    sub_1A5244D04();
    v23 = sub_1A5245014();
LABEL_7:
    v25 = v23;

LABEL_10:
    (*(v9 + 8))(v15, v8);
    return v25;
  }

  if (!v20)
  {
    (v16)(v11, v15, v8);
    sub_1A5244EF4();
    swift_allocObject();
    v26 = v19;
    v27 = v30;
    sub_1A5244ED4();
    sub_1A52445A4();
    v25 = sub_1A5244594();

    goto LABEL_10;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A433596C()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 tripsCollection];

  return v2;
}

uint64_t sub_1A43359C4()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for LemonadeFeedBodyStyle(0);
  __swift_allocate_value_buffer(v3, qword_1EB1EBCB8);
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBCB8);
  v5 = sub_1A3C52D68();
  v7 = v6;
  v9 = v8;
  v10 = sub_1A3C4ED50();
  v14[8] = 1;
  *v2 = sub_1A4335B14;
  *(v2 + 1) = 0;
  v2[16] = 2;
  *(v2 + 3) = 9;
  v2[32] = 1;
  *(v2 + 5) = sub_1A433B94C;
  *(v2 + 6) = 0;
  *(v2 + 7) = sub_1A4335C44;
  *(v2 + 8) = 0;
  *(v2 + 9) = v5;
  *(v2 + 10) = v7;
  v2[88] = v9;
  v2[89] = v10;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v2, 3, v11, v12 & 1, v4);
}

uint64_t sub_1A4335B14(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  if (shouldUseNewCollectionsLayout()())
  {
    v7 = 41;
  }

  else
  {
    v7 = 14;
  }

  (*(v3 + 8))(v6, v2);
  return v7;
}

double sub_1A4335C48(uint64_t a1, unsigned __int8 *a2)
{
  sub_1A433B7C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v9 = *(v8 + 56);
  v10 = sub_1A5242D14();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, a1, v10);
  v6[v9] = v7;
  v12 = (*(v11 + 88))(v6, v10);
  if (v12 == *MEMORY[0x1E69C2200] || (v12 == *MEMORY[0x1E69C21F8] ? (v13 = (v7 - 4) >= 3) : (v13 = 0), v13))
  {
    (*(v11 + 8))(v6, v10);
    return 24.0;
  }

  else
  {
    sub_1A4335DFC(v6, sub_1A433B7C4);
    return 32.0;
  }
}

uint64_t sub_1A4335DB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4335DFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4335E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4335EC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A52413B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A4335DB4(&qword_1EB1385B8, MEMORY[0x1E6969AD0]);
  v33 = a2;
  v11 = sub_1A524C4A4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A4335DB4(&unk_1EB146170, MEMORY[0x1E6969AD0]);
      v21 = sub_1A524C594();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A4337914(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

double sub_1A43361A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A3CAB9BC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4337440();
      v9 = v14;
    }

    v10 = (*(v9 + 56) + (v7 << 6));
    v11 = v10[1];
    *a2 = *v10;
    a2[1] = v11;
    v12 = v10[3];
    a2[2] = v10[2];
    a2[3] = v12;
    sub_1A4337170(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1A4336240(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A4338278(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A433646C(v5);
  *a1 = v2;
  return result;
}

char *sub_1A43362AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C37150(0, &qword_1EB120378, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A43363D0(uint64_t a1, uint64_t a2)
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

  sub_1A3C37150(0, &qword_1EB120378, &type metadata for LemonadeTripsFeature.SectionedFeedProvider.TabItem, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

uint64_t sub_1A433646C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A524EA34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A524CAC4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A433664C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A4336564(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A4336564(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + (a3 << 6));
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = v10 - 4;
      result = *(v10 - 8);
      v12 = result == *v10 && *(v10 - 7) == *(v10 + 1);
      if (v12 || (result = sub_1A524EAB4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 4;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = v10[2];
      v13 = v10[3];
      v16 = *v10;
      v15 = v10[1];
      v17 = *(v10 - 3);
      *v10 = *v11;
      v10[1] = v17;
      v18 = *(v10 - 1);
      v10[2] = *(v10 - 2);
      v10[3] = v18;
      *v11 = v16;
      *(v10 - 3) = v15;
      v10 -= 4;
      v11[2] = v14;
      v11[3] = v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A433664C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v104;
    if (!*v104)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1A3D86884(v8);
      v8 = result;
    }

    v94 = v8 + 16;
    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v8[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_1A4336C40((*a3 + (*v96 << 6)), (*a3 + (*v98 << 6)), (*a3 + (v99 << 6)), v9);
        if (v5)
        {
        }

        if (v99 < v97)
        {
          goto LABEL_130;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_131;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_132;
        }

        v95 = *v94 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + (v7 << 6));
      v11 = (*a3 + (v9 << 6));
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1A524EAB4();
        v13 = result;
      }

      v7 = (v9 + 2);
      if ((v9 + 2) < v6)
      {
        v14 = v11 + 9;
        v15 = v11 + 9;
        do
        {
          v17 = v15[8];
          v15 += 8;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[7] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A524EAB4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = (v7 << 6) - 64;
          v20 = v9 << 6;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v32 + v20);
              v24 = (v32 + v19);
              v26 = v23[2];
              v25 = v23[3];
              v28 = *v23;
              v27 = v23[1];
              v29 = v24[3];
              v31 = *v24;
              v30 = v24[1];
              v23[2] = v24[2];
              v23[3] = v29;
              *v23 = v31;
              v23[1] = v30;
              *v24 = v28;
              v24[1] = v27;
              v24[2] = v26;
              v24[3] = v25;
            }

            ++v22;
            v19 -= 64;
            v20 += 64;
          }

          while (v22 < v21);
        }
      }
    }

    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3D8598C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_1A3D8598C((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_143;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_75:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_89:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_96:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
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
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v9 = *&v8[16 * v91 + 32];
        v92 = *&v8[16 * v53 + 40];
        sub_1A4336C40((*a3 + (v9 << 6)), (*a3 + (*&v8[16 * v53 + 32] << 6)), (*a3 + (v92 << 6)), v52);
        if (v5)
        {
        }

        if (v92 < v9)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D86884(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v91];
        *(v93 + 4) = v9;
        *(v93 + 5) = v92;
        result = sub_1A3D867F8(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v102 = v5;
  if (&v9[a4] >= v33)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = &v9[a4];
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v102;
    goto LABEL_55;
  }

  v34 = *a3;
  v35 = *a3 + (v7 << 6);
  v101 = v9;
  v36 = &v9[-v7];
LABEL_43:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = v38 - 4;
    v40 = *(v38 - 8) == *v38 && *(v38 - 7) == *(v38 + 1);
    if (v40 || (result = sub_1A524EAB4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v35 += 64;
      --v36;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v101;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v42 = v38[2];
    v41 = v38[3];
    v44 = *v38;
    v43 = v38[1];
    v45 = *(v38 - 3);
    *v38 = *v39;
    v38[1] = v45;
    v46 = *(v38 - 1);
    v38[2] = *(v38 - 2);
    v38[3] = v46;
    *v39 = v44;
    *(v38 - 3) = v43;
    v38 -= 4;
    v39[2] = v42;
    v39[3] = v41;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}