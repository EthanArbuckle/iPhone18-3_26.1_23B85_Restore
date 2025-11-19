uint64_t sub_266487460(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; i += 4)
    {
      v7 = i[1];
      v20[0] = *i;
      v20[1] = v7;
      v8 = i[3];
      v10 = *i;
      v9 = i[1];
      v20[2] = i[2];
      v20[3] = v8;
      v16 = v10;
      v17 = v9;
      v11 = i[3];
      v18 = i[2];
      v19 = v11;
      sub_2662C0AE0(v20, &v12);
      v5(&v16);
      if (v3)
      {
        break;
      }

      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
      result = sub_2662C0B3C(&v12);
      if (!--v4)
      {
        return result;
      }
    }

    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    return sub_2662C0B3C(&v12);
  }

  return result;
}

void sub_266487534(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266783B70](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_266487634(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2664E0A18();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_2664ABA8C(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_2664876B0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2664E0A18();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_2664AAD4C(v3, *(a1 + 36), 0, a1);
  }
}

double sub_26648772C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2664E0A18();
  if (v3 != 1 << *(a1 + 32))
  {
    sub_2664AACFC(v3, *(a1 + 36), 0, a1);
  }

  return result;
}

uint64_t sub_2664877AC(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2664E0A18();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_2664ABAE0(v3, *(a1 + 36), 0, a1);

  return v5;
}

unint64_t sub_266487828(unint64_t result)
{
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 0;
  }

  v1 = result;
  v2 = sub_2664E0A68();
  result = v1;
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    return MEMORY[0x266783B70](0, result);
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_2664878B4(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1;
  v15 = sub_2664DFE38();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a6;
  v32[1] = a7;
  v32[2] = a8;
  if (v14 == 2)
  {
    return a4(v32);
  }

  v22 = v18;
  v29 = v20;
  v30 = v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = v30;
  v24 = __swift_project_value_buffer(v30, qword_280F914F0);
  swift_beginAccess();
  (*(v22 + 16))(v29, v24, v23);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06D8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_2662A320C(a2, a3, v31);
    _os_log_impl(&dword_26629C000, v25, v26, "Completions#protect FATAL! Double computing completion with name: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v22 + 8))(v29, v30);
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000043, 0x80000002664F4570);
  MEMORY[0x2667833B0](a2, a3);
  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_266487B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v54 - v6;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = MEMORY[0x28223BE20](v7);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v60 = *(v8 + 2);
  v61 = v17;
  v60(v16, v17, v7);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v55 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v64[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v64);
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicValue#next [%{public}s]", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    v23 = v21;
    v8 = v55;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v24 = *(v8 + 1);
  v24(v16, v7);
  v25 = *(v3 + 16);
  sub_2662A98AC();
  v60(v14, v61, v7);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  v28 = os_log_type_enabled(v26, v27);
  v55 = v24;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v64[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v64);
    _os_log_impl(&dword_26629C000, v26, v27, "AtomicValue#next [%{public}s] lock acquired", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v24 = v55;
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v24(v14, v7);
  *(v3 + 24) = 0;
  v31 = (v3 + *(*v3 + 112));
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  sub_2663142F4(v32);
  v36 = v59;
  v60(v59, v61, v7);

  v37 = sub_2664DFE18();
  v38 = sub_2664E06E8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v63[0] = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v63);
    *(v39 + 12) = 2082;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
    v41 = sub_2664E0318();
    v43 = sub_2662A320C(v41, v42, v63);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_26629C000, v37, v38, "AtomicValue#next [%{public}s] computing value for: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);

    v55(v59, v7);
  }

  else
  {

    v24(v36, v7);
  }

  v44 = v56;
  sub_2664DE428();
  v45 = sub_2664DE438();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(v44, v3 + v46);
  swift_endAccess();
  v47 = v3 + *(*v3 + 120);
  v49 = *v47;
  v48 = *(v47 + 8);
  v50 = swift_allocObject();
  v51 = v57;
  v52 = v58;
  v50[2] = v3;
  v50[3] = v51;
  v50[4] = v52;

  v49(sub_2664B729C, v50);
}

uint64_t sub_266488278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = a1;
  v71 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v66 - v6;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = MEMORY[0x28223BE20](v7);
  v72 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v73 = *(v8 + 2);
  v74 = v17;
  v73(v16, v17, v7);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v68 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    *&v78[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v78);
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicValue#next [%{public}s]", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    v23 = v21;
    v8 = v68;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v24 = *(v8 + 1);
  v24(v16, v7);
  v25 = *(v3 + 16);
  sub_2662A98AC();
  v73(v14, v74, v7);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  v28 = os_log_type_enabled(v26, v27);
  v68 = v24;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v67 = v7;
    v31 = v30;
    *&v78[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v78);
    _os_log_impl(&dword_26629C000, v26, v27, "AtomicValue#next [%{public}s] lock acquired", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v7 = v67;
    MEMORY[0x266784AD0](v31, -1, -1);
    v32 = v29;
    v24 = v68;
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v24(v14, v7);
  *(v3 + 24) = 0;
  sub_2662DC04C(v77);
  v33 = (v3 + *(*v3 + 112));
  swift_beginAccess();
  v34 = v33[9];
  v78[8] = v33[8];
  v78[9] = v34;
  v35 = v33[11];
  v78[10] = v33[10];
  v78[11] = v35;
  v36 = v33[5];
  v78[4] = v33[4];
  v78[5] = v36;
  v37 = v33[7];
  v78[6] = v33[6];
  v78[7] = v37;
  v38 = v33[1];
  v78[0] = *v33;
  v78[1] = v38;
  v39 = v33[3];
  v78[2] = v33[2];
  v78[3] = v39;
  v40 = v77[9];
  v41 = v77[10];
  v42 = v77[7];
  v33[8] = v77[8];
  v33[9] = v40;
  v43 = v77[11];
  v33[10] = v41;
  v33[11] = v43;
  v44 = v77[5];
  v45 = v77[6];
  v33[4] = v77[4];
  v33[5] = v44;
  v33[6] = v45;
  v33[7] = v42;
  v46 = v77[1];
  *v33 = v77[0];
  v33[1] = v46;
  v47 = v77[3];
  v33[2] = v77[2];
  v33[3] = v47;
  sub_2662A9238(v78, &qword_280073320, &unk_2664EF750);
  v48 = v72;
  v73(v72, v74, v7);

  v49 = sub_2664DFE18();
  v50 = sub_2664E06E8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v76[0] = v52;
    *v51 = 136446466;
    *(v51 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v76);
    *(v51 + 12) = 2082;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
    v53 = sub_2664E0318();
    v55 = sub_2662A320C(v53, v54, v76);

    *(v51 + 14) = v55;
    _os_log_impl(&dword_26629C000, v49, v50, "AtomicValue#next [%{public}s] computing value for: %{public}s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v52, -1, -1);
    MEMORY[0x266784AD0](v51, -1, -1);

    v68(v72, v7);
  }

  else
  {

    v24(v48, v7);
  }

  v56 = v69;
  sub_2664DE428();
  v57 = sub_2664DE438();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(v56, v3 + v58);
  swift_endAccess();
  v59 = v3 + *(*v3 + 120);
  v61 = *v59;
  v60 = *(v59 + 8);
  v62 = swift_allocObject();
  v63 = v70;
  v64 = v71;
  v62[2] = v3;
  v62[3] = v63;
  v62[4] = v64;

  v61(sub_2664B71F4, v62);
}

uint64_t sub_2664889E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v51 - v6;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = MEMORY[0x28223BE20](v7);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v57 = *(v8 + 2);
  v58 = v17;
  v57(v16, v17, v7);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52 = v8;
    v21 = v20;
    v22 = swift_slowAlloc();
    v61[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v61);
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicValue#next [%{public}s]", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    v23 = v21;
    v8 = v52;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v24 = *(v8 + 1);
  v24(v16, v7);
  v25 = *(v3 + 16);
  sub_2662A98AC();
  v57(v14, v58, v7);

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  v28 = os_log_type_enabled(v26, v27);
  v52 = v24;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v61[0] = v30;
    *v29 = 136446210;
    *(v29 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v61);
    _os_log_impl(&dword_26629C000, v26, v27, "AtomicValue#next [%{public}s] lock acquired", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v24 = v52;
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v24(v14, v7);
  *(v3 + 24) = 0;
  v31 = (v3 + *(*v3 + 112));
  swift_beginAccess();
  v32 = v31[2];
  *v31 = 0;
  v31[1] = 0;
  v31[2] = 0;

  v33 = v56;
  v57(v56, v58, v7);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v60[0] = v37;
    *v36 = 136446466;
    *(v36 + 4) = sub_2662A320C(*(v3 + *(*v3 + 128)), *(v3 + *(*v3 + 128) + 8), v60);
    *(v36 + 12) = 2082;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, v60);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_26629C000, v34, v35, "AtomicValue#next [%{public}s] computing value for: %{public}s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);

    v52(v56, v7);
  }

  else
  {

    v24(v33, v7);
  }

  v41 = v53;
  sub_2664DE428();
  v42 = sub_2664DE438();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = qword_280F91D08;
  swift_beginAccess();
  sub_2663132FC(v41, v3 + v43);
  swift_endAccess();
  v44 = v3 + *(*v3 + 120);
  v46 = *v44;
  v45 = *(v44 + 8);
  v47 = swift_allocObject();
  v48 = v54;
  v49 = v55;
  v47[2] = v3;
  v47[3] = v48;
  v47[4] = v49;

  v46(sub_2664B71BC, v47);
}

uint64_t sub_2664890D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *), uint64_t a7)
{
  v40 = a7;
  v41 = a6;
  v12 = sub_2664DFE38();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = a1;
  v44[1] = a2;
  v44[2] = a3;
  v44[3] = a4;
  *(a5 + 24) = 1;
  v15 = (a5 + *(*a5 + 112));
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  v19 = v15[3];
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  sub_266314294(a1);
  sub_2663142F4(v16);
  v20 = *(a5 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = v39;
  v22 = __swift_project_value_buffer(v39, qword_280F914F0);
  swift_beginAccess();
  v24 = v37;
  v23 = v38;
  (*(v38 + 16))(v37, v22, v21);
  v25 = v44[0];

  sub_266314294(v25);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  sub_2663142F4(v25);
  v28 = v21;
  v29 = v23;
  if (os_log_type_enabled(v26, v27))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_2662A320C(*(a5 + *(*a5 + 128)), *(a5 + *(*a5 + 128) + 8), &v43);
    *(v30 + 12) = 2082;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072958, &qword_2664E5060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072960, &qword_2664E5068);
    v32 = sub_2664E0318();
    v34 = sub_2662A320C(v32, v33, &v43);

    *(v30 + 14) = v34;
    _os_log_impl(&dword_26629C000, v26, v27, "AtomicValue#next [%{public}s] lock released, received result: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v29 + 8))(v24, v28);
  return v41(v44);
}

uint64_t sub_266489448(__int128 *a1, uint64_t a2, uint64_t (*a3)(__int128 *), uint64_t a4)
{
  v48[1] = a4;
  v49 = a3;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[9];
  v12 = a1[7];
  v60 = a1[8];
  v61 = v11;
  v13 = a1[9];
  v14 = a1[11];
  v62 = a1[10];
  v63 = v14;
  v15 = a1[5];
  v16 = a1[3];
  v56 = a1[4];
  v57 = v15;
  v17 = a1[5];
  v18 = a1[7];
  v58 = a1[6];
  v59 = v18;
  v19 = a1[1];
  v52 = *a1;
  v53 = v19;
  v20 = a1[3];
  v22 = *a1;
  v21 = a1[1];
  v54 = a1[2];
  v23 = v54;
  v55 = v20;
  v72 = v60;
  v73 = v13;
  v24 = a1[11];
  v74 = v62;
  v75 = v24;
  v68 = v56;
  v69 = v17;
  v70 = v58;
  v71 = v12;
  v64 = v22;
  v65 = v21;
  *(a2 + 24) = 1;
  v66 = v23;
  v67 = v16;
  v25 = (a2 + *(*a2 + 112));
  swift_beginAccess();
  v26 = v25[9];
  v76[8] = v25[8];
  v76[9] = v26;
  v27 = v25[11];
  v76[10] = v25[10];
  v76[11] = v27;
  v28 = v25[5];
  v76[4] = v25[4];
  v76[5] = v28;
  v29 = v25[7];
  v76[6] = v25[6];
  v76[7] = v29;
  v30 = v25[1];
  v76[0] = *v25;
  v76[1] = v30;
  v31 = v25[3];
  v76[2] = v25[2];
  v76[3] = v31;
  v32 = v73;
  v25[8] = v72;
  v25[9] = v32;
  v33 = v75;
  v25[10] = v74;
  v25[11] = v33;
  v34 = v69;
  v25[4] = v68;
  v25[5] = v34;
  v35 = v71;
  v25[6] = v70;
  v25[7] = v35;
  v36 = v65;
  *v25 = v64;
  v25[1] = v36;
  v37 = v67;
  v25[2] = v66;
  v25[3] = v37;
  sub_2662A7224(&v64, v77, &qword_280073320, &unk_2664EF750);
  sub_2662A9238(v76, &qword_280073320, &unk_2664EF750);
  v38 = *(a2 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v39, v6);
  v77[8] = v60;
  v77[9] = v61;
  v77[10] = v62;
  v77[11] = v63;
  v77[4] = v56;
  v77[5] = v57;
  v77[6] = v58;
  v77[7] = v59;
  v77[0] = v52;
  v77[1] = v53;
  v77[2] = v54;
  v77[3] = v55;

  sub_2662A7224(v77, v51, &qword_280073320, &unk_2664EF750);
  v40 = sub_2664DFE18();
  v41 = sub_2664E06E8();

  sub_2662A9238(v77, &qword_280073320, &unk_2664EF750);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v51[0] = v43;
    *v42 = 136446466;
    *(v42 + 4) = sub_2662A320C(*(a2 + *(*a2 + 128)), *(a2 + *(*a2 + 128) + 8), v51);
    *(v42 + 12) = 2082;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073320, &unk_2664EF750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072988, &unk_2664E50A0);
    v44 = sub_2664E0318();
    v46 = sub_2662A320C(v44, v45, v51);

    *(v42 + 14) = v46;
    _os_log_impl(&dword_26629C000, v40, v41, "AtomicValue#next [%{public}s] lock released, received result: %{public}s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return v49(&v52);
}

uint64_t sub_266489894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[0] = a5;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = a1;
  v28[1] = a2;
  v28[2] = a3;
  *(a4 + 24) = 1;
  v14 = (a4 + *(*a4 + 112));
  swift_beginAccess();
  v15 = v14[2];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;

  v16 = *(a4 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v17, v9);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2662A320C(*(a4 + *(*a4 + 128)), *(a4 + *(*a4 + 128) + 8), &v27);
    *(v20 + 12) = 2082;
    v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
    v22 = sub_2664E0318();
    v24 = sub_2662A320C(v22, v23, &v27);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicValue#next [%{public}s] lock released, received result: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  return (v26[0])(v28);
}

uint64_t sub_266489BC4(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v84 = a1;
  v85 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v78 - v6;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v83 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v78 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v78 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v86 = v8[2];
  v86(v20, v21, v7);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v79 = v21;
    v25 = v7;
    v26 = v8;
    v27 = v24;
    v28 = swift_slowAlloc();
    v89[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v89);
    _os_log_impl(&dword_26629C000, v22, v23, "AtomicValue#getAndCompute [%{public}s]", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266784AD0](v28, -1, -1);
    v29 = v27;
    v8 = v26;
    v7 = v25;
    v21 = v79;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v30 = v8[1];
  v30(v20, v7);
  v31 = *(v3 + 2);
  sub_2662A98AC();
  v86(v18, v21, v7);

  v32 = sub_2664DFE18();
  v33 = sub_2664E06E8();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v78 = v8;
    v79 = v7;
    v35 = v34;
    v36 = v21;
    v37 = v30;
    v38 = swift_slowAlloc();
    v89[0] = v38;
    *v35 = 136446210;
    *(v35 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v89);
    _os_log_impl(&dword_26629C000, v32, v33, "AtomicValue#getAndCompute [%{public}s] lock acquired", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v39 = v38;
    v30 = v37;
    v21 = v36;
    MEMORY[0x266784AD0](v39, -1, -1);
    v7 = v79;
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  v30(v18, v7);
  if (v3[24] == 1)
  {
    sub_2662AA89C();
    v40 = v80;
    v86(v80, v21, v7);

    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v79 = v21;
      v44 = v43;
      v45 = swift_slowAlloc();
      v89[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v89);
      _os_log_impl(&dword_26629C000, v41, v42, "AtomicValue#getAndCompute [%{public}s] lock released", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      v21 = v79;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v30(v40, v7);
    v46 = v83;
    v86(v83, v21, v7);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06E8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v89[0] = v50;
      *v49 = 136446466;
      v51 = *v3;
      v80 = v30;
      *(v49 + 4) = sub_2662A320C(*&v3[*(v51 + 128)], *&v3[*(v51 + 128) + 8], v89);
      *(v49 + 12) = 2082;
      v88[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FC8, &qword_2664EF6D8);
      v52 = sub_2664E0318();
      v54 = sub_2662A320C(v52, v53, v89);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_26629C000, v47, v48, "AtomicValue#getAndCompute [%{public}s] using pre-computed value: %{public}s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);

      (v80)(v83, v7);
    }

    else
    {

      v30(v46, v7);
    }

    v67 = *(*v3 + 112);
    swift_beginAccess();
    LOBYTE(v88[0]) = v3[v67];
    return v84(v88);
  }

  else
  {
    v80 = v30;
    v55 = *(*v3 + 112);
    swift_beginAccess();
    v56 = v3[v55];
    v57 = v82;
    v86(v82, v21, v7);

    v58 = sub_2664DFE18();
    v59 = sub_2664E06E8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v88[0] = v61;
      *v60 = 136446466;
      *(v60 + 4) = sub_2662A320C(*&v3[*(*v3 + 128)], *&v3[*(*v3 + 128) + 8], v88);
      *(v60 + 12) = 2082;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FC8, &qword_2664EF6D8);
      v62 = sub_2664E0318();
      v64 = v56;
      v65 = sub_2662A320C(v62, v63, v88);

      *(v60 + 14) = v65;
      v56 = v64;
      _os_log_impl(&dword_26629C000, v58, v59, "AtomicValue#getAndCompute [%{public}s] computing value for: %{public}s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v61, -1, -1);
      MEMORY[0x266784AD0](v60, -1, -1);

      v66 = v82;
    }

    else
    {

      v66 = v57;
    }

    (v80)(v66, v7);
    v69 = v81;
    sub_2664DE428();
    v70 = sub_2664DE438();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    v71 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v69, &v3[v71]);
    swift_endAccess();
    v72 = &v3[*(*v3 + 120)];
    v74 = *v72;
    v73 = *(v72 + 1);
    v75 = swift_allocObject();
    v76 = v84;
    v77 = v85;
    *(v75 + 16) = v3;
    *(v75 + 24) = v76;
    *(v75 + 32) = v77;
    *(v75 + 40) = v56;

    v74(sub_2664AEAF4, v75);
  }
}

uint64_t sub_26648A63C(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, char a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a5;
  *(a2 + 24) = 1;
  v15 = *(*a2 + 112);
  swift_beginAccess();
  *(a2 + v15) = a1;
  v16 = *(a2 + 16);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v17, v10);

  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[0] = a4;
    v22 = a3;
    v23 = v21;
    v30 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_2662A320C(*(a2 + *(*a2 + 128)), *(a2 + *(*a2 + 128) + 8), &v30);
    *(v20 + 12) = 2082;
    v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FC8, &qword_2664EF6D8);
    v24 = sub_2664E0318();
    v26 = sub_2662A320C(v24, v25, &v30);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_26629C000, v18, v19, "AtomicValue#getAndCompute [%{public}s] lock released, received value: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v27 = v23;
    a3 = v22;
    MEMORY[0x266784AD0](v27, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  return a3(&v31);
}

uint64_t sub_26648A940(uint64_t a1, int a2, void (*a3)(__int128 *), uint64_t a4)
{
  v5 = v4;
  v106 = a4;
  v105 = a3;
  v107 = *&a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v95 - v11;
  v12 = sub_2664DE438();
  v108 = *(v12 - 8);
  v13 = *(v108 + 64);
  MEMORY[0x28223BE20](v12);
  v97 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v100 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v101 = &v95 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v98 = &v95 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v95 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v95 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v95 - v30;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v96 = v26;
  v32 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v33 = v16[2];
  v111 = v16 + 2;
  v112 = v32;
  v110 = v33;
  v33(v31, v32, v15);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();

  v36 = os_log_type_enabled(v34, v35);
  v104 = v12;
  v102 = a2;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v95 = v16;
    v38 = v37;
    v39 = swift_slowAlloc();
    v115[0] = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], v115);
    *(v38 + 12) = 2082;
    *&v116 = v107;
    BYTE8(v116) = a2 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2800725F0, qword_2664E43E0);
    v40 = sub_2664E0318();
    v42 = sub_2662A320C(v40, v41, v115);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_26629C000, v34, v35, "AtomicValue#computeIfAbsent [%{public}s] startTimeMaxSecondsAgo: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v39, -1, -1);
    v43 = v38;
    v16 = v95;
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v109 = v16[1];
  v109(v31, v15);
  v44 = *(v5 + 2);
  sub_2662A98AC();
  v110(v29, v112, v15);

  v45 = sub_2664DFE18();
  v46 = sub_2664E06E8();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v116 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v116);
    _os_log_impl(&dword_26629C000, v45, v46, "AtomicValue#computeIfAbsent [%{public}s] lock acquired", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  v109(v29, v15);
  v49 = v104;
  v50 = v103;
  v51 = v108;
  if ((v102 & 1) == 0)
  {
    v52 = v107;
    v53 = qword_280F91D08;
    swift_beginAccess();
    sub_2662A7224(&v5[v53], v50, &qword_2800737D0, qword_2664E4FD0);
    v54 = *(v51 + 48);
    if (v54(v50, 1, v49) == 1)
    {
      v55 = v97;
      sub_2664DE378();
      v56 = v54(v50, 1, v49);
      v57 = v55;
      if (v56 != 1)
      {
        sub_2662A9238(v50, &qword_2800737D0, qword_2664E4FD0);
      }
    }

    else
    {
      v57 = v97;
      (*(v51 + 32))(v97, v50, v49);
    }

    sub_2664DE3C8();
    v59 = v58;
    (*(v51 + 8))(v57, v49);
    v60 = fabs(v59);
    if (v60 > v52)
    {
      v61 = v96;
      v110(v96, v112, v15);

      v62 = sub_2664DFE18();
      v63 = sub_2664E06E8();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v116 = v65;
        *v64 = 136446722;
        *(v64 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v116);
        *(v64 + 12) = 2050;
        *(v64 + 14) = v60;
        *(v64 + 22) = 2050;
        *(v64 + 24) = v107;
        _os_log_impl(&dword_26629C000, v62, v63, "AtomicValue#computeIfAbsent [%{public}s] elapsedTime: %{public}f > max wait: %{public}f, clearing 'complete' flag", v64, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x266784AD0](v65, -1, -1);
        v51 = v108;
        MEMORY[0x266784AD0](v64, -1, -1);
      }

      v109(v61, v15);
      v5[24] = 0;
    }
  }

  if (v5[24] == 1)
  {
    v66 = &v5[*(*v5 + 112)];
    swift_beginAccess();
    v67 = *(v66 + 2);
    v116 = *v66;
    v117 = v67;

    sub_2662AA89C();
    v68 = v98;
    v110(v98, v112, v15);

    v69 = sub_2664DFE18();
    v70 = sub_2664E06E8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v114 = v72;
      *v71 = 136446210;
      *(v71 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v114);
      _os_log_impl(&dword_26629C000, v69, v70, "AtomicValue#computeIfAbsent [%{public}s] lock released", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x266784AD0](v72, -1, -1);
      MEMORY[0x266784AD0](v71, -1, -1);
    }

    v109(v68, v15);
    v73 = v100;
    v110(v100, v112, v15);

    v74 = sub_2664DFE18();
    v75 = sub_2664E06E8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v114 = v77;
      *v76 = 136446466;
      *(v76 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v114);
      *(v76 + 12) = 2082;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072948, &qword_2664E5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072950, &qword_2664E5058);
      v78 = sub_2664E0318();
      v80 = sub_2662A320C(v78, v79, &v114);

      *(v76 + 14) = v80;
      _os_log_impl(&dword_26629C000, v74, v75, "AtomicValue#computeIfAbsent [%{public}s] using pre-computed result: %{public}s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v77, -1, -1);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v109(v73, v15);
    v105(&v116);
  }

  else
  {
    v81 = v101;
    v110(v101, v112, v15);

    v82 = sub_2664DFE18();
    v83 = sub_2664E06E8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v116 = v85;
      *v84 = 136446210;
      *(v84 + 4) = sub_2662A320C(*&v5[*(*v5 + 128)], *&v5[*(*v5 + 128) + 8], &v116);
      _os_log_impl(&dword_26629C000, v82, v83, "AtomicValue#computeIfAbsent [%{public}s] computing value...", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      MEMORY[0x266784AD0](v85, -1, -1);
      MEMORY[0x266784AD0](v84, -1, -1);

      v86 = v101;
    }

    else
    {

      v86 = v81;
    }

    v109(v86, v15);
    v88 = v99;
    sub_2664DE428();
    (*(v51 + 56))(v88, 0, 1, v49);
    v89 = qword_280F91D08;
    swift_beginAccess();
    sub_2663132FC(v88, &v5[v89]);
    swift_endAccess();
    v90 = &v5[*(*v5 + 120)];
    v92 = *v90;
    v91 = *(v90 + 1);
    v93 = swift_allocObject();
    v94 = v105;
    v93[2] = v5;
    v93[3] = v94;
    v93[4] = v106;

    v92(sub_2664B71D4, v93);
  }
}

uint64_t sub_26648B718(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2664E0B78();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_26640687C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_26648BA18(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2664E0B78();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_266405E6C(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_26648BD18(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074008, &qword_2664EF728);
  if (swift_dynamicCast())
  {
    sub_2662A8618(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_2664DE188();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2662A9238(__src, &qword_280074010, &unk_2664EF730);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2664E0B78();
  }

  sub_2664AA458(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2664AED14(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2664AA520(sub_2664B7134);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2664DE2C8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2664067E8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2664E03A8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2664E03D8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2664E0B78();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2664067E8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2664E03B8();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_2664DE2D8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_2664DE2D8();
    sub_2662B79A8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_2662B79A8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_2663C50C4(*&__src[0], *(&__src[0] + 1));

  sub_266348774(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_26648C248(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_2664E01C8();

  v2(v3);
}

uint64_t sub_26648C2C0()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002DLL, 0x80000002664FAFC0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073F48 = v10;
  return result;
}

dispatch_semaphore_t sub_26648C458()
{
  result = dispatch_semaphore_create(0);
  qword_280073F58 = result;
  return result;
}

uint64_t sub_26648C47C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000018;
  v3 = *a1;
  v4 = "mandPrepareForSetQueue";
  if (v3 == 1)
  {
    v5 = 0xD00000000000001DLL;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v3 == 1)
  {
    v6 = "mandPrepareForSetQueue";
  }

  else
  {
    v6 = "MRMediaRemoteCommandSendQueue";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000026;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "led";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = "MRMediaRemoteCommandSendQueue";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000026;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "led";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2664E0D88();
  }

  return v11 & 1;
}

uint64_t sub_26648C554()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26648C5F0()
{
  *v0;
  *v0;
  sub_2664E0368();
}

uint64_t sub_26648C678()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26648C710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2664B0BF0();
  *a2 = result;
  return result;
}

void sub_26648C740(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = "mandPrepareForSetQueue";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = "MRMediaRemoteCommandSendQueue";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000026;
    v4 = "led";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

void *sub_26648C79C()
{
  result = sub_266386258(MEMORY[0x277D84F90]);
  off_280073F60 = result;
  return result;
}

uint64_t sub_26648C7C4()
{
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v0 = qword_280F91470;
  v2[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v2[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v2[0] = v0;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000002ELL, 0x80000002664FBA00, 1, v2);
  qword_280073F68 = result;
  return result;
}

unint64_t sub_26648C88C(_BYTE *a1, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      *a1 = -92;
      return 0xD000000000000017;
    case 2:
      *a1 = -92;
      return 0xD00000000000001ELL;
    case 3:
      *a1 = -92;
      return 0xD00000000000001ELL;
    case 10:
      *a1 = -92;
      goto LABEL_21;
    case 50:
      *a1 = 19;
      return 0xD000000000000010;
    case 51:
      *a1 = -92;
      return 0xD000000000000014;
    case 52:
      *a1 = -92;
      return 0xD00000000000001FLL;
    case 53:
      *a1 = 17;
      return 0xD000000000000012;
    case 100:
    case 101:
      result = 0xD00000000000001ALL;
      *a1 = -92;
      return result;
    case 102:
    case 103:
      *a1 = -92;
      return 0xD000000000000018;
    case 110:
      *a1 = -92;
      return 0xD00000000000001CLL;
    case 111:
      *a1 = -92;
      return 0xD00000000000001BLL;
    case 112:
      *a1 = -92;
      return 0xD00000000000001ELL;
    case 113:
      *a1 = -92;
      goto LABEL_21;
    case 114:
      *a1 = -92;
      return 0xD000000000000022;
    case 150:
      result = 0xD00000000000001ALL;
      *a1 = -92;
      return result;
    case 151:
      *a1 = -92;
      return 0xD000000000000017;
    case 152:
      *a1 = -92;
      return 0xD000000000000018;
    case 200:
      result = 0xD00000000000001ALL;
      *a1 = -92;
      return result;
    case 201:
      *a1 = -92;
LABEL_21:
      result = 0xD00000000000001DLL;
      break;
    default:
      *a1 = -92;
      result = 0x6E6B6E555F515358;
      break;
  }

  return result;
}

uint64_t sub_26648CB7C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000002FLL, 0x80000002664FB9D0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073F70 = v10;
  return result;
}

uint64_t sub_26648CD14()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000028, 0x80000002664FAFF0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073F78 = v10;
  return result;
}

void sub_26648CEAC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a3;
  v33 = a2;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = v8;
  v15 = a1;
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();

  v18 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    *v20 = 136446210;
    v34 = v30;
    v35 = v21;
    v22 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v23 = sub_2664E0318();
    v25 = sub_2662A320C(v23, v24, &v35);
    v29 = v14;
    v26 = v25;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_26629C000, v16, v18, "MediaPlaybackProvider#destination resolved destination: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x266784AD0](v21, -1, -1);
    v27 = v20;
    a1 = v30;
    MEMORY[0x266784AD0](v27, -1, -1);

    (*(v9 + 8))(v12, v29);
  }

  else
  {

    (*(v9 + 8))(v12, v14);
  }

  v28 = sub_2664AD590(a1, a5, v31);
  v33();
}

uint64_t sub_26648D140(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = a1;
    v27 = v15;
    *v14 = 136446210;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v17 = sub_2664E0318();
    v19 = sub_2662A320C(v17, v18, &v27);
    v24 = v4;
    v20 = a2;
    v21 = v19;

    *(v14 + 4) = v21;
    a2 = v20;
    _os_log_impl(&dword_26629C000, v11, v12, "MediaPlaybackProvider#destination resolved destination: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v25 + 8))(v8, v24);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_26648D3D0@<X0>(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v41 = v6[2];
  v42 = v13;
  v41(v12, v13, v5);
  v40 = v12;
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v16;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v16 = 136446210;
    LOWORD(v44) = a1 & 0x101;
    BYTE2(v44) = BYTE2(a1) & 1;
    BYTE3(v44) = HIBYTE(a1) & 1;
    type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
    v17 = sub_2664E0318();
    v19 = a1;
    v20 = v10;
    v21 = sub_2662A320C(v17, v18, &v45);

    v22 = v38;
    *(v38 + 1) = v21;
    v10 = v20;
    a1 = v19;
    v23 = v15;
    v24 = v22;
    _os_log_impl(&dword_26629C000, v14, v23, "MediaPlaybackProvider#streamingAvailability getting streaming availability for routing: %{public}s", v22, 0xCu);
    v25 = v39;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v26 = v6[1];
  v26(v40, v5);
  v27 = [*(a2 + 136) assistantStreamingGetAvailability_];
  v41(v10, v42, v5);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v6;
    v32 = v31;
    v44 = v27;
    v45 = v31;
    *v30 = 136315138;
    type metadata accessor for MPCAssistantStreamingAvailability(0);
    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, &v45);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_26629C000, v28, v29, "MediaPlaybackProvider#streamingAvailability complete: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  result = (v26)(v10, v5);
  *v43 = v27;
  return result;
}

void sub_26648D7B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = qword_280F914E8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v15, v8);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = v19;
    aBlock[0] = v19;
    *v18 = 136446210;
    v30 = a3 & 0x101;
    v31 = BYTE2(a3) & 1;
    v32 = HIBYTE(a3) & 1;
    type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
    v21 = sub_2664E0318();
    v28 = v8;
    v23 = sub_2662A320C(v21, v22, aBlock);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaPlaybackProvider#radioAvailability getting radio availability for routing: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    v13 = v29;
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v9 + 8))(v12, v28);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = *(a4 + 136);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2662C0CAC;
  *(v26 + 24) = v13;
  aBlock[4] = sub_2664B6BB4;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26648DD88;
  aBlock[3] = &block_descriptor_308;
  v27 = _Block_copy(aBlock);

  [v25 assistantRadioGetAvailability:a3 & 0x1010101 completion:v27];
  _Block_release(v27);
}

uint64_t sub_26648DB0C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = a1;
    v25 = v14;
    *v13 = 136315138;
    v15 = sub_2664E0D48();
    v17 = sub_2662A320C(v15, v16, &v25);
    v22 = v4;
    v18 = a2;
    v19 = v17;

    *(v13 + 4) = v19;
    a2 = v18;
    _os_log_impl(&dword_26629C000, v10, v11, "MediaPlaybackProvider#radioAvailability complete: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    (*(v23 + 8))(v8, v22);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_26648DD88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_26648DDDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v5;
    v19 = a1;
    v20 = a2;
    v21 = a4;
    v22 = a3;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "MediaPlaybackProvider#play (provisional)", v18, 2u);
    v24 = v23;
    a3 = v22;
    a4 = v21;
    a2 = v20;
    a1 = v19;
    v5 = v36;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v25 = [a1 outputDeviceUIDs];
  v26 = sub_2664E04A8();

  v27 = *(v26 + 16);

  if (v27)
  {
    v28 = v5[38];
    v29 = v5[39];
    __swift_project_boxed_opaque_existential_1(v5 + 35, v28);
    v30 = swift_allocObject();
    v30[2] = v5;
    v30[3] = a1;
    v30[4] = a2;
    v30[5] = a3;
    v30[6] = a4;
    v31 = *(v29 + 16);

    v32 = a1;

    v31(sub_2664B6B20, v30, v28, v29);
  }

  else
  {
    if (qword_280071CD8 != -1)
    {
      swift_once();
    }

    v33 = swift_allocObject();
    v33[2] = v5;
    v33[3] = a1;
    v33[4] = a2;
    v33[5] = a3;
    v33[6] = a4;

    v34 = a1;

    sub_2664ABB34(sub_2664B6B30, v33);
  }
}

void sub_26648E12C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t (*a6)(uint64_t *))
{
  if (a1)
  {
    v11 = a1;
    v12 = [v11 mediaRouteIdentifier];
    if (v12)
    {
      v25 = v11;
      v13 = v12;
      v14 = sub_2664E02C8();
      v16 = v15;

      v17 = [a3 outputDeviceUIDs];
      v18 = sub_2664E04A8();

      v26[0] = v14;
      v26[1] = v16;
      MEMORY[0x28223BE20](v19);
      v24[2] = v26;
      LOBYTE(v17) = sub_2662AA720(sub_2663A6860, v24, v18);

      if (v17)
      {
        if (qword_280071CD8 != -1)
        {
          swift_once();
        }

        v20 = swift_allocObject();
        v20[2] = a2;
        v20[3] = a3;
        v20[4] = a4;
        v20[5] = a5;
        v20[6] = a6;

        v21 = a3;

        sub_2664ABB34(sub_2664B7420, v20);
      }

      else
      {
        sub_26648E5A0(a3, a4, a5, a6);
      }

      return;
    }
  }

  if (qword_280071CD8 != -1)
  {
    swift_once();
  }

  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = a6;

  v23 = a3;

  sub_2664ABB34(sub_2664B7420, v22);
}

uint64_t sub_26648E3E0(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v8, v9, "MediaPlaybackProvider#checkTTSEndToSendPlayDelay did AutoBugCapture for long delay between TTSEnd and SendPlay with: %{BOOL}d", v10, 8u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26648E5A0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t (*a4)(uint64_t *))
{
  v59 = a3;
  v56 = *v4;
  v57 = v4;
  v58 = sub_2664DFE08();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v60 = a2;
  if (sub_2664AEEB4(2, a2))
  {
    v51 = v8;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v20, v21, v13);
    v22 = a1;

    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();

    v54 = v22;

    v50 = v24;
    v25 = os_log_type_enabled(v23, v24);
    v52 = v12;
    v53 = a4;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v61[0] = v49;
      *v26 = 136446722;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, v61);
      *(v26 + 12) = 2114;
      v28 = v54;
      *(v26 + 14) = v54;
      *v27 = v28;
      *(v26 + 22) = 2080;
      type metadata accessor for CFString(0);
      sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString);
      v29 = v28;
      v30 = sub_2664E01D8();
      v32 = sub_2662A320C(v30, v31, v61);

      *(v26 + 24) = v32;
      _os_log_impl(&dword_26629C000, v23, v50, "MediaPlaybackProvider#play %{public}s sending MRMediaRemoteCommandPlay to destination:%{public}@, options: %s", v26, 0x20u);
      sub_2662A9238(v27, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v27, -1, -1);
      v33 = v49;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v34 = qword_280F91D48;
    v35 = v52;
    sub_2664DFDE8();
    v36 = v51;
    v37 = v55;
    v38 = v58;
    (*(v51 + 16))(v55, v35, v58);
    v39 = (*(v36 + 80) + 33) & ~*(v36 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = "mediaPlaybackProviderPlay";
    *(v40 + 24) = 25;
    *(v40 + 32) = 2;
    (*(v36 + 32))(v40 + v39, v37, v38);
    v41 = (v40 + ((v9 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
    v42 = v53;
    *v41 = v59;
    v41[1] = v42;

    sub_2664E0848();
    sub_2664DFDC8();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_2664B7414;
    *(v43 + 24) = v40;

    sub_26648ECC8(sub_2664B7418, v43, v57, v60, v54, v56);

    return (*(v36 + 8))(v35, v38);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v18, v45, v13);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "MediaPlaybackProvider#play preventing re-send MRMediaRemoteCommandPlay for same Siri request", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    memset(v61, 0, sizeof(v61));
    return v59(v61);
  }
}

uint64_t sub_26648ECC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a6;
  v74 = a2;
  v75 = a5;
  v79 = a3;
  v80 = a4;
  v72 = a1;
  v6 = sub_2664DFE38();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v66 - v11;
  v13 = sub_2664DE4A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = &v66 - v19;
  v71 = sub_2664DE438();
  v70 = *(v71 - 8);
  v20 = *(v70 + 64);
  v21 = MEMORY[0x28223BE20](v71);
  v68 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  MEMORY[0x28223BE20](v21);
  v69 = &v66 - v23;
  sub_2664DE428();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v24 = qword_280F90B40;
  v25 = unk_280F90B48;
  v26 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v27 = *(v24 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30);
  (*(v25 + 16))(v24, v25);
  v32 = v31;
  (*(v27 + 8))(v30, v24);
  if (v32)
  {
    sub_2664DE448();

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_2662A9238(v12, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      v33 = v66;
      (*(v14 + 32))(v66, v12, v13);
      v34 = [objc_allocWithZone(type metadata accessor for SiriAudioSelfLogger()) init];
      sub_26646BE04(18, v33);

      (*(v14 + 8))(v33, v13);
    }
  }

  sub_2664B1B84();
  v35 = v79[15];
  v36 = v79[16];
  __swift_project_boxed_opaque_existential_1(v79 + 12, v35);
  v37 = (*(v36 + 16))(1006, v35, v36);
  sub_2664DE498();
  v38 = sub_2664DE458();
  v40 = v39;
  (*(v14 + 8))(v18, v13);
  v88 = v80;

  v41 = sub_2664E02A8();
  result = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
  v87 = result;
  *&v86 = v41;
  if (!*MEMORY[0x277D27CE8])
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_2664AAA78(&v86, *MEMORY[0x277D27CE8], &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  v43 = sub_2664E0648();
  result = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v87 = result;
  *&v86 = v43;
  v45 = v77;
  v44 = v78;
  v46 = v76;
  if (!*MEMORY[0x277D27CF8])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  sub_2664AAA78(&v86, *MEMORY[0x277D27CF8], &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v80 = v37;
  v47 = __swift_project_value_buffer(v44, qword_280F914F0);
  swift_beginAccess();
  (*(v45 + 16))(v46, v47, v44);

  v48 = sub_2664DFE18();
  v49 = sub_2664E06C8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&aBlock = v51;
    *v50 = 136315138;
    v52 = sub_2662A320C(v38, v40, &aBlock);

    *(v50 + 4) = v52;
    _os_log_impl(&dword_26629C000, v48, v49, "MediaPlaybackProvider#internalPlayLogic sending command to MR with ID: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);
  }

  else
  {
  }

  (*(v45 + 8))(v46, v44);
  v79 = [objc_allocWithZone(MEMORY[0x277D27828]) &off_279BCCB78];
  v53 = v88;
  sub_2663178D4(v88);
  v78 = sub_2664E01A8();

  v54 = v70;
  v55 = v68;
  v56 = v69;
  v57 = v71;
  (*(v70 + 16))(v68, v69, v71);
  v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v59 = (v67 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v80;
  *(v60 + 24) = v53;
  (*(v54 + 32))(v60 + v58, v55, v57);
  v61 = (v60 + v59);
  v62 = v74;
  *v61 = v72;
  v61[1] = v62;
  *(v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8)) = v73;
  v84 = sub_2664B6A70;
  v85 = v60;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v82 = sub_2663A0C48;
  v83 = &block_descriptor_273;
  v63 = _Block_copy(&aBlock);

  v65 = v78;
  v64 = v79;
  [v79 sendCommandWithResult:0 toDestination:v75 withOptions:v78 completion:v63];
  _Block_release(v63);

  return (*(v54 + 8))(v56, v57);
}

void sub_26648F610(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v110 = a6;
  v109 = a5;
  v104 = a4;
  v113 = a3;
  v10 = sub_2664DFD68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2664E0038();
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2664E00B8();
  v115 = *(v117 - 8);
  v17 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2664DE438();
  v102 = *(v103 - 8);
  v19 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2664DFE38();
  v125 = *(v21 - 8);
  v22 = v125[8];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v26);
  v124 = &v97 - v29;
  if (a2)
  {
    sub_26636B8D0();
  }

  v98 = v28;
  v99 = v25;
  v123 = v21;
  if (a1)
  {
    v30 = [a1 error];
    v31 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v122 = sub_2664E04A8();

    v32 = [a1 commandResult];
    v33 = [v32 resultStatuses];

    sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);
    v126 = sub_2664E04A8();

    v21 = v123;
    v120 = [a1 commandResult];
  }

  else
  {
    v120 = 0;
    v126 = 0;
    v122 = 0;
    v30 = 0;
  }

  v108 = sub_2664B2034();
  v107 = v34;
  v131 = MEMORY[0x277D84F90];
  v105 = 0xD000000000000018;
  v106 = 0x80000002664F3380;
  v35 = sub_2664E0D88();
  v36 = v124;
  if ((v35 & 1) == 0)
  {
    if (sub_2664B21A4(&v131))
    {
      sub_2664DFD98();
      v37 = sub_2664DFD48();
      v39 = v38;

      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v41 = v131;
        v42 = sub_2664DFD48();
        sub_2664B29E0(v41, v42, v43);

        (*(v11 + 8))(v14, v10);
      }

      else
      {
        (*(v11 + 8))(v14, v10);
      }

      v36 = v124;
    }

    else
    {
    }
  }

  v112 = a7;
  v121 = 0x80000002664FBA50;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v44 = __swift_project_value_buffer(v21, qword_280F914F0);
  swift_beginAccess();
  v45 = v125;
  v100 = v125[2];
  v100(v36, v44, v21);

  v46 = v122;

  v47 = sub_2664DFE18();
  v48 = sub_2664E06E8();

  v49 = os_log_type_enabled(v47, v48);
  v111 = v30;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    aBlock[0] = v97;
    *v50 = 136446978;
    *(v50 + 4) = sub_2662A320C(0xD00000000000001ALL, v121, aBlock);
    *(v50 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v50 + 14) = sub_2662A320C(qword_280072E18, unk_280072E20, aBlock);
    *(v50 + 22) = 2082;
    v51 = MEMORY[0x277D84F90];
    if (v46)
    {
      v52 = v46;
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    v53 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

    v54 = MEMORY[0x2667834D0](v52, v53);
    v56 = v55;

    v57 = sub_2662A320C(v54, v56, aBlock);

    *(v50 + 24) = v57;
    *(v50 + 32) = 2082;
    if (v126)
    {
      v58 = v126;
    }

    else
    {
      v58 = v51;
    }

    v59 = sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);

    v60 = MEMORY[0x2667834D0](v58, v59);
    v62 = v61;

    v63 = sub_2662A320C(v60, v62, aBlock);
    v46 = v122;

    *(v50 + 34) = v63;
    _os_log_impl(&dword_26629C000, v47, v48, "%{public}s %{public}s - Result codes: %{public}s, Extended status type: %{public}s", v50, 0x2Au);
    v64 = v97;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v64, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);

    v65 = v125[1];
    v21 = v123;
    v65(v124, v123);
  }

  else
  {

    v65 = v45[1];
    v65(v36, v21);
  }

  v66 = v110;
  v67 = v101;
  sub_2664DE428();
  sub_2664DE388();
  v69 = v68;
  (*(v102 + 8))(v67, v103);
  if (v69 >= 4.0)
  {
    v70 = v99;
    v100(v99, v44, v21);
    v71 = sub_2664DFE18();
    v79 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v80 = 136446722;
      v75 = v121;
      *(v80 + 4) = sub_2662A320C(0xD00000000000001ALL, v121, aBlock);
      *(v80 + 12) = 2082;
      v76 = v112;
      v77 = v106;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v80 + 14) = sub_2662A320C(qword_280072E18, unk_280072E20, aBlock);
      *(v80 + 22) = 2050;
      *(v80 + 24) = v69;
      _os_log_impl(&dword_26629C000, v71, v79, "%{public}s %{public}s completed in %{public}f seconds (logging at error for timing visibility)", v80, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v81, -1, -1);
      MEMORY[0x266784AD0](v80, -1, -1);

      v78 = v130;
      goto LABEL_37;
    }
  }

  else
  {
    v70 = v98;
    v100(v98, v44, v21);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06E8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      aBlock[0] = v74;
      *v73 = 136446722;
      v75 = v121;
      *(v73 + 4) = sub_2662A320C(0xD00000000000001ALL, v121, aBlock);
      *(v73 + 12) = 2082;
      v76 = v112;
      v77 = v106;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v73 + 14) = sub_2662A320C(qword_280072E18, unk_280072E20, aBlock);
      *(v73 + 22) = 2050;
      *(v73 + 24) = v69;
      _os_log_impl(&dword_26629C000, v71, v72, "%{public}s %{public}s completed in %{public}f seconds", v73, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v74, -1, -1);
      MEMORY[0x266784AD0](v73, -1, -1);

      v78 = &v129;
LABEL_37:
      v65(*(v78 - 32), v123);
      goto LABEL_39;
    }
  }

  v65(v70, v21);
  v76 = v112;
  v77 = v106;
  v75 = v121;
LABEL_39:
  v82 = swift_allocObject();
  *(v82 + 16) = 0xD00000000000001ALL;
  *(v82 + 24) = v75;
  v83 = v75;
  v84 = v105;
  *(v82 + 32) = v105;
  *(v82 + 40) = v77;
  v85 = v120;
  *(v82 + 48) = v76;
  *(v82 + 56) = v85;
  *(v82 + 64) = 2;
  *(v82 + 72) = v109;
  *(v82 + 80) = v66;
  v86 = v85;

  v87 = v111;
  sub_2664949C8(v84, v77, v111, v46, v85, 1, sub_2664B741C, v82);

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v88 = swift_allocObject();
  *(v88 + 16) = v76;
  *(v88 + 24) = v113;
  *(v88 + 32) = 0xD00000000000001ALL;
  *(v88 + 40) = v83;
  *(v88 + 48) = v84;
  *(v88 + 56) = v77;
  *(v88 + 64) = v87;
  v89 = v126;
  *(v88 + 72) = v46;
  *(v88 + 80) = v89;
  *(v88 + 88) = v85;
  *(v88 + 96) = "mediaPlaybackProviderStatusPlay";
  *(v88 + 104) = 31;
  *(v88 + 112) = 2;
  v90 = v107;
  *(v88 + 120) = v108;
  *(v88 + 128) = v90;
  v130[1] = sub_2664B7384;
  v130[2] = v88;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v129 = sub_2662A3F90;
  v130[0] = &block_descriptor_284;
  v91 = _Block_copy(aBlock);

  v125 = v86;

  v92 = v87;
  v93 = v114;
  sub_2664E0068();
  v127 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v94 = v87;
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v95 = v116;
  v96 = v119;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v93, v95, v91);
  _Block_release(v91);
  (*(v118 + 8))(v95, v96);
  (*(v115 + 8))(v93, v117);
}

void sub_266490554(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t a8)
{
  v153 = a8;
  v154 = a7;
  v156 = a6;
  v144 = sub_2664DFE08();
  v143 = *(v144 - 8);
  v13 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v138 = &v136 - v17;
  v140 = sub_2664DE4A8();
  v139 = *(v140 - 8);
  v18 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v137 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2664DFE38();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v136 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v141 = &v136 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v155 = &v136 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v136 - v29;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v20, qword_280F914F0);
  swift_beginAccess();
  v32 = *(v21 + 16);
  v150 = v21 + 16;
  v151 = v31;
  v149 = v32;
  v32(v30, v31, v20);
  v33 = a3;

  v34 = a5;
  v35 = v20;
  v36 = sub_2664DFE18();
  v37 = v21;
  v38 = sub_2664E06E8();
  v157 = v34;

  v39 = os_log_type_enabled(v36, v38);
  v152 = v37;
  if (v39)
  {
    v145 = v35;
    v146 = a1;
    v40 = a4;
    v147 = a2;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v159[0] = v148;
    *v41 = 136447234;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v41 + 4) = sub_2662A320C(qword_280072E18, qword_280072E20, v159);
    *(v41 + 12) = 2114;
    *(v41 + 14) = v33;
    *v42 = v33;
    *(v41 + 22) = 2082;
    type metadata accessor for CFString(0);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString);
    v43 = v33;
    v44 = sub_2664E01D8();
    v46 = sub_2662A320C(v44, v45, v159);

    *(v41 + 24) = v46;
    a4 = v40;
    *(v41 + 32) = 2114;
    v47 = v157;
    *(v41 + 34) = v157;
    v42[1] = v47;
    *(v41 + 42) = 1026;
    v48 = v47;
    v49 = [v43 shouldImmediatelyStartPlayback];

    *(v41 + 44) = v49;
    _os_log_impl(&dword_26629C000, v36, v38, "MediaPlaybackProvider#send %{public}s queue:%{public}@ options:%{public}s destination:%{public}@ immediatelyStart?:%{BOOL,public}d", v41, 0x30u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v42, -1, -1);
    v50 = v148;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v50, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);

    v51 = v145;
    v148 = *(v152 + 8);
    v148(v30, v145);
    v52 = v156;
    v53 = v146;
    v54 = v147;
  }

  else
  {

    v148 = *(v37 + 8);
    v148(v30, v35);
    v51 = v35;
    v53 = a1;
    v54 = a2;
    v52 = v156;
  }

  if ([v33 shouldImmediatelyStartPlayback])
  {
    v55 = [v157 outputDeviceUIDs];
    v56 = sub_2664E04A8();

    v57 = *(v56 + 16);

    if (!v57)
    {
      v149(v155, v151, v51);
      v58 = sub_2664DFE18();
      v59 = sub_2664E06E8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_26629C000, v58, v59, "MediaPlaybackProvider#send starting local playback immediately, preparing audio handoff...", v60, 2u);
        MEMORY[0x266784AD0](v60, -1, -1);
      }

      v148(v155, v51);
      if (qword_280071CD8 != -1)
      {
        swift_once();
      }

      sub_2664ABB34(nullsub_3, 0);
    }
  }

  v61 = v33;
  v155 = a4;
  swift_bridgeObjectRetain_n();
  v62 = v157;
  swift_retain_n();
  swift_retain_n();
  v63 = v61;
  v64 = v62;
  if ([v63 shouldImmediatelyStartPlayback])
  {
    goto LABEL_20;
  }

  v65 = v52[33];
  v66 = v52[34];
  __swift_project_boxed_opaque_existential_1(v52 + 30, v65);
  if ((*(v66 + 88))(v65, v66))
  {
    goto LABEL_20;
  }

  v67 = [v64 originatingOutputDeviceUID];
  v68 = sub_2664E02C8();
  v70 = v69;

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {
    goto LABEL_20;
  }

  v72 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v73 = sub_2664E02A8();
  v74 = [v72 initWithSuiteName_];

  if (v74)
  {
    v75 = sub_2664E02A8();
    v76 = [v74 stringForKey_];

    if (v76)
    {
      v77 = sub_2664E02C8();
      v79 = v78;

      v80 = HIBYTE(v79) & 0xF;
      v81 = v77 & 0xFFFFFFFFFFFFLL;
      if ((v79 & 0x2000000000000000) != 0)
      {
        v82 = HIBYTE(v79) & 0xF;
      }

      else
      {
        v82 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (!v82)
      {

        v85 = 499;
        goto LABEL_87;
      }

      if ((v79 & 0x1000000000000000) != 0)
      {
        v158 = 0;
        v85 = sub_26640687C(v77, v79, 10);
        v103 = v135;
LABEL_85:

        if ((v103 & 1) == 0)
        {
          if (v85 < 1)
          {
            v149(v136, v151, v51);
            v132 = sub_2664DFE18();
            v133 = sub_2664E06E8();
            if (os_log_type_enabled(v132, v133))
            {
              v134 = swift_slowAlloc();
              *v134 = 0;
              _os_log_impl(&dword_26629C000, v132, v133, "MediaPlaybackProvider#waitForTTSSynth not waiting for TTS synthesis since wait time is set to 0", v134, 2u);
              MEMORY[0x266784AD0](v134, -1, -1);
            }

            v148(v136, v51);
LABEL_20:
            sub_266491700(0, 0, v52, v53, v54, v155, v63, v64, v154 & 1, v153);

            swift_bridgeObjectRelease_n();

            return;
          }

          goto LABEL_87;
        }

        goto LABEL_86;
      }

      if ((v79 & 0x2000000000000000) != 0)
      {
        v159[0] = v77;
        v159[1] = v79 & 0xFFFFFFFFFFFFFFLL;
        if (v77 == 43)
        {
          if (v80)
          {
            if (--v80)
            {
              v85 = 0;
              v95 = v159 + 1;
              while (1)
              {
                v96 = *v95 - 48;
                if (v96 > 9)
                {
                  break;
                }

                v97 = 10 * v85;
                if ((v85 * 10) >> 64 != (10 * v85) >> 63)
                {
                  break;
                }

                v85 = v97 + v96;
                if (__OFADD__(v97, v96))
                {
                  break;
                }

                ++v95;
                if (!--v80)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_83;
          }

LABEL_110:
          __break(1u);
          return;
        }

        if (v77 != 45)
        {
          if (v80)
          {
            v85 = 0;
            v100 = v159;
            while (1)
            {
              v101 = *v100 - 48;
              if (v101 > 9)
              {
                break;
              }

              v102 = 10 * v85;
              if ((v85 * 10) >> 64 != (10 * v85) >> 63)
              {
                break;
              }

              v85 = v102 + v101;
              if (__OFADD__(v102, v101))
              {
                break;
              }

              v100 = (v100 + 1);
              if (!--v80)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }

        if (v80)
        {
          if (--v80)
          {
            v85 = 0;
            v89 = v159 + 1;
            while (1)
            {
              v90 = *v89 - 48;
              if (v90 > 9)
              {
                break;
              }

              v91 = 10 * v85;
              if ((v85 * 10) >> 64 != (10 * v85) >> 63)
              {
                break;
              }

              v85 = v91 - v90;
              if (__OFSUB__(v91, v90))
              {
                break;
              }

              ++v89;
              if (!--v80)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }
      }

      else
      {
        if ((v77 & 0x1000000000000000) != 0)
        {
          v83 = ((v79 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v83 = sub_2664E0B78();
        }

        v84 = *v83;
        if (v84 == 43)
        {
          if (v81 >= 1)
          {
            v80 = v81 - 1;
            if (v81 != 1)
            {
              v85 = 0;
              if (v83)
              {
                v92 = v83 + 1;
                while (1)
                {
                  v93 = *v92 - 48;
                  if (v93 > 9)
                  {
                    goto LABEL_83;
                  }

                  v94 = 10 * v85;
                  if ((v85 * 10) >> 64 != (10 * v85) >> 63)
                  {
                    goto LABEL_83;
                  }

                  v85 = v94 + v93;
                  if (__OFADD__(v94, v93))
                  {
                    goto LABEL_83;
                  }

                  ++v92;
                  if (!--v80)
                  {
                    goto LABEL_84;
                  }
                }
              }

              goto LABEL_75;
            }

            goto LABEL_83;
          }

          goto LABEL_109;
        }

        if (v84 != 45)
        {
          if (v81)
          {
            v85 = 0;
            if (v83)
            {
              while (1)
              {
                v98 = *v83 - 48;
                if (v98 > 9)
                {
                  goto LABEL_83;
                }

                v99 = 10 * v85;
                if ((v85 * 10) >> 64 != (10 * v85) >> 63)
                {
                  goto LABEL_83;
                }

                v85 = v99 + v98;
                if (__OFADD__(v99, v98))
                {
                  goto LABEL_83;
                }

                ++v83;
                if (!--v81)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_75;
          }

LABEL_83:
          v85 = 0;
          LOBYTE(v80) = 1;
          goto LABEL_84;
        }

        if (v81 >= 1)
        {
          v80 = v81 - 1;
          if (v81 != 1)
          {
            v85 = 0;
            if (v83)
            {
              v86 = v83 + 1;
              while (1)
              {
                v87 = *v86 - 48;
                if (v87 > 9)
                {
                  goto LABEL_83;
                }

                v88 = 10 * v85;
                if ((v85 * 10) >> 64 != (10 * v85) >> 63)
                {
                  goto LABEL_83;
                }

                v85 = v88 - v87;
                if (__OFSUB__(v88, v87))
                {
                  goto LABEL_83;
                }

                ++v86;
                if (!--v80)
                {
                  goto LABEL_84;
                }
              }
            }

LABEL_75:
            LOBYTE(v80) = 0;
LABEL_84:
            v158 = v80;
            v103 = v80;
            goto LABEL_85;
          }

          goto LABEL_83;
        }

        __break(1u);
      }

      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }
  }

LABEL_86:
  v85 = 499;
LABEL_87:
  v157 = v85;
  v145 = v51;
  v146 = v53;
  v147 = v54;
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v104 = qword_280F90B40;
  v105 = unk_280F90B48;
  v106 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v107 = *(v104 - 8);
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v106);
  v110 = &v136 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v107 + 16))(v110);
  (*(v105 + 16))(v104, v105);
  v112 = v111;
  (*(v107 + 8))(v110, v104);
  if (v112)
  {
    v113 = v138;
    sub_2664DE448();

    v114 = v139;
    v115 = v140;
    v116 = (*(v139 + 48))(v113, 1, v140);
    v117 = v145;
    v118 = v141;
    if (v116 == 1)
    {
      sub_2662A9238(v113, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      v120 = v137;
      (*(v114 + 32))(v137, v113, v115);
      v121 = [objc_allocWithZone(type metadata accessor for SiriAudioSelfLogger()) init];
      sub_26646BE04(1, v120);

      (*(v114 + 8))(v120, v115);
    }

    v119 = v147;
  }

  else
  {
    v119 = v147;
    v117 = v145;
    v118 = v141;
  }

  v149(v118, v151, v117);
  v122 = sub_2664DFE18();
  v123 = sub_2664E06E8();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 134349056;
    *(v124 + 4) = v157;
    _os_log_impl(&dword_26629C000, v122, v123, "MediaPlaybackProvider#waitForTTSSynth setQueue waiting for TTS synthesis completed notification with timeout: %{public}ldms", v124, 0xCu);
    MEMORY[0x266784AD0](v124, -1, -1);
  }

  v148(v118, v117);
  type metadata accessor for DarwinNotification();
  v125 = swift_allocObject();
  *(v125 + 16) = 0xD000000000000033;
  *(v125 + 24) = 0x80000002664FBB90;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v126 = qword_280F91D48;
  v127 = v142;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  v128 = v63;
  v129 = v155;

  v130 = v64;
  v131 = v156;

  sub_2664934E4(v125, v157, v131, v146, v119, v129, v128, v130, v154 & 1, v153);
  sub_2664E0838();
  sub_2664DFDD8();

  swift_bridgeObjectRelease_n();

  (*(v143 + 8))(v127, v144);
}

uint64_t sub_266491700(char a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v52 = a7;
  v53 = a8;
  v50 = a6;
  v46 = a4;
  v47 = a5;
  v54 = sub_2664DFE08();
  v51 = *(v54 - 8);
  v13 = *(v51 + 64);
  v14 = MEMORY[0x28223BE20](v54);
  v44 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v48 = &v41[-v15];
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v45 = a10;
  v21 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();
  v24 = os_log_type_enabled(v22, v23);
  v49 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v43 = v13;
    v26 = a3;
    v27 = v25;
    *v25 = 67240704;
    *(v25 + 4) = a1 & 1;
    *(v25 + 8) = 1026;
    v42 = a2;
    v28 = v26[33];
    v29 = v26[34];
    __swift_project_boxed_opaque_existential_1(v26 + 30, v28);
    *(v27 + 10) = (*(v29 + 88))(v28, v29) & 1;
    v13 = v43;

    *(v27 + 14) = 1026;
    *(v27 + 16) = v42 & 1;
    _os_log_impl(&dword_26629C000, v22, v23, "MediaPlaybackProvider#send setQueue starting... waited for TTS darwin notification: %{BOOL,public}d, featureFlags.skipWaitingForTTSSynthesis: %{BOOL,public}d, received notification: %{BOOL,public}d", v27, 0x14u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  else
  {
  }

  LODWORD(v43) = a9;
  (*(v17 + 8))(v20, v16);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v30 = qword_280F91D48;
  v31 = v48;
  sub_2664DFDE8();
  v32 = v51;
  v33 = v44;
  v34 = v54;
  (*(v51 + 16))(v44, v31, v54);
  v35 = (*(v32 + 80) + 33) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = "mediaPlaybackProviderCommandSendQueue";
  *(v36 + 24) = 37;
  *(v36 + 32) = 2;
  (*(v32 + 32))(v36 + v35, v33, v34);
  v37 = (v36 + ((v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  v38 = v47;
  *v37 = v46;
  v37[1] = v38;

  sub_2664E0848();
  sub_2664DFDC8();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2664B7414;
  *(v39 + 24) = v36;

  sub_266491BE0(sub_2664B7418, v39, v49, v50, v52, v53, v43 & 1, v45);

  return (*(v32 + 8))(v31, v34);
}

uint64_t sub_266491BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8)
{
  v78 = a8;
  v76 = a7;
  v81 = a6;
  v79 = a5;
  v86 = a4;
  v90 = a3;
  v80 = a2;
  v75 = a1;
  v84 = sub_2664DFE38();
  v83 = *(v84 - 1);
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v74 - v12;
  v85 = sub_2664DE4A8();
  v14 = *(v85 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v85);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v77 = sub_2664DE438();
  v89 = *(v77 - 8);
  v21 = *(v89 + 64);
  v22 = MEMORY[0x28223BE20](v77);
  v87 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v23;
  MEMORY[0x28223BE20](v22);
  v88 = &v74 - v24;
  sub_2664DE428();
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_280F90B40;
  v26 = unk_280F90B48;
  v27 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v28 = *(v25 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31);
  (*(v26 + 16))(v25, v26);
  v33 = v32;
  (*(v28 + 8))(v31, v25);
  if (v33)
  {
    sub_2664DE448();

    v34 = v85;
    if ((*(v14 + 48))(v13, 1, v85) == 1)
    {
      sub_2662A9238(v13, &qword_280073C60, &unk_2664EE400);
    }

    else
    {
      (*(v14 + 32))(v20, v13, v34);
      v35 = type metadata accessor for SiriAudioSelfLogger();
      v36 = [objc_allocWithZone(v35) init];
      sub_26646EAE8(v20);

      v37 = [objc_allocWithZone(v35) init];
      sub_26646BE04(2, v20);

      (*(v14 + 8))(v20, v34);
    }
  }

  else
  {
    v34 = v85;
  }

  v85 = mach_absolute_time();
  v38 = v90[15];
  v39 = v90[16];
  __swift_project_boxed_opaque_existential_1(v90 + 12, v38);
  v40 = (*(v39 + 16))(1005, v38, v39);
  sub_2664DE498();
  v41 = sub_2664DE458();
  v43 = v42;
  (*(v14 + 8))(v18, v34);
  v98 = v86;

  v44 = sub_2664E02A8();
  result = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
  v97 = result;
  *&v96 = v44;
  if (!*MEMORY[0x277D27CE8])
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_2664AAA78(&v96, *MEMORY[0x277D27CE8], &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  v46 = sub_2664E0648();
  result = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v97 = result;
  *&v96 = v46;
  v47 = *MEMORY[0x277D27CF8];
  v48 = v84;
  v49 = v83;
  v50 = v82;
  if (!*MEMORY[0x277D27CF8])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v86 = v40;
  sub_2664AAA78(&v96, v47, &aBlock);
  sub_2662A9238(&aBlock, &unk_280074250, &unk_2664E3680);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v48, qword_280F914F0);
  swift_beginAccess();
  (*(v49 + 16))(v50, v51, v48);

  v52 = sub_2664DFE18();
  v53 = sub_2664E06C8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&aBlock = v55;
    *v54 = 136315138;
    v56 = sub_2662A320C(v41, v43, &aBlock);

    *(v54 + 4) = v56;
    _os_log_impl(&dword_26629C000, v52, v53, "MediaPlaybackProvider#send sending command to MR with ID: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);
  }

  else
  {
  }

  (*(v49 + 8))(v50, v48);
  v84 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  v82 = v98;
  sub_2663178D4(v98);
  v83 = sub_2664E01A8();

  v57 = v89;
  v58 = v77;
  (*(v89 + 16))(v87, v88, v77);
  v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v60 = v59 + v74;
  v61 = (((v59 + v74) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v65 = v87;
  v66 = v82;
  *(v64 + 16) = v86;
  *(v64 + 24) = v66;
  (*(v57 + 32))(v64 + v59, v65, v58);
  *(v64 + v60) = v76 & 1;
  v67 = v79;
  *(v64 + (v60 & 0xFFFFFFFFFFFFFFF8) + 8) = v79;
  v68 = (v64 + v61);
  v69 = v80;
  *v68 = v75;
  v68[1] = v69;
  *(v64 + v62) = v90;
  *(v64 + v63) = v85;
  *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v94 = sub_2664B6BD8;
  v95 = v64;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v92 = sub_2663A0C48;
  v93 = &block_descriptor_354;
  v70 = _Block_copy(&aBlock);

  v71 = v67;

  v72 = v84;
  v73 = v83;
  [v84 sendPlaybackQueueWithResult:v71 toDestination:v81 withOptions:v83 completion:v70];
  _Block_release(v70);

  return (*(v89 + 8))(v88, v58);
}

void sub_2664925C0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v112 = a8;
  v111 = a7;
  LODWORD(v122) = a5;
  v106 = a4;
  v113 = a3;
  v123 = sub_2664DFD68();
  v14 = *(v123 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v123);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664E0038();
  v118 = *(v18 - 8);
  v119 = v18;
  v19 = *(v118 + 64);
  MEMORY[0x28223BE20](v18);
  v116 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2664E00B8();
  v115 = *(v117 - 8);
  v21 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2664DE438();
  v103 = *(v104 - 8);
  v23 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2664DFE38();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v99 = &v96 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v96 - v33;
  if (a2)
  {
    sub_26636B8D0();
  }

  v121 = v34;
  v124 = v26;
  if (a1)
  {
    v120 = [a1 error];
    v35 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v36 = v30;
    v37 = v25;
    v38 = sub_2664E04A8();

    v39 = [a1 commandResult];
    v40 = [v39 resultStatuses];

    sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);
    v125 = sub_2664E04A8();

    v41 = v38;
    v25 = v37;
    v30 = v36;
    a1 = [a1 commandResult];
  }

  else
  {
    v125 = 0;
    v41 = 0;
    v120 = 0;
  }

  v107 = [a6 shouldImmediatelyStartPlayback];
  v109 = sub_2664B2034();
  v108 = v42;
  v128 = MEMORY[0x277D84F90];
  if ((sub_2664E0D88() & 1) == 0)
  {
    if (sub_2664B21A4(&v128))
    {
      sub_2664DFD98();
      v43 = sub_2664DFD48();
      v45 = v44;

      v46 = HIBYTE(v45) & 0xF;
      if ((v45 & 0x2000000000000000) == 0)
      {
        v46 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        v47 = v128;
        v48 = sub_2664DFD48();
        sub_2664B29E0(v47, v48, v49);

        (*(v14 + 8))(v17, v123);
        goto LABEL_14;
      }

      (*(v14 + 8))(v17, v123);
    }
  }

LABEL_14:
  v110 = a1;
  v123 = 0x80000002664FBC60;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v105 = v122 & 1;
  v50 = __swift_project_value_buffer(v25, qword_280F914F0);
  swift_beginAccess();
  v51 = v124;
  v52 = v124[2];
  v53 = v121;
  v101 = v50;
  v100 = v52;
  v52(v121, v50, v25);

  v54 = sub_2664DFE18();
  v55 = v41;
  v56 = sub_2664E06E8();

  v122 = v55;

  if (os_log_type_enabled(v54, v56))
  {
    v96 = v30;
    v97 = 0x80000002664F3360;
    v98 = v25;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136446978;
    *(v57 + 4) = sub_2662A320C(0xD00000000000001ALL, v123, aBlock);
    *(v57 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v57 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
    *(v57 + 22) = 2082;
    if (v122)
    {
      v59 = v122;
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v60 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

    v61 = MEMORY[0x2667834D0](v59, v60);
    v63 = v62;

    v64 = sub_2662A320C(v61, v63, aBlock);

    *(v57 + 24) = v64;
    *(v57 + 32) = 2082;
    if (v125)
    {
      v65 = v125;
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
    }

    v66 = sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);

    v67 = MEMORY[0x2667834D0](v65, v66);
    v69 = v68;

    v70 = sub_2662A320C(v67, v69, aBlock);

    *(v57 + 34) = v70;
    _os_log_impl(&dword_26629C000, v54, v56, "%{public}s %{public}s - Result codes: %{public}s, Extended status type: %{public}s", v57, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v58, -1, -1);
    MEMORY[0x266784AD0](v57, -1, -1);

    v71 = v124[1];
    v25 = v98;
    v71(v121, v98);
    v72 = v97;
    v30 = v96;
  }

  else
  {

    v71 = v51[1];
    v71(v53, v25);
    v72 = 0x80000002664F3360;
  }

  v73 = v102;
  sub_2664DE428();
  sub_2664DE388();
  v75 = v74;
  (*(v103 + 8))(v73, v104);
  if (v75 >= 4.0)
  {
    v100(v30, v101, v25);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06D8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v78 = 136446722;
      *(v78 + 4) = sub_2662A320C(0xD00000000000001ALL, v123, aBlock);
      *(v78 + 12) = 2082;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v78 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v78 + 22) = 2050;
      *(v78 + 24) = v75;
      v80 = "%{public}s %{public}s completed in %{public}f seconds (logging at error for timing visibility)";
      goto LABEL_36;
    }
  }

  else
  {
    v30 = v99;
    v100(v99, v101, v25);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06E8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      aBlock[0] = v79;
      *v78 = 136446722;
      *(v78 + 4) = sub_2662A320C(0xD00000000000001ALL, v123, aBlock);
      *(v78 + 12) = 2082;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v78 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, aBlock);
      *(v78 + 22) = 2050;
      *(v78 + 24) = v75;
      v80 = "%{public}s %{public}s completed in %{public}f seconds";
LABEL_36:
      _os_log_impl(&dword_26629C000, v76, v77, v80, v78, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v79, -1, -1);
      MEMORY[0x266784AD0](v78, -1, -1);

      v71(v30, v25);
      v81 = v122;
      v82 = v123;
      v83 = v120;
      goto LABEL_38;
    }
  }

  v71(v30, v25);
  v83 = v120;
  v81 = v122;
  v82 = v123;
LABEL_38:
  v84 = swift_allocObject();
  *(v84 + 16) = 0xD00000000000001ALL;
  *(v84 + 24) = v82;
  *(v84 + 32) = 0xD00000000000001DLL;
  *(v84 + 40) = v72;
  v85 = v72;
  v86 = v110;
  *(v84 + 48) = a11;
  *(v84 + 56) = v86;
  *(v84 + 64) = v105;
  v87 = v112;
  *(v84 + 72) = v111;
  *(v84 + 80) = v87;
  v124 = v86;

  sub_2664949C8(0xD00000000000001DLL, v85, v83, v81, v86, v107, sub_2664B741C, v84);

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v88 = swift_allocObject();
  v89 = v113;
  *(v88 + 16) = a11;
  *(v88 + 24) = v89;
  *(v88 + 32) = 0xD00000000000001ALL;
  *(v88 + 40) = v82;
  *(v88 + 48) = 0xD00000000000001DLL;
  *(v88 + 56) = v85;
  *(v88 + 64) = v83;
  *(v88 + 72) = v81;
  *(v88 + 80) = v125;
  *(v88 + 88) = v86;
  *(v88 + 96) = "mediaPlaybackProviderStatusSendQueue";
  *(v88 + 104) = 36;
  *(v88 + 112) = 2;
  v90 = v108;
  *(v88 + 120) = v109;
  *(v88 + 128) = v90;
  aBlock[4] = sub_2664B7384;
  aBlock[5] = v88;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_365;
  v91 = _Block_copy(aBlock);

  v124 = v124;

  v92 = v83;
  v93 = v114;
  sub_2664E0068();
  v126 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v94 = v116;
  v95 = v119;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v93, v94, v91);
  _Block_release(v91);
  (*(v118 + 8))(v94, v95);
  (*(v115 + 8))(v93, v117);
}

uint64_t sub_2664934E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, unsigned __int8 a9, uint64_t a10)
{
  v35 = a4;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_266425254(a2);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = a10;
  v33 = a9;
  v21 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = a8;
    v25 = a7;
    v26 = a6;
    v27 = a5;
    v28 = a3;
    v29 = v24;
    *v24 = 67109120;
    *(v24 + 4) = v36 & 1;
    _os_log_impl(&dword_26629C000, v22, v23, "MediaPlaybackProvider#waitForTTSSynth setQueue done waiting on TTS synthesis, receivedNotification = %{BOOL}d", v24, 8u);
    v30 = v29;
    a3 = v28;
    a5 = v27;
    a6 = v26;
    a7 = v25;
    a8 = v32;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v17 + 8))(v20, v16);
  sub_266491700(1, v36 & 1, a3, v35, a5, a6, a7, a8, v33 & 1, v34);
}

uint64_t sub_26649377C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v31 = v5[2];
  v31(v11, v12, v4);
  v13 = a1;
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = v9;
    v19 = v18;
    *v17 = 138543362;
    *(v17 + 4) = v13;
    *v18 = v13;
    v20 = v13;
    _os_log_impl(&dword_26629C000, v14, v15, "MediaPlaybackProvider#hasItems for query: %{public}@", v17, 0xCu);
    sub_2662A9238(v19, &qword_2800734B0, &unk_2664E3670);
    v21 = v19;
    v9 = v29;
    MEMORY[0x266784AD0](v21, -1, -1);
    v22 = v17;
    a2 = v30;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v5[1];
  v23(v11, v4);
  v24 = [v13 _hasItems];
  v31(v9, v12, v4);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67240192;
    *(v27 + 4) = v24;
    _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackProvider#hasItems: %{BOOL,public}d", v27, 8u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  result = (v23)(v9, v4);
  *a2 = v24;
  return result;
}

uint64_t sub_266493A88@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v12 = v5[2];
  v12(v10, v11, v4);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a1;
    v16 = a2;
    v17 = v15;
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "MediaPlaybackProvider#hasSongs for library", v15, 2u);
    v18 = v17;
    a2 = v16;
    a1 = v26;
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  v19 = v5[1];
  v19(v10, v4);
  v20 = [a1 hasSongs];
  v12(v27, v11, v4);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06C8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v20;
    _os_log_impl(&dword_26629C000, v21, v22, "MediaPlaybackProvider#hasSongs: %{BOOL}d", v23, 8u);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  result = (v19)(v27, v4);
  *a2 = v20;
  return result;
}

void sub_266493D38(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v25 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v26 = 0xD000000000000012;
  v27 = 0x80000002664F5C10;
  MEMORY[0x2667833B0](v10, v11);
  v13 = v26;
  v12 = v27;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v14, v5);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = a3;
    v19 = v18;
    v28 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2662A320C(v13, v12, &v28);
    _os_log_impl(&dword_26629C000, v15, v16, "Transformed playback identifier to spotlight identifier: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v20 = v19;
    a3 = v24;
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v21 = sub_2664E02A8();

  v22 = [v25 entityWithSpotlightIdentifier_];

  if (v22)
  {
    v23 = [v22 representativeItem];
  }

  else
  {
    v23 = 0;
  }

  *a3 = v23;
}

uint64_t sub_266493FF8(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v25 = a2;
  v24 = a1;
  v23 = *v4;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "mediaPlaybackProviderSetRepeatMode";
  *(v15 + 24) = 34;
  *(v15 + 32) = 2;
  (*(v6 + 32))(v15 + v13, v9, v5);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;

  sub_2664E0848();
  sub_2664DFDC8();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2664B7414;
  *(v18 + 24) = v15;

  sub_2664942B8(sub_2664B7418, v18, v24, v25, v23);

  return (*(v6 + 8))(v11, v5);
}

void sub_2664942B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FF0, &qword_2664EF710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  v15 = *MEMORY[0x277D27DC8];
  *(inited + 32) = *MEMORY[0x277D27DC8];
  v16 = MEMORY[0x277D849A8];
  *(inited + 40) = a3;
  v17 = *MEMORY[0x277D27DC0];
  *(inited + 64) = v16;
  *(inited + 72) = v17;
  *(inited + 104) = MEMORY[0x277D837D0];
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000002664FBDB0;
  v18 = v17;
  v19 = v15;
  v20 = sub_2663868A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F88, &qword_2664E90A0);
  swift_arrayDestroy();

  v21 = sub_266317B9C(a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v20;
  sub_2664B337C(v21, sub_2664AA408, 0, isUniquelyReferenced_nonNull_native, aBlock);
  v51 = a1;

  v23 = [objc_opt_self() nowPlayingApplicationDestination];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v24, v9);
  v25 = v23;
  v26 = v9;
  v27 = v25;
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v49 = a5;
    v31 = v30;
    v32 = swift_slowAlloc();
    v47 = v13;
    v48 = v26;
    v33 = v32;
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v31 = 67240706;
    *(v31 + 4) = a3;
    *(v31 + 8) = 2112;
    *(v31 + 10) = v27;
    *v33 = v27;
    *(v31 + 18) = 2080;
    v35 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    sub_2664B7080();
    v36 = sub_2664E01D8();
    v38 = v37;

    v39 = sub_2662A320C(v36, v38, aBlock);

    *(v31 + 20) = v39;
    _os_log_impl(&dword_26629C000, v28, v29, "MediaPlaybackProvider#setRepeatMode sending mode:%{public}d to destination: %@ with options: %s", v31, 0x1Cu);
    sub_2662A9238(v33, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    v40 = v31;
    a5 = v49;
    MEMORY[0x266784AD0](v40, -1, -1);

    (*(v10 + 8))(v47, v48);
  }

  else
  {

    (*(v10 + 8))(v13, v26);
  }

  v41 = [objc_allocWithZone(MEMORY[0x277D27828]) init];

  sub_266318040(v42);

  v43 = sub_2664E01A8();

  v44 = swift_allocObject();
  v45 = v50;
  v44[2] = v51;
  v44[3] = v45;
  v44[4] = a5;
  aBlock[4] = sub_2664B7074;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663A0C48;
  aBlock[3] = &block_descriptor_411;
  v46 = _Block_copy(aBlock);

  [v41 sendCommandWithResult:25 toDestination:v27 withOptions:v43 completion:v46];
  _Block_release(v46);
}

void sub_2664948A0(void *a1, void (*a2)(uint8_t **), uint64_t a3)
{
  if (a1)
  {
    v6 = [a1 error];
    v7 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v8 = sub_2664E04A8();

    v9 = [a1 commandResult];
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v6 = 0;
  }

  sub_2664949C8(0xD000000000000024, 0x80000002664FB250, v6, v8, v9, 0, a2, a3);
}

void sub_2664949C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), int a6, void (*a7)(uint8_t **), uint64_t a8)
{
  v886 = a8;
  v887 = a7;
  v839 = a6;
  v878 = a5;
  v884 = a4;
  v890 = a2;
  v888 = a1;
  v876 = sub_2664DFD68();
  v877 = *(v876 - 8);
  v9 = *(v877 + 8);
  v10 = MEMORY[0x28223BE20](v876);
  v837 = &v822 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v838 = &v822 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v836 = &v822 - v15;
  MEMORY[0x28223BE20](v14);
  v885 = &v822 - v16;
  v17 = sub_2664DFE38();
  v889 = *(v17 - 8);
  v18 = v889[8];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v822 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v822 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v822 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v822 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v822 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v822 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v38 = MEMORY[0x28223BE20](v37);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](&v822 - v41);
  v43 = MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](v43);
  v45 = MEMORY[0x28223BE20](v44);
  v46 = MEMORY[0x28223BE20](v45);
  v840 = &v822 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v49 = MEMORY[0x28223BE20](v48);
  v841 = &v822 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v52 = MEMORY[0x28223BE20](v51);
  v842 = &v822 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v844 = &v822 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v843 = &v822 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v846 = &v822 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v845 = &v822 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v848 = &v822 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v847 = &v822 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v850 = &v822 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v849 = &v822 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v854 = &v822 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v851 = &v822 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v855 = &v822 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v852 = &v822 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v853 = &v822 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v856 = &v822 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v857 = &v822 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v858 = &v822 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v859 = &v822 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v860 = &v822 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v861 = &v822 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v863 = &v822 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v862 = &v822 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v864 = &v822 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v865 = &v822 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v866 = &v822 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v867 = &v822 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v868 = &v822 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v869 = &v822 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v870 = &v822 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v871 = &v822 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v872 = &v822 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v873 = &v822 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v874 = &v822 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v875 = (&v822 - v119);
  v120 = MEMORY[0x28223BE20](v118);
  v122 = (&v822 - v121);
  v123 = MEMORY[0x28223BE20](v120);
  v883 = &v822 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v137 = &v822 - v136;
  if (a3)
  {
    v835 = v122;
    v830 = v132;
    v834 = v131;
    v828 = v130;
    v833 = v129;
    v825 = v128;
    v832 = v127;
    v831 = v126;
    v829 = v125;
    v826 = v135;
    v827 = v134;
    v824 = v133;
    v138 = sub_2664DE198();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v139 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v140 = v889;
    v141 = v889[2];
    v880 = v139;
    v882 = v889 + 2;
    v881 = v141;
    v141(v137, v139, v17);
    v142 = v138;
    v143 = v890;
    swift_bridgeObjectRetain_n();
    v144 = v142;
    v145 = sub_2664DFE18();
    v146 = sub_2664E06E8();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v823 = swift_slowAlloc();
      v895 = v823;
      *v147 = 136446722;

      v148 = sub_2662A320C(v888, v143, &v895);

      *(v147 + 4) = v148;
      swift_bridgeObjectRelease_n();
      *(v147 + 12) = 2082;
      v149 = [v144 domain];
      v150 = sub_2664E02C8();
      v151 = v140;
      v152 = v17;
      v154 = v153;

      v155 = sub_2662A320C(v150, v154, &v895);
      v17 = v152;
      v140 = v151;
      v143 = v890;

      *(v147 + 14) = v155;

      *(v147 + 22) = 2050;
      v156 = [v144 code];

      *(v147 + 24) = v156;
      _os_log_impl(&dword_26629C000, v145, v146, "MediaPlaybackProvider#readStatus MPCAssistantCommand received NSError (possibly informational) for: '%{public}s' - domain: %{public}s, code: %{public}ld...", v147, 0x20u);
      v157 = v823;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v157, -1, -1);
      MEMORY[0x266784AD0](v147, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v181 = v140[1];
    v181(v137, v17);
    v182 = v144;
    v183 = sub_2664DE198();

    IsInformational = MPCAssistantErrorIsInformational();
    if (IsInformational)
    {
      v185 = v883;
      v881(v883, v880, v17);
      v186 = v182;
      swift_bridgeObjectRetain_n();
      v187 = v186;
      v188 = sub_2664DFE18();
      v189 = sub_2664E06E8();
      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v879 = v17;
        v192 = v191;
        v895 = v191;
        *v190 = 136446722;

        v193 = sub_2662A320C(v888, v143, &v895);

        *(v190 + 4) = v193;
        swift_bridgeObjectRelease_n();
        *(v190 + 12) = 2082;
        v194 = [v187 domain];
        v195 = sub_2664E02C8();
        v196 = v181;
        v198 = v197;

        v199 = sub_2662A320C(v195, v198, &v895);

        *(v190 + 14) = v199;

        *(v190 + 22) = 2050;
        v200 = [v187 code];

        *(v190 + 24) = v200;
        _os_log_impl(&dword_26629C000, v188, v189, "MediaPlaybackProvider#readStatus MPCAssistantCommand received error that is informational only for: '%{public}s' - domain: %{public}s, code: %{public}ld - completed successfully", v190, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v192, -1, -1);
        MEMORY[0x266784AD0](v190, -1, -1);

        v196(v883, v879);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v181(v185, v17);
      }

      v895 = 0;
      v896 = 0uLL;
      v887(&v895);

      return;
    }

    v201 = v182;
    sub_2664DFD98();

    v202 = sub_2664DFD48();
    sub_26649D3A4(v202, v203, v888, v143, &v895);

    v204 = v895;
    v205 = [v201 domain];
    v206 = sub_2664E02C8();
    if (!*MEMORY[0x277D27AE0])
    {
      __break(1u);
      goto LABEL_279;
    }

    v208 = v206;
    v209 = v207;

    if (v208 == sub_2664E02C8() && v209 == v210)
    {
    }

    else
    {
      v211 = sub_2664E0D88();

      if ((v211 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    if ([v201 code]>= 200 && [v201 code]<= 298)
    {
      v212 = v835;
      v881(v835, v880, v17);
      v213 = v201;
      swift_bridgeObjectRetain_n();
      v214 = v213;
      v215 = sub_2664DFE18();
      v216 = sub_2664E06E8();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = v181;
        v218 = v17;
        v219 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        v895 = v220;
        *v219 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v221 = qword_280072E18;
        v222 = unk_280072E20;

        v223 = sub_2662A320C(v221, v222, &v895);

        *(v219 + 4) = v223;
        *(v219 + 12) = 2082;
        v224 = v890;

        v225 = sub_2662A320C(v888, v224, &v895);

        *(v219 + 14) = v225;
        swift_bridgeObjectRelease_n();
        *(v219 + 22) = 2082;
        v226 = [v214 localizedDescription];
        v227 = sub_2664E02C8();
        v229 = v228;

        v230 = sub_2662A320C(v227, v229, &v895);

        *(v219 + 24) = v230;

        *(v219 + 32) = 2050;
        v231 = [v214 code];

        *(v219 + 34) = v231;
        _os_log_impl(&dword_26629C000, v215, v216, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Informational Error: %{public}s informational code: %{public}ld", v219, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v220, -1, -1);
        MEMORY[0x266784AD0](v219, -1, -1);

        v217(v835, v218);
        goto LABEL_81;
      }

      swift_bridgeObjectRelease_n();
      v257 = v212;
      v258 = v17;
LABEL_80:
      v181(v257, v258);
LABEL_81:
      v895 = 0;
      v896 = 0uLL;
      v887(&v895);

LABEL_145:
      (*(v877 + 1))(v885, v876);
      return;
    }

LABEL_30:
    v879 = v17;
    v232 = [v201 domain];
    v233 = sub_2664E02C8();
    v235 = v234;

    v236 = *MEMORY[0x277D277F0];
    if (v233 == sub_2664E02C8() && v235 == v237)
    {
    }

    else
    {
      v238 = sub_2664E0D88();

      if ((v238 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if ([v201 code]== 6 || [v201 code]== 7)
    {
      v239 = v875;
      v240 = v879;
      v881(v875, v880, v879);
      v241 = v201;
      v242 = v890;
      swift_bridgeObjectRetain_n();
      v214 = v241;
      v243 = sub_2664DFE18();
      v244 = sub_2664E06E8();
      if (os_log_type_enabled(v243, v244))
      {
        v245 = swift_slowAlloc();
        v246 = swift_slowAlloc();
        v895 = v246;
        *v245 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v247 = qword_280072E18;
        v248 = unk_280072E20;

        v249 = sub_2662A320C(v247, v248, &v895);

        *(v245 + 4) = v249;
        *(v245 + 12) = 2082;

        v250 = sub_2662A320C(v888, v242, &v895);

        *(v245 + 14) = v250;
        swift_bridgeObjectRelease_n();
        *(v245 + 22) = 2082;
        v251 = [v214 localizedDescription];
        v252 = sub_2664E02C8();
        v254 = v253;

        v255 = sub_2662A320C(v252, v254, &v895);

        *(v245 + 24) = v255;

        *(v245 + 32) = 2050;
        v256 = [v214 &off_279BCCC78];

        *(v245 + 34) = v256;
        _os_log_impl(&dword_26629C000, v243, v244, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for WHA hijacking Primary: '%{public}s' - Informational Error: %{public}s informational code: %{public}ld", v245, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v246, -1, -1);
        MEMORY[0x266784AD0](v245, -1, -1);

        v257 = v875;
        v258 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v257 = v239;
        v258 = v240;
      }

      goto LABEL_80;
    }

LABEL_47:
    v272 = [v201 code];
    v273 = v879;
    if (v272 == 14)
    {
      v884 = v181;
      v274 = v874;
      v881(v874, v880, v879);
      v275 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v275;
      v277 = sub_2664DFE18();
      v278 = v273;
      v279 = sub_2664E06E8();
      if (os_log_type_enabled(v277, v279))
      {
        v280 = swift_slowAlloc();
        v281 = swift_slowAlloc();
        v895 = v281;
        *v280 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v282 = qword_280072E18;
        v283 = unk_280072E20;

        v284 = sub_2662A320C(v282, v283, &v895);

        *(v280 + 4) = v284;
        *(v280 + 12) = 2082;
        v285 = v890;

        v286 = sub_2662A320C(v888, v285, &v895);

        *(v280 + 14) = v286;
        swift_bridgeObjectRelease_n();
        *(v280 + 22) = 2082;
        v287 = [v276 localizedDescription];
        v288 = sub_2664E02C8();
        v290 = v289;

        v291 = sub_2662A320C(v288, v290, &v895);

        *(v280 + 24) = v291;

        *(v280 + 32) = 2050;
        v292 = [v276 &off_279BCCC78];

        *(v280 + 34) = v292;
        _os_log_impl(&dword_26629C000, v277, v279, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - CouldNotDiscoverClusterLeader Error: %{public}s CouldNotDiscoverClusterLeader code: %{public}ld", v280, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v281, -1, -1);
        MEMORY[0x266784AD0](v280, -1, -1);

        v293 = v874;
        v278 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v293 = v274;
      }

      (v884)(v293, v278);
      v347 = 0x80000002664FB4F0;
      v348 = v873;
      v881(v873, v880, v278);
      v349 = sub_2664DFE18();
      v350 = sub_2664E06B8();
      v351 = os_log_type_enabled(v349, v350);
      v352 = v887;
      if (v351)
      {
        v353 = v348;
        v354 = swift_slowAlloc();
        v355 = swift_slowAlloc();
        v895 = v355;
        *v354 = 134218498;
        *(v354 + 4) = v204;
        *(v354 + 12) = 2048;
        *(v354 + 14) = 49;
        *(v354 + 22) = 2080;
        *(v354 + 24) = sub_2662A320C(0xD00000000000001ALL, 0x80000002664FB4F0, &v895);
        _os_log_impl(&dword_26629C000, v349, v350, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v354, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v355);
        MEMORY[0x266784AD0](v355, -1, -1);
        MEMORY[0x266784AD0](v354, -1, -1);

        v356 = v353;
        v357 = v879;
      }

      else
      {

        v356 = v348;
        v357 = v278;
      }

      (v884)(v356, v357);
      v376 = (v204 << 8) | 0x32;
      v377 = 0xD00000000000001ALL;
      goto LABEL_142;
    }

    if ([v201 code]== 17)
    {
      v308 = v872;
      v881(v872, v880, v273);
      v309 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v309;
      v310 = sub_2664DFE18();
      v311 = sub_2664E06E8();
      if (os_log_type_enabled(v310, v311))
      {
        v312 = swift_slowAlloc();
        v313 = swift_slowAlloc();
        v895 = v313;
        *v312 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v314 = qword_280072E18;
        v315 = unk_280072E20;

        v316 = sub_2662A320C(v314, v315, &v895);

        *(v312 + 4) = v316;
        *(v312 + 12) = 2082;
        v317 = v890;

        v318 = sub_2662A320C(v888, v317, &v895);

        *(v312 + 14) = v318;
        swift_bridgeObjectRelease_n();
        *(v312 + 22) = 2082;
        v319 = [v276 localizedDescription];
        v320 = sub_2664E02C8();
        v322 = v321;

        v323 = sub_2662A320C(v320, v322, &v895);

        *(v312 + 24) = v323;

        *(v312 + 32) = 2050;
        v324 = [v276 code];

        *(v312 + 34) = v324;
        _os_log_impl(&dword_26629C000, v310, v311, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - TimedOutWaitingForCanBeNowPlaying Error: %{public}s TimedOutWaitingForCanBeNowPlaying code: %{public}ld", v312, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v313, -1, -1);
        MEMORY[0x266784AD0](v312, -1, -1);

        v325 = v872;
        v273 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v325 = v308;
      }

      v181(v325, v273);
      v347 = 0x80000002664F3B80;
      v386 = v871;
      v881(v871, v880, v273);
      v387 = sub_2664DFE18();
      v388 = sub_2664E06B8();
      v389 = os_log_type_enabled(v387, v388);
      v352 = v887;
      if (v389)
      {
        v390 = swift_slowAlloc();
        v884 = v181;
        v391 = v390;
        v392 = swift_slowAlloc();
        v895 = v392;
        *v391 = 134218498;
        *(v391 + 4) = v204;
        *(v391 + 12) = 2048;
        *(v391 + 14) = 50;
        *(v391 + 22) = 2080;
        *(v391 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3B80, &v895);
        _os_log_impl(&dword_26629C000, v387, v388, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v391, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v392);
        MEMORY[0x266784AD0](v392, -1, -1);
        MEMORY[0x266784AD0](v391, -1, -1);

        (v884)(v386, v879);
      }

      else
      {

        v181(v386, v273);
      }

      v376 = (v204 << 8) | 0x33;
      v377 = 0xD000000000000021;
      goto LABEL_142;
    }

    if ([v201 code]== 19)
    {
      v358 = v870;
      v881(v870, v880, v273);
      v359 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v359;
      v360 = sub_2664DFE18();
      v361 = sub_2664E06E8();
      if (os_log_type_enabled(v360, v361))
      {
        v362 = swift_slowAlloc();
        v363 = swift_slowAlloc();
        v895 = v363;
        *v362 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v364 = qword_280072E18;
        v365 = unk_280072E20;

        v366 = sub_2662A320C(v364, v365, &v895);

        *(v362 + 4) = v366;
        *(v362 + 12) = 2082;
        v367 = v890;

        v368 = sub_2662A320C(v888, v367, &v895);

        *(v362 + 14) = v368;
        swift_bridgeObjectRelease_n();
        *(v362 + 22) = 2082;
        v369 = [v276 localizedDescription];
        v370 = sub_2664E02C8();
        v372 = v371;

        v373 = sub_2662A320C(v370, v372, &v895);

        *(v362 + 24) = v373;

        *(v362 + 32) = 2050;
        v374 = [v276 code];

        *(v362 + 34) = v374;
        _os_log_impl(&dword_26629C000, v360, v361, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - ApplicationTerminated Error: %{public}s ApplicationTerminated code: %{public}ld", v362, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v363, -1, -1);
        MEMORY[0x266784AD0](v362, -1, -1);

        v375 = v870;
        v273 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v375 = v358;
      }

      v181(v375, v273);
      v347 = 0x80000002664FB4D0;
      v411 = v869;
      v881(v869, v880, v273);
      v412 = sub_2664DFE18();
      v413 = sub_2664E06B8();
      v414 = os_log_type_enabled(v412, v413);
      v352 = v887;
      if (v414)
      {
        v415 = swift_slowAlloc();
        v884 = v181;
        v416 = v415;
        v417 = swift_slowAlloc();
        v895 = v417;
        *v416 = 134218498;
        *(v416 + 4) = v204;
        *(v416 + 12) = 2048;
        *(v416 + 14) = 148;
        *(v416 + 22) = 2080;
        *(v416 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664FB4D0, &v895);
        _os_log_impl(&dword_26629C000, v412, v413, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v416, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v417);
        MEMORY[0x266784AD0](v417, -1, -1);
        MEMORY[0x266784AD0](v416, -1, -1);

        (v884)(v411, v879);
      }

      else
      {

        v181(v411, v273);
      }

      v376 = (v204 << 8) | 0x99;
      v377 = 0xD000000000000015;
      goto LABEL_142;
    }

    if ([v201 code]== 15)
    {
      v393 = v868;
      v881(v868, v880, v273);
      v394 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v394;
      v395 = sub_2664DFE18();
      v396 = sub_2664E06E8();
      if (os_log_type_enabled(v395, v396))
      {
        v397 = swift_slowAlloc();
        v398 = swift_slowAlloc();
        v895 = v398;
        *v397 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v399 = qword_280072E18;
        v400 = unk_280072E20;

        v401 = sub_2662A320C(v399, v400, &v895);

        *(v397 + 4) = v401;
        *(v397 + 12) = 2082;
        v402 = v890;

        v403 = sub_2662A320C(v888, v402, &v895);

        *(v397 + 14) = v403;
        swift_bridgeObjectRelease_n();
        *(v397 + 22) = 2082;
        v404 = [v276 localizedDescription];
        v405 = sub_2664E02C8();
        v407 = v406;

        v408 = sub_2662A320C(v405, v407, &v895);

        *(v397 + 24) = v408;

        *(v397 + 32) = 2050;
        v409 = [v276 code];

        *(v397 + 34) = v409;
        _os_log_impl(&dword_26629C000, v395, v396, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - OperationApplicationRequiresPreflight Error: %{public}s OperationApplicationRequiresPreflight code: %{public}ld", v397, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v398, -1, -1);
        MEMORY[0x266784AD0](v397, -1, -1);

        v410 = v868;
        v273 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v410 = v393;
      }

      v181(v410, v273);
      v347 = 0x80000002664FB4A0;
      v436 = v867;
      v881(v867, v880, v273);
      v437 = sub_2664DFE18();
      v438 = sub_2664E06B8();
      v439 = os_log_type_enabled(v437, v438);
      v352 = v887;
      if (v439)
      {
        v440 = swift_slowAlloc();
        v884 = v181;
        v441 = v440;
        v442 = swift_slowAlloc();
        v895 = v442;
        *v441 = 134218498;
        *(v441 + 4) = v204;
        *(v441 + 12) = 2048;
        *(v441 + 14) = 51;
        *(v441 + 22) = 2080;
        *(v441 + 24) = sub_2662A320C(0xD000000000000025, 0x80000002664FB4A0, &v895);
        _os_log_impl(&dword_26629C000, v437, v438, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v441, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v442);
        MEMORY[0x266784AD0](v442, -1, -1);
        MEMORY[0x266784AD0](v441, -1, -1);

        (v884)(v436, v879);
      }

      else
      {

        v181(v436, v273);
      }

      v376 = (v204 << 8) | 0x34;
      v377 = 0xD000000000000025;
      goto LABEL_142;
    }

    if ([v201 code]== 16)
    {
      v418 = v866;
      v881(v866, v880, v273);
      v419 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v419;
      v420 = sub_2664DFE18();
      v421 = sub_2664E06E8();
      if (os_log_type_enabled(v420, v421))
      {
        v422 = swift_slowAlloc();
        v423 = swift_slowAlloc();
        v895 = v423;
        *v422 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v424 = qword_280072E18;
        v425 = unk_280072E20;

        v426 = sub_2662A320C(v424, v425, &v895);

        *(v422 + 4) = v426;
        *(v422 + 12) = 2082;
        v427 = v890;

        v428 = sub_2662A320C(v888, v427, &v895);

        *(v422 + 14) = v428;
        swift_bridgeObjectRelease_n();
        *(v422 + 22) = 2082;
        v429 = [v276 localizedDescription];
        v430 = sub_2664E02C8();
        v432 = v431;

        v433 = sub_2662A320C(v430, v432, &v895);

        *(v422 + 24) = v433;

        *(v422 + 32) = 2050;
        v434 = [v276 code];

        *(v422 + 34) = v434;
        _os_log_impl(&dword_26629C000, v420, v421, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - ErrorApplicationDisabled Error: %{public}s ErrorApplicationDisabled code: %{public}ld", v422, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v423, -1, -1);
        MEMORY[0x266784AD0](v422, -1, -1);

        v435 = v866;
        v273 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v435 = v418;
      }

      v181(v435, v273);
      v347 = 0x80000002664FB480;
      v474 = v865;
      v881(v865, v880, v273);
      v475 = sub_2664DFE18();
      v476 = sub_2664E06B8();
      v477 = os_log_type_enabled(v475, v476);
      v352 = v887;
      if (v477)
      {
        v478 = swift_slowAlloc();
        v884 = v181;
        v479 = v478;
        v480 = swift_slowAlloc();
        v895 = v480;
        *v479 = 134218498;
        *(v479 + 4) = v204;
        *(v479 + 12) = 2048;
        *(v479 + 14) = 52;
        *(v479 + 22) = 2080;
        *(v479 + 24) = sub_2662A320C(0xD000000000000018, 0x80000002664FB480, &v895);
        _os_log_impl(&dword_26629C000, v475, v476, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v479, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v480);
        MEMORY[0x266784AD0](v480, -1, -1);
        MEMORY[0x266784AD0](v479, -1, -1);

        (v884)(v474, v879);
      }

      else
      {

        v181(v474, v273);
      }

      v481 = 53;
LABEL_141:
      v376 = v481 | (v204 << 8);
      v377 = 0xD000000000000018;
LABEL_142:
      v895 = v376;
      *&v896 = v377;
      *(&v896 + 1) = v347;
      v352(&v895);
LABEL_143:

LABEL_144:

      goto LABEL_145;
    }

    v443 = [v201 domain];
    v444 = sub_2664E02C8();
    v446 = v445;

    if (v444 == sub_2664E02C8() && v446 == v447)
    {
    }

    else
    {
      v448 = sub_2664E0D88();

      if ((v448 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    if ([v201 code]== 1)
    {
      v449 = v864;
      v450 = v879;
      v881(v864, v880, v879);
      v451 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v451;
      v452 = sub_2664DFE18();
      v453 = sub_2664E06E8();
      if (os_log_type_enabled(v452, v453))
      {
        v454 = swift_slowAlloc();
        v455 = swift_slowAlloc();
        v895 = v455;
        *v454 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v456 = qword_280072E18;
        v457 = unk_280072E20;

        v458 = sub_2662A320C(v456, v457, &v895);

        *(v454 + 4) = v458;
        *(v454 + 12) = 2082;
        v459 = v890;

        v460 = sub_2662A320C(v888, v459, &v895);

        *(v454 + 14) = v460;
        swift_bridgeObjectRelease_n();
        *(v454 + 22) = 2082;
        v461 = [v276 localizedDescription];
        v462 = sub_2664E02C8();
        v464 = v463;

        v465 = sub_2662A320C(v462, v464, &v895);

        *(v454 + 24) = v465;

        *(v454 + 32) = 2050;
        v466 = [v276 code];

        *(v454 + 34) = v466;
        _os_log_impl(&dword_26629C000, v452, v453, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - OutputDeviceNotFound Error: %{public}s OutputDeviceNotFound code: %{public}ld", v454, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v455, -1, -1);
        MEMORY[0x266784AD0](v454, -1, -1);

        v467 = v864;
        v450 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v467 = v449;
      }

      v181(v467, v450);
      v519 = v862;
      v881(v862, v880, v450);
      v520 = sub_2664DFE18();
      v521 = sub_2664E06B8();
      v522 = os_log_type_enabled(v520, v521);
      v523 = v887;
      if (v522)
      {
        v524 = swift_slowAlloc();
        v525 = v450;
        v526 = swift_slowAlloc();
        v895 = v526;
        *v524 = 134218498;
        *(v524 + 4) = v204;
        *(v524 + 12) = 2048;
        *(v524 + 14) = 13;
        *(v524 + 22) = 2080;
        *(v524 + 24) = sub_2662A320C(0x6F4E656369766544, 0xEE00646E756F4674, &v895);
        _os_log_impl(&dword_26629C000, v520, v521, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v524, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v526);
        MEMORY[0x266784AD0](v526, -1, -1);
        MEMORY[0x266784AD0](v524, -1, -1);

        v527 = v519;
        v528 = v525;
      }

      else
      {

        v527 = v519;
        v528 = v450;
      }

      v181(v527, v528);
      v895 = ((v204 << 8) | 0xD);
      v529 = xmmword_2664EF4C0;
LABEL_183:
      v896 = v529;
LABEL_184:
      v523(&v895);
      goto LABEL_143;
    }

LABEL_133:
    v468 = [v201 domain];
    v469 = sub_2664E02C8();
    v471 = v470;

    if (v469 == sub_2664E02C8() && v471 == v472)
    {

      v473 = v879;
    }

    else
    {
      v482 = sub_2664E0D88();

      v473 = v879;
      if ((v482 & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    if ([v201 code]== 3 || [v201 code]== 2)
    {
      v483 = v863;
      v881(v863, v880, v473);
      v484 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v484;
      v485 = sub_2664DFE18();
      v486 = sub_2664E06E8();
      if (os_log_type_enabled(v485, v486))
      {
        v487 = swift_slowAlloc();
        v488 = swift_slowAlloc();
        v895 = v488;
        *v487 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v489 = qword_280072E18;
        v490 = unk_280072E20;

        v491 = sub_2662A320C(v489, v490, &v895);

        *(v487 + 4) = v491;
        *(v487 + 12) = 2082;
        v492 = v890;

        v493 = sub_2662A320C(v888, v492, &v895);

        *(v487 + 14) = v493;
        swift_bridgeObjectRelease_n();
        *(v487 + 22) = 2082;
        v494 = [v276 localizedDescription];
        v495 = sub_2664E02C8();
        v497 = v496;

        v498 = sub_2662A320C(v495, v497, &v895);

        *(v487 + 24) = v498;

        *(v487 + 32) = 2050;
        v499 = [v276 code];

        *(v487 + 34) = v499;
        _os_log_impl(&dword_26629C000, v485, v486, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - endpointConnectionFailed or endpointNotRemoteControllable Error: %{public}s endpointConnectionFailed or endpointNotRemoteControllable code: %{public}ld", v487, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v488, -1, -1);
        MEMORY[0x266784AD0](v487, -1, -1);

        v500 = v863;
        v473 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v500 = v483;
      }

      v181(v500, v473);
      v347 = 0x80000002664FAF30;
      v530 = v861;
      v881(v861, v880, v473);
      v531 = sub_2664DFE18();
      v532 = sub_2664E06B8();
      v533 = os_log_type_enabled(v531, v532);
      v352 = v887;
      if (v533)
      {
        v534 = swift_slowAlloc();
        v884 = v181;
        v535 = v534;
        v536 = swift_slowAlloc();
        v895 = v536;
        *v535 = 134218498;
        *(v535 + 4) = v204;
        *(v535 + 12) = 2048;
        *(v535 + 14) = 46;
        *(v535 + 22) = 2080;
        *(v535 + 24) = sub_2662A320C(0xD000000000000018, 0x80000002664FAF30, &v895);
        _os_log_impl(&dword_26629C000, v531, v532, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v535, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v536);
        MEMORY[0x266784AD0](v536, -1, -1);
        MEMORY[0x266784AD0](v535, -1, -1);

        (v884)(v530, v879);
      }

      else
      {

        v181(v530, v473);
      }

      v481 = 47;
      goto LABEL_141;
    }

LABEL_153:
    if ([v201 code]== 61)
    {
      v501 = v860;
      v881(v860, v880, v473);
      v502 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v502;
      v503 = sub_2664DFE18();
      v504 = sub_2664E06E8();
      if (os_log_type_enabled(v503, v504))
      {
        v505 = swift_slowAlloc();
        v506 = swift_slowAlloc();
        v895 = v506;
        *v505 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v507 = qword_280072E18;
        v508 = unk_280072E20;

        v509 = sub_2662A320C(v507, v508, &v895);

        *(v505 + 4) = v509;
        *(v505 + 12) = 2082;
        v510 = v890;

        v511 = sub_2662A320C(v888, v510, &v895);

        *(v505 + 14) = v511;
        swift_bridgeObjectRelease_n();
        *(v505 + 22) = 2082;
        v512 = [v276 localizedDescription];
        v513 = sub_2664E02C8();
        v515 = v514;

        v516 = sub_2662A320C(v513, v515, &v895);

        *(v505 + 24) = v516;

        *(v505 + 32) = 2050;
        v517 = [v276 code];

        *(v505 + 34) = v517;
        _os_log_impl(&dword_26629C000, v503, v504, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - EmptyModelResponse Error: %{public}s EmptyModelResponse code: %{public}ld", v505, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v506, -1, -1);
        MEMORY[0x266784AD0](v505, -1, -1);

        v518 = v860;
        v473 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v518 = v501;
      }

      v181(v518, v473);
      v554 = v859;
      v881(v859, v880, v473);
      v555 = sub_2664DFE18();
      v556 = sub_2664E06B8();
      v557 = os_log_type_enabled(v555, v556);
      v523 = v887;
      if (v557)
      {
        v558 = swift_slowAlloc();
        v559 = v473;
        v560 = swift_slowAlloc();
        v895 = v560;
        *v558 = 134218498;
        *(v558 + 4) = v204;
        *(v558 + 12) = 2048;
        *(v558 + 14) = 17;
        *(v558 + 22) = 2080;
        *(v558 + 24) = sub_2662A320C(0x746963696C707845, 0xEF746E65746E6F43, &v895);
        _os_log_impl(&dword_26629C000, v555, v556, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v558, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v560);
        MEMORY[0x266784AD0](v560, -1, -1);
        MEMORY[0x266784AD0](v558, -1, -1);

        v561 = v554;
        v562 = v559;
      }

      else
      {

        v561 = v554;
        v562 = v473;
      }

      v181(v561, v562);
      v895 = ((v204 << 8) | 0x11);
      v529 = xmmword_2664EF4B0;
      goto LABEL_183;
    }

    if ([v201 code]== 12)
    {
      v881(v858, v880, v473);
      v537 = v201;
      swift_bridgeObjectRetain_n();
      v276 = v537;
      v538 = sub_2664DFE18();
      v539 = sub_2664E06E8();
      if (os_log_type_enabled(v538, v539))
      {
        v540 = swift_slowAlloc();
        v541 = swift_slowAlloc();
        v895 = v541;
        *v540 = 136446978;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v542 = qword_280072E18;
        v543 = unk_280072E20;

        v544 = sub_2662A320C(v542, v543, &v895);

        *(v540 + 4) = v544;
        *(v540 + 12) = 2082;
        v545 = v890;

        v546 = sub_2662A320C(v888, v545, &v895);

        *(v540 + 14) = v546;
        swift_bridgeObjectRelease_n();
        *(v540 + 22) = 2082;
        v547 = [v276 localizedDescription];
        v548 = sub_2664E02C8();
        v550 = v549;

        v551 = sub_2662A320C(v548, v550, &v895);

        *(v540 + 24) = v551;

        *(v540 + 32) = 2050;
        v552 = [v276 code];

        *(v540 + 34) = v552;
        _os_log_impl(&dword_26629C000, v538, v539, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - MaxStreamCountReached Error: %{public}s MaxStreamCountReached code: %{public}ld", v540, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v541, -1, -1);
        MEMORY[0x266784AD0](v540, -1, -1);

        v553 = v858;
        v473 = v879;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v553 = v858;
      }

      v181(v553, v473);
      v576 = v857;
      v881(v857, v880, v473);
      v577 = sub_2664DFE18();
      v578 = sub_2664E06B8();
      v579 = os_log_type_enabled(v577, v578);
      v523 = v887;
      if (v579)
      {
        v580 = swift_slowAlloc();
        v581 = v473;
        v582 = swift_slowAlloc();
        v895 = v582;
        *v580 = 134218498;
        *(v580 + 4) = v204;
        *(v580 + 12) = 2048;
        *(v580 + 14) = 14;
        *(v580 + 22) = 2080;
        *(v580 + 24) = sub_2662A320C(0x616572745378614DLL, 0xEE00746E756F436DLL, &v895);
        _os_log_impl(&dword_26629C000, v577, v578, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v580, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v582);
        MEMORY[0x266784AD0](v582, -1, -1);
        MEMORY[0x266784AD0](v580, -1, -1);

        v583 = v576;
        v584 = v581;
      }

      else
      {

        v583 = v576;
        v584 = v473;
      }

      v181(v583, v584);
      v895 = ((v204 << 8) | 0xE);
      v896 = xmmword_2664EF4A0;
      goto LABEL_184;
    }

    v883 = v201;
    v563 = sub_2664DFD48();
    v565 = sub_2664B0DC8(v563, v564);

    if (v565)
    {
      v884 = v204;
      v881(v856, v880, v473);
      swift_bridgeObjectRetain_n();
      v566 = sub_2664DFE18();
      v567 = sub_2664E06D8();
      if (os_log_type_enabled(v566, v567))
      {
        v568 = v181;
        v569 = swift_slowAlloc();
        v570 = swift_slowAlloc();
        v895 = v570;
        *v569 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v571 = qword_280072E18;
        v572 = unk_280072E20;

        v573 = sub_2662A320C(v571, v572, &v895);

        *(v569 + 4) = v573;
        *(v569 + 12) = 2082;
        v574 = v890;

        v575 = sub_2662A320C(v888, v574, &v895);

        *(v569 + 14) = v575;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v566, v567, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned XSchemeURLError", v569, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v570, -1, -1);
        MEMORY[0x266784AD0](v569, -1, -1);

        v181(v856, v879);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v568 = v181;
        v181(v856, v473);
      }

      v597 = sub_2664DFD48();
      v599 = sub_2664B1060(v597, v598);
      v601 = v600;

      if ((v601 & 1) == 0)
      {
        v623 = sub_26648C88C(&v895, v599);
        v625 = v624;
        v626 = v895;
        v881(v853, v880, v879);

        v627 = sub_2664DFE18();
        v628 = sub_2664E06B8();
        if (os_log_type_enabled(v627, v628))
        {
          v629 = swift_slowAlloc();
          v630 = swift_slowAlloc();
          v895 = v630;
          *v629 = 134218498;
          *(v629 + 4) = v884;
          *(v629 + 12) = 2048;
          *(v629 + 14) = qword_2664EF818[v626 ^ 0x80];
          *(v629 + 22) = 2080;
          v631 = sub_2662A320C(v623, v625, &v895);

          *(v629 + 24) = v631;
          _os_log_impl(&dword_26629C000, v627, v628, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v629, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v630);
          MEMORY[0x266784AD0](v630, -1, -1);
          MEMORY[0x266784AD0](v629, -1, -1);
        }

        else
        {
        }

        v568(v853, v879);
        v895 = (v626 | (v884 << 8));
        *&v896 = v623;
        *(&v896 + 1) = v625;
        goto LABEL_222;
      }

      v881(v852, v880, v879);
      v602 = sub_2664DFE18();
      v603 = sub_2664E06D8();
      if (os_log_type_enabled(v602, v603))
      {
        v604 = swift_slowAlloc();
        v893 = 0;
        v891 = 0;
        *v604 = 0;
        v895 = v604 + 2;
        sub_2664873D8(MEMORY[0x277D84F90], &v895, &v893, &v891);
        _os_log_impl(&dword_26629C000, v602, v603, "MediaPlaybackProvider#readStatus unable to extract XSchemeURLError error code!", v604, 2u);
        MEMORY[0x266784AD0](v604, -1, -1);
      }

      v568(v852, v879);
      v605 = 0x80000002664FB460;
      v881(v855, v880, v879);
      v606 = sub_2664DFE18();
      v607 = sub_2664E06B8();
      if (os_log_type_enabled(v606, v607))
      {
        v608 = swift_slowAlloc();
        v609 = swift_slowAlloc();
        v895 = v609;
        *v608 = 134218498;
        *(v608 + 4) = v884;
        *(v608 + 12) = 2048;
        *(v608 + 14) = 164;
        *(v608 + 22) = 2080;
        *(v608 + 24) = sub_2662A320C(0xD00000000000001ALL, 0x80000002664FB460, &v895);
        _os_log_impl(&dword_26629C000, v606, v607, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v608, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v609);
        MEMORY[0x266784AD0](v609, -1, -1);
        MEMORY[0x266784AD0](v608, -1, -1);
      }

      v568(v855, v879);
      v610 = (v884 << 8) | 0xA4;
      v611 = 0xD00000000000001ALL;
      goto LABEL_213;
    }

    v201 = 0xD000000000000014;
    v585 = sub_2664DFD48();
    v587 = sub_2664B0C3C(v884, v585, v586);

    if (v587)
    {
      v881(v851, v880, v473);
      swift_bridgeObjectRetain_n();
      v588 = sub_2664DFE18();
      v589 = sub_2664E06D8();
      if (os_log_type_enabled(v588, v589))
      {
        v590 = swift_slowAlloc();
        v591 = swift_slowAlloc();
        v895 = v591;
        *v590 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v592 = qword_280072E18;
        v593 = unk_280072E20;

        v594 = sub_2662A320C(v592, v593, &v895);

        *(v590 + 4) = v594;
        *(v590 + 12) = 2082;
        v595 = v890;

        v596 = sub_2662A320C(v888, v595, &v895);

        *(v590 + 14) = v596;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v588, v589, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned iTunes Account Error", v590, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v591, -1, -1);
        MEMORY[0x266784AD0](v590, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v851, v879);
      v605 = 0x80000002664FB440;
      v881(v854, v880, v879);
      v632 = sub_2664DFE18();
      v633 = sub_2664E06B8();
      if (os_log_type_enabled(v632, v633))
      {
        v634 = swift_slowAlloc();
        v635 = swift_slowAlloc();
        v895 = v635;
        *v634 = 134218498;
        *(v634 + 4) = v204;
        *(v634 + 12) = 2048;
        *(v634 + 14) = 1;
        *(v634 + 22) = 2080;
        *(v634 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664FB440, &v895);
        _os_log_impl(&dword_26629C000, v632, v633, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v634, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v635);
        MEMORY[0x266784AD0](v635, -1, -1);
        MEMORY[0x266784AD0](v634, -1, -1);
      }

      v181(v854, v879);
      v610 = (v204 << 8) | 1;
      v611 = 0xD000000000000010;
LABEL_213:
      v895 = v610;
      *&v896 = v611;
LABEL_214:
      *(&v896 + 1) = v605;
LABEL_222:
      v887(&v895);

      goto LABEL_144;
    }

    v895 = sub_2664DFD48();
    *&v896 = v612;
    v893 = 0xD00000000000003ALL;
    *&v894 = 0x80000002664FB080;
    sub_2662D2EBC();
    v613 = sub_2664E09B8();

    if (v613)
    {
      v881(v849, v880, v879);
      swift_bridgeObjectRetain_n();
      v614 = sub_2664DFE18();
      v615 = sub_2664E06D8();
      if (os_log_type_enabled(v614, v615))
      {
        v616 = swift_slowAlloc();
        v617 = swift_slowAlloc();
        v895 = v617;
        *v616 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v618 = qword_280072E18;
        v619 = unk_280072E20;

        v620 = sub_2662A320C(v618, v619, &v895);

        *(v616 + 4) = v620;
        *(v616 + 12) = 2082;
        v621 = v890;

        v622 = sub_2662A320C(v888, v621, &v895);

        *(v616 + 14) = v622;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v614, v615, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned music cellular data off error", v616, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v617, -1, -1);
        MEMORY[0x266784AD0](v616, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v849, v879);
      v605 = 0x80000002664FB420;
      v881(v850, v880, v879);
      v647 = sub_2664DFE18();
      v648 = sub_2664E06B8();
      if (os_log_type_enabled(v647, v648))
      {
        v649 = swift_slowAlloc();
        v650 = swift_slowAlloc();
        v895 = v650;
        *v649 = 134218498;
        *(v649 + 4) = v204;
        *(v649 + 12) = 2048;
        *(v649 + 14) = 150;
        *(v649 + 22) = 2080;
        *(v649 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664FB420, &v895);
        _os_log_impl(&dword_26629C000, v647, v648, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v649, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v650);
        MEMORY[0x266784AD0](v650, -1, -1);
        MEMORY[0x266784AD0](v649, -1, -1);
      }

      v181(v850, v879);
      v651 = 155;
LABEL_227:
      v895 = (v651 | (v204 << 8));
      *&v896 = 0xD000000000000014;
      goto LABEL_214;
    }

    v895 = sub_2664DFD48();
    *&v896 = v636;
    v893 = 0xD000000000000011;
    *&v894 = 0x80000002664FB2B0;
    v637 = sub_2664E09B8();

    if (v637)
    {
      v881(v847, v880, v879);
      swift_bridgeObjectRetain_n();
      v638 = sub_2664DFE18();
      v639 = sub_2664E06D8();
      if (os_log_type_enabled(v638, v639))
      {
        v640 = swift_slowAlloc();
        v641 = swift_slowAlloc();
        v895 = v641;
        *v640 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v642 = qword_280072E18;
        v643 = unk_280072E20;

        v644 = sub_2662A320C(v642, v643, &v895);

        *(v640 + 4) = v644;
        *(v640 + 12) = 2082;
        v645 = v890;

        v646 = sub_2662A320C(v888, v645, &v895);

        *(v640 + 14) = v646;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v638, v639, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned no local endpoint connection error", v640, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v641, -1, -1);
        MEMORY[0x266784AD0](v640, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v847, v879);
      v605 = 0x80000002664FB400;
      v881(v848, v880, v879);
      v662 = sub_2664DFE18();
      v663 = sub_2664E06B8();
      if (os_log_type_enabled(v662, v663))
      {
        v664 = swift_slowAlloc();
        v665 = swift_slowAlloc();
        v895 = v665;
        *v664 = 134218498;
        *(v664 + 4) = v204;
        *(v664 + 12) = 2048;
        *(v664 + 14) = 161;
        *(v664 + 22) = 2080;
        *(v664 + 24) = sub_2662A320C(0xD000000000000019, 0x80000002664FB400, &v895);
        _os_log_impl(&dword_26629C000, v662, v663, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v664, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v665);
        MEMORY[0x266784AD0](v665, -1, -1);
        MEMORY[0x266784AD0](v664, -1, -1);
      }

      v181(v848, v879);
      v610 = (v204 << 8) | 0xA3;
      v611 = 0xD000000000000019;
      goto LABEL_213;
    }

    sub_2664DFD48();
    v652 = sub_2664B178C();

    if (v652)
    {
      v881(v845, v880, v879);
      swift_bridgeObjectRetain_n();
      v653 = sub_2664DFE18();
      v654 = sub_2664E06D8();
      if (os_log_type_enabled(v653, v654))
      {
        v655 = swift_slowAlloc();
        v656 = swift_slowAlloc();
        v895 = v656;
        *v655 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v657 = qword_280072E18;
        v658 = unk_280072E20;

        v659 = sub_2662A320C(v657, v658, &v895);

        *(v655 + 4) = v659;
        *(v655 + 12) = 2082;
        v660 = v890;

        v661 = sub_2662A320C(v888, v660, &v895);

        *(v655 + 14) = v661;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v653, v654, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned no network available error", v655, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v656, -1, -1);
        MEMORY[0x266784AD0](v655, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v845, v879);
      v881(v846, v880, v879);
      v676 = sub_2664DFE18();
      v677 = sub_2664E06B8();
      if (os_log_type_enabled(v676, v677))
      {
        v678 = swift_slowAlloc();
        v679 = swift_slowAlloc();
        v895 = v679;
        *v678 = 134218498;
        *(v678 + 4) = v204;
        *(v678 + 12) = 2048;
        *(v678 + 14) = 36;
        *(v678 + 22) = 2080;
        *(v678 + 24) = sub_2662A320C(0x726F7774654E6F4ELL, 0xE90000000000006BLL, &v895);
        _os_log_impl(&dword_26629C000, v676, v677, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v678, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v679);
        MEMORY[0x266784AD0](v679, -1, -1);
        MEMORY[0x266784AD0](v678, -1, -1);
      }

      v181(v846, v879);
      v895 = ((v204 << 8) | 0x25);
      v896 = xmmword_2664EF490;
      goto LABEL_222;
    }

    sub_2664DFD48();
    v666 = sub_2664B1890();

    if (v666)
    {
      v881(v843, v880, v879);
      swift_bridgeObjectRetain_n();
      v667 = sub_2664DFE18();
      v668 = sub_2664E06D8();
      if (os_log_type_enabled(v667, v668))
      {
        v669 = swift_slowAlloc();
        v670 = swift_slowAlloc();
        v895 = v670;
        *v669 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v671 = qword_280072E18;
        v672 = unk_280072E20;

        v673 = sub_2662A320C(v671, v672, &v895);

        *(v669 + 4) = v673;
        *(v669 + 12) = 2082;
        v674 = v890;

        v675 = sub_2662A320C(v888, v674, &v895);

        *(v669 + 14) = v675;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v667, v668, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned GDPR needed for someone in group error", v669, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v670, -1, -1);
        MEMORY[0x266784AD0](v669, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v843, v879);
      v605 = 0x80000002664FB3E0;
      v881(v844, v880, v879);
      v691 = sub_2664DFE18();
      v692 = sub_2664E06B8();
      if (os_log_type_enabled(v691, v692))
      {
        v693 = swift_slowAlloc();
        v694 = swift_slowAlloc();
        v895 = v694;
        *v693 = 134218498;
        *(v693 + 4) = v204;
        *(v693 + 12) = 2048;
        *(v693 + 14) = 53;
        *(v693 + 22) = 2080;
        *(v693 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664FB3E0, &v895);
        _os_log_impl(&dword_26629C000, v691, v692, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v693, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v694);
        MEMORY[0x266784AD0](v694, -1, -1);
        MEMORY[0x266784AD0](v693, -1, -1);
      }

      v181(v844, v879);
      v895 = ((v204 << 8) | 0x36);
      *&v896 = 0xD000000000000011;
      goto LABEL_214;
    }

    v680 = v883;
    v681 = sub_2664B19E4(v182, v884);
    v883 = v680;

    if (v681)
    {
      v881(v842, v880, v879);
      swift_bridgeObjectRetain_n();
      v682 = sub_2664DFE18();
      v683 = sub_2664E06D8();
      if (os_log_type_enabled(v682, v683))
      {
        v684 = swift_slowAlloc();
        v685 = swift_slowAlloc();
        v895 = v685;
        *v684 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v686 = qword_280072E18;
        v687 = unk_280072E20;

        v688 = sub_2662A320C(v686, v687, &v895);

        *(v684 + 4) = v688;
        *(v684 + 12) = 2082;
        v689 = v890;

        v690 = sub_2662A320C(v888, v689, &v895);

        *(v684 + 14) = v690;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v682, v683, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned AppNotInstalledError", v684, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v685, -1, -1);
        MEMORY[0x266784AD0](v684, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v842, v879);
      v881(v834, v880, v879);
      v706 = sub_2664DFE18();
      v707 = sub_2664E06B8();
      if (os_log_type_enabled(v706, v707))
      {
        v708 = swift_slowAlloc();
        v709 = swift_slowAlloc();
        v895 = v709;
        *v708 = 134218498;
        *(v708 + 4) = v204;
        *(v708 + 12) = 2048;
        *(v708 + 14) = 156;
        *(v708 + 22) = 2080;
        *(v708 + 24) = sub_2662A320C(0x6E49746F4E707041, 0xEF64656C6C617473, &v895);
        _os_log_impl(&dword_26629C000, v706, v707, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v708, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v709);
        MEMORY[0x266784AD0](v709, -1, -1);
        MEMORY[0x266784AD0](v708, -1, -1);
      }

      v181(v834, v879);
      v895 = ((v204 << 8) | 0xA0);
      v896 = xmmword_2664EF480;
      goto LABEL_222;
    }

    v895 = sub_2664DFD48();
    *&v896 = v695;
    v893 = 0xD000000000000021;
    *&v894 = 0x80000002664FB2D0;
    v696 = sub_2664E09B8();

    if (v696)
    {
      v881(v841, v880, v879);
      swift_bridgeObjectRetain_n();
      v697 = sub_2664DFE18();
      v698 = sub_2664E06D8();
      if (os_log_type_enabled(v697, v698))
      {
        v699 = swift_slowAlloc();
        v700 = swift_slowAlloc();
        v895 = v700;
        *v699 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v701 = qword_280072E18;
        v702 = unk_280072E20;

        v703 = sub_2662A320C(v701, v702, &v895);

        *(v699 + 4) = v703;
        *(v699 + 12) = 2082;
        v704 = v890;

        v705 = sub_2662A320C(v888, v704, &v895);

        *(v699 + 14) = v705;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v697, v698, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned requested station playing not currently allowed explicit content", v699, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v700, -1, -1);
        MEMORY[0x266784AD0](v699, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v841, v879);
      v605 = 0x80000002664FB3B0;
      v881(v833, v880, v879);
      v719 = sub_2664DFE18();
      v720 = sub_2664E06B8();
      if (os_log_type_enabled(v719, v720))
      {
        v721 = swift_slowAlloc();
        v722 = swift_slowAlloc();
        v895 = v722;
        *v721 = 134218498;
        *(v721 + 4) = v204;
        *(v721 + 12) = 2048;
        *(v721 + 14) = 155;
        *(v721 + 22) = 2080;
        *(v721 + 24) = sub_2662A320C(0xD000000000000022, 0x80000002664FB3B0, &v895);
        _os_log_impl(&dword_26629C000, v719, v720, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v721, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v722);
        MEMORY[0x266784AD0](v722, -1, -1);
        MEMORY[0x266784AD0](v721, -1, -1);
      }

      v181(v833, v879);
      v610 = (v204 << 8) | 0x9F;
      v611 = 0xD000000000000022;
      goto LABEL_213;
    }

    sub_2664DFD48();
    v710 = sub_2664B300C();

    if (v710)
    {
      v881(v840, v880, v879);
      swift_bridgeObjectRetain_n();
      v182 = sub_2664DFE18();
      v711 = sub_2664E06D8();
      if (os_log_type_enabled(v182, v711))
      {
        v712 = swift_slowAlloc();
        v713 = swift_slowAlloc();
        v895 = v713;
        *v712 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v714 = qword_280072E18;
        v715 = unk_280072E20;

        v716 = sub_2662A320C(v714, v715, &v895);

        *(v712 + 4) = v716;
        *(v712 + 12) = 2082;
        v717 = v890;

        v718 = sub_2662A320C(v888, v717, &v895);

        *(v712 + 14) = v718;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v182, v711, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned RadioStationNotAvailableInCurrentLocation", v712, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v713, -1, -1);
        MEMORY[0x266784AD0](v712, -1, -1);

        goto LABEL_280;
      }

LABEL_279:

      swift_bridgeObjectRelease_n();
LABEL_280:
      v181(v840, v879);
      v605 = 0x80000002664FB390;
      v881(v832, v880, v879);
      v733 = sub_2664DFE18();
      v734 = sub_2664E06B8();
      if (os_log_type_enabled(v733, v734))
      {
        v735 = swift_slowAlloc();
        v736 = swift_slowAlloc();
        v895 = v736;
        *v735 = 134218498;
        *(v735 + 4) = v204;
        *(v735 + 12) = 2048;
        *(v735 + 14) = 149;
        *(v735 + 22) = 2080;
        *(v735 + 24) = sub_2662A320C(&v201->isa + 3, 0x80000002664FB390, &v895);
        _os_log_impl(&dword_26629C000, v733, v734, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v735, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v736);
        MEMORY[0x266784AD0](v736, -1, -1);
        MEMORY[0x266784AD0](v735, -1, -1);
      }

      v181(v832, v879);
      v610 = (v204 << 8) | 0x9A;
      v611 = &v201->isa + 3;
      goto LABEL_213;
    }

    sub_2664DFD48();
    v723 = sub_2664B3164();

    if (v723)
    {
      v881(v830, v880, v879);
      swift_bridgeObjectRetain_n();
      v724 = sub_2664DFE18();
      v725 = sub_2664E06D8();
      if (os_log_type_enabled(v724, v725))
      {
        v726 = swift_slowAlloc();
        v727 = swift_slowAlloc();
        v895 = v727;
        *v726 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v728 = qword_280072E18;
        v729 = unk_280072E20;

        v730 = sub_2662A320C(v728, v729, &v895);

        *(v726 + 4) = v730;
        *(v726 + 12) = 2082;
        v731 = v890;

        v732 = sub_2662A320C(v888, v731, &v895);

        *(v726 + 14) = v732;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v724, v725, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned BroadcastStationDown", v726, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v727, -1, -1);
        MEMORY[0x266784AD0](v726, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v830, v879);
      v605 = 0x80000002664F3B60;
      v881(v831, v880, v879);
      v747 = sub_2664DFE18();
      v748 = sub_2664E06B8();
      if (os_log_type_enabled(v747, v748))
      {
        v749 = swift_slowAlloc();
        v750 = swift_slowAlloc();
        v895 = v750;
        *v749 = 134218498;
        *(v749 + 4) = v204;
        *(v749 + 12) = 2048;
        *(v749 + 14) = 154;
        *(v749 + 22) = 2080;
        *(v749 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3B60, &v895);
        _os_log_impl(&dword_26629C000, v747, v748, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v749, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v750);
        MEMORY[0x266784AD0](v750, -1, -1);
        MEMORY[0x266784AD0](v749, -1, -1);
      }

      v181(v831, v879);
      v651 = 157;
      goto LABEL_227;
    }

    sub_2664DFD48();
    v737 = sub_2664B3274();

    if (v737)
    {
      v881(v828, v880, v879);
      swift_bridgeObjectRetain_n();
      v738 = sub_2664DFE18();
      v739 = sub_2664E06D8();
      if (os_log_type_enabled(v738, v739))
      {
        v740 = swift_slowAlloc();
        v741 = swift_slowAlloc();
        v895 = v741;
        *v740 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v742 = qword_280072E18;
        v743 = unk_280072E20;

        v744 = sub_2662A320C(v742, v743, &v895);

        *(v740 + 4) = v744;
        *(v740 + 12) = 2082;
        v745 = v890;

        v746 = sub_2662A320C(v888, v745, &v895);

        *(v740 + 14) = v746;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v738, v739, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned PoorNetworkConnection (timeout)", v740, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v741, -1, -1);
        MEMORY[0x266784AD0](v740, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v828, v879);
      v605 = 0x80000002664FB370;
      v881(v829, v880, v879);
      v762 = sub_2664DFE18();
      v763 = sub_2664E06B8();
      if (os_log_type_enabled(v762, v763))
      {
        v764 = swift_slowAlloc();
        v765 = swift_slowAlloc();
        v895 = v765;
        *v764 = 134218498;
        *(v764 + 4) = v204;
        *(v764 + 12) = 2048;
        *(v764 + 14) = 160;
        *(v764 + 22) = 2080;
        *(v764 + 24) = sub_2662A320C(0xD000000000000015, 0x80000002664FB370, &v895);
        _os_log_impl(&dword_26629C000, v762, v763, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v764, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v765);
        MEMORY[0x266784AD0](v765, -1, -1);
        MEMORY[0x266784AD0](v764, -1, -1);
      }

      v181(v829, v879);
      v610 = (v204 << 8) | 0xA2;
      v611 = 0xD000000000000015;
      goto LABEL_213;
    }

    v895 = sub_2664DFD48();
    *&v896 = v751;
    v893 = 0xD000000000000014;
    *&v894 = 0x80000002664FB300;
    v752 = sub_2664E09B8();

    if (v752)
    {
      v881(v825, v880, v879);
      swift_bridgeObjectRetain_n();
      v753 = sub_2664DFE18();
      v754 = sub_2664E06D8();
      if (os_log_type_enabled(v753, v754))
      {
        v755 = swift_slowAlloc();
        v756 = swift_slowAlloc();
        v895 = v756;
        *v755 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v757 = qword_280072E18;
        v758 = unk_280072E20;

        v759 = sub_2662A320C(v757, v758, &v895);

        *(v755 + 4) = v759;
        *(v755 + 12) = 2082;
        v760 = v890;

        v761 = sub_2662A320C(v888, v760, &v895);

        *(v755 + 14) = v761;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v753, v754, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error returned iTunes Account Error (sign in to ATV error)", v755, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v756, -1, -1);
        MEMORY[0x266784AD0](v755, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v181(v825, v879);
      LOBYTE(v893) = 21;
      LOBYTE(v891) = v204;
      v787._countAndFlagsBits = 0xD000000000000012;
      v787._object = 0x80000002664FB350;
      v899 = PlaybackCodeAndDescription.init(playbackCode:domainCode:errorDescription:)(&v893, &v891, v787);
      v893 = v895;
      v894 = v896;
      (v887)(&v893, v899.errorDescription._countAndFlagsBits, v899.errorDescription._object);

      goto LABEL_144;
    }

    v881(v826, v880, v879);
    swift_bridgeObjectRetain_n();
    v766 = v883;
    swift_bridgeObjectRetain_n();
    v883 = v766;
    v767 = sub_2664DFE18();
    LODWORD(v875) = sub_2664E06D8();
    if (os_log_type_enabled(v767, v875))
    {
      v768 = swift_slowAlloc();
      v874 = swift_slowAlloc();
      v895 = v874;
      *v768 = 136446978;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      v770 = qword_280072E18;
      v769 = unk_280072E20;

      v771 = sub_2662A320C(v770, v769, &v895);

      *(v768 + 4) = v771;
      *(v768 + 12) = 2082;
      v772 = v890;

      v773 = sub_2662A320C(v888, v772, &v895);

      *(v768 + 14) = v773;
      swift_bridgeObjectRelease_n();
      *(v768 + 22) = 2082;
      v774 = v883;
      v775 = [v883 localizedDescription];
      v776 = sub_2664E02C8();
      v778 = v777;

      v779 = sub_2662A320C(v776, v778, &v895);

      *(v768 + 24) = v779;

      *(v768 + 32) = 2082;
      if (v884)
      {
        v780 = v884;
      }

      else
      {
        v780 = MEMORY[0x277D84F90];
      }

      v781 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

      v782 = MEMORY[0x2667834D0](v780, v781);
      v784 = v783;

      v785 = sub_2662A320C(v782, v784, &v895);

      *(v768 + 34) = v785;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_26629C000, v767, v875, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Error found - error: %{public}s, codes: %{public}s", v768, 0x2Au);
      v786 = v874;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v786, -1, -1);
      MEMORY[0x266784AD0](v768, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v788 = v883;

      swift_bridgeObjectRelease_n();
    }

    v181(v826, v879);
    v884 = sub_2664DFD78();
    v890 = v789;
    MEMORY[0x28223BE20](v884);
    v790 = v885;
    *(&v822 - 2) = v885;
    v791 = sub_26636E828(sub_2664B6A40, (&v822 - 4), &unk_2877E5780);
    v874 = 0;
    v888 = *(v791 + 16);

    v881(v827, v880, v879);
    v792 = v877;
    v793 = *(v877 + 2);
    v794 = v836;
    v795 = v790;
    v796 = v876;
    v793(v836, v795, v876);
    v793(v838, v794, v796);
    v792[4](v837, v794, v796);
    swift_bridgeObjectRetain_n();
    v797 = sub_2664DFE18();
    v798 = sub_2664E06E8();
    v875 = v797;
    if (os_log_type_enabled(v797, v798))
    {
      v799 = v888 != 0;
      v800 = swift_slowAlloc();
      v873 = swift_slowAlloc();
      v895 = v873;
      *v800 = 67109634;
      *(v800 + 4) = v799;
      *(v800 + 8) = 2080;
      v801 = v890;

      v802 = sub_2662A320C(v884, v801, &v895);

      *(v800 + 10) = v802;
      swift_bridgeObjectRelease_n();
      *(v800 + 18) = 2080;
      v803 = v838;
      v804 = sub_2664DFD48();
      v806 = sub_2662A320C(v804, v805, &v895);

      *(v800 + 20) = v806;
      v807 = *(v877 + 1);
      v808 = v876;
      v807(v837, v876);
      v878 = v807;
      v807(v803, v808);
      v809 = v875;
      _os_log_impl(&dword_26629C000, v875, v798, "MediaPlaybackProvider#readStatus timeOutMatched: %{BOOL}d, statusCodeStr: %s, error onion: %s", v800, 0x1Cu);
      v810 = v873;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v810, -1, -1);
      MEMORY[0x266784AD0](v800, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v811 = *(v877 + 1);
      v812 = v876;
      v811(v837, v876);
      v878 = v811;
      v811(v838, v812);
    }

    v181(v827, v879);
    if (!v888)
    {
      LODWORD(v895) = 555;
      if (v884 != sub_2664E0D48() || v890 != v813)
      {
        v818 = sub_2664E0D88();

        if ((v818 & 1) == 0)
        {
          goto LABEL_324;
        }

        goto LABEL_319;
      }
    }

LABEL_319:
    if (v839)
    {
      v881(v824, v880, v879);
      v814 = sub_2664DFE18();
      v815 = sub_2664E06E8();
      if (os_log_type_enabled(v814, v815))
      {
        v816 = swift_slowAlloc();
        v893 = 0;
        v891 = 0;
        *v816 = 0;
        v895 = v816 + 2;
        sub_2664873D8(MEMORY[0x277D84F90], &v895, &v893, &v891);
        _os_log_impl(&dword_26629C000, v814, v815, "MediaPlaybackProvider#readStatus reporting timeout error", v816, 2u);
        MEMORY[0x266784AD0](v816, -1, -1);
      }

      v181(v824, v879);
      LOBYTE(v893) = -95;
      LOBYTE(v891) = v204;
      v817._countAndFlagsBits = 0xD000000000000020;
      v817._object = 0x80000002664FB320;
      v900 = PlaybackCodeAndDescription.init(playbackCode:domainCode:errorDescription:)(&v893, &v891, v817);
      v893 = v895;
      v894 = v896;
      (v887)(&v893, v900.errorDescription._countAndFlagsBits, v900.errorDescription._object);

      goto LABEL_325;
    }

LABEL_324:
    LOBYTE(v891) = 0;
    v892 = v204;
    v895 = 0;
    *&v896 = 0xE000000000000000;
    MEMORY[0x2667833B0](0x456E776F6E6B6E55, 0xED00005F726F7272);
    v819 = v883;
    v893 = [v883 code];
    v820 = sub_2664E0D48();
    MEMORY[0x2667833B0](v820);

    MEMORY[0x2667833B0](0, 0xE000000000000000);
    v821._countAndFlagsBits = v895;
    v821._object = v896;
    v901 = PlaybackCodeAndDescription.init(playbackCode:domainCode:errorDescription:)(&v891, &v892, v821);
    v893 = v895;
    v894 = v896;
    (v887)(&v893, v901.errorDescription._countAndFlagsBits, v901.errorDescription._object);

LABEL_325:

    v878(v885, v876);
    return;
  }

  v877 = v27;
  v880 = v24;
  v878 = v30;
  v158 = v884;
  v159 = v887;
  v160 = v21;
  if (!v884)
  {
    goto LABEL_66;
  }

  v161 = v33;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v162 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v163 = v889;
  v164 = v889[2];
  v882 = v889 + 2;
  v883 = v162;
  v881 = v164;
  v164(v36, v162, v17);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v165 = sub_2664DFE18();
  v166 = v17;
  v167 = sub_2664E06B8();
  if (os_log_type_enabled(v165, v167))
  {
    v879 = v166;
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    *&v897 = v169;
    *v168 = 136315650;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    v171 = qword_280072E18;
    v170 = unk_280072E20;

    v172 = sub_2662A320C(v171, v170, &v897);

    *(v168 + 4) = v172;
    *(v168 + 12) = 2082;
    v173 = v890;

    v174 = sub_2662A320C(v888, v173, &v897);

    *(v168 + 14) = v174;
    swift_bridgeObjectRelease_n();
    *(v168 + 22) = 2082;
    v175 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v158 = v884;

    v177 = MEMORY[0x2667834D0](v176, v175);
    v179 = v178;

    v180 = sub_2662A320C(v177, v179, &v897);

    *(v168 + 24) = v180;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_26629C000, v165, v167, "MediaPlaybackProvider#readStatus %s MPCAssistantCommand status for: '%{public}s' - Result codes: %{public}s", v168, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v169, -1, -1);
    MEMORY[0x266784AD0](v168, -1, -1);

    v17 = v879;
    v885 = v889[1];
    (v885)(v36, v879);
    v159 = v887;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v885 = v163[1];
    (v885)(v36, v166);
    v17 = v166;
  }

  v259 = sub_266487828(v158);
  if (!v259)
  {
    v294 = v890;
    if (v888 == 0xD000000000000024 && 0x80000002664FB250 == v890 || (sub_2664E0D88() & 1) != 0)
    {
      v295 = v880;
      v881(v880, v883, v17);
      swift_bridgeObjectRetain_n();
      v296 = sub_2664DFE18();
      v297 = sub_2664E06E8();
      if (os_log_type_enabled(v296, v297))
      {
        v298 = v17;
        v299 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        *&v897 = v300;
        *v299 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v301 = qword_280072E18;
        v302 = unk_280072E20;

        v303 = sub_2662A320C(v301, v302, &v897);

        *(v299 + 4) = v303;
        *(v299 + 12) = 2082;
        v304 = v890;

        v305 = sub_2662A320C(v888, v304, &v897);

        *(v299 + 14) = v305;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v296, v297, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Repeat mode changing completed with no status codes / this is experientially expected", v299, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v300, -1, -1);
        MEMORY[0x266784AD0](v299, -1, -1);

        v306 = v880;
        v307 = v298;
        goto LABEL_97;
      }
    }

    else
    {
      v295 = v877;
      v881(v877, v883, v17);
      swift_bridgeObjectRetain_n();
      v296 = sub_2664DFE18();
      v378 = sub_2664E06E8();
      if (os_log_type_enabled(v296, v378))
      {
        v379 = v17;
        v380 = swift_slowAlloc();
        v381 = swift_slowAlloc();
        *&v897 = v381;
        *v380 = 136446466;
        if (qword_280071AF8 != -1)
        {
          swift_once();
        }

        v382 = qword_280072E18;
        v383 = unk_280072E20;

        v384 = sub_2662A320C(v382, v383, &v897);

        *(v380 + 4) = v384;
        *(v380 + 12) = 2082;

        v385 = sub_2662A320C(v888, v294, &v897);

        *(v380 + 14) = v385;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_26629C000, v296, v378, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Completed with no status codes, returning success", v380, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v381, -1, -1);
        MEMORY[0x266784AD0](v380, -1, -1);

        v306 = v877;
        v307 = v379;
        goto LABEL_97;
      }
    }

    swift_bridgeObjectRelease_n();
    v306 = v295;
    v307 = v17;
LABEL_97:
    (v885)(v306, v307);
    v897 = 0uLL;
    v898 = 0;
    v338 = &v897;
LABEL_98:
    v159(v338);
    return;
  }

  v260 = v259;
  v261 = [v259 unsignedIntValue];
  if (!v261)
  {

LABEL_66:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v326 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v327 = v889;
    (v889[2])(v160, v326, v17);
    swift_bridgeObjectRetain_n();
    v328 = sub_2664DFE18();
    v329 = sub_2664E06B8();
    if (os_log_type_enabled(v328, v329))
    {
      v330 = v17;
      v331 = swift_slowAlloc();
      v332 = swift_slowAlloc();
      v895 = v332;
      *v331 = 136446466;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      v333 = qword_280072E18;
      v334 = unk_280072E20;

      v335 = sub_2662A320C(v333, v334, &v895);

      *(v331 + 4) = v335;
      *(v331 + 12) = 2082;
      v336 = v890;

      v337 = sub_2662A320C(v888, v336, &v895);

      *(v331 + 14) = v337;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_26629C000, v328, v329, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - completed successfully", v331, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v332, -1, -1);
      MEMORY[0x266784AD0](v331, -1, -1);

      (v327[1])(v160, v330);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (v327[1])(v160, v17);
    }

    v895 = 0;
    v896 = 0uLL;
    v338 = &v895;
    goto LABEL_98;
  }

  v262 = v261;
  v881(v161, v883, v17);
  swift_bridgeObjectRetain_n();
  v263 = sub_2664DFE18();
  v264 = sub_2664E06D8();
  if (os_log_type_enabled(v263, v264))
  {
    v879 = v17;
    v265 = swift_slowAlloc();
    v266 = swift_slowAlloc();
    *&v897 = v266;
    *v265 = 136446722;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    v267 = qword_280072E18;
    v268 = unk_280072E20;

    v269 = sub_2662A320C(v267, v268, &v897);

    *(v265 + 4) = v269;
    *(v265 + 12) = 2082;
    v270 = v890;

    v271 = sub_2662A320C(v888, v270, &v897);

    *(v265 + 14) = v271;
    swift_bridgeObjectRelease_n();
    *(v265 + 22) = 1026;
    *(v265 + 24) = v262;
    _os_log_impl(&dword_26629C000, v263, v264, "MediaPlaybackProvider#readStatus %{public}s MPCAssistantCommand status for: '%{public}s' - Non-success status: %{public}u", v265, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v266, -1, -1);
    MEMORY[0x266784AD0](v265, -1, -1);

    v17 = v879;
    (v885)(v161, v879);
    v159 = v887;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (v885)(v161, v17);
  }

  v339 = v878;
  v881(v878, v883, v17);
  v340 = sub_2664DFE18();
  v341 = sub_2664E06B8();
  if (os_log_type_enabled(v340, v341))
  {
    v342 = v17;
    v343 = swift_slowAlloc();
    v344 = swift_slowAlloc();
    *&v897 = v344;
    *v343 = 134218498;
    *(v343 + 4) = 19;
    *(v343 + 12) = 2048;
    *(v343 + 14) = 2;
    *(v343 + 22) = 2080;
    *(v343 + 24) = sub_2662A320C(0xD000000000000020, 0x80000002664FB280, &v897);
    _os_log_impl(&dword_26629C000, v340, v341, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v343, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v344);
    MEMORY[0x266784AD0](v344, -1, -1);
    MEMORY[0x266784AD0](v343, -1, -1);

    v345 = v339;
    v346 = v342;
  }

  else
  {

    v345 = v339;
    v346 = v17;
  }

  (v885)(v345, v346);
  v897 = xmmword_2664EF4D0;
  v898 = 0x80000002664FB280;
  v159(&v897);
}

uint64_t sub_26649C600(unsigned __int16 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, int a8, void (*a9)(uint64_t *), uint64_t a10)
{
  v61 = a8;
  v60 = a7;
  v57 = a2;
  v58 = a4;
  v13 = a9;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = *(a1 + 2);
  if (v22)
  {
    v59 = a10;
    v23 = *(a1 + 1);
    v54 = *a1;
    v55 = v23;
    v24 = qword_280F914E8;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v21, v25, v14);

    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();

    if (os_log_type_enabled(v26, v27))
    {
      v56 = a9;
      v28 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63 = v53;
      *v28 = 136446978;
      *(v28 + 4) = sub_2662A320C(v57, a3, &v63);
      *(v28 + 12) = 2082;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v28 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, &v63);
      *(v28 + 22) = 2082;
      *(v28 + 24) = sub_2662A320C(v58, a5, &v63);
      *(v28 + 32) = 2082;
      v29 = v54;
      v62 = v54;
      v30 = PlaybackCode.rawValue.getter();
      v32 = sub_2662A320C(v30, v31, &v63);

      *(v28 + 34) = v32;
      _os_log_impl(&dword_26629C000, v26, v27, "%{public}s %{public}s %{public}s completed with error code: %{public}s", v28, 0x2Au);
      v33 = v53;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v28, -1, -1);

      (*(v15 + 8))(v21, v14);
      v13 = v56;
      v34 = v60;
      if (!v60)
      {
        goto LABEL_19;
      }
    }

    else
    {

      (*(v15 + 8))(v21, v14);
      v29 = v54;
      v34 = v60;
      if (!v60)
      {
        goto LABEL_19;
      }
    }

    v40 = [v34 playerPath];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 origin];

      if (v42)
      {
        v43 = [v42 isLocallyHosted];

        v44 = v43;
LABEL_20:
        sub_2664B369C(v44, v61, 0);
        v63 = v29;
        v64 = v55;
        v65 = v22;
        v13(&v63);
      }
    }

LABEL_19:
    v44 = 2;
    goto LABEL_20;
  }

  v56 = a9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v19, v35, v14);

  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();

  if (os_log_type_enabled(v36, v37))
  {
    v59 = a10;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v63 = v39;
    *v38 = 136446722;
    *(v38 + 4) = sub_2662A320C(v57, a3, &v63);
    *(v38 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v38 + 14) = sub_2662A320C(qword_280072E18, qword_280072E20, &v63);
    *(v38 + 22) = 2082;
    *(v38 + 24) = sub_2662A320C(v58, a5, &v63);
    _os_log_impl(&dword_26629C000, v36, v37, "%{public}s %{public}s %{public}s completed successfully", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v39, -1, -1);
    MEMORY[0x266784AD0](v38, -1, -1);

    (*(v15 + 8))(v19, v14);
  }

  else
  {

    (*(v15 + 8))(v19, v14);
  }

  v46 = v56;
  if (v60 && (v47 = [v60 playerPath]) != 0 && (v48 = v47, v49 = objc_msgSend(v47, sel_origin), v48, v49))
  {
    v50 = [v49 isLocallyHosted];

    v51 = v50;
  }

  else
  {
    v51 = 2;
  }

  sub_2664B369C(v51, v61, 1);
  v63 = 0;
  v64 = 0;
  v65 = 0;
  return v46(&v63);
}

uint64_t sub_26649CC98(int a1, char a2, int a3)
{
  v50 = a3;
  v5 = a1;
  v6 = sub_2664DFE08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 == 2)
  {
    return result;
  }

  v49 = a1;
  v17 = a2;
  v48 = v7;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v16, v18, v11);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06E8();
  v21 = os_log_type_enabled(v19, v20);
  v47 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v46 = v6;
    v23 = v22;
    v45 = swift_slowAlloc();
    v51 = v45;
    *v23 = 136315650;
    v24 = 1702195828;
    if (v17)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v24 = 0x65736C6166;
      v25 = 0xE500000000000000;
    }

    if (v17 == 2)
    {
      v26 = 0x3E6C696E3CLL;
    }

    else
    {
      v26 = v24;
    }

    v27 = sub_2662A320C(v26, v25, &v51);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    if (v49)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (v49)
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    v30 = sub_2662A320C(v28, v29, &v51);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2080;
    v31 = v50;
    if (v50)
    {
      v32 = 1702195828;
    }

    else
    {
      v32 = 0x65736C6166;
    }

    if (v50)
    {
      v33 = 0xE400000000000000;
    }

    else
    {
      v33 = 0xE500000000000000;
    }

    v34 = sub_2662A320C(v32, v33, &v51);

    *(v23 + 24) = v34;
    _os_log_impl(&dword_26629C000, v19, v20, "MediaPlaybackProvider#logSendQueueCrossDeviceCommandResult Command is locally hosted: %s, isLibraryPlayback: %s, isCommandSuccessful: %s", v23, 0x20u);
    v35 = v45;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v35, -1, -1);
    v36 = v23;
    v6 = v46;
    MEMORY[0x266784AD0](v36, -1, -1);

    (*(v12 + 8))(v16, v11);
  }

  else
  {

    (*(v12 + 8))(v16, v11);
    v31 = v50;
  }

  if (v17 == 2)
  {
    v37 = -1;
    if ((v49 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    v38 = 1;
    v39 = 1;
    if (v31)
    {
      goto LABEL_32;
    }

LABEL_31:
    v39 = 0;
    goto LABEL_32;
  }

  v37 = v17 & 1;
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_27:
  v38 = 0;
  if ((v31 & 1) == 0)
  {
    goto LABEL_31;
  }

  v39 = 1;
LABEL_32:
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v40 = swift_allocObject();
  v41 = MEMORY[0x277D83B88];
  *(v40 + 16) = xmmword_2664E36E0;
  v42 = MEMORY[0x277D83C10];
  *(v40 + 56) = v41;
  *(v40 + 64) = v42;
  *(v40 + 32) = v37;
  *(v40 + 96) = v41;
  *(v40 + 104) = v42;
  *(v40 + 72) = v38;
  *(v40 + 136) = v41;
  *(v40 + 144) = v42;
  *(v40 + 112) = v39;
  v43 = v47;
  sub_2664DFDF8();
  sub_2664DFDC8();

  return (*(v48 + 8))(v43, v6);
}

uint64_t sub_26649D1B0(id *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a4;
  v16 = a3;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*a1 integerValue];
  v11 = sub_2664DFD58();
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2664E34E0;
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v10;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 72) = v11;
  sub_2664DFDF8();
  sub_2664DFDC8();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26649D3A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X8>)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_9;
  }

  if (!*(sub_2664DFD38() + 16))
  {

LABEL_9:
    v18 = 19;
    goto LABEL_10;
  }

  sub_2662A3E98(a3, a4);
  v17 = v16;

  if (v17)
  {
    v18 = 12;
  }

  else
  {
    v18 = 19;
  }

LABEL_10:
  v26 = v18;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v19, v10);
  v20 = v26;
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v20;
    _os_log_impl(&dword_26629C000, v21, v22, "MediaPlaybackProvider#determineDomainCode: %ld", v23, 0xCu);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  result = swift_beginAccess();
  *a5 = v26;
  return result;
}

uint64_t sub_26649D5F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2664DFD48();
  sub_2662D2EBC();
  v3 = sub_2664E09B8();

  return v3 & 1;
}

uint64_t sub_26649D67C(unint64_t a1, uint64_t (*a2)(void *), uint64_t a3)
{
  v7 = *v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  if ((sub_2664AEEB4(0, a1) & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v24, v8);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackProvider#prepareForSetQueue preventing re-send MRMediaRemoteCommandPrepareForSetQueue for same Siri request", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    goto LABEL_18;
  }

  if (!MRMediaRemoteIsMusicAppInstalled())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v16, v28, v8);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "MediaPlaybackProvider#prepareForSetQueue MusicApp NOT installed, not issuing MRMediaRemoteCommandPrepareForSetQueue", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v9 + 8))(v16, v8);
LABEL_18:
    memset(v32, 0, sizeof(v32));
    return a2(v32);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v18, v19, v8);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06E8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "MediaPlaybackProvider#prepareForSetQueue...", v22, 2u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v9 + 8))(v18, v8);

  sub_2664B5C78(a1, a2, a3, v7);
}

uint64_t sub_26649DAEC(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = a5;
  v118 = a4;
  v117 = a3;
  v131 = sub_2664E0038();
  v137 = *(v131 - 8);
  v7 = *(v137 + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2664E00B8();
  v136 = *(v129 - 8);
  v9 = *(v136 + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2664DE438();
  v126 = *(v128 - 8);
  v11 = *(v126 + 64);
  v12 = MEMORY[0x28223BE20](v128);
  v124 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v13;
  MEMORY[0x28223BE20](v12);
  v125 = &v102 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v116 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v120 = &v102 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v102 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v102 - v25;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v28 = v16[2];
  v134 = v16 + 2;
  v135 = v27;
  v133 = v28;
  v28(v26, v27, v15);
  v29 = a1;

  v30 = sub_2664DFE18();
  v31 = sub_2664E06E8();

  v32 = os_log_type_enabled(v30, v31);
  v119 = v15;
  v122 = v16;
  v132 = a2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock = v35;
    *v33 = 136446722;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v33 + 4) = sub_2662A320C(qword_280072E18, unk_280072E20, &aBlock);
    *(v33 + 12) = 2112;
    *(v33 + 14) = v29;
    *v34 = v29;
    *(v33 + 22) = 2080;
    type metadata accessor for CFString(0);
    sub_2664B67D0(&qword_280071F78, type metadata accessor for CFString);
    v36 = v29;
    v37 = sub_2664E01D8();
    v39 = sub_2662A320C(v37, v38, &aBlock);

    *(v33 + 24) = v39;
    _os_log_impl(&dword_26629C000, v30, v31, "MediaPlaybackProvider#prepareForSetQueue %{public}s MRMediaRemoteCommandPrepareForSetQueue for destination: %@ with options: %s", v33, 0x20u);
    sub_2662A9238(v34, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);

    v40 = v122[1];
    v15 = v119;
    v40(v26, v119);
  }

  else
  {

    v40 = v16[1];
    v40(v26, v15);
  }

  if (qword_280071CC8 != -1)
  {
    swift_once();
  }

  v115 = qword_280073F70;
  if (qword_280071CD0 != -1)
  {
    swift_once();
  }

  v113 = qword_280073F78;
  v133(v24, v135, v15);
  v41 = sub_2664DFE18();
  v42 = sub_2664E06B8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 134218498;
    *(v43 + 4) = 19;
    *(v43 + 12) = 2048;
    *(v43 + 14) = 3;
    *(v43 + 22) = 2080;
    *(v43 + 24) = sub_2662A320C(0x74754F64656D6974, 0xE800000000000000, &aBlock);
    _os_log_impl(&dword_26629C000, v41, v42, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v43, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x266784AD0](v44, -1, -1);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v40(v24, v15);
  v45 = swift_allocObject();
  v46 = v132;
  v45[2] = v29;
  v45[3] = v46;
  v121 = v45;
  v45[4] = v114;
  v47 = v120;
  v133(v120, v135, v15);
  v48 = v29;

  v49 = sub_2664DFE18();
  v50 = sub_2664E06C8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    aBlock = v52;
    *v51 = 136446466;
    *(v51 + 4) = sub_2662A320C(0xD000000000000028, 0x80000002664FAFF0, &aBlock);
    *(v51 + 12) = 2050;
    *(v51 + 14) = 5000;
    _os_log_impl(&dword_26629C000, v49, v50, "Completions#timeout protecting completion: %{public}s with timeout: %{public}ldms", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x266784AD0](v52, -1, -1);
    MEMORY[0x266784AD0](v51, -1, -1);
  }

  v40(v47, v15);
  v53 = v125;
  sub_2664DE428();
  v54 = dispatch_group_create();
  v55 = swift_allocObject();
  v112 = xmmword_2664EF4E0;
  *(v55 + 16) = xmmword_2664EF4E0;
  v120 = v55;
  *(v55 + 32) = 0xE800000000000000;
  aBlock = 0;
  v140 = 0xE000000000000000;

  sub_2664E0B28();

  aBlock = 0xD00000000000001ALL;
  v140 = 0x80000002664F44D0;
  MEMORY[0x2667833B0](0xD000000000000028, 0x80000002664FAFF0);
  v56 = aBlock;
  v57 = v140;
  type metadata accessor for AtomicOnce();
  v58 = swift_allocObject();
  *(v58 + 24) = 0;
  *(v58 + 32) = v56;
  *(v58 + 40) = v57;
  v59 = qword_280F91468;

  v132 = 0x80000002664FAFF0;
  if (v59 != -1)
  {
    swift_once();
  }

  v60 = qword_280F91470;
  v142 = type metadata accessor for SiriKitTaskLoggingProvider();
  v143 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v60;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  *(v58 + 16) = PThreadMutex.init(name:abortOnFail:analyticsService:)(v56, v57, 1, &aBlock);
  dispatch_group_enter(v54);
  v61 = v54;
  v62 = v126;
  v63 = *(v126 + 16);
  v64 = v124;
  v65 = v128;
  v111 = v126 + 16;
  v110 = v63;
  v63(v124, v53, v128);
  v66 = *(v62 + 80);
  v108 = ~v66;
  v67 = (v66 + 56) & ~v66;
  v68 = (v123 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = v66;
  v69 = swift_allocObject();
  v70 = v121;
  *(v69 + 2) = sub_2664B67AC;
  *(v69 + 3) = v70;
  *(v69 + 4) = v58;
  *(v69 + 5) = 0xD000000000000028;
  *(v69 + 6) = v132;
  v109 = *(v62 + 32);
  v109(&v69[v67], v64, v65);
  *&v69[v68] = v120;
  *&v69[(v68 + 15) & 0xFFFFFFFFFFFFFFF8] = v61;
  v143 = sub_2664B67B8;
  v144 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_2662A3F90;
  v142 = &block_descriptor_219;
  v71 = _Block_copy(&aBlock);

  v114 = v58;

  v106 = v61;
  v72 = v127;
  sub_2664E0068();
  v138 = MEMORY[0x277D84F90];
  v73 = sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v75 = sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v76 = v130;
  v105 = v74;
  v104 = v75;
  v77 = v131;
  v107 = v73;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v72, v76, v71);
  _Block_release(v71);
  v78 = *(v137 + 8);
  v137 += 8;
  v113 = v78;
  v78(v76, v77);
  v79 = *(v136 + 8);
  v136 += 8;
  v103 = v79;
  v79(v72, v129);

  v80 = v116;
  v81 = v119;
  v133(v116, v135, v119);
  v82 = sub_2664DFE18();
  v83 = sub_2664E06E8();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    aBlock = v85;
    *v84 = 136446210;
    *(v84 + 4) = sub_2662A320C(0xD000000000000028, v132, &aBlock);
    _os_log_impl(&dword_26629C000, v82, v83, "Completions#timeout waiting for completion: %{public}s...", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x266784AD0](v85, -1, -1);
    MEMORY[0x266784AD0](v84, -1, -1);
  }

  (v122[1])(v80, v81);
  v86 = v124;
  v87 = v125;
  v88 = v128;
  v110(v124, v125, v128);
  v89 = (v102 + 72) & v108;
  v90 = v89 + v123;
  v91 = (((v89 + v123) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  v93 = v106;
  *(v92 + 16) = v106;
  *(v92 + 24) = xmmword_2664EF4F0;
  *(v92 + 40) = v132;
  *(v92 + 48) = v112;
  *(v92 + 64) = 0xE800000000000000;
  v109((v92 + v89), v86, v88);
  *(v92 + v90) = 0;
  v94 = v92 + (v90 & 0xFFFFFFFFFFFFFFF8);
  v95 = v118;
  *(v94 + 8) = v117;
  *(v94 + 16) = v95;
  *(v92 + v91) = v120;
  v143 = sub_2664B6818;
  v144 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_2662A3F90;
  v142 = &block_descriptor_225;
  v96 = _Block_copy(&aBlock);

  v97 = v93;

  v98 = v127;
  sub_2664E0068();
  v138 = MEMORY[0x277D84F90];
  v100 = v130;
  v99 = v131;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v98, v100, v96);
  _Block_release(v96);

  v113(v100, v99);
  v103(v98, v129);
  (*(v126 + 8))(v87, v88);
}

uint64_t sub_26649EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v14 = (v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "mediaPlaybackProviderCommandPrepareForSetQueue";
  *(v15 + 24) = 46;
  *(v15 + 32) = 2;
  (*(v6 + 32))(v15 + v13, v9, v5);
  v16 = (v15 + v14);
  v17 = v22;
  *v16 = v21;
  v16[1] = v17;

  sub_2664E0848();
  sub_2664DFDC8();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2664B7414;
  *(v18 + 24) = v15;

  sub_26649EE14(sub_2664B7418, v18, v23, v24, v25);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_26649EE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a3;
  v25 = a1;
  v26 = a2;
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  sub_2664DE428();
  v24 = [objc_allocWithZone(MEMORY[0x277D27828]) init];
  sub_2663178D4(a4);
  v13 = sub_2664E01A8();

  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v7 + 32))(v17 + v14, v10, v6);
  v18 = (v17 + v15);
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  *(v17 + v16) = v27;
  aBlock[4] = sub_2664B695C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2663A0C48;
  aBlock[3] = &block_descriptor_239;
  v20 = _Block_copy(aBlock);

  v21 = v24;
  [v24 sendCommandWithResult:132 toDestination:v28 withOptions:v13 completion:v20];
  _Block_release(v20);

  return (*(v7 + 8))(v12, v6);
}

void sub_26649F0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a3;
  v98 = a2;
  v10 = sub_2664E0038();
  v103 = *(v10 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v10);
  v101 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2664E00B8();
  v100 = *(v102 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v99 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2664DE438();
  v88 = *(v89 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v17);
  v91 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v85 = &v84 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v84 - v25;
  v106 = v24;
  v109 = v18;
  v96 = a6;
  if (a1)
  {
    v27 = [a1 error];
    v28 = [a1 returnStatuses];
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v110 = sub_2664E04A8();

    v29 = [a1 commandResult];
    v30 = [v29 resultStatuses];

    sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);
    v31 = sub_2664E04A8();

    v17 = v106;
    v18 = v109;
    v95 = [a1 commandResult];
  }

  else
  {
    v95 = 0;
    v31 = 0;
    v110 = 0;
    v27 = 0;
  }

  v97 = v27;
  v107 = 0x80000002664FAFF0;
  v32 = swift_allocObject();
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  v108 = v32;

  v94 = sub_2664B2034();
  v93 = v33;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v92 = 0x80000002664F3330;
  v34 = __swift_project_value_buffer(v17, qword_280F914F0);
  swift_beginAccess();
  v86 = v18[2];
  v86(v26, v34, v17);

  v35 = v18;
  v36 = v110;

  v37 = v17;
  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();

  v40 = os_log_type_enabled(v38, v39);
  v104 = v10;
  v105 = v31;
  if (v40)
  {
    v84 = v26;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136446978;
    *(v41 + 4) = sub_2662A320C(0xD000000000000028, v107, aBlock);
    *(v41 + 12) = 2082;
    if (qword_280071AF8 != -1)
    {
      swift_once();
    }

    *(v41 + 14) = sub_2662A320C(qword_280072E18, unk_280072E20, aBlock);
    *(v41 + 22) = 2082;
    v43 = MEMORY[0x277D84F90];
    if (v36)
    {
      v44 = v36;
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    v45 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);

    v46 = MEMORY[0x2667834D0](v44, v45);
    v48 = v47;

    v49 = sub_2662A320C(v46, v48, aBlock);

    *(v41 + 24) = v49;
    *(v41 + 32) = 2082;
    if (v105)
    {
      v50 = v105;
    }

    else
    {
      v50 = v43;
    }

    v51 = sub_2662C1744(0, &qword_280073FE0, 0x277D27A08);

    v52 = MEMORY[0x2667834D0](v50, v51);
    v54 = v53;

    v55 = sub_2662A320C(v52, v54, aBlock);

    *(v41 + 34) = v55;
    _os_log_impl(&dword_26629C000, v38, v39, "%{public}s %{public}s - Result codes: %{public}s, Extended status type: %{public}s", v41, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v42, -1, -1);
    MEMORY[0x266784AD0](v41, -1, -1);

    v56 = v109[1];
    v57 = v106;
    v56(v84, v106);
  }

  else
  {
    v110 = v36;

    v56 = v35[1];
    v56(v26, v37);
    v57 = v37;
  }

  v58 = v87;
  sub_2664DE428();
  sub_2664DE388();
  v60 = v59;
  (*(v88 + 8))(v58, v89);
  v61 = v91;
  if (v60 >= 4.0)
  {
    v86(v91, v34, v57);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06D8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v64 = 136446722;
      *(v64 + 4) = sub_2662A320C(0xD000000000000028, v107, aBlock);
      *(v64 + 12) = 2082;
      v66 = v97;
      v67 = v108;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v64 + 14) = sub_2662A320C(qword_280072E18, unk_280072E20, aBlock);
      *(v64 + 22) = 2050;
      *(v64 + 24) = v60;
      v68 = "%{public}s %{public}s completed in %{public}f seconds (logging at error for timing visibility)";
      goto LABEL_26;
    }
  }

  else
  {
    v61 = v85;
    v86(v85, v34, v57);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06E8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v64 = 136446722;
      *(v64 + 4) = sub_2662A320C(0xD000000000000028, v107, aBlock);
      *(v64 + 12) = 2082;
      v66 = v97;
      v67 = v108;
      if (qword_280071AF8 != -1)
      {
        swift_once();
      }

      *(v64 + 14) = sub_2662A320C(qword_280072E18, unk_280072E20, aBlock);
      *(v64 + 22) = 2050;
      *(v64 + 24) = v60;
      v68 = "%{public}s %{public}s completed in %{public}f seconds";
LABEL_26:
      _os_log_impl(&dword_26629C000, v62, v63, v68, v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);

      v56(v61, v106);
      goto LABEL_28;
    }
  }

  v56(v61, v57);
  v66 = v97;
  v67 = v108;
LABEL_28:
  v69 = swift_allocObject();
  v70 = v107;
  *(v69 + 16) = 0xD000000000000028;
  *(v69 + 24) = v70;
  v71 = v92;
  *(v69 + 32) = 0xD000000000000026;
  *(v69 + 40) = v71;
  v72 = v96;
  v73 = v95;
  *(v69 + 48) = v96;
  *(v69 + 56) = v73;
  *(v69 + 64) = 2;
  *(v69 + 72) = sub_2664B6A0C;
  *(v69 + 80) = v67;
  v74 = v73;

  v75 = v110;
  sub_2664949C8(0xD000000000000026, v71, v66, v110, v73, 0, sub_2664B6A14, v69);

  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v76 = swift_allocObject();
  *(v76 + 16) = v72;
  *(v76 + 24) = v98;
  *(v76 + 32) = 0xD000000000000028;
  *(v76 + 40) = v70;
  *(v76 + 48) = 0xD000000000000026;
  *(v76 + 56) = v71;
  *(v76 + 64) = v66;
  v77 = v105;
  *(v76 + 72) = v75;
  *(v76 + 80) = v77;
  *(v76 + 88) = v73;
  *(v76 + 96) = "mediaPlaybackProviderStatusPrepareForSetQueue";
  *(v76 + 104) = 45;
  *(v76 + 112) = 2;
  v78 = v93;
  *(v76 + 120) = v94;
  *(v76 + 128) = v78;
  aBlock[4] = sub_2664B6A18;
  aBlock[5] = v76;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_251;
  v79 = _Block_copy(aBlock);

  v109 = v74;

  v80 = v66;
  v81 = v99;
  sub_2664E0068();
  v111 = MEMORY[0x277D84F90];
  sub_2664B67D0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v82 = v101;
  v83 = v104;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v81, v82, v79);
  _Block_release(v79);
  (*(v103 + 8))(v82, v83);
  (*(v100 + 8))(v81, v102);
}