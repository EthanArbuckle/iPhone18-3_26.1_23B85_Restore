uint64_t NearDeviceProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2664097F4()
{
  result = qword_2800736C0;
  if (!qword_2800736C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800736C0);
  }

  return result;
}

uint64_t sub_266409920(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v51 = v7;
  v52 = v11;
  while (v10)
  {
    v58 = a1;
    v13 = v12;
LABEL_12:
    v14 = (*(a2 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
    v16 = *v14;
    v15 = v14[1];
    swift_beginAccess();
    v17 = *a3;
    v18 = *(*a3 + 16);

    if (v18 && (v19 = sub_2662A3E98(v16, v15), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + 8 * v19);
    }

    else
    {
      v21 = 0;
    }

    swift_endAccess();
    swift_beginAccess();
    v22 = *a4;
    if (*(*a4 + 16) && (v23 = sub_2662A3E98(v16, v15), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = 0;
    }

    swift_endAccess();
    v26 = __OFADD__(v21, v25);
    v27 = v21 + v25;
    if (v26)
    {
      goto LABEL_42;
    }

    swift_beginAccess();
    v28 = *a5;
    if (*(*a5 + 16) && (v29 = sub_2662A3E98(v16, v15), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v31 = 0;
    }

    swift_endAccess();
    v26 = __OFADD__(v27, v31);
    v32 = v27 + v31;
    if (v26)
    {
      goto LABEL_43;
    }

    swift_beginAccess();
    v33 = *a6;
    if (*(*a6 + 16) && (v34 = sub_2662A3E98(v16, v15), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
    }

    else
    {
      v36 = 0;
    }

    swift_endAccess();
    v37 = v32 + v36;
    if (__OFADD__(v32, v36))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = sub_2662A3E98(v16, v15);
    v41 = v58[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_45;
    }

    v44 = v39;
    if (v58[3] >= v43)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26645410C();
      }
    }

    else
    {
      sub_266450E14(v43, isUniquelyReferenced_nonNull_native);
      v45 = sub_2662A3E98(v16, v15);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_47;
      }

      v40 = v45;
    }

    v10 &= v10 - 1;
    a1 = v58;
    if (v44)
    {
      *(v58[7] + 8 * v40) = v37;
    }

    else
    {
      v58[(v40 >> 6) + 8] |= 1 << v40;
      v47 = (v58[6] + 16 * v40);
      *v47 = v16;
      v47[1] = v15;
      *(v58[7] + 8 * v40) = v37;
      v48 = v58[2];
      v26 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v26)
      {
        goto LABEL_46;
      }

      v58[2] = v49;
    }

    v12 = v13;
    v7 = v51;
    v11 = v52;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return a1;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v58 = a1;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_266409C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = a2;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736C8, &qword_2664EBFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736D0, &unk_2664EBFC0);
  v11 = sub_2664E0318();
  v22 = v12;
  v23 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v24;
  v17[1] = a3;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E36F0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2662C4094();
  v19 = v22;
  *(v18 + 32) = v23;
  *(v18 + 40) = v19;
  sub_2664DFDC8();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_266352A18;
  *(v20 + 24) = v16;

  sub_266409FB4(sub_266352AC0, v20, v26, v25);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_266409FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v13 = sub_26632958C(1017);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v14, v8);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v13;
    v18 = a2;
    v19 = a1;
    v20 = a4;
    v21 = a3;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "NowPlayingUsageSignal#signal", v17, 2u);
    v23 = v22;
    a3 = v21;
    a4 = v20;
    a1 = v19;
    a2 = v18;
    v13 = v26;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  if (qword_280F912D0 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  v24[2] = v13;
  v24[3] = a1;
  v24[4] = a2;

  sub_26640D27C(a4, &qword_280F91D20, sub_266352BC8, v24, a3);
}

void sub_26640A278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  v15 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  v16 = a5;
  a9(v15, a6, a7, a8, a3, a4, v16);
}

void sub_26640A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, const char *a6)
{
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a3 + 16);
  *(a3 + 16) = a1;

  swift_beginAccess();
  v18 = *(a4 + 16);
  *(a4 + 16) = a2;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v19, v12);

  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    v24 = sub_2664E01D8();
    v26 = sub_2662A320C(v24, v25, &v33);
    v32 = v12;
    v27 = a5;
    v28 = a6;
    v29 = v26;

    *(v22 + 4) = v29;
    v30 = v28;
    a5 = v27;
    _os_log_impl(&dword_26629C000, v20, v21, v30, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    (*(v13 + 8))(v16, v32);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  dispatch_group_leave(a5);
}

void sub_26640A60C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);

  v9 = a5;
  sub_2664100C0(v8, &unk_2877E5078, 0xD000000000000011, 0x80000002664F8420, a3, a4, v9);
}

uint64_t sub_26640A6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v80 = a8;
  v75 = a6;
  v82 = a4;
  v83 = a3;
  v84 = a2;
  v16 = sub_2664DE438();
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v16);
  v77 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v76 = a1;
  v19 = *(a1 + 16);
  v20 = *(v19 + 16);
  if (v20)
  {
    v81 = sub_26640C820(*(v19 + 16), 0);
    v21 = sub_26640D024(v85, v81 + 4, v20, v19);

    sub_2662B793C();
    if (v21 == v20)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v81 = MEMORY[0x277D84F90];
LABEL_5:
  v74 = a7;
  v22 = v84;
  swift_beginAccess();
  v23 = *(v22 + 16);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_26640C820(*(v23 + 16), 0);
    v26 = sub_26640D024(v85, v25 + 4, v24, v23);

    sub_2662B793C();
    if (v26 == v24)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_9:
  v85[0] = v81;
  sub_2662F9CB0(v25);
  v27 = v85[0];
  v28 = v83;
  swift_beginAccess();
  v29 = *(v28 + 16);
  v30 = *(v29 + 16);
  if (v30)
  {
    v81 = v27;
    v31 = sub_26640C820(v30, 0);
    v32 = sub_26640D024(v85, v31 + 4, v30, v29);

    result = sub_2662B793C();
    if (v32 != v30)
    {
      __break(1u);
      goto LABEL_19;
    }

    v27 = v81;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v85[0] = v27;
  sub_2662F9CB0(v31);
  v34 = v85[0];
  v35 = v82;
  swift_beginAccess();
  v36 = *(v35 + 16);
  v37 = *(v36 + 16);
  if (!v37)
  {
    v38 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v81 = v34;
  v38 = sub_26640C820(v37, 0);
  v39 = sub_26640D024(v85, v38 + 4, v37, v36);

  result = sub_2662B793C();
  if (v39 == v37)
  {
    v34 = v81;
LABEL_17:
    v81 = a14;
    v73 = a13;
    v72 = a12;
    v71 = a11;
    v85[0] = v34;
    sub_2662F9CB0(v38);
    v40 = sub_26639EB98(v85[0]);

    v41 = v83;
    v42 = v84;
    v43 = v76;
    v44 = v82;
    v45 = sub_266409920(MEMORY[0x277D84F98], v40, (v84 + 16), (v83 + 16), (v76 + 16), (v82 + 16));
    v46 = v75;
    swift_beginAccess();
    v47 = *(v46 + 16);

    v75 = sub_26641080C(v40, v47, v45);

    swift_beginAccess();
    v48 = *(v41 + 16);

    v49 = sub_26641080C(v40, v48, v45);

    swift_beginAccess();
    v50 = *(v43 + 16);

    v83 = sub_26641080C(v40, v50, v45);

    swift_beginAccess();
    v51 = *(v44 + 16);

    v82 = sub_26641080C(v40, v51, v45);

    swift_beginAccess();
    v52 = *(v42 + 16);

    v53 = sub_26641080C(v40, v52, v45);

    swift_beginAccess();
    v54 = *(a9 + 16);
    swift_beginAccess();
    v55 = *(a10 + 16);
    v56 = v71;
    swift_beginAccess();
    v57 = *(v56 + 16);
    v58 = v72;
    swift_beginAccess();
    v59 = *(v58 + 16);
    v60 = v73;
    swift_beginAccess();
    v61 = *(v60 + 16);

    v62 = v77;
    sub_2664DE428();
    sub_2664DE388();
    v64 = v63;
    (*(v78 + 8))(v62, v79);
    v65 = type metadata accessor for NowPlayingUsageSignal();
    v66 = swift_allocObject();
    v66[12] = v64;
    v66[2] = v54;
    v66[3] = v55;
    v66[4] = v57;
    v66[5] = v59;
    v67 = v75;
    v66[6] = v61;
    v66[7] = v67;
    v68 = v82;
    v69 = v83;
    v66[8] = v49;
    v66[9] = v69;
    v66[10] = v68;
    v66[11] = v53;
    v85[3] = v65;
    v85[4] = &off_2877F0170;
    v85[0] = v66;
    v74(v85);
    return __swift_destroy_boxed_opaque_existential_1Tm(v85);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_26640AD28(uint64_t a1)
{
  v3 = sub_2664DFE38();
  v196 = *(v3 - 8);
  v197 = v3;
  v4 = *(v196 + 64);
  MEMORY[0x28223BE20](v3);
  v195 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[2];

  v7 = sub_266449428(a1, v6);

  v8 = v1[2];
  v1[2] = v7;

  v9 = v1[3];

  v10 = sub_266449428(a1, v9);

  v11 = v1[3];
  v1[3] = v10;

  v12 = v1[4];

  v13 = sub_266449428(a1, v12);

  v14 = v1[4];
  v1[4] = v13;

  v15 = v1[5];

  v16 = sub_266449428(a1, v15);

  v17 = v1[5];
  v1[5] = v16;

  v18 = v1[6];

  v19 = sub_266449428(a1, v18);

  v20 = v1[6];
  v1[6] = v19;

  v22 = sub_26639F100(v21);
  v201 = v1;
  v23 = v1[2];

  v199 = v22;
  v25 = sub_2663D8A24(v24, v22);

  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v26 = sub_2664E0C78();
  v27 = v26;
  v28 = 0;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v25 + 64);
  v32 = (v29 + 63) >> 6;
  for (i = v26 + 64; v31; v27[2] = v45)
  {
    v33 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
LABEL_10:
    v36 = v33 | (v28 << 6);
    v37 = (*(v25 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = *(*(v25 + 56) + 8 * v36);

    v41 = Double.rounded(to:)(3);
    *(i + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v42 = (v27[6] + 16 * v36);
    *v42 = v39;
    v42[1] = v38;
    *(v27[7] + 8 * v36) = v41;
    v43 = v27[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }
  }

  v34 = v28;
  while (1)
  {
    v28 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v28 >= v32)
    {
      break;
    }

    v35 = *(v25 + 64 + 8 * v28);
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v31 = (v35 - 1) & v35;
      goto LABEL_10;
    }
  }

  v46 = v201;
  v47 = v201[2];
  v201[2] = v27;

  v48 = v46[3];

  v25 = sub_2663D8A24(v49, v199);

  v50 = sub_2664E0C78();
  v51 = v50;
  v52 = 0;
  v53 = 1 << *(v25 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v25 + 64);
  v56 = (v53 + 63) >> 6;
  i = v50 + 64;
  if (!v55)
  {
LABEL_17:
    v58 = v52;
    while (1)
    {
      v52 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_66;
      }

      if (v52 >= v56)
      {

        v69 = v201;
        v70 = v201[3];
        v201[3] = v51;

        v71 = v69[4];

        v25 = sub_2663D8A24(v72, v199);

        v73 = sub_2664E0C78();
        v74 = v73;
        v75 = 0;
        v76 = 1 << *(v25 + 32);
        v77 = -1;
        if (v76 < 64)
        {
          v77 = ~(-1 << v76);
        }

        v78 = v77 & *(v25 + 64);
        v79 = (v76 + 63) >> 6;
        i = v73 + 64;
        if (!v78)
        {
LABEL_29:
          v81 = v75;
          while (1)
          {
            v75 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_67;
            }

            if (v75 >= v79)
            {

              v92 = v201;
              v93 = v201[4];
              v201[4] = v74;

              v94 = v92[5];

              v25 = sub_2663D8A24(v95, v199);

              v96 = sub_2664E0C78();
              v97 = v96;
              v98 = 0;
              v99 = 1 << *(v25 + 32);
              v100 = -1;
              if (v99 < 64)
              {
                v100 = ~(-1 << v99);
              }

              v101 = v100 & *(v25 + 64);
              v102 = (v99 + 63) >> 6;
              i = v96 + 64;
              if (!v101)
              {
LABEL_41:
                v104 = v98;
                while (1)
                {
                  v98 = v104 + 1;
                  if (__OFADD__(v104, 1))
                  {
                    goto LABEL_68;
                  }

                  if (v98 >= v102)
                  {

                    v115 = v201;
                    v116 = v201[5];
                    v201[5] = v97;

                    v117 = v115[6];

                    v25 = sub_2663D8A24(v118, v199);

                    v119 = sub_2664E0C78();
                    v120 = v119;
                    v121 = 0;
                    v122 = 1 << *(v25 + 32);
                    v123 = -1;
                    if (v122 < 64)
                    {
                      v123 = ~(-1 << v122);
                    }

                    v124 = v123 & *(v25 + 64);
                    v125 = (v122 + 63) >> 6;
                    i = v119 + 64;
                    if (!v124)
                    {
LABEL_53:
                      v127 = v121;
                      while (1)
                      {
                        v121 = v127 + 1;
                        if (__OFADD__(v127, 1))
                        {
                          goto LABEL_69;
                        }

                        if (v121 >= v125)
                        {

                          v25 = v201;
                          v138 = v201[6];
                          v201[6] = v120;

                          if (qword_280F914E8 != -1)
                          {
                            goto LABEL_75;
                          }

                          goto LABEL_62;
                        }

                        v128 = *(v25 + 64 + 8 * v121);
                        ++v127;
                        if (v128)
                        {
                          v126 = __clz(__rbit64(v128));
                          v124 = (v128 - 1) & v128;
                          goto LABEL_58;
                        }
                      }
                    }

                    while (1)
                    {
                      v126 = __clz(__rbit64(v124));
                      v124 &= v124 - 1;
LABEL_58:
                      v129 = v126 | (v121 << 6);
                      v130 = (*(v25 + 48) + 16 * v129);
                      v132 = *v130;
                      v131 = v130[1];
                      v133 = *(*(v25 + 56) + 8 * v129);

                      v134 = Double.rounded(to:)(3);
                      *(i + ((v129 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v129;
                      v135 = (v120[6] + 16 * v129);
                      *v135 = v132;
                      v135[1] = v131;
                      *(v120[7] + 8 * v129) = v134;
                      v136 = v120[2];
                      v44 = __OFADD__(v136, 1);
                      v137 = v136 + 1;
                      if (v44)
                      {
                        goto LABEL_74;
                      }

                      v120[2] = v137;
                      if (!v124)
                      {
                        goto LABEL_53;
                      }
                    }
                  }

                  v105 = *(v25 + 64 + 8 * v98);
                  ++v104;
                  if (v105)
                  {
                    v103 = __clz(__rbit64(v105));
                    v101 = (v105 - 1) & v105;
                    goto LABEL_46;
                  }
                }
              }

              while (1)
              {
                v103 = __clz(__rbit64(v101));
                v101 &= v101 - 1;
LABEL_46:
                v106 = v103 | (v98 << 6);
                v107 = (*(v25 + 48) + 16 * v106);
                v108 = *v107;
                v109 = v107[1];
                v110 = *(*(v25 + 56) + 8 * v106);

                v111 = Double.rounded(to:)(3);
                *(i + ((v106 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v106;
                v112 = (v97[6] + 16 * v106);
                *v112 = v108;
                v112[1] = v109;
                *(v97[7] + 8 * v106) = v111;
                v113 = v97[2];
                v44 = __OFADD__(v113, 1);
                v114 = v113 + 1;
                if (v44)
                {
                  goto LABEL_73;
                }

                v97[2] = v114;
                if (!v101)
                {
                  goto LABEL_41;
                }
              }
            }

            v82 = *(v25 + 64 + 8 * v75);
            ++v81;
            if (v82)
            {
              v80 = __clz(__rbit64(v82));
              v78 = (v82 - 1) & v82;
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
          v80 = __clz(__rbit64(v78));
          v78 &= v78 - 1;
LABEL_34:
          v83 = v80 | (v75 << 6);
          v84 = (*(v25 + 48) + 16 * v83);
          v85 = *v84;
          v86 = v84[1];
          v87 = *(*(v25 + 56) + 8 * v83);

          v88 = Double.rounded(to:)(3);
          *(i + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
          v89 = (v74[6] + 16 * v83);
          *v89 = v85;
          v89[1] = v86;
          *(v74[7] + 8 * v83) = v88;
          v90 = v74[2];
          v44 = __OFADD__(v90, 1);
          v91 = v90 + 1;
          if (v44)
          {
            goto LABEL_72;
          }

          v74[2] = v91;
          if (!v78)
          {
            goto LABEL_29;
          }
        }
      }

      v59 = *(v25 + 64 + 8 * v52);
      ++v58;
      if (v59)
      {
        v57 = __clz(__rbit64(v59));
        v55 = (v59 - 1) & v59;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v57 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
LABEL_22:
    v60 = v57 | (v52 << 6);
    v61 = (*(v25 + 48) + 16 * v60);
    v62 = *v61;
    v63 = v61[1];
    v64 = *(*(v25 + 56) + 8 * v60);

    v65 = Double.rounded(to:)(3);
    *(i + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
    v66 = (v51[6] + 16 * v60);
    *v66 = v62;
    v66[1] = v63;
    *(v51[7] + 8 * v60) = v65;
    v67 = v51[2];
    v44 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (v44)
    {
      break;
    }

    v51[2] = v68;
    if (!v55)
    {
      goto LABEL_17;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  swift_once();
LABEL_62:
  v139 = v197;
  v140 = __swift_project_value_buffer(v197, qword_280F914F0);
  swift_beginAccess();
  v142 = v195;
  v141 = v196;
  (*(v196 + 16))(v195, v140, v139);

  v143 = sub_2664DFE18();
  v144 = sub_2664E06C8();

  if (os_log_type_enabled(v143, v144))
  {
    v145 = swift_slowAlloc();
    LODWORD(v199) = v144;
    v146 = v145;
    i = swift_slowAlloc();
    v202 = i;
    *v146 = 136317442;
    v147 = *(v25 + 16);

    v148 = sub_2664E01D8();
    v150 = v149;

    v151 = sub_2662A320C(v148, v150, &v202);

    *(v146 + 4) = v151;
    *(v146 + 12) = 2080;
    v152 = *(v25 + 24);

    v153 = sub_2664E01D8();
    v155 = v154;

    v156 = sub_2662A320C(v153, v155, &v202);

    *(v146 + 14) = v156;
    *(v146 + 22) = 2080;
    v157 = *(v25 + 32);

    v158 = sub_2664E01D8();
    v160 = v159;

    v161 = sub_2662A320C(v158, v160, &v202);

    *(v146 + 24) = v161;
    *(v146 + 32) = 2080;
    v162 = *(v25 + 40);

    v163 = sub_2664E01D8();
    v165 = v164;

    v166 = sub_2662A320C(v163, v165, &v202);

    *(v146 + 34) = v166;
    *(v146 + 42) = 2080;
    v167 = *(v25 + 48);

    v168 = sub_2664E01D8();
    v170 = v169;

    v171 = sub_2662A320C(v168, v170, &v202);

    *(v146 + 44) = v171;
    *(v146 + 52) = 2080;
    v172 = *(v25 + 56);
    v173 = sub_2664E01D8();
    v175 = sub_2662A320C(v173, v174, &v202);

    *(v146 + 54) = v175;
    *(v146 + 62) = 2080;
    v176 = *(v25 + 64);
    v177 = sub_2664E01D8();
    v179 = sub_2662A320C(v177, v178, &v202);

    *(v146 + 64) = v179;
    *(v146 + 72) = 2080;
    v180 = *(v25 + 72);
    v181 = sub_2664E01D8();
    v183 = sub_2662A320C(v181, v182, &v202);

    *(v146 + 74) = v183;
    *(v146 + 82) = 2080;
    v184 = *(v25 + 80);
    v185 = sub_2664E01D8();
    v187 = sub_2662A320C(v185, v186, &v202);

    *(v146 + 84) = v187;
    *(v146 + 92) = 2080;
    v188 = *(v25 + 88);
    v189 = sub_2664E01D8();
    v191 = sub_2662A320C(v189, v190, &v202);

    *(v146 + 94) = v191;
    _os_log_impl(&dword_26629C000, v143, v199, "NowPlayingUsage#applyCandidates musicScore:%s, podcastsScore:%s, booksScore:%s, radioScore:%s, musicScoreWithoutRadio:%s, musicUsagePercentage: %s, podcastUsagePercentage: %s, booksUsagePercentage: %s, radioPercentage:%s, musicWithoutRadioPrecentage %s ", v146, 0x66u);
    v192 = i;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v192, -1, -1);
    MEMORY[0x266784AD0](v146, -1, -1);

    return (*(v196 + 8))(v195, v197);
  }

  else
  {

    return (*(v141 + 8))(v142, v139);
  }
}

uint64_t sub_26640B9D0()
{
  v0 = sub_2662C3A68(&unk_2877E1810);
  result = swift_arrayDestroy();
  qword_280F91C60 = v0;
  return result;
}

unint64_t sub_26640BA1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EBEE0;
  *(inited + 32) = 0x6F63536567617375;
  *(inited + 40) = 0xEF636973754D6572;
  v7 = v2[2];
  v8 = 0;
  v9 = 0;
  if (*(v7 + 16))
  {

    v10 = sub_2662A3E98(a1, a2);
    if (v11)
    {
      v9 = *(*(v7 + 56) + 8 * v10);
    }
  }

  v12 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000002664F13E0;
  v13 = v3[3];
  if (*(v13 + 16))
  {
    v14 = v3[3];

    v15 = sub_2662A3E98(a1, a2);
    if (v16)
    {
      v8 = *(*(v13 + 56) + 8 * v15);
    }
  }

  *(inited + 96) = v8;
  *(inited + 120) = v12;
  *(inited + 128) = 0x6F63536567617375;
  *(inited + 136) = 0xEF736B6F6F426572;
  v17 = v3[4];
  if (*(v17 + 16))
  {
    v18 = v3[4];

    v19 = sub_2662A3E98(a1, a2);
    v20 = 0;
    if (v21)
    {
      v20 = *(*(v17 + 56) + 8 * v19);
    }
  }

  else
  {
    v20 = 0;
  }

  *(inited + 144) = v20;
  *(inited + 168) = v12;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x80000002664F1420;
  v22 = v3[7];
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = sub_2662A3E98(a1, a2);
    if (v25)
    {
      v23 = *(*(v22 + 56) + 8 * v24);
    }

    else
    {
      v23 = 0;
    }
  }

  v26 = MEMORY[0x277D83B88];
  *(inited + 192) = v23;
  *(inited + 216) = v26;
  *(inited + 224) = 0xD00000000000001FLL;
  *(inited + 232) = 0x80000002664F1440;
  v27 = v3[8];
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_2662A3E98(a1, a2);
    if (v30)
    {
      v28 = *(*(v27 + 56) + 8 * v29);
    }

    else
    {
      v28 = 0;
    }
  }

  *(inited + 240) = v28;
  *(inited + 264) = v26;
  *(inited + 272) = 0xD00000000000001CLL;
  *(inited + 280) = 0x80000002664F1460;
  v31 = v3[9];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = sub_2662A3E98(a1, a2);
    if (v34)
    {
      v32 = *(*(v31 + 56) + 8 * v33);
    }

    else
    {
      v32 = 0;
    }
  }

  *(inited + 288) = v32;
  *(inited + 312) = v26;
  *(inited + 320) = 0x6F63536567617375;
  *(inited + 328) = 0xEF6F696461526572;
  v35 = v3[5];
  v36 = 0;
  v37 = 0;
  if (*(v35 + 16))
  {
    v38 = v3[5];

    v39 = sub_2662A3E98(a1, a2);
    if (v40)
    {
      v37 = *(*(v35 + 56) + 8 * v39);
    }
  }

  *(inited + 336) = v37;
  *(inited + 360) = v12;
  *(inited + 368) = 0xD00000000000001BLL;
  *(inited + 376) = 0x80000002664F1400;
  v41 = v3[6];
  if (*(v41 + 16))
  {
    v42 = v3[6];

    v43 = sub_2662A3E98(a1, a2);
    if (v44)
    {
      v36 = *(*(v41 + 56) + 8 * v43);
    }
  }

  *(inited + 384) = v36;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD00000000000001DLL;
  *(inited + 424) = 0x80000002664F14A0;
  v45 = v3[10];
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = sub_2662A3E98(a1, a2);
    if (v48)
    {
      v46 = *(*(v45 + 56) + 8 * v47);
    }

    else
    {
      v46 = 0;
    }
  }

  *(inited + 432) = v46;
  *(inited + 456) = v26;
  *(inited + 464) = 0xD000000000000029;
  *(inited + 472) = 0x80000002664F14C0;
  v49 = v3[11];
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = sub_2662A3E98(a1, a2);
    if (v52)
    {
      v50 = *(*(v49 + 56) + 8 * v51);
    }

    else
    {
      v50 = 0;
    }
  }

  *(inited + 480) = v50;
  *(inited + 504) = v26;
  *(inited + 512) = 0xD00000000000001DLL;
  *(inited + 520) = 0x80000002664F1480;
  *(inited + 552) = v26;
  *(inited + 528) = -1;
  v53 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v53;
}

uint64_t sub_26640BE54(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v42 = a5;
  v43 = a4;
  v44 = a3;
  v40 = a2;
  v45 = sub_2664DFE38();
  v41 = *(v45 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v45);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(a1 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      sub_2662A5550(*(a1 + 56) + 40 * v16, v48);
      v47[0] = v18;
      v47[1] = v19;

      sub_26640C328(v18, v19, v48, &v50, &v49);
      sub_26634CD00(v47);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  if (qword_280F914E8 == -1)
  {
    goto LABEL_12;
  }

LABEL_17:
  swift_once();
LABEL_12:
  v20 = v45;
  v21 = __swift_project_value_buffer(v45, qword_280F914F0);
  swift_beginAccess();
  v22 = v41;
  (*(v41 + 16))(v8, v21, v20);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46[0] = v26;
    *v25 = 136315650;
    swift_beginAccess();

    v27 = v22;
    v28 = sub_2664E01D8();
    v30 = v29;

    v31 = sub_2662A320C(v28, v30, v46);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    swift_beginAccess();

    v32 = sub_2664E01D8();
    v34 = v33;

    v35 = sub_2662A320C(v32, v34, v46);

    *(v25 + 14) = v35;
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_2662A320C(v40, v44, v46);
    _os_log_impl(&dword_26629C000, v23, v24, "NowPlayingUsage#signal View for bundle counts: %s and scores %s for input %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v26, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    (*(v27 + 8))(v8, v45);
  }

  else
  {

    (*(v22 + 8))(v8, v20);
  }

  v36 = v43;
  swift_beginAccess();
  v37 = v49;
  swift_beginAccess();
  v38 = v50;

  v36(v37, v38);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_26640C328(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v47 = a4;
  v9 = sub_2664DF3C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v43 = a1;
    v44 = a2;
    v45 = a5;
    v48 = MEMORY[0x277D84F90];
    v46 = v16;
    sub_2662FD0FC(0, v17, 0);
    v18 = v46;
    v19 = v48;
    v20 = *(v48 + 16);
    v21 = 32;
    do
    {
      v22 = *(v18 + v21);
      v48 = v19;
      v23 = *(v19 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_2662FD0FC((v23 > 1), v20 + 1, 1);
        v18 = v46;
        v19 = v48;
      }

      *(v19 + 16) = v20 + 1;
      *(v19 + 8 * v20 + 32) = v22;
      v21 += 2;
      ++v20;
      --v17;
    }

    while (v17);

    a2 = v44;
    a5 = v45;
    a1 = v43;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  (*(v10 + 104))(v13, *MEMORY[0x277D5FF78], v9);

  v24 = sub_2664DF3B8();
  (*(v10 + 8))(v13, v9);
  result = sub_2662F2640(v24, v19);
  v29 = (v28 >> 1) - v27;
  if (v28 >> 1 == v27)
  {
    v30 = 0;
LABEL_14:
    swift_unknownObjectRelease();
    v34 = v47;
    v35 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *v34;
    *v34 = 0x8000000000000000;
    sub_26634F1AC(v30, a1, a2, isUniquelyReferenced_nonNull_native);
    v37 = *v34;
    *v34 = v48;

    sub_2663D8E90(v19, 604800.0);
    v39 = v38;

    v40 = *a5;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *a5;
    *a5 = 0x8000000000000000;
    sub_26634F084(a1, a2, v41, v39);
    v42 = *a5;
    *a5 = v48;
  }

  else
  {
    if ((v28 >> 1) > v27)
    {
      v30 = 0;
      v31 = (v26 + 8 * v27);
      while (1)
      {
        v32 = *v31++;
        v33 = __OFADD__(v30, v32);
        v30 += v32;
        if (v33)
        {
          break;
        }

        if (!--v29)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_26640C628()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  return v0;
}

uint64_t sub_26640C690()
{
  sub_26640C628();

  return swift_deallocClassInstance();
}

uint64_t sub_26640C6F8()
{
  if (qword_280F8FD78 != -1)
  {
    swift_once();
  }
}

void *sub_26640C79C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072938, qword_2664EBFD0);
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

void *sub_26640C820(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
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

void *sub_26640C8A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072918, &unk_2664E4F90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_26640C934(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
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

void *sub_26640C9BC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
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

void *sub_26640CB14(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_2662C0AE0(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_2662C0AE0(v28, v27);
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
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26640CC9C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

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
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_26640CDF8(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2664E0A58();
  sub_2663E9D9C();
  sub_2662A3DC0(&qword_280072EF0, sub_2663E9D9C);
  result = sub_2664E0638();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2664E0A88())
      {
        goto LABEL_30;
      }

      sub_2663E9D9C();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_26640D024(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
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

void *sub_26640D17C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_26640D27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a4;
  v80 = a3;
  v102 = a1;
  v7 = sub_2664E0038();
  v108 = *(v7 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2664E00B8();
  v106 = *(v105 - 8);
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_2664DE438();
  v86 = *(v87 - 8);
  v79 = *(v86 + 64);
  v14 = MEMORY[0x28223BE20](v87);
  v78 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = &v77 - v16;
  v117[3] = &type metadata for SiriRemembersEntityProvider;
  v117[4] = &off_2877EB680;
  v117[0] = swift_allocObject();
  sub_26634CBCC(a2, v117[0] + 16);
  sub_2664DE428();
  v17 = dispatch_group_create();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D84F98];
  *(v18 + 16) = MEMORY[0x277D84F98];
  v20 = v18;
  v95 = swift_allocObject();
  *(v95 + 16) = v19;
  v92 = swift_allocObject();
  *(v92 + 16) = v19;
  v96 = swift_allocObject();
  *(v96 + 16) = v19;
  v97 = swift_allocObject();
  *(v97 + 16) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = v21;
  v93 = swift_allocObject();
  *(v93 + 16) = v19;
  v91 = swift_allocObject();
  *(v91 + 16) = v19;
  v94 = swift_allocObject();
  *(v94 + 16) = v19;
  v82 = swift_allocObject();
  *(v82 + 16) = v19;
  dispatch_group_enter(v17);
  sub_2662A5550(v117, &v116);
  v23 = swift_allocObject();
  *(v23 + 2) = a5;
  v90 = a5;
  sub_2662A8618(&v116, (v23 + 24));
  v84 = v20;
  *(v23 + 8) = v20;
  *(v23 + 9) = v22;
  v83 = v22;
  *(v23 + 10) = v17;
  v114 = sub_26640E1AC;
  v115 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v101 = &v112;
  v112 = sub_2662A3F90;
  v113 = &block_descriptor_37;
  v24 = _Block_copy(&aBlock);

  v25 = v17;
  v26 = v13;
  sub_2664E0068();
  v109 = MEMORY[0x277D84F90];
  v107 = sub_2662A3DC0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v104 = sub_2662A5AC8();
  v27 = v10;
  sub_2664E0A08();
  v28 = v26;
  MEMORY[0x266783800](0, v26, v27, v24);
  _Block_release(v24);
  v29 = *(v108 + 8);
  v108 += 8;
  v103 = v29;
  v29(v27, v7);
  v30 = *(v106 + 8);
  v106 += 8;
  v30(v26, v105);
  v31 = v30;
  v89 = v30;

  dispatch_group_enter(v25);
  sub_2662A5550(v117, &v116);
  v32 = swift_allocObject();
  *(v32 + 2) = a5;
  sub_2662A8618(&v116, (v32 + 24));
  v33 = v93;
  *(v32 + 8) = v95;
  *(v32 + 9) = v33;
  *(v32 + 10) = v25;
  v114 = sub_26640E22C;
  v115 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_2662A3F90;
  v113 = &block_descriptor_49;
  v34 = _Block_copy(&aBlock);
  v35 = v25;

  sub_2664E0068();
  v109 = MEMORY[0x277D84F90];
  v98 = v27;
  v99 = v7;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v28, v27, v34);
  _Block_release(v34);
  v103(v27, v7);
  v36 = v105;
  v31(v28, v105);

  dispatch_group_enter(v35);
  sub_2662A5550(v117, &v116);
  v37 = swift_allocObject();
  v38 = v90;
  *(v37 + 2) = v90;
  sub_2662A8618(&v116, (v37 + 24));
  v39 = v91;
  *(v37 + 8) = v92;
  *(v37 + 9) = v39;
  *(v37 + 10) = v35;
  v114 = sub_26640E260;
  v115 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_2662A3F90;
  v113 = &block_descriptor_55;
  v40 = _Block_copy(&aBlock);
  v41 = v35;

  v42 = v28;
  sub_2664E0068();
  v109 = MEMORY[0x277D84F90];
  v43 = v98;
  v44 = v99;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v28, v43, v40);
  _Block_release(v40);
  v103(v43, v44);
  v89(v28, v36);

  dispatch_group_enter(v41);
  sub_2662A5550(v117, &v116);
  v45 = swift_allocObject();
  *(v45 + 2) = v38;
  sub_2662A8618(&v116, (v45 + 24));
  v46 = v94;
  *(v45 + 8) = v96;
  *(v45 + 9) = v46;
  *(v45 + 10) = v41;
  v114 = sub_26640E28C;
  v115 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_2662A3F90;
  v113 = &block_descriptor_61;
  v47 = _Block_copy(&aBlock);
  v48 = v41;

  sub_2664E0068();
  v109 = MEMORY[0x277D84F90];
  v49 = v98;
  v50 = v99;
  sub_2664E0A08();
  v81 = v28;
  MEMORY[0x266783800](0, v28, v49, v47);
  _Block_release(v47);
  v51 = v103;
  v103(v49, v50);
  v52 = v105;
  v53 = v89;
  v89(v42, v105);

  dispatch_group_enter(v48);
  sub_2662A5550(v117, &v116);
  v54 = swift_allocObject();
  *(v54 + 2) = v90;
  sub_2662A8618(&v116, (v54 + 24));
  v55 = v82;
  *(v54 + 8) = v97;
  *(v54 + 9) = v55;
  *(v54 + 10) = v48;
  v114 = sub_26640E300;
  v115 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_2662A3F90;
  v113 = &block_descriptor_67;
  v56 = _Block_copy(&aBlock);
  v77 = v48;

  v57 = v55;

  v58 = v81;
  sub_2664E0068();
  v109 = MEMORY[0x277D84F90];
  v59 = v98;
  v60 = v99;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v58, v59, v56);
  _Block_release(v56);
  v51(v59, v60);
  v53(v58, v52);

  v61 = v86;
  v62 = v78;
  v63 = v87;
  (*(v86 + 16))(v78, v85, v87);
  v64 = (*(v61 + 80) + 120) & ~*(v61 + 80);
  v65 = swift_allocObject();
  *(v65 + 2) = v91;
  *(v65 + 3) = v57;
  v66 = v94;
  *(v65 + 4) = v93;
  *(v65 + 5) = v66;
  v67 = v83;
  *(v65 + 6) = v90;
  *(v65 + 7) = v67;
  v68 = v88;
  *(v65 + 8) = v80;
  *(v65 + 9) = v68;
  v69 = v95;
  *(v65 + 10) = v84;
  *(v65 + 11) = v69;
  v70 = v96;
  *(v65 + 12) = v92;
  *(v65 + 13) = v70;
  *(v65 + 14) = v97;
  (*(v61 + 32))(&v65[v64], v62, v63);
  v114 = sub_26640E314;
  v115 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_2662A3F90;
  v113 = &block_descriptor_73;
  v71 = _Block_copy(&aBlock);

  v72 = v81;
  sub_2664E0068();
  *&v116 = MEMORY[0x277D84F90];
  v73 = v98;
  v74 = v99;
  sub_2664E0A08();
  v75 = v77;
  sub_2664E0758();
  _Block_release(v71);

  v103(v73, v74);
  v89(v72, v105);
  (*(v86 + 8))(v85, v87);

  return __swift_destroy_boxed_opaque_existential_1Tm(v117);
}

uint64_t objectdestroy_42Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26640E390(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v71 = a3;
  v72 = a4;
  v11 = sub_2664DFE38();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = sub_2664DFE08();
  v69 = *(v18 - 8);
  v70 = v18;
  isa = v69[8].isa;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DE438();
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;

  v27 = a7;
  v73 = v25;
  sub_2664DE428();
  v28 = sub_2663742F8(a2);
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = swift_allocObject();
    v32[2] = v71;
    v32[3] = v72;
    v32[4] = sub_266410D38;
    v32[5] = v26;

    sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    sub_2664DFDF8();
    sub_2664DFDC8();
    (v69[1].isa)(v21, v70);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_266410DD8;
    *(v33 + 24) = v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    *(v33 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v33);
  }

  else
  {
    v34 = v72;
    v65 = a6;
    v66 = a5;
    v69 = v27;
    v70 = v26;
    v67 = v15;
    v35 = v68;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v11;
    v37 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v38 = *(v35 + 16);
    v39 = v17;
    v64 = v37;
    v63 = v38;
    v38(v17, v37, v11);
    v40 = v34;

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(v71, v40, &v77);
      _os_log_impl(&dword_26629C000, v41, v42, "NowPlayingUsage#signal received unexpected empty item query for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v45 = *(v35 + 8);
    v45(v39, v36);
    v47 = v65;
    v46 = v66;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_266386140(MEMORY[0x277D84F90]);
    v50 = sub_266385CA8(v48);
    swift_beginAccess();
    v51 = *(v46 + 16);
    *(v46 + 16) = v49;

    swift_beginAccess();
    v52 = *(v47 + 16);
    *(v47 + 16) = v50;

    v53 = v67;
    v63(v67, v64, v36);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v45;
      v58 = v57;
      v76 = v57;
      *v56 = 136315138;
      v59 = sub_2664E01D8();
      v61 = sub_2662A320C(v59, v60, &v76);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_26629C000, v54, v55, "NowPlayingUsageSignal#signal usage music complete with counts %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      v72(v67, v36);
    }

    else
    {

      v45(v53, v36);
    }

    dispatch_group_leave(v69);
  }

  (*(v74 + 8))(v73, v75);
}

uint64_t sub_26640EADC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v71 = a3;
  v72 = a4;
  v11 = sub_2664DFE38();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = sub_2664DFE08();
  v69 = *(v18 - 8);
  v70 = v18;
  isa = v69[8].isa;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DE438();
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;

  v27 = a7;
  v73 = v25;
  sub_2664DE428();
  v28 = sub_2663742F8(a2);
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = swift_allocObject();
    v32[2] = v71;
    v32[3] = v72;
    v32[4] = sub_266410CC8;
    v32[5] = v26;

    sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    sub_2664DFDF8();
    sub_2664DFDC8();
    (v69[1].isa)(v21, v70);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_266410DD8;
    *(v33 + 24) = v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    *(v33 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v33);
  }

  else
  {
    v34 = v72;
    v65 = a6;
    v66 = a5;
    v69 = v27;
    v70 = v26;
    v67 = v15;
    v35 = v68;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v11;
    v37 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v38 = *(v35 + 16);
    v39 = v17;
    v64 = v37;
    v63 = v38;
    v38(v17, v37, v11);
    v40 = v34;

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(v71, v40, &v77);
      _os_log_impl(&dword_26629C000, v41, v42, "NowPlayingUsage#signal received unexpected empty item query for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v45 = *(v35 + 8);
    v45(v39, v36);
    v47 = v65;
    v46 = v66;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_266386140(MEMORY[0x277D84F90]);
    v50 = sub_266385CA8(v48);
    swift_beginAccess();
    v51 = *(v46 + 16);
    *(v46 + 16) = v49;

    swift_beginAccess();
    v52 = *(v47 + 16);
    *(v47 + 16) = v50;

    v53 = v67;
    v63(v67, v64, v36);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v45;
      v58 = v57;
      v76 = v57;
      *v56 = 136315138;
      v59 = sub_2664E01D8();
      v61 = sub_2662A320C(v59, v60, &v76);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_26629C000, v54, v55, "NowPlayingUsageSignal#signal usage podcasts complete with counts %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      v72(v67, v36);
    }

    else
    {

      v45(v53, v36);
    }

    dispatch_group_leave(v69);
  }

  (*(v74 + 8))(v73, v75);
}

uint64_t sub_26640F228(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v71 = a3;
  v72 = a4;
  v11 = sub_2664DFE38();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = sub_2664DFE08();
  v69 = *(v18 - 8);
  v70 = v18;
  isa = v69[8].isa;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DE438();
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;

  v27 = a7;
  v73 = v25;
  sub_2664DE428();
  v28 = sub_2663742F8(a2);
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = swift_allocObject();
    v32[2] = v71;
    v32[3] = v72;
    v32[4] = sub_266410CA0;
    v32[5] = v26;

    sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    sub_2664DFDF8();
    sub_2664DFDC8();
    (v69[1].isa)(v21, v70);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_266410DD8;
    *(v33 + 24) = v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    *(v33 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v33);
  }

  else
  {
    v34 = v72;
    v65 = a6;
    v66 = a5;
    v69 = v27;
    v70 = v26;
    v67 = v15;
    v35 = v68;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v11;
    v37 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v38 = *(v35 + 16);
    v39 = v17;
    v64 = v37;
    v63 = v38;
    v38(v17, v37, v11);
    v40 = v34;

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(v71, v40, &v77);
      _os_log_impl(&dword_26629C000, v41, v42, "NowPlayingUsage#signal received unexpected empty item query for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v45 = *(v35 + 8);
    v45(v39, v36);
    v47 = v65;
    v46 = v66;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_266386140(MEMORY[0x277D84F90]);
    v50 = sub_266385CA8(v48);
    swift_beginAccess();
    v51 = *(v46 + 16);
    *(v46 + 16) = v49;

    swift_beginAccess();
    v52 = *(v47 + 16);
    *(v47 + 16) = v50;

    v53 = v67;
    v63(v67, v64, v36);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v45;
      v58 = v57;
      v76 = v57;
      *v56 = 136315138;
      v59 = sub_2664E01D8();
      v61 = sub_2662A320C(v59, v60, &v76);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_26629C000, v54, v55, "NowPlayingUsageSignal#signal usage books complete with counts %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      v72(v67, v36);
    }

    else
    {

      v45(v53, v36);
    }

    dispatch_group_leave(v69);
  }

  (*(v74 + 8))(v73, v75);
}

uint64_t sub_26640F974(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v71 = a3;
  v72 = a4;
  v11 = sub_2664DFE38();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = sub_2664DFE08();
  v69 = *(v18 - 8);
  v70 = v18;
  isa = v69[8].isa;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DE438();
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;

  v27 = a7;
  v73 = v25;
  sub_2664DE428();
  v28 = sub_2663742F8(a2);
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = swift_allocObject();
    v32[2] = v71;
    v32[3] = v72;
    v32[4] = sub_266410C78;
    v32[5] = v26;

    sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    sub_2664DFDF8();
    sub_2664DFDC8();
    (v69[1].isa)(v21, v70);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_266410DD8;
    *(v33 + 24) = v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    *(v33 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410DF4, v33);
  }

  else
  {
    v34 = v72;
    v65 = a6;
    v66 = a5;
    v69 = v27;
    v70 = v26;
    v67 = v15;
    v35 = v68;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v11;
    v37 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v38 = *(v35 + 16);
    v39 = v17;
    v64 = v37;
    v63 = v38;
    v38(v17, v37, v11);
    v40 = v34;

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(v71, v40, &v77);
      _os_log_impl(&dword_26629C000, v41, v42, "NowPlayingUsage#signal received unexpected empty item query for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v45 = *(v35 + 8);
    v45(v39, v36);
    v47 = v65;
    v46 = v66;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_266386140(MEMORY[0x277D84F90]);
    v50 = sub_266385CA8(v48);
    swift_beginAccess();
    v51 = *(v46 + 16);
    *(v46 + 16) = v49;

    swift_beginAccess();
    v52 = *(v47 + 16);
    *(v47 + 16) = v50;

    v53 = v67;
    v63(v67, v64, v36);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v45;
      v58 = v57;
      v76 = v57;
      *v56 = 136315138;
      v59 = sub_2664E01D8();
      v61 = sub_2662A320C(v59, v60, &v76);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_26629C000, v54, v55, "NowPlayingUsageSignal#signal usage radio complete with counts %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      v72(v67, v36);
    }

    else
    {

      v45(v53, v36);
    }

    dispatch_group_leave(v69);
  }

  (*(v74 + 8))(v73, v75);
}

uint64_t sub_2664100C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v71 = a3;
  v72 = a4;
  v11 = sub_2664DFE38();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = sub_2664DFE08();
  v69 = *(v18 - 8);
  v70 = v18;
  isa = v69[8].isa;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DE438();
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a7;

  v27 = a7;
  v73 = v25;
  sub_2664DE428();
  v28 = sub_2663742F8(a2);
  if (v29)
  {
    v30 = v29;
    v31 = v28;
    v32 = swift_allocObject();
    v32[2] = v71;
    v32[3] = v72;
    v32[4] = sub_266410C40;
    v32[5] = v26;

    sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    sub_2664DFDF8();
    sub_2664DFDC8();
    (v69[1].isa)(v21, v70);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_266410C68;
    *(v33 + 24) = v32;
    *(v33 + 32) = v31;
    *(v33 + 40) = v30;
    *(v33 + 48) = 0;

    sub_266373EC4(0, 0, sub_266410C74, v33);
  }

  else
  {
    v34 = v72;
    v65 = a6;
    v66 = a5;
    v69 = v27;
    v70 = v26;
    v67 = v15;
    v35 = v68;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = v11;
    v37 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v38 = *(v35 + 16);
    v39 = v17;
    v64 = v37;
    v63 = v38;
    v38(v17, v37, v11);
    v40 = v34;

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v77 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2662A320C(v71, v40, &v77);
      _os_log_impl(&dword_26629C000, v41, v42, "NowPlayingUsage#signal received unexpected empty item query for %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v45 = *(v35 + 8);
    v45(v39, v36);
    v47 = v65;
    v46 = v66;
    v48 = MEMORY[0x277D84F90];
    v49 = sub_266386140(MEMORY[0x277D84F90]);
    v50 = sub_266385CA8(v48);
    swift_beginAccess();
    v51 = *(v46 + 16);
    *(v46 + 16) = v49;

    swift_beginAccess();
    v52 = *(v47 + 16);
    *(v47 + 16) = v50;

    v53 = v67;
    v63(v67, v64, v36);

    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v72 = v45;
      v58 = v57;
      v76 = v57;
      *v56 = 136315138;
      v59 = sub_2664E01D8();
      v61 = sub_2662A320C(v59, v60, &v76);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_26629C000, v54, v55, "NowPlayingUsageSignal#signal usage musicWithoutRadio complete with counts %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x266784AD0](v58, -1, -1);
      MEMORY[0x266784AD0](v56, -1, -1);

      v72(v67, v36);
    }

    else
    {

      v45(v53, v36);
    }

    dispatch_group_leave(v69);
  }

  (*(v74 + 8))(v73, v75);
}

uint64_t sub_26641080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v68 = v4;
  while (v7)
  {
    v11 = v9;
LABEL_12:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a3 + 16);

    if (v16 && (v17 = sub_2662A3E98(v15, v14), (v18 & 1) != 0) && *(*(a3 + 56) + 8 * v17))
    {
      v19 = 0.0;
      if (*(a2 + 16))
      {
        v20 = sub_2662A3E98(v15, v14);
        if (v21)
        {
          v19 = *(*(a2 + 56) + 8 * v20);
        }
      }

      v22 = 1.0;
      if (*(a3 + 16))
      {
        v23 = sub_2662A3E98(v15, v14);
        if (v24)
        {
          v22 = *(*(a3 + 56) + 8 * v23);
        }
      }

      v25 = round(v19 / v22 * 100.0);
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_51;
      }

      if (v25 <= -9.22337204e18)
      {
        goto LABEL_52;
      }

      if (v25 >= 9.22337204e18)
      {
        goto LABEL_53;
      }

      v26 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v15;
      v29 = isUniquelyReferenced_nonNull_native;
      v70 = v10;
      v30 = v14;
      v31 = v28;
      v32 = v30;
      v33 = sub_2662A3E98(v28, v30);
      v35 = v10[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_54;
      }

      v39 = v34;
      if (v10[3] >= v38)
      {
        if ((v29 & 1) == 0)
        {
          v65 = v33;
          sub_26645410C();
          v33 = v65;
        }

        v40 = v31;
        v42 = v32;
      }

      else
      {
        sub_266450E14(v38, v29);
        v40 = v31;
        v41 = v31;
        v42 = v32;
        v33 = sub_2662A3E98(v41, v32);
        if ((v39 & 1) != (v43 & 1))
        {
          goto LABEL_56;
        }
      }

      v61 = v25;
      v10 = v70;
      if (v39)
      {
        *(v70[7] + 8 * v33) = v61;
        goto LABEL_5;
      }

      v70[(v33 >> 6) + 8] |= 1 << v33;
      v62 = (v70[6] + 16 * v33);
      *v62 = v40;
      v62[1] = v42;
      *(v70[7] + 8 * v33) = v61;
      v63 = v70[2];
      v37 = __OFADD__(v63, 1);
      v60 = v63 + 1;
      if (v37)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v26 = a3;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v45 = v15;
      v46 = v44;
      v71 = v10;
      v47 = v14;
      v48 = v45;
      v49 = v47;
      v50 = sub_2662A3E98(v45, v47);
      v52 = v10[2];
      v53 = (v51 & 1) == 0;
      v37 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v37)
      {
        goto LABEL_49;
      }

      v55 = v51;
      if (v10[3] >= v54)
      {
        if (v46)
        {
          v56 = v48;
          if (v51)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v64 = v50;
          sub_26645410C();
          v50 = v64;
          v56 = v48;
          v10 = v71;
          if (v55)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_266450E14(v54, v46);
        v56 = v48;
        v50 = sub_2662A3E98(v48, v49);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_56;
        }

        if (v55)
        {
LABEL_4:
          *(v10[7] + 8 * v50) = 0;
LABEL_5:

          goto LABEL_6;
        }
      }

      v10[(v50 >> 6) + 8] |= 1 << v50;
      v58 = (v10[6] + 16 * v50);
      *v58 = v56;
      v58[1] = v49;
      *(v10[7] + 8 * v50) = 0;
      v59 = v10[2];
      v37 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v37)
      {
        goto LABEL_50;
      }
    }

    v10[2] = v60;
LABEL_6:
    v9 = v11;
    a3 = v26;
    v4 = v68;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t objectdestroy_75Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_78Tm_0(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 24));
  a2(*(v3 + 40));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

id static CloudControllerProvider.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_280071C20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_2800736D8;
  *a1 = qword_2800736D8;

  return v2;
}

id sub_266410EA4()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    qword_2800736D8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_266410F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = *v6;
  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2663CE9D8;
    v12[3] = a5;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a6];
  _Block_release(v11);
}

void sub_266411038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v12 = *v8;
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2663CE9D8;
    v14[3] = a7;
    v13 = _Block_copy(v14);
  }

  else
  {
    v13 = 0;
  }

  [v12 *a8];
  _Block_release(v13);
}

id sub_266411148(void **a1, void (*a2)(__int128 *))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (v9 < 2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v10, v4);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26629C000, v11, v12, "CloudControllerProvider#init unexpected error resolving user identity", v13, 2u);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    a2(&v17);
    return sub_26641139C(&v17);
  }

  v14 = objc_opt_self();
  v15 = v9;
  result = [v14 controllerWithUserIdentity_];
  if (result)
  {
    *(&v18 + 1) = &type metadata for CloudControllerProvider;
    v19 = &protocol witness table for CloudControllerProvider;
    *&v17 = result;
    a2(&v17);

    return sub_26641139C(&v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_26641139C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D50, &unk_2664E6F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaybackQueueLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = 7827310;
  v3 = 0x726574616CLL;
  v4 = 0x6E776F6E6B6E75;
  if (v1 != 3)
  {
    v4 = 0x726F707075736E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1954047342;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SiriAudioSupport::PlaybackQueueLocation_optional __swiftcall PlaybackQueueLocation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_266411524()
{
  result = qword_2800736E0;
  if (!qword_2800736E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800736E0);
  }

  return result;
}

uint64_t sub_266411578()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_266411650()
{
  *v0;
  *v0;
  *v0;
  sub_2664E0368();
}

uint64_t sub_266411714()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_2664117F4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7827310;
  v5 = 0xE500000000000000;
  v6 = 0x726574616CLL;
  v7 = 0xE700000000000000;
  v8 = 0x6E776F6E6B6E75;
  if (v2 != 3)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1954047342;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_26641188C()
{
  result = qword_2800736E8;
  if (!qword_2800736E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800736F0, &qword_2664EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800736E8);
  }

  return result;
}

uint64_t static ShimUtilities.getAppBundleId(from:)(uint64_t a1)
{
  v183 = sub_2664DFFF8();
  v182 = *(v183 - 8);
  v2 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = &v171[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v178 = sub_2664DFFC8();
  v177 = *(v178 - 8);
  v4 = *(v177 + 64);
  v5 = MEMORY[0x28223BE20](v178);
  v175 = &v171[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v176 = &v171[-v8];
  MEMORY[0x28223BE20](v7);
  v184 = &v171[-v9];
  v195 = sub_2664DF678();
  v193 = *(v195 - 8);
  v10 = *(v193 + 64);
  MEMORY[0x28223BE20](v195);
  v192 = &v171[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v194 = sub_2664E0008();
  v188 = *(v194 - 8);
  v12 = *(v188 + 64);
  v13 = MEMORY[0x28223BE20](v194);
  v187 = &v171[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v180 = &v171[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v186 = &v171[-v18];
  MEMORY[0x28223BE20](v17);
  v191 = &v171[-v19];
  v205 = sub_2664DF698();
  v203 = *(v205 - 8);
  v20 = *(v203 + 8);
  v21 = MEMORY[0x28223BE20](v205);
  v202 = &v171[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v199 = &v171[-v23];
  v24 = sub_2664DFE38();
  v25 = *(v24 - 8);
  v206 = v24;
  v207 = v25;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v171[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v27);
  v201 = &v171[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v190 = &v171[-v33];
  v34 = MEMORY[0x28223BE20](v32);
  v185 = &v171[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v179 = &v171[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v189 = &v171[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v204 = &v171[-v41];
  MEMORY[0x28223BE20](v40);
  v43 = &v171[-v42];
  v44 = sub_2664DEBF8();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v171[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = sub_2664DEB38();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v171[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v52);
  v56 = &v171[-v55];
  (*(v45 + 16))(v48, a1, v44);
  if ((*(v45 + 88))(v48, v44) != *MEMORY[0x277D5C138])
  {
    (*(v45 + 8))(v48, v44);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v81 = v206;
    v82 = __swift_project_value_buffer(v206, qword_280F914F0);
    swift_beginAccess();
    v83 = v207;
    (*(v207 + 16))(v29, v82, v81);
    v84 = sub_2664DFE18();
    v85 = sub_2664E06D8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_26629C000, v84, v85, "ShimUtilities#getAppBundleId Not ifClientAction parse", v86, 2u);
      MEMORY[0x266784AD0](v86, -1, -1);
    }

    (*(v83 + 8))(v29, v81);
    return 0;
  }

  (*(v45 + 96))(v48, v44);
  (*(v50 + 32))(v56, v48, v49);
  v57 = v49;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v58 = v206;
  v59 = __swift_project_value_buffer(v206, qword_280F914F0);
  swift_beginAccess();
  v60 = v207;
  v61 = *(v207 + 16);
  v197 = v207 + 16;
  v198 = v59;
  v196 = v61;
  v61(v43, v59, v58);
  (*(v50 + 16))(v54, v56, v57);
  v62 = sub_2664DFE18();
  v63 = sub_2664E06C8();
  v64 = os_log_type_enabled(v62, v63);
  v174 = v50;
  v200 = v56;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v208 = v173;
    *v65 = 136315138;
    v66 = v199;
    sub_2664DEB28();
    sub_2664DF688();
    v172 = v63;
    v67 = v203;
    (*(v203 + 1))(v66, v205);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736F8, qword_2664EC1E0);
    v68 = sub_2664E01D8();
    v69 = v57;
    v71 = v70;

    v72 = *(v50 + 8);
    (v72)(v54, v69);
    v73 = sub_2662A320C(v68, v71, &v208);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_26629C000, v62, v172, "ShimUtilities#getAppBundleId shim parameter: %s", v65, 0xCu);
    v74 = v173;
    __swift_destroy_boxed_opaque_existential_1Tm(v173);
    v75 = v74;
    v76 = v207;
    MEMORY[0x266784AD0](v75, -1, -1);
    v77 = v206;
    MEMORY[0x266784AD0](v65, -1, -1);

    v78 = v69;
    v79 = v205;
    v80 = *(v76 + 8);
    (v80)(v43, v77);
  }

  else
  {

    v72 = *(v50 + 8);
    (v72)(v54, v57);
    v80 = *(v60 + 8);
    (v80)(v43, v58);
    v77 = v58;
    v78 = v57;
    v79 = v205;
    v67 = v203;
  }

  v87 = v202;
  sub_2664DEB28();
  v88 = sub_2664DF688();
  (*(v67 + 1))(v87, v79);
  v89 = v204;
  if (!*(v88 + 16) || (v90 = sub_2662A3E98(7368801, 0xE300000000000000), (v91 & 1) == 0))
  {

    v105 = v201;
    v196(v201, v198, v77);
    v106 = sub_2664DFE18();
    v107 = sub_2664E06D8();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_26629C000, v106, v107, "ShimUtilities#getAppBundleId app shimParameter not found", v108, 2u);
      MEMORY[0x266784AD0](v108, -1, -1);
    }

    (v80)(v105, v77);
    v109 = v200;
    v110 = v78;
    goto LABEL_40;
  }

  v92 = *(*(v88 + 56) + 8 * v90);

  v196(v89, v198, v77);

  v93 = sub_2664DFE18();
  v94 = sub_2664E06C8();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v205 = v78;
    v203 = v80;
    v96 = v72;
    v97 = v95;
    v98 = swift_slowAlloc();
    v208 = v98;
    *v97 = 136315138;
    v99 = MEMORY[0x2667834D0](v92, v195);
    v101 = sub_2662A320C(v99, v100, &v208);

    *(v97 + 4) = v101;
    _os_log_impl(&dword_26629C000, v93, v94, "ShimUtilities#getAppBundleId app parameter: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x266784AD0](v98, -1, -1);
    v102 = v97;
    v72 = v96;
    v80 = v203;
    v103 = v205;
    MEMORY[0x266784AD0](v102, -1, -1);

    v104 = v204;
  }

  else
  {
    v103 = v78;

    v104 = v89;
  }

  (v80)(v104, v77);
  v112 = v192;
  v111 = v193;
  if (!*(v92 + 16))
  {

LABEL_26:
    v133 = v190;
    v196(v190, v198, v77);
    v134 = sub_2664DFE18();
    v135 = sub_2664E06D8();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_26629C000, v134, v135, "ShimUtilities#getAppBundleId unable to extract appValue", v136, 2u);
      MEMORY[0x266784AD0](v136, -1, -1);
    }

    (v80)(v133, v77);
    v109 = v200;
    v110 = v103;
    goto LABEL_40;
  }

  v113 = v195;
  (*(v193 + 16))(v192, v92 + ((*(v193 + 80) + 32) & ~*(v193 + 80)), v195);

  if ((*(v111 + 88))(v112, v113) != *MEMORY[0x277D1C680])
  {
    (*(v111 + 8))(v112, v113);
    goto LABEL_26;
  }

  v202 = v72;
  v205 = v103;
  (*(v111 + 96))(v112, v113);
  v114 = v188;
  v115 = v191;
  v116 = v194;
  (*(v188 + 32))(v191, v112, v194);
  v117 = v189;
  v196(v189, v198, v77);
  v118 = v77;
  v119 = *(v114 + 16);
  v120 = v186;
  v119(v186, v115, v116);
  v121 = sub_2664DFE18();
  v122 = sub_2664E06C8();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v208 = v124;
    *v123 = 136315138;
    v119(v180, v120, v194);
    v125 = sub_2664E0318();
    v126 = v120;
    v128 = v127;
    v204 = *(v114 + 8);
    (v204)(v126, v194);
    v129 = sub_2662A320C(v125, v128, &v208);

    *(v123 + 4) = v129;
    _os_log_impl(&dword_26629C000, v121, v122, "ShimUtilities#getAppBundleId app value: %s", v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v124);
    MEMORY[0x266784AD0](v124, -1, -1);
    v130 = v123;
    v116 = v194;
    MEMORY[0x266784AD0](v130, -1, -1);

    v131 = v189;
    v132 = v206;
  }

  else
  {

    v204 = *(v114 + 8);
    (v204)(v120, v116);
    v131 = v117;
    v132 = v118;
  }

  v80(v131);
  v137 = v187;
  v119(v187, v191, v116);
  if ((*(v114 + 88))(v137, v116) != *MEMORY[0x277D72A58])
  {
    (v204)(v137, v116);
    v72 = v202;
LABEL_36:
    v160 = v185;
    v196(v185, v198, v132);
    v161 = sub_2664DFE18();
    v162 = sub_2664E06D8();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = v116;
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&dword_26629C000, v161, v162, "ShimUtilities#getAppBundleId unable to extract appValue typed entity", v164, 2u);
      MEMORY[0x266784AD0](v164, -1, -1);

      (v80)(v160, v132);
      v165 = v191;
      v166 = v163;
    }

    else
    {

      (v80)(v160, v132);
      v165 = v191;
      v166 = v116;
    }

    (v204)(v165, v166);
    v109 = v200;
    v110 = v205;
LABEL_40:
    (v72)(v109, v110);
    return 0;
  }

  v203 = v80;
  (*(v114 + 96))(v137, v116);
  v138 = *v137;
  v139 = swift_projectBox();
  v140 = v182;
  v141 = v181;
  v142 = v183;
  (*(v182 + 16))(v181, v139, v183);
  if ((*(v140 + 88))(v141, v142) != *MEMORY[0x277D72970])
  {
    (*(v140 + 8))(v141, v142);

    v72 = v202;
    v80 = v203;
    goto LABEL_36;
  }

  (*(v140 + 96))(v141, v142);
  v143 = v177;
  v144 = v184;
  v145 = v178;
  (*(v177 + 32))(v184, v141, v178);

  v146 = v179;
  v196(v179, v198, v132);
  v147 = *(v143 + 16);
  v148 = v176;
  v147(v176, v144, v145);
  v149 = sub_2664DFE18();
  v150 = sub_2664E06C8();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v208 = v201;
    *v151 = 136315138;
    v147(v175, v148, v145);
    v152 = sub_2664E0318();
    v154 = v153;
    v155 = *(v143 + 8);
    v155(v148, v145);
    v156 = sub_2662A320C(v152, v154, &v208);

    *(v151 + 4) = v156;
    _os_log_impl(&dword_26629C000, v149, v150, "ShimUtilities#getAppBundleId app: %s", v151, 0xCu);
    v157 = v201;
    __swift_destroy_boxed_opaque_existential_1Tm(v201);
    MEMORY[0x266784AD0](v157, -1, -1);
    MEMORY[0x266784AD0](v151, -1, -1);

    v158 = v206;
    v159 = v179;
  }

  else
  {

    v155 = *(v143 + 8);
    v155(v148, v145);
    v159 = v146;
    v158 = v132;
  }

  (v203)(v159, v158);
  v168 = v205;
  v169 = v184;
  v170 = sub_2664DFFB8();
  v155(v169, v145);
  (v204)(v191, v194);
  (v202)(v200, v168);
  return v170;
}

uint64_t static ShimUtilities.getShimExperience(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v256 = a2;
  v235 = sub_2664DFFA8();
  v240 = *(v235 - 8);
  v3 = *(v240 + 64);
  v4 = MEMORY[0x28223BE20](v235);
  v226 = &v217 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v233 = &v217 - v7;
  MEMORY[0x28223BE20](v6);
  v245 = &v217 - v8;
  v244 = sub_2664DFFF8();
  v243 = *(v244 - 8);
  v9 = *(v243 + 64);
  v10 = MEMORY[0x28223BE20](v244);
  v222 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v236 = &v217 - v12;
  v230 = sub_2664DFFE8();
  v229 = *(v230 - 8);
  v13 = *(v229 + 64);
  v14 = MEMORY[0x28223BE20](v230);
  v221 = &v217 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v227 = &v217 - v16;
  v17 = sub_2664DF678();
  v249 = *(v17 - 8);
  v250 = v17;
  v18 = *(v249 + 64);
  MEMORY[0x28223BE20](v17);
  v248 = &v217 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664E0008();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v225 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v224 = &v217 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v231 = &v217 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v238 = &v217 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v242 = (&v217 - v32);
  v33 = MEMORY[0x28223BE20](v31);
  v237 = &v217 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v241 = &v217 - v36;
  MEMORY[0x28223BE20](v35);
  v251 = &v217 - v37;
  v38 = sub_2664DF698();
  v261 = *(v38 - 8);
  v39 = v261[8];
  MEMORY[0x28223BE20](v38);
  v41 = &v217 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2664DFE38();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = MEMORY[0x28223BE20](v42);
  v254 = &v217 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v247 = &v217 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v232 = &v217 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v228 = &v217 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v217 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v234 = &v217 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v239 = &v217 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v246 = &v217 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v257 = &v217 - v63;
  MEMORY[0x28223BE20](v62);
  v65 = &v217 - v64;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v66 = __swift_project_value_buffer(v42, qword_280F914F0);
  swift_beginAccess();
  v67 = v43[2];
  v258 = v66;
  v259 = v67;
  v260 = v43 + 2;
  v67(v65, v66, v42);
  v68 = v261[2];
  v255 = a1;
  v68(v41, a1, v38);
  v69 = sub_2664DFE18();
  v70 = v38;
  v71 = sub_2664E06C8();
  v72 = os_log_type_enabled(v69, v71);
  v252 = v21;
  v253 = v20;
  v223 = v55;
  if (v72)
  {
    v73 = swift_slowAlloc();
    v220 = swift_slowAlloc();
    v262 = v220;
    *v73 = 136315138;
    v74 = v41;
    v219 = v70;
    sub_2664DF688();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800736F8, qword_2664EC1E0);
    v75 = v43;
    v76 = v42;
    v77 = sub_2664E01D8();
    v79 = v78;

    (v261[1])(v74, v219);
    v80 = v77;
    v42 = v76;
    v43 = v75;
    v81 = sub_2662A320C(v80, v79, &v262);

    *(v73 + 4) = v81;
    _os_log_impl(&dword_26629C000, v69, v71, "ShimUtilities#getShimExperience shim parameters: %s", v73, 0xCu);
    v82 = v220;
    __swift_destroy_boxed_opaque_existential_1Tm(v220);
    v83 = v256;
    MEMORY[0x266784AD0](v82, -1, -1);
    MEMORY[0x266784AD0](v73, -1, -1);

    v84 = v75[1];
    v84(v65, v42);
  }

  else
  {

    (v261[1])(v41, v70);
    v84 = v43[1];
    v84(v65, v42);
    v83 = v256;
  }

  v85 = v254;
  v86 = sub_2664DF688();
  v87 = v257;
  v88 = v258;
  if (!*(v86 + 16) || (v89 = sub_2662A3E98(0x6E45686372616573, 0xEC00000079746974), (v90 & 1) == 0))
  {

    v259(v85, v88, v42);
    v102 = sub_2664DFE18();
    v103 = sub_2664E06D8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      v105 = "ShimUtilities#getShimExperience searchEntity shimParameter not found";
LABEL_21:
      _os_log_impl(&dword_26629C000, v102, v103, v105, v104, 2u);
      MEMORY[0x266784AD0](v104, -1, -1);
    }

LABEL_22:

    v84(v85, v42);
    v126 = type metadata accessor for ShimExperience();
    return (*(*(v126 - 8) + 56))(v83, 1, 1, v126);
  }

  v91 = *(*(v86 + 56) + 8 * v89);

  v259(v87, v88, v42);

  v92 = sub_2664DFE18();
  v93 = sub_2664E06C8();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v255 = swift_slowAlloc();
    v262 = v255;
    *v94 = 136315138;
    v95 = MEMORY[0x2667834D0](v91, v250);
    v261 = v43;
    v97 = v83;
    v98 = v84;
    v99 = sub_2662A320C(v95, v96, &v262);
    v43 = v261;
    v88 = v258;

    *(v94 + 4) = v99;
    v84 = v98;
    v83 = v97;
    _os_log_impl(&dword_26629C000, v92, v93, "ShimUtilities#getShimExperience searchEntityParameter: %s", v94, 0xCu);
    v100 = v255;
    __swift_destroy_boxed_opaque_existential_1Tm(v255);
    MEMORY[0x266784AD0](v100, -1, -1);
    MEMORY[0x266784AD0](v94, -1, -1);

    v101 = v257;
  }

  else
  {

    v101 = v87;
  }

  v84(v101, v42);
  v106 = v252;
  v108 = v248;
  v107 = v249;
  if (!*(v91 + 16))
  {

    goto LABEL_19;
  }

  v109 = v250;
  (*(v249 + 16))(v248, v91 + ((*(v249 + 80) + 32) & ~*(v249 + 80)), v250);

  if ((*(v107 + 88))(v108, v109) != *MEMORY[0x277D1C680])
  {
    (*(v107 + 8))(v108, v109);
LABEL_19:
    v85 = v247;
    v259(v247, v88, v42);
    v102 = sub_2664DFE18();
    v103 = sub_2664E06D8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      v105 = "ShimUtilities#getShimExperience unable to extract searchEntityTypedValue";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  (*(v107 + 96))(v108, v109);
  v110 = v251;
  v111 = v88;
  v112 = v253;
  (*(v106 + 32))(v251, v108, v253);
  v259(v246, v111, v42);
  v113 = v106 + 16;
  v114 = v241;
  v255 = *(v106 + 16);
  (v255)(v241, v110, v112);
  v115 = sub_2664DFE18();
  v116 = sub_2664E06C8();
  v117 = os_log_type_enabled(v115, v116);
  v254 = v84;
  if (v117)
  {
    v118 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v262 = v261;
    *v118 = 136315138;
    v119 = v106;
    (v255)(v237, v114, v253);
    v120 = sub_2664E0318();
    v121 = v42;
    v123 = v122;
    v257 = *(v119 + 8);
    (v257)(v114, v253);
    v124 = sub_2662A320C(v120, v123, &v262);
    v42 = v121;

    *(v118 + 4) = v124;
    v106 = v119;
    _os_log_impl(&dword_26629C000, v115, v116, "ShimUtilities#getShimExperience searchEntityTypedValue: %s", v118, 0xCu);
    v125 = v261;
    __swift_destroy_boxed_opaque_existential_1Tm(v261);
    v112 = v253;
    MEMORY[0x266784AD0](v125, -1, -1);
    MEMORY[0x266784AD0](v118, -1, -1);

    (v254)(v246, v121);
  }

  else
  {

    v257 = *(v106 + 8);
    (v257)(v114, v112);
    v84(v246, v42);
  }

  v128 = v244;
  v129 = v243;
  v130 = v242;
  v250 = v113;
  v131 = v255;
  (v255)(v242, v251, v112);
  v249 = *(v106 + 88);
  v132 = (v249)(v130, v112);
  LODWORD(v248) = *MEMORY[0x277D72A58];
  v133 = v131;
  if (v132 == v248)
  {
    (*(v106 + 96))(v130, v112);
    v134 = *v130;
    v135 = swift_projectBox();
    v136 = v236;
    (*(v129 + 16))(v236, v135, v128);
    if ((*(v129 + 88))(v136, v128) == *MEMORY[0x277D72998])
    {
      (*(v129 + 96))(v136, v128);
      v137 = v229;
      v138 = v227;
      v139 = v230;
      (*(v229 + 32))(v227, v136, v230);

      sub_26641499C(v256);
      (*(v137 + 8))(v138, v139);
      return (v257)(v251, v112);
    }

    (*(v129 + 8))(v136, v128);
  }

  else
  {
    (v257)(v130, v112);
  }

  v140 = v239;
  v141 = v238;
  (v133)(v238, v251, v112);
  if ((v249)(v141, v112) != *MEMORY[0x277D72A38])
  {
    (v257)(v141, v112);
    v160 = v232;
    v259(v232, v258, v42);
    v161 = sub_2664DFE18();
    v162 = sub_2664E06D8();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_26629C000, v161, v162, "ShimUtilities#getShimExperience unable to extract mediaEntityValue", v163, 2u);
      MEMORY[0x266784AD0](v163, -1, -1);
    }

    (v254)(v160, v42);
    (v257)(v251, v253);
    goto LABEL_43;
  }

  v261 = v43;
  v246 = *(v106 + 96);
  v247 = (v106 + 96);
  (v246)(v141, v112);
  v142 = *v141;
  v143 = swift_projectBox();
  v144 = v240;
  v145 = v42;
  v146 = *(v240 + 16);
  v147 = v245;
  v148 = v235;
  v146(v245, v143, v235);

  v218 = v145;
  v259(v140, v258, v145);
  v149 = v233;
  v146(v233, v147, v148);
  v150 = sub_2664DFE18();
  v151 = sub_2664E06C8();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v262 = v242;
    *v152 = 136315138;
    LODWORD(v241) = v151;
    v146(v226, v149, v148);
    v153 = sub_2664E0318();
    v155 = v154;
    v156 = *(v144 + 8);
    (v156)(v149, v148);
    v157 = sub_2662A320C(v153, v155, &v262);

    v158 = v152;
    *(v152 + 4) = v157;
    _os_log_impl(&dword_26629C000, v150, v241, "ShimUtilities#getShimExperience mediaEntityValue: %s", v152, 0xCu);
    v159 = v242;
    __swift_destroy_boxed_opaque_existential_1Tm(v242);
    v112 = v253;
    MEMORY[0x266784AD0](v159, -1, -1);
    MEMORY[0x266784AD0](v158, -1, -1);
  }

  else
  {

    v156 = *(v144 + 8);
    (v156)(v149, v148);
  }

  v164 = v218;
  (v254)(v140, v218);
  v165 = v148;
  v166 = sub_2664DFF98();
  v167 = v234;
  if (!*(v166 + 16) || (v168 = sub_2662A3E98(0x6E65697265707865, 0xEE00656C69466563), (v169 & 1) == 0))
  {
    v187 = v257;

    v188 = v228;
    v259(v228, v258, v164);
    v189 = sub_2664DFE18();
    v190 = sub_2664E06D8();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      *v191 = 0;
      _os_log_impl(&dword_26629C000, v189, v190, "ShimUtilities#getShimExperience experienceFile property not found", v191, 2u);
      MEMORY[0x266784AD0](v191, -1, -1);
    }

    (v254)(v188, v164);
    (v156)(v245, v165);
    v187(v251, v112);
LABEL_43:
    v192 = type metadata accessor for ShimExperience();
    return (*(*(v192 - 8) + 56))(v256, 1, 1, v192);
  }

  v242 = v156;
  v170 = v231;
  v171 = v255;
  (v255)(v231, *(v166 + 56) + *(v252 + 72) * v168, v112);

  v259(v167, v258, v164);
  v172 = v224;
  (v171)(v224, v170, v112);
  v173 = v167;
  v174 = sub_2664DFE18();
  v175 = sub_2664E06C8();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v262 = v177;
    *v176 = 136315138;
    (v171)(v237, v172, v253);
    v178 = sub_2664E0318();
    v180 = v179;
    v181 = v172;
    v182 = v257;
    (v257)(v181, v253);
    v183 = sub_2662A320C(v178, v180, &v262);
    v164 = v218;

    *(v176 + 4) = v183;
    v184 = v235;
    _os_log_impl(&dword_26629C000, v174, v175, "ShimUtilities#getShimExperience experienceFile: %s", v176, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v177);
    v185 = v177;
    v112 = v253;
    MEMORY[0x266784AD0](v185, -1, -1);
    MEMORY[0x266784AD0](v176, -1, -1);

    (v254)(v234, v164);
    v186 = v244;
  }

  else
  {

    v193 = v172;
    v182 = v257;
    (v257)(v193, v112);
    (v254)(v173, v164);
    v186 = v244;
    v184 = v235;
  }

  v194 = v225;
  (v171)(v225, v231, v112);
  v195 = (v249)(v194, v112);
  if (v195 == v248)
  {
    v257 = v182;
    (v246)(v194, v112);
    v196 = *v194;
    v197 = swift_projectBox();
    v198 = v243;
    v199 = v222;
    (*(v243 + 16))(v222, v197, v186);
    v200 = (*(v198 + 88))(v199, v186);
    v201 = v256;
    if (v200 == *MEMORY[0x277D72998])
    {
      v202 = v112;
      (*(v198 + 96))(v199, v186);
      v203 = v229;
      v204 = v221;
      v205 = v230;
      (*(v229 + 32))(v221, v199, v230);

      sub_26641499C(v201);
      (*(v203 + 8))(v204, v205);
      v206 = v112;
      v207 = v257;
      (v257)(v231, v206);
      (v242)(v245, v184);
      return v207(v251, v202);
    }

    (*(v198 + 8))(v199, v186);
  }

  else
  {
    (v182)(v194, v112);
    v201 = v256;
  }

  v208 = v223;
  v259(v223, v258, v164);
  v209 = sub_2664DFE18();
  v210 = sub_2664E06D8();
  v211 = os_log_type_enabled(v209, v210);
  v212 = v254;
  if (v211)
  {
    v213 = swift_slowAlloc();
    *v213 = 0;
    _os_log_impl(&dword_26629C000, v209, v210, "ShimUtilities#getShimExperience unable to extract fileValue", v213, 2u);
    MEMORY[0x266784AD0](v213, -1, -1);
  }

  v212(v208, v164);
  v214 = v253;
  v215 = v257;
  (v257)(v231, v253);
  (v242)(v245, v184);
  v215(v251, v214);
  v216 = type metadata accessor for ShimExperience();
  return (*(*(v216 - 8) + 56))(v201, 1, 1, v216);
}

uint64_t sub_26641499C@<X0>(void *a1@<X8>)
{
  v145 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v1 = *(*(v133 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v133);
  v4 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v132 = &v128 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v137 = &v128 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v140 = &v128 - v10;
  MEMORY[0x28223BE20](v9);
  v136 = &v128 - v11;
  v141 = sub_2664DE268();
  v12 = *(v141 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v141);
  v134 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v131 = &v128 - v16;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v146 = (&v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v128 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v139 = &v128 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v143 = &v128 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v142 = &v128 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v128 - v31;
  v33 = sub_2664DFFD8();
  v34 = [v33 data];

  v35 = sub_2664DE2F8();
  v37 = v36;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v39 = v18[2];
  v148 = v18 + 2;
  v149 = v38;
  v147 = v39;
  v39(v32, v38, v17);
  sub_2663C50C4(v35, v37);
  v40 = sub_2664DFE18();
  v41 = v32;
  v42 = sub_2664E06C8();
  sub_266348774(v35, v37);
  v43 = os_log_type_enabled(v40, v42);
  v144 = v12;
  v138 = v4;
  v135 = v24;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v130 = v41;
    v45 = v44;
    v46 = swift_slowAlloc();
    v155 = v46;
    *v45 = 136315138;
    sub_2663C50C4(v35, v37);
    v47 = sub_2664DE298();
    v48 = v17;
    v49 = v18;
    v51 = v50;
    sub_266348774(v35, v37);
    v52 = sub_2662A320C(v47, v51, &v155);
    v53 = v49;
    v17 = v48;

    *(v45 + 4) = v52;
    _os_log_impl(&dword_26629C000, v40, v42, "ShimUtilities#getShimExperience fileData: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v45, -1, -1);

    v54 = v53[1];
    v54(v130, v48);
  }

  else
  {

    v54 = v18[1];
    v54(v41, v17);
  }

  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_2664E34E0;
  *(v55 + 32) = sub_2662C1744(0, &qword_280073618, 0x277CBEAC0);
  *(v55 + 40) = sub_2662C1744(0, &qword_280073700, 0x277CBEBC0);
  sub_2664E0728();
  v130 = v35;

  v56 = v142;
  v147(v142, v149, v17);
  sub_2662A7224(&v155, v153, &unk_280074250, &unk_2664E3680);
  v57 = sub_2664DFE18();
  v58 = sub_2664E06C8();
  v59 = os_log_type_enabled(v57, v58);
  v146 = v54;
  v129 = v37;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v152 = v61;
    *v60 = 136315138;
    sub_2662A7224(v153, &v150, &unk_280074250, &unk_2664E3680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
    v62 = sub_2664E0318();
    v64 = v63;
    sub_2662A9238(v153, &unk_280074250, &unk_2664E3680);
    v65 = sub_2662A320C(v62, v64, &v152);
    v54 = v146;

    *(v60 + 4) = v65;
    _os_log_impl(&dword_26629C000, v57, v58, "ShimUtilities#getShimExperience deserializedShimExperienceDictionary: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x266784AD0](v61, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);

    v66 = v142;
  }

  else
  {

    sub_2662A9238(v153, &unk_280074250, &unk_2664E3680);
    v66 = v56;
  }

  v54(v66, v17);
  v69 = v143;
  sub_2662A7224(&v155, v153, &unk_280074250, &unk_2664E3680);
  if (v154)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
    if (swift_dynamicCast())
    {
      v70 = v150;
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    sub_2662A9238(v153, &unk_280074250, &unk_2664E3680);
    v70 = 0;
  }

  v147(v69, v149, v17);

  v71 = sub_2664DFE18();
  v72 = sub_2664E06C8();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v153[0] = v74;
    *v73 = 136315138;
    v150 = v70;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
    v75 = sub_2664E0318();
    v77 = sub_2662A320C(v75, v76, v153);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_26629C000, v71, v72, "ShimUtilities#getShimExperience shimExperienceDictionary: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x266784AD0](v74, -1, -1);
    MEMORY[0x266784AD0](v73, -1, -1);

    v54(v143, v17);
  }

  else
  {

    v54(v69, v17);
  }

  v78 = v130;
  v79 = v141;
  v80 = v144;
  if (v70)
  {
    if (*(v70 + 16))
    {
      v81 = sub_2662A3E98(0x6E65697265707865, 0xEE00617461446563);
      v82 = 0xF000000000000000;
      if (v83)
      {
        sub_2662A01E8(*(v70 + 56) + 32 * v81, v153);
        v84 = swift_dynamicCast();
        if (v84)
        {
          v85 = v150;
        }

        else
        {
          v85 = 0;
        }

        if (v84)
        {
          v82 = v151;
        }
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v85 = 0;
      v82 = 0xF000000000000000;
    }

    v86 = _s16SiriAudioSupport13ShimUtilitiesV011deserializeB10Experience05audioG4Data0A17InformationSearch0bG0CSg10Foundation0I0VSg_tFZ_0(v85, v82);
    sub_2662B79A8(v85, v82);
    if (v86)
    {
      if (*(v70 + 16))
      {
        v87 = sub_2662A3E98(0x7365526F69647561, 0xEC00000073746C75);
        v88 = 0xF000000000000000;
        if (v89)
        {
          sub_2662A01E8(*(v70 + 56) + 32 * v87, v153);
          v90 = swift_dynamicCast();
          if (v90)
          {
            v91 = v150;
          }

          else
          {
            v91 = 0;
          }

          if (v90)
          {
            v88 = v151;
          }
        }

        else
        {
          v91 = 0;
        }
      }

      else
      {
        v91 = 0;
        v88 = 0xF000000000000000;
      }

      v92 = sub_266416554(v91, v88);
      sub_2662B79A8(v91, v88);
      if (v92)
      {
        sub_2662A9238(&v155, &unk_280074250, &unk_2664E3680);
        sub_266348774(v78, v129);

        v93 = v145;
        *v145 = v86;
        v93[1] = v92;
        v94 = type metadata accessor for ShimExperience();
        swift_storeEnumTagMultiPayload();
        v95 = *(*(v94 - 8) + 56);
        v96 = v93;
        return v95(v96, 0, 1, v94);
      }
    }

    if (*(v70 + 16) && (v97 = sub_2662A3E98(7107189, 0xE300000000000000), (v98 & 1) != 0))
    {
      sub_2662A01E8(*(v70 + 56) + 32 * v97, v153);

      v99 = v136;
      v100 = swift_dynamicCast();
      v80 = v144;
      (*(v144 + 56))(v99, v100 ^ 1u, 1, v79);
      if ((*(v80 + 48))(v99, 1, v79) != 1)
      {
        sub_2662A9238(&v155, &unk_280074250, &unk_2664E3680);
        sub_266348774(v78, v129);
        v101 = *(v80 + 32);
        v102 = v131;
        v101(v131, v99, v79);
        v103 = v145;
        v101(v145, v102, v79);
        v94 = type metadata accessor for ShimExperience();
        swift_storeEnumTagMultiPayload();
        v95 = *(*(v94 - 8) + 56);
        v96 = v103;
        return v95(v96, 0, 1, v94);
      }
    }

    else
    {

      v80 = v144;
      v99 = v136;
      (*(v144 + 56))(v136, 1, 1, v79);
    }

    sub_2662A9238(v99, &qword_280072BC0, &qword_2664E6030);
  }

  sub_2662A7224(&v155, v153, &unk_280074250, &unk_2664E3680);
  if (v154)
  {
    v104 = v140;
    v105 = swift_dynamicCast();
    (*(v80 + 56))(v104, v105 ^ 1u, 1, v79);
  }

  else
  {
    sub_2662A9238(v153, &unk_280074250, &unk_2664E3680);
    v104 = v140;
    (*(v80 + 56))(v140, 1, 1, v79);
  }

  v106 = v137;
  v107 = v139;
  v147(v139, v149, v17);
  sub_2662A7224(v104, v106, &qword_280072BC0, &qword_2664E6030);
  v108 = sub_2664DFE18();
  v109 = sub_2664E06C8();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v153[0] = v111;
    *v110 = 136315138;
    sub_2662A7224(v106, v132, &qword_280072BC0, &qword_2664E6030);
    v112 = sub_2664E0318();
    v114 = v113;
    sub_2662A9238(v106, &qword_280072BC0, &qword_2664E6030);
    v104 = v140;
    v115 = sub_2662A320C(v112, v114, v153);
    v79 = v141;
    v78 = v130;

    *(v110 + 4) = v115;
    _os_log_impl(&dword_26629C000, v108, v109, "ShimUtilities#getShimExperience shimExperienceURL: %s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    MEMORY[0x266784AD0](v111, -1, -1);
    v116 = v110;
    v80 = v144;
    MEMORY[0x266784AD0](v116, -1, -1);

    v117 = v139;
  }

  else
  {

    sub_2662A9238(v106, &qword_280072BC0, &qword_2664E6030);
    v117 = v107;
  }

  v146(v117, v17);
  sub_2662A9238(&v155, &unk_280074250, &unk_2664E3680);
  v118 = v129;
  v119 = v138;
  sub_2662A7224(v104, v138, &qword_280072BC0, &qword_2664E6030);
  if ((*(v80 + 48))(v119, 1, v79) == 1)
  {
    sub_2662A9238(v119, &qword_280072BC0, &qword_2664E6030);
    sub_2662A9238(v104, &qword_280072BC0, &qword_2664E6030);
    v120 = v135;
    v147(v135, v149, v17);
    v121 = sub_2664DFE18();
    v122 = sub_2664E06D8();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_26629C000, v121, v122, "ShimUtilities#getShimExperience unable to extract ShimExperience", v123, 2u);
      MEMORY[0x266784AD0](v123, -1, -1);

      sub_266348774(v78, v118);
    }

    else
    {
      sub_266348774(v78, v118);
    }

    v146(v120, v17);
    v67 = type metadata accessor for ShimExperience();
    return (*(*(v67 - 8) + 56))(v145, 1, 1, v67);
  }

  else
  {
    sub_266348774(v78, v118);
    v124 = *(v80 + 32);
    v125 = v134;
    v124(v134, v119, v79);
    v126 = v145;
    v124(v145, v125, v79);
    v127 = type metadata accessor for ShimExperience();
    swift_storeEnumTagMultiPayload();
    (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
    return sub_2662A9238(v104, &qword_280072BC0, &qword_2664E6030);
  }
}

uint64_t _s16SiriAudioSupport13ShimUtilitiesV011deserializeB10Experience05audioG4Data0A17InformationSearch0bG0CSg10Foundation0I0VSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  result = 0;
  if (a2 >> 60 == 15)
  {
    return result;
  }

  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2664E34E0;
  *(v14 + 32) = sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
  *(v14 + 40) = sub_2664DFCD8();
  sub_2663C50C4(a1, a2);
  sub_2664E0728();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v16 = v5[2];
  v44 = v15;
  v41 = v16;
  v16(v12, v15, v4);
  sub_2662A7224(v48, v47, &unk_280074250, &unk_2664E3680);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  v19 = os_log_type_enabled(v17, v18);
  v42 = a1;
  v43 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v40[1] = v5 + 2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = v22;
    *v21 = 136315138;
    sub_2662A7224(v47, v45, &unk_280074250, &unk_2664E3680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
    v23 = sub_2664E0318();
    v25 = v24;
    sub_2662A9238(v47, &unk_280074250, &unk_2664E3680);
    v26 = sub_2662A320C(v23, v25, &v46);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_26629C000, v17, v18, "ShimUtilities audioExperience uncast %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v27 = v22;
    v5 = v43;
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  else
  {

    sub_2662A9238(v47, &unk_280074250, &unk_2664E3680);
  }

  v28 = v5[1];
  v28(v12, v4);
  sub_2662A7224(v48, v47, &unk_280074250, &unk_2664E3680);
  if (v47[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073718, &unk_2664EC228);
    if (swift_dynamicCast())
    {
      v29 = v45[0];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    sub_2662A9238(v47, &unk_280074250, &unk_2664E3680);
    v29 = 0;
  }

  v41(v10, v44, v4);

  v30 = sub_2664DFE18();
  v31 = sub_2664E06C8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47[0] = v33;
    *v32 = 136315138;
    v45[0] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073710, &qword_2664EC220);
    v34 = sub_2664E0318();
    v44 = v28;
    v36 = sub_2662A320C(v34, v35, v47);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_26629C000, v30, v31, "ShimUtilities audioExperience %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);

    v44(v10, v4);
    v37 = v42;
    if (v29)
    {
      goto LABEL_16;
    }

LABEL_23:
    sub_2662A9238(v48, &unk_280074250, &unk_2664E3680);
    sub_2662B79A8(v37, a2);
    return 0;
  }

  v28(v10, v4);
  v37 = v42;
  if (!v29)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v29 >> 62)
  {
    result = sub_2664E0A68();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:
    sub_2662A9238(v48, &unk_280074250, &unk_2664E3680);
    sub_2662B79A8(v37, a2);

    return 0;
  }

LABEL_18:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x266783B70](0, v29);
    goto LABEL_21;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v29 + 32);
LABEL_21:
    v39 = v38;
    sub_2662B79A8(v37, a2);

    sub_2662A9238(v48, &unk_280074250, &unk_2664E3680);
    return v39;
  }

  __break(1u);
  return result;
}

uint64_t sub_266416554(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v36[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v36[-v11];
  v13 = 0;
  if (a2 >> 60 != 15)
  {
    sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2664E34E0;
    *(v14 + 32) = sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
    *(v14 + 40) = sub_2664DFCA8();
    sub_2663C50C4(a1, a2);
    sub_2664E0728();

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    v16 = v5[2];
    v42 = v15;
    v39 = v16;
    v40 = (v5 + 2);
    v16(v12, v15, v4);
    sub_2662A7224(v46, v45, &unk_280074250, &unk_2664E3680);
    v17 = sub_2664DFE18();
    v18 = sub_2664E06C8();
    v19 = os_log_type_enabled(v17, v18);
    v41 = v5;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44 = v38;
      *v20 = 136315138;
      v37 = v18;
      sub_2662A7224(v45, v43, &unk_280074250, &unk_2664E3680);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
      v21 = sub_2664E0318();
      v23 = v22;
      sub_2662A9238(v45, &unk_280074250, &unk_2664E3680);
      v24 = sub_2662A320C(v21, v23, &v44);
      v5 = v41;

      *(v20 + 4) = v24;
      _os_log_impl(&dword_26629C000, v17, v37, "ShimUtilities AudioResult uncast %s", v20, 0xCu);
      v25 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v25, -1, -1);
      MEMORY[0x266784AD0](v20, -1, -1);
    }

    else
    {

      sub_2662A9238(v45, &unk_280074250, &unk_2664E3680);
    }

    v26 = v5[1];
    v26(v12, v4);
    sub_2662A7224(v46, v45, &unk_280074250, &unk_2664E3680);
    if (v45[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C0, &qword_2664E52B0);
      if (swift_dynamicCast())
      {
        v13 = v43[0];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      sub_2662A9238(v45, &unk_280074250, &unk_2664E3680);
      v13 = 0;
    }

    v39(v10, v42, v4);

    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43[0] = v13;
      v45[0] = v42;
      *v29 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073708, &unk_2664EC210);
      v30 = sub_2664E0318();
      v32 = sub_2662A320C(v30, v31, v45);
      v40 = v26;
      v33 = v32;

      *(v29 + 4) = v33;
      _os_log_impl(&dword_26629C000, v27, v28, "ShimUtilities AudioResult %s", v29, 0xCu);
      v34 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v29, -1, -1);
      sub_2662B79A8(a1, a2);

      v40(v10, v4);
    }

    else
    {
      sub_2662B79A8(a1, a2);

      v26(v10, v4);
    }

    sub_2662A9238(v46, &unk_280074250, &unk_2664E3680);
  }

  return v13;
}

uint64_t SearchItem.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchItem.artist.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SearchItem.album.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SearchItem.title.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SearchItem.bundleIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SearchItem.track.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t SearchItem.playCount.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t SearchItem.lastUsed.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchItem() + 48);

  return sub_26638119C(v3, a1);
}

uint64_t type metadata accessor for SearchItem()
{
  result = qword_280073728;
  if (!qword_280073728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchItem.genre.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchItem() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SearchItemType.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_266416F60()
{
  result = qword_280073720;
  if (!qword_280073720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073720);
  }

  return result;
}

void sub_26641703C()
{
  sub_266417140(319, &qword_2800731D8);
  if (v0 <= 0x3F)
  {
    sub_266417140(319, &qword_280073738);
    if (v1 <= 0x3F)
    {
      sub_26630DD10();
      if (v2 <= 0x3F)
      {
        sub_266417140(319, &qword_280073740);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_266417140(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2664E0948();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

double sub_26641719C()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  mach_timebase_info(v4);
  LODWORD(v1) = v4[0].denom;
  LODWORD(v0) = v4[0].numer;
  result = v0 / v1 / 1000000000.0;
  qword_28007CCF8 = *&result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Double __swiftcall UInt64.toSeconds()()
{
  if (qword_280071C28 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  return *&qword_28007CCF8 * v0;
}

uint64_t sub_2664172BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a4;
  v20 = a3;
  v19[0] = a1;
  v19[1] = a2;
  v10 = sub_2664DFE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0858();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2664E34E0;
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v17;
  *(v15 + 32) = a7;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 72) = a8;
  sub_2664DFDF8();
  sub_2664DFDC8();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_266417450(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[3] = a4;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_2664174DC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_266417780(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_266417780(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

uint64_t static SharedContextProvider.shared.getter()
{
  type metadata accessor for SharedContextProvider();

  return swift_initStaticObject();
}

uint64_t sub_266417F60(unint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v36 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_2664DFE08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v35 = a2;
    sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D83B88];
    *(v18 + 16) = xmmword_2664E36F0;
    v20 = MEMORY[0x277D83C10];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = 0;
    sub_2664DFDF8();
    sub_2664DFDC8();

    (*(v14 + 8))(v17, v13);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v12, v21, v5);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    v24 = os_log_type_enabled(v22, v23);
    a2 = v35;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      if (a1 >> 62)
      {
        v26 = sub_2664E0A68();
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v26;

      _os_log_impl(&dword_26629C000, v22, v23, "SharedContextProvider#fetchDeviceContexts Got media context for %ld devices...", v25, 0xCu);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2664E36F0;
    v28 = MEMORY[0x277D83C10];
    *(v27 + 56) = MEMORY[0x277D83B88];
    *(v27 + 64) = v28;
    *(v27 + 32) = -1;
    sub_2664DFDF8();
    sub_2664DFDC8();

    (*(v14 + 8))(v17, v13);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v10, v29, v5);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "SharedContextProvider#fetchDeviceContexts Got nil context array, returning nil...", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    a1 = 0;
    v12 = v10;
  }

  (*(v6 + 8))(v12, v5);
  return a2(a1);
}

void sub_266418514(unint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v38 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = sub_2664DFE08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2664E36F0;
    v29 = MEMORY[0x277D83C10];
    *(v28 + 56) = MEMORY[0x277D83B88];
    *(v28 + 64) = v29;
    *(v28 + 32) = -1;
    sub_2664DFDF8();
    sub_2664DFDC8();

    (*(v14 + 8))(v17, v13);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v10, v30, v5);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "SharedContextProvider#fetchPrimaryDeviceContext Got nil context array, returning nil...", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    a2(0);
    return;
  }

  v37 = a2;
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D83B88];
  *(v18 + 16) = xmmword_2664E36F0;
  v20 = MEMORY[0x277D83C10];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = 0;
  sub_2664DFDF8();
  sub_2664DFDC8();

  (*(v14 + 8))(v17, v13);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v12, v21, v5);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  v24 = a1 >> 62;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    v26 = v37;
    if (v24)
    {
      v27 = sub_2664E0A68();
    }

    else
    {
      v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 4) = v27;

    _os_log_impl(&dword_26629C000, v22, v23, "SharedContextProvider#fetchPrimaryDeviceContext Got media context for %ld devices...", v25, 0xCu);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  else
  {

    v26 = v37;
  }

  (*(v6 + 8))(v12, v5);
  if (v24)
  {
    if (sub_2664E0A68() == 1 && sub_2664E0A68())
    {
      goto LABEL_20;
    }

LABEL_26:
    v35 = 0;
    goto LABEL_27;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x266783B70](0, a1);
    goto LABEL_23;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(a1 + 32);
LABEL_23:
    v35 = v34;
LABEL_27:
    v26(v35);

    return;
  }

  __break(1u);
}

uint64_t sub_266418B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280F91508;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v27 = v4;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "fetchPrimaryDeviceContext";
  *(v16 + 24) = 25;
  v26 = v10;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_2662DBE30;
  v17[1] = v11;

  sub_2664E0848();
  sub_2664DFDC8();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_266419430;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266419434;
  *(v19 + 24) = v18;

  sub_2664DFA78();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  v21 = *MEMORY[0x277CEEFE0];
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v22;
  sub_2662C3A68(inited);
  swift_setDeallocating();
  sub_2662C1834(inited + 32);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_26641942C;
  *(v23 + 24) = v19;
  sub_2664DFB68();

  (*(v5 + 8))(v26, v27);
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_266418F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = qword_280F91508;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v27 = v4;
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "fetchDeviceContexts";
  *(v16 + 24) = 19;
  v26 = v10;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = sub_2662BD02C;
  v17[1] = v11;

  sub_2664E0848();
  sub_2664DFDC8();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_266419380;
  *(v18 + 24) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266419420;
  *(v19 + 24) = v18;

  sub_2664DFA78();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36F0;
  v21 = *MEMORY[0x277CEEFE0];
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v22;
  sub_2662C3A68(inited);
  swift_setDeallocating();
  sub_2662C1834(inited + 32);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2662C0CAC;
  *(v23 + 24) = v19;
  sub_2664DFB68();

  (*(v5 + 8))(v26, v27);
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_266419384(uint64_t *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  return sub_2662BE26C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *v5);
}

uint64_t OpenPodcastShowAppIntent.init(showEntity:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2664DFA28();
  *a1 = result;
  return result;
}

uint64_t SelfEmitter.__allocating_init(rawSignalResult:)(_OWORD *a1)
{
  v1 = a1[1];
  v2 = [objc_opt_self() sharedAnalytics];
  v3 = [v2 defaultMessageStream];

  type metadata accessor for SelfEmitter();
  v4 = swift_allocObject();
  sub_2664195B0(&v6, v3);
  return v4;
}

uint64_t sub_2664195B0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v76 = *(v6 - 8);
  v77 = v6;
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = v64 - v12;
  v13 = sub_2664DEC48();
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v71 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v72 = v64 - v18;
  MEMORY[0x28223BE20](v17);
  v70 = v64 - v19;
  v21 = *a1;
  v20 = a1[1];
  v22 = a1[2];
  v23 = a1[3];
  v2[7] = a2;
  v2[2] = v21;
  v2[3] = v20;
  v2[4] = v22;
  v2[5] = v23;
  v24 = *(v21 + 16);
  v75 = a2;
  if (v24)
  {
    v65 = v13;
    v66 = v9;
    v67 = v3;
    v25 = sub_26640C820(v24, 0);
    v69 = sub_26640C9BC(v80, v25 + 4, v24, v21);
    v68 = v80[4];
    v26 = a2;
    swift_bridgeObjectRetain_n();
    v64[1] = v20;

    result = sub_2662B793C();
    if (v69 != v24)
    {
      __break(1u);
      return result;
    }

    v3 = v67;
    v28 = v67[3];
    v9 = v66;
    v13 = v65;
  }

  else
  {
    v29 = a2;

    v25 = MEMORY[0x277D84F90];
    v28 = v20;
  }

  v3[6] = v25;

  v30 = sub_2662C2A48(v25, v28);

  v79 = v30;
  v31 = v3[6];

  v33 = sub_2662C2A48(v32, v22);

  v34 = v3[6];

  v36 = sub_2662C2A48(v35, v23);

  if (*(v33 + 16) && (v37 = sub_2662A3E98(0xD000000000000010, 0x80000002664F1190), (v38 & 1) != 0))
  {
    v39 = v73;
    v40 = v70;
    (*(v73 + 16))(v70, *(v33 + 56) + *(v73 + 72) * v37, v13);

    v41 = v72;
    (*(v39 + 32))(v72, v40, v13);
    v42 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = v42;
    sub_26634F030(v41, 0xD000000000000015, 0x80000002664F8760, isUniquelyReferenced_nonNull_native);
    v79 = v80[0];
    v44 = v76;
    v45 = v74;
  }

  else
  {

    v45 = v74;
    sub_266407A90(0xD000000000000015, 0x80000002664F8760, v74);
    sub_2662A9238(v45, &qword_2800729C8, &unk_2664E52E0);
    v44 = v76;
  }

  if (*(v36 + 16) && (v46 = sub_2662A3E98(0xD000000000000010, 0x80000002664F1190), (v47 & 1) != 0))
  {
    v48 = v73;
    v49 = v71;
    (*(v73 + 16))(v71, *(v36 + 56) + *(v73 + 72) * v46, v13);

    v50 = v72;
    (*(v48 + 32))(v72, v49, v13);
    v51 = v79;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v80[0] = v51;
    sub_26634F030(v50, 0xD000000000000015, 0x80000002664F8780, v52);
    v79 = v80[0];
  }

  else
  {

    sub_266407A90(0xD000000000000015, 0x80000002664F8780, v45);
    sub_2662A9238(v45, &qword_2800729C8, &unk_2664E52E0);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v53 = v77;
  v54 = __swift_project_value_buffer(v77, qword_280F914F0);
  swift_beginAccess();
  (*(v44 + 16))(v9, v54, v53);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06E8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v78 = v58;
    *v57 = 136315138;
    swift_beginAccess();

    v59 = sub_2664E01D8();
    v60 = v9;
    v62 = v61;

    v63 = sub_2662A320C(v59, v62, &v78);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_26629C000, v55, v56, "SelfEmitter#init signalValues: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);

    (*(v44 + 8))(v60, v77);
  }

  else
  {

    (*(v44 + 8))(v9, v77);
  }

  swift_beginAccess();
  v3[8] = v79;
  return v3;
}

uint64_t sub_266419D38@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v5 = sub_2664DE438();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DFE38();
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v73 - v16;
  v18 = sub_2664DE4A8();
  v83 = *(v18 - 8);
  v19 = *(v83 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v73 - v23;
  v25 = *a1;
  sub_2664DE498();
  v82 = v24;
  v26 = sub_2664202CC();
  if (!v26)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v8;
    v48 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v49 = v81;
    (*(v81 + 16))(v12, v48, v47);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    v52 = os_log_type_enabled(v50, v51);
    v30 = v83;
    if (v52)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "SelfEmitter#emitTrainingRecord: Failed to create SELF message", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    (*(v49 + 8))(v12, v47);
    (*(v30 + 8))(v82, v18);
    goto LABEL_17;
  }

  v27 = v26;
  v86[0] = v25;
  v28 = sub_26641BDFC(v86);
  if (!v28)
  {
    v54 = v82;
    v30 = v83;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = v8;
    v56 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v57 = v81;
    (*(v81 + 16))(v15, v56, v55);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "SelfEmitter#emitTrainingRecord: Failed to create SELF training record message", v60, 2u);
      v61 = v60;
      v54 = v82;
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    (*(v57 + 8))(v15, v55);
    (*(v30 + 8))(v54, v18);
LABEL_17:
    v62 = 1;
    return (*(v30 + 56))(v84, v62, 1, v18);
  }

  v76 = v28;
  v77 = v3;
  [v27 setMusicAppSelectionGroundTruthGenerated_];
  v29 = v82;
  v30 = v83;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = v8;
  v32 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v33 = v81;
  (*(v81 + 16))(v17, v32, v31);
  (*(v30 + 16))(v22, v29, v18);
  v34 = sub_2664DFE18();
  v35 = v18;
  v36 = sub_2664E06C8();
  if (os_log_type_enabled(v34, v36))
  {
    v37 = swift_slowAlloc();
    v75 = v27;
    v38 = v37;
    v39 = swift_slowAlloc();
    v85 = v39;
    *v38 = 136315138;
    sub_2663EF71C();
    v74 = v31;
    v40 = v35;
    v41 = sub_2664E0D48();
    v43 = v42;
    (*(v83 + 8))(v22, v40);
    v44 = sub_2662A320C(v41, v43, &v85);
    v30 = v83;

    *(v38 + 4) = v44;
    _os_log_impl(&dword_26629C000, v34, v36, "SelfEmitter#emitTrainingRecord: Emitting message with UUID %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v45 = v39;
    v29 = v82;
    MEMORY[0x266784AD0](v45, -1, -1);
    v46 = v38;
    v27 = v75;
    MEMORY[0x266784AD0](v46, -1, -1);

    (*(v33 + 8))(v17, v74);
    v18 = v40;
  }

  else
  {

    (*(v30 + 8))(v22, v35);
    (*(v33 + 8))(v17, v31);
    v18 = v35;
  }

  v63 = *(v77 + 56);
  v64 = sub_2664DE478();
  [v63 emitMessage:v27 isolatedStreamUUID:v64];

  v65 = v78;
  sub_2664DE428();
  v66 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v67 = sub_2664E02A8();
  v68 = [v66 initWithSuiteName_];

  if (v68)
  {
    sub_2664DE3E8();
    v70 = v69;
    v71 = sub_2664E02A8();
    [v68 setDouble:v71 forKey:v70];

    (*(v79 + 8))(v65, v80);
  }

  else
  {
    (*(v79 + 8))(v65, v80);
  }

  (*(v30 + 32))(v84, v29, v18);
  v62 = 0;
  return (*(v30 + 56))(v84, v62, 1, v18);
}

uint64_t sub_26641A570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v87 = a3;
  v93 = a4;
  v8 = sub_2664DFE38();
  v91 = *(v8 - 8);
  v9 = *(v91 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v81[-v14];
  MEMORY[0x28223BE20](v13);
  v86 = &v81[-v16];
  v17 = sub_2664DE4A8();
  v92 = *(v17 - 8);
  v18 = *(v92 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v81[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v81[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v81[-v25];
  sub_2664DE498();
  v27 = sub_2664202CC();
  if (!v27)
  {
    goto LABEL_12;
  }

  v89 = v17;
  v90 = v27;
  v28 = *(*(v5 + 48) + 16);
  v29 = sub_26641ED4C(a1, a2);
  if (v29 == 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = v29 & 1 | ((v29 > 0xFFu) << 8);
  }

  v31 = sub_2664DEF78();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_2664DEF68();
  v34 = sub_2664DEF48();
  v88 = v5;
  v35 = v34;

  v36 = sub_26641F190(v28, v30, v35);
  if (!v36)
  {

    v17 = v89;
LABEL_12:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = v8;
    v61 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v62 = v91;
    (*(v91 + 16))(v12, v61, v60);
    v63 = sub_2664DFE18();
    v64 = sub_2664E06D8();
    v65 = os_log_type_enabled(v63, v64);
    v40 = v92;
    if (v65)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26629C000, v63, v64, "SelfEmitter#emitAndLinkEvaluationRecord: Unable to build evaluation message; not sending", v66, 2u);
      MEMORY[0x266784AD0](v66, -1, -1);
    }

    (*(v62 + 8))(v12, v60);
    goto LABEL_17;
  }

  v37 = v90;
  v85 = v36;
  [v90 setAbModelEvaluated_];
  v38 = v87;
  v39 = sub_2664204CC();
  v17 = v89;
  if (!v39)
  {
    v40 = v92;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v68 = v8;
    v69 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v70 = v91;
    (*(v91 + 16))(v15, v69, v68);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "SelfEmitter#emitAndLinkEvaluationRecord: Unable to build link message; not sending link or evaluation messages", v73, 2u);
      v74 = v73;
      v37 = v90;
      MEMORY[0x266784AD0](v74, -1, -1);
    }

    (*(v70 + 8))(v15, v68);
LABEL_17:
    (*(v40 + 8))(v26, v17);
    v67 = 1;
    return (*(v40 + 56))(v93, v67, 1, v17);
  }

  v84 = v39;
  v40 = v92;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v41 = v8;
  v42 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v43 = v91;
  v44 = *(v91 + 16);
  v45 = v86;
  v83 = v41;
  v44(v86, v42, v41);
  v46 = *(v40 + 16);
  v46(v24, v26, v17);
  v46(v21, v38, v17);
  v47 = sub_2664DFE18();
  v48 = sub_2664E06C8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v94 = v87;
    *v49 = 136315394;
    sub_2663EF71C();
    v82 = v48;
    v50 = sub_2664E0D48();
    v52 = v51;
    v53 = *(v40 + 8);
    v53(v24, v89);
    v54 = sub_2662A320C(v50, v52, &v94);
    v17 = v89;

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    v55 = sub_2664E0D48();
    v57 = v56;
    v53(v21, v17);
    v40 = v92;
    v58 = sub_2662A320C(v55, v57, &v94);

    *(v49 + 14) = v58;
    _os_log_impl(&dword_26629C000, v47, v82, "SelfEmitter#emitAndLinkEvaluationMessage: Emitting message with UUID %s and linking to %s", v49, 0x16u);
    v59 = v87;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v59, -1, -1);
    MEMORY[0x266784AD0](v49, -1, -1);

    (*(v91 + 8))(v86, v83);
  }

  else
  {

    v75 = *(v40 + 8);
    v75(v21, v17);
    v75(v24, v17);
    (*(v43 + 8))(v45, v83);
  }

  v76 = *(v88 + 56);
  v77 = v90;
  [v76 emitMessage_];
  v78 = v76;
  v79 = v84;
  [v78 emitMessage_];

  (*(v40 + 32))(v93, v26, v17);
  v67 = 0;
  return (*(v40 + 56))(v93, v67, 1, v17);
}

uint64_t sub_26641AD80@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v86 = a3;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v78 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v78 - v14;
  MEMORY[0x28223BE20](v13);
  v84 = v78 - v16;
  v17 = sub_2664DE4A8();
  v87 = *(v17 - 8);
  v88 = v17;
  v18 = *(v87 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v78 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v78 - v25;
  v27 = *a1;
  sub_2664DE498();
  v90 = v27;
  v28 = sub_2662DF128();
  if ((v28 & 0x100000000) != 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v55, v4);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06C8();
    v58 = os_log_type_enabled(v56, v57);
    v39 = v87;
    if (v58)
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      *(v59 + 4) = v27;
      _os_log_impl(&dword_26629C000, v56, v57, "SelfEmitter#emitAndLinkDisambiguationRecord: Couldn't map disambiguation reason %ld to SELF App Resolution type; not sending message", v59, 0xCu);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v31 = v88;
    (*(v39 + 8))(v26, v88);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = sub_2664202CC();
  v31 = v88;
  if (!v30)
  {
    goto LABEL_15;
  }

  v32 = v30;
  v33 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  if (!v33)
  {

LABEL_15:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v12, v60, v4);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06D8();
    v63 = os_log_type_enabled(v61, v62);
    v39 = v87;
    if (v63)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "SelfEmitter#emitAndLinkDisambiguationRecord: Unable to build disambiguation message; not sending", v64, 2u);
      MEMORY[0x266784AD0](v64, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_20;
  }

  v34 = v32;
  v35 = v33;
  [v33 setTriggerReason_];
  [v35 setProjectIntent_];
  v82 = v34;
  [v34 setAbModelResultTriggered_];

  v36 = sub_2664204CC();
  if (!v36)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v15, v68, v4);
    v69 = sub_2664DFE18();
    v70 = sub_2664E06D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_26629C000, v69, v70, "SelfEmitter#emitAndLinkDisambiguationRecord: Unable to build link message; not sending link or evaluation messages", v71, 2u);
      MEMORY[0x266784AD0](v71, -1, -1);
    }

    (*(v5 + 8))(v15, v4);
    v39 = v87;
LABEL_20:
    (*(v39 + 8))(v26, v31);
LABEL_21:
    v65 = 1;
    v66 = v86;
    return (*(v39 + 56))(v66, v65, 1, v31);
  }

  v81 = v36;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v38 = v84;
  (*(v5 + 16))(v84, v37, v4);
  v39 = v87;
  v40 = *(v87 + 16);
  v40(v24, v26, v31);
  v40(v21, v85, v31);
  v41 = sub_2664DFE18();
  v42 = sub_2664E06C8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v89 = v85;
    *v43 = 136315394;
    v78[1] = sub_2663EF71C();
    v80 = v42;
    v44 = sub_2664E0D48();
    v79 = v41;
    v46 = v45;
    v47 = *(v39 + 8);
    v47(v24, v88);
    v48 = sub_2662A320C(v44, v46, &v89);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v49 = sub_2664E0D48();
    v51 = v50;
    v47(v21, v88);
    v39 = v87;
    v31 = v88;
    v52 = sub_2662A320C(v49, v51, &v89);

    *(v43 + 14) = v52;
    v53 = v79;
    _os_log_impl(&dword_26629C000, v79, v80, "SelfEmitter#emitAndLinkDisambiguationRecord: Emitting message with UUID %s and linking to %s", v43, 0x16u);
    v54 = v85;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);

    (*(v5 + 8))(v84, v4);
  }

  else
  {

    v72 = *(v39 + 8);
    v72(v21, v31);
    v72(v24, v31);
    (*(v5 + 8))(v38, v4);
  }

  v73 = v82;
  v74 = *(v83 + 56);
  [v74 emitMessage_];
  v75 = v74;
  v76 = v81;
  [v75 emitMessage_];

  v77 = v86;
  (*(v39 + 32))(v86, v26, v31);
  v66 = v77;
  v65 = 0;
  return (*(v39 + 56))(v66, v65, 1, v31);
}

uint64_t sub_26641B668@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v78 = sub_2664DFE38();
  v4 = *(v78 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v78);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68 - v10;
  MEMORY[0x28223BE20](v9);
  v74 = &v68 - v12;
  v76 = sub_2664DE4A8();
  v13 = *(v76 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v76);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  sub_2664DE498();
  v77 = sub_2664202CC();
  if (!v77)
  {
    goto LABEL_9;
  }

  v75 = v4;
  v23 = a1;
  v24 = [objc_allocWithZone(MEMORY[0x277D581C0]) init];
  if (!v24)
  {

    v4 = v75;
LABEL_9:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v78;
    v48 = __swift_project_value_buffer(v78, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v8, v48, v47);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06D8();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v76;
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "SelfEmitter#emitAndLinkDirectExecuteMessage: Unable to build result trigger reason message; not sending", v53, 2u);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    (*(v4 + 8))(v8, v47);
    goto LABEL_14;
  }

  v25 = v24;
  [v24 setTriggerReason_];
  [v25 setProjectIntent_];
  [v77 setAbModelResultTriggered_];

  v26 = sub_2664204CC();
  if (!v26)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = v78;
    v56 = __swift_project_value_buffer(v78, qword_280F914F0);
    swift_beginAccess();
    v57 = v75;
    (*(v75 + 16))(v11, v56, v55);
    v58 = sub_2664DFE18();
    v59 = sub_2664E06D8();
    v60 = os_log_type_enabled(v58, v59);
    v52 = v76;
    if (v60)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v58, v59, "SelfEmitter#emitAndLinkDirectExecuteMessage: Unable to build link message; not sending link or evaluation messages", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    (*(v57 + 8))(v11, v55);
LABEL_14:
    (*(v13 + 8))(v22, v52);
    v54 = 1;
    return (*(v13 + 56))(v79, v54, 1, v52);
  }

  v72 = v26;
  v73 = v2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = v78;
  v28 = __swift_project_value_buffer(v78, qword_280F914F0);
  swift_beginAccess();
  v29 = v74;
  (*(v75 + 16))(v74, v28, v27);
  v30 = *(v13 + 16);
  v31 = v76;
  v30(v20, v22, v76);
  v30(v17, v23, v31);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v69 = v34;
    v71 = swift_slowAlloc();
    v80 = v71;
    *v34 = 136315394;
    v68 = sub_2663EF71C();
    v35 = sub_2664E0D48();
    v70 = v33;
    v37 = v36;
    v38 = *(v13 + 8);
    v38(v20, v31);
    v39 = v38;
    v40 = sub_2662A320C(v35, v37, &v80);

    v41 = v69;
    *(v69 + 1) = v40;
    *(v41 + 6) = 2080;
    v42 = sub_2664E0D48();
    v44 = v43;
    v39(v17, v31);
    v45 = sub_2662A320C(v42, v44, &v80);

    *(v41 + 14) = v45;
    _os_log_impl(&dword_26629C000, v32, v70, "SelfEmitter#emitAndLinkDirectExecuteMessage: Emitting message with UUID %s and linking to %s", v41, 0x16u);
    v46 = v71;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);

    (*(v75 + 8))(v74, v78);
  }

  else
  {

    v62 = *(v13 + 8);
    v62(v17, v31);
    v62(v20, v31);
    (*(v75 + 8))(v29, v27);
  }

  v52 = v31;
  v63 = *(v73 + 56);
  v64 = v77;
  [v63 emitMessage_];
  v65 = v63;
  v66 = v72;
  [v65 emitMessage_];

  (*(v13 + 32))(v79, v22, v31);
  v54 = 0;
  return (*(v13 + 56))(v79, v54, 1, v52);
}

void *sub_26641BDFC(unsigned __int8 *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = *a1;
  v11 = [objc_allocWithZone(MEMORY[0x277D582D8]) init];
  if (v11)
  {
    v12 = v11;
    v39[0] = v10;
    v13 = sub_26641DF94(v39);
    if (v13)
    {
      v14 = v13;
      v15 = v13;
      [v12 setInferenceMusicTrainingIndependentSignals_];
      sub_26641C250();
      v16 = sub_2662C1744(0, &qword_280073750, 0x277D582E0);
      v17 = sub_2664E0488();

      [v12 setInferenceMusicTrainingDependentSignals_];

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v2, qword_280F914F0);
      swift_beginAccess();
      (*(v3 + 16))(v9, v18, v2);
      v19 = v12;
      v20 = sub_2664DFE18();
      v21 = sub_2664E06C8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v37[1] = v16;
        v23 = v22;
        v24 = swift_slowAlloc();
        v38 = v15;
        v25 = v14;
        v26 = v24;
        *v23 = 138412290;
        *(v23 + 4) = v19;
        *v24 = v12;
        v27 = v19;
        _os_log_impl(&dword_26629C000, v20, v21, "SelfEmitter#trainingRecord: Sending SELF training record: %@", v23, 0xCu);
        sub_2662A9238(v26, &qword_2800734B0, &unk_2664E3670);
        v28 = v26;
        v14 = v25;
        v15 = v38;
        MEMORY[0x266784AD0](v28, -1, -1);
        MEMORY[0x266784AD0](v23, -1, -1);
      }

      (*(v3 + 8))(v9, v2);
      v29 = [v19 inferenceMusicTrainingDependentSignals];
      if (v29)
      {
        v30 = v29;
        v31 = sub_2664E04A8();
      }

      else
      {
        v31 = 0;
      }

      sub_2663EE1D8(v14, v31);

      return v12;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v7, v32, v2);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06D8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26629C000, v33, v34, "SelfEmitter#trainingRecord: Failed to generate SELF training record", v35, 2u);
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

uint64_t sub_26641C250()
{
  result = sub_26641EAA0();
  v16 = result;
  v2 = 0;
  v3 = *(v0 + 48);
  v15 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  v5 = v3 + 40;
  v14 = v3 + 40;
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (1)
  {
    if (v4 == v2)
    {

      return v15;
    }

    if (v2 >= *(v3 + 16))
    {
      break;
    }

    ++v2;
    v7 = v6 + 2;
    v9 = *v6;
    v17[0] = *(v6 - 1);
    v8 = v17[0];
    v17[1] = v9;
    MEMORY[0x28223BE20](result);
    v13[2] = v17;

    v10 = sub_2662AA720(sub_2662AA7CC, v13, v16);
    v11 = sub_26641C3D8(v8, v9, v10 & 1);

    v6 = v7;
    if (v11)
    {
      MEMORY[0x266783490](result);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2664E04C8();
      }

      result = sub_2664E0518();
      v15 = v18;
      v5 = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_26641C3D8(uint64_t a1, unint64_t a2, int a3)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v214 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D582E0]) init];
  if (v12)
  {
    v13 = v12;
    v14 = *(v3 + 64);
    v215 = a3;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v15 = sub_2664E08F8();
    v16 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1110, a1, a2, v15, v14);

    v17 = [v16 integerValue];
    [v13 setIsClientForegroundActiveBundle_];
    v18 = sub_2664E08F8();
    v19 = sub_2663F6EFC(0xD000000000000019, 0x80000002664F0EF0, a1, a2, v18, v14);

    [v19 doubleValue];
    v21 = v20;

    [v13 setCompoundActiveBundleScore_];
    v22 = sub_2664E08F8();
    v23 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F0F10, a1, a2, v22, v14);

    [v23 doubleValue];
    v25 = v24;

    [v13 setCompoundMediaTypeBundleScore_];
    v26 = sub_2664E08F8();
    v27 = sub_2663F6EFC(0xD000000000000019, 0x80000002664F1510, a1, a2, v26, v14);

    [v27 doubleValue];
    v29 = v28;

    [v13 setEntitySearchBundleRecencyS_];
    v30 = sub_2664E08F8();
    v31 = sub_2663F6EFC(0xD000000000000017, 0x80000002664F14F0, a1, a2, v30, v14);

    [v31 doubleValue];
    v33 = v32;

    [v13 setEntitySearchBundleScore_];
    v34 = sub_2664E08F8();
    v35 = sub_2663F6EFC(0xD000000000000010, 0x80000002664F1130, a1, a2, v34, v14);

    v36 = [v35 integerValue];
    [v13 setIsForegroundBundle_];
    v37 = sub_2664E08F8();
    v38 = sub_2663F6EFC(0xD000000000000010, 0x80000002664F1190, a1, a2, v37, v14);

    v39 = [v38 integerValue];
    [v13 setIsNowPlayingBundle_];
    v40 = sub_2664E08F8();
    v41 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F1290, a1, a2, v40, v14);

    v42 = [v41 intValue];
    [v13 setNowPlayingBundleCount_];
    v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v44 = sub_2663F6EFC(0xD000000000000017, 0x80000002664F1270, a1, a2, v43, v14);

    [v44 doubleValue];
    v46 = v45;

    [v13 setNowPlayingBundleRecencyS_];
    v47 = sub_2664E08F8();
    v48 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F1250, a1, a2, v47, v14);

    [v48 doubleValue];
    v50 = v49;

    [v13 setNowPlayingBundleScore_];
    v51 = sub_2664E08F8();
    v52 = sub_2663F6458(0xD000000000000014, 0x80000002664F11B0, v51, v14);

    v53 = [v52 &selRef_fallbackUsername];
    [v13 setIsNowPlayingLastBundle_];
    sub_2663F7D44(0xD000000000000013, 0x80000002664F11F0, a1, a2, -1, v14);
    [v13 setNowPlayingUsage1Day_];
    sub_2663F7D44(0xD000000000000014, 0x80000002664F1210, a1, a2, -1, v14);
    [v13 setNowPlayingUsage7Days_];
    sub_2663F7D44(0xD000000000000015, 0x80000002664F1230, a1, a2, -1, v14);
    [v13 setNowPlayingUsage14Days_];
    v57 = sub_2664E08F8();
    v58 = sub_2663F6EFC(0xD00000000000001ALL, 0x80000002664F8610, a1, a2, v57, v14);

    v59 = [v58 &selRef_fallbackUsername];
    [v13 setIsRawLastNowPlayingCoreDuet_];
    v60 = sub_2664E08F8();
    v61 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F13B0, a1, a2, v60, v14);

    v62 = [v61 &selRef_fallbackUsername];
    [v13 setIsRawMediaCategoryAudiobookSignal_];
    v63 = sub_2664E08F8();
    v64 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1310, a1, a2, v63, v14);

    v65 = [v64 &selRef_fallbackUsername];
    [v13 setIsRawMediaCategoryMusicSignal_];
    v66 = sub_2664E08F8();
    v67 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1330, a1, a2, v66, v14);

    v68 = [v67 &selRef_fallbackUsername];
    [v13 setIsRawMediaCategoryRadioSignal_];
    v69 = sub_2664E08F8();
    v70 = sub_2663F6EFC(0xD00000000000001ELL, 0x80000002664F1390, a1, a2, v69, v14);

    v71 = [v70 &selRef_fallbackUsername];
    [v13 setIsRawMediaCategoryPodcastSignal_];
    v72 = sub_2664E08F8();
    v73 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1350, a1, a2, v72, v14);

    v74 = [v73 &selRef_fallbackUsername];
    [v13 setIsRawMediaCategoryVideoSignal_];
    v75 = sub_2664E08F8();
    v76 = sub_2663F6EFC(0xD00000000000001CLL, 0x80000002664F1460, a1, a2, v75, v14);

    v77 = [v76 intValue];
    [v13 setRawMediaTypeUsageSignalBook_];
    v78 = sub_2664E08F8();
    v79 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F1420, a1, a2, v78, v14);

    v80 = [v79 intValue];
    [v13 setRawMediaTypeUsageSignalMusic_];
    v81 = sub_2664E08F8();
    v82 = sub_2663F6EFC(0xD00000000000001FLL, 0x80000002664F1440, a1, a2, v81, v14);

    v83 = [v82 intValue];
    [v13 setRawMediaTypeUsageSignalPodcast_];
    v84 = sub_2664E08F8();
    v85 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F1480, a1, a2, v84, v14);

    v86 = [v85 intValue];
    [v13 setRawMediaTypeUsageSignalVideo_];
    v87 = sub_2664E08F8();
    v88 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F8630, a1, a2, v87, v14);

    v89 = [v88 intValue];
    [v13 setRawNowPlayingCountCoreDuet2Min_];
    v90 = sub_2664E08F8();
    v91 = sub_2663F6EFC(0xD000000000000021, 0x80000002664F8660, a1, a2, v90, v14);

    v92 = [v91 intValue];
    [v13 setRawNowPlayingCountCoreDuet10Min_];
    v93 = sub_2664E08F8();
    v94 = sub_2663F6EFC(0xD00000000000001FLL, 0x80000002664F8690, a1, a2, v93, v14);

    v95 = [v94 intValue];
    [v13 setRawNowPlayingCountCoreDuet1Hr_];
    v96 = sub_2664E08F8();
    v97 = sub_2663F6EFC(0xD00000000000001FLL, 0x80000002664F86B0, a1, a2, v96, v14);

    v98 = [v97 intValue];
    [v13 setRawNowPlayingCountCoreDuet6Hr_];
    v99 = sub_2664E08F8();
    v100 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F86D0, a1, a2, v99, v14);

    v101 = [v100 intValue];
    [v13 setRawNowPlayingCountCoreDuet1Day_];
    v102 = sub_2664E08F8();
    v103 = sub_2663F6EFC(0xD000000000000020, 0x80000002664F8700, a1, a2, v102, v14);

    v104 = [v103 intValue];
    [v13 setRawNowPlayingCountCoreDuet7Day_];
    v105 = sub_2664E08F8();
    v106 = sub_2663F6EFC(0xD000000000000021, 0x80000002664F8730, a1, a2, v105, v14);

    v107 = [v106 intValue];
    [v13 setRawNowPlayingCountCoreDuet28Day_];
    v108 = sub_2664E08F8();
    v109 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F7930, a1, a2, v108, v14);

    v110 = [v109 intValue];
    [v13 setRawNowPlayingRecencyCD_];
    v111 = sub_2664E08F8();
    v112 = sub_2663F6EFC(0xD000000000000017, 0x80000002664F1530, a1, a2, v111, v14);

    v113 = [v112 intValue];
    [v13 setRawEntitySearchRecency_];
    v114 = sub_2664E08F8();
    v115 = sub_2663F6EFC(0x6F63536567617375, 0xEF736B6F6F426572, a1, a2, v114, v14);

    [v115 doubleValue];
    v117 = v116;

    [v13 setUsageScoreBooks_];
    v118 = sub_2664E08F8();
    v119 = sub_2663F6EFC(0x6F63536567617375, 0xEF636973754D6572, a1, a2, v118, v14);

    [v119 doubleValue];
    v121 = v120;

    [v13 setUsageScoreMusic_];
    v122 = sub_2664E08F8();
    v123 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F13E0, a1, a2, v122, v14);

    [v123 &selRef_assetInfo];
    v125 = v124;

    [v13 setUsageScorePodcasts_];
    v126 = sub_2664E08F8();
    v127 = sub_2663F6EFC(0x7269467070417369, 0xEF79747261507473, a1, a2, v126, v14);

    v128 = [v127 integerValue];
    [v13 setIsAppFirstParty_];
    v129 = sub_2664E08F8();
    v130 = sub_2663F6EFC(0x7365757165527369, 0xEE00707041646574, a1, a2, v129, v14);

    v131 = [v130 integerValue];
    [v13 setIsRequestedApp_];
    v132 = sub_2664E08F8();
    v133 = sub_2663F6EFC(825389430, 0xE400000000000000, a1, a2, v132, v14);

    [v133 &selRef_assetInfo];
    v135 = v134;

    [v13 setVq21Score_];
    v136 = sub_2664E08F8();
    v137 = sub_2663F6EFC(0x4674726F70707573, 0xEB0000000067616CLL, a1, a2, v136, v14);

    v138 = [v137 integerValue];
    [v13 setIsSupportedFlag_];
    v139 = sub_2664E08F8();
    v140 = sub_2663F6EFC(0x466E726F63696E75, 0xEB0000000067616CLL, a1, a2, v139, v14);

    v141 = [v140 integerValue];
    [v13 setIsUnicornFlag_];
    v142 = sub_2664E08F8();
    v143 = sub_2663F6EFC(0xD000000000000013, 0x80000002664F0F30, a1, a2, v142, v14);

    v144 = [v143 &selRef_fallbackUsername];
    [v13 setIsSupportedUnicornMatchFlag_];
    [v13 setIsModelPredictedApp_];
    v145 = sub_2664E08F8();
    v146 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F8760, a1, a2, v145, v14);

    v147 = [v146 &selRef_fallbackUsername];
    [v13 setIsNowPlayingBundlePSE1_];
    v148 = sub_2664E08F8();
    v149 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F8780, a1, a2, v148, v14);

    v150 = [v149 &selRef_fallbackUsername];
    [v13 setIsNowPlayingBundlePSE2_];
    v151 = sub_2664E08F8();
    v152 = sub_2663F6EFC(0x6F63536567617375, 0xEF6F696461526572, a1, a2, v151, v14);

    [v152 doubleValue];
    v154 = v153;

    [v13 setUsageScoreRadio_];
    v155 = sub_2664E08F8();
    v156 = sub_2663F6EFC(0xD00000000000001BLL, 0x80000002664F1400, a1, a2, v155, v14);

    [v156 doubleValue];
    v158 = v157;

    [v13 setUsageScoreMusicWithoutRadio_];
    v159 = sub_2664E08F8();
    v160 = sub_2663F6EFC(0xD00000000000001DLL, 0x80000002664F14A0, a1, a2, v159, v14);

    v161 = [v160 intValue];
    [v13 setRawMediaTypeUsageSignalRadio_];
    v162 = sub_2664E08F8();
    v163 = sub_2663F6EFC(0xD000000000000029, 0x80000002664F14C0, a1, a2, v162, v14);

    v164 = [v163 intValue];
    [v13 setRawMediaTypeUsageSignalMusicWithoutRadio_];
    [v13 setSubscriptionStatus_];
    v165 = sub_2664E08F8();
    v166 = sub_2663F6EFC(0xD000000000000014, 0x80000002664F87A0, a1, a2, v165, v14);

    v167 = [v166 integerValue];
    [v13 setIsRawNowPlayingBundle_];
    v168 = sub_2664E08F8();
    v169 = sub_2663F6EFC(0xD000000000000014, 0x80000002664F87C0, a1, a2, v168, v14);

    v170 = [v169 intValue];
    [v13 setRawNowPlayingTotal_];
    v171 = sub_2664E08F8();
    v172 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F87E0, a1, a2, v171, v14);

    v173 = [v172 intValue];
    [v13 setRawNowPlaying2Minutes_];
    v174 = sub_2664E08F8();
    v175 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F8800, a1, a2, v174, v14);

    v176 = [v175 intValue];
    [v13 setRawNowPlaying10Minutes_];
    v177 = sub_2664E08F8();
    v178 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8820, a1, a2, v177, v14);

    v179 = [v178 intValue];
    [v13 setRawNowPlaying1Hour_];
    v180 = sub_2664E08F8();
    v181 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8840, a1, a2, v180, v14);

    v182 = [v181 intValue];
    [v13 setRawNowPlaying6Hours_];
    v183 = sub_2664E08F8();
    v184 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8860, a1, a2, v183, v14);

    v185 = [v184 intValue];
    [v13 setRawNowPlaying1Day_];
    v186 = sub_2664E08F8();
    v187 = sub_2663F6EFC(0xD000000000000011, 0x80000002664F8880, a1, a2, v186, v14);

    v188 = [v187 intValue];
    [v13 setRawNowPlaying7Days_];
    v189 = sub_2664E08F8();
    v190 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F88A0, a1, a2, v189, v14);

    v191 = [v190 intValue];
    [v13 setRawNowPlaying28Days_];
    v192 = sub_2664E08F8();
    v193 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F88A0, a1, a2, v192, v14);

    v194 = [v193 intValue];
    [v13 setRawNowPlaying28Days_];
    v195 = sub_2664E08F8();
    v196 = sub_2663F6EFC(0xD000000000000019, 0x80000002664F88C0, a1, a2, v195, v14);

    v197 = [v196 intValue];
    [v13 setRawLastNowPlayingRecency_];
    v198 = sub_2664E08F8();
    v199 = sub_2663F6EFC(0xD000000000000012, 0x80000002664F88E0, a1, a2, v198, v14);

    v200 = [v199 integerValue];
    [v13 setIsRawLastNowPlayingBoolean_];
    v201 = sub_2664E08F8();
    v202 = sub_2663F6EFC(0xD000000000000014, 0x80000002664F8900, a1, a2, v201, v14);

    v203 = [v202 integerValue];
    [v13 setIsCommonForegroundApp_];
    v204 = sub_2664E08F8();
    v205 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F8920, a1, a2, v204, v14);

    [v205 doubleValue];
    v207 = v206;

    [v13 setRawNowPlayingBundleScore_];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v208 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v11, v208, v7);

    v209 = sub_2664DFE18();
    v210 = sub_2664E06D8();

    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v216 = v212;
      *v211 = 136446210;
      *(v211 + 4) = sub_2662A320C(a1, a2, &v216);
      _os_log_impl(&dword_26629C000, v209, v210, "SelfEmitter: Unexpectedly unable to build an empty dependent signal row for %{public}s", v211, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v212);
      MEMORY[0x266784AD0](v212, -1, -1);
      MEMORY[0x266784AD0](v211, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return v13;
}

id sub_26641DF94(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = [objc_allocWithZone(MEMORY[0x277D582E8]) init];
  if (v3)
  {
    v4 = *(v1 + 64);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v5 = sub_2664E08F8();
    v6 = sub_2663F6458(0x6144746E65696C63, 0xEF6B656557664F79, v5, v4);

    v7 = [v6 intValue];
    [v3 setClientDayOfWeek_];
    v8 = sub_2664E08F8();
    v9 = sub_2663F6458(0x6F48746E65696C63, 0xEF796144664F7275, v8, v4);

    v10 = [v9 intValue];
    [v3 setRawClientHourOfDay_];
    v85 = v2;
    v11 = sub_2664E08F8();
    v12 = sub_2663F6458(0xD000000000000011, 0x80000002664F0F50, v11, v4);

    v13 = [v12 integerValue];
    [v3 setIsMediaAlbumPresent_];
    v14 = sub_2664E08F8();
    v15 = sub_2663F6458(0xD000000000000012, 0x80000002664F0F70, v14, v4);

    v16 = [v15 integerValue];
    [v3 setIsMediaArtistPresent_];
    v17 = sub_2664E08F8();
    v18 = sub_2663F6458(0xD000000000000011, 0x80000002664F0F90, v17, v4);

    v19 = [v18 integerValue];
    [v3 setIsMediaGenrePresent_];
    v20 = sub_2664E08F8();
    v21 = sub_2663F6458(0xD000000000000010, 0x80000002664F0FD0, v20, v4);

    v22 = [v21 integerValue];
    [v3 setIsMediaMoodPresent_];
    v23 = sub_2664E08F8();
    v24 = sub_2663F6458(0xD000000000000010, 0x80000002664F0FB0, v23, v4);

    v25 = [v24 integerValue];
    [v3 setIsMediaNamePresent_];
    v26 = sub_2664E08F8();
    v27 = sub_2663F6458(0xD000000000000017, 0x80000002664F0FF0, v26, v4);

    v28 = [v27 integerValue];
    [v3 setIsMediaReleaseDatePresent_];
    v29 = sub_2664E05D8();
    v30 = sub_2663F6458(0xD00000000000001BLL, 0x80000002664F11D0, v29, v4);

    v31 = [v30 intValue];
    [v3 setNowPlayingLastBundleRecencyS_];
    v32 = sub_2664E08F8();
    v33 = sub_2663F6458(0x676E616C2E776172, 0xEC00000065676175, v32, v4);

    v34 = [v33 longLongValue];
    [v3 setRawLanguage_];
    v35 = sub_2664E08F8();
    v36 = sub_2663F6458(0x61636F6C2E776172, 0xEA0000000000656CLL, v35, v4);

    v37 = [v36 longLongValue];
    [v3 setRawLocale_];
    v38 = sub_2664E08F8();
    v39 = sub_2663F6458(0x696765722E776172, 0xEA00000000006E6FLL, v38, v4);

    v40 = [v39 longLongValue];
    [v3 setRawRegion_];
    v41 = sub_2664E08F8();
    v42 = sub_2663F6458(0x6144746E65696C63, 0xEE00746867696C79, v41, v4);

    v43 = [v42 integerValue];
    [v3 setIsClientDaylight_];
    v44 = sub_2664E08F8();
    v45 = sub_2663F6458(0xD000000000000010, 0x80000002664F10B0, v44, v4);

    v46 = [v45 integerValue];
    [v3 setIsClientNavigating_];
    v47 = sub_2664E08F8();
    v48 = sub_2663F6458(0x6F57746E65696C63, 0xED000074756F6B72, v47, v4);

    v49 = [v48 integerValue];
    [v3 setIsClientWorkout_];
    v50 = sub_2664E08F8();
    v51 = sub_2663F6458(0x707954616964656DLL, 0xE900000000000065, v50, v4);

    v52 = [v51 intValue];
    [v3 setMediaType_];
    v53 = sub_2664E08F8();
    v54 = sub_2663F6458(0x6979616C50776F6ELL, 0xEF6574617453676ELL, v53, v4);

    v55 = [v54 intValue];
    [v3 setNowPlayingState_];
    v56 = sub_2664E08F8();
    v57 = sub_2663F6458(0xD000000000000013, 0x80000002664F4490, v56, v4);

    v58 = [v57 integerValue];
    [v3 setIsPireneRequest_];
    v59 = sub_2664E05D8();
    v60 = sub_2663F6458(0xD000000000000017, 0x80000002664F1150, v59, v4);

    [v60 doubleValue];
    v62 = v61;

    [v3 setForegroundBundleRecencyS_];
    v63 = sub_2664E08F8();
    v64 = sub_2663F6458(0xD000000000000013, 0x80000002664F1010, v63, v4);

    v65 = [v64 intValue];
    [v3 setMediaParsecCategory_];
    v66 = sub_2664E08F8();
    v67 = sub_2663F6458(0xD00000000000001CLL, 0x80000002664F1590, v66, v4);

    v68 = [v67 intValue];
    [v3 setServerSearchResultsMediaType_];
    v69 = sub_2664DEF78();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();
    sub_2664DEF68();
    v72 = sub_2664DEF48();

    v73 = 0xFFFFFFFFLL;
    if (v72 < 0xFFFFFFFFLL)
    {
      v73 = v72;
    }

    [v3 setModelVersion_];
    if (v85 <= 4)
    {
      if (v85 == 2)
      {
        v74 = 9;
        goto LABEL_15;
      }

      if (v85 != 4)
      {
LABEL_14:
        v74 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      if (v85 == 5)
      {
        v74 = 2;
        goto LABEL_15;
      }

      if (v85 != 6)
      {
        if (v85 == 12)
        {
LABEL_16:
          v75 = sub_2664E08F8();
          v76 = sub_2663F6458(0xD000000000000012, 0x80000002664F85D0, v75, v4);

          v77 = [v76 intValue];
          [v3 setRawNowPlayingState_];
          v78 = sub_2664E08F8();
          v79 = sub_2663F6458(0xD00000000000001ALL, 0x80000002664F85F0, v78, v4);

          v80 = [v79 intValue];
          [v3 setCommonForegroundAppRecency_];
          v81 = sub_2664E08F8();
          v82 = sub_2663F6458(0x6E65746E6F437369, 0xED00006565724674, v81, v4);

          v83 = [v82 integerValue];
          [v3 setIsContentFree_];
          return v3;
        }

        goto LABEL_14;
      }
    }

    v74 = 3;
LABEL_15:
    [v3 setResolutionType_];
    goto LABEL_16;
  }

  return v3;
}

uint64_t sub_26641EAA0()
{
  v1 = sub_2664DFE38();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_2664DEF78();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2664DEF68();
  v6 = v0[3];
  v8 = v0[4];
  v7 = v0[5];
  v11[0] = v0[2];
  v11[1] = v6;
  v11[2] = v8;
  v11[3] = v7;

  v9 = sub_2662C18A0(v11, 1, 1, &type metadata for AudioMegamodelTriggeredLogger, &off_2877EFD00);

  return v9;
}

uint64_t sub_26641ED4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  if (a2)
  {
    v12 = sub_26641EAA0();
    v13 = v12;
    if (v12[2] == 1)
    {
      v15 = v12[4];
      v14 = v12[5];

      v16 = v15 == a1 && v14 == a2;
      if (v16 || (sub_2664E0D88() & 1) != 0)
      {

        return 1;
      }

      else
      {
        Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0();

        if (Party16bundleIdentifierSbSS_tFZ_0)
        {
          return _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0() & 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v22 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v11, v22, v4);

      v23 = sub_2664DFE18();
      v24 = sub_2664E06C8();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136315138;
        v27 = MEMORY[0x2667834D0](v13, MEMORY[0x277D837D0]);
        v29 = v28;

        v30 = sub_2662A320C(v27, v29, &v33);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_26629C000, v23, v24, "SelfEmitter#modelPredictionIsCorrect: Model didn't predict a single bundle; predicted %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x266784AD0](v26, -1, -1);
        MEMORY[0x266784AD0](v25, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v11, v4);
      return 256;
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v18, v4);
    v19 = sub_2664DFE18();
    v20 = sub_2664E06C8();
    if (os_log_type_enabled(v19, v20))
    {
      v17 = 2;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26629C000, v19, v20, "SelfEmitter#modelPredictionIsCorrect: no ground truth, so not evaluating model prediction correctness", v21, 2u);
      MEMORY[0x266784AD0](v21, -1, -1);

      (*(v5 + 8))(v9, v4);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
      return 2;
    }
  }

  return v17;
}

void *sub_26641F190(uint64_t a1, __int16 a2, unint64_t a3)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D581B8]) init];
  if (v18)
  {
    v19 = v18;
    if (a1 <= 0xFFFFFFFF7FFFFFFFLL)
    {
      a1 = 0x80000000;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (a1 <= 0x7FFFFFFF)
      {
        if ((a3 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_26:
        a3 = 0;
LABEL_7:
        [v18 setProjectIntent_];
        [v19 setNumCandidateApps_];
        if (a2 != 2)
        {
          v43 = v3;
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v20 = a2 & 0x100;
          v21 = __swift_project_value_buffer(v7, qword_280F914F0);
          swift_beginAccess();
          (*(v8 + 16))(v17, v21, v7);
          v22 = sub_2664DFE18();
          v23 = sub_2664E06C8();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v42 = a3;
            v25 = v24;
            *v24 = 67109376;
            *(v24 + 4) = a2 & 1;
            *(v24 + 8) = 1024;
            *(v24 + 10) = v20 >> 8;
            _os_log_impl(&dword_26629C000, v22, v23, "SelfEmitter#evaluationMessage: ModelPrediction Results isDecisionCorrect: %{BOOL}d, isModelDisambiguation : %{BOOL}d", v24, 0xEu);
            v26 = v25;
            a3 = v42;
            MEMORY[0x266784AD0](v26, -1, -1);
          }

          (*(v8 + 8))(v17, v7);
          [v19 setIsDecisionCorrect_];
          [v19 setIsModelDisambiguation_];
        }

        [v19 setModelVersion_];
        v27 = sub_26641F73C();
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v28 = __swift_project_value_buffer(v7, qword_280F914F0);
        swift_beginAccess();
        (*(v8 + 16))(v15, v28, v7);
        v29 = sub_2664DFE18();
        v30 = sub_2664E06C8();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v44 = v32;
          *v31 = 136315138;
          v33 = sub_2664E08B8();
          v43 = v15;
          v35 = sub_2662A320C(v33, v34, &v44);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_26629C000, v29, v30, "SelfEmitter#getUserPersona Logging user persona as: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          MEMORY[0x266784AD0](v32, -1, -1);
          MEMORY[0x266784AD0](v31, -1, -1);

          (*(v8 + 8))(v43, v7);
        }

        else
        {

          (*(v8 + 8))(v15, v7);
        }

        [v19 setUserPersona_];
        return v19;
      }

      a1 = 0x7FFFFFFFLL;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }
    }

LABEL_5:
    if (a3 >= 0xFFFFFFFF)
    {
      a3 = 0xFFFFFFFFLL;
    }

    goto LABEL_7;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v12, v36, v7);
  v37 = sub_2664DFE18();
  v38 = sub_2664E06D8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_26629C000, v37, v38, "SelfEmitter#evaluationMessage: Failed to generate top-level evaluation message, which should never happen", v39, 2u);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  return 0;
}

uint64_t sub_26641F73C()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  v40 = 0;
  v13 = *(v1 + 48);

  sub_26641FE7C(v13, v1, &v41, &v42, &v40);

  v14 = *(v42 + 2);
  if (!v14 || (v15 = v40, v40 < 1))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v7, v28, v2);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "SelfEmitter#getUserPersona Unable to find a most commonly used bundle identifier, returning unknown persona", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    goto LABEL_18;
  }

  if (v14 != 1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v10, v32, v2);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "SelfEmitter#getUserPersona More than 1 bundle found with the same max count. Unable to get user persona", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    (*(v3 + 8))(v10, v2);
LABEL_18:

    return 0;
  }

  v17 = *(v42 + 4);
  v16 = *(v42 + 5);
  v18 = v41;

  LODWORD(v19) = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = v18 / v15;
  v21 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v12, v21, v2);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v38 = v19;
    v19 = v24;
    v37 = swift_slowAlloc();
    v39 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v20;
    *(v19 + 12) = 2080;
    v25 = sub_2662A320C(v17, v16, &v39);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v15;
    _os_log_impl(&dword_26629C000, v22, v23, "SelfEmitter#getUserPersona maxBundleScore: %f, bundle: %s, nowPlayingTotalCount: %ld", v19, 0x20u);
    v26 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266784AD0](v26, -1, -1);
    v27 = v19;
    LOBYTE(v19) = v38;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v12, v2);

  if (v20 <= 0.95)
  {
    if (v19)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (v19)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t SelfEmitter.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 64);

  return v0;
}

uint64_t SelfEmitter.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_26641FD74@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v8 = *a1;
  v4 = [objc_opt_self() sharedAnalytics];
  v5 = [v4 defaultMessageStream];

  type metadata accessor for SelfEmitter();
  v6 = swift_allocObject();
  result = sub_2664195B0(&v8, v5);
  *a2 = v6;
  return result;
}

void sub_26641FE7C(uint64_t a1, uint64_t a2, id *a3, char **a4, void *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v10 = (a1 + 40);
    v26 = a5;
    v27 = a3;
    while (1)
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(a2 + 64);

      v14 = sub_2664E08F8();
      v15 = sub_2663F6EFC(0xD000000000000015, 0x80000002664F1290, v11, v12, v14, v13);

      v16 = [v15 integerValue];
      if (*v27 >= v16)
      {
        if (v16 == *v27)
        {
          v19 = a4;
          v20 = *a4;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = v19;
          *v19 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v20 = sub_2663846F4(0, *(v20 + 2) + 1, 1, v20);
            *v19 = v20;
          }

          v24 = *(v20 + 2);
          v23 = *(v20 + 3);
          if (v24 >= v23 >> 1)
          {
            v20 = sub_2663846F4((v23 > 1), v24 + 1, 1, v20);
            *v22 = v20;
          }

          *(v20 + 2) = v24 + 1;
          v25 = &v20[16 * v24];
          *(v25 + 4) = v11;
          *(v25 + 5) = v12;
          a5 = v26;
          a4 = v22;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_2664E36F0;
        *(v17 + 32) = v11;
        *(v17 + 40) = v12;
        v18 = *a4;
        *a4 = v17;

        *v27 = v16;
      }

      if (__OFADD__(*a5, v16))
      {
        break;
      }

      *a5 += v16;

      v10 += 2;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_2664200A8()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v8 = sub_2664DE478();
    v9 = [v7 initWithNSUUID_];

    [v6 setInferenceId_];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v10, v0);
    v11 = sub_2664DFE18();
    v12 = sub_2664E06D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26629C000, v11, v12, "SelfEmitter#metadata: Failed to generate event metadata", v13, 2u);
      MEMORY[0x266784AD0](v13, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v6;
}

void *sub_2664202CC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2664200A8();
    if (v7)
    {
      v8 = v7;
      [v6 setEventMetadata_];

      return v6;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_26629C000, v10, v11, "SelfEmitter#toSelf: Failed to generate top-level SELF message", v12, 2u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

void *sub_2664204CC()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setComponent_];
        v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v12 = sub_2664DE478();
        v13 = [v11 initWithNSUUID_];

        [v10 setUuid_];
        [v8 setComponent_];
        v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v15 = sub_2664DE478();
        v16 = [v14 initWithNSUUID_];

        [v8 setUuid_];
        [v6 setSource_];
        [v6 setTarget_];

        return v6;
      }
    }

    else
    {
      v8 = v6;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v17, v0);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06D8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "SelfEmitter#linkMessage: Failed to create RequestLink SELF message templates. Skipping Emission.", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_2664208E8(uint64_t a1)
{
  v4 = sub_2664DFE38();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v1[3];
  v9 = v1[4];
  v58 = v10;
  v59 = v6;
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {

    v8 = sub_2664475B4(a1, v8, v9);
    v12 = v11;

    v13 = v1[4];
  }

  else
  {
    v12 = 0;
  }

  v1[3] = v8;
  v1[4] = v12;

  v14 = v1[2];

  v15 = sub_266449428(a1, v14);

  v16 = v1[2];
  v56 = v1;
  v1[2] = v15;

  v18 = sub_26639F100(v17);
  v19 = sub_2663D8A24(v15, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v20 = sub_2664E0C78();
  v21 = v20;
  v22 = 0;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v19 + 64);
  v26 = (v23 + 63) >> 6;
  v60 = v20 + 64;
  if (v25)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_13:
      v30 = v27 | (v22 << 6);
      v2 = 16 * v30;
      v31 = (*(v19 + 48) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = *(*(v19 + 56) + 8 * v30);

      v35 = Double.rounded(to:)(3);
      *(v60 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      v36 = (v21[6] + 16 * v30);
      *v36 = v33;
      v36[1] = v32;
      *(v21[7] + 8 * v30) = v35;
      v37 = v21[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v21[2] = v39;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  else
  {
LABEL_8:
    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v22 >= v26)
      {
        break;
      }

      v29 = *(v19 + 64 + 8 * v22);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_13;
      }
    }

    v2 = v56;
    v40 = v56[2];
    v56[2] = v21;

    if (qword_280F914E8 != -1)
    {
      goto LABEL_22;
    }
  }

  v41 = v59;
  v42 = __swift_project_value_buffer(v59, qword_280F914F0);
  swift_beginAccess();
  v44 = v57;
  v43 = v58;
  (*(v58 + 16))(v57, v42, v41);

  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v61 = v48;
    *v47 = 136315138;
    v49 = *(v2 + 16);

    v50 = sub_2664E01D8();
    v52 = v51;

    v53 = sub_2662A320C(v50, v52, &v61);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_26629C000, v45, v46, "ForegroundAppSignal#applyCandidates foregroundBundleRecencyScore:%s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  return (*(v43 + 8))(v44, v41);
}

uint64_t sub_266420D4C()
{
  v0 = sub_2662C3A68(&unk_2877E1610);
  result = swift_arrayDestroy();
  qword_280F91CB8 = v0;
  return result;
}

unint64_t sub_266420D98(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36E0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000002664F1130;
  v6 = v2[4];
  if (v6)
  {
    if (v2[3] == a1 && v6 == a2)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_2664E0D88();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x277D839B0];
  *(inited + 48) = v7 & 1;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000002664F1150;
  v9 = v2[5];
  v10 = MEMORY[0x277D839F8];
  if (v9)
  {
    v20 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    *&v19 = v9;
    sub_266318804(&v19, (inited + 96));
  }

  else
  {
    *(inited + 120) = MEMORY[0x277D839F8];
    *(inited + 96) = 0x4143C68000000000;
  }

  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x80000002664F1170;
  v11 = v2[2];
  v12 = *(v11 + 16);
  v13 = v9;
  if (v12)
  {

    v14 = sub_2662A3E98(a1, a2);
    v15 = 0;
    if (v16)
    {
      v15 = *(*(v11 + 56) + 8 * v14);
    }
  }

  else
  {
    v15 = 0;
  }

  *(inited + 168) = v10;
  *(inited + 144) = v15;
  v17 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v17;
}

unint64_t sub_266420F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_266420D98(a1, a2);
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  result = sub_2662A3E98(0xD000000000000010, 0x80000002664F1130);
  if ((v6 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * result, v9);

  sub_266318804(v9, &v10);
  result = swift_dynamicCast();
  v7 = 0.0;
  if (v8)
  {
    v7 = 1.0;
  }

  *(a3 + 280) = v7;
  return result;
}

uint64_t sub_266421054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = sub_2664E02A8();
  v25 = [objc_opt_self() eventStreamWithName_];

  v8 = [objc_allocWithZone(MEMORY[0x277CFE268]) init];
  sub_2664DE428();
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v6, 0, 1, v9);
  sub_2664DE428();
  v11(v4, 0, 1, v9);
  sub_266386350(MEMORY[0x277D84F90]);
  v12 = *(v10 + 48);
  v13 = 0;
  if (v12(v6, 1, v9) != 1)
  {
    v13 = sub_2664DE3A8();
    (*(v10 + 8))(v6, v9);
  }

  if (v12(v4, 1, v9) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_2664DE3A8();
    (*(v10 + 8))(v4, v9);
  }

  v15 = sub_2664E02A8();
  v16 = sub_2664E01A8();

  v17 = objc_opt_self();
  v18 = v25;
  v19 = [v17 eventWithStream:v25 source:v8 startDate:v13 endDate:v14 identifierStringValue:v15 confidence:v16 metadata:1.0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073780, &qword_2664EC648);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2664E36F0;
  *(v20 + 32) = v19;
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073788, &unk_2664EC650);
  v22 = sub_2664E0488();

  return v22;
}

id sub_2664213B0(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CFE208]) init];
  v8[0] = 0;
  v3 = [v2 executeQuery:a1 error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_2664DE1A8();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_26642148C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_266421558()
{
  if (qword_280F905B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266421620(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v4 = sub_2664DF398();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  result = sub_2664E0C78();
  v10 = 0;
  v37 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = result;
  v34 = v5;
  v31[1] = v5 + 16;
  v32 = (v5 + 8);
  v31[0] = result + 64;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v38 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v37 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      (*(v34 + 16))(v8, *(v37 + 56) + *(v34 + 72) * v21, v4);

      v25 = v39;
      v35(&v40, v8);
      v39 = v25;
      if (v25)
      {
        break;
      }

      (*v32)(v8, v4);
      *(v31[0] + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = v33;
      v26 = (*(v33 + 48) + 16 * v21);
      *v26 = v23;
      v26[1] = v24;
      *(*(result + 56) + 8 * v21) = v40;
      v27 = *(result + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_17;
      }

      *(result + 16) = v29;
      v16 = v38;
      if (!v38)
      {
        goto LABEL_5;
      }
    }

    v30 = v33;

    (*v32)(v8, v4);
    return v30;
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return result;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v38 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2664218C4(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v199 = a4;
  v197 = a3;
  v198 = a2;
  v201 = a1;
  v191 = sub_2664DF398();
  v190 = *(v191 - 8);
  v4 = v190[8];
  v5 = MEMORY[0x28223BE20](v191);
  v189 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v186 = &v181 - v7;
  v204 = sub_2664DFE38();
  v207 = *(v204 - 1);
  v8 = *(v207 + 64);
  v9 = MEMORY[0x28223BE20](v204);
  v183 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v187 = &v181 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v188 = &v181 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v192 = &v181 - v16;
  MEMORY[0x28223BE20](v15);
  v200 = &v181 - v17;
  v18 = sub_2664DE578();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v203 = sub_2664DE598();
  v23 = *(v203 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v203);
  v26 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v181 - v29;
  v31 = sub_2664DE438();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v182 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v184 = &v181 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v185 = &v181 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v181 - v41;
  MEMORY[0x28223BE20](v40);
  v195 = &v181 - v43;
  sub_2664DE428();
  v44 = sub_2664E02A8();
  v202 = [objc_opt_self() eventStreamWithName_];

  v45 = v31;
  sub_2664DE568();
  (*(v19 + 104))(v22, *MEMORY[0x277CC9968], v18);
  sub_2664DE428();
  sub_2664DE558();
  v46 = *(v32 + 8);
  v196 = v42;
  v205 = v32 + 8;
  v206 = v46;
  v46(v42, v31);
  (*(v19 + 8))(v22, v18);
  (*(v23 + 8))(v26, v203);
  v47 = 0;
  if ((*(v32 + 48))(v30, 1, v31) != 1)
  {
    v47 = sub_2664DE3A8();
    v206(v30, v31);
  }

  v48 = objc_opt_self();
  v49 = [v48 predicateForEventsWithStartDateAfter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v50 = swift_allocObject();
  v203 = xmmword_2664E34F0;
  *(v50 + 16) = xmmword_2664E34F0;
  v51 = v202;
  *(v50 + 32) = v202;
  v52 = swift_allocObject();
  *(v52 + 16) = v203;
  v53 = v51;
  v54 = [v48 startDateSortDescriptorAscending_];
  if (v54)
  {
    v193 = v53;
    *&v203 = v45;
    *(v52 + 32) = v54;
    sub_2662C1744(0, &qword_280F8F638, 0x277CFE1E8);
    v55 = v49;
    v56 = sub_2664E0488();

    sub_2662C1744(0, &qword_280F8F5E8, 0x277CCAC98);
    v57 = sub_2664E0488();

    v58 = [objc_opt_self() eventQueryWithPredicate:v55 eventStreams:v56 offset:0 limit:1 sortDescriptors:v57];
    v194 = v55;

    [v58 setReadMetadata_];
    v59 = v204;
    v60 = v200;
    if (qword_280F914E8 != -1)
    {
LABEL_55:
      swift_once();
    }

    v61 = __swift_project_value_buffer(v59, qword_280F914F0);
    swift_beginAccess();
    v62 = v207;
    v63 = *(v207 + 16);
    (v63)(v60, v61, v59);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06E8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_26629C000, v64, v65, "ForegroundAppSignal#signal knowledgeProvider executing query", v66, 2u);
      MEMORY[0x266784AD0](v66, -1, -1);
    }

    v67 = *(v62 + 8);
    v207 = v62 + 8;
    v202 = v67;
    (v67)(v60, v59);
    v68 = *(*v201 + 80);
    v69 = v58;
    v70 = v68(v58);

    v212 = sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
    *&v211 = v70;
    sub_266318804(&v211, &v214);
    sub_2662A01E8(&v214, &v211);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073768, &qword_2664EC630);
    if (swift_dynamicCast())
    {
      v71 = v209[0];
      v60 = v204;
      if (v209[0] >> 62)
      {
        goto LABEL_57;
      }

      for (i = *((v209[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2664E0A68())
      {
        v73 = v187;
        if (!i)
        {
          v159 = v69;
          v160 = v193;

          v161 = sub_266386140(MEMORY[0x277D84F90]);
          v162 = v196;
          sub_2664DE428();
          v163 = v195;
          sub_2664DE388();
          v165 = v164;
          v166 = v203;
          v206(v162, v203);
          v167 = type metadata accessor for ForegroundAppSignal();
          v168 = swift_allocObject();
          v168[4] = 0;
          v168[5] = 0;
          v168[2] = v161;
          v168[3] = 0;
          v168[6] = v165;
          v212 = v167;
          v213 = &off_2877F0CC0;
          *&v211 = v168;
          if (v198)
          {

            sub_26636B8D0();
          }

          else
          {
          }

          v178 = v194;
          v197(&v211);
          __swift_destroy_boxed_opaque_existential_1Tm(&v211);

          goto LABEL_52;
        }

        if ((v71 & 0xC000000000000001) != 0)
        {
          v74 = MEMORY[0x266783B70](0, v71);
        }

        else
        {
          if (!*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_60;
          }

          v74 = *(v71 + 32);
        }

        v200 = v74;
        (v63)(v73, v61, v60);
        v75 = sub_2664DFE18();
        v76 = sub_2664E06E8();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_26629C000, v75, v76, "ForegroundAppSignal#signal storing signals", v77, 2u);
          v78 = v77;
          v60 = v204;
          MEMORY[0x266784AD0](v78, -1, -1);
        }

        (v202)(v73, v60);
        v79 = v185;
        sub_2664DE428();
        v59 = &selRef_setUniversalStoreIdentifiersWithBlock_;
        v80 = [v200 endDate];
        if (!v80)
        {
          goto LABEL_61;
        }

        v81 = v80;
        v82 = v184;
        sub_2664DE3F8();

        sub_2664DE388();
        v83 = v82;
        v84 = v203;
        v85 = v206;
        v206(v83, v203);
        v85(v79, v84);
        v86 = Double.rounded(to:)(5);
        v87 = [v200 value];
        if (!v87)
        {
          goto LABEL_62;
        }

        v88 = v87;
        v89 = [v87 stringValue];

        v90 = v204;
        v91 = v183;
        if (!v89)
        {

          v170 = sub_266386140(MEMORY[0x277D84F90]);
          v171 = v196;
          sub_2664DE428();
          v163 = v195;
          sub_2664DE388();
          v173 = v172;
          v166 = v203;
          v206(v171, v203);
          v174 = type metadata accessor for ForegroundAppSignal();
          v175 = swift_allocObject();
          v175[4] = 0;
          v175[5] = 0;
          v175[2] = v170;
          v175[3] = 0;
          v175[6] = v173;
          v212 = v174;
          v213 = &off_2877F0CC0;
          *&v211 = v175;
          if (v198)
          {

            sub_26636B8D0();
          }

          else
          {
          }

          v179 = v194;
          v197(&v211);
          __swift_destroy_boxed_opaque_existential_1Tm(&v211);

LABEL_52:
          __swift_destroy_boxed_opaque_existential_1Tm(&v214);
          v206(v163, v166);
        }

        v201 = v69;
        v184 = sub_2664E02C8();
        v181 = v92;

        (v63)(v91, v61, v90);
        v93 = sub_2664DFE18();
        v94 = sub_2664E06E8();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_26629C000, v93, v94, "ForegroundAppSignal#signal computing compound score", v95, 2u);
          MEMORY[0x266784AD0](v95, -1, -1);
        }

        (v202)(v91, v90);
        v96 = v186;
        sub_2664DF388();
        v97 = [v200 endDate];
        v98 = v203;
        if (!v97)
        {
          goto LABEL_63;
        }

        v99 = v97;

        v100 = v182;
        sub_2664DE3F8();

        HistoryStats.addInstance(date:)();
        v206(v100, v98);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073778, &qword_2664EC640);
        v101 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F40, &qword_2664E9070) - 8);
        v102 = *(*v101 + 72);
        v103 = (*(*v101 + 80) + 32) & ~*(*v101 + 80);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_2664E36F0;
        v105 = (v104 + v103);
        v106 = v101[14];
        v107 = v181;
        *v105 = v184;
        v105[1] = v107;
        v108 = (v190 + 2);
        v187 = v190[2];
        (v187)(v105 + v106, v96, v191);

        v58 = sub_266385ABC(v104);
        swift_setDeallocating();
        sub_2664237A0(v105);
        swift_deallocClassInstance();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
        v109 = sub_2664E0C78();
        v69 = v109;
        v63 = 0;
        v111 = v58 + 64;
        v110 = *(v58 + 8);
        v202 = v58;
        v112 = 1 << v58[32];
        v113 = -1;
        if (v112 < 64)
        {
          v113 = ~(-1 << v112);
        }

        v71 = v113 & v110;
        v60 = ((v112 + 63) >> 6);
        v188 = v108;
        v204 = (v108 - 8);
        v185 = (v109 + 64);
        v192 = v109;
        if ((v113 & v110) == 0)
        {
          break;
        }

        while (1)
        {
          v114 = __clz(__rbit64(v71));
          v71 &= v71 - 1;
LABEL_31:
          v61 = v114 | (v63 << 6);
          v117 = *(v202 + 7);
          v118 = (*(v202 + 6) + 16 * v61);
          v119 = v118[1];
          v207 = *v118;
          v120 = v190;
          v58 = v189;
          v59 = v191;
          (v187)(v189, v117 + v190[9] * v61, v191);

          v121 = sub_2663D80F4(14400.0);
          (v120[1])(v58, v59);
          *&v185[(v61 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v61;
          v69 = v192;
          v122 = (*(v192 + 6) + 16 * v61);
          *v122 = v207;
          v122[1] = v119;
          *(*(v69 + 7) + 8 * v61) = v121;
          v123 = *(v69 + 2);
          v124 = __OFADD__(v123, 1);
          v125 = v123 + 1;
          if (v124)
          {
            break;
          }

          *(v69 + 2) = v125;
          if (!v71)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_57:
        ;
      }

LABEL_26:
      v115 = v63;
      while (1)
      {
        v63 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          __break(1u);
          goto LABEL_55;
        }

        if (v63 >= v60)
        {
          break;
        }

        v116 = *&v111[8 * v63];
        ++v115;
        if (v116)
        {
          v114 = __clz(__rbit64(v116));
          v71 = (v116 - 1) & v116;
          goto LABEL_31;
        }
      }

      v150 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v151 = v196;
      sub_2664DE428();
      v152 = v195;
      sub_2664DE388();
      v154 = v153;
      v155 = v203;
      v206(v151, v203);
      v156 = type metadata accessor for ForegroundAppSignal();
      v157 = swift_allocObject();
      v157[4] = v181;
      v157[5] = v150;
      v158 = v184;
      v157[2] = v69;
      v157[3] = v158;
      v157[6] = v154;
      v212 = v156;
      v213 = &off_2877F0CC0;
      *&v211 = v157;
      if (v198)
      {

        sub_26636B8D0();
      }

      else
      {
      }

      v176 = v201;
      v177 = v186;
      v197(&v211);
      __swift_destroy_boxed_opaque_existential_1Tm(&v211);

      (*v204)(v177, v191);
      __swift_destroy_boxed_opaque_existential_1Tm(&v214);
      v206(v152, v155);
    }

    else
    {
      v201 = v69;
      v126 = v188;
      v127 = v204;
      (v63)(v188, v61, v204);
      sub_2662A01E8(&v214, &v211);
      v128 = sub_2664DFE18();
      v129 = sub_2664E06D8();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = v193;
        v131 = swift_slowAlloc();
        v132 = v126;
        v133 = swift_slowAlloc();
        v210 = v133;
        *v131 = 136315138;
        sub_2662A01E8(&v211, v209);
        __swift_project_boxed_opaque_existential_1(v209, v209[3]);
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_1Tm(v209);
        v208 = DynamicType;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073770, &qword_2664EC638);
        v135 = sub_2664E0318();
        v137 = v136;
        __swift_destroy_boxed_opaque_existential_1Tm(&v211);
        v138 = sub_2662A320C(v135, v137, &v210);

        *(v131 + 4) = v138;
        _os_log_impl(&dword_26629C000, v128, v129, "ForegroundAppSignal#signal could not convert core duet response to array of _DKEvent, actual class: %s", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        MEMORY[0x266784AD0](v133, -1, -1);
        MEMORY[0x266784AD0](v131, -1, -1);

        v139 = v132;
      }

      else
      {
        v130 = v193;

        __swift_destroy_boxed_opaque_existential_1Tm(&v211);
        v139 = v126;
      }

      (v202)(v139, v127);
      v140 = v197;
      v141 = v203;
      v142 = v198;
      v143 = v195;
      v144 = sub_266386140(MEMORY[0x277D84F90]);
      v145 = v196;
      sub_2664DE428();
      sub_2664DE388();
      v147 = v146;
      v206(v145, v141);
      v148 = type metadata accessor for ForegroundAppSignal();
      v149 = swift_allocObject();
      v149[4] = 0;
      v149[5] = 0;
      v149[2] = v144;
      v149[3] = 0;
      v149[6] = v147;
      v212 = v148;
      v213 = &off_2877F0CC0;
      *&v211 = v149;

      if (v142)
      {
        sub_26636B8D0();
      }

      v169 = v194;
      v140(&v211);
      __swift_destroy_boxed_opaque_existential_1Tm(&v211);

      __swift_destroy_boxed_opaque_existential_1Tm(&v214);
      v206(v143, v141);
    }
  }

  else
  {
LABEL_60:

    __break(1u);
LABEL_61:

    __break(1u);
LABEL_62:

    __break(1u);
LABEL_63:

    __break(1u);
  }

  return result;
}