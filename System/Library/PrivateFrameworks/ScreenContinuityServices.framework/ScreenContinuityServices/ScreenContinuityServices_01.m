uint64_t sub_2648A0BF8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D78, &qword_2648BAA08) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D60, &unk_2648BA9E8) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2648913EC;

  return sub_26489F920(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_2648A0D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DE0, &qword_2648BAC50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *&v77 = &v66 - v8;
  v9 = sub_2648B89B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  *&v76 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v70 = sub_2648B8964();
  v16 = *(v70 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v70);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2648B88D4();
  v67 = *(v68 - 8);
  v20 = *(v67 + 64);
  v21 = MEMORY[0x28223BE20](v68);
  v78 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v82 = &v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DE8, &unk_2648BAC58);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v66 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE0, &unk_2648B9CD0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v81 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v66 - v32;
  sub_2648B8974();
  if (v34)
  {
    v35 = sub_2648B8AC4();
    (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
    sub_2648B8AD4();
  }

  else
  {
    v36 = sub_2648B8AE4();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  }

  sub_2648B8994();
  v37 = v78;
  sub_2648B89D4();
  v38 = sub_2648B89E4();
  v74 = v39;
  v75 = v38;
  sub_264893A10(v33, v81, &qword_27FF81BE0, &unk_2648B9CD0);
  v73 = sub_2648B8984();
  v72 = v40;
  v71 = sub_2648B8A44();
  sub_2648B89A4();
  v69 = sub_2648B8954();
  (*(v16 + 8))(v19, v70);
  sub_2648B89C4();
  v41 = v76;
  (*(v10 + 32))(v76, v15, v9);
  v42 = (*(v10 + 88))(v41, v9);
  if (v42 == *MEMORY[0x277D46768])
  {
    v43 = v33;
    (*(v10 + 96))(v41, v9);
    v44 = 3;
    v10 = v67;
    v9 = v68;
    v45 = v77;
LABEL_6:
    (*(v10 + 8))(v41, v9);
    goto LABEL_14;
  }

  v45 = v77;
  if (v42 == *MEMORY[0x277D46748])
  {
    v43 = v33;
    v44 = 0;
  }

  else if (v42 == *MEMORY[0x277D46758])
  {
    v43 = v33;
    v44 = 1;
  }

  else
  {
    v43 = v33;
    if (v42 == *MEMORY[0x277D46750])
    {
      v44 = 2;
    }

    else
    {
      v44 = 4;
      if (v42 != *MEMORY[0x277D46760])
      {
        goto LABEL_6;
      }
    }
  }

LABEL_14:
  v89[0] = v44;
  sub_2648B8A34();
  v46 = sub_2648B8A24();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v45, 1, v46);
  if (v48 == 1)
  {
    sub_264891214(v45, &qword_27FF81DE0, &qword_2648BAC50);
    v49 = 0;
    v50 = 0uLL;
    v51 = 0uLL;
  }

  else
  {
    sub_2648B8A04();
    v53 = v52;
    v55 = v54;
    sub_2648B8A14();
    v57 = v56;
    v58 = sub_2648B89F4();
    sub_2648917A0(v58, v59 & 1, &v85, v53, v55, v57);
    v76 = v86;
    v77 = v85;
    v49 = v87;
    (*(v47 + 8))(v45, v46);
    v51 = v76;
    v50 = v77;
  }

  v60 = v48 == 1;
  v85 = v50;
  v86 = v51;
  v61 = v69 > 8;
  v87 = v49;
  v88 = v60;
  v84 = 4;
  v83 = 2;
  v62 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v63 = v79;
  (*(*(v62 - 8) + 56))(v79, 1, 1, v62);
  sub_264892378(v82, v37, v75, v74, v81, v73, v72, v71 & 1, v80, 1, v61, v89, &v85, &v84, &v83, v63);
  v64 = sub_2648B8A54();
  (*(*(v64 - 8) + 8))(a1, v64);
  return sub_264891214(v43, &qword_27FF81BE0, &unk_2648B9CD0);
}

uint64_t sub_2648A153C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CompanionDevice(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_2648A4FA0(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_26489CB48(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_26489CAE4(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2648A5004(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_2648A5004(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_26489CAE4(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_26489CB48(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_2648A1764()
{
  v0 = sub_2648B8B14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648A57B8();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Combined stream terminated", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_2648B8D74();
}

uint64_t sub_2648A18EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2648A190C, v1, 0);
}

uint64_t sub_2648A190C(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  sub_2648A5614(&qword_27FF81D80, a2, type metadata accessor for ReplicatorController);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_2648A1A40;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2648A1A40()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_2648A1B7C;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_2648A1B64;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2648A1B7C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2648A1C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v56 = *(v5 - 8);
  v57 = v5;
  v54 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v47 - v6;
  v7 = sub_2648B88D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v52 = v11;
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = sub_2648B8B14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2648A57B8();
  (*(v15 + 16))(v18, v19, v14);
  v60 = v8;
  v61 = v7;
  v20 = a2;
  v51 = *(v8 + 16);
  v51(v13, a2, v7);
  v21 = sub_2648B8AF4();
  v22 = sub_2648B8E44();
  v23 = os_log_type_enabled(v21, v22);
  v59 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v50 = a1;
    v25 = v24;
    v49 = swift_slowAlloc();
    v62 = v49;
    *v25 = 136315138;
    sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0]);
    v48 = v14;
    v26 = v61;
    v27 = sub_2648B9114();
    v29 = v28;
    (*(v60 + 8))(v13, v26);
    v30 = sub_26488EB20(v27, v29, &v62);
    v20 = v59;

    *(v25 + 4) = v30;
    _os_log_impl(&dword_264887000, v21, v22, "Will pair device with ID %s", v25, 0xCu);
    v31 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x2667439C0](v31, -1, -1);
    v32 = v25;
    a1 = v50;
    MEMORY[0x2667439C0](v32, -1, -1);

    (*(v15 + 8))(v18, v48);
  }

  else
  {

    (*(v60 + 8))(v13, v61);
    (*(v15 + 8))(v18, v14);
  }

  v33 = sub_2648B8944();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v50 = sub_2648B8934();
  v36 = v53;
  v37 = v61;
  v51(v53, v20, v61);
  v39 = v55;
  v38 = v56;
  v40 = v57;
  (*(v56 + 16))(v55, a1, v57);
  v41 = v60;
  v42 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v43 = (v52 + *(v38 + 80) + v42) & ~*(v38 + 80);
  v44 = (v54 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v41 + 32))(v45 + v42, v36, v37);
  (*(v38 + 32))(v45 + v43, v39, v40);
  *(v45 + v44) = v58;

  sub_2648B8914();
}

uint64_t sub_2648A2104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v49 = a3;
  v6 = sub_2648B8B14();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v47 - v12;
  v53 = sub_2648B88D4();
  v13 = *(v53 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v53);
  v16 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v47 - v21;
  if (a1)
  {
    v48 = v9;
    v23 = a1;
    v24 = sub_2648A57B8();
    (*(v51 + 16))(v50, v24, v52);
    v25 = v53;
    (*(v13 + 16))(v16, a2, v53);
    v26 = a1;
    v27 = sub_2648B8AF4();
    v28 = sub_2648B8E34();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v54 = v31;
      *v29 = 136315394;
      sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0]);
      v32 = sub_2648B9114();
      v33 = v25;
      v35 = v34;
      (*(v13 + 8))(v16, v33);
      v36 = sub_26488EB20(v32, v35, &v54);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2112;
      v37 = a1;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v38;
      *v30 = v38;
      _os_log_impl(&dword_264887000, v27, v28, "Pairing device %s failed: %@", v29, 0x16u);
      sub_264891214(v30, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x2667439C0](v31, -1, -1);
      MEMORY[0x2667439C0](v29, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v25);
    }

    (*(v51 + 8))(v50, v52);
    v54 = a1;
    return sub_2648B8CC4();
  }

  else
  {
    v39 = sub_2648B8D14();
    (*(*(v39 - 8) + 56))(v22, 1, 1, v39);
    (*(v13 + 16))(v18, a2, v53);
    (*(v10 + 16))(v48, v49, v9);
    v41 = sub_2648A5614(&qword_27FF81D80, v40, type metadata accessor for ReplicatorController);
    v42 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v43 = (v14 + *(v10 + 80) + v42) & ~*(v10 + 80);
    v44 = swift_allocObject();
    v45 = v47;
    *(v44 + 2) = v47;
    *(v44 + 3) = v41;
    *(v44 + 4) = v45;
    (*(v13 + 32))(&v44[v42], v18, v53);
    (*(v10 + 32))(&v44[v43], v48, v9);
    swift_retain_n();
    sub_26488BD30(0, 0, v22, &unk_2648BAC20, v44);
  }
}

uint64_t sub_2648A26DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D88, &qword_2648BAA58);
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = sub_2648B88D4();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v6[12] = *(v12 + 64);
  v6[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D90, &qword_2648BAA60);
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D98, &unk_2648BAA68);
  v6[18] = v16;
  v17 = *(v16 - 8);
  v6[19] = v17;
  v18 = *(v17 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A28FC, a4, 0);
}

uint64_t sub_2648A28FC()
{
  v1 = *(v0 + 136);
  v12 = *(v0 + 128);
  v13 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 40);
  (*(**(v0 + 32) + 88))();
  (*(v6 + 16))(v5, v8, v7);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v5, v7);
  (*(v3 + 16))(v12, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  sub_26488E39C(&qword_280F78FA0, &qword_27FF81D90, &qword_2648BAA60);
  sub_2648B8FF4();
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x2822009F8](sub_2648A2AD4, 0, 0);
}

uint64_t sub_2648A2AD4()
{
  v1 = v0[9];
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  sub_26488E39C(&qword_27FF81DA8, &qword_27FF81D98, &unk_2648BAA68);
  sub_2648B8D84();
  v2 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_2648A2C18;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v6, v2);
}

uint64_t sub_2648A2C18()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_2648A2D58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2648A2D58()
{
  v1 = v0[2];
  v0[23] = v1;
  if (!v1)
  {
    v2 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v3 = sub_2648A2FC4;
    goto LABEL_5;
  }

  if (*(v1 + 16))
  {
    v2 = v0[4];
    (*(v0[8] + 8))(v0[9], v0[7]);
    v3 = sub_2648A2ED8;
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  v4 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58);
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_2648A2C18;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x282200308](v0 + 2, v8, v4);
}

uint64_t sub_2648A2ED8()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  sub_2648B8CD4();
  (*(v4 + 8))(v2, v3);
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[13];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2648A2FC4()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[6];
  sub_2648A4D60();
  v0[3] = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B");
  sub_2648B8CC4();
  (*(v3 + 8))(v1, v2);
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[13];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2648A30D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_2648A30F8, 0, 0);
}

uint64_t sub_2648A30F8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;

  v5 = sub_2648A153C(sub_2648A55B4, v4, v1);

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_2648A31B4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D88, &qword_2648BAA58);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D90, &qword_2648BAA60);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D98, &unk_2648BAA68);
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v12 = sub_2648B88D4();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v2[18] = *(v13 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v14 = sub_2648B8B14();
  v2[22] = v14;
  v15 = *(v14 - 8);
  v2[23] = v15;
  v16 = *(v15 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A3458, v1, 0);
}

uint64_t sub_2648A3458()
{
  v62 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[3];
  v8 = sub_2648A57B8();
  v0[27] = v8;
  v9 = *(v3 + 16);
  v0[28] = v9;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57 = v8;
  v55 = v9;
  v9(v1);
  v10 = *(v5 + 16);
  v0[30] = v10;
  v0[31] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v60 = v10;
  v10(v4, v7, v6);
  v11 = sub_2648B8AF4();
  v12 = sub_2648B8E44();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[26];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[21];
  v19 = v0[16];
  v18 = v0[17];
  if (v13)
  {
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v61 = v53;
    *v20 = 136315138;
    sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0]);
    v49 = v16;
    v51 = v14;
    v21 = sub_2648B9114();
    v23 = v22;
    v48 = v12;
    v24 = *(v18 + 8);
    v24(v17, v19);
    v25 = sub_26488EB20(v21, v23, &v61);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_264887000, v11, v48, "Will unpair device with ID %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x2667439C0](v53, -1, -1);
    MEMORY[0x2667439C0](v20, -1, -1);

    v26 = *(v15 + 8);
    v26(v51, v49);
  }

  else
  {

    v24 = *(v18 + 8);
    v24(v17, v19);
    v26 = *(v15 + 8);
    v26(v14, v16);
  }

  v0[32] = v24;
  v0[33] = v26;
  v27 = v0[3];
  v28 = sub_2648B8944();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v0[34] = sub_2648B8934();
  sub_2648B8924();
  v55(v0[25], v57, v0[22]);
  v31 = sub_2648B8AF4();
  v32 = sub_2648B8E44();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_264887000, v31, v32, "Waiting for paired device to be removed", v33, 2u);
    MEMORY[0x2667439C0](v33, -1, -1);
  }

  v34 = v0[25];
  v35 = v0[22];
  v36 = v0[23];
  v37 = v0[17];
  v52 = v0[20];
  v54 = v0[18];
  v50 = v0[16];
  v38 = v0[11];
  v56 = v0[10];
  v39 = v0[9];
  v58 = v0[8];
  v59 = v0[15];
  v40 = v31;
  v42 = v0[3];
  v41 = v0[4];

  v43 = (v26)(v34, v35);
  v44 = v38;
  (*(*v41 + 88))(v43);
  v60(v52, v42, v50);
  v45 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v46 = swift_allocObject();
  (*(v37 + 32))(v46 + v45, v52, v50);
  (*(v39 + 16))(v56, v44, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81CC0, &qword_2648BA550);
  sub_26488E39C(&qword_280F78FA0, &qword_27FF81D90, &qword_2648BAA60);
  sub_2648B8FF4();
  (*(v39 + 8))(v44, v58);

  return MEMORY[0x2822009F8](sub_2648A3C58, 0, 0);
}

uint64_t sub_2648A3C58()
{
  v1 = v0[7];
  (*(v0[13] + 16))(v0[14], v0[15], v0[12]);
  sub_26488E39C(&qword_27FF81DA8, &qword_27FF81D98, &unk_2648BAA68);
  sub_2648B8D84();
  v2 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_2648A3D9C;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x282200308](v0 + 2, v6, v2);
}

uint64_t sub_2648A3D9C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];

    (*(v5 + 8))(v4, v6);
    v7 = j_nullsub_1;
  }

  else
  {
    v7 = sub_2648A3EDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2648A3EDC()
{
  v1 = v0[2];
  v0[36] = v1;
  if (v1)
  {
    if (*(v1 + 16))
    {

      v2 = sub_26488E39C(&qword_27FF81DB0, &qword_27FF81D88, &qword_2648BAA58);
      v3 = *(MEMORY[0x277D856D0] + 4);
      v4 = swift_task_alloc();
      v0[35] = v4;
      *v4 = v0;
      v4[1] = sub_2648A3D9C;
      v5 = v0[7];
      v6 = v0[5];

      return MEMORY[0x282200308](v0 + 2, v6, v2);
    }

    v7 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);
    v8 = sub_2648A4054;
  }

  else
  {
    v7 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);
    v8 = sub_2648A4180;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2648A4054()
{
  v1 = v0[36];
  v2 = v0[34];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[15];
  v13 = v0[19];
  v14 = v0[14];
  v10 = v0[12];
  v9 = v0[13];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[7];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2648A4180()
{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  sub_2648A4D60();
  v5 = swift_allocError();
  swift_willThrow();

  (*(v3 + 8))(v2, v4);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 232);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 24);
  (*(v0 + 224))(*(v0 + 192), *(v0 + 216), *(v0 + 176));
  v7(v9, v11, v10);
  v12 = v5;
  v13 = sub_2648B8AF4();
  v14 = sub_2648B8E34();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v18 = *(v0 + 184);
  v19 = *(v0 + 192);
  v47 = *(v0 + 176);
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 136);
  if (v15)
  {
    v44 = *(v0 + 192);
    v23 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v23 = 136446466;
    sub_2648A5614(&qword_27FF81DA0, 255, MEMORY[0x277CC95F0]);
    v41 = v17;
    v24 = sub_2648B9114();
    v39 = v14;
    v26 = v25;
    v16(v20, v21);
    v27 = sub_26488EB20(v24, v26, &v49);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2114;
    v28 = v5;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v29;
    *v40 = v29;
    _os_log_impl(&dword_264887000, v13, v39, "Failed to unpair device with ID %{public}s: %{public}@", v23, 0x16u);
    sub_264891214(v40, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x2667439C0](v42, -1, -1);
    MEMORY[0x2667439C0](v23, -1, -1);

    v41(v44, v47);
  }

  else
  {

    v16(v20, v21);
    v17(v19, v47);
  }

  v31 = *(v0 + 200);
  v30 = *(v0 + 208);
  v32 = *(v0 + 192);
  v34 = *(v0 + 160);
  v33 = *(v0 + 168);
  v35 = *(v0 + 152);
  v36 = *(v0 + 120);
  v43 = *(v0 + 112);
  v45 = *(v0 + 88);
  v46 = *(v0 + 80);
  v48 = *(v0 + 56);
  swift_willThrow();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2648A4524(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_2648A454C, 0, 0);
}

uint64_t sub_2648A454C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;

  v5 = sub_2648A153C(sub_2648A5660, v4, v1);

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_2648A4608(uint64_t a1)
{
  v2 = sub_2648B88D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CompanionDevice.id.getter(v5);
  v8 = sub_2648B88A4();
  (*(v3 + 8))(v7, v2);
  if ((v8 & 1) != 0 && (v9 = *(a1 + *(type metadata accessor for CompanionDevice(0) + 48)), v9 != 4))
  {
    v12[15] = v9;
    v12[14] = 2;
    sub_264893BEC();
    v10 = sub_2648B8BE4();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2648A4740()
{
  v2 = sub_2648B8B14();
  v1[2] = v2;
  v3 = *(v2 - 8);
  v1[3] = v3;
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A4808, v0, 0);
}

uint64_t sub_2648A4808()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v0[3];
  v4 = sub_2648A57B8();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2648B8AF4();
  v6 = sub_2648B8E44();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_264887000, v5, v6, "Will try to get replicator relationships unstuck", v7, 2u);
    MEMORY[0x2667439C0](v7, -1, -1);
  }

  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  (*(v10 + 8))(v8, v9);
  v11 = sub_2648B8944();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_2648B8934();
  sub_2648B8904();

  v15 = v0[4];
  v14 = v0[5];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2648A4A4C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2648A4A7C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_2648A4AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_2648A4FA0(v14, v11);
        sub_2648A4FA0(v15, v8);
        sub_2648A5614(&qword_27FF81C28, 255, type metadata accessor for CompanionDevice);
        v17 = sub_2648B8BE4();
        sub_26489CB48(v8);
        sub_26489CB48(v11);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2648A4C7C(uint64_t a1, void *a2)
{
  v6 = *(sub_2648B88D4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2648913EC;

  return sub_2648A4524(a1, a2, v2 + v7);
}

unint64_t sub_2648A4D60()
{
  result = qword_27FF81DB8;
  if (!qword_27FF81DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81DB8);
  }

  return result;
}

unint64_t sub_2648A4DB8()
{
  result = qword_27FF81DC0;
  if (!qword_27FF81DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81DC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorController.ReplicatorControllerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ReplicatorController.ReplicatorControllerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2648A4EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2648A4F40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2648A4FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompanionDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t sub_2648A5004(size_t a1, int64_t a2, char a3)
{
  result = sub_2648A5024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2648A5024(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81D10, &unk_2648BA8D0);
  v10 = *(type metadata accessor for CompanionDevice(0) - 8);
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
  v15 = *(type metadata accessor for CompanionDevice(0) - 8);
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

uint64_t sub_2648A51FC(void *a1)
{
  v3 = *(sub_2648B88D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B") - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2648A2104(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_2648A5308()
{
  v2 = *(sub_2648B88D4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81DC8, "p\x1B") - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2648913EC;

  return sub_2648A26DC(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t objectdestroy_16Tm()
{
  v1 = sub_2648B88D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2648A54D0(uint64_t a1, void *a2)
{
  v6 = *(sub_2648B88D4() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26488D93C;

  return sub_2648A30D0(a1, a2, v2 + v7);
}

uint64_t sub_2648A55E4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2648A55F0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_2648A5608(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2648A5608(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2648A5614(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2648A57FC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2648B8B14();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2648B8B04();
}

uint64_t sub_2648A5898(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2648B8B14();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_2648A5950()
{
  result = qword_280F78F88;
  if (!qword_280F78F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F78F88);
  }

  return result;
}

uint64_t sub_2648A59C0()
{
  v0 = swift_allocObject();
  sub_2648A59F8();
  return v0;
}

uint64_t sub_2648A59F8()
{
  v12 = sub_2648B8E54();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648B8EB4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2648B8B54();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2648A5950();
  v11[0] = "com.apple.screensharing";
  v11[1] = v9;
  sub_2648B8B44();
  v13 = MEMORY[0x277D84F90];
  sub_2648AA0D4(&qword_280F78F90, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B60, &unk_2648B9A90);
  sub_26488E39C(&qword_280F78FA8, &qword_27FF81B60, &unk_2648B9A90);
  sub_2648B8F24();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v12);
  *(v0 + 16) = sub_2648B8EC4();
  *(v0 + 24) = -70;
  return v0;
}

uint64_t sub_2648A5C64@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD0, &unk_2648BAEC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_2648B88D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RapportController.Change();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = a1;
  v20 = a2;
  v21 = [v20 idsDeviceIdentifier];
  if (!v21)
  {

    return (*(v16 + 56))(a3, 1, 1, v15);
  }

  v28 = v15;
  v29 = a3;
  v22 = v21;
  sub_2648B8C24();

  sub_2648B8884();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_264891214(v9, &qword_27FF81BD0, &unk_2648BAEC0);
    v15 = v28;
    a3 = v29;
    return (*(v16 + 56))(a3, 1, 1, v15);
  }

  (*(v11 + 32))(v14, v9, v10);
  v24 = v28;
  (*(v11 + 16))(&v19[*(v28 + 20)], v14, v10);
  v25 = [v20 proximity];

  (*(v11 + 8))(v14, v10);
  v26 = 0;
  if (v25 == 10)
  {
    v27 = v29;
  }

  else
  {
    v27 = v29;
    if (v25 != 20)
    {
      if (v25 == 30)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }
    }
  }

  v19[*(v24 + 24)] = v26;
  sub_2648AA11C(v19, v27);
  (*(v16 + 56))(v27, 0, 1, v24);
  return sub_2648A9728(v19);
}

uint64_t sub_2648A5FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = &v66[-v5];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E18, &qword_2648BACA0);
  v74 = *(v75 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v66[-v7];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
  v77 = *(v79 - 8);
  v78 = *(v77 + 64);
  v8 = MEMORY[0x28223BE20](v79);
  v76 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v72 = &v66[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E28, &qword_2648BACB0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v66[-v14];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
  v85 = *(v93 - 8);
  v90 = *(v85 + 64);
  v16 = MEMORY[0x28223BE20](v93);
  v18 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v66[-v19];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0);
  v69 = *(v71 - 8);
  v70 = *(v69 + 64);
  v21 = MEMORY[0x28223BE20](v71);
  v68 = &v66[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v86 = &v66[-v23];
  v24 = [objc_allocWithZone(MEMORY[0x277D441E0]) init];
  v83 = v24;
  [v24 setRssiThreshold_];
  [v24 setDispatchQueue_];
  type metadata accessor for RapportController.Change();
  v67 = *MEMORY[0x277D858A0];
  (*(v12 + 104))(v15);
  v25 = v20;
  sub_2648B8D94();
  (*(v12 + 8))(v15, v11);
  v26 = v85;
  v91 = *(v85 + 16);
  v92 = v20;
  v88 = v85 + 16;
  v27 = v93;
  (v91)(v18, v20, v93);
  v28 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v84 = *(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  v30 = *(v26 + 32);
  v89 = v26 + 32;
  v30(v29 + v28, v18, v27);
  v82 = v30;
  v98 = sub_2648A6EBC;
  v99 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v81 = &v96;
  v96 = sub_26488DA30;
  v97 = &block_descriptor_0;
  v31 = _Block_copy(&aBlock);

  v32 = v83;
  [v83 setInterruptionHandler_];
  _Block_release(v31);
  v33 = v25;
  v34 = v91;
  (v91)(v18, v33, v27);
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  v36 = v2;
  v30(v35 + v28, v18, v27);
  v98 = sub_2648A6F44;
  v99 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_2648A6F54;
  v97 = &block_descriptor_6;
  v37 = _Block_copy(&aBlock);

  [v32 setDeviceFoundHandler_];
  _Block_release(v37);
  v39 = v92;
  v38 = v93;
  v34(v18, v92, v93);
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  v82(v40 + v28, v18, v38);
  v98 = sub_2648A74AC;
  v99 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_2648A6F54;
  v97 = &block_descriptor_12;
  v41 = _Block_copy(&aBlock);

  v42 = v83;
  [v83 setDeviceLostHandler_];
  _Block_release(v41);
  v43 = v93;
  (v91)(v18, v39, v93);
  v44 = v84;
  v45 = swift_allocObject();
  *(v45 + 16) = v36;
  v46 = v82;
  v82(v45 + v28, v18, v43);
  v98 = sub_2648A7C38;
  v99 = v45;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_2648A7CC8;
  v97 = &block_descriptor_18;
  v47 = _Block_copy(&aBlock);

  [v42 setDeviceChangedHandler_];
  _Block_release(v47);
  v48 = v43;
  (v91)(v18, v92, v43);
  v49 = swift_allocObject();
  v46(v49 + ((v44 + 16) & ~v44), v18, v48);
  v98 = sub_2648A8014;
  v99 = v49;
  aBlock = MEMORY[0x277D85DD0];
  v95 = 1107296256;
  v96 = sub_2648A8090;
  v97 = &block_descriptor_24;
  v50 = _Block_copy(&aBlock);

  [v42 activateWithCompletion_];
  _Block_release(v50);
  *(swift_allocObject() + 16) = v42;
  v91 = v42;
  sub_2648B8DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E40, &qword_2648BACC8);
  v51 = v74;
  v52 = v73;
  v53 = v75;
  (*(v74 + 104))(v73, v67, v75);
  v54 = v72;
  sub_2648B8D94();
  (*(v51 + 8))(v52, v53);
  v55 = sub_2648B8D14();
  (*(*(v55 - 8) + 56))(v87, 1, 1, v55);
  v56 = v69;
  v57 = v68;
  v58 = v71;
  (*(v69 + 16))(v68, v86, v71);
  v59 = v77;
  v60 = v76;
  v61 = v79;
  (*(v77 + 16))(v76, v54, v79);
  v62 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v63 = (v70 + *(v59 + 80) + v62) & ~*(v59 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  (*(v56 + 32))(v64 + v62, v57, v58);
  (*(v59 + 32))(v64 + v63, v60, v61);
  sub_26488BD30(0, 0, v87, &unk_2648BACD8, v64);
  sub_2648B8DA4();

  (*(v59 + 8))(v54, v61);
  (*(v85 + 8))(v92, v93);
  return (*(v56 + 8))(v86, v58);
}

uint64_t type metadata accessor for RapportController.Change()
{
  result = qword_27FF835B0;
  if (!qword_27FF835B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2648A6C24(uint64_t a1)
{
  v2 = sub_2648B8B94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2648B8B14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2648A5770();
  (*(v8 + 16))(v11, v12, v7);
  v13 = sub_2648B8AF4();
  v14 = sub_2648B8E44();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21[0] = a1;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_264887000, v13, v14, "Interrupted", v15, 2u);
    a1 = v21[0];
    MEMORY[0x2667439C0](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v17 = *(a1 + 16);
  *v6 = v17;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v18 = v17;
  v19 = sub_2648B8BA4();
  result = (*(v3 + 8))(v6, v2);
  if (v19)
  {
    sub_2648AA180();
    v21[1] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
    return sub_2648B8DD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2648A6EBC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8) - 8) + 80);
  v2 = *(v0 + 16);

  return sub_2648A6C24(v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2648A6F54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2648A6FBC(void *a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  v56 = a5;
  v52 = a4;
  v58 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E78, &qword_2648BAEB8);
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E58, &qword_2648BAE88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v45 - v12;
  v13 = type metadata accessor for RapportController.Change();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v45 - v17;
  v57 = sub_2648B8B94();
  v18 = *(v57 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v57);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2648B8B14();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2648A5770();
  (*(v23 + 16))(v26, v27, v22);
  v28 = a1;
  v29 = sub_2648B8AF4();
  v30 = sub_2648B8E44();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v46 = v7;
    v32 = v31;
    v33 = swift_slowAlloc();
    v47 = a3;
    v34 = v33;
    *v32 = 138543362;
    *(v32 + 4) = v28;
    *v33 = v28;
    v35 = v28;
    _os_log_impl(&dword_264887000, v29, v30, v52, v32, 0xCu);
    sub_264891214(v34, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v34, -1, -1);
    v36 = v32;
    v7 = v46;
    MEMORY[0x2667439C0](v36, -1, -1);
  }

  (*(v23 + 8))(v26, v22);
  v37 = v57;
  v38 = *(v58 + 16);
  *v21 = v38;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v37);
  v39 = v38;
  LOBYTE(v38) = sub_2648B8BA4();
  result = (*(v18 + 8))(v21, v37);
  if (v38)
  {
    v41 = v28;
    v42 = v55;
    sub_2648A5C64(v56, v41, v55);
    if ((*(v53 + 48))(v42, 1, v54) == 1)
    {
      return sub_264891214(v42, &qword_27FF81E58, &qword_2648BAE88);
    }

    else
    {
      v43 = v49;
      sub_2648A96C4(v42, v49);
      sub_2648AA11C(v43, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
      v44 = v50;
      sub_2648B8DC4();
      (*(v51 + 8))(v44, v7);
      return sub_2648A9728(v43);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2648A7548(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v70 = a3;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E78, &qword_2648BAEB8);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E58, &qword_2648BAE88);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v56 - v10;
  v11 = type metadata accessor for RapportController.Change();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v56 - v15;
  v16 = sub_2648B8B94();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_2648B8B14();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v65 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - v26;
  v28 = sub_2648A5770();
  v63 = v22[2];
  v64 = v28;
  v63(v27);
  v29 = a1;
  v30 = sub_2648B8AF4();
  v31 = sub_2648B8E44();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v56 = v21;
    v33 = v32;
    v34 = swift_slowAlloc();
    v71 = v22;
    v35 = v34;
    *v33 = 138543362;
    *(v33 + 4) = v29;
    *v34 = v29;
    v36 = v29;
    _os_log_impl(&dword_264887000, v30, v31, "Device changed: %{public}@", v33, 0xCu);
    sub_264891214(v35, &qword_27FF81BC0, &qword_2648BA080);
    v37 = v35;
    v22 = v71;
    MEMORY[0x2667439C0](v37, -1, -1);
    v38 = v33;
    v21 = v56;
    MEMORY[0x2667439C0](v38, -1, -1);
  }

  v39 = v22[1];
  v71 = v22 + 1;
  v39(v27, v21);
  v40 = *(v70 + 16);
  *v20 = v40;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v41 = v40;
  LOBYTE(v40) = sub_2648B8BA4();
  result = (*(v17 + 8))(v20, v16);
  if (v40)
  {
    if ((v69 & 0x80) != 0)
    {
      v43 = v65;
      (v63)(v65, v64, v21);
      v44 = v29;
      v45 = sub_2648B8AF4();
      v46 = sub_2648B8E44();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = v21;
        v49 = swift_slowAlloc();
        *v47 = 138543362;
        *(v47 + 4) = v44;
        *v49 = v44;
        v50 = v44;
        _os_log_impl(&dword_264887000, v45, v46, "Device proximity changed: %{public}@", v47, 0xCu);
        sub_264891214(v49, &qword_27FF81BC0, &qword_2648BA080);
        v51 = v49;
        v21 = v48;
        MEMORY[0x2667439C0](v51, -1, -1);
        MEMORY[0x2667439C0](v47, -1, -1);
      }

      v39(v43, v21);
      v52 = v44;
      v53 = v68;
      sub_2648A5C64(1, v52, v68);
      if ((*(v66 + 48))(v53, 1, v67) == 1)
      {
        return sub_264891214(v53, &qword_27FF81E58, &qword_2648BAE88);
      }

      else
      {
        v54 = v58;
        sub_2648A96C4(v53, v58);
        sub_2648AA11C(v54, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
        v55 = v59;
        sub_2648B8DC4();
        (*(v60 + 8))(v55, v61);
        return sub_2648A9728(v54);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2648A7C38(void *a1, int a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_2648A7548(a1, a2, v6, v7);
}

void sub_2648A7CC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2648A7D3C(void *a1)
{
  v2 = sub_2648B8B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  if (a1)
  {
    v10 = a1;
    v11 = sub_2648A5770();
    (*(v3 + 16))(v7, v11, v2);
    v12 = a1;
    v13 = sub_2648B8AF4();
    v14 = sub_2648B8E34();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_264887000, v13, v14, "Activation failed: %{public}@", v15, 0xCu);
      sub_264891214(v16, &qword_27FF81BC0, &qword_2648BA080);
      MEMORY[0x2667439C0](v16, -1, -1);
      MEMORY[0x2667439C0](v15, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v24[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8);
    return sub_2648B8DD4();
  }

  else
  {
    v20 = sub_2648A5770();
    (*(v3 + 16))(v9, v20, v2);
    v21 = sub_2648B8AF4();
    v22 = sub_2648B8E44();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_264887000, v21, v22, "Activation finished", v23, 2u);
      MEMORY[0x2667439C0](v23, -1, -1);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_2648A8014(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E30, &qword_2648BACB8) - 8) + 80);

  return sub_2648A7D3C(a1);
}

void sub_2648A8090(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_2648A80FC(void *a1)
{
  v2 = sub_2648B8B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2648A5770();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2648B8AF4();
  v9 = sub_2648B8E44();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_264887000, v8, v9, "Change accumulator terminated", v10, 2u);
    MEMORY[0x2667439C0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return [a1 invalidate];
}

uint64_t sub_2648A8270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E50, &qword_2648BAE80);
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = sub_2648B88D4();
  v5[19] = v9;
  v10 = *(v9 - 8);
  v5[20] = v10;
  v11 = *(v10 + 64) + 15;
  v5[21] = swift_task_alloc();
  v12 = type metadata accessor for RapportController.Change();
  v5[22] = v12;
  v13 = *(v12 - 8);
  v5[23] = v13;
  v14 = *(v13 + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E58, &qword_2648BAE88) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E60, &unk_2648BAE90);
  v5[26] = v16;
  v17 = *(v16 - 8);
  v5[27] = v17;
  v18 = *(v17 + 64) + 15;
  v5[28] = swift_task_alloc();
  v19 = sub_2648B8B14();
  v5[29] = v19;
  v20 = *(v19 - 8);
  v5[30] = v20;
  v21 = *(v20 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2648A8508, 0, 0);
}

uint64_t sub_2648A8508()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v4 = MEMORY[0x277D84F98];
  v0[8] = MEMORY[0x277D84F98];
  v5 = sub_2648A5770();
  v0[34] = v5;
  v6 = *(v3 + 16);
  v0[35] = v6;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  v7 = sub_2648B8AF4();
  v8 = sub_2648B8E44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_264887000, v7, v8, "Will wait for changes", v9, 2u);
    MEMORY[0x2667439C0](v9, -1, -1);
  }

  v10 = v0[33];
  v11 = v0[29];
  v12 = v0[30];
  v13 = v0[28];
  v14 = v0[14];

  v15 = *(v12 + 8);
  v0[37] = v15;
  v15(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0);
  sub_2648B8D54();
  v0[39] = v4;
  v0[40] = v4;
  v0[38] = v4;
  v16 = *(MEMORY[0x277D858B8] + 4);
  v17 = swift_task_alloc();
  v0[41] = v17;
  *v17 = v0;
  v17[1] = sub_2648A86C8;
  v18 = v0[28];
  v19 = v0[25];
  v20 = v0[26];

  return MEMORY[0x2822005A8](v19, 0, 0, v20, v0 + 9);
}

uint64_t sub_2648A86C8()
{
  v2 = *(*v1 + 328);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2648A8E2C;
  }

  else
  {
    v3 = sub_2648A87D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2648A87D8()
{
  v84 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  if ((*(*(v0 + 184) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 320);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v5 = *(v0 + 256);
    v4 = *(v0 + 264);
    v6 = *(v0 + 248);
    v7 = *(v0 + 224);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 192);
  sub_2648A96C4(v1, v14);
  v15 = *(v2 + 20);
  if (*v14 > 1u)
  {
    v35 = *(v0 + 320);
    swift_beginAccess();
    v36 = sub_26488F280(&v14[v15]);
    if ((v37 & 1) == 0)
    {
      v41 = *(v0 + 312);
      v42 = *(v0 + 320);
      v40 = *(v0 + 304);
      goto LABEL_25;
    }

    v17 = v36;
    v38 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v0 + 64);
    *(v0 + 96) = v40;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

  v16 = *(v0 + 192);
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(*(v0 + 160) + 16);
  v19(v17, &v14[v15], *(v0 + 152));
  v20 = *(v16 + *(v18 + 24));
  swift_beginAccess();
  v21 = *(v0 + 64);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v0 + 64);
  *(v0 + 104) = v23;
  v24 = sub_26488F280(v17);
  v26 = *(v23 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
LABEL_32:
    sub_2648A9E64();
    v40 = *(v0 + 96);
LABEL_14:
    (*(*(v0 + 160) + 8))(v40[6] + *(*(v0 + 160) + 72) * v17, *(v0 + 152));
    sub_2648A9B44(v17, v40);
    *(v0 + 64) = v40;
LABEL_24:
    v41 = v40;
    v42 = v40;
LABEL_25:
    swift_endAccess();
    v56 = *(v0 + 288);
    (*(v0 + 280))(*(v0 + 256), *(v0 + 272), *(v0 + 232));
    v57 = sub_2648B8AF4();
    v58 = sub_2648B8E44();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 296);
    v61 = *(v0 + 256);
    v62 = *(v0 + 232);
    if (v59)
    {
      v80 = *(v0 + 256);
      v63 = *(v0 + 152);
      v82 = *(v0 + 240) + 8;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v83 = v65;
      *v64 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E68, &qword_2648BAEA0);
      v79 = v60;
      v66 = v42;
      sub_2648AA0D4(&qword_280F796E0, MEMORY[0x277CC95F0]);
      v67 = sub_2648B8BB4();
      v69 = v68;

      v70 = sub_26488EB20(v67, v69, &v83);
      v42 = v66;

      *(v64 + 4) = v70;
      _os_log_impl(&dword_264887000, v57, v58, "Producing snapshot: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x2667439C0](v65, -1, -1);
      MEMORY[0x2667439C0](v64, -1, -1);

      v79(v80, v62);
      v40 = v41;
    }

    else
    {

      v60(v61, v62);
    }

    v71 = *(v0 + 192);
    v73 = *(v0 + 136);
    v72 = *(v0 + 144);
    v74 = *(v0 + 120);
    v75 = *(v0 + 128);
    *(v0 + 88) = v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
    sub_2648B8DC4();
    (*(v73 + 8))(v72, v75);
    sub_2648A9728(v71);
    *(v0 + 312) = v41;
    *(v0 + 320) = v42;
    *(v0 + 304) = v40;
    v76 = *(MEMORY[0x277D858B8] + 4);
    v77 = swift_task_alloc();
    *(v0 + 328) = v77;
    *v77 = v0;
    v77[1] = sub_2648A86C8;
    v78 = *(v0 + 224);
    v49 = *(v0 + 200);
    v52 = *(v0 + 208);
    v53 = v0 + 72;
    v50 = 0;
    v51 = 0;

    return MEMORY[0x2822005A8](v49, v50, v51, v52, v53);
  }

  v30 = v25;
  if (*(v23 + 24) >= v29)
  {
    v81 = v19;
    v43 = v20;
    if ((v22 & 1) == 0)
    {
      v44 = v24;
      sub_2648A9E64();
      v24 = v44;
    }

    goto LABEL_19;
  }

  v31 = *(v0 + 168);
  sub_2648A9784(v29, v22);
  v32 = *(v0 + 104);
  v24 = sub_26488F280(v31);
  if ((v30 & 1) == (v33 & 1))
  {
    v81 = v19;
    v43 = v20;
LABEL_19:
    v40 = *(v0 + 104);
    v46 = *(v0 + 160);
    v45 = *(v0 + 168);
    v47 = *(v0 + 152);
    if (v30)
    {
      *(v40[7] + v24) = v43;
      (*(v46 + 8))(v45, v47);
    }

    else
    {
      v40[(v24 >> 6) + 8] |= 1 << v24;
      v48 = v24;
      v81(v40[6] + *(v46 + 72) * v24, v45, v47);
      *(v40[7] + v48) = v43;
      v49 = (*(v46 + 8))(v45, v47);
      v54 = v40[2];
      v28 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v28)
      {
        __break(1u);
        return MEMORY[0x2822005A8](v49, v50, v51, v52, v53);
      }

      v40[2] = v55;
    }

    *(v0 + 64) = v40;
    goto LABEL_24;
  }

  v34 = *(v0 + 152);

  return sub_2648B9174();
}

uint64_t sub_2648A8E2C()
{
  v1 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[29];
  (*(v0[27] + 8))(v0[28], v0[26]);

  v7 = v0[9];
  v3(v5, v4, v6);
  v8 = v7;
  v9 = sub_2648B8AF4();
  v10 = sub_2648B8E34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_264887000, v9, v10, "Throwing error: %{public}@", v11, 0xCu);
    sub_264891214(v12, &qword_27FF81BC0, &qword_2648BA080);
    MEMORY[0x2667439C0](v12, -1, -1);
    MEMORY[0x2667439C0](v11, -1, -1);
  }

  v15 = v0[37];
  v17 = v0[30];
  v16 = v0[31];
  v18 = v0[29];
  v19 = v0[15];

  v15(v16, v18);
  v0[10] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8);
  sub_2648B8DD4();
  v21 = v0[32];
  v20 = v0[33];
  v22 = v0[31];
  v23 = v0[28];
  v25 = v0[24];
  v24 = v0[25];
  v26 = v0[21];
  v27 = v0[18];

  v28 = v0[1];

  return v28();
}

uint64_t sub_2648A905C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E38, &qword_2648BACC0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E20, &qword_2648BACA8) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26488D93C;

  return sub_2648A8270(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_2648A91A0()
{
  v0 = sub_2648B8B14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648A5770();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2648B8AF4();
  v7 = sub_2648B8E44();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_264887000, v6, v7, "Result terminated", v8, 2u);
    MEMORY[0x2667439C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return sub_2648B8D74();
}

uint64_t sub_2648A9328()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2648A9364()
{
  result = qword_27FF81E48;
  if (!qword_27FF81E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81E48);
  }

  return result;
}

void sub_2648A9438()
{
  sub_2648B88D4();
  if (v0 <= 0x3F)
  {
    sub_2648A94CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2648A94CC()
{
  if (!qword_280F79400)
  {
    v0 = sub_2648B8F04();
    if (!v1)
    {
      atomic_store(v0, &qword_280F79400);
    }
  }
}

uint64_t getEnumTagSinglePayload for RapportController.Change.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RapportController.Change.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2648A9670()
{
  result = qword_27FF835C0[0];
  if (!qword_27FF835C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF835C0);
  }

  return result;
}

uint64_t sub_2648A96C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RapportController.Change();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2648A9728(uint64_t a1)
{
  v2 = type metadata accessor for RapportController.Change();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2648A9784(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E70, &unk_2648BAEA8);
  v44 = a2;
  result = sub_2648B9024();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_2648AA0D4(&qword_280F796E0, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_2648A9B44(int64_t a1, uint64_t a2)
{
  v43 = sub_2648B88D4();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2648B8F34();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2648AA0D4(&qword_280F796E0, MEMORY[0x277CC95F0]);
      v26 = sub_2648B8BC4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + a1);
          v33 = (v31 + v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

char *sub_2648A9E64()
{
  v1 = v0;
  v32 = sub_2648B88D4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81E70, &unk_2648BAEA8);
  v4 = *v0;
  v5 = sub_2648B9014();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2648AA0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2648AA11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RapportController.Change();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2648AA180()
{
  result = qword_27FF81E80;
  if (!qword_27FF81E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81E80);
  }

  return result;
}

uint64_t sub_2648AA1F4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = sub_2648B8EF4();

  return v3;
}

uint64_t sub_2648AA248(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a2;
  v23 = a4;
  v13 = sub_2648B8B84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(a7 + 16))(a6, a7);
  (*(v14 + 16))(v17, a1, v13);
  v19 = *(a7 + 8);
  swift_unknownObjectRetain();

  v20 = sub_2648AAC64(v18, v7, v17, v22, a3 & 1, v23, a5, a6, v19);

  swift_unknownObjectRelease();

  return v20;
}

id sub_2648AA3B0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(a6 + 16))(a5, a6);
  v13 = *(a6 + 8);
  v14 = MEMORY[0x277CCABD8];
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = a2;

  v17 = [objc_allocWithZone(v14) init];
  v18 = v15;
  [v17 setUnderlyingQueue_];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = v13;
  v20[4] = v19;
  v20[5] = v12;
  v20[6] = a3;
  v20[7] = a4;
  v25[4] = sub_2648AB490;
  v25[5] = v20;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_2648AAA64;
  v25[3] = &block_descriptor_1;
  v21 = _Block_copy(v25);
  v22 = v16;
  v23 = v12;

  [v18 addObserverForName:v22 object:0 queue:v17 usingBlock:v21];

  swift_unknownObjectRelease();

  _Block_release(v21);
  return v18;
}

uint64_t sub_2648AA5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2648B8CB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_2648AABB4(sub_2648AB4E4, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_2648B8FA4();
    MEMORY[0x266742E60](0xD00000000000003FLL, 0x80000002648BBD70);
    sub_2648B9134();
    MEMORY[0x266742E60](46, 0xE100000000000000);
    result = sub_2648B9004();
    __break(1u);
  }

  return result;
}

uint64_t sub_2648AA778()
{
  sub_2648B8B34();
  sub_2648AB608(&qword_27FF81F70, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81F78, &unk_2648BAF80);
  sub_2648AB650(&unk_27FF81F80, &qword_27FF81F78, &unk_2648BAF80);
  return sub_2648B8F24();
}

uint64_t sub_2648AA850()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2648B8E94();
  return swift_unknownObjectRelease_n();
}

uint64_t sub_2648AA894(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a8;
  v13 = sub_2648B8B94();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *v17 = a2;
    (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
    v19 = a2;
    v20 = sub_2648B8BA4();
    result = (*(v14 + 8))(v17, v13);
    if (v20)
    {
      MEMORY[0x28223BE20](result);
      *(&v22 - 4) = a5;
      *(&v22 - 3) = a6;
      v21 = a4;
      sub_2648AA5C4(a7, (&v22 - 6), "ScreenContinuityServices/QueueIsolatedActor.swift", 49, 2, v23, a5, MEMORY[0x277D84F78] + 8, a6);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2648AAA64(uint64_t a1)
{
  v2 = sub_2648B8734();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_2648B8724();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_2648AAB58(void *a1, void *a2)
{
  [a1 removeObserver_];
  swift_unknownObjectRelease();
}

uint64_t sub_2648AABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_2648AB50C(&v14);
}

uint64_t sub_2648AAC64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a8;
  v54 = a6;
  v56 = a7;
  v60 = a5;
  v48 = *&a4;
  v64 = a3;
  v51 = a2;
  v50 = a1;
  v52 = a9;
  v9 = sub_2648B8B24();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v61 = (&v48 - v13);
  v14 = sub_2648B8B34();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2648B8B54();
  v55 = *(v57 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2648B8E64();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2648AB538();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2648AB608(&qword_27FF81F58, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81F60, &qword_2648BAF78);
  sub_2648AB650(&qword_27FF81F68, &qword_27FF81F60, &qword_2648BAF78);
  sub_2648B8F24();
  v26 = v50;
  v27 = sub_2648B8E74();
  (*(v22 + 8))(v25, v21);
  ObjectType = swift_getObjectType();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v31 = v52;
  v30[2] = v53;
  v30[3] = v31;
  v30[4] = v29;
  v30[5] = v26;
  v32 = v56;
  v30[6] = v54;
  v30[7] = v32;
  aBlock[4] = sub_2648AB5CC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26488DA30;
  aBlock[3] = &block_descriptor_21;
  v33 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v34 = v26;

  sub_2648B8B44();
  sub_2648AA778();
  sub_2648B8E84();
  _Block_release(v33);
  swift_unknownObjectRelease();
  (*(v58 + 8))(v17, v59);
  (*(v55 + 8))(v20, v57);

  if (v60)
  {
    v36 = v61;
    v35 = v62;
    v37 = *(v62 + 104);
    v38 = v63;
    v37(v61, *MEMORY[0x277D85180], v63);
    v39 = v49;
    *v49 = 0;
    v37(v39, *MEMORY[0x277D85168], v38);
    swift_unknownObjectRetain();
    v40 = v64;
    MEMORY[0x2667430D0](v64, v36, v39, ObjectType);
    v41 = *(v35 + 8);
    v41(v39, v38);
    v41(v36, v38);
  }

  else
  {
    v42 = v48;
    v44 = v61;
    v43 = v62;
    *v61 = 0;
    v45 = v63;
    (*(v43 + 104))(v44, *MEMORY[0x277D85168], v63);
    swift_unknownObjectRetain();
    v40 = v64;
    MEMORY[0x2667430E0](v64, v44, ObjectType, v42);
    (*(v43 + 8))(v44, v45);
  }

  sub_2648B8EA4();
  swift_unknownObjectRelease();
  v46 = sub_2648B8B84();
  (*(*(v46 - 8) + 8))(v40, v46);
  return v27;
}

uint64_t *sub_2648AB2A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_2648AB2D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2648AB320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2648AB3A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_2648AB3F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2648AB438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2648AB4E4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_2648AB50C(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

unint64_t sub_2648AB538()
{
  result = qword_27FF81F50;
  if (!qword_27FF81F50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF81F50);
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2648AB608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2648AB650(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2648AB6A4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_2648AB724()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82008, &qword_2648BB070);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_2648B8AB4();
  __swift_allocate_value_buffer(v4, qword_27FF849C0);
  __swift_project_value_buffer(v4, qword_27FF849C0);
  v5 = sub_2648B8A74();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_2648B8AA4();
}

uint64_t sub_2648AB864@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FF83750 != -1)
  {
    swift_once();
  }

  v2 = sub_2648B8AB4();
  v3 = __swift_project_value_buffer(v2, qword_27FF849C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_2648AB96C()
{
  result = static ContinuityEligibility.isiPhoneMirroringEligible.getter();
  if (!v0)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82000, &qword_2648BB068);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2648BAF90;
    *(v3 + 56) = MEMORY[0x277D837D0];
    v4 = "me executor as ";
    if (v2)
    {
      v4 = " iPhone Mirroring";
    }

    v5 = 0xD00000000000001DLL;
    if ((v2 & 1) == 0)
    {
      v5 = 0xD000000000000021;
    }

    *(v3 + 32) = v5;
    *(v3 + 40) = v4 | 0x8000000000000000;
    sub_2648B91C4();
  }

  return result;
}

unint64_t sub_2648ABA38()
{
  result = qword_27FF81FF0;
  if (!qword_27FF81FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81FF0);
  }

  return result;
}

unint64_t sub_2648ABA90()
{
  result = qword_27FF81FF8;
  if (!qword_27FF81FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF81FF8);
  }

  return result;
}

uint64_t sub_2648ABAF4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2648ABB2C();
  return v3;
}

uint64_t sub_2648ABB2C()
{
  v1 = v0;
  v2 = sub_2648B87B4();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2);
  v51 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v59 = &v50 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v60 = &v50 - v13;
  v56 = sub_2648B8E54();
  v14 = *(v56 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v56);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2648B8EB4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v20 = sub_2648B8B54();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_2648A5950();
  v54 = "ContinuityServices";
  v55 = v22;
  sub_2648B8B44();
  v61 = MEMORY[0x277D84F90];
  sub_2648B6E3C(&qword_280F78F90, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B60, &unk_2648B9A90);
  sub_26488E39C(&qword_280F78FA8, &qword_27FF81B60, &unk_2648B9A90);
  sub_2648B8F24();
  (*(v14 + 104))(v17, *MEMORY[0x277D85268], v56);
  *(v0 + 16) = sub_2648B8EC4();
  v23 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter;
  *(v1 + v23) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer) = 0;
  v24 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName;
  *(v1 + v24) = sub_2648B8BF4();
  v25 = (v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  v26 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo) = v26;
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers) = v26;
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer) = 0;
  v27 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v28 = sub_2648B8BF4();
  v29 = [v27 containerURLForSecurityApplicationGroupIdentifier_];

  if (v29)
  {
    v30 = v57;
    sub_2648B87E4();

    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v57;
  }

  v32 = sub_2648B8804();
  v33 = *(v32 - 8);
  v34 = v33;
  v35 = *(v33 + 56);
  v36 = (v33 + 56);
  v35(v30, v31, 1, v32);
  v37 = v30;
  v38 = v60;
  sub_264893A78(v37, v60, &qword_27FF82010, &qword_2648BB078);
  v39 = v58;
  sub_264893A10(v38, v58, &qword_27FF82010, &qword_2648BB078);
  if ((*(v34 + 48))(v39, 1, v32) == 1)
  {
    sub_264891214(v38, &qword_27FF82010, &qword_2648BB078);
    sub_264891214(v39, &qword_27FF82010, &qword_2648BB078);
    v40 = 1;
    v41 = v59;
  }

  else
  {
    v42 = *MEMORY[0x277CC91D8];
    v43 = v51;
    v44 = v52;
    v45 = *(v52 + 104);
    v57 = v36;
    v46 = v35;
    v47 = v53;
    v45(v51, v42, v53);
    sub_2648AC210();
    v41 = v59;
    sub_2648B87F4();
    v48 = v47;
    v35 = v46;
    (*(v44 + 8))(v43, v48);
    sub_264891214(v60, &qword_27FF82010, &qword_2648BB078);
    (*(v34 + 8))(v39, v32);
    v40 = 0;
  }

  v35(v41, v40, 1, v32);
  sub_264893A78(v41, v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, &qword_27FF82010, &qword_2648BB078);
  return v1;
}

unint64_t sub_2648AC210()
{
  result = qword_280F78FB8[0];
  if (!qword_280F78FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F78FB8);
  }

  return result;
}

uint64_t sub_2648AC264(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v36 = sub_2648B8804();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = sub_2648B8B24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2648B8B84();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v18 = &v32 - v17;
  v19 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer;
  v37 = v2;
  if (!*(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer))
  {
    v33 = result;
    v20 = v16;
    sub_2648B8B64();
    *v9 = 120;
    (*(v6 + 104))(v9, *MEMORY[0x277D85188], v5);
    sub_2648B8B74();
    (*(v6 + 8))(v9, v5);
    v21 = *(v20 + 8);
    v34 = v20 + 8;
    v22 = v33;
    v21(v14, v33);
    v23 = v36;
    (*(v3 + 16))(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v36);
    v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v25 = swift_allocObject();
    (*(v3 + 32))(v25 + v24, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    v26 = type metadata accessor for SessionManager(0);
    v27 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager);
    v28 = v26;
    v29 = v37;
    v30 = sub_2648AA248(v18, 0, 1, sub_2648B7868, v25, v28, v27);

    v21(v18, v22);
    v31 = *(v29 + v19);
    *(v29 + v19) = v30;
    return sub_2648B6CB0(v31);
  }

  return result;
}

uint64_t sub_2648AC5D0(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = v29 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = v29 - v9;
  v10 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer);
  *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer) = 0;
  sub_2648B6CB0(v10);
  v11 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  v12 = *(v1 + v11);

  sub_2648ACC88();
  sub_2648AC8EC(a1);
  v31 = v11;
  v13 = *(v1 + v11);

  LOBYTE(a1) = sub_2648B2868(v12, v13);

  if ((a1 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
    swift_beginAccess();
    v16 = *(v2 + v15);
    v17 = v16 + 64;
    v18 = 1 << *(v16 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v16 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = (v4 + 8);
    v29[1] = v7 + 8;
    v29[2] = v7 + 16;
    v30 = v16;

    for (i = 0; v20; result = (*(v7 + 8))(v26, v27))
    {
      v24 = i;
LABEL_10:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v32;
      v27 = v33;
      (*(v7 + 16))(v32, *(v30 + 56) + *(v7 + 72) * (v25 | (v24 << 6)), v33);
      v36 = *(v2 + v31);

      v28 = v34;
      sub_2648B8DC4();
      (*v22)(v28, v35);
    }

    while (1)
    {
      v24 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
      }

      v20 = *(v17 + 8 * v24);
      ++i;
      if (v20)
      {
        i = v24;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2648AC8EC(uint64_t a1)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
  v5 = *(*(v38 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - v8;
  v9 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  v35 = v1;
  v10 = *(v1 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v40 = v10;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = v37;
  while (v14)
  {
    v19 = v17;
LABEL_10:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v19 << 6);
    v22 = v40;
    v23 = *(v40 + 48);
    v24 = sub_2648B88D4();
    v25 = *(v24 - 8);
    v41 = v24;
    v42 = v25;
    v26 = v36;
    (*(v25 + 16))(v36, v23 + *(v25 + 72) * v21, v24);
    v27 = *(v22 + 56);
    v28 = (type metadata accessor for CompanionDevice.SessionInfo(0) - 8);
    v29 = v27 + *(*v28 + 72) * v21;
    v30 = v38;
    sub_2648B6B80(v29, v26 + *(v38 + 48), type metadata accessor for CompanionDevice.SessionInfo);
    sub_264893A78(v26, v18, &qword_27FF82118, &unk_2648BB578);
    v31 = v18 + *(v30 + 48);
    v32 = v39;
    sub_264893A10(v31 + v28[7], v39, &qword_27FF81BE8, &qword_2648BB0C0);
    sub_2648B6C50(v31, type metadata accessor for CompanionDevice.SessionInfo);
    v33 = sub_2648B8874();
    LODWORD(v28) = (*(*(v33 - 8) + 48))(v32, 1, v33);
    sub_264891214(v32, &qword_27FF81BE8, &qword_2648BB0C0);
    result = (*(v42 + 8))(v18, v41);
    if (v28 == 1)
    {

      return sub_2648AC264(v34);
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648ACC88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v73 = v67 - v4;
  v5 = sub_2648B8874();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v71 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v70 = v67 - v11;
  MEMORY[0x28223BE20](v10);
  v91 = v67 - v12;
  v13 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Session(0);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v16);
  v72 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2648B88D4();
  v87 = *(v19 - 8);
  v20 = v87[8];
  MEMORY[0x28223BE20](v19);
  v90 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2648B8814();
  v89 = v6;
  v23 = v22;
  v25 = v24;
  v26 = sub_2648B8764();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_2648B8754();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82128, &qword_2648BB590);
  sub_2648B7A34();
  sub_2648B8744();
  v67[1] = 0;

  sub_264894BFC(v23, v25);
  v66 = v92;
  v29 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions;
  swift_beginAccess();
  v30 = *(v0 + v29);
  v68 = v1;
  *(v1 + v29) = v66;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82140, &qword_2648BB598);
  result = sub_2648B9014();
  v32 = result;
  v33 = 0;
  v86 = v66;
  v36 = *(v66 + 64);
  v35 = v66 + 64;
  v34 = v36;
  v37 = 1 << *(v35 - 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v34;
  v40 = (v37 + 63) >> 6;
  v79 = v87 + 2;
  v41 = (v89 + 16);
  v69 = (v89 + 8);
  v78 = (v89 + 56);
  v77 = result + 64;
  v76 = (v87 + 4);
  v42 = v73;
  v43 = v72;
  v80 = result;
  v75 = (v89 + 16);
  v81 = v19;
  if (v39)
  {
    while (1)
    {
      v44 = __clz(__rbit64(v39));
      v88 = (v39 - 1) & v39;
LABEL_10:
      v47 = v44 | (v33 << 6);
      v48 = v86;
      v49 = *(v86 + 48);
      v50 = v87[2];
      v89 = v87[9] * v47;
      v50(v90, v49 + v89, v19);
      sub_2648B6B80(*(v48 + 56) + *(v82 + 72) * v47, v43, type metadata accessor for Session);
      v51 = *v41;
      (*v41)(v91, v43, v5);
      if (*(v43 + *(v83 + 20)))
      {
        v51(v42, v43 + *(v83 + 24), v5);
        v52 = 0;
      }

      else
      {
        v53 = v70;
        sub_2648B8844();
        v54 = v71;
        sub_2648B8864();
        v74 = sub_2648B8834();
        v55 = *v69;
        (*v69)(v54, v5);
        v55(v53, v5);
        if (v74)
        {
          v52 = 1;
          v42 = v73;
          v43 = v72;
        }

        else
        {
          v56 = v72;
          v42 = v73;
          sub_2648B8844();
          v52 = 0;
          v43 = v56;
        }
      }

      v57 = v89;
      (*v78)(v42, v52, 1, v5);
      v58 = v84;
      sub_264891E74(v91, v42, v84);
      sub_2648B6C50(v43, type metadata accessor for Session);
      *(v77 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v32 = v80;
      v59 = *(v80 + 48) + v57;
      v19 = v81;
      (*v76)(v59, v90, v81);
      result = sub_2648B6BE8(v58, *(v32 + 56) + *(v85 + 72) * v47, type metadata accessor for CompanionDevice.SessionInfo);
      v60 = *(v32 + 16);
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        break;
      }

      *(v32 + 16) = v62;
      v41 = v75;
      v39 = v88;
      if (!v88)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v45 = v33;
    while (1)
    {
      v33 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v33 >= v40)
      {

        v63 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
        v64 = v68;
        swift_beginAccess();
        v65 = *(v64 + v63);
        *(v64 + v63) = v32;
      }

      v46 = *(v35 + 8 * v33);
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v88 = (v46 - 1) & v46;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2648AD448(uint64_t a1)
{
  v3 = sub_2648B8804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v3);
  v7 = (v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
  if (!*(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer))
  {
    v8 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter);
    v9 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName);
    (*(v4 + 16))(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v11 = swift_allocObject();
    (*(v4 + 32))(v11 + v10, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v12 = type metadata accessor for SessionManager(0);
    v13 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager);
    v14 = sub_2648AA3B0(v8, v9, sub_2648B7BD8, v11, v12, v13);
    v16 = v15;
    v18 = v17;

    v19 = *v7;
    v20 = v7[1];
    v21 = v7[2];
    *v7 = v14;
    v7[1] = v16;
    v7[2] = v18;
    return sub_2648B6D1C(v19, v20, v21);
  }

  return result;
}

uint64_t sub_2648AD624(uint64_t a1, uint64_t a2)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v27 = a2;
  sub_2648ACC88();
  v12 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  v13 = *(a1 + v12);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  v33 = v13;

  v34 = a1;
  v30 = v18;
  result = swift_beginAccess();
  v20 = 0;
  v21 = (v15 + 63) >> 6;
  v22 = (v4 + 8);
  v28 = v8 + 8;
  for (i = v8 + 16; v17; result = (*(v8 + 8))(v11, v7))
  {
    v23 = v20;
LABEL_9:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    (*(v8 + 16))(v11, *(v33 + 56) + *(v8 + 72) * (v24 | (v23 << 6)), v7);
    v35 = *(v34 + v30);

    v25 = v31;
    sub_2648B8DC4();
    (*v22)(v25, v32);
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      return sub_2648AC8EC(v27);
    }

    v17 = *(v14 + 8 * v23);
    ++v20;
    if (v17)
    {
      v20 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648AD8FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82020, &qword_2648BB088);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_2648B88D4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  sub_2648ADAC0(v7, v11);
  result = swift_endAccess();
  if (!*(*(v2 + v14) + 16))
  {
    v16 = (v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
    v17 = *(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer);
    v18 = *(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 8);
    v19 = *(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 16);
    v16[1] = 0;
    v16[2] = 0;
    *v16 = 0;
    return sub_2648B6D1C(v17, v18, v19);
  }

  return result;
}

uint64_t sub_2648ADAC0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82020, &qword_2648BB088);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_264891214(a1, &qword_27FF82020, &qword_2648BB088);
    sub_2648B37BC(a2, v8);
    v14 = sub_2648B88D4();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_264891214(v8, &qword_27FF82020, &qword_2648BB088);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2648B43E4(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2648B88D4();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2648ADCF4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82050, &qword_2648BB0B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Session(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_264891214(a1, &qword_27FF82050, &qword_2648BB0B8);
    sub_2648B3974(a2, v8);
    v14 = sub_2648B88D4();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_264891214(v8, &qword_27FF82050, &qword_2648BB0B8);
  }

  else
  {
    sub_2648B6BE8(a1, v12, type metadata accessor for Session);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2648B45F4(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2648B88D4();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2648ADF14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_264891214(a1, &qword_27FF81BF8, &qword_2648B9CE0);
    sub_2648B3B5C(a2, v8);
    v14 = sub_2648B88D4();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_264891214(v8, &qword_27FF81BF8, &qword_2648B9CE0);
  }

  else
  {
    sub_2648B6BE8(a1, v12, type metadata accessor for CompanionDevice.SessionInfo);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2648B4860(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2648B88D4();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2648AE134@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v64 = *(v1 - 8);
  v65 = v1;
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v1);
  v63 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82020, &qword_2648BB088);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - v9;
  v11 = sub_2648B8804();
  v12 = *(v11 - 8);
  v74 = v11;
  v75 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82028, &qword_2648BB090);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v76 = *(v67 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v67);
  v22 = &v59 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82038, &qword_2648BB0A0);
  v69 = *(v23 - 8);
  v70 = v23;
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  v73 = sub_2648B88D4();
  v27 = *(v73 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v73);
  v60 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v59 - v30;
  sub_2648B88C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82040, &unk_2648BB0A8);
  (*(v16 + 104))(v19, *MEMORY[0x277D858A0], v15);
  v68 = v26;
  sub_2648B8D94();
  v32 = v19;
  v34 = v74;
  v33 = v75;
  (*(v16 + 8))(v32, v15);
  v35 = v66;
  sub_264893A10(v66 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, v10, &qword_27FF82010, &qword_2648BB078);
  if ((*(v33 + 48))(v10, 1, v34) == 1)
  {
    sub_264891214(v10, &qword_27FF82010, &qword_2648BB078);
    sub_2648AE930();
    v36 = swift_allocError();
    *v37 = 3;
    v78 = v36;
    v38 = v67;
    sub_2648B8DD4();
    (*(v76 + 8))(v22, v38);
    (*(v27 + 8))(v31, v73);
  }

  else
  {
    v39 = v27;
    v62 = v22;
    v40 = v73;
    (*(v33 + 32))(v72, v10, v34);
    v41 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
    swift_beginAccess();
    if (!*(*(v35 + v41) + 16))
    {
      v42 = v72;
      sub_2648AD448(v72);
      sub_2648ACC88();
      sub_2648AC8EC(v42);
    }

    v43 = v39;
    v59 = *(v39 + 16);
    v44 = v60;
    v45 = v31;
    v59(v60, v31, v40);
    v46 = v76;
    v47 = v61;
    v48 = v67;
    (*(v76 + 16))(v61, v62, v67);
    (*(v46 + 56))(v47, 0, 1, v48);
    swift_beginAccess();
    sub_2648ADAC0(v47, v44);
    swift_endAccess();
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = v45;
    v51 = v45;
    v52 = v73;
    v59(v44, v51, v73);
    v53 = (*(v43 + 80) + 24) & ~*(v43 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    (*(v43 + 32))(v54 + v53, v44, v52);
    v55 = v62;
    sub_2648B8DA4();
    v56 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
    swift_beginAccess();
    v77 = *(v35 + v56);

    v57 = v63;
    sub_2648B8DC4();
    (*(v64 + 8))(v57, v65);
    (*(v75 + 8))(v72, v74);
    (*(v76 + 8))(v55, v48);
    (*(v43 + 8))(v50, v52);
  }

  return (*(v69 + 32))(v71, v68, v70);
}

unint64_t sub_2648AE930()
{
  result = qword_27FF82048;
  if (!qword_27FF82048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82048);
  }

  return result;
}

uint64_t sub_2648AE984(uint64_t a1, uint64_t a2)
{
  v3 = sub_2648B88D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81B68, &qword_2648BA520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_2648B8D14();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v4 + 16))(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
    v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 4) = v11;
    (*(v4 + 32))(&v14[v13], &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_26488BD30(0, 0, v9, &unk_2648BB5B8, v14);
  }

  return result;
}

uint64_t sub_2648AEB84()
{
  v1 = *(sub_2648B88D4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2648AE984(v2, v3);
}

uint64_t sub_2648AEBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for SessionManager(0);
  sub_2648B6E3C(&qword_280F78F80, type metadata accessor for SessionManager);
  v7 = sub_2648B8CB4();

  return MEMORY[0x2822009F8](sub_2648AECA4, v7, v6);
}

uint64_t sub_2648AECA4()
{
  v1 = v0[2];
  sub_2648AD8FC(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2648AED04(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v47 = a1;
  v46 = sub_2648B8804();
  v44 = *(v46 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2648B8B24();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_2648B8B84();
  v43 = *(v45 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v45);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - v13;
  v14 = sub_2648B88D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs;
  swift_beginAccess();
  v23 = *(*(v3 + v22) + 16);
  (*(v15 + 16))(v19, v47, v14);
  swift_beginAccess();
  sub_2648B5334(v21, v19);
  (*(v15 + 8))(v21, v14);
  result = swift_endAccess();
  if (!v23)
  {
    sub_2648B8B64();
    *v8 = 60;
    v26 = v38;
    v25 = v39;
    (*(v38 + 104))(v8, *MEMORY[0x277D85188], v39);
    v27 = v40;
    sub_2648B8B74();
    (*(v26 + 8))(v8, v25);
    v47 = *(v43 + 8);
    v28 = v45;
    v47(v12, v45);
    v29 = v44;
    v30 = v41;
    v31 = v46;
    (*(v44 + 16))(v41, v42, v46);
    v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v33 = swift_allocObject();
    (*(v29 + 32))(v33 + v32, v30, v31);
    v34 = type metadata accessor for SessionManager(0);
    v35 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager);
    v36 = sub_2648AA248(v27, 0x404E000000000000, 0, sub_2648B7850, v33, v34, v35);

    v47(v27, v28);
    v37 = *(v3 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer);
    *(v3 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer) = v36;
    return sub_2648B6CB0(v37);
  }

  return result;
}

uint64_t sub_2648AF1A4(uint64_t a1)
{
  v86 = a1;
  v2 = type metadata accessor for Session(0);
  v90 = *(v2 - 8);
  v3 = *(v90 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v84 = &v82 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v89 = &v82 - v9;
  MEMORY[0x28223BE20](v8);
  v93 = &v82 - v10;
  v11 = sub_2648B88D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v95 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v105 = &v82 - v17;
  MEMORY[0x28223BE20](v16);
  v99 = &v82 - v18;
  v92 = sub_2648B8874();
  v19 = *(v92 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2648B8864();
  v22 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs;
  swift_beginAccess();
  v23 = *(v1 + v22);
  v24 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 56);
  v28 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions;
  v100 = v23;

  v103 = v28;
  v104 = v1;
  swift_beginAccess();
  v29 = 0;
  v30 = v11;
  v31 = (v25 + 63) >> 6;
  v102 = v12 + 16;
  v98 = v12 + 32;
  v85 = v19;
  v83 = (v19 + 16);
  v97 = (v12 + 8);
  v94 = v2;
  v101 = v11;
  v87 = v12;
  if (v27)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v34 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      v78 = v103;
      v77 = v104;
      swift_beginAccess();
      v79 = *(v77 + v78);

      sub_2648B6934(v80);
      (*(v85 + 8))(v91, v92);
    }

    v27 = *(v24 + 8 * v34);
    ++v29;
    if (v27)
    {
      v33 = v2;
      v29 = v34;
LABEL_12:
      v35 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v36 = *(v100 + 48);
      v96 = *(v12 + 72);
      v37 = *(v12 + 16);
      v38 = v99;
      v37(v99, v36 + v96 * (v35 | (v29 << 6)), v30);
      v32 = v105;
      (*(v12 + 32))(v105, v38, v30);
      v39 = *(v104 + v103);
      if (*(v39 + 16))
      {
        v40 = *(v104 + v103);

        v41 = sub_26488F280(v32);
        if (v42)
        {
          v43 = *(v90 + 72);
          v44 = v89;
          sub_2648B6B80(*(v39 + 56) + v43 * v41, v89, type metadata accessor for Session);

          v45 = v44;
          v46 = v93;
          v2 = v94;
          sub_2648B6BE8(v45, v93, type metadata accessor for Session);
          if (*(v46 + *(v2 + 20)))
          {
            sub_2648B6C50(v46, type metadata accessor for Session);
            v30 = v101;
            (*v97)(v105, v101);
          }

          else
          {
            v82 = v43;
            v37(v95, v105, v101);
            v47 = v2;
            v48 = v46;
            v49 = *v83;
            v50 = v84;
            v51 = v92;
            (*v83)(v84, v48, v92);
            v49((v50 + *(v47 + 24)), v91, v51);
            *(v50 + *(v47 + 20)) = 0;
            v53 = v103;
            v52 = v104;
            swift_beginAccess();
            sub_2648B6BE8(v50, v88, type metadata accessor for Session);
            v54 = *(v52 + v53);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v52;
            v57 = isUniquelyReferenced_nonNull_native;
            v58 = *(v52 + v53);
            v107 = v58;
            *(v56 + v53) = 0x8000000000000000;
            v60 = sub_26488F280(v95);
            v61 = v58[2];
            v62 = (v59 & 1) == 0;
            v63 = v61 + v62;
            if (__OFADD__(v61, v62))
            {
              goto LABEL_31;
            }

            v64 = v59;
            if (v58[3] >= v63)
            {
              if ((v57 & 1) == 0)
              {
                sub_2648B501C(type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
              }
            }

            else
            {
              sub_2648B3348(v63, v57, type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
              v65 = sub_26488F280(v95);
              if ((v64 & 1) != (v66 & 1))
              {
                goto LABEL_33;
              }

              v60 = v65;
            }

            v67 = v82;
            v68 = v107;
            if (v64)
            {
              sub_2648B79CC(v88, v107[7] + v60 * v82, type metadata accessor for Session);
              v69 = *v97;
              v70 = v101;
              (*v97)(v95, v101);
            }

            else
            {
              v107[(v60 >> 6) + 8] |= 1 << v60;
              v71 = v95;
              v72 = v101;
              v37((v68[6] + v60 * v96), v95, v101);
              sub_2648B6BE8(v88, v68[7] + v60 * v67, type metadata accessor for Session);
              v69 = *v97;
              (*v97)(v71, v72);
              v73 = v68[2];
              v74 = __OFADD__(v73, 1);
              v75 = v73 + 1;
              if (v74)
              {
                goto LABEL_32;
              }

              v68[2] = v75;
              v70 = v101;
            }

            v76 = *(v104 + v103);
            *(v104 + v103) = v68;

            swift_endAccess();
            sub_2648B6C50(v93, type metadata accessor for Session);
            v69(v105, v70);
            v2 = v94;
            v30 = v70;
          }

          v12 = v87;
          if (!v27)
          {
            continue;
          }

          goto LABEL_7;
        }

        v32 = v105;
      }

      v30 = v101;
      (*v97)(v32, v101);
      v2 = v33;
      if (!v27)
      {
        continue;
      }

LABEL_7:
      v33 = v2;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_2648B9174();
  __break(1u);

  v107 = 0;
  v108 = 0xE000000000000000;
  sub_2648B8FA4();
  MEMORY[0x266742E60](0xD000000000000011, 0x80000002648BC080);
  v106 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BB8, &unk_2648B9C80);
  sub_2648B8FE4();
  result = sub_2648B9004();
  __break(1u);
  return result;
}

uint64_t sub_2648AFB38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BD0, &unk_2648BAEC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs;
  swift_beginAccess();
  sub_2648B6168(a1, v6);
  sub_264891214(v6, &qword_27FF81BD0, &unk_2648BAEC0);
  result = swift_endAccess();
  if (!*(*(v1 + v7) + 16))
  {
    v9 = *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer);
    *(v1 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer) = 0;
    return sub_2648B6CB0(v9);
  }

  return result;
}

uint64_t sub_2648AFC34(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v114 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v92 = *(v109 - 8);
  v3 = *(v92 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v87 - v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v111 = *(v107 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82050, &qword_2648BB0B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v99 = &v87 - v12;
  v112 = sub_2648B88D4();
  v98 = *(v112 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v112);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2648B8874();
  v15 = *(v110 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v110);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v102 = &v87 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v96 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - v24;
  v26 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v103 = *(v26 - 8);
  v104 = v26;
  v27 = *(v103 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v87 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v87 - v35;
  v37 = sub_2648B8804();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v41;
  v44 = v43;
  sub_264893A10(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, v36, &qword_27FF82010, &qword_2648BB078);
  if ((*(v44 + 48))(v36, 1, v42) == 1)
  {
    sub_264891214(v36, &qword_27FF82010, &qword_2648BB078);
    sub_2648AE930();
    swift_allocError();
    *v45 = 3;
    return swift_willThrow();
  }

  v47 = *(v44 + 32);
  v93 = v40;
  v47(v40, v36, v42);
  v48 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  v88 = v48;
  if (!*(*(v2 + v48) + 16))
  {
    sub_2648ACC88();
  }

  v49 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  v105 = v49;
  v50 = *(v2 + v49);
  v51 = *(v50 + 16);
  v52 = v114;
  v91 = v44;
  if (v51)
  {

    v53 = sub_26488F280(v52);
    if (v54)
    {
      sub_2648B6B80(*(v50 + 56) + *(v103 + 72) * v53, v30, type metadata accessor for CompanionDevice.SessionInfo);

      sub_2648B6BE8(v30, v32, type metadata accessor for CompanionDevice.SessionInfo);
      sub_264893A10(&v32[*(v104 + 20)], v25, &qword_27FF81BE8, &qword_2648BB0C0);
      if ((*(v15 + 48))(v25, 1, v110) == 1)
      {
        sub_264891214(v25, &qword_27FF81BE8, &qword_2648BB0C0);
        sub_2648AE930();
        swift_allocError();
        *v55 = 0;
        swift_willThrow();
        sub_2648B6C50(v32, type metadata accessor for CompanionDevice.SessionInfo);
        return (*(v91 + 8))(v93, v42);
      }

      sub_2648B6C50(v32, type metadata accessor for CompanionDevice.SessionInfo);
      sub_264891214(v25, &qword_27FF81BE8, &qword_2648BB0C0);
    }

    else
    {
    }
  }

  v89 = v42;
  v56 = v102;
  sub_2648B8864();
  v94 = v15;
  v98 = *(v98 + 16);
  v57 = v95;
  (v98)(v95, v52, v112);
  v90 = *(v94 + 16);
  v58 = v99;
  v59 = v110;
  v90(v99, v56, v110);
  v60 = type metadata accessor for Session(0);
  v61 = v58 + *(v60 + 24);
  sub_2648B8864();
  *(v58 + *(v60 + 20)) = 0;
  (*(*(v60 - 8) + 56))(v58, 0, 1, v60);
  v62 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions;
  swift_beginAccess();
  sub_2648ADCF4(v58, v57);
  swift_endAccess();
  (v98)(v57, v114, v112);
  v63 = v94;
  v64 = v97;
  v90(v97, v56, v59);
  v65 = v96;
  (*(v63 + 56))(v96, 1, 1, v59);
  v66 = v100;
  sub_264891E74(v64, v65, v100);
  (*(v103 + 56))(v66, 0, 1, v104);
  swift_beginAccess();
  sub_2648ADF14(v66, v57);
  swift_endAccess();
  v67 = *(v2 + v62);

  v69 = v93;
  v70 = v101;
  sub_2648B6934(v68);
  if (v70)
  {

    (*(v63 + 8))(v56, v59);
    return (*(v91 + 8))(v69, v89);
  }

  else
  {
    v100 = 0;

    v112 = v2;
    v71 = *(v2 + v88);
    v72 = v71 + 64;
    v73 = 1 << *(v71 + 32);
    v74 = -1;
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    v75 = v74 & *(v71 + 64);
    v76 = (v73 + 63) >> 6;
    v103 = v111 + 16;
    v77 = (v92 + 8);
    v101 = v111 + 8;
    v104 = v71;

    for (i = 0; v75; result = (*(v82 + 8))(v84, v83))
    {
      v79 = i;
LABEL_22:
      v81 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v82 = v111;
      v84 = v106;
      v83 = v107;
      (*(v111 + 16))(v106, *(v104 + 56) + *(v111 + 72) * (v81 | (v79 << 6)), v107);
      v113 = *(v112 + v105);

      v85 = v108;
      sub_2648B8DC4();
      (*v77)(v85, v109);
    }

    v80 = v112;
    while (1)
    {
      v79 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        return result;
      }

      if (v79 >= v76)
      {
        break;
      }

      v75 = *(v72 + 8 * v79);
      ++i;
      if (v75)
      {
        i = v79;
        goto LABEL_22;
      }
    }

    [*(v80 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter) postNotificationName:*(v80 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName) object:0];
    v86 = v93;
    if (*(*(v80 + v88) + 16))
    {
      sub_2648AC264(v93);
    }

    sub_2648AED04(v114, v86);
    (*(v94 + 8))(v102, v110);
    return (*(v91 + 8))(v86, v89);
  }
}

uint64_t sub_2648B0848(uint64_t a1)
{
  v2 = v1;
  v134 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82018, &qword_2648BB080);
  v112 = *(v123 - 8);
  v3 = *(v112 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v105 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v124 = *(v121 - 8);
  v5 = *(v124 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BF8, &qword_2648B9CE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v116 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82050, &qword_2648BB0B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v115 = &v105 - v12;
  v125 = sub_2648B88D4();
  v114 = *(v125 - 8);
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v125);
  v128 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2648B8874();
  v129 = *(v132 - 8);
  v15 = *(v129 + 64);
  v16 = MEMORY[0x28223BE20](v132);
  v118 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v105 - v19;
  MEMORY[0x28223BE20](v18);
  v127 = &v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF81BE8, &qword_2648BB0C0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v113 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v105 - v26;
  v28 = type metadata accessor for Session(0);
  v130 = *(v28 - 8);
  v29 = *(v130 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v131 = &v105 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82010, &qword_2648BB078);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v105 - v36;
  v38 = sub_2648B8804();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v105 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v42;
  v45 = v44;
  sub_264893A10(v2 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, v37, &qword_27FF82010, &qword_2648BB078);
  if ((*(v45 + 48))(v37, 1, v43) == 1)
  {
    sub_264891214(v37, &qword_27FF82010, &qword_2648BB078);
    sub_2648AE930();
    swift_allocError();
    *v46 = 3;
    return swift_willThrow();
  }

  v111 = v45;
  (*(v45 + 32))(v41, v37, v43);
  v48 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers;
  swift_beginAccess();
  v110 = v48;
  v49 = *(*(v2 + v48) + 16);
  v126 = v2;
  if (!v49)
  {
    sub_2648ACC88();
    v2 = v126;
  }

  v119 = v41;
  v50 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions;
  swift_beginAccess();
  v51 = *(v2 + v50);
  if (!*(v51 + 16))
  {
    goto LABEL_10;
  }

  v52 = *(v2 + v50);

  v53 = sub_26488F280(v134);
  if ((v54 & 1) == 0)
  {

LABEL_10:
    sub_2648AE930();
    swift_allocError();
    *v58 = 1;
    swift_willThrow();
    return (*(v111 + 8))(v119, v43);
  }

  v109 = v43;
  sub_2648B6B80(*(v51 + 56) + *(v130 + 72) * v53, v32, type metadata accessor for Session);

  v55 = v131;
  sub_2648B6BE8(v32, v131, type metadata accessor for Session);
  if (*(v55 + *(v28 + 20)))
  {
    v56 = v129;
    v57 = v132;
    (*(v129 + 16))(v27, v55 + *(v28 + 24), v132);
LABEL_15:
    (*(v56 + 56))(v27, 0, 1, v57);
    sub_264891214(v27, &qword_27FF81BE8, &qword_2648BB0C0);
    sub_2648AE930();
    swift_allocError();
    *v86 = 2;
    swift_willThrow();
    sub_2648B6C50(v55, type metadata accessor for Session);
    v87 = *(v111 + 8);
    v88 = v119;
    return v87(v88, v109);
  }

  v59 = v127;
  sub_2648B8844();
  sub_2648B8864();
  LODWORD(v108) = sub_2648B8834();
  v56 = v129;
  v60 = v129 + 8;
  v61 = *(v129 + 8);
  v62 = v20;
  v63 = v59;
  v57 = v132;
  v61(v62, v132);
  v107 = v60;
  v106 = v61;
  v61(v63, v57);
  if ((v108 & 1) == 0)
  {
    v55 = v131;
    sub_2648B8844();
    goto LABEL_15;
  }

  v64 = *(v56 + 56);
  v105 = v56 + 56;
  v108 = v64;
  v64(v27, 1, 1, v57);
  sub_264891214(v27, &qword_27FF81BE8, &qword_2648BB0C0);
  v65 = v134;
  sub_2648AFB38(v134);
  v66 = v118;
  sub_2648B8864();
  v114 = *(v114 + 16);
  (v114)(v128, v65, v125);
  v67 = *(v56 + 16);
  v68 = v115;
  v69 = v131;
  v67(v115, v131, v132);
  v67(&v68[*(v28 + 24)], v66, v132);
  v68[*(v28 + 20)] = 1;
  (*(v130 + 56))(v68, 0, 1, v28);
  swift_beginAccess();
  v70 = v68;
  v71 = v128;
  sub_2648ADCF4(v70, v128);
  swift_endAccess();
  (v114)(v71, v134, v125);
  v72 = v132;
  v73 = v127;
  v67(v127, v69, v132);
  v74 = v113;
  v67(v113, v66, v72);
  v108(v74, 0, 1, v72);
  v75 = v116;
  v76 = v74;
  v77 = v126;
  sub_264891E74(v73, v76, v116);
  v78 = type metadata accessor for CompanionDevice.SessionInfo(0);
  (*(*(v78 - 8) + 56))(v75, 0, 1, v78);
  v79 = OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo;
  swift_beginAccess();
  sub_2648ADF14(v75, v128);
  swift_endAccess();
  v80 = *(v77 + v50);

  v82 = v119;
  v83 = v117;
  sub_2648B6934(v81);
  if (v83)
  {

    v84 = v66;
    v85 = v72;
LABEL_28:
    v106(v84, v85);
    sub_2648B6C50(v131, type metadata accessor for Session);
    v87 = *(v111 + 8);
    v88 = v82;
    return v87(v88, v109);
  }

  v89 = *(v77 + v110);
  v90 = *(v89 + 64);
  v128 = v89 + 64;
  v91 = 1 << *(v89 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & v90;
  v127 = ((v91 + 63) >> 6);
  v134 = v124 + 16;
  v129 = v124 + 8;
  v130 = v112 + 8;
  v94 = v89;

  v95 = 0;
  for (i = v79; v93; v82 = v119)
  {
    v97 = v95;
LABEL_25:
    v100 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    v101 = v124;
    v102 = v120;
    v103 = v121;
    (*(v124 + 16))(v120, *(v94 + 56) + *(v124 + 72) * (v100 | (v97 << 6)), v121);
    v133 = *(v126 + i);

    v104 = v122;
    sub_2648B8DC4();
    (*v130)(v104, v123);
    result = (*(v101 + 8))(v102, v103);
  }

  v98 = i;
  v99 = v126;
  while (1)
  {
    v97 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      break;
    }

    if (v97 >= v127)
    {

      [*(v99 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_notificationCenter) postNotificationName:*(v99 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_remoteNotificationName) object:0];
      v84 = v118;
      v85 = v132;
      goto LABEL_28;
    }

    v93 = *(v128 + 8 * v97);
    ++v95;
    if (v93)
    {
      v95 = v97;
      i = v98;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648B1584()
{
  sub_264891214(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_plistURL, &qword_27FF82010, &qword_2648BB078);

  sub_2648B6CB0(*(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_deadlineTimer));
  sub_2648B6D1C(*(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer), *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 8), *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observer + 16));
  v1 = *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_sessions);

  v2 = *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_interpretedSessionInfo);

  v3 = *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_observers);

  v4 = *(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_activeDeviceIDs);

  sub_2648B6CB0(*(v0 + OBJC_IVAR____TtC24ScreenContinuityServices14SessionManager_keepAliveTimer));
  return v0;
}

uint64_t sub_2648B165C()
{
  sub_2648B1584();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2648B16B4()
{
  v0 = type metadata accessor for SessionManager(0);
  v1 = sub_2648B6E3C(&qword_280F78F78, type metadata accessor for SessionManager);

  return sub_2648AA1F4(v0, v1);
}

uint64_t sub_2648B173C(uint64_t a1)
{
  v2 = sub_2648B77FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B1778(uint64_t a1)
{
  v2 = sub_2648B77FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B17B4(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820F0, &qword_2648BB548);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820F8, &qword_2648BB550);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82100, &unk_2648BB558);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B7754();
  sub_2648B9234();
  if (v22)
  {
    v24 = 1;
    sub_2648B77A8();
    sub_2648B90C4();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_2648B77FC();
    sub_2648B90C4();
    (*(v8 + 8))(v11, v7);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2648B1A68()
{
  if (*v0)
  {
    result = 0x6465646E65;
  }

  else
  {
    result = 0x657669746361;
  }

  *v0;
  return result;
}

uint64_t sub_2648B1A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_2648B9144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2648B9144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2648B1B70(uint64_t a1)
{
  v2 = sub_2648B7754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B1BAC(uint64_t a1)
{
  v2 = sub_2648B7754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B1BE8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2648B1C24(uint64_t a1)
{
  v2 = sub_2648B77A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B1C60(uint64_t a1)
{
  v2 = sub_2648B77A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B1C9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2648B7318(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_2648B1CF8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820C0, &qword_2648BB520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B721C();
  sub_2648B9234();
  v18 = 0;
  sub_2648B8874();
  sub_2648B6E3C(&qword_27FF820C8, MEMORY[0x277CC9578]);
  sub_2648B9104();
  if (!v2)
  {
    v11 = type metadata accessor for Session(0);
    v17 = *(v3 + *(v11 + 20));
    v16 = 1;
    sub_2648B72C4();
    sub_2648B9104();
    v12 = *(v11 + 24);
    v15 = 2;
    sub_2648B9104();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2648B1F08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = sub_2648B8874();
  v35 = *(v38 - 8);
  v4 = *(v35 + 64);
  v5 = MEMORY[0x28223BE20](v38);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v30 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820B0, &qword_2648BB518);
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v11 = &v30 - v10;
  v12 = type metadata accessor for Session(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B721C();
  sub_2648B9224();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = v7;
  v33 = a1;
  v31 = v12;
  v17 = v15;
  v18 = v35;
  v43 = 0;
  v19 = sub_2648B6E3C(&qword_27FF820B8, MEMORY[0x277CC9578]);
  v20 = v36;
  sub_2648B90A4();
  v30 = v19;
  v21 = *(v18 + 32);
  v22 = v20;
  v23 = v38;
  v21(v15, v22, v38);
  v41 = 1;
  sub_2648B7270();
  sub_2648B90A4();
  v24 = v23;
  v36 = v21;
  v26 = v31;
  v25 = v32;
  v17[*(v31 + 20)] = v42;
  v40 = 2;
  sub_2648B90A4();
  v27 = v17;
  v28 = v33;
  (*(v37 + 8))(v11, v39);
  (v36)(v27 + *(v26 + 24), v25, v24);
  sub_2648B6B80(v27, v34, type metadata accessor for Session);
  __swift_destroy_boxed_opaque_existential_0(v28);
  return sub_2648B6C50(v27, type metadata accessor for Session);
}

uint64_t sub_2648B2340()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 1716482913;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_2648B238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2648B80D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2648B23C0(uint64_t a1)
{
  v2 = sub_2648B721C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2648B23FC(uint64_t a1)
{
  v2 = sub_2648B721C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2648B2470(uint64_t a1, id *a2)
{
  result = sub_2648B8C04();
  *a2 = 0;
  return result;
}

uint64_t sub_2648B24E8(uint64_t a1, id *a2)
{
  v3 = sub_2648B8C14();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2648B2568@<X0>(uint64_t *a1@<X8>)
{
  sub_2648B8C24();
  v2 = sub_2648B8BF4();

  *a1 = v2;
  return result;
}

uint64_t sub_2648B25AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2648B8BF4();

  *a2 = v5;
  return result;
}

uint64_t sub_2648B25F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2648B8C24();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2648B2620(uint64_t a1)
{
  v2 = sub_2648B6E3C(&qword_27FF820A0, type metadata accessor for Name);
  v3 = sub_2648B6E3C(&qword_27FF820A8, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2648B26DC()
{
  v1 = *v0;
  v2 = sub_2648B8C24();
  v3 = MEMORY[0x266742E90](v2);

  return v3;
}

uint64_t sub_2648B2718()
{
  v1 = *v0;
  sub_2648B8C24();
  sub_2648B8C54();
}

uint64_t sub_2648B276C()
{
  v1 = *v0;
  sub_2648B8C24();
  sub_2648B91D4();
  sub_2648B8C54();
  v2 = sub_2648B9214();

  return v2;
}

uint64_t sub_2648B27E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2648B8C24();
  v6 = v5;
  if (v4 == sub_2648B8C24() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2648B9144();
  }

  return v9 & 1;
}

uint64_t sub_2648B2868(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for CompanionDevice.SessionInfo(0);
  v74 = *(v67 - 8);
  v4 = *(v74 + 64);
  v5 = MEMORY[0x28223BE20](v67);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v58 - v8;
  v75 = sub_2648B88D4();
  v66 = *(v75 - 8);
  v9 = *(v66 + 64);
  v10 = MEMORY[0x28223BE20](v75);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82110, &qword_2648BB570);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v19 = &v58 - v18;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = a2;
  v20 = 0;
  v62 = a1;
  v23 = *(a1 + 64);
  v22 = a1 + 64;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v59 = v22;
  v60 = v66 + 16;
  v70 = &v58 - v18;
  v71 = (v66 + 32);
  v63 = (v66 + 8);
  v61 = v7;
  while (v26)
  {
    v72 = (v26 - 1) & v26;
    v28 = __clz(__rbit64(v26)) | (v20 << 6);
LABEL_16:
    v33 = v62;
    v35 = v65;
    v34 = v66;
    v36 = v75;
    (*(v66 + 16))(v65, *(v62 + 48) + *(v66 + 72) * v28, v75);
    v37 = v73;
    sub_2648B6B80(*(v33 + 56) + *(v74 + 72) * v28, v73, type metadata accessor for CompanionDevice.SessionInfo);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
    v39 = *(v38 + 48);
    v40 = *(v34 + 32);
    v41 = v69;
    v40(v69, v35, v36);
    v42 = &v41[v39];
    v43 = v41;
    sub_2648B6BE8(v37, v42, type metadata accessor for CompanionDevice.SessionInfo);
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    v7 = v61;
    v19 = v70;
LABEL_17:
    sub_264893A78(v43, v19, &qword_27FF82110, &qword_2648BB570);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
    v45 = (*(*(v44 - 8) + 48))(v19, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    v47 = *(v44 + 48);
    v48 = v68;
    v49 = v75;
    (*v71)(v68, v19, v75);
    sub_2648B6BE8(&v19[v47], v7, type metadata accessor for CompanionDevice.SessionInfo);
    v50 = v64;
    v51 = sub_26488F280(v48);
    LOBYTE(v47) = v52;
    (*v63)(v48, v49);
    if ((v47 & 1) == 0)
    {
      sub_2648B6C50(v7, type metadata accessor for CompanionDevice.SessionInfo);
      return 0;
    }

    v53 = *(v50 + 56) + *(v74 + 72) * v51;
    v54 = v73;
    sub_2648B6B80(v53, v73, type metadata accessor for CompanionDevice.SessionInfo);
    sub_2648B6E3C(&qword_27FF81C20, type metadata accessor for CompanionDevice.SessionInfo);
    v55 = sub_2648B8BE4();
    sub_2648B6C50(v54, type metadata accessor for CompanionDevice.SessionInfo);
    result = sub_2648B6C50(v7, type metadata accessor for CompanionDevice.SessionInfo);
    v19 = v70;
    v26 = v72;
    if ((v55 & 1) == 0)
    {
      return v46;
    }
  }

  if (v27 <= v20 + 1)
  {
    v29 = v20 + 1;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29 - 1;
  while (1)
  {
    v31 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82118, &unk_2648BB578);
      v57 = v69;
      (*(*(v56 - 8) + 56))(v69, 1, 1, v56);
      v72 = 0;
      v20 = v30;
      v43 = v57;
      goto LABEL_17;
    }

    v32 = *(v59 + 8 * v31);
    ++v20;
    if (v32)
    {
      v72 = (v32 - 1) & v32;
      v28 = __clz(__rbit64(v32)) | (v31 << 6);
      v20 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2648B2E98(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_2648B88D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82160, &qword_2648BB5C8);
  v52 = a2;
  result = sub_2648B9024();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2648B3348(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v62 = a6;
  v9 = v6;
  v12 = a3(0);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v51 - v14;
  v15 = sub_2648B88D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  v21 = v19;
  result = sub_2648B9024();
  v23 = result;
  if (*(v19 + 16))
  {
    v60 = v15;
    v24 = 0;
    v25 = (v19 + 64);
    v26 = 1 << *(v19 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v19 + 64);
    v29 = (v26 + 63) >> 6;
    v51 = v9;
    v52 = (v16 + 16);
    v53 = v19;
    v54 = v16;
    v58 = (v16 + 32);
    v30 = result + 64;
    v31 = v57;
    while (v28)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v36 = v33 | (v24 << 6);
      v37 = *(v21 + 48);
      v59 = *(v54 + 72);
      v38 = v37 + v59 * v36;
      if (v56)
      {
        (*v58)(v31, v38, v60);
        v39 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_2648B6BE8(v39 + v40 * v36, v61, v62);
      }

      else
      {
        (*v52)(v31, v38, v60);
        v41 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_2648B6B80(v41 + v40 * v36, v61, v62);
      }

      v42 = *(v23 + 40);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v43 = -1 << *(v23 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v30 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v31 = v57;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v30 + 8 * v45);
          if (v49 != -1)
          {
            v32 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v44) & ~*(v30 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v31 = v57;
LABEL_9:
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      (*v58)((*(v23 + 48) + v59 * v32), v31, v60);
      result = sub_2648B6BE8(v61, *(v23 + 56) + v40 * v32, v62);
      ++*(v23 + 16);
      v21 = v53;
    }

    v34 = v24;
    while (1)
    {
      v24 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v24 >= v29)
      {
        break;
      }

      v35 = v25[v24];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v28 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v21 + 32);
    v9 = v51;
    if (v50 >= 64)
    {
      bzero(v25, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v50;
    }

    *(v21 + 16) = 0;
  }

LABEL_36:
  *v9 = v23;
  return result;
}

uint64_t sub_2648B37BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26488F280(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2648B4CC0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2648B88D4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2648B3D44(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2648B3974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26488F280(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2648B501C(type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2648B88D4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Session(0);
    v22 = *(v15 - 8);
    sub_2648B6BE8(v14 + *(v22 + 72) * v8, a2, type metadata accessor for Session);
    sub_2648B4094(v8, v11, type metadata accessor for Session);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Session(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2648B3B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26488F280(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2648B501C(type metadata accessor for CompanionDevice.SessionInfo, &qword_27FF82140, &qword_2648BB598, type metadata accessor for CompanionDevice.SessionInfo);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2648B88D4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for CompanionDevice.SessionInfo(0);
    v22 = *(v15 - 8);
    sub_2648B6BE8(v14 + *(v22 + 72) * v8, a2, type metadata accessor for CompanionDevice.SessionInfo);
    sub_2648B4094(v8, v11, type metadata accessor for CompanionDevice.SessionInfo);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for CompanionDevice.SessionInfo(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_2648B3D44(int64_t a1, uint64_t a2)
{
  v4 = sub_2648B88D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2648B8F34();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
      v24 = sub_2648B8BC4();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2648B4094(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_2648B88D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_2648B8F34();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
      v25 = sub_2648B8BC4();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2648B43E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26488F280(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2648B4CC0();
      goto LABEL_7;
    }

    sub_2648B2E98(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_26488F280(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2648B4ACC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2648B45F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26488F280(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for Session(0);
      return sub_2648B79CC(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for Session);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_2648B501C(type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
    goto LABEL_7;
  }

  sub_2648B3348(v18, a3 & 1, type metadata accessor for Session, &qword_27FF82108, &qword_2648BB568, type metadata accessor for Session);
  v25 = *v4;
  v26 = sub_26488F280(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2648B4BCC(v15, v12, a1, v21, type metadata accessor for Session, type metadata accessor for Session);
}

uint64_t sub_2648B4860(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2648B88D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26488F280(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for CompanionDevice.SessionInfo(0);
      return sub_2648B79CC(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for CompanionDevice.SessionInfo);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_2648B501C(type metadata accessor for CompanionDevice.SessionInfo, &qword_27FF82140, &qword_2648BB598, type metadata accessor for CompanionDevice.SessionInfo);
    goto LABEL_7;
  }

  sub_2648B3348(v18, a3 & 1, type metadata accessor for CompanionDevice.SessionInfo, &qword_27FF82140, &qword_2648BB598, type metadata accessor for CompanionDevice.SessionInfo);
  v25 = *v4;
  v26 = sub_26488F280(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_2648B9174();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2648B4BCC(v15, v12, a1, v21, type metadata accessor for CompanionDevice.SessionInfo, type metadata accessor for CompanionDevice.SessionInfo);
}

uint64_t sub_2648B4ACC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2648B88D4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2648B4BCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_2648B88D4();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_2648B6BE8(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

char *sub_2648B4CC0()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82030, &qword_2648BB098);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_2648B88D4();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82160, &qword_2648BB5C8);
  v6 = *v0;
  v7 = sub_2648B9014();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_2648B501C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v49 = a4;
  v7 = v4;
  v8 = a1(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v39 - v10;
  v46 = sub_2648B88D4();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_2648B9014();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v40 = v7;
    v41 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v50 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v50;
    v42 = v51 + 32;
    v43 = v51 + 16;
    v44 = v13;
    v26 = v51;
    v27 = v49;
    if (v23)
    {
      do
      {
        v28 = __clz(__rbit64(v23));
        v52 = (v23 - 1) & v23;
LABEL_14:
        v31 = v28 | (v19 << 6);
        v32 = *(v26 + 72) * v31;
        v34 = v45;
        v33 = v46;
        (*(v26 + 16))(v45, *(v13 + 48) + v32, v46);
        v35 = *(v13 + 56);
        v36 = v47;
        v37 = *(v48 + 72) * v31;
        sub_2648B6B80(v35 + v37, v47, v27);
        (*(v26 + 32))(*(v25 + 48) + v32, v34, v33);
        v38 = v36;
        v13 = v44;
        result = sub_2648B6BE8(v38, *(v25 + 56) + v37, v27);
        v23 = v52;
      }

      while (v52);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v15 = v50;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v52 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

uint64_t sub_2648B5334(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_2648B8BC4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2648B6E3C(&qword_280F796D8, MEMORY[0x277CC95F0]);
      v23 = sub_2648B8BE4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2648B5970(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2648B5614(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2648B88D4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82120, &qword_2648BB588);
  result = sub_2648B8F84();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2648B5970(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2648B5614(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_2648B5C14();
      goto LABEL_12;
    }

    sub_2648B5E4C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
  v15 = sub_2648B8BC4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_2648B6E3C(&qword_280F796D8, MEMORY[0x277CC95F0]);
      v23 = sub_2648B8BE4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2648B9164();
  __break(1u);
  return result;
}

void *sub_2648B5C14()
{
  v1 = v0;
  v2 = sub_2648B88D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82120, &qword_2648BB588);
  v7 = *v0;
  v8 = sub_2648B8F74();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2648B5E4C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2648B88D4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82120, &qword_2648BB588);
  v10 = sub_2648B8F84();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
      result = sub_2648B8BC4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2648B6168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2648B88D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_2648B8BC4();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_2648B6E3C(&qword_280F796D8, MEMORY[0x277CC95F0]);
      v22 = sub_2648B8BE4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2648B5C14();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2648B6410(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_2648B6410(int64_t a1)
{
  v3 = sub_2648B88D4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_2648B8F34();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_2648B6E3C(&qword_280F796E0, MEMORY[0x277CC95F0]);
        v27 = sub_2648B8BC4();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_2648B6718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82158, &unk_2648BB5A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82108, &qword_2648BB568);
    v8 = sub_2648B9034();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_264893A10(v10, v6, &qword_27FF82158, &unk_2648BB5A0);
      result = sub_26488F280(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2648B88D4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for Session(0);
      result = sub_2648B6BE8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for Session);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2648B6934(void *a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = sub_2648B8804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2648B8794();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2648B8784();
  v27[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82128, &qword_2648BB590);
  sub_2648B78F4();
  v11 = sub_2648B8774();
  if (!v1)
  {
    v13 = v11;
    v26 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    sub_2648B87D4();
    v15 = sub_2648B87C4();
    (*(v4 + 8))(v7, v3);
    v27[0] = 0;
    v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v27];

    if (v16)
    {
      v17 = v27[0];
      v18 = v13;
      v19 = v26;
      sub_2648B8824();
      v20 = v18;
      v21 = v19;
    }

    else
    {
      v22 = v27[0];
      sub_2648B87A4();

      swift_willThrow();
      v20 = v13;
      v21 = v26;
    }

    sub_264894BFC(v20, v21);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2648B6B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2648B6BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2648B6C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2648B6CB0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82058, &qword_2648BB0C8);
    return (*(*(v1 - 8) + 8))(&v2, v1);
  }

  return result;
}

uint64_t sub_2648B6D1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4[0] = result;
    v4[1] = a2;
    v4[2] = a3;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF82060, &qword_2648BB0D0);
    return (*(*(v3 - 8) + 8))(v4, v3);
  }

  return result;
}

unint64_t sub_2648B6D90()
{
  result = qword_27FF82068;
  if (!qword_27FF82068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82068);
  }

  return result;
}

uint64_t sub_2648B6DE4(uint64_t a1)
{
  result = sub_2648B6E3C(&qword_280F78F80, type metadata accessor for SessionManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2648B6E3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2648B6EBC()
{
  sub_2648B6F90();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2648B6F90()
{
  if (!qword_280F796F0)
  {
    sub_2648B8804();
    v0 = sub_2648B8F04();
    if (!v1)
    {
      atomic_store(v0, &qword_280F796F0);
    }
  }
}

void type metadata accessor for Name()
{
  if (!qword_27FF82080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FF82080);
    }
  }
}

uint64_t sub_2648B7060()
{
  result = sub_2648B8874();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2648B70F0()
{
  result = qword_27FF83B60[0];
  if (!qword_27FF83B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF83B60);
  }

  return result;
}

unint64_t sub_2648B721C()
{
  result = qword_27FF84070;
  if (!qword_27FF84070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84070);
  }

  return result;
}

unint64_t sub_2648B7270()
{
  result = qword_27FF84078;
  if (!qword_27FF84078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84078);
  }

  return result;
}

unint64_t sub_2648B72C4()
{
  result = qword_27FF84080;
  if (!qword_27FF84080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84080);
  }

  return result;
}

uint64_t sub_2648B7318(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820D0, &qword_2648BB528);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820D8, &qword_2648BB530);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820E0, &qword_2648BB538);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2648B7754();
  v14 = v31;
  sub_2648B9224();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_2648B90B4();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_2648B8FC4();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF820E8, &qword_2648BB540) + 48);
    *v22 = &type metadata for Session.State;
    sub_2648B9064();
    sub_2648B8FB4();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_2648B77A8();
    sub_2648B9054();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_2648B77FC();
    sub_2648B9054();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v32;
}

unint64_t sub_2648B7754()
{
  result = qword_27FF84088;
  if (!qword_27FF84088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84088);
  }

  return result;
}

unint64_t sub_2648B77A8()
{
  result = qword_27FF84090;
  if (!qword_27FF84090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84090);
  }

  return result;
}

unint64_t sub_2648B77FC()
{
  result = qword_27FF84098;
  if (!qword_27FF84098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84098);
  }

  return result;
}

unint64_t sub_2648B78F4()
{
  result = qword_27FF82130;
  if (!qword_27FF82130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF82128, &qword_2648BB590);
    sub_2648B6E3C(&qword_27FF82138, MEMORY[0x277CC95F0]);
    sub_2648B7B0C(&qword_27FF840A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82130);
  }

  return result;
}

uint64_t sub_2648B79CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2648B7A34()
{
  result = qword_27FF82148;
  if (!qword_27FF82148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF82128, &qword_2648BB590);
    sub_2648B6E3C(&qword_27FF82150, MEMORY[0x277CC95F0]);
    sub_2648B7B0C(qword_27FF840A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82148);
  }

  return result;
}

uint64_t sub_2648B7B0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Session(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = sub_2648B8804();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2648B7BD8(uint64_t a1)
{
  v3 = *(sub_2648B8804() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2648AD624(a1, v4);
}

uint64_t sub_2648B7C48()
{
  v2 = *(sub_2648B88D4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26488D93C;

  return sub_2648AEBE8(v5, v6, v7, v4, v0 + v3);
}

unint64_t sub_2648B7D64()
{
  result = qword_27FF841B0[0];
  if (!qword_27FF841B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF841B0);
  }

  return result;
}

unint64_t sub_2648B7DBC()
{
  result = qword_27FF845C0[0];
  if (!qword_27FF845C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF845C0);
  }

  return result;
}

unint64_t sub_2648B7E14()
{
  result = qword_27FF846D0;
  if (!qword_27FF846D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF846D0);
  }

  return result;
}

unint64_t sub_2648B7E6C()
{
  result = qword_27FF846D8[0];
  if (!qword_27FF846D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF846D8);
  }

  return result;
}

unint64_t sub_2648B7EC4()
{
  result = qword_27FF84760;
  if (!qword_27FF84760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84760);
  }

  return result;
}

unint64_t sub_2648B7F1C()
{
  result = qword_27FF84768[0];
  if (!qword_27FF84768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF84768);
  }

  return result;
}

unint64_t sub_2648B7F74()
{
  result = qword_27FF847F0;
  if (!qword_27FF847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF847F0);
  }

  return result;
}

unint64_t sub_2648B7FCC()
{
  result = qword_27FF847F8[0];
  if (!qword_27FF847F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF847F8);
  }

  return result;
}

unint64_t sub_2648B8024()
{
  result = qword_27FF84880;
  if (!qword_27FF84880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF84880);
  }

  return result;
}

unint64_t sub_2648B807C()
{
  result = qword_27FF84888[0];
  if (!qword_27FF84888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FF84888);
  }

  return result;
}

uint64_t sub_2648B80D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_2648B9144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_2648B9144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1716482913 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2648B9144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *static ContinuityEligibility.isiPhoneMirroringEligible.getter()
{
  v36[3] = *MEMORY[0x277D85DE8];
  v1 = sub_2648B8B14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v34 = 0;
  v35 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (!domain_answer)
  {
    v22 = v35;
    v23 = sub_2648A56A4();
    v24 = *(v2 + 16);
    LOBYTE(v0) = v22 == 4;
    if (v22 == 4)
    {
      v24(v11, v23, v1);
      v28 = sub_2648B8AF4();
      v25 = sub_2648B8E24();
      if (!os_log_type_enabled(v28, v25))
      {
        v9 = v11;
        goto LABEL_15;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264887000, v28, v25, "Device is eligible for iPhone Mirroring", v26, 2u);
      v9 = v11;
    }

    else
    {
      v24(v9, v23, v1);
      v28 = sub_2648B8AF4();
      v29 = sub_2648B8E34();
      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_15;
      }

      v26 = swift_slowAlloc();
      *v26 = 134349056;
      swift_beginAccess();
      *(v26 + 4) = v35;
      _os_log_impl(&dword_264887000, v28, v29, "Device is ineligible for iPhone Mirroring due to answer: %{public}llu", v26, 0xCu);
    }

    MEMORY[0x2667439C0](v26, -1, -1);
LABEL_15:

    (*(v2 + 8))(v9, v1);
    goto LABEL_16;
  }

  v13 = domain_answer;
  v14 = sub_2648A56A4();
  (*(v2 + 16))(v6, v14, v1);
  v15 = sub_2648B8AF4();
  v16 = sub_2648B8E34();
  if (!os_log_type_enabled(v15, v16))
  {

    (*(v2 + 8))(v6, v1);
    goto LABEL_10;
  }

  v33 = v1;
  v17 = swift_slowAlloc();
  v0 = swift_slowAlloc();
  v36[0] = v0;
  *v17 = 136446210;
  result = strerror(v13);
  if (result)
  {
    v19 = sub_2648B8C74();
    v21 = sub_26488EB20(v19, v20, v36);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_264887000, v15, v16, "Failed to get eligibility answer: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v0);
    MEMORY[0x2667439C0](v0, -1, -1);
    MEMORY[0x2667439C0](v17, -1, -1);

    (*(v2 + 8))(v6, v33);
LABEL_10:
    sub_2648B85FC();
    swift_allocError();
    *v27 = v13;
    swift_willThrow();
LABEL_16:
    v31 = *MEMORY[0x277D85DE8];
    return (v0 & 1);
  }

  __break(1u);
  return result;
}

unint64_t sub_2648B85FC()
{
  result = qword_27FF82168;
  if (!qword_27FF82168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF82168);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContinuityEligibility.Errors(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContinuityEligibility.Errors(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}