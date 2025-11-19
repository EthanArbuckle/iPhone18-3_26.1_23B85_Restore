uint64_t sub_1C04B0274(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 112);

    sub_1C04F6460();
  }

  v4 = sub_1C04F55B0();
  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t sub_1C04B032C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v96 = a6;
  v97 = a5;
  v99 = a3;
  v106 = a1;
  v110 = a7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  v9 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v86 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D060, &qword_1C04F8C88);
  v104 = *(v109 - 8);
  v11 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v103 = &v86 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D078, &qword_1C04F8CA0);
  v92 = *(v93 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v86 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D080, &qword_1C04F8CA8);
  v94 = *(v95 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = (&v86 - v19);
  v20 = sub_1C04F54F0();
  v100 = *(v20 - 8);
  v21 = *(v100 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v98 = &v86 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v86 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v86 - v31);
  v33 = sub_1C04F5700();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v38;
  v108 = v37;
  (*(v38 + 16))(v36, a2);
  sub_1C04A13B0(v106, v32, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v36;
    v40 = *v32;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EDE40928 != -1)
    {
      swift_once();
    }

    v41 = sub_1C04F6400();
    __swift_project_value_buffer(v41, qword_1EDE40930);
    v42 = v40;
    v43 = sub_1C04F63E0();
    v44 = sub_1C04F6A20();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v112[0] = v46;
      *v45 = 136315138;
      v111[0] = v40;
      v47 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v48 = sub_1C04F6790();
      v50 = sub_1C047D76C(v48, v49, v112);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_1C0479000, v43, v44, "context fetch failure: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1C68DCEB0](v46, -1, -1);
      MEMORY[0x1C68DCEB0](v45, -1, -1);
    }

    v36 = v39;
    *v101 = 8;
    swift_storeEnumTagMultiPayload();
    v51 = v103;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88);
    v52 = v109;
    v53 = sub_1C04F64E0();

    (*(v104 + 8))(v51, v52);
  }

  else
  {
    v89 = a4;
    v54 = v100;
    v88 = *(v100 + 32);
    v55 = v88(v28, v32, v20);
    v56 = (*(*v99 + 184))(v55);
    sub_1C04F56A0();
    v57 = v105;
    sub_1C0482664(v56, v24, v105);
    v58 = v54 + 8;
    v106 = *(v54 + 8);
    v106(v24, v20);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v20);
    v60 = v20;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C04A12B4(v105, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v89 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EDE40928 != -1)
      {
        swift_once();
      }

      v61 = sub_1C04F6400();
      __swift_project_value_buffer(v61, qword_1EDE40930);
      v62 = sub_1C04F63E0();
      v63 = sub_1C04F6A20();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1C0479000, v62, v63, "unable to create unified query context", v64, 2u);
        MEMORY[0x1C68DCEB0](v64, -1, -1);
      }

      *v101 = 9;
      swift_storeEnumTagMultiPayload();
      v65 = v103;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88);
      v66 = v109;
      v53 = sub_1C04F64E0();
      (*(v104 + 8))(v65, v66);
      v106(v28, v20);
    }

    else
    {
      v87 = v28;
      v67 = v98;
      v88(v98, v105, v60);
      (*(v100 + 16))(v24, v67, v60);
      sub_1C04F56B0();
      sub_1C047ACAC();
      if (qword_1EDE41470 != -1)
      {
        swift_once();
      }

      v112[0] = xmmword_1EDE41478;
      v112[1] = *&qword_1EDE41488;
      v112[2] = xmmword_1EDE41498;
      v68 = sub_1C04B7354();
      sub_1C04A61B0(v97, v111);
      v69 = sub_1C04D94A0(v112, v36, v68, v111, 1);
      v70 = v89;
      v71 = v69;
      v73 = v72;
      sub_1C04A12B4(v111, &qword_1EBE0CE40, &qword_1C04F8900);

      v74 = v71;

      v75 = nw_activity_create();
      v76 = v74;
      sub_1C04E0B04(v76, v75, 0, 0xE000000000000000, v70);
      swift_unknownObjectRelease();

      v111[0] = v73;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D090, &unk_1C04F8CB8);
      v105 = v58;
      sub_1C047C1A4(&qword_1EDE408A8, &qword_1EBE0D090, &unk_1C04F8CB8);
      v104 = v60;
      sub_1C047C1A4(&qword_1EDE40878, &qword_1EBE0D060, &qword_1C04F8C88);
      v77 = v90;
      sub_1C04F6530();

      v78 = swift_allocObject();
      v79 = v96;
      *(v78 + 16) = v70;
      *(v78 + 24) = v79;
      sub_1C047C1A4(&qword_1EDE408D0, &qword_1EBE0D078, &qword_1C04F8CA0);

      v80 = v91;
      v81 = v93;
      sub_1C04F6500();

      (*(v92 + 8))(v77, v81);
      sub_1C047C1A4(&qword_1EDE40908, &qword_1EBE0D080, &qword_1C04F8CA8);
      v82 = v95;
      v53 = sub_1C04F64E0();

      (*(v94 + 8))(v80, v82);
      v83 = v104;
      v84 = v106;
      v106(v98, v104);
      v84(v87, v83);
    }
  }

  result = (*(v107 + 8))(v36, v108);
  *v110 = v53;
  return result;
}

uint64_t sub_1C04B12DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v62 = a3;
  v64 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  v3 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v48 - v4;
  v5 = sub_1C04F5730();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C04F5C60();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = sub_1C04F5750();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  if (qword_1EDE40928 != -1)
  {
    swift_once();
  }

  v22 = sub_1C04F6400();
  v23 = __swift_project_value_buffer(v22, qword_1EDE40930);
  v24 = v15[2];
  v25 = v64;
  v24(v21, v64, v14);
  v56 = v24;
  v57 = v15 + 2;
  v24(v19, v25, v14);
  v55 = v23;
  v26 = sub_1C04F63E0();
  v27 = sub_1C04F6A40();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v65 = v50;
    *v28 = 136315394;
    v49 = v27;
    sub_1C04F5710();
    v29 = sub_1C04F6790();
    v51 = v8;
    v31 = v30;
    v48 = v15[1];
    v48(v21, v14);
    v32 = sub_1C047D76C(v29, v31, &v65);
    v8 = v51;

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v33 = v52;
    sub_1C04F5740();
    v34 = sub_1C04F5720();
    v36 = v35;
    (*(v53 + 8))(v33, v54);
    v48(v19, v14);
    v37 = sub_1C047D76C(v34, v36, &v65);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1C0479000, v26, v49, "received rpc response with search status: %s, error detail: %s", v28, 0x16u);
    v38 = v50;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v38, -1, -1);
    MEMORY[0x1C68DCEB0](v28, -1, -1);
  }

  else
  {

    v39 = v15[1];
    v39(v19, v14);
    v39(v21, v14);
  }

  sub_1C04F5710();
  v40 = v59;
  v41 = v60;
  (*(v60 + 104))(v59, *MEMORY[0x1E69BD138], v8);
  sub_1C0484C50();
  v42 = sub_1C04F6730();
  v43 = *(v41 + 8);
  v43(v40, v8);
  v43(v13, v8);
  if (v42)
  {
    *(v61 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v63 = 6;
  }

  else
  {
    *(v61 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v44 = sub_1C04F63E0();
    v45 = sub_1C04F6A40();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C0479000, v44, v45, "publishing successful rpc response", v46, 2u);
      MEMORY[0x1C68DCEB0](v46, -1, -1);
    }

    v56(v63, v64, v14);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04B1900(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D058, &qword_1C04F8C80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = *a1;
  v38 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;
    sub_1C04B915C(v34, v35, v36, v37, a2);
    sub_1C0482080(v10, v11, v12, v13);
    v14 = 7;
    goto LABEL_3;
  }

  v38 = v8;
  v15 = v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = v8;
    v19 = v8;
    if (swift_dynamicCast())
    {
      v20 = v38;
      sub_1C04B2BC4();
      v21 = swift_allocError();
      *v22 = v20;
      sub_1C04B9574(v21, a2);

      *v7 = v20;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EDE40928 != -1)
    {
      swift_once();
    }

    v23 = sub_1C04F6400();
    __swift_project_value_buffer(v23, qword_1EDE40930);
    v24 = v8;
    v25 = sub_1C04F63E0();
    v26 = sub_1C04F6A20();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315138;
      v38 = v8;
      v29 = v8;
      v30 = sub_1C04F6790();
      v32 = sub_1C047D76C(v30, v31, &v34);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1C0479000, v25, v26, "search failure: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1C68DCEB0](v28, -1, -1);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
    }

    v14 = 1;
LABEL_3:
    *v7 = v14;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v16 = v34;
  v17 = v35;
  v18 = v36;
  sub_1C04B93C4(v34, v35, v36, a2);
  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v16, v17, v18);
}

void sub_1C04B1C94()
{
  OUTLINED_FUNCTION_7_0();
  v91 = v0;
  v109 = v1;
  v101 = v2;
  v102 = v3;
  v103 = v4;
  v5 = sub_1C04F5CB0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v107 = v7;
  v108 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v106 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D008, &qword_1C04F8B18);
  OUTLINED_FUNCTION_2_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_2(&v87 - v16);
  v17 = sub_1C04F5610();
  v18 = OUTLINED_FUNCTION_0(v17);
  v104 = v19;
  v105 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_2(&v87 - v24);
  v25 = sub_1C04F54F0();
  v26 = OUTLINED_FUNCTION_0(v25);
  v99 = v27;
  v100 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v98 = v31 - v30;
  v32 = sub_1C04F5CA0();
  v33 = OUTLINED_FUNCTION_2_1(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9_2(v37 - v36);
  v95 = sub_1C04F5650();
  v38 = OUTLINED_FUNCTION_0(v95);
  v94 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_2(&v87 - v43);
  v44 = sub_1C04F54B0();
  v45 = OUTLINED_FUNCTION_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v93 = sub_1C04F55F0();
  v53 = *(v93 - 8);
  v54 = v53;
  v55 = v53[8];
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_1();
  v58 = v57 - v56;
  sub_1C04F56F0();
  sub_1C04F55E0();
  sub_1C04F54A0();
  sub_1C04F5470();
  (*(v47 + 8))(v52, v44);
  sub_1C04F55C0();

  sub_1C04F55D0();
  v59 = sub_1C04F56E0();
  v61 = v60;
  sub_1C04B2B50(sub_1C04E7D10);
  v62 = *(*v61 + 16);
  v63 = v95;
  v64 = v94;
  sub_1C04B30C4(v62, sub_1C04E7D10);
  v65 = *v61;
  *(v65 + 16) = v62 + 1;
  v66 = v65 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v53[9] * v62;
  v67 = v93;
  v68 = v53[2];
  v103 = v58;
  v68(v66, v58, v93);
  v59(&v112, 0);
  v69 = v96;
  sub_1C04F5640();
  sub_1C04F5C90();
  sub_1C04F5630();
  (*(v99 + 16))(v98, v102, v100);
  sub_1C04F56B0();
  sub_1C04F5680();
  v70 = v63;
  (*(v64 + 16))(v97, v69, v63);
  sub_1C04F5670();
  sub_1C04F56D0();
  if (qword_1EDE41E20 != -1)
  {
    OUTLINED_FUNCTION_14();
  }

  v71 = byte_1EDE44D78;
  sub_1C04F5660();
  if (v71 == 1)
  {
    v72 = *(v91 + 128);
    if (v72)
    {
      v73 = v54;
      v74 = v72;
      v75 = sub_1C04F6740();
      v76 = [v74 objectForKey_];

      if (v76)
      {
        sub_1C04F6BB0();
        swift_unknownObjectRelease();
      }

      else
      {
        v110 = 0u;
        v111 = 0u;
      }

      v78 = v105;
      v112 = v110;
      v113 = v111;
      v54 = v73;
      if (*(&v111 + 1))
      {
        sub_1C04B2C20(0, &qword_1EDE44778, 0x1E696AD98);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_16:
          v77 = MEMORY[0x1E69BCBB8];
          goto LABEL_17;
        }

        v79 = v110;
        [v110 integerValue];

        v80 = v90;
        sub_1C04F5600();
        if (__swift_getEnumTagSinglePayload(v80, 1, v78) != 1)
        {
          v84 = v104;
          v85 = v88;
          (*(v104 + 32))(v88, v80, v78);
          (*(v84 + 16))(v89, v85, v78);
          sub_1C04F56C0();
          v86 = v85;
          v54 = v73;
          (*(v84 + 8))(v86, v78);
          goto LABEL_18;
        }

        v81 = &qword_1EBE0D008;
        v82 = &qword_1C04F8B18;
        v83 = v80;
LABEL_15:
        sub_1C04A12B4(v83, v81, v82);
        goto LABEL_16;
      }
    }

    else
    {
      v112 = 0u;
      v113 = 0u;
      v78 = v105;
    }

    v81 = &qword_1EBE0CB20;
    v82 = &unk_1C04F8B20;
    v83 = &v112;
    goto LABEL_15;
  }

  v77 = MEMORY[0x1E69BCBB0];
  v78 = v105;
LABEL_17:
  (*(v104 + 104))(v92, *v77, v78);
  sub_1C04F56C0();
LABEL_18:
  (*(v107 + 16))(v106, v109, v108);
  sub_1C04F5690();
  (*(v64 + 8))(v69, v70);
  (v54[1])(v103, v67);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B24C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C04F5CB0();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  (*(v10 + 104))(v14 - v13, *MEMORY[0x1E69BD1A0], v7);
  (*(*v3 + 640))(a1, a2, a3, v15);
  return (*(v10 + 8))(v15, v7);
}

void sub_1C04B25F8()
{
  OUTLINED_FUNCTION_7_0();
  v47 = v1;
  v45 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v50 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0);
  OUTLINED_FUNCTION_2_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v43 = sub_1C04F65C0();
  v16 = OUTLINED_FUNCTION_0(v43);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = sub_1C04F6A80();
  v25 = OUTLINED_FUNCTION_0(v24);
  v48 = v26;
  v49 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D010, &qword_1C04F8B30);
  OUTLINED_FUNCTION_0(v44);
  v46 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_5_4();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v42 - v37;
  (*(*v0 + 560))(v36);
  v51 = (*(*v0 + 592))(v8, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D018, &qword_1C04F8B38);
  OUTLINED_FUNCTION_3();
  sub_1C047C1A4(v39, &qword_1EBE0D018, &qword_1C04F8B38);
  sub_1C04B2BC4();
  sub_1C04F6580();

  (*(v18 + 16))(v23, v45, v43);
  sub_1C04F6A90();
  v51 = v47;
  v40 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v40);
  sub_1C04B2C20(0, &qword_1EDE44168, 0x1E69E9610);
  sub_1C047C1A4(&qword_1EBE0D028, &qword_1EBE0D010, &qword_1C04F8B30);
  sub_1C04B2C60();

  v41 = v44;
  sub_1C04F6550();

  sub_1C04A12B4(v15, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v48 + 8))(v31, v49);
  (*(v46 + 8))(v38, v41);
  OUTLINED_FUNCTION_6();
}

void sub_1C04B29FC(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *(a1 + qword_1EDE44718) = 27;
  sub_1C0483574();
  *a2 = 2;
}

uint64_t PegasusProxyForAssistant.deinit()
{
  v0 = BasePegasusProxy.deinit();

  return v0;
}

uint64_t PegasusProxyForAssistant.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

id sub_1C04B2ABC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C04F6740();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1C04B2B50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1C04B2BC4()
{
  result = qword_1EBE0D020;
  if (!qword_1EBE0D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D020);
  }

  return result;
}

uint64_t sub_1C04B2C20(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1C04B2C60()
{
  result = qword_1EDE41568[0];
  if (!qword_1EDE41568[0])
  {
    sub_1C04B2C20(255, &qword_1EDE44168, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE41568);
  }

  return result;
}

unint64_t sub_1C04B2CCC()
{
  result = qword_1EBE0D030;
  if (!qword_1EBE0D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D030);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PegasusProxyForAssistant.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForAssistant.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

void sub_1C04B2FF0(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5700() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));

  sub_1C04AF8C0(a1, v2 + v6, v2 + v7, v9, a2);
}

uint64_t sub_1C04B30C4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C04B3114@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5700() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04B032C(a1, v2 + v6, v10, v11, v2 + v9, v12, a2);
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_once();
}

uint64_t sub_1C04B324C()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D098);
  __swift_project_value_buffer(v0, qword_1EBE0D098);
  return sub_1C04F63F0();
}

uint64_t PegasusProxyForEngagement.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

void sub_1C04B3368()
{
  *&xmmword_1EBE0D0B0 = 0xD000000000000042;
  *(&xmmword_1EBE0D0B0 + 1) = 0x80000001C04FD4C0;
  qword_1EBE0D0C0 = 0xD000000000000010;
  unk_1EBE0D0C8 = 0x80000001C04FD510;
  *&xmmword_1EBE0D0D0 = 0xD000000000000013;
  *(&xmmword_1EBE0D0D0 + 1) = 0x80000001C04FD530;
}

void PegasusProxyForEngagement.init()()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v30 = sub_1C04F6240();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = sub_1C04F6260();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *MEMORY[0x1E69BDB08];
  v17 = *(v2 + 104);
  v17(v6, v16, v30);
  sub_1C04F6270();
  v18 = sub_1C04F6250();
  v20 = v19;
  v21 = *(v10 + 8);
  v21(v15, v7);
  v1[16] = v18;
  v1[17] = v20;
  v1[18] = 3;
  v17(v6, v16, v30);
  sub_1C04F6270();
  v22 = sub_1C04F6250();
  v24 = v23;
  v21(v15, v7);
  v25 = v1[17];
  v1[16] = v22;
  v1[17] = v24;

  OUTLINED_FUNCTION_141();
  sub_1C04B8AAC(v26, v27, v28, v29, 0xF000000000000000, 0);
  OUTLINED_FUNCTION_6();
}

void PegasusProxyForEngagement.init(bagData:urlSession:client:)()
{
  OUTLINED_FUNCTION_7_0();
  v34 = v1;
  v35 = v0;
  v31 = v3;
  v32 = v2;
  v33 = v4;
  v30 = sub_1C04F6240();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1C04F6260();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = *MEMORY[0x1E69BDB08];
  v20 = *(v5 + 104);
  v20(v9, v19, v30);
  sub_1C04F6270();
  v21 = sub_1C04F6250();
  v23 = v22;
  v24 = *(v13 + 8);
  v24(v18, v10);
  v35[16] = v21;
  v35[17] = v23;
  v35[18] = v31;
  v20(v9, v19, v30);
  sub_1C04F6270();
  v25 = sub_1C04F6250();
  v27 = v26;
  v24(v18, v10);
  v28 = v35[17];
  v35[16] = v25;
  v35[17] = v27;

  sub_1C04A12A0(v32, v33);
  v29 = v34;
  sub_1C04B8AAC(v25, v27, 0, v32, v33, v34);

  sub_1C047AAE0();

  sub_1C047E0BC(v32, v33);

  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B3894()
{
  v1 = sub_1C04F6200();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  v6 = *(v0 + 16);
  v7 = *(v0 + 144);

  sub_1C04F6220();
  v8 = type metadata accessor for ResourceAccessSpan();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v6, 18, v5, 0, 1);
}

void sub_1C04B3944()
{
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v3 = v2;
  v34 = *v0;
  v35 = v4;
  v5 = sub_1C04F5AF0();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D158, &unk_1C04F8E20);
  v13 = OUTLINED_FUNCTION_0(v12);
  v37 = v14;
  v38 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v33 - v18;
  v19 = v0[16];
  v20 = v0[17];

  v21 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  v40 = v21;
  OUTLINED_FUNCTION_307();
  sub_1C049FB48(v19, v20, v22, 0xEA0000000000746ELL);
  sub_1C04B7390(v40);
  if (qword_1EDE42870 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v23 = v1[18];

  v24 = sub_1C04D0244(v23, 0);

  v39 = v24;
  (*(v8 + 16))(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v5);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v25, v11, v5);
  *(v28 + v26) = v1;
  v29 = v34;
  *(v28 + v27) = v35;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E8, &qword_1C04F8CD0);
  OUTLINED_FUNCTION_2_9();
  sub_1C047C1A4(v30, &qword_1EBE0D070, &qword_1C04F9350);
  sub_1C047C1A4(&qword_1EBE0D0F0, &qword_1EBE0D0E8, &qword_1C04F8CD0);
  v31 = v36;
  sub_1C04F65B0();

  OUTLINED_FUNCTION_3_7(&qword_1EBE0D160, &qword_1EBE0D158, &unk_1C04F8E20);
  v32 = v38;
  sub_1C04F64E0();
  (*(v37 + 8))(v31, v32);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B3CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v94 = a5;
  v95 = a3;
  v101 = a1;
  v105 = a6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  v8 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v84 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D118, &qword_1C04F8E08);
  v100 = *(v104 - 8);
  v10 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v84 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D168, &qword_1C04F8E30);
  v90 = *(v91 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v84 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D170, &qword_1C04F8E38);
  v92 = *(v93 - 8);
  v14 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v84 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v84 - v18);
  v20 = sub_1C04F54F0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v96 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v84 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v84 - v32);
  v34 = sub_1C04F5AF0();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v84 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v39;
  v103 = v38;
  (*(v39 + 16))(v37, a2);
  sub_1C04B713C(v101, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v37;
    v41 = *v33;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EBE0C9B8 != -1)
    {
      swift_once();
    }

    v42 = sub_1C04F6400();
    __swift_project_value_buffer(v42, qword_1EBE0D098);
    v43 = v41;
    v44 = sub_1C04F63E0();
    v45 = sub_1C04F6A20();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v108[0] = v47;
      *v46 = 136315138;
      *&v106[0] = v41;
      v48 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v49 = sub_1C04F6790();
      v51 = sub_1C047D76C(v49, v50, v108);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1C0479000, v44, v45, "context fetch failure: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1C68DCEB0](v47, -1, -1);
      MEMORY[0x1C68DCEB0](v46, -1, -1);
    }

    v52 = v40;
    *v97 = 7;
    swift_storeEnumTagMultiPayload();
    v53 = v99;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08);
    v54 = v104;
    v55 = sub_1C04F64E0();

    (*(v100 + 1))(v53, v54);
  }

  else
  {
    v85 = a4;
    v56 = *(v21 + 32);
    v56(v29, v33, v20);
    sub_1C04F5AD0();
    v101 = v29;
    sub_1C0482664(18, v25, v19);
    v57 = *(v21 + 8);
    v87 = v21 + 8;
    v86 = v57;
    v57(v25, v20);
    v52 = v37;
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_1C04A12B4(v19, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v85 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EBE0C9B8 != -1)
      {
        swift_once();
      }

      v58 = sub_1C04F6400();
      __swift_project_value_buffer(v58, qword_1EBE0D098);
      v59 = sub_1C04F63E0();
      v60 = sub_1C04F6A20();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1C0479000, v59, v60, "unable to create unified query context", v61, 2u);
        v62 = v61;
        v52 = v37;
        MEMORY[0x1C68DCEB0](v62, -1, -1);
      }

      *v97 = 8;
      swift_storeEnumTagMultiPayload();
      v63 = v99;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08);
      v64 = v104;
      v55 = sub_1C04F64E0();
      (*(v100 + 1))(v63, v64);
      v86(v101, v20);
    }

    else
    {
      v65 = v96;
      v56(v96, v19, v20);
      (*(v21 + 16))(v25, v65, v20);
      sub_1C04F5AE0();
      sub_1C047ACAC();
      v66 = v20;
      if (qword_1EBE0C9C0 != -1)
      {
        swift_once();
      }

      v108[0] = xmmword_1EBE0D0B0;
      v108[1] = *&qword_1EBE0D0C0;
      v108[2] = xmmword_1EBE0D0D0;
      v67 = sub_1C04B7354();
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      v68 = sub_1C04D972C(v108, v52, v67, v106, 1);
      v69 = v85;
      v70 = v68;
      v72 = v71;
      sub_1C04A12B4(v106, &qword_1EBE0CE40, &qword_1C04F8900);

      v73 = v70;

      v74 = nw_activity_create();
      v75 = v73;
      sub_1C04E0B04(v75, v74, 0, 0xE000000000000000, v69);
      swift_unknownObjectRelease();

      *&v106[0] = v72;

      sub_1C04F6410();
      v100 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D138, &qword_1C04FA7F0);
      sub_1C047C1A4(&qword_1EBE0D140, &qword_1EBE0D138, &qword_1C04FA7F0);
      sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08);
      v76 = v88;
      sub_1C04F6530();

      v77 = swift_allocObject();
      v78 = v94;
      *(v77 + 16) = v69;
      *(v77 + 24) = v78;
      sub_1C047C1A4(&qword_1EBE0D178, &qword_1EBE0D168, &qword_1C04F8E30);

      v79 = v89;
      v80 = v91;
      sub_1C04F6500();
      v52 = v100;

      (*(v90 + 8))(v76, v80);
      sub_1C047C1A4(&qword_1EBE0D180, &qword_1EBE0D170, &qword_1C04F8E38);
      v81 = v93;
      v55 = sub_1C04F64E0();

      (*(v92 + 8))(v79, v81);
      v82 = v86;
      v86(v96, v66);
      v82(v101, v66);
    }
  }

  result = (*(v102 + 8))(v52, v103);
  *v105 = v55;
  return result;
}

uint64_t sub_1C04B4C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v73 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  v4 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v6 = &v57 - v5;
  v7 = sub_1C04F5B60();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C04F5BC0();
  v69 = *(v67 - 8);
  v10 = *(v69 + 64);
  v11 = MEMORY[0x1EEE9AC00](v67);
  v68 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - v13;
  v15 = sub_1C04F5B20();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  if (qword_1EBE0C9B8 != -1)
  {
    swift_once();
  }

  v23 = sub_1C04F6400();
  v24 = __swift_project_value_buffer(v23, qword_1EBE0D098);
  v25 = v16[2];
  v25(v22, a1, v15);
  v71 = a1;
  v65 = v25;
  v66 = v16 + 2;
  v25(v20, a1, v15);
  v64 = v24;
  v26 = sub_1C04F63E0();
  v27 = v15;
  v28 = sub_1C04F6A40();
  if (os_log_type_enabled(v26, v28))
  {
    v29 = swift_slowAlloc();
    v58 = v28;
    v30 = v29;
    v59 = swift_slowAlloc();
    v74 = v59;
    *v30 = 136315394;
    v57 = v26;
    sub_1C04F5B10();
    v31 = v67;
    v32 = sub_1C04F6790();
    v60 = v6;
    v34 = v33;
    v35 = v16[1];
    v35(v22, v27);
    v36 = sub_1C047D76C(v32, v34, &v74);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v37 = v61;
    sub_1C04F5B00();
    v38 = sub_1C04F5B50();
    v40 = v39;
    (*(v62 + 8))(v37, v63);
    v35(v20, v27);
    v41 = sub_1C047D76C(v38, v40, &v74);
    v6 = v60;

    *(v30 + 14) = v41;
    v42 = v57;
    _os_log_impl(&dword_1C0479000, v57, v58, "received rpc response with search status: %s, error  detail: %s", v30, 0x16u);
    v43 = v59;
    swift_arrayDestroy();
    MEMORY[0x1C68DCEB0](v43, -1, -1);
    MEMORY[0x1C68DCEB0](v30, -1, -1);

    v44 = v27;
  }

  else
  {

    v45 = v16[1];
    v45(v20, v15);
    v45(v22, v15);
    v44 = v15;
    v31 = v67;
  }

  v46 = v71;
  sub_1C04F5B10();
  v47 = v68;
  v48 = v69;
  (*(v69 + 104))(v68, *MEMORY[0x1E69BCED0], v31);
  sub_1C04B71BC(&qword_1EDE41530, MEMORY[0x1E69BCEE0]);
  v49 = sub_1C04F6730();
  v50 = *(v48 + 8);
  v50(v47, v31);
  v50(v14, v31);
  if (v49)
  {
    *(v70 + qword_1EDE44718) = 19;
    sub_1C0483574();
    *v6 = 6;
  }

  else
  {
    *(v70 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v51 = sub_1C04F63E0();
    v52 = sub_1C04F6A40();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = v6;
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1C0479000, v51, v52, "publishing successful rpc response", v54, 2u);
      v55 = v54;
      v6 = v53;
      MEMORY[0x1C68DCEB0](v55, -1, -1);
    }

    v65(v6, v46, v44);
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04B52A4(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = *a1;
  v37 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v10 = v33;
    v11 = v34;
    v12 = v35;
    v13 = v36;
    sub_1C04B915C(v33, v34, v35, v36, a2);
    sub_1C0482080(v10, v11, v12, v13);
    goto LABEL_3;
  }

  v37 = v8;
  v14 = v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = v8;
    v18 = v8;
    if (swift_dynamicCast())
    {
      v19 = v37;
      sub_1C04B6C44();
      v20 = swift_allocError();
      *v21 = v19;
      sub_1C04B9574(v20, a2);

      *v7 = v19;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EBE0C9B8 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EBE0D098);
    v23 = v8;
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v37 = v8;
      v28 = v8;
      v29 = sub_1C04F6790();
      v31 = sub_1C047D76C(v29, v30, &v33);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "search failure: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

LABEL_3:
    *v7 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v15 = v33;
  v16 = v34;
  v17 = v35;
  sub_1C04B93C4(v33, v34, v35, a2);
  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v15, v16, v17);
}

void sub_1C04B5634()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  OUTLINED_FUNCTION_152(v50);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v9);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D118, &qword_1C04F8E08);
  OUTLINED_FUNCTION_0(v51);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D120, &qword_1C04F8E10);
  v14 = OUTLINED_FUNCTION_0(v13);
  v46 = v15;
  v47 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v43 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D128, &qword_1C04F8E18);
  v21 = OUTLINED_FUNCTION_0(v20);
  v48 = v22;
  v49 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v25);
  v45 = &v43 - v26;
  v27 = *(v0 + 128);
  v28 = *(v0 + 136);

  v29 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  *&v53[0] = v29;
  OUTLINED_FUNCTION_307();
  sub_1C049FB48(v27, v28, v30, 0xEA0000000000746ELL);
  sub_1C04B7390(*&v53[0]);
  sub_1C04B655C();
  sub_1C047ACAC();
  if (qword_1EBE0C9C0 != -1)
  {
    swift_once();
  }

  v53[0] = xmmword_1EBE0D0B0;
  v53[1] = *&qword_1EBE0D0C0;
  v53[2] = xmmword_1EBE0D0D0;
  v31 = sub_1C04B7354();
  v32 = sub_1C04D972C(v53, v6, v31, v2, 0);
  v34 = v33;

  v35 = v32;

  v36 = nw_activity_create();
  v37 = v35;
  v50 = v37;
  sub_1C04E0B04(v37, v36, 0, 0xE000000000000000, v4);
  swift_unknownObjectRelease();

  v52 = v34;

  sub_1C04F6410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D138, &qword_1C04FA7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E8, &qword_1C04F8CD0);
  OUTLINED_FUNCTION_2_9();
  sub_1C047C1A4(v38, &qword_1EBE0D138, &qword_1C04FA7F0);
  sub_1C047C1A4(&qword_1EBE0D0F0, &qword_1EBE0D0E8, &qword_1C04F8CD0);
  v39 = v44;
  sub_1C04F6530();

  OUTLINED_FUNCTION_3_7(&qword_1EBE0D148, &qword_1EBE0D120, &qword_1C04F8E10);
  OUTLINED_FUNCTION_4_4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08);

  v40 = v45;
  v41 = v47;
  sub_1C04F6500();

  (*(v46 + 8))(v39, v41);
  sub_1C047C1A4(&qword_1EBE0D150, &qword_1EBE0D128, &qword_1C04F8E18);
  v42 = v49;
  sub_1C04F64E0();

  (*(v48 + 8))(v40, v42);
  OUTLINED_FUNCTION_6();
}

uint64_t sub_1C04B5D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D118, &qword_1C04F8E08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  *(a2 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EBE0C9B8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C04F6400();
  __swift_project_value_buffer(v15, qword_1EBE0D098);
  v16 = sub_1C04F63E0();
  v17 = sub_1C04F6A40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C0479000, v16, v17, "publishing successful rpc response", v18, 2u);
    MEMORY[0x1C68DCEB0](v18, -1, -1);
  }

  v19 = sub_1C04F5B20();
  (*(*(v19 - 8) + 16))(v9, a1, v19);
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C047C1A4(&qword_1EBE0D130, &qword_1EBE0D118, &qword_1C04F8E08);
  v20 = sub_1C04F64E0();
  result = (*(v11 + 8))(v14, v10);
  *a3 = v20;
  return result;
}

uint64_t sub_1C04B5FC8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D110, &qword_1C04F8E00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v49 - v8;
  v10 = *a1;
  v52 = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v12 = v50[0];
    v13 = v50[1];
    v14 = v50[2];
    v15 = v51;
    *(a2 + qword_1EDE44718) = 26;
    sub_1C0483574();
    if (qword_1EBE0C9B8 != -1)
    {
      swift_once();
    }

    v16 = sub_1C04F6400();
    __swift_project_value_buffer(v16, qword_1EBE0D098);
    sub_1C04B7038(v12, v13, v14, v15);
    v17 = sub_1C04F63E0();
    v18 = sub_1C04F6A20();
    sub_1C0482080(v12, v13, v14, v15);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v49[2] = a3;
      v20 = v19;
      v21 = swift_slowAlloc();
      v49[1] = v6;
      v22 = v21;
      v50[0] = v21;
      *v20 = 136315138;
      v23 = sub_1C04C971C(v12, v13, v14, v15);
      v49[0] = v9;
      v24 = v23;
      v26 = v25;
      sub_1C0482080(v12, v13, v14, v15);
      v27 = sub_1C047D76C(v24, v26, v50);

      *(v20 + 4) = v27;
      v9 = v49[0];
      _os_log_impl(&dword_1C0479000, v17, v18, "rpc failure: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1C68DCEB0](v22, -1, -1);
      MEMORY[0x1C68DCEB0](v20, -1, -1);
    }

    else
    {

      sub_1C0482080(v12, v13, v14, v15);
    }

    *v9 = 0;
  }

  else
  {
    v50[0] = v10;
    v28 = v10;
    if (swift_dynamicCast())
    {
      v29 = v52;
      *(a2 + qword_1EDE44718) = 48;
      sub_1C0483574();
      if (qword_1EBE0C9B8 != -1)
      {
        swift_once();
      }

      v30 = sub_1C04F6400();
      __swift_project_value_buffer(v30, qword_1EBE0D098);
      v31 = sub_1C04F63E0();
      v32 = sub_1C04F6A20();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v50[0] = v34;
        *v33 = 136315138;
        LOBYTE(v52) = v29;
        v35 = sub_1C04F6790();
        v37 = sub_1C047D76C(v35, v36, v50);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1C0479000, v31, v32, "search failure: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1C68DCEB0](v34, -1, -1);
        MEMORY[0x1C68DCEB0](v33, -1, -1);
      }

      *v9 = v29;
    }

    else
    {
      *(a2 + qword_1EDE44718) = 24;
      sub_1C0483574();
      if (qword_1EBE0C9B8 != -1)
      {
        swift_once();
      }

      v38 = sub_1C04F6400();
      __swift_project_value_buffer(v38, qword_1EBE0D098);
      v39 = v10;
      v40 = sub_1C04F63E0();
      v41 = sub_1C04F6A20();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v50[0] = v43;
        *v42 = 136315138;
        v52 = v10;
        v44 = v10;
        v45 = sub_1C04F6790();
        v47 = sub_1C047D76C(v45, v46, v50);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_1C0479000, v40, v41, "search failure: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1C68DCEB0](v43, -1, -1);
        MEMORY[0x1C68DCEB0](v42, -1, -1);
      }

      *v9 = 1;
    }
  }

  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

uint64_t sub_1C04B655C()
{
  result = sub_1C04B7294();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 144);
    if (v3 == 2)
    {
      v7 = OUTLINED_FUNCTION_12_2();
      v8 = OUTLINED_FUNCTION_7_7();

      if (!v8)
      {
        v11 = sub_1C04F6740();
        v12 = [v2 configBoolForKey_];

        if (v12 & 1) != 0 || (v32 = &unk_1F3F85D90, v33 = sub_1C04B6FD4(), LOBYTE(v31[0]) = 5, v13 = sub_1C04F60E0(), __swift_destroy_boxed_opaque_existential_1(v31), (v13))
        {
          v14 = sub_1C047ACAC();
          v15 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
          OUTLINED_FUNCTION_141();
          swift_beginAccess();
          v16 = *(v14 + v15);

          v17 = sub_1C04D30CC();
          v19 = v18;
          v30 = v20;
          sub_1C04D4C24(&v29, 0x6867696C746F7073, 0xEF63707267655F74);

          sub_1C04D31F4(v17, v19, v30);

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else if (v3 == 4)
    {
      v4 = OUTLINED_FUNCTION_12_2();
      v5 = OUTLINED_FUNCTION_7_7();

      if (v5)
      {
        v6 = 0;
      }

      else
      {
        v9 = sub_1C04F6740();
        v10 = OUTLINED_FUNCTION_7_7();

        if (v10)
        {
          v6 = 1;
        }

        else
        {
          v32 = &unk_1F3F85D90;
          v33 = sub_1C04B6FD4();
          LOBYTE(v31[0]) = 4;
          v6 = sub_1C04F60E0();
          __swift_destroy_boxed_opaque_existential_1(v31);
        }
      }

      v32 = &unk_1F3F85D90;
      v33 = sub_1C04B6FD4();
      LOBYTE(v31[0]) = 3;
      v21 = sub_1C04F60E0();
      __swift_destroy_boxed_opaque_existential_1(v31);
      if (v21 & 1) != 0 && (v6)
      {
        v22 = sub_1C047ACAC();
        v23 = OBJC_IVAR____TtC10PegasusKit10GRPCClient__parsecDefaults;
        OUTLINED_FUNCTION_141();
        swift_beginAccess();
        v24 = *(v22 + v23);

        v25 = sub_1C04D30CC();
        v27 = v26;
        v30 = v28;
        sub_1C04D4C24(&v29, 0x655F70756B6F6F6CLL, 0xEC00000063707267);

        sub_1C04D31F4(v25, v27, v30);

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C04B6884()
{
  OUTLINED_FUNCTION_7_0();
  v35 = v0;
  v36 = v1;
  v40 = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0) - 8) + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  v33 = sub_1C04F65C0();
  v7 = OUTLINED_FUNCTION_0(v33);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1C04F6A80();
  v16 = OUTLINED_FUNCTION_0(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E0, &qword_1C04F8CC8);
  OUTLINED_FUNCTION_0(v34);
  v37 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v32 - v27;
  sub_1C04B3894();
  sub_1C04B3944();
  v41 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D0E8, &qword_1C04F8CD0);
  sub_1C047C1A4(&qword_1EBE0D0F0, &qword_1EBE0D0E8, &qword_1C04F8CD0);
  sub_1C04B6C44();
  sub_1C04F6580();

  (*(v9 + 16))(v14, v35, v33);
  sub_1C04F6A90();
  v41 = v36;
  v30 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v30);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EBE0D100, &qword_1EBE0D0E0, &qword_1C04F8CC8);
  sub_1C04B71BC(qword_1EDE41568, sub_1C04ABCD8);

  v31 = v34;
  sub_1C04F6550();

  sub_1C04A12B4(v6, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v38 + 8))(v22, v39);
  (*(v37 + 8))(v28, v31);
  OUTLINED_FUNCTION_6();
}

unint64_t sub_1C04B6C44()
{
  result = qword_1EBE0D0F8;
  if (!qword_1EBE0D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D0F8);
  }

  return result;
}

uint64_t sub_1C04B6C98()
{
  sub_1C04B3894();
  sub_1C04B3944();
  v1 = v0;

  return v1;
}

uint64_t sub_1C04B6CE4()
{
  sub_1C04B3894();
  sub_1C04B5634();
  v1 = v0;

  return v1;
}

uint64_t PegasusProxyForEngagement.deinit()
{
  v0 = BasePegasusProxy.deinit();
  v1 = *(v0 + 136);

  return v0;
}

uint64_t PegasusProxyForEngagement.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();
  v1 = *(v0 + 136);

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

unint64_t sub_1C04B6DBC()
{
  result = qword_1EBE0D108;
  if (!qword_1EBE0D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D108);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForEngagement.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C04B6FD4()
{
  result = qword_1EDE44058[0];
  if (!qword_1EDE44058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE44058);
  }

  return result;
}

uint64_t sub_1C04B7038(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C04B7078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5AF0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04B3CFC(a1, v2 + v6, v9, v10, v11, a2);
}

uint64_t sub_1C04B713C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04B71BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C047C1A4(a1, a2, a3);
}

id OUTLINED_FUNCTION_7_7()
{

  return [v0 (v2 + 2956)];
}

uint64_t OUTLINED_FUNCTION_12_2()
{

  return sub_1C04F6740();
}

uint64_t sub_1C04B7284(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C04B7294()
{
  v1 = *(v0 + 56);

  v2 = sub_1C04D3064();

  return v2;
}

uint64_t sub_1C04B72D0()
{
  v1 = *(v0 + 56);

  sub_1C04D31AC();
}

uint64_t sub_1C04B7318()
{
  v1 = *(v0 + 96);

  v2 = sub_1C047BBA0();

  return v2 & 1;
}

uint64_t sub_1C04B7354()
{
  v1 = *(v0 + 104);

  v3 = sub_1C047D240(v2);

  return v3;
}

uint64_t sub_1C04B7390(uint64_t a1)
{
  v3 = *(v1 + 104);

  sub_1C047DCE0(a1);
}

uint64_t (*sub_1C04B73E0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1C04B7354();
  return sub_1C04B7428;
}

uint64_t sub_1C04B7428(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1C04B7390(*a1);
  }

  v4 = *a1;

  sub_1C04B7390(v5);
}

void sub_1C04B7488()
{
  v1 = *(*(v0 + 80) + 16);
  os_unfair_lock_lock(v1);
  v2 = OUTLINED_FUNCTION_39_0();
  sub_1C04BB0C0(v2, v3, v0);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1C04B74E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C04F6200();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v11 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v11, qword_1EDE447A0);
  v12 = sub_1C04F63E0();
  v13 = sub_1C04F6A10();
  if (OUTLINED_FUNCTION_34_0(v13))
  {
    v14 = OUTLINED_FUNCTION_25_0();
    *v14 = 0;
    _os_log_impl(&dword_1C0479000, v12, v13, "XPC Fetch start: fetch Bag data", v14, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  v15 = *(v3 + 16);

  sub_1C04F61D0();
  v16 = type metadata accessor for ResourceAccessSpan();
  OUTLINED_FUNCTION_29_1(v16);
  v17 = sub_1C0482EFC(v15, 14, v10, 0, 1);
  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDE44DD0;
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a1;
  v19[4] = a2;
  v20 = v18;

  sub_1C04A6BCC(0);
}

uint64_t sub_1C04B76D4()
{
  result = (*(*v0 + 184))();
  if (result == 13)
  {
    v2 = v0[15];
    v3 = 5;
    return sub_1C04B9DE8(&v3);
  }

  return result;
}

void sub_1C04B7738(void *a1)
{
  v2 = v1;
  if ([a1 isExpired])
  {
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v4 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v4, qword_1EDE447A0);
    v5 = sub_1C04F63E0();
    v6 = sub_1C04F6A40();
    if (OUTLINED_FUNCTION_34_0(v6))
    {
      v7 = OUTLINED_FUNCTION_25_0();
      *v7 = 0;
      _os_log_impl(&dword_1C0479000, v5, v6, "Got expired Config, using it anyway", v7, 2u);
      OUTLINED_FUNCTION_8_4();
    }
  }

  v8 = [a1 searchURLString];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C04F6750();
    v12 = v11;

    if (((*(*v2 + 184))() & 0xFFFFFFFFFFFFFFFELL) == 0x18)
    {
      v13 = sub_1C04F6740();
      v14 = [a1 valueForKey_];

      if (v14)
      {
        sub_1C04F6BB0();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      v36[0] = v34;
      v36[1] = v35;
      if (*(&v35 + 1))
      {
        if (swift_dynamicCast())
        {

          v10 = v32;
          v12 = v33;
        }
      }

      else
      {
        sub_1C0482130(v36, &qword_1EBE0CB20, &unk_1C04F8B20);
      }
    }

    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v18 = sub_1C04F6400();
    __swift_project_value_buffer(v18, qword_1EDE447A0);

    v19 = sub_1C04F63E0();
    v20 = sub_1C04F6A40();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_20_2();
      v22 = OUTLINED_FUNCTION_26_1();
      *&v36[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1C047D76C(v10, v12, v36);
      OUTLINED_FUNCTION_17_2(&dword_1C0479000, v23, v24, "Inferred hostname from Configuration: %s");
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_10_0();
    }

    sub_1C04B7B7C();

    v25 = [a1 isEnabled];
    v26 = sub_1C04F63E0();
    v27 = sub_1C04F6A40();
    if (OUTLINED_FUNCTION_34_0(v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v25;
      _os_log_impl(&dword_1C0479000, v26, v27, "Setting enabled status: %{BOOL}d", v28, 8u);
      OUTLINED_FUNCTION_8_4();
    }

    v29 = v2[15];
    if (v25)
    {
      v30 = 5;
    }

    else
    {
      v30 = 1;
    }

    LOBYTE(v36[0]) = v30;
    sub_1C04B9DE8(v36);
  }

  else
  {
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v15 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v15, qword_1EDE447A0);
    oslog = sub_1C04F63E0();
    v16 = sub_1C04F6A20();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = OUTLINED_FUNCTION_25_0();
      *v17 = 0;
      _os_log_impl(&dword_1C0479000, oslog, v16, "Didn't find a valid searchURL from Config, bailing", v17, 2u);
      OUTLINED_FUNCTION_10_0();
    }
  }
}

void sub_1C04B7B7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE60, &unk_1C04F9130);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v55 - v4;
  v6 = sub_1C04F5340();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_31_1();
  sub_1C04F5330();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C0482130(v5, &qword_1EBE0CE60, &unk_1C04F9130);
LABEL_13:
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v34 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v34, qword_1EDE447A0);
    v35 = sub_1C04F63E0();
    v36 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_19_1(v36))
    {
      v37 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_158(v37);
      OUTLINED_FUNCTION_21_2();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      OUTLINED_FUNCTION_13();
    }

    return;
  }

  (*(v9 + 32))(v14, v5, v6);
  v15 = sub_1C04F5320();
  if (!v16)
  {
    v30 = OUTLINED_FUNCTION_22_2();
    v31(v30);
    goto LABEL_13;
  }

  v17 = v15;
  v18 = v16;
  v19 = sub_1C04F52F0();
  if (!v20)
  {
    v32 = OUTLINED_FUNCTION_22_2();
    v33(v32);

    goto LABEL_13;
  }

  v58 = v19;
  v59 = v20;
  v21 = sub_1C04F5310();
  if ((v22 & 1) == 0)
  {
    v56 = 58;
    v57 = 0xE100000000000000;
    v55[1] = v21;
    v23 = sub_1C04F6D60();
    MEMORY[0x1C68DC0D0](v23);

    MEMORY[0x1C68DC0D0](v56, v57);
  }

  v24 = (*(*v1 + 184))(v21);
  if (v24 <= 0x21 && ((1 << v24) & 0x327000000) != 0)
  {
    v25 = sub_1C04B7FA8();
    v27 = v59;
    if (v26)
    {
      v28 = v25;
      v29 = v26;

      v58 = v28;
      v59 = v29;
      v27 = v29;
    }
  }

  else
  {
    v27 = v59;
  }

  v56 = v17;
  v57 = v18;
  MEMORY[0x1C68DC0D0](3092282, 0xE300000000000000);
  MEMORY[0x1C68DC0D0](v58, v27);

  MEMORY[0x1C68DC0D0](47, 0xE100000000000000);
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v43 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v43, qword_1EDE447A0);

  v44 = sub_1C04F63E0();
  v45 = sub_1C04F6A40();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_20_2();
    v47 = OUTLINED_FUNCTION_26_1();
    v56 = v47;
    *v46 = 136315138;
    v48 = OUTLINED_FUNCTION_31_1();
    *(v46 + 4) = sub_1C047D76C(v48, v49, v50);
    OUTLINED_FUNCTION_17_2(&dword_1C0479000, v51, v52, "Setting search endpoint: %s");
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  sub_1C047ACAC();
  OUTLINED_FUNCTION_31_1();
  sub_1C04C9D90();

  v53 = OUTLINED_FUNCTION_22_2();
  v54(v53);
}

uint64_t sub_1C04B7FA8()
{
  sub_1C04F5300();
  if (sub_1C04F68A0())
  {
    v0 = sub_1C04BBC80(1);
    MEMORY[0x1C68DC060](v0);
  }

  v1 = sub_1C04F52E0();
  if (v2)
  {
    OUTLINED_FUNCTION_39_0();
    v1 = sub_1C04BBD70();
  }

  return v1;
}

void sub_1C04B8074(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 64) + 16);
  os_unfair_lock_lock(v5);
  swift_beginAccess();

  v6 = *(v2 + 72);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 72);
  sub_1C04A0A84(a1, a2);
  *(v2 + 72) = v7;
  swift_endAccess();
  os_unfair_lock_unlock(v5);
}

uint64_t sub_1C04B811C()
{
  v1 = *(v0 + 64);
  sub_1C04BC270(sub_1C04BCAD0);
}

void sub_1C04B816C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D1E8, &qword_1C04F9190);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - v3;
  v5 = *(*(v0 + 64) + 16);
  os_unfair_lock_lock(v5);
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  v6 = *(v0 + 72);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v0 + 72);
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v6 + 48);
    v17 = type metadata accessor for CancellableStoreKey();
    sub_1C04A0DC8(v16 + *(*(v17 - 8) + 72) * v15, v4);
    *&v4[*(v1 + 48)] = *(*(v6 + 56) + 8 * v15);

    sub_1C04F6420();
    sub_1C0482130(v4, &unk_1EBE0D1E8, &qword_1C04F9190);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      os_unfair_lock_unlock(v5);
      return;
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C04B832C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 90) = a4;
  *(v5 + 40) = a3;
  *(v5 + 48) = v4;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return OUTLINED_FUNCTION_7_8();
}

uint64_t sub_1C04B8348()
{
  v31 = v0;
  v1 = *(*(*(v0 + 48) + 120) + 16);
  sub_1C04F6490();
  v2 = *(v0 + 88);
  if (v2 != 4)
  {
    if (v2 == 5)
    {
      OUTLINED_FUNCTION_150();
LABEL_12:

      return v3();
    }

    v10 = *(v0 + 24);
    v11 = sub_1C04F63E0();
    v12 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_34_0(v12))
    {
      v13 = OUTLINED_FUNCTION_20_2();
      v14 = OUTLINED_FUNCTION_26_1();
      v30 = v14;
      *v13 = 136315138;
      *(v0 + 89) = v2;
      v15 = sub_1C04F6790();
      v17 = sub_1C047D76C(v15, v16, &v30);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1C0479000, v11, v12, "feature disabled: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_13();
    }

    v9 = 3;
LABEL_11:
    sub_1C049FC7C();
    OUTLINED_FUNCTION_45();
    *v18 = v9;
    swift_willThrow();
    OUTLINED_FUNCTION_150();
    goto LABEL_12;
  }

  v4 = *(v0 + 90);
  v5 = *(v0 + 24);
  v6 = sub_1C04F63E0();
  if (v4 == 1)
  {
    v7 = sub_1C04F6A20();
    if (OUTLINED_FUNCTION_34_0(v7))
    {
      v8 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_158(v8);
      _os_log_impl(&dword_1C0479000, v6, v7, "did retry, not configured yet, bailing", v4, 2u);
      OUTLINED_FUNCTION_13();
    }

    v9 = 4;
    goto LABEL_11;
  }

  v20 = sub_1C04F6A10();
  if (OUTLINED_FUNCTION_34_0(v20))
  {
    *OUTLINED_FUNCTION_25_0() = 0;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v21, v22, v23, v24, v25, 2u);
    OUTLINED_FUNCTION_8_4();
  }

  v26 = swift_task_alloc();
  *(v0 + 56) = v26;
  *v26 = v0;
  v26[1] = sub_1C04B85D0;
  v27 = *(v0 + 40);
  v28 = OUTLINED_FUNCTION_41_0(*(v0 + 32));

  return BasePegasusProxy.EnabledState.waitForNextStateUpdate(timeout:)(v28, v29);
}

uint64_t sub_1C04B85D0()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[9] = v12;
    *v12 = v7;
    v12[1] = sub_1C04B872C;
    v13 = v3[5];
    v14 = v3[6];
    v15 = v3[4];
    v16 = OUTLINED_FUNCTION_41_0(v3[3]);

    return sub_1C04B832C(v16);
  }
}

uint64_t sub_1C04B872C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C04B882C()
{
  v19 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_1C04F63E0();
  v5 = sub_1C04F6A20();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_20_2();
    v7 = OUTLINED_FUNCTION_26_1();
    v18 = v7;
    OUTLINED_FUNCTION_42_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v8 = sub_1C04F6790();
    v10 = sub_1C047D76C(v8, v9, &v18);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_8_4();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_150();

  return v16();
}

uint64_t sub_1C04B896C()
{
  v19 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = v1;
  v4 = sub_1C04F63E0();
  v5 = sub_1C04F6A20();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_20_2();
    v7 = OUTLINED_FUNCTION_26_1();
    v18 = v7;
    OUTLINED_FUNCTION_42_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v8 = sub_1C04F6790();
    v10 = sub_1C047D76C(v8, v9, &v18);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_8_4();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_150();

  return v16();
}

void *sub_1C04B8AAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_1C04F6130();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_38_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_0();
  v6[2] = sub_1C04E72EC();
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 0;
  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = sub_1C04B2ABC(0xD000000000000011, 0x80000001C04FCF20);
  if (!v20)
  {
    v20 = [objc_opt_self() standardUserDefaults];
  }

  v6[6] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1F8, &unk_1C04F9198);
  OUTLINED_FUNCTION_28_1();
  v21 = OUTLINED_FUNCTION_37_0();
  v6[7] = sub_1C04D3018(v21);
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_6_3();
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_44_0();
  *(v22 + 16) = v23;
  *v23 = 0;
  v6[8] = v22;
  type metadata accessor for CancellableStoreKey();
  sub_1C04F6430();
  OUTLINED_FUNCTION_4_7();
  sub_1C04BD1C8(v24, 255, v25);
  v6[9] = sub_1C04F66F0();
  OUTLINED_FUNCTION_6_3();
  v26 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_44_0();
  *(v26 + 16) = v27;
  *v27 = 0;
  v7[10] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  OUTLINED_FUNCTION_28_1();
  v7[12] = sub_1C04D271C(0);
  sub_1C04F66F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D208, &qword_1C04F91A8);
  OUTLINED_FUNCTION_28_1();
  v28 = OUTLINED_FUNCTION_12_3();
  v7[13] = sub_1C04D3018(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D210, &qword_1C04F91B0);
  OUTLINED_FUNCTION_29_1(v29);
  v7[14] = sub_1C04F6470();
  type metadata accessor for BasePegasusProxy.EnabledState();
  OUTLINED_FUNCTION_6_3();
  v30 = swift_allocObject();
  sub_1C04BB05C();
  v7[15] = v30;
  v31 = v7[2];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D218, &qword_1C04F91B8);
  OUTLINED_FUNCTION_29_1(v32);

  v34 = sub_1C04CF324(v33, 0);
  v35 = v7[3];
  v7[3] = v34;
  swift_unknownObjectRelease();
  v36 = v7[5];
  v7[4] = a1;
  v7[5] = a2;

  if (a3)
  {
    v37 = v7[6];
    v7[6] = a3;
    v38 = a3;
  }

  v39 = v7[6];
  v40 = v7[2];
  v41 = type metadata accessor for GRPCClient();
  OUTLINED_FUNCTION_29_1(v41);
  v42 = a6;
  v43 = v39;

  sub_1C04C9F6C(0xD00000000000001CLL, 0x80000001C04FD6F0, v43, v40, a6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D220, &qword_1C04F91C0);
  OUTLINED_FUNCTION_28_1();
  v44 = OUTLINED_FUNCTION_12_3();
  v7[11] = sub_1C04D3018(v44);
  swift_endAccess();
  sub_1C04B7B7C();
  sub_1C04B76D4();
  if (a5 >> 60 == 15)
  {
    OUTLINED_FUNCTION_6_3();
    v45 = swift_allocObject();
    swift_weakInit();

    sub_1C04B74E4(sub_1C04BD248, v45);
  }

  else
  {
    sub_1C048087C(a4, a5);
    sub_1C04B7488();
    sub_1C047E0BC(a4, a5);
  }

  v46 = [objc_opt_self() processInfo];
  v47 = [v46 processName];

  v48 = sub_1C04F6750();
  v50 = v49;

  (*(v13 + 104))(v18, *MEMORY[0x1E69BDAF0], v10);
  v51 = sub_1C04F6120();
  v53 = v52;
  (*(v13 + 8))(v18, v10);
  if (v48 == v51 && v50 == v53)
  {

    goto LABEL_15;
  }

  v55 = sub_1C04F6D80();

  if (v55)
  {

LABEL_15:
    sub_1C047E0BC(a4, a5);
    v56 = a3;
    goto LABEL_19;
  }

  v56 = [objc_opt_self() defaultCenter];
  if (qword_1EDE44478 != -1)
  {
    swift_once();
  }

  v57 = qword_1EDE44DA8;
  OUTLINED_FUNCTION_6_3();
  v58 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1C04BD220;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C04BBB8C;
  aBlock[3] = &block_descriptor_0;
  v59 = _Block_copy(aBlock);

  v60 = [v56 addObserverForName:v57 object:0 queue:0 usingBlock:v59];

  sub_1C047E0BC(a4, a5);
  _Block_release(v59);
  swift_unknownObjectRelease();
LABEL_19:

  return v7;
}

void sub_1C04B915C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = qword_1C04F7CF0 + 784;
  if (a4 == 2 && a1 == 404)
  {
    *(a5 + qword_1EDE44718) = 15;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v9 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v9, qword_1EDE447A0);

    v10 = sub_1C04F63E0();
    v11 = sub_1C04F6A20();
    sub_1C0482080(404, a2, a3, 2);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_20_2();
      v13 = OUTLINED_FUNCTION_26_1();
      v36 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1C047D76C(a2, a3, &v36);
      OUTLINED_FUNCTION_17_2(&dword_1C0479000, v14, v15, "rpc status failure: %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_10_0();
      v8 = &qword_1C04F7CF0[98];
      OUTLINED_FUNCTION_10_0();
    }
  }

  *(a5 + qword_1EDE44718) = 26;
  sub_1C0483574();
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v16 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v16, qword_1EDE447A0);
  v17 = OUTLINED_FUNCTION_11_3();
  sub_1C04B7038(v17, v18, v19, v20);
  oslog = sub_1C04F63E0();
  v21 = sub_1C04F6A20();
  v22 = OUTLINED_FUNCTION_11_3();
  sub_1C0482080(v22, v23, v24, v25);
  if (os_log_type_enabled(oslog, v21))
  {
    v26 = OUTLINED_FUNCTION_20_2();
    v27 = OUTLINED_FUNCTION_26_1();
    v36 = v27;
    *v26 = v8[120];
    v28 = OUTLINED_FUNCTION_11_3();
    v32 = sub_1C04C971C(v28, v29, v30, v31);
    v34 = sub_1C047D76C(v32, v33, &v36);

    *(v26 + 4) = v34;
    _os_log_impl(&dword_1C0479000, oslog, v21, "rpc failure: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }
}

void sub_1C04B93C4(id a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    v5 = [a1 code];
    if (v5 == -1020)
    {
      v6 = 70;
    }

    else if (v5 == -1001)
    {
      v6 = 61;
    }

    else if (v5 == -1003)
    {
      v6 = 63;
    }

    else
    {
      if (v5 != -1009)
      {
        goto LABEL_11;
      }

      v6 = 68;
    }

    *(a4 + qword_1EDE44718) = v6;
    sub_1C0483574();
  }

LABEL_11:
  if ((*(a4 + 88) & 1) == 0)
  {
    *(a4 + qword_1EDE44718) = 24;
    sub_1C0483574();
  }

  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v7 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v7, qword_1EDE447A0);
  v8 = OUTLINED_FUNCTION_25_2();
  sub_1C04BD210(v8, v9, v10);
  oslog = sub_1C04F63E0();
  v11 = sub_1C04F6A20();
  v12 = OUTLINED_FUNCTION_25_2();
  sub_1C0482070(v12, v13, v14);
  if (os_log_type_enabled(oslog, v11))
  {
    v15 = OUTLINED_FUNCTION_20_2();
    v16 = OUTLINED_FUNCTION_26_1();
    v24 = v16;
    *v15 = 136315138;
    v17 = OUTLINED_FUNCTION_25_2();
    v20 = sub_1C04E32F0(v17, v18, v19);
    v22 = sub_1C047D76C(v20, v21, &v24);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1C0479000, oslog, v11, "network failure: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_8_4();
  }
}

void sub_1C04B9574(void *a1, uint64_t a2)
{
  *(a2 + qword_1EDE44718) = 46;
  sub_1C0483574();
  if (qword_1EDE446B8 != -1)
  {
    OUTLINED_FUNCTION_0_6();
  }

  v3 = sub_1C04F6400();
  OUTLINED_FUNCTION_163(v3, qword_1EDE447A0);
  v4 = a1;
  oslog = sub_1C04F63E0();
  v5 = sub_1C04F6A20();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = OUTLINED_FUNCTION_20_2();
    v7 = OUTLINED_FUNCTION_26_1();
    v13 = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v9 = sub_1C04F6790();
    v11 = sub_1C047D76C(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C0479000, oslog, v5, "proxy failure: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13();
  }

  else
  {
  }
}

uint64_t BasePegasusProxy.deinit()
{
  v1 = MEMORY[0x1C68DC7C0]();
  sub_1C04B7284(0);
  objc_autoreleasePoolPop(v1);
  sub_1C04B816C();
  v2 = *(v0 + 16);

  v3 = *(v0 + 24);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 80);

  v9 = *(v0 + 88);

  v10 = *(v0 + 96);

  v11 = *(v0 + 104);

  v12 = *(v0 + 112);

  v13 = *(v0 + 120);

  return v0;
}

void *sub_1C04B979C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  type metadata accessor for ActivityMonitor();
  OUTLINED_FUNCTION_38_0();
  swift_allocObject();
  OUTLINED_FUNCTION_37_0();
  v4[2] = sub_1C04E72EC();
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = sub_1C04B2ABC(0xD000000000000011, 0x80000001C04FCF20);
  if (!v9)
  {
    v9 = [objc_opt_self() standardUserDefaults];
  }

  v4[6] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1F8, &unk_1C04F9198);
  OUTLINED_FUNCTION_28_1();
  v10 = OUTLINED_FUNCTION_37_0();
  v4[7] = sub_1C04D3018(v10);
  type metadata accessor for Locker();
  OUTLINED_FUNCTION_6_3();
  v11 = swift_allocObject();
  v12 = OUTLINED_FUNCTION_44_0();
  *(v11 + 16) = v12;
  *v12 = 0;
  v4[8] = v11;
  type metadata accessor for CancellableStoreKey();
  sub_1C04F6430();
  OUTLINED_FUNCTION_4_7();
  sub_1C04BD1C8(v13, 255, v14);
  v4[9] = sub_1C04F66F0();
  OUTLINED_FUNCTION_6_3();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_44_0();
  *(v15 + 16) = v16;
  *v16 = 0;
  v5[10] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D200, &unk_1C04F8810);
  OUTLINED_FUNCTION_28_1();
  v5[12] = sub_1C04D271C(0);
  sub_1C04F66F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D208, &qword_1C04F91A8);
  OUTLINED_FUNCTION_28_1();
  v17 = OUTLINED_FUNCTION_12_3();
  v5[13] = sub_1C04D3018(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D210, &qword_1C04F91B0);
  OUTLINED_FUNCTION_29_1(v18);
  v5[14] = sub_1C04F6470();
  type metadata accessor for BasePegasusProxy.EnabledState();
  OUTLINED_FUNCTION_6_3();
  v19 = swift_allocObject();
  sub_1C04BB05C();
  v5[15] = v19;
  if (a3)
  {
    v20 = v5[6];
    v5[6] = a3;
    v21 = a3;

    v22 = v5[15];
  }

  v37[0] = 5;
  sub_1C04B9DE8(v37);
  v23 = v5[2];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D218, &qword_1C04F91B8);
  OUTLINED_FUNCTION_29_1(v24);

  v26 = sub_1C04CF324(v25, 0);
  v27 = v5[3];
  v5[3] = v26;
  swift_unknownObjectRelease();
  v28 = v5[6];
  v29 = v5[2];
  v30 = type metadata accessor for GRPCClient();
  OUTLINED_FUNCTION_29_1(v30);
  v31 = a4;
  v32 = v28;

  v33 = OUTLINED_FUNCTION_31_1();
  sub_1C04C9F6C(v33, v34, v32, v29, a4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D220, &qword_1C04F91C0);
  OUTLINED_FUNCTION_28_1();
  v35 = OUTLINED_FUNCTION_12_3();
  v5[11] = sub_1C04D3018(v35);
  swift_endAccess();

  return v5;
}

uint64_t BasePegasusProxy.EnabledState.statusPublisher.getter()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D188, &qword_1C04F8E50);
  sub_1C047C1A4(&qword_1EDE44050, &unk_1EBE0D188, &qword_1C04F8E50);
  return sub_1C04F64E0();
}

uint64_t sub_1C04B9B90()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EDE447A0);
  __swift_project_value_buffer(v0, qword_1EDE447A0);
  return sub_1C04F63F0();
}

const char *sub_1C04B9C10(char a1)
{
  if (a1)
  {
    return "Request";
  }

  else
  {
    return "proxy_instance";
  }
}

uint64_t sub_1C04B9C3C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C04B9C80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C04B9C3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C04B9CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C04B9C54(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C04B9D28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1C04B73DC(v4);
}

uint64_t BasePegasusProxy.EnabledState.StateError.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04B9DE8(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_1C04F6480();
}

uint64_t BasePegasusProxy.EnabledState.waitForNextStateUpdate(timeout:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_8();
}

uint64_t sub_1C04B9E38()
{
  v1 = *(v0 + 32);
  v6 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C04B9F38;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1C04B9F38()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C04BA03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04BA0DC, 0, 0);
}

uint64_t sub_1C04BA0DC()
{
  OUTLINED_FUNCTION_291();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1C04F6980();
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_38_0();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  sub_1C04BA804(v1, &unk_1C04F9148, v6);
  sub_1C0482130(v1, &qword_1EBE0D1B0, &qword_1C04F8450);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_6_3();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_1C04BA804(v1, &unk_1C04F9158, v8);
  sub_1C0482130(v1, &qword_1EBE0D1B0, &qword_1C04F8450);
  v9 = *(MEMORY[0x1E69E8708] + 4);
  v10 = swift_task_alloc();
  v0[7] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B8, &qword_1C04F9160);
  *v10 = v0;
  v10[1] = sub_1C04BA284;
  v11 = v0[2];
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DAC8]();
}

uint64_t sub_1C04BA284()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C04BA380()
{
  OUTLINED_FUNCTION_144();
  v1 = *(v0 + 48);
  v2 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  sub_1C04F69B0();

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t sub_1C04BA418()
{
  OUTLINED_FUNCTION_144();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_150();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1C04BA474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1C04F6C90();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04BA534, 0, 0);
}

uint64_t sub_1C04BA534()
{
  OUTLINED_FUNCTION_144();
  v1 = v0[6];
  sub_1C04F6E00();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1C04BA5E8;
  v3 = v0[6];
  v4 = v0[3];
  OUTLINED_FUNCTION_41_0(v0[2]);
  OUTLINED_FUNCTION_141();

  return sub_1C04BCAD8(v5, v6, v7, v8, 1);
}

uint64_t sub_1C04BA5E8()
{
  OUTLINED_FUNCTION_291();
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;

  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {
  }

  (*(v7 + 8))(v6, v8);
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C04BA770()
{
  v1 = *(v0 + 48);
  sub_1C04BD104();
  OUTLINED_FUNCTION_45();
  *v2 = 3;
  swift_willThrow();

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t sub_1C04BA804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1C04BD158(a1, v20 - v9);
  v11 = sub_1C04F6980();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C0482130(v10, &qword_1EBE0D1B0, &qword_1C04F8450);
  }

  else
  {
    sub_1C04F6970();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    v12 = *(a3 + 24);
    v13 = *(a3 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1C04F6940();
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_1C04BA9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D1C0, &unk_1C04F9168);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D1D0, &qword_1C04F9178);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04BAB58, 0, 0);
}

uint64_t sub_1C04BAB58()
{
  v1 = v0[7];
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[10];
    v21 = v0[11];
    v6 = v0[9];
    v22 = v0[8];
    v23 = v0[16];
    v0[5] = BasePegasusProxy.EnabledState.statusPublisher.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
    sub_1C047C1A4(&qword_1EDE41638, &qword_1EBE0D1E0, &qword_1C04F9180);
    sub_1C04F6570();

    v7 = sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60);
    MEMORY[0x1C68DBE40](v21, v7);
    v8 = *(v4 + 8);
    v9 = OUTLINED_FUNCTION_31_1();
    v10(v9);
    sub_1C04F6440();
    (*(v6 + 8))(v5, v22);
    v11 = *(MEMORY[0x1E695BF28] + 4);
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1C04BADD4;
    v13 = v0[16];
    v14 = v0[14];

    return MEMORY[0x1EEDB5C50](v0 + 19, v14);
  }

  else
  {
    sub_1C04BD104();
    OUTLINED_FUNCTION_45();
    *v15 = 2;
    swift_willThrow();
    v16 = v0[16];
    v17 = v0[13];
    v18 = v0[10];

    OUTLINED_FUNCTION_150();

    return v19();
  }
}

uint64_t sub_1C04BADD4()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_49();
  *v4 = v3;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C04BAEBC()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  if (v1 == 6)
  {
    sub_1C04BD104();
    OUTLINED_FUNCTION_45();
    *v6 = 2;
    swift_willThrow();

    (*(v5 + 8))(v3, v4);
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v13 = *(v0 + 48);
    (*(v5 + 8))(*(v0 + 128), *(v0 + 112));

    *v13 = v1;
  }

  OUTLINED_FUNCTION_150();

  return v10();
}

uint64_t BasePegasusProxy.EnabledState.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BasePegasusProxy.EnabledState.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1C04BB05C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0D188, &qword_1C04F8E50);
  OUTLINED_FUNCTION_29_1(v1);
  *(v0 + 16) = sub_1C04F64A0();
  return v0;
}

uint64_t sub_1C04BB0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE446B8 != -1)
  {
    swift_once();
  }

  v4 = sub_1C04F6400();
  __swift_project_value_buffer(v4, qword_1EDE447A0);
  v5 = sub_1C04F63E0();
  v6 = sub_1C04F6A40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C0479000, v5, v6, "Got bag, crafting and caching Config", v7, 2u);
    MEMORY[0x1C68DCEB0](v7, -1, -1);
  }

  sub_1C04F6150();
  v8 = sub_1C04F6140();
  v9 = sub_1C04F53B0();
  if (*(a3 + 40))
  {
    v10 = *(a3 + 32);
    v11 = *(a3 + 40);

    v12 = sub_1C04F6740();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a3 + 48);
  v14 = [v8 loadWithData:v9 userAgent:v12 userDefaults:v13];

  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1C04B72D0();
  v15 = sub_1C04F6740();
  v16 = [v14 valueForKey:v15 shouldConsiderOverrides:1];

  if (v16)
  {
    sub_1C04F6BB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = sub_1C04F63E0();
      v18 = sub_1C04F6A40();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 67109120;
        *(v19 + 4) = v32;
        _os_log_impl(&dword_1C0479000, v17, v18, "Setting RPC Compression status: %{BOOL}d", v19, 8u);
        MEMORY[0x1C68DCEB0](v19, -1, -1);
      }

      sub_1C047ACAC();
      sub_1C04C9EA8(v32);
    }
  }

  else
  {
    sub_1C0482130(&v36, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v20 = sub_1C04F6740();
  v21 = [v14 valueForKey:v20 shouldConsiderOverrides:1];

  if (v21)
  {
    sub_1C04F6BB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36 = v34;
  v37 = v35;
  if (*(&v35 + 1))
  {
    if (swift_dynamicCast())
    {

      v22 = sub_1C04F63E0();
      v23 = sub_1C04F6A40();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v36 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1C047D76C(v32, v33, &v36);
        _os_log_impl(&dword_1C0479000, v22, v23, "Setting RPC Timeout: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1C68DCEB0](v25, -1, -1);
        MEMORY[0x1C68DCEB0](v24, -1, -1);
      }

      sub_1C047ACAC();
      sub_1C04C9E44();
    }
  }

  else
  {
    sub_1C0482130(&v36, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  v26 = sub_1C04F6740();
  v27 = [v14 configBoolForKey_];

  v28 = sub_1C04F63E0();
  v29 = sub_1C04F6A40();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    *(v30 + 4) = v27;
    _os_log_impl(&dword_1C0479000, v28, v29, "AssumesHTTP3Capable: %{BOOL}d", v30, 8u);
    MEMORY[0x1C68DCEB0](v30, -1, -1);
  }

  sub_1C047ACAC();
  sub_1C04C9EB4(v27);

  sub_1C04B7738(v14);
  if (sub_1C04B7318())
  {
    sub_1C047AAE0();
  }

  return swift_unknownObjectRelease();
}

void sub_1C04BB674(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  if (a3)
  {
    *(a4 + qword_1EDE44718) = 28;
    v6 = a3;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C04F6400();
    __swift_project_value_buffer(v7, qword_1EDE447A0);
    v8 = a3;
    v9 = sub_1C04F63E0();
    v10 = sub_1C04F6A20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      v13 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v14 = sub_1C04F6790();
      v16 = sub_1C047D76C(v14, v15, &v25);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1C0479000, v9, v10, "Error fetching bag data: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1C68DCEB0](v12, -1, -1);
      MEMORY[0x1C68DCEB0](v11, -1, -1);

      return;
    }

    v21 = a3;

    goto LABEL_13;
  }

  if (a2 >> 60 == 15)
  {
    *(a4 + qword_1EDE44718) = 20;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C04F6400();
    __swift_project_value_buffer(v18, qword_1EDE447A0);
    oslog = sub_1C04F63E0();
    v19 = sub_1C04F6A20();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C0479000, oslog, v19, "Got nil bagData, falling back to default", v20, 2u);
      MEMORY[0x1C68DCEB0](v20, -1, -1);
    }

    v21 = oslog;

LABEL_13:

    return;
  }

  *(a4 + qword_1EDE44718) = 3;
  sub_1C048087C(a1, a2);
  sub_1C0483574();
  a5(a1, a2);

  sub_1C047E0BC(a1, a2);
}

uint64_t sub_1C04BB9B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EDE446B8 != -1)
    {
      swift_once();
    }

    v1 = sub_1C04F6400();
    __swift_project_value_buffer(v1, qword_1EDE447A0);
    v2 = sub_1C04F63E0();
    v3 = sub_1C04F6A10();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C0479000, v2, v3, "Received Bag Change notification, refreshing bag", v4, 2u);
      MEMORY[0x1C68DCEB0](v4, -1, -1);
    }

    v5 = swift_allocObject();
    swift_weakInit();

    sub_1C04B74E4(sub_1C04BD228, v5);
  }

  return result;
}

uint64_t sub_1C04BBB1C()
{
  OUTLINED_FUNCTION_141();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C04B7488();
  }

  return result;
}

uint64_t sub_1C04BBB8C(uint64_t a1)
{
  v2 = sub_1C04F5250();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1C04F5240();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C04BBC80(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = sub_1C04F67F0();
    if (!__OFSUB__(result, v1))
    {
      sub_1C04F6810();
      v2 = sub_1C04F68D0();

      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04BBD70()
{

  v1 = sub_1C04F68C0();
  sub_1C04F6820();
  return v1;
}

uint64_t BasePegasusProxy.__deallocating_deinit()
{
  BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04BBE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  v7 = sub_1C049F7A8(a2);
  v8 = 0;
  if (v9)
  {
    v10 = v7;
    v11 = *(a1 + 72);
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a1 + 72);
    v12 = v16[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE58, &qword_1C04F8560);
    sub_1C04F6CC0();
    v13 = v16[6];
    v14 = type metadata accessor for CancellableStoreKey();
    sub_1C04A0E2C(v13 + *(*(v14 - 8) + 72) * v10);
    v8 = *(v16[7] + 8 * v10);
    sub_1C04F6430();
    sub_1C04BD1C8(&qword_1EDE44700, 255, type metadata accessor for CancellableStoreKey);
    sub_1C04F6CE0();
    *(a1 + 72) = v16;
  }

  *a3 = v8;
  return swift_endAccess();
}

void sub_1C04BBF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C04F5BC0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  (*(v7 + 16))(v11 - v10, a1, v4);
  v13 = *(v7 + 88);
  v14 = OUTLINED_FUNCTION_39_0();
  v16 = v15(v14);
  if (v16 == *MEMORY[0x1E69BCEC0])
  {
    v17 = *(v7 + 96);
    v18 = OUTLINED_FUNCTION_39_0();
    v19(v18);
    v20 = *v12;
    *(a2 + qword_1EDE44718) = 0;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v21 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v21, qword_1EDE447A0);
    v22 = sub_1C04F63E0();
    v23 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v23))
    {
      goto LABEL_19;
    }

    v24 = OUTLINED_FUNCTION_20_2();
    *v24 = 134217984;
    *(v24 + 4) = v20;
    OUTLINED_FUNCTION_21_2();
    v30 = 12;
LABEL_18:
    _os_log_impl(v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_13();
LABEL_19:

    return;
  }

  if (v16 == *MEMORY[0x1E69BCEC8])
  {
    *(a2 + qword_1EDE44718) = 2;
    sub_1C0483574();
    return;
  }

  if (v16 == *MEMORY[0x1E69BCED0])
  {
    *(a2 + qword_1EDE44718) = 19;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v31 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v31, qword_1EDE447A0);
    v22 = sub_1C04F63E0();
    v32 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v32))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v16 == *MEMORY[0x1E69BCED8])
  {
    *(a2 + qword_1EDE44718) = 18;
    sub_1C0483574();
    if (qword_1EDE446B8 != -1)
    {
      OUTLINED_FUNCTION_0_6();
    }

    v33 = sub_1C04F6400();
    OUTLINED_FUNCTION_163(v33, qword_1EDE447A0);
    v22 = sub_1C04F63E0();
    v34 = sub_1C04F6A20();
    if (!OUTLINED_FUNCTION_19_1(v34))
    {
      goto LABEL_19;
    }

LABEL_17:
    v35 = OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_158(v35);
    OUTLINED_FUNCTION_21_2();
    v30 = 2;
    goto LABEL_18;
  }

  sub_1C04F6D70();
  __break(1u);
}

uint64_t sub_1C04BC270(void (*a1)(uint64_t *__return_ptr))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1(&v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

uint64_t sub_1C04BC2CC()
{
  OUTLINED_FUNCTION_291();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_81(v8);
  *v9 = v10;
  v9[1] = sub_1C04A1810;

  return sub_1C04BA03C(v4, v2, v5, v6, v7);
}

unint64_t sub_1C04BC388()
{
  result = qword_1EBE0D198;
  if (!qword_1EBE0D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D198);
  }

  return result;
}

uint64_t sub_1C04BC3DC(uint64_t a1, uint64_t a2)
{
  result = sub_1C04BD1C8(&qword_1EBE0D1A0, a2, type metadata accessor for BasePegasusProxy);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C04BC45C()
{
  result = qword_1EBE0D1A8;
  if (!qword_1EBE0D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D1A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BasePegasusProxy.EnabledState.StateError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for BasePegasusProxy.EnabledState.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 4)
    {
      v7 = v6 - 3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BasePegasusProxy.EnabledState.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04BC810(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C04BC824(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_1C04BC840(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C04BC8C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C04BC9A4()
{
  result = qword_1EDE44760;
  if (!qword_1EDE44760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44760);
  }

  return result;
}

unint64_t sub_1C04BC9F8(uint64_t a1)
{
  *(a1 + 8) = sub_1C04BCA28();
  result = sub_1C04BCA7C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C04BCA28()
{
  result = qword_1EDE44768;
  if (!qword_1EDE44768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44768);
  }

  return result;
}

unint64_t sub_1C04BCA7C()
{
  result = qword_1EDE44750;
  if (!qword_1EDE44750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE44750);
  }

  return result;
}

uint64_t sub_1C04BCAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C04F6C80();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C04BCBD8, 0, 0);
}

uint64_t sub_1C04BCBD8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  sub_1C04F6C90();
  sub_1C04BD1C8(&qword_1EDE40838, 255, MEMORY[0x1E69E8820]);
  sub_1C04F6DE0();
  sub_1C04BD1C8(&unk_1EDE40840, 255, MEMORY[0x1E69E87E8]);
  sub_1C04F6CA0();
  v6 = *(v4 + 8);
  v0[12] = v6;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = *(MEMORY[0x1E69E8938] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1C04BCD6C;
  v9 = v0[7];
  v10 = OUTLINED_FUNCTION_41_0(v0[11]);

  return MEMORY[0x1EEE6DE58](v10);
}

uint64_t sub_1C04BCD6C()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  OUTLINED_FUNCTION_49();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  else
  {
    v17 = v3[10];
    v16 = v3[11];

    OUTLINED_FUNCTION_150();

    return v18();
  }
}

uint64_t sub_1C04BCF0C()
{
  OUTLINED_FUNCTION_144();
  v2 = v0[10];
  v1 = v0[11];

  OUTLINED_FUNCTION_150();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1C04BCF7C()
{
  OUTLINED_FUNCTION_291();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_81(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_32_1(v6);

  return sub_1C04BA474(v8, v9, v10, v4, v3);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1C04BD068()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_81(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_32_1(v5);

  return sub_1C04BA9BC(v7, v8, v9, v3);
}

unint64_t sub_1C04BD104()
{
  result = qword_1EDE414A8;
  if (!qword_1EDE414A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE414A8);
  }

  return result;
}

uint64_t sub_1C04BD158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1B0, &qword_1C04F8450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C04BD1C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1C04BD210(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void OUTLINED_FUNCTION_8_4()
{

  JUMPOUT(0x1C68DCEB0);
}

void OUTLINED_FUNCTION_17_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_19_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_28_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_34_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_42_0(float a1)
{
  *v3 = a1;
  *(v2 + 16) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

uint64_t sub_1C04BD448()
{
  MEMORY[0x1C68DCEB0](*(v0 + 16), -1, -1);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

BOOL sub_1C04BD4AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3);
  v4 = sub_1C04A64B8();
  v5 = v4;
  if (v4)
  {
    [v4 invalidate];
  }

  os_unfair_lock_unlock(v3);

  return v5 == 0;
}

void sub_1C04BD518(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1C04BD580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A0, &qword_1C04F9330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1C04F5DE0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 16);
  v25 = (v16 + 32);
  v24 = *MEMORY[0x1E69BD610];
  v23 = (v16 + 104);
  v17 = (v16 + 8);
  for (i = (a1 + 40); v15; --v15)
  {
    v19 = *(i - 1);
    v20 = *i;

    sub_1C04E9FA0(v26, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      (*v23)(v12, v24, v8);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        sub_1C04A12B4(v7, &qword_1EBE0D2A0, &qword_1C04F9330);
      }
    }

    else
    {
      (*v25)(v12, v7, v8);
    }

    sub_1C04D5174();
    (*v17)(v14, v8);

    i += 2;
  }
}

uint64_t sub_1C04BD7D8()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D228);
  __swift_project_value_buffer(v0, qword_1EBE0D228);
  return sub_1C04F63F0();
}

uint64_t sub_1C04BD85C()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EDE423C0 = v10;
  *algn_1EDE423C8 = v12;
  return result;
}

uint64_t PegasusProxyForVisualSearch.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](v1);
  return sub_1C04F6E80();
}

double sub_1C04BDA78()
{
  *&xmmword_1EBE0D240 = 0xD000000000000029;
  *(&xmmword_1EBE0D240 + 1) = 0x80000001C04FD7A0;
  strcpy(&qword_1EBE0D250, "VisualSearch");
  unk_1EBE0D25D = 0;
  unk_1EBE0D25E = -5120;
  result = 3.01579456e161;
  xmmword_1EBE0D260 = xmmword_1C04F91E0;
  return result;
}

void *PegasusProxyForVisualSearch.init()()
{
  if (qword_1EDE423B8 != -1)
  {
    OUTLINED_FUNCTION_3_9();
  }

  v0 = qword_1EDE423C0;
  v1 = *algn_1EDE423C8;

  return sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
}

uint64_t sub_1C04BDBE0()
{
  v1 = sub_1C04F6130();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1C04F6200();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = *(v0 + 16);
  (*(v4 + 104))(v9, *MEMORY[0x1E69BDAD0], v1);

  sub_1C04F6120();
  (*(v4 + 8))(v9, v1);
  sub_1C04F6210();
  v16 = type metadata accessor for ResourceAccessSpan();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v15, 10, v14, 0, 1);
}

uint64_t sub_1C04BDD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a1;
  v87 = *v2;
  v88 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  OUTLINED_FUNCTION_152(v81);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v6);
  v79 = (&v74 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2B0, &qword_1C04F9340);
  v9 = OUTLINED_FUNCTION_0(v8);
  v82 = v10;
  v83 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2B8, &qword_1C04F9348);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v74 - v21;
  v78 = sub_1C04F54B0();
  v22 = OUTLINED_FUNCTION_0(v78);
  v77 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v85 = sub_1C04F5E70();
  v29 = OUTLINED_FUNCTION_0(v85);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE423B8 != -1)
  {
    OUTLINED_FUNCTION_3_9();
  }

  v35 = qword_1EDE423C0;
  v36 = *algn_1EDE423C8;

  v37 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  *&v92 = v37;
  sub_1C049FB48(v35, v36, 0x6567612D72657375, 0xEA0000000000746ELL);
  sub_1C04B7390(v92);
  v38 = v3[15];
  v39 = *(v38 + 16);
  sub_1C04F6490();
  if (v92 == 5)
  {
    v82 = v17;
    v83 = v15;
    v40 = v85;
    v79 = *(v31 + 16);
    v79(&v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v86, v85);
    v41 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v42 = (v33 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = *(v31 + 32);
    v81 = v41;
    v45 = v43 + v41;
    v46 = v34;
    v76 = v44;
    v44(v45, v34, v40);
    v75 = v42;
    *(v43 + v42) = v87;
    sub_1C04F54A0();
    v47 = sub_1C04F5470();
    v49 = v48;
    (*(v77 + 8))(v28, v78);
    *&v92 = v47;
    *(&v92 + 1) = v49;
    LOBYTE(v93) = 0;
    *(&v93 + 1) = v89[0];
    DWORD1(v93) = *(v89 + 3);
    *(&v93 + 1) = sub_1C04C06CC;
    v94 = v43;
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v50 = sub_1C04D0244(13, 0);
    v80 = v50;

    v90 = v50;
    v51 = v34;
    v52 = v85;
    v79(v51, v86, v85);
    v53 = v75;
    v54 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v76(v56 + v81, v46, v52);
    *(v56 + v53) = v3;
    *(v56 + v54) = v88;
    v57 = v56 + v55;
    v58 = v93;
    *v57 = v92;
    *(v57 + 16) = v58;
    *(v57 + 32) = v94;
    *(v56 + ((v55 + 47) & 0xFFFFFFFFFFFFFFF8)) = v87;

    sub_1C04C0838(&v92, v89);
    sub_1C04F6410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D070, &qword_1C04F9350);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D278, &unk_1C04F9200);
    sub_1C047C1A4(&qword_1EDE40898, &qword_1EBE0D070, &qword_1C04F9350);
    sub_1C047C1A4(&qword_1EBE0D280, &qword_1EBE0D278, &unk_1C04F9200);
    v59 = v84;
    sub_1C04F65B0();

    sub_1C047C1A4(&qword_1EBE0D2C8, &qword_1EBE0D2B8, &qword_1C04F9348);
    v60 = v83;
    v61 = sub_1C04F64E0();
    sub_1C04C0894(&v92);
    (*(v82 + 8))(v59, v60);
  }

  else
  {
    *(v88 + qword_1EDE44718) = 34;
    sub_1C0483574();
    if (qword_1EBE0C9D0 != -1)
    {
      swift_once();
    }

    v62 = sub_1C04F6400();
    __swift_project_value_buffer(v62, qword_1EBE0D228);

    v63 = sub_1C04F63E0();
    v64 = sub_1C04F6A20();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v92 = v66;
      *v65 = 136315138;
      v67 = *(v38 + 16);
      sub_1C04F6490();
      v91 = v89[0];
      v68 = sub_1C04F6790();
      v70 = sub_1C047D76C(v68, v69, &v92);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_1C0479000, v63, v64, "Visual Search is disabled: %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1C68DCEB0](v66, -1, -1);
      MEMORY[0x1C68DCEB0](v65, -1, -1);
    }

    *v79 = 3;
    swift_storeEnumTagMultiPayload();
    v71 = v80;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340);
    v72 = v83;
    v61 = sub_1C04F64E0();
    (*(v82 + 8))(v71, v72);
  }

  return v61;
}

uint64_t sub_1C04BE5F0(uint64_t a1)
{
  v2 = sub_1C04F5C70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CAA0, &qword_1C04F7A40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23[-v12];
  sub_1C04F5E60();
  sub_1C04F5590();
  sub_1C04F5570();
  v14 = sub_1C04F5540();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    sub_1C04A13B0(v13, v11, &qword_1EBE0CAA0, &qword_1C04F7A40);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 88))(v11, v14);
    if (v16 == *MEMORY[0x1E69BCB98])
    {
      (*(v3 + 104))(v6, *MEMORY[0x1E69BD180], v2);
      v17 = sub_1C04F5560();
      sub_1C04F5A90();
      v17(v23, 0);
    }

    else if (v16 == *MEMORY[0x1E69BCB90])
    {
      (*(v3 + 104))(v6, *MEMORY[0x1E69BD180], v2);
      v18 = sub_1C04F5550();
      sub_1C04F5970();
      v18(v23, 0);
    }

    (*(v15 + 8))(v11, v14);
  }

  sub_1C04A12B4(v13, &qword_1EBE0CAA0, &qword_1C04F7A40);
  if (qword_1EDE445D8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDE423B8;
  v20 = qword_1EDE44DD0;
  if (v19 != -1)
  {
    swift_once();
  }

  sub_1C04A85AC(a1, qword_1EDE423C0, *algn_1EDE423C8, 0);

  v21 = sub_1C04F55B0();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

uint64_t sub_1C04BE978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v96 = a6;
  v98 = a5;
  v97 = a3;
  v107 = a2;
  v105 = a1;
  v109 = a7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  v8 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v87 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2B0, &qword_1C04F9340);
  v104 = *(v108 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v103 = &v87 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2D0, &qword_1C04F9358);
  v92 = *(v93 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v87 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2D8, &unk_1C04F9360);
  v94 = *(v95 - 8);
  v14 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v87 - v18);
  v20 = sub_1C04F54F0();
  v100 = *(v20 - 8);
  v21 = *(v100 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v99 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D088, &qword_1C04F9370);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v87 - v31);
  v33 = sub_1C04F5E70();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v37;
  v38 = *(v37 + 16);
  v39 = v107;
  v107 = v40;
  v38(v36, v39);
  sub_1C04A13B0(v105, v32, &qword_1EBE0D088, &qword_1C04F9370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v36;
    v42 = *v32;
    *(a4 + qword_1EDE44718) = 49;
    sub_1C0483574();
    if (qword_1EBE0C9D0 != -1)
    {
      swift_once();
    }

    v43 = sub_1C04F6400();
    __swift_project_value_buffer(v43, qword_1EBE0D228);
    v44 = v42;
    v45 = sub_1C04F63E0();
    v46 = sub_1C04F6A20();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v112[0] = v48;
      *v47 = 136315138;
      v111[0] = v42;
      v49 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
      v50 = sub_1C04F6790();
      v52 = sub_1C047D76C(v50, v51, v112);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1C0479000, v45, v46, "context fetch failure: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1C68DCEB0](v48, -1, -1);
      MEMORY[0x1C68DCEB0](v47, -1, -1);
    }

    v36 = v41;
    *v101 = 0;
    swift_storeEnumTagMultiPayload();
    v53 = v103;
    sub_1C04F64B0();
    sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340);
    v54 = v108;
    v55 = sub_1C04F64E0();

    (*(v104 + 8))(v53, v54);
  }

  else
  {
    v88 = a4;
    v56 = v100;
    v57 = *(v100 + 32);
    v57(v28, v32, v20);
    sub_1C04F5E40();
    sub_1C0482664(10, v24, v19);
    v58 = *(v56 + 8);
    v105 = v56 + 8;
    v89 = v58;
    v58(v24, v20);
    v59 = v20;
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_1C04A12B4(v19, &qword_1EBE0CC70, &qword_1C04F8CB0);
      *(v88 + qword_1EDE44718) = 50;
      sub_1C0483574();
      if (qword_1EBE0C9D0 != -1)
      {
        swift_once();
      }

      v60 = sub_1C04F6400();
      __swift_project_value_buffer(v60, qword_1EBE0D228);
      v61 = sub_1C04F63E0();
      v62 = sub_1C04F6A20();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1C0479000, v61, v62, "unable to create unified query context", v63, 2u);
        MEMORY[0x1C68DCEB0](v63, -1, -1);
      }

      *v101 = 8;
      swift_storeEnumTagMultiPayload();
      v64 = v103;
      sub_1C04F64B0();
      sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340);
      v65 = v108;
      v55 = sub_1C04F64E0();
      (*(v104 + 8))(v64, v65);
      v89(v28, v20);
    }

    else
    {
      v66 = v99;
      v57(v99, v19, v20);
      (*(v100 + 16))(v24, v66, v20);
      sub_1C04F5E50();
      sub_1C047ACAC();
      v67 = v88;
      if (qword_1EBE0C9E0 != -1)
      {
        swift_once();
      }

      v112[0] = xmmword_1EBE0D240;
      v112[1] = *&qword_1EBE0D250;
      v112[2] = xmmword_1EBE0D260;
      v68 = sub_1C04B7354();
      v111[3] = &type metadata for NetworkFeedbackGenerator;
      v111[4] = &protocol witness table for NetworkFeedbackGenerator;
      v69 = swift_allocObject();
      v111[0] = v69;
      v70 = v98;
      v71 = v98[1];
      *(v69 + 16) = *v98;
      *(v69 + 32) = v71;
      *(v69 + 48) = *(v70 + 32);
      sub_1C04C0838(v70, v110);
      v72 = sub_1C04D99B8(v112, v36, v68, v111, 1);
      v74 = v73;

      sub_1C04A12B4(v111, &qword_1EBE0CE40, &qword_1C04F8900);
      v75 = v72;

      v76 = nw_activity_create();
      v77 = v75;
      sub_1C04E0B04(v77, v76, 0, 0xE000000000000000, v67);
      swift_unknownObjectRelease();

      v111[0] = v74;

      sub_1C04F6410();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2E0, &qword_1C04F9378);
      v104 = v59;
      sub_1C047C1A4(&qword_1EBE0D2E8, &qword_1EBE0D2E0, &qword_1C04F9378);
      v103 = v28;
      sub_1C047C1A4(&qword_1EBE0D2C0, &qword_1EBE0D2B0, &qword_1C04F9340);
      v78 = v90;
      sub_1C04F6530();

      v79 = swift_allocObject();
      v80 = v96;
      *(v79 + 16) = v67;
      *(v79 + 24) = v80;
      sub_1C047C1A4(&qword_1EBE0D2F0, &qword_1EBE0D2D0, &qword_1C04F9358);

      v81 = v91;
      v82 = v93;
      sub_1C04F6500();

      (*(v92 + 8))(v78, v82);
      sub_1C047C1A4(&qword_1EBE0D2F8, &qword_1EBE0D2D8, &unk_1C04F9360);
      v83 = v95;
      v55 = sub_1C04F64E0();

      (*(v94 + 8))(v81, v83);
      v84 = v104;
      v85 = v89;
      v89(v99, v104);
      v85(v103, v84);
    }
  }

  result = (*(v106 + 8))(v36, v107);
  *v109 = v55;
  return result;
}

uint64_t sub_1C04BF964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  *(a2 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EBE0C9D0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C04F6400();
  __swift_project_value_buffer(v8, qword_1EBE0D228);
  v9 = sub_1C04F63E0();
  v10 = sub_1C04F6A40();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C0479000, v9, v10, "publishing successful rpc response", v11, 2u);
    MEMORY[0x1C68DCEB0](v11, -1, -1);
  }

  v12 = sub_1C04F5EE0();
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  swift_storeEnumTagMultiPayload();
  return sub_1C04F64B0();
}

void sub_1C04BFB20(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A8, &qword_1C04F9338);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = *a1;
  v37 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v10 = v33;
    v11 = v34;
    v12 = v35;
    v13 = v36;
    sub_1C04B915C(v33, v34, v35, v36, a2);
    sub_1C0482080(v10, v11, v12, v13);
    goto LABEL_3;
  }

  v37 = v8;
  v14 = v8;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = v8;
    v18 = v8;
    if (swift_dynamicCast())
    {
      v19 = v37;
      sub_1C04C0254();
      v20 = swift_allocError();
      *v21 = v19;
      sub_1C04B9574(v20, a2);

      *v7 = v19;
      goto LABEL_4;
    }

    *(a2 + qword_1EDE44718) = 51;
    sub_1C0483574();
    if (qword_1EBE0C9D0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C04F6400();
    __swift_project_value_buffer(v22, qword_1EBE0D228);
    v23 = v8;
    v24 = sub_1C04F63E0();
    v25 = sub_1C04F6A20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v37 = v8;
      v28 = v8;
      v29 = sub_1C04F6790();
      v31 = sub_1C047D76C(v29, v30, &v33);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1C0479000, v24, v25, "search failure: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1C68DCEB0](v27, -1, -1);
      MEMORY[0x1C68DCEB0](v26, -1, -1);
    }

LABEL_3:
    *v7 = 1;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1C04F64B0();
    return;
  }

  v15 = v33;
  v16 = v34;
  v17 = v35;
  sub_1C04B93C4(v33, v34, v35, a2);
  *v7 = 5;
  swift_storeEnumTagMultiPayload();
  sub_1C04F64B0();
  sub_1C0482070(v15, v16, v17);
}

uint64_t sub_1C04BFEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v38 = a2;
  v43 = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF90, &qword_1C04F88E0) - 8) + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v36 = sub_1C04F65C0();
  v9 = OUTLINED_FUNCTION_0(v36);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1C04F6A80();
  v18 = OUTLINED_FUNCTION_0(v17);
  v41 = v19;
  v42 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D270, &qword_1C04F91F8);
  OUTLINED_FUNCTION_0(v37);
  v39 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v35 - v29;
  v31 = sub_1C04BDBE0();
  v44 = sub_1C04BDD54(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D278, &unk_1C04F9200);
  sub_1C047C1A4(&qword_1EBE0D280, &qword_1EBE0D278, &unk_1C04F9200);
  sub_1C04C0254();
  sub_1C04F6580();

  (*(v11 + 16))(v16, v38, v36);
  sub_1C04F6A90();
  v44 = v40;
  v32 = sub_1C04F6A70();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v32);
  sub_1C04ABCD8();
  sub_1C047C1A4(&qword_1EBE0D290, &qword_1EBE0D270, &qword_1C04F91F8);
  sub_1C04B2C60();

  v33 = v37;
  sub_1C04F6550();

  sub_1C04A12B4(v8, &qword_1EBE0CF90, &qword_1C04F88E0);
  (*(v41 + 8))(v24, v42);
  return (*(v39 + 8))(v30, v33);
}

unint64_t sub_1C04C0254()
{
  result = qword_1EBE0D288;
  if (!qword_1EBE0D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D288);
  }

  return result;
}

uint64_t sub_1C04C02A8(uint64_t a1)
{
  v2 = sub_1C04BDBE0();
  v3 = sub_1C04BDD54(a1, v2);

  return v3;
}

uint64_t sub_1C04C02F4()
{
  v10 = MEMORY[0x1E69E7CD0];
  v0 = sub_1C04F5DD0();
  v1 = sub_1C04B7294();
  if (!v1)
  {

    v8 = 0u;
    v9 = 0u;
LABEL_10:
    sub_1C04A12B4(&v8, &qword_1EBE0CB20, &unk_1C04F8B20);
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  v3 = sub_1C04F6740();
  v4 = [v2 valueForKey:v3 shouldConsiderOverrides:1];

  swift_unknownObjectRelease();
  if (v4)
  {
    sub_1C04F6BB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {

    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CF20, &qword_1C04F9210);
  if (swift_dynamicCast())
  {

    sub_1C04BD580(v6, &v10, v0);

    return v10;
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t PegasusProxyForVisualSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

unint64_t sub_1C04C04B4()
{
  result = qword_1EBE0D298;
  if (!qword_1EBE0D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE0D298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PegasusProxyForVisualSearch.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C04C06CC(uint64_t a1)
{
  v3 = *(sub_1C04F5E70() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04BE5F0(a1);
}

uint64_t sub_1C04C0768@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_1C04F5E70() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C04BE978(a1, v2 + v6, v10, v11, (v2 + v9), v12, a2);
}

uint64_t OUTLINED_FUNCTION_3_9()
{

  return swift_once();
}

unint64_t sub_1C04C0918(unint64_t a1)
{
  v2 = sub_1C04F66A0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v41 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1C04F6690();
  v11 = OUTLINED_FUNCTION_0(v10);
  v42 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_1C04F6780();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  if (a1 > 0x20 || (v40 = v10, sub_1C04F6770(), sub_1C04F6760(), v28 = v27, (*(v21 + 8))(v26, v18), v28 >> 60 == 15))
  {
    v29 = 0;
    v30 = 1;
  }

  else
  {
    sub_1C04C0BD8();
    sub_1C04F6670();
    v31 = OUTLINED_FUNCTION_189();
    sub_1C048087C(v31, v32);
    v33 = OUTLINED_FUNCTION_189();
    sub_1C04C0C40(v33, v34);
    v35 = OUTLINED_FUNCTION_189();
    sub_1C047E0BC(v35, v36);
    sub_1C04F6660();
    (*(v41 + 8))(v9, v2);
    sub_1C04F6680();
    v37 = OUTLINED_FUNCTION_189();
    sub_1C047E0BC(v37, v38);
    (*(v42 + 8))(v17, v40);
    v29 = v43 >> -a1;
    if (!a1)
    {
      v29 = 0;
    }

    v30 = 0;
  }

  return v29 | (v30 << 32);
}

unint64_t sub_1C04C0BD8()
{
  result = qword_1EDE40858;
  if (!qword_1EDE40858)
  {
    sub_1C04F66A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE40858);
  }

  return result;
}

void sub_1C04C0C40(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_7:
      sub_1C04C0D80(a1, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return;
    default:
      sub_1C04C0CDC();
      if (!v2)
      {
        return;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return;
  }
}

uint64_t sub_1C04C0CDC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1C04F66A0();
  sub_1C04C0BD8();
  result = sub_1C04F6650();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C04C0D80(uint64_t a1, uint64_t a2)
{
  result = sub_1C04F5270();
  if (!result || (result = sub_1C04F5290(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C04F5280();
      sub_1C04F66A0();
      sub_1C04C0BD8();
      return sub_1C04F6650();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C04C0E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D2A0, &qword_1C04F9330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1C04F5DE0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 16);
  v25 = (v16 + 32);
  v24 = *MEMORY[0x1E69BD610];
  v23 = (v16 + 104);
  v17 = (v16 + 8);
  for (i = (a1 + 40); v15; --v15)
  {
    v19 = *(i - 1);
    v20 = *i;

    sub_1C04E9FA0(v26, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      (*v23)(v12, v24, v8);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        sub_1C0482130(v7, &qword_1EBE0D2A0, &qword_1C04F9330);
      }
    }

    else
    {
      (*v25)(v12, v7, v8);
    }

    sub_1C04D5174();
    (*v17)(v14, v8);

    i += 2;
  }
}

uint64_t sub_1C04C1088()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D300);
  __swift_project_value_buffer(v0, qword_1EBE0D300);
  return sub_1C04F63F0();
}

uint64_t sub_1C04C1110()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EDE42388 = v10;
  *algn_1EDE42390 = v12;
  return result;
}

void sub_1C04C1298()
{
  *&xmmword_1EBE0D318 = 0xD000000000000035;
  *(&xmmword_1EBE0D318 + 1) = 0x80000001C04FD830;
  *&xmmword_1EBE0D328 = 0xD000000000000012;
  *(&xmmword_1EBE0D328 + 1) = 0x80000001C04FD870;
  qword_1EBE0D338 = 0xD000000000000015;
  unk_1EBE0D340 = 0x80000001C04FD890;
}

void *sub_1C04C12F0()
{
  type metadata accessor for PegasusProxyForCameraVisualSearch();
  swift_allocObject();
  result = sub_1C04C1388();
  qword_1EDE423A8 = result;
  return result;
}

uint64_t static PegasusProxyForCameraVisualSearch.shared.getter()
{
  if (qword_1EDE423A0 != -1)
  {
    swift_once();
  }
}

void *sub_1C04C1388()
{
  if (qword_1EDE42380 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE42388;
  v1 = *algn_1EDE42390;

  return sub_1C04B8AAC(v0, v1, 0, 0, 0xF000000000000000, 0);
}

uint64_t sub_1C04C1418()
{
  v1 = sub_1C04F6130();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C04F6200();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  (*(v2 + 104))(v5, *MEMORY[0x1E69BDAC8], v1);

  sub_1C04F6120();
  (*(v2 + 8))(v5, v1);
  sub_1C04F6210();
  v11 = type metadata accessor for ResourceAccessSpan();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v10, 31, v9, 0, 1);
}

uint64_t sub_1C04C15A8()
{
  OUTLINED_FUNCTION_144();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v1[30] = *v0;
  v4 = sub_1C04F5EE0();
  v1[31] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[32] = v5;
  v7 = *(v6 + 64) + 15;
  v1[33] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0) - 8) + 64) + 15;
  v1[34] = swift_task_alloc();
  v9 = sub_1C04F54F0();
  v1[35] = v9;
  OUTLINED_FUNCTION_66(v9);
  v1[36] = v10;
  v12 = *(v11 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v13 = sub_1C04F5E70();
  v1[40] = v13;
  OUTLINED_FUNCTION_66(v13);
  v1[41] = v14;
  v16 = *(v15 + 64) + 15;
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04C1780, 0, 0);
}

uint64_t sub_1C04C1780()
{
  v25 = v0;
  if (qword_1EDE42380 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = qword_1EDE42388;
  v3 = *algn_1EDE42390;

  v4 = sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v4;
  sub_1C049FB48(v2, v3, 0x6567612D72657375, 0xEA0000000000746ELL);
  sub_1C04B7390(v4);
  v5 = sub_1C04C1418();
  *(v0 + 344) = v5;
  v6 = *(v1 + 120);
  v7 = *(v6 + 16);
  sub_1C04F6490();
  if (*(v0 + 129) == 5)
  {
    (*(*(v0 + 328) + 16))(*(v0 + 336), *(v0 + 224), *(v0 + 320));
    if (qword_1EDE42870 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *(v0 + 352) = qword_1EDE42878;

    swift_task_alloc();
    OUTLINED_FUNCTION_146();
    *(v0 + 360) = v8;
    *v8 = v9;
    v8[1] = sub_1C04C1B28;
    v10 = *(v0 + 312);

    return sub_1C04D0E9C();
  }

  else
  {
    *(v5 + qword_1EDE44718) = 34;
    sub_1C0483574();
    if (qword_1EBE0C9E8 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v12 = *(v0 + 232);
    v13 = sub_1C04F6400();
    __swift_project_value_buffer(v13, qword_1EBE0D300);

    v14 = sub_1C04F63E0();
    v15 = sub_1C04F6A20();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_20_2();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = *(v6 + 16);
      sub_1C04F6490();
      *(v0 + 131) = *(v0 + 130);
      v19 = sub_1C04F6790();
      v21 = sub_1C047D76C(v19, v20, &v24);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1C0479000, v14, v15, "Camera Visual Search is disabled: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_6_5();
    }

    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    OUTLINED_FUNCTION_15_2();

    OUTLINED_FUNCTION_150();

    return v23();
  }
}

uint64_t sub_1C04C1B28()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  v4 = *(v2 + 360);
  v5 = *v1;
  OUTLINED_FUNCTION_49();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
    v7 = sub_1C04C24A0;
  }

  else
  {
    v8 = *(v3 + 352);

    v7 = sub_1C04C1C34;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1C04C1C34()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  sub_1C04F5E40();
  sub_1C0482664(31, v3, v6);
  v7 = *(v4 + 8);
  v7(v3, v5);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_1C0482130(*(v0 + 272), &qword_1EBE0CC70, &qword_1C04F8CB0);
    if (qword_1EBE0C9E8 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v8 = sub_1C04F6400();
    __swift_project_value_buffer(v8, qword_1EBE0D300);
    v9 = sub_1C04F63E0();
    v10 = sub_1C04F6A20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C0479000, v9, v10, "unable to create unified query context", v11, 2u);
      OUTLINED_FUNCTION_10_0();
    }

    v12 = *(v0 + 312);
    v13 = *(v0 + 280);

    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_5_6(v14, v15);
    v7(v12, v13);
    *(v0 + 184) = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    if (swift_dynamicCast() && *(v0 + 132) == 9)
    {
      v18 = *(v0 + 336);
      v17 = *(v0 + 344);
      v19 = *(v0 + 320);
      v20 = *(v0 + 328);

      *(v17 + qword_1EDE44718) = 49;
      sub_1C0483574();
      OUTLINED_FUNCTION_142();
      v21 = swift_allocError();
      OUTLINED_FUNCTION_5_6(v21, v22);

      (*(v20 + 8))(v18, v19);
    }

    else
    {

      if (qword_1EBE0C9E8 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      __swift_project_value_buffer(v8, qword_1EBE0D300);
      v39 = v10;
      v40 = sub_1C04F63E0();
      v41 = sub_1C04F6A20();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = OUTLINED_FUNCTION_20_2();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        v44 = v10;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v45;
        *v43 = v45;
        OUTLINED_FUNCTION_67();
        _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
        sub_1C0482130(v43, &qword_1EBE0CE38, &unk_1C04FB970);
        OUTLINED_FUNCTION_6_5();
        OUTLINED_FUNCTION_10_0();
      }

      v52 = *(v0 + 336);
      v51 = *(v0 + 344);
      v53 = *(v0 + 320);
      v54 = *(v0 + 328);

      *(v51 + qword_1EDE44718) = 52;
      sub_1C0483574();
      swift_willThrow();

      (*(v54 + 8))(v52, v53);
    }

    OUTLINED_FUNCTION_14_2();

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  v23 = *(v0 + 336);
  v25 = *(v0 + 304);
  v24 = *(v0 + 312);
  v27 = *(v0 + 288);
  v26 = *(v0 + 296);
  v28 = *(v0 + 280);
  v29 = *(v0 + 232);
  (*(v27 + 32))(v25, *(v0 + 272), v28);
  (*(v27 + 16))(v26, v25, v28);
  sub_1C04F5E50();
  v7(v25, v28);
  v7(v24, v28);
  *(v0 + 376) = sub_1C047ACAC();
  if (qword_1EBE0C9F8 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 232);
  v32 = xmmword_1EBE0D328;
  v31 = *&qword_1EBE0D338;
  *(v0 + 16) = xmmword_1EBE0D318;
  *(v0 + 32) = v32;
  *(v0 + 48) = v31;
  *(v0 + 384) = sub_1C04B7354();
  *(v0 + 80) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 96) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 392) = v33;
  *v33 = v34;
  v33[1] = sub_1C04C2194;
  v35 = *(v0 + 336);
  v36 = *(v0 + 264);
  OUTLINED_FUNCTION_13_3();

  __asm { BR              X6 }
}

uint64_t sub_1C04C2194()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_49();
  *v4 = v3;
  v5 = v2[49];
  *v4 = *v1;
  v3[50] = v0;

  v6 = v2[48];
  v7 = v2[47];
  sub_1C0482130((v3 + 8), &qword_1EBE0CE40, &qword_1C04F8900);

  if (v0)
  {
    v8 = sub_1C04C2740;
  }

  else
  {
    v8 = sub_1C04C2300;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C04C2300()
{
  v1 = v0[43];
  (*(v0[32] + 32))(v0[27], v0[33], v0[31]);
  *(v1 + qword_1EDE44718) = 2;
  sub_1C0483574();
  if (qword_1EBE0C9E8 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v2 = sub_1C04F6400();
  __swift_project_value_buffer(v2, qword_1EBE0D300);
  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A40();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  if (v5)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_10_0();
  }

  else
  {
    v12 = v0[43];
  }

  v13 = v0[39];
  v15 = v0[37];
  v14 = v0[38];
  v17 = v0[33];
  v16 = v0[34];
  (*(v0[41] + 8))(v0[42], v0[40]);

  OUTLINED_FUNCTION_150();

  return v18();
}

uint64_t sub_1C04C24A0()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 368);
  *(v0 + 184) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 132) == 9;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v23 = *(v0 + 336);
    v22 = *(v0 + 344);
    v24 = *(v0 + 320);
    v25 = *(v0 + 328);

    *(v22 + qword_1EDE44718) = 49;
    sub_1C0483574();
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    v26 = swift_allocError();
    OUTLINED_FUNCTION_5_6(v26, v27);

    (*(v25 + 8))(v23, v24);
  }

  else
  {

    if (qword_1EBE0C9E8 != -1)
    {
      OUTLINED_FUNCTION_0_7();
    }

    v5 = sub_1C04F6400();
    __swift_project_value_buffer(v5, qword_1EBE0D300);
    v6 = v2;
    v7 = sub_1C04F63E0();
    v8 = sub_1C04F6A20();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_20_2();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      OUTLINED_FUNCTION_67();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_1C0482130(v10, &qword_1EBE0CE38, &unk_1C04FB970);
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_10_0();
    }

    v19 = *(v0 + 336);
    v18 = *(v0 + 344);
    v20 = *(v0 + 320);
    v21 = *(v0 + 328);

    *(v18 + qword_1EDE44718) = 52;
    sub_1C0483574();
    swift_willThrow();

    (*(v21 + 8))(v19, v20);
  }

  OUTLINED_FUNCTION_14_2();

  OUTLINED_FUNCTION_150();

  return v28();
}

void sub_1C04C2740()
{
  v1 = *(v0 + 400);
  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 400);
  if (v3)
  {
    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v9 = *(v0 + 240);

    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
    v14 = OUTLINED_FUNCTION_159();
    sub_1C04B915C(v14, v15, v16, v17, v5);
    v18 = OUTLINED_FUNCTION_159();
    sub_1C0482080(v18, v19, v20, v21);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();

    (*(v8 + 8))(v6, v7);
    v23 = *(v0 + 192);
  }

  else
  {

    *(v0 + 200) = v4;
    v24 = v4;
    if (!swift_dynamicCast())
    {

      if (qword_1EBE0C9E8 != -1)
      {
        OUTLINED_FUNCTION_0_7();
      }

      v34 = *(v0 + 400);
      v35 = sub_1C04F6400();
      __swift_project_value_buffer(v35, qword_1EBE0D300);
      v36 = v34;
      v37 = sub_1C04F63E0();
      v38 = sub_1C04F6A20();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 400);
        v40 = OUTLINED_FUNCTION_20_2();
        v41 = swift_slowAlloc();
        v53 = v41;
        *v40 = 136315138;
        *(v0 + 208) = v39;
        v42 = v39;
        v43 = sub_1C04F6790();
        v45 = sub_1C047D76C(v43, v44, &v53);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_1C0479000, v37, v38, "search failure: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_6_5();
      }

      v46 = *(v0 + 400);
      v47 = *(v0 + 336);
      v48 = *(v0 + 320);
      v49 = *(v0 + 328);
      *(*(v0 + 344) + qword_1EDE44718) = 46;
      sub_1C0483574();
      swift_willThrow();

      (*(v49 + 8))(v47, v48);
      v50 = *(v0 + 400);
LABEL_11:
      OUTLINED_FUNCTION_15_2();

      OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_13_3();

      __asm { BRAA            X1, X16 }
    }

    v26 = *(v0 + 336);
    v25 = *(v0 + 344);
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    v29 = *(v0 + 240);

    v30 = *(v0 + 160);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);
    sub_1C04B93C4(v30, v31, v32, v25);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_142();
    swift_allocError();
    *v33 = 5;
    swift_willThrow();
    sub_1C0482070(v30, v31, v32);

    (*(v28 + 8))(v26, v27);
    v23 = *(v0 + 200);
  }

  goto LABEL_11;
}

uint64_t sub_1C04C2AF4()
{
  OUTLINED_FUNCTION_144();
  if (qword_1EBE0C9E8 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v1 = sub_1C04F6400();
  __swift_project_value_buffer(v1, qword_1EBE0D300);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1C04C2BCC;
  v3 = *(v0 + 88);
  OUTLINED_FUNCTION_142();

  return sub_1C04B832C(v4, v5, v6, v7);
}

uint64_t sub_1C04C2BCC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = *(v2 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_49();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_150();

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C04C2CEC, 0, 0);
  }
}

uint64_t sub_1C04C2CEC()
{
  v1 = *(v0 + 88);
  v2 = sub_1C04F5DD0();
  v3 = sub_1C04B7294();
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C04F6740();
    v6 = [v4 valueForKey:v5 shouldConsiderOverrides:1];
    swift_unknownObjectRelease();

    if (v6)
    {
      sub_1C04F6BB0();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    *(v0 + 16) = v12;
    *(v0 + 32) = v13;
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_1C04820C0(v0 + 16, v0 + 48);
  if (*(v0 + 72))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D350, &qword_1C04F93A0);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 104);
      v8 = *(v0 + 80);

      v9 = sub_1C04C2FD8(v8, v2);

      goto LABEL_13;
    }
  }

  else
  {

    sub_1C0482130(v0 + 48, &qword_1EBE0CB20, &unk_1C04F8B20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D348, &qword_1C04F9398);
  v9 = sub_1C04F66F0();
LABEL_13:
  sub_1C0482130(v0 + 16, &qword_1EBE0CB20, &unk_1C04F8B20);
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t PegasusProxyForCameraVisualSearch.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1C04C2F2C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C048A184;

  return sub_1C04C15A8();
}

uint64_t sub_1C04C2FD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D358, &qword_1C04F9448);
  result = sub_1C04F6D10();
  v4 = result;
  v5 = 0;
  v27 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v26 = result + 64;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v27 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v27 + 56) + 8 * v16);
      v29 = MEMORY[0x1E69E7CD0];

      sub_1C04C0E30(v20, &v29, a2);

      v21 = v29;
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (v4[6] + 16 * v16);
      *v22 = v18;
      v22[1] = v19;
      *(v4[7] + 8 * v16) = v21;
      v23 = v4[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v4[2] = v25;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {

        return v4;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of CameraVisualSearchResponseFetcher.cameraVisualSearchResponse(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v14 = (v9 + *v9);
  v10 = v9[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v4 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C04A1810;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PegasusProxyForCameraVisualSearch.cameraVisualSearchResponse(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 560);
  v11 = (v6 + *v6);
  v7 = v6[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v3 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C048A184;

  return v11(a1, a2);
}

uint64_t dispatch thunk of PegasusProxyForCameraVisualSearch.featureSupportedDomains()()
{
  v2 = *(*v0 + 568);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C04C3544;

  return v6();
}

uint64_t sub_1C04C3544()
{
  OUTLINED_FUNCTION_144();
  v2 = v1;
  OUTLINED_FUNCTION_162();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_49();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
}

uint64_t sub_1C04C36D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C04C36F4, 0, 0);
}

uint64_t sub_1C04C36F4()
{
  OUTLINED_FUNCTION_144();
  v1 = v0[5];
  v2 = sub_1C04C4280();
  v0[6] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_1C04C3798;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_1C04C4398(v7, v8, v2, v5);
}

uint64_t sub_1C04C3798()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_171();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_150();

    return v13();
  }
}

uint64_t sub_1C04C38B8()
{
  OUTLINED_FUNCTION_144();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_150();
  v3 = *(v0 + 64);

  return v2();
}

void *sub_1C04C3914()
{
  type metadata accessor for PegasusProxyForIntelligenceFlow();
  swift_allocObject();
  result = BaseSiriSearchProxy.init()();
  qword_1EDE41DF0 = result;
  return result;
}

uint64_t static PegasusProxyForIntelligenceFlow.shared.getter()
{
  if (qword_1EDE41DE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C04C39E4()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D360);
  __swift_project_value_buffer(v0, qword_1EBE0D360);
  return sub_1C04F63F0();
}

uint64_t sub_1C04C3A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C04F5CB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x1E69BD198], v6);
  sub_1C0483EBC(a1, a2, a3, v10);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C04C3B8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  OUTLINED_FUNCTION_171();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C04C3BBC()
{
  if (qword_1EBE0CA00 != -1)
  {
    swift_once();
  }

  v1 = sub_1C04F6400();
  v2 = __swift_project_value_buffer(v1, qword_1EBE0D360);
  OUTLINED_FUNCTION_18_2(&unk_1C04F9458);
  v10 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_1C04C3CAC;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6, v2);
}

uint64_t sub_1C04C3CAC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_49();
  *v4 = v3;

  OUTLINED_FUNCTION_150();

  return v5();
}

uint64_t PegasusProxyForIntelligenceFlow.deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return v0;
}

uint64_t PegasusProxyForIntelligenceFlow.__deallocating_deinit()
{
  v1 = BasePegasusProxy.deinit();
  OUTLINED_FUNCTION_8(v1);

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t sub_1C04C3E9C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C048A184;

  return sub_1C04C3B8C(a1, a2);
}

uint64_t dispatch thunk of IntelligenceFlowPegasusProxy.send(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v14 = (v9 + *v9);
  v10 = v9[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v4 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C048A184;

  return v14(a1, a2, a3, a4);
}

uint64_t type metadata accessor for PegasusProxyForIntelligenceFlow()
{
  result = qword_1EDE41DD8;
  if (!qword_1EDE41DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of PegasusProxyForIntelligenceFlow.send(request:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v10 = (*(v5 + 696) + **(v5 + 696));
  v6 = *(*(v5 + 696) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C04A1810;

  return v10(a1, a2);
}

uint64_t sub_1C04C4280()
{
  v1 = sub_1C04F6200();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  v7 = (*(*v0 + 184))(v3);
  (*(*v0 + 624))();

  sub_1C04F6220();
  v8 = type metadata accessor for ResourceAccessSpan();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1C0482EFC(v6, v7, v5, 0, 1);
}

uint64_t sub_1C04C4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[37] = a4;
  v5[38] = v4;
  v5[35] = a2;
  v5[36] = a3;
  v5[34] = a1;
  v5[39] = *v4;
  v6 = sub_1C04F6240();
  v5[40] = v6;
  v7 = *(v6 - 8);
  v5[41] = v7;
  v8 = *(v7 + 64) + 15;
  v5[42] = swift_task_alloc();
  v9 = sub_1C04F6260();
  v5[43] = v9;
  v10 = *(v9 - 8);
  v5[44] = v10;
  v11 = *(v10 + 64) + 15;
  v5[45] = swift_task_alloc();
  v12 = sub_1C04F5700();
  v5[46] = v12;
  v13 = *(v12 - 8);
  v5[47] = v13;
  v14 = *(v13 + 64) + 15;
  v5[48] = swift_task_alloc();
  v15 = sub_1C04F5750();
  v5[49] = v15;
  v16 = *(v15 - 8);
  v5[50] = v16;
  v17 = *(v16 + 64) + 15;
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v18 = sub_1C04F54F0();
  v5[53] = v18;
  v19 = *(v18 - 8);
  v5[54] = v19;
  v20 = *(v19 + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CC70, &qword_1C04F8CB0) - 8) + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04C466C, 0, 0);
}

void sub_1C04C466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v28;
  a24 = v29;
  OUTLINED_FUNCTION_25_3();
  a22 = v24;
  v30 = *(v24 + 304);
  OUTLINED_FUNCTION_4();
  if (((*(v31 + 632))() & 1) == 0)
  {
LABEL_6:
    v42 = *(v24 + 472);
    v43 = *(v24 + 424);
    v44 = *(v24 + 304);
    v45 = *(v24 + 280);
    OUTLINED_FUNCTION_4();
    (*(v46 + 656))();
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
    {
      sub_1C0482130(*(v24 + 472), &qword_1EBE0CC70, &qword_1C04F8CB0);
      v47 = OUTLINED_FUNCTION_7_9();
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v48);
      v49 = *(*v42 + 648);
      v50 = OUTLINED_FUNCTION_24_2();
      v51(v50);
      sub_1C04B7354();
      (*(v25 + 104))(v26, *MEMORY[0x1E69BDB08], v27);
      sub_1C04F6270();
      sub_1C04F6250();
      v52 = OUTLINED_FUNCTION_21_3();
      v53(v52);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_9_3();
      *(v24 + 544) = a12;
      v54 = sub_1C047ACAC();
      OUTLINED_FUNCTION_6_6(v54);
      OUTLINED_FUNCTION_18_2(dword_1C04F8608);
      v91 = v55;
      swift_task_alloc();
      OUTLINED_FUNCTION_146();
      *(v24 + 560) = v56;
      *v56 = v57;
      OUTLINED_FUNCTION_2_11(v56);
      OUTLINED_FUNCTION_5_7();

      v64(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, v91, a12, a13, a14, a15, a16);
    }

    else
    {
      v66 = *(v24 + 472);
      v67 = *(v24 + 456);
      v68 = *(v24 + 424);
      v69 = *(v24 + 432);
      v70 = *(v69 + 32);
      *(v24 + 504) = v70;
      *(v24 + 512) = (v69 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v70(v67, v66, v68);
      if (qword_1EDE42870 != -1)
      {
        swift_once();
      }

      v71 = *(v24 + 304);
      v72 = swift_beginAccess();
      *(v24 + 520) = qword_1EDE42878;
      (*(*v71 + 624))(v72);

      swift_task_alloc();
      OUTLINED_FUNCTION_146();
      *(v24 + 528) = v73;
      *v73 = v74;
      v73[1] = sub_1C04C4E74;
      v75 = *(v24 + 440);
      OUTLINED_FUNCTION_5_7();

      sub_1C04D0E9C();
    }

    return;
  }

  v32 = *(v24 + 296);
  v25 = *(v24 + 304);

  v33 = sub_1C04F63E0();
  v34 = sub_1C04F6A10();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v24 + 304);
    v25 = OUTLINED_FUNCTION_20_2();
    v36 = OUTLINED_FUNCTION_26_1();
    a12 = v36;
    *v25 = 136315138;
    v37 = *(*(v35 + 120) + 16);
    sub_1C04F6490();
    *(v24 + 180) = *(v24 + 179);
    v38 = sub_1C04F6790();
    v26 = sub_1C047D76C(v38, v39, &a12);

    *(v25 + 4) = v26;
    _os_log_impl(&dword_1C0479000, v33, v34, "Processing enabledState status: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v40 = *(*(*(v24 + 304) + 120) + 16);
  sub_1C04F6490();
  v41 = *(v24 + 178);
  if (v41 != 4)
  {
    if (v41 != 5)
    {
      v89 = *(v24 + 296);
      v90 = *(v24 + 304);
      sub_1C04C5D8C(v41, *(v24 + 288));
      OUTLINED_FUNCTION_5_7();
      return;
    }

    goto LABEL_6;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v24 + 488) = v77;
  *v77 = v78;
  v77[1] = sub_1C04C4BCC;
  v79 = *(v24 + 296);
  v80 = *(v24 + 304);
  v81 = *(v24 + 280);
  v82 = *(v24 + 288);
  v83 = *(v24 + 272);
  OUTLINED_FUNCTION_5_7();

  sub_1C04C5F04(v84, v85, v86, v87);
}

uint64_t sub_1C04C4BCC()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 496) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C04C4CC8()
{
  OUTLINED_FUNCTION_13_4();

  OUTLINED_FUNCTION_150();

  return v0();
}

uint64_t sub_1C04C4D9C()
{
  v1 = *(v0 + 496);
  OUTLINED_FUNCTION_0_8();

  OUTLINED_FUNCTION_150();

  return v2();
}

uint64_t sub_1C04C4E74()
{
  v2 = *v1;
  OUTLINED_FUNCTION_3_8();
  *v4 = v3;
  v5 = *(v2 + 528);
  *v4 = *v1;
  *(v3 + 536) = v0;

  v6 = *(v2 + 520);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C04C4FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_25_3();
  v17 = *(v16 + 512);
  v19 = *(v16 + 456);
  v18 = *(v16 + 464);
  v20 = *(v16 + 424);
  v21 = *(v16 + 304);
  (*(v16 + 504))(*(v16 + 448), *(v16 + 440), v20);
  OUTLINED_FUNCTION_4();
  v23 = (*(v22 + 184))();
  sub_1C0482664(v23, v19, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v20) == 1)
  {
    v25 = *(v16 + 288);
    v24 = *(v16 + 296);
    sub_1C0482130(*(v16 + 464), &qword_1EBE0CC70, &qword_1C04F8CB0);
    *(v25 + qword_1EDE44718) = 50;
    sub_1C0483574();
    v26 = sub_1C04F63E0();
    v27 = sub_1C04F6A20();
    if (os_log_type_enabled(v26, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_13();
    }

    v34 = *(v16 + 448);
    v33 = *(v16 + 456);
    v35 = *(v16 + 424);
    v36 = *(v16 + 432);

    sub_1C049FC7C();
    v78 = OUTLINED_FUNCTION_45();
    *v37 = 9;
    swift_willThrow();
    v38 = *(v36 + 8);
    v39 = OUTLINED_FUNCTION_11();
    v38(v39);
    (v38)(v33, v35);
    OUTLINED_FUNCTION_0_8();
    v77 = v40;

    OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_5_7();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, v77, v78, a12, a13, a14, a15, a16);
  }

  else
  {
    v51 = *(v16 + 504);
    v50 = *(v16 + 512);
    v52 = *(v16 + 480);
    v54 = *(v16 + 456);
    v53 = *(v16 + 464);
    v55 = *(v16 + 424);
    v56 = *(v16 + 432);
    v57 = *(v56 + 8);
    v57(*(v16 + 448), v55);
    v57(v54, v55);
    v51(v52, v53, v55);
    v58 = OUTLINED_FUNCTION_7_9();
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v59);
    v60 = *(*v53 + 648);
    v61 = OUTLINED_FUNCTION_24_2();
    v62(v61);
    sub_1C04B7354();
    (*(v55 + 104))(v51, *MEMORY[0x1E69BDB08], v56 + 8);
    sub_1C04F6270();
    sub_1C04F6250();
    v63 = OUTLINED_FUNCTION_21_3();
    v64(v63);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_3();
    *(v16 + 544) = a12;
    v65 = sub_1C047ACAC();
    OUTLINED_FUNCTION_6_6(v65);
    OUTLINED_FUNCTION_18_2(dword_1C04F8608);
    v79 = v66;
    swift_task_alloc();
    OUTLINED_FUNCTION_146();
    *(v16 + 560) = v67;
    *v67 = v68;
    OUTLINED_FUNCTION_2_11(v67);
    OUTLINED_FUNCTION_5_7();

    return v75(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, v79, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C04C5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_25_3();
  a22 = v24;
  v27 = v24[67];
  v28 = v24[37];
  *(v24[36] + qword_1EDE44718) = 49;
  sub_1C0483574();
  v29 = v27;
  v30 = sub_1C04F63E0();
  LOBYTE(v28) = sub_1C04F6A20();

  if (os_log_type_enabled(v30, v28))
  {
    v31 = v24[67];
    v32 = OUTLINED_FUNCTION_20_2();
    v33 = OUTLINED_FUNCTION_26_1();
    a12 = v33;
    *v32 = 136315138;
    v24[33] = v31;
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
    v35 = sub_1C04F6790();
    v37 = sub_1C047D76C(v35, v36, &a12);

    *(v32 + 4) = v37;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13();
  }

  v43 = v24[67];
  v44 = v24[57];
  v46 = v24[53];
  v45 = v24[54];
  sub_1C049FC7C();
  v62 = OUTLINED_FUNCTION_45();
  *v47 = 8;
  swift_willThrow();

  v48 = *(v45 + 8);
  v49 = OUTLINED_FUNCTION_11();
  v50(v49);
  OUTLINED_FUNCTION_0_8();
  v61 = v51;

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_5_7();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, v61, v62, a12, a13, a14, a15, a16);
}

uint64_t sub_1C04C54FC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_49();
  *v4 = v3;
  v5 = v2[70];
  *v4 = *v1;
  v3[71] = v0;

  v6 = v2[69];
  v7 = v2[68];
  sub_1C0482130((v3 + 14), &qword_1EBE0CE40, &qword_1C04F8900);

  sub_1C04C6930((v3 + 2));
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C04C566C()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[36];
  (*(v0[47] + 8))(v0[48], v0[46]);
  v8 = *(v4 + 32);
  v8(v2, v1, v3);
  if ((*(*v5 + 664))(v2, v6))
  {
    v10 = v0[36];
    v9 = v0[37];
    *(v7 + qword_1EDE44718) = 2;
    sub_1C0483574();
    v11 = sub_1C04F63E0();
    v12 = sub_1C04F6A40();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_17_3();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_13();
    }

    v18 = v0[60];
    v19 = v0[52];
    v20 = v0[49];
    v21 = v0[34];

    sub_1C0482130(v18, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v8(v21, v19, v20);
    OUTLINED_FUNCTION_13_4();

    OUTLINED_FUNCTION_150();
  }

  else
  {
    v23 = v0[60];
    v24 = v0[52];
    v25 = v0[49];
    v26 = v0[50];
    v27 = v0[36];
    *(v7 + qword_1EDE44718) = 19;
    sub_1C0483574();
    sub_1C049FC7C();
    OUTLINED_FUNCTION_45();
    *v28 = 6;
    swift_willThrow();
    v29 = *(v26 + 8);
    v30 = OUTLINED_FUNCTION_11();
    v31(v30);
    sub_1C0482130(v23, &qword_1EBE0CC70, &qword_1C04F8CB0);
    OUTLINED_FUNCTION_0_8();

    OUTLINED_FUNCTION_150();
  }

  return v22();
}

uint64_t sub_1C04C5958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_20_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_25_3();
  a22 = v24;
  v27 = *(v24 + 568);
  (*(*(v24 + 376) + 8))(*(v24 + 384), *(v24 + 368));
  *(v24 + 232) = v27;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CB10, &unk_1C04F8410);
  v30 = swift_dynamicCast();
  v31 = *(v24 + 568);
  if (v30)
  {
    OUTLINED_FUNCTION_16_2();

    v32 = *(v24 + 152);
    v33 = *(v24 + 160);
    v34 = *(v24 + 168);
    v35 = *(v24 + 176);
    v36 = OUTLINED_FUNCTION_11();
    sub_1C04B915C(v36, v37, v34, v35, v29);
    v38 = OUTLINED_FUNCTION_11();
    sub_1C0482080(v38, v39, v34, v35);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22_3(v40, 7);
    sub_1C0482130(v24 + 232, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v41 = *(v24 + 232);
LABEL_7:

    goto LABEL_8;
  }

  *(v24 + 240) = v31;
  v42 = v31;
  v43 = swift_dynamicCast();
  v44 = *(v24 + 568);
  if (v43)
  {
    OUTLINED_FUNCTION_16_2();

    v45 = *(v24 + 208);
    v46 = *(v24 + 216);
    v47 = *(v24 + 224);
    v48 = OUTLINED_FUNCTION_11();
    sub_1C04B93C4(v48, v49, v47, v29);
    sub_1C049FC7C();
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_22_3(v50, 5);
    v51 = OUTLINED_FUNCTION_11();
    sub_1C0482070(v51, v52, v47);
    sub_1C0482130(v24 + 232, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v41 = *(v24 + 240);
    goto LABEL_7;
  }

  *(v24 + 248) = v44;
  v53 = v44;
  v54 = swift_dynamicCast();
  v55 = *(v24 + 568);
  if (v54)
  {
    OUTLINED_FUNCTION_16_2();

    v56 = *(v24 + 177);
    sub_1C049FC7C();
    v57 = OUTLINED_FUNCTION_45();
    *v58 = v56;
    sub_1C04B9574(v57, v29);

    v59 = OUTLINED_FUNCTION_45();
    *v60 = v56;
    a11 = v59;
    swift_willThrow();
    sub_1C0482130(v24 + 232, &qword_1EBE0CC70, &qword_1C04F8CB0);
    v41 = *(v24 + 248);
    goto LABEL_7;
  }

  v71 = *(v24 + 288);
  v72 = *(v24 + 296);

  *(v71 + qword_1EDE44718) = 51;
  sub_1C0483574();
  v73 = v55;
  v74 = sub_1C04F63E0();
  v75 = sub_1C04F6A20();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v24 + 568);
    v77 = OUTLINED_FUNCTION_20_2();
    v78 = OUTLINED_FUNCTION_26_1();
    a12 = v78;
    *v77 = 136315138;
    *(v24 + 256) = v76;
    v79 = v76;
    v80 = sub_1C04F6790();
    v82 = sub_1C047D76C(v80, v81, &a12);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_1C0479000, v74, v75, "search failure: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_10_0();
  }

  v83 = *(v24 + 568);
  v84 = *(v24 + 480);
  sub_1C049FC7C();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_22_3(v85, 1);

  sub_1C0482130(v84, &qword_1EBE0CC70, &qword_1C04F8CB0);
LABEL_8:
  OUTLINED_FUNCTION_0_8();
  v86 = v61;

  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_5_7();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, v86, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C04C5D8C(char a1, uint64_t a2)
{
  v4 = sub_1C04F63E0();
  v5 = sub_1C04F6A20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v8 = sub_1C04F6790();
    v10 = sub_1C047D76C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1C0479000, v4, v5, "Pegasus for Assistant is disabled: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1C68DCEB0](v7, -1, -1);
    MEMORY[0x1C68DCEB0](v6, -1, -1);
  }

  if (a1 == 1)
  {
    v11 = 34;
  }

  else
  {
    v11 = 47;
  }

  if (a1 == 1)
  {
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  *(a2 + qword_1EDE44718) = v11;
  sub_1C0483574();
  sub_1C049FC7C();
  swift_allocError();
  *v13 = v12;
  return swift_willThrow();
}

uint64_t sub_1C04C5F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D378, &unk_1C04F9530);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D038, &unk_1C04F8C60);
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D040, &qword_1C04F9540);
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D380, &unk_1C04F9548);
  v5[17] = v15;
  v16 = *(v15 - 8);
  v5[18] = v16;
  v17 = *(v16 + 64) + 15;
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C04C6110, 0, 0);
}

uint64_t sub_1C04C6110()
{
  v1 = v0[16];
  v2 = v0[13];
  v14 = v0[14];
  v15 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v13 = v0[10];
  v17 = v0[9];
  v18 = v0[19];
  v16 = v0[8];
  v5 = *(v0[7] + 120);
  v0[2] = BasePegasusProxy.EnabledState.statusPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D1E0, &qword_1C04F9180);
  sub_1C047C1A4(&qword_1EDE41638, &qword_1EBE0D1E0, &qword_1C04F9180);
  sub_1C04F6570();

  sub_1C047C1A4(&qword_1EDE41650, &qword_1EBE0D038, &unk_1C04F8C60);
  sub_1C04F6510();
  (*(v3 + 8))(v2, v4);
  v6 = sub_1C047C1A4(&qword_1EDE408F8, &qword_1EBE0D040, &qword_1C04F9540);
  MEMORY[0x1C68DBE40](v14, v6);
  (*(v15 + 8))(v1, v14);
  sub_1C04F6440();
  (*(v17 + 8))(v13, v16);
  v7 = *(MEMORY[0x1E695BF28] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  v0[20] = v8;
  *v8 = v9;
  v8[1] = sub_1C04C635C;
  v10 = v0[19];
  v11 = v0[17];

  return MEMORY[0x1EEDB5C50](v0 + 23, v11);
}

uint64_t sub_1C04C635C()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_49();
  *v4 = v3;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C04C6444()
{
  v25 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 184) == 6)
  {
    v2 = 4;
  }

  else
  {
    v2 = *(v0 + 184);
  }

  v3 = sub_1C04F63E0();
  v4 = sub_1C04F6A10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_20_2();
    v6 = OUTLINED_FUNCTION_26_1();
    v24 = v6;
    *v5 = 136315138;
    *(v0 + 185) = v2;
    v7 = sub_1C04F6790();
    v9 = sub_1C047D76C(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C0479000, v3, v4, "Retrying with enabledState status: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13();
  }

  if (v2 == 4)
  {
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    v20 = *(v0 + 40);
    v21 = 0;
    return sub_1C04C5D8C(v21, v20);
  }

  if (v2 != 5)
  {
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v20 = *(v0 + 40);
    v21 = v2;
    return sub_1C04C5D8C(v21, v20);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_146();
  *(v0 + 168) = v10;
  *v10 = v11;
  v10[1] = sub_1C04C6688;
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 24);

  return sub_1C04C4398(v16, v14, v15, v12);
}

uint64_t sub_1C04C6688()
{
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_162();
  OUTLINED_FUNCTION_3_8();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_49();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C04C6784()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_150();

  return v4();
}

uint64_t sub_1C04C6828()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_150();

  return v5();
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1)
{
  *(a1 + 8) = sub_1C04C54FC;
  result = *(v1 + 408);
  v3 = *(v1 + 384);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  v1 = v0[53];
  v2 = v0[48];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[42];
  v11 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[38];
  v9 = v0[35];
  return v0[60];
}

uint64_t OUTLINED_FUNCTION_13_4()
{
  v2 = v0[59];
  result = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v6 = v0[55];
  v5 = v0[56];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[48];
  v10 = v0[45];
  v11 = v0[42];
  return result;
}

void OUTLINED_FUNCTION_16_2()
{
  v1 = v0[60];
  v2 = v0[39];
  v3 = v0[36];
}

uint64_t OUTLINED_FUNCTION_18_2@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_3@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t sub_1C04C6A94()
{
  result = sub_1C04F6740();
  qword_1EDE44DA8 = result;
  return result;
}

uint64_t sub_1C04C6ACC()
{
  v0 = sub_1C04F6400();
  __swift_allocate_value_buffer(v0, qword_1EBE0D388);
  __swift_project_value_buffer(v0, qword_1EBE0D388);
  return sub_1C04F63F0();
}

uint64_t sub_1C04C6B54()
{
  v0 = sub_1C04F6240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C04F6260();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BDB08], v0);
  sub_1C04F6270();
  v10 = sub_1C04F6250();
  v12 = v11;
  result = (*(v6 + 8))(v9, v5);
  qword_1EDE40D00 = v10;
  unk_1EDE40D08 = v12;
  return result;
}

void *PegasusProxyForSafariAssistant.init(bagData:urlSession:)(uint64_t a1, unint64_t a2, void *a3)
{
  *(v3 + 128) = 21;
  if (qword_1EDE40CF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v7 = qword_1EDE40D00;
  v8 = unk_1EDE40D08;

  v9 = OUTLINED_FUNCTION_39_0();
  sub_1C04A12A0(v9, v10);
  v11 = a3;
  v12 = sub_1C04B8AAC(v7, v8, 0, a1, a2, a3);

  v13 = sub_1C04B7294();
  if (!v13)
  {

    v19 = OUTLINED_FUNCTION_39_0();
    sub_1C047E0BC(v19, v20);
    v26 = 0u;
    v27 = 0u;
LABEL_13:
    sub_1C0482130(&v26, &qword_1EBE0CB20, &unk_1C04F8B20);
    return v12;
  }

  v14 = v13;
  v15 = sub_1C04F6740();
  v16 = [v14 valueForKey_];

  swift_unknownObjectRelease();
  if (v16)
  {
    sub_1C04F6BB0();

    swift_unknownObjectRelease();
    v17 = OUTLINED_FUNCTION_39_0();
    sub_1C047E0BC(v17, v18);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_39_0();
    sub_1C047E0BC(v21, v22);
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {

    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v12[16] = v24;
  }

  return v12;
}

void sub_1C04C6F0C()
{
  qword_1EDE40D58 = 0xD000000000000023;
  unk_1EDE40D60 = 0x80000001C04FD9E0;
  qword_1EDE40D68 = 0xD000000000000017;
  unk_1EDE40D70 = 0x80000001C04FDA50;
  qword_1EDE40D78 = 0xD00000000000001BLL;
  unk_1EDE40D80 = 0x80000001C04FDA70;
}

uint64_t sub_1C04C6F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_1C04C7018(a1, a2) & 0x100000000) != 0)
  {
    v6 = sub_1C04F5F50();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    sub_1C04F5F40();
    sub_1C04F6D60();
    sub_1C04F5F30();
    v4 = sub_1C04F5F50();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v4);
  }
}

uint64_t sub_1C04C7018(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C04C0918(*(v2 + 128));
  if ((v5 & 0x100000000) != 0)
  {
    if (qword_1EBE0CA10 != -1)
    {
      swift_once();
    }

    v6 = sub_1C04F6400();
    __swift_project_value_buffer(v6, qword_1EBE0D388);

    v7 = sub_1C04F63E0();
    v8 = sub_1C04F6A20();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136642819;
      *(v9 + 4) = sub_1C047D76C(a1, a2, &v12);
      _os_log_impl(&dword_1C0479000, v7, v8, "Could not create hash for str: (%{sensitive}s)", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1C68DCEB0](v10, -1, -1);
      MEMORY[0x1C68DCEB0](v9, -1, -1);
    }
  }

  return v5 | ((HIDWORD(v5) & 1) << 32);
}

uint64_t sub_1C04C718C()
{
  OUTLINED_FUNCTION_144();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v1[16] = *v0;
  v4 = sub_1C04F5BC0();
  v1[17] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[18] = v5;
  v7 = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_287();
  v8 = sub_1C04F5FA0();
  v1[20] = v8;
  OUTLINED_FUNCTION_66(v8);
  v1[21] = v9;
  v11 = *(v10 + 64);
  v1[22] = OUTLINED_FUNCTION_287();
  v12 = *(*(sub_1C04F6200() - 8) + 64);
  v1[23] = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C04C72D0()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_24_3();
  sub_1C04F6220();
  v2 = type metadata accessor for ResourceAccessSpan();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v1[24] = OUTLINED_FUNCTION_22_4(v0, 24);
  if (qword_1EDE40CF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v5 = v1[15];

  sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_10();
  sub_1C04B7390(v12);
  v1[25] = sub_1C047ACAC();
  if (qword_1EDE40D50 != -1)
  {
    swift_once();
  }

  v6 = v1[15];
  v7 = OUTLINED_FUNCTION_23_2(&qword_1EDE40D58);
  OUTLINED_FUNCTION_7_10(v7);
  v8 = OUTLINED_FUNCTION_21_4(dword_1C04F85F8);
  v1[27] = v8;
  *v8 = v1;
  v9 = OUTLINED_FUNCTION_1_7(v8);

  return v10(v9);
}

uint64_t sub_1C04C7448()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[25];
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  v3[28] = v0;

  sub_1C0482130((v3 + 8), &qword_1EBE0CE40, &qword_1C04F8900);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C04C75A0()
{
  OUTLINED_FUNCTION_6_7();
  sub_1C04F5F90();
  sub_1C04BBF80(v2, v0);

  (*(v1 + 8))(v2, v3);
  v4 = OUTLINED_FUNCTION_15_3();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A0, &qword_1C04F9568);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v6();
}

uint64_t sub_1C04C7694()
{
  OUTLINED_FUNCTION_172();
  v1 = v0[28];
  v2 = v0[13];
  *(v0[24] + qword_1EDE44718) = 26;
  sub_1C0483574();

  *v2 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A0, &qword_1C04F9568);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v3();
}

void sub_1C04C775C()
{
  qword_1EDE40D20 = 0xD000000000000023;
  *algn_1EDE40D28 = 0x80000001C04FD9E0;
  qword_1EDE40D30 = 0xD000000000000018;
  unk_1EDE40D38 = 0x80000001C04FDA10;
  qword_1EDE40D40 = 0xD00000000000001CLL;
  unk_1EDE40D48 = 0x80000001C04FDA30;
}

uint64_t sub_1C04C77B4@<X0>(uint64_t a1@<X8>)
{
  sub_1C04F5FC0();

  sub_1C04F5F30();
  v2 = sub_1C04F5FD0();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_1C04C7828()
{
  OUTLINED_FUNCTION_144();
  v1[14] = v2;
  v1[15] = v0;
  v1[13] = v3;
  v1[16] = *v0;
  v4 = sub_1C04F5BC0();
  v1[17] = v4;
  OUTLINED_FUNCTION_66(v4);
  v1[18] = v5;
  v7 = *(v6 + 64);
  v1[19] = OUTLINED_FUNCTION_287();
  v8 = sub_1C04F6000();
  v1[20] = v8;
  OUTLINED_FUNCTION_66(v8);
  v1[21] = v9;
  v11 = *(v10 + 64);
  v1[22] = OUTLINED_FUNCTION_287();
  v12 = *(*(sub_1C04F6200() - 8) + 64);
  v1[23] = OUTLINED_FUNCTION_287();
  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C04C796C()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_24_3();
  sub_1C04F6220();
  v2 = type metadata accessor for ResourceAccessSpan();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v1[24] = OUTLINED_FUNCTION_22_4(v0, 25);
  if (qword_1EDE40CF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v5 = v1[15];

  sub_1C04B7354();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_10();
  sub_1C04B7390(v12);
  v1[25] = sub_1C047ACAC();
  if (qword_1EDE40D18 != -1)
  {
    swift_once();
  }

  v6 = v1[15];
  v7 = OUTLINED_FUNCTION_23_2(&qword_1EDE40D20);
  OUTLINED_FUNCTION_7_10(v7);
  v8 = OUTLINED_FUNCTION_21_4(dword_1C04F85E8);
  v1[27] = v8;
  *v8 = v1;
  v9 = OUTLINED_FUNCTION_1_7(v8);

  return v10(v9);
}

uint64_t sub_1C04C7AE4()
{
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_162();
  v3 = v2;
  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[25];
  v7 = *v1;
  OUTLINED_FUNCTION_49();
  *v8 = v7;
  v3[28] = v0;

  sub_1C0482130((v3 + 8), &qword_1EBE0CE40, &qword_1C04F8900);

  OUTLINED_FUNCTION_171();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C04C7C3C()
{
  OUTLINED_FUNCTION_6_7();
  sub_1C04F5F90();
  sub_1C04BBF80(v2, v0);

  (*(v1 + 8))(v2, v3);
  v4 = OUTLINED_FUNCTION_15_3();
  v5(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A8, &qword_1C04F9578);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v6();
}

uint64_t sub_1C04C7D30()
{
  OUTLINED_FUNCTION_172();
  v1 = v0[28];
  v2 = v0[13];
  *(v0[24] + qword_1EDE44718) = 26;
  sub_1C0483574();

  *v2 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D3A8, &qword_1C04F9578);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25_4();

  OUTLINED_FUNCTION_150();

  return v3();
}

uint64_t PegasusProxyForSafariAssistant.__deallocating_deinit()
{
  v0 = BasePegasusProxy.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1C04C7E2C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C048A184;

  return sub_1C04C718C();
}

uint64_t sub_1C04C7ED8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C04A1810;

  return sub_1C04C7828();
}

uint64_t dispatch thunk of SafariAssistantResponseFetcher.prefetch(searchRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (OUTLINED_FUNCTION_10(a1, a2, a3, a4) + 8);
  v12 = *v11 + **v11;
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_81(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_137(v6);

  return v9(v8);
}

uint64_t dispatch thunk of SafariAssistantResponseFetcher.summarize(searchRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (OUTLINED_FUNCTION_10(a1, a2, a3, a4) + 16);
  v12 = *v11 + **v11;
  v4 = (*v11)[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_81(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_137(v6);

  return v9(v8);
}

uint64_t dispatch thunk of PegasusProxyForSafariAssistant.prefetch(searchRequest:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v8 = *(v0 + 592) + **(v0 + 592);
  v1 = *(*(v0 + 592) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_81(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_4(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PegasusProxyForSafariAssistant.summarize(searchRequest:)()
{
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_229();
  v8 = *(v0 + 608) + **(v0 + 608);
  v1 = *(*(v0 + 608) + 4);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_81(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_4(v3);

  return v6(v5);
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1C049FB48(v0, v1, 0x6567612D72657375, 0xEA0000000000746ELL);
}

double OUTLINED_FUNCTION_7_10(uint64_t a1)
{
  *(v1 + 208) = a1;
  result = 0.0;
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 96) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2)
{

  return sub_1C0482EFC(a1, a2, v2, 0, 1);
}

uint64_t OUTLINED_FUNCTION_23_2@<X0>(_OWORD *a1@<X8>)
{
  v4 = a1[1];
  v3 = a1[2];
  v1[1] = *a1;
  v1[2] = v4;
  v1[3] = v3;

  return sub_1C04B7354();
}

id sub_1C04C85C8()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_1C04C8600()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + *(v1 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_4();
  v5 = *(v0 + *(v4 + 480));

  return swift_unknownObjectRelease();
}

void *sub_1C04C8668()
{
  OUTLINED_FUNCTION_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1C04C9124();
  }

  v2 = sub_1C04855B0();
  v3 = *(v2 + *(*v2 + 464));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2();

  OUTLINED_FUNCTION_2();
  v6 = *(v2 + *(v5 + 480));
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C04C86F8()
{
  v0 = sub_1C04C8668();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C04C8764()
{
  v1 = v0;
  OUTLINED_FUNCTION_4();
  v3 = *(v0 + *(v2 + 128));
  sub_1C04F6A20();
  sub_1C04F6390();
  sub_1C048573C();
  sub_1C04F6A20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v5 = OUTLINED_FUNCTION_7_1();
  *(v5 + 16) = xmmword_1C04F7BB0;
  v6 = (v1 + *(*v1 + 464));
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D420, &qword_1C04F96F8);
  v9 = sub_1C04F6790();
  v11 = v10;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C0483A94();
  *(v5 + 64) = v12;
  *(v5 + 32) = v9;
  *(v5 + 40) = v11;
  sub_1C04F6390();

  sub_1C04F6A20();
  v129 = v4;
  v13 = OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_4_8(v13, v14, v15, v16, v17, v18, v19, v20, v106, v112, v118, v124, v129, v135, v21);
  ObjectType = swift_getObjectType();
  v113 = v7;
  v22 = v7;
  v23 = *(v7 + 16);
  v23(ObjectType, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
  v24 = sub_1C04F6790();
  v13[3].n128_u64[1] = MEMORY[0x1E69E6158];
  v13[4].n128_u64[0] = v12;
  v13[2].n128_u64[0] = v24;
  v13[2].n128_u64[1] = v25;
  v136 = v3;
  sub_1C04F6390();

  v119 = sub_1C04C8C24();
  if (v28)
  {
    sub_1C04F6A20();
    v29 = OUTLINED_FUNCTION_7_1();
    v38 = OUTLINED_FUNCTION_4_8(v29, v30, v31, v32, v33, v34, v35, v36, ObjectType, v113, v119, v12, v130, v3, v37);
    (v23)(v108, v114, v38);
    v39 = sub_1C04F6790();
    v40 = MEMORY[0x1E69E6158];
    v41 = v125;
    v29[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v29[4].n128_u64[0] = v125;
    v29[2].n128_u64[0] = v39;
    v29[2].n128_u64[1] = v42;
    sub_1C04F6390();
    v43 = v40;
  }

  else
  {
    v44 = v26;
    v45 = v27;
    v46 = HIDWORD(v27);
    sub_1C04F6A20();
    v47 = OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_4_8(v47, v48, v49, v50, v51, v52, v53, v54, ObjectType, v113, v119, v12, v130, v136, v55);
    v56 = MEMORY[0x1E69E65A8];
    v57[7] = v58;
    v57[8] = v56;
    v57[4] = v44;
    sub_1C04F6390();

    sub_1C04F6A20();
    v59 = OUTLINED_FUNCTION_5_8();
    v60 = MEMORY[0x1E69E7668];
    OUTLINED_FUNCTION_4_8(v59, v61, v62, v63, v64, v65, v66, v67, v109, v115, v121, v126, v132, v138, v68);
    v69 = MEMORY[0x1E69E76D0];
    *(v70 + 56) = v60;
    *(v70 + 64) = v69;
    *(v70 + 32) = v46;
    OUTLINED_FUNCTION_1_8();
    sub_1C04F6390();

    sub_1C04F6A20();
    v71 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_4_8(v71, v72, v73, v74, v75, v76, v77, v78, v110, v116, v122, v127, v133, v139, v79);
    *(v80 + 56) = v60;
    *(v80 + 64) = v69;
    *(v80 + 32) = v45;
    OUTLINED_FUNCTION_1_8();
    sub_1C04F6390();

    sub_1C04F6A20();
    v81 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_4_8(v81, v82, v83, v84, v85, v86, v87, v88, v111, v117, v123, v128, v134, v140, v89);
    v90 = MEMORY[0x1E69E6438];
    v91[7] = v92;
    v91[8] = v90;
    v91[4] = v120;
    OUTLINED_FUNCTION_1_8();
    sub_1C04F6390();
    v43 = MEMORY[0x1E69E6158];
    v41 = v125;
  }

  sub_1C04F6A20();
  v93 = OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_4_8(v93, v94, v95, v96, v97, v98, v99, v100, v108, v114, v120, v125, v131, v137, v101);
  v102 = *(v1 + *(*v1 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0DA00, &unk_1C04F9700);
  v103 = sub_1C04F6790();
  v93[3].n128_u64[1] = v43;
  v93[4].n128_u64[0] = v41;
  v93[2].n128_u64[0] = v103;
  v93[2].n128_u64[1] = v104;
  OUTLINED_FUNCTION_9_4();
  sub_1C04F6390();

  sub_1C04F6A20();
  OUTLINED_FUNCTION_9_4();
  return sub_1C04F6390();
}

uint64_t sub_1C04C8C24()
{
  OUTLINED_FUNCTION_4();
  v2 = (v0 + *(v1 + 464));
  v3 = *v2;
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  v7 = v6(ObjectType, v4);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
    v19 = OUTLINED_FUNCTION_7_1();
    *(v19 + 16) = xmmword_1C04F7BB0;
    v83 = v6(ObjectType, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
    v20 = sub_1C04F6790();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1C0483A94();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    OUTLINED_FUNCTION_9_4();
    sub_1C04866E0();

    sub_1C0485C84();
    *&result = 0.0;
    return result;
  }

  [v9 statusCode];
  if (!(*(v4 + 8))(ObjectType, v4))
  {

    *&result = 0.0;
    return result;
  }

  OUTLINED_FUNCTION_6_8();
  *&v88 = 0xD000000000000021;
  *(&v88 + 1) = v10;
  v11 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v11, v12, v13, v14, v15, v16, v17, v18, v61, v65, v69, v74, v79, v83, v84, v85, v86, v87, v88);
  sub_1C04A0D28(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_10();
  }

  else
  {
    sub_1C04A8E9C(&v88);
  }

  OUTLINED_FUNCTION_6_8();
  *&v88 = 0xD00000000000001DLL;
  *(&v88 + 1) = v24;
  v25 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v25, v26, v27, v28, v29, v30, v31, v32, v62, v66, v70, v75, v80, v83, v84, v85, v86, v87, v88);
  sub_1C04A0D28(&v83);
  if (v89)
  {
    OUTLINED_FUNCTION_0_10();
  }

  else
  {
    sub_1C04A8E9C(&v88);
  }

  OUTLINED_FUNCTION_6_8();
  v71 = v33;
  v34 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v34, v35, v36, v37, v38, v39, v40, v41, v63, 0xD00000000000001BLL, v71, v76, v81, v83, v84, v85, v86, v87, v88);
  sub_1C04A0D28(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_10())
    {
      v78 = v67;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C04A8E9C(&v88);
  }

  OUTLINED_FUNCTION_6_8();
  v72 = v42;
  v43 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v43, v44, v45, v46, v47, v48, v49, v50, v64, 0xD00000000000001BLL, v72, v77, v82, v83, v84, v85, v86, v87, v88);
  sub_1C04A0D28(&v83);
  if (!v89)
  {
    sub_1C04A8E9C(&v88);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  v51 = *&v78;
  OUTLINED_FUNCTION_6_8();
  v73 = v52;
  v53 = sub_1C04F6BF0();
  OUTLINED_FUNCTION_2_12(v53, v54, v55, v56, v57, v58, v59, v60, v64, 0xD00000000000001ALL, v73, v78, v82, v83, v84, v85, v86, v87, v88);

  sub_1C04A0D28(&v83);
  if (v89)
  {
    if (OUTLINED_FUNCTION_0_10())
    {
      *&result = v68 - v51;
      return result;
    }
  }

  else
  {
    sub_1C04A8E9C(&v88);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

uint64_t sub_1C04C9034(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C04F9620;
  v8 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = MEMORY[0x1E69E6530];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x1E69E7668];
  v10 = MEMORY[0x1E69E76D0];
  *(v7 + 96) = MEMORY[0x1E69E7668];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x1E69E63B0];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x1E69E6438];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_1C04866E0("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_1C04C9124()
{
  OUTLINED_FUNCTION_4();
  if ((*(v0 + *(v1 + 120)) & 1) == 0)
  {
    sub_1C04C8C24();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v3 = OUTLINED_FUNCTION_7_1();
      *(v3 + 16) = xmmword_1C04F7BB0;
      OUTLINED_FUNCTION_2();
      v5 = (v0 + *(v4 + 464));
      v6 = *v5;
      v7 = v5[1];
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(ObjectType, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0CE68, &unk_1C04F8580);
      v9 = sub_1C04F6790();
      v11 = v10;
      *(v3 + 56) = MEMORY[0x1E69E6158];
      *(v3 + 64) = sub_1C0483A94();
      *(v3 + 32) = v9;
      *(v3 + 40) = v11;
      OUTLINED_FUNCTION_9_4();
      sub_1C04866E0();
    }

    else
    {
      OUTLINED_FUNCTION_2();
      (*(v12 + 568))(v13, v14);
    }

    sub_1C0485C84();
  }
}

uint64_t sub_1C04C92BC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(*a1 + 480);
  if (*(a1 + v3))
  {
    v4 = a1;
    v5 = *(a1 + v3);
    swift_unknownObjectRetain();
    is_activated = nw_activity_is_activated();
    v7 = *v4;
    if (is_activated)
    {
      *(v4 + *(v7 + 472));
      nw_activity_complete_with_reason();
    }

    else
    {
      v8 = *(v4 + *(v7 + 128));
      sub_1C04F6A00();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE0CD60, &qword_1C04F96E0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C04F7BB0;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D418, &unk_1C04F96E8);
      v10 = sub_1C04F6790();
      v12 = v11;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1C0483A94();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      sub_1C04F6390();
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

uint64_t sub_1C04C9440(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE0D410, &qword_1C04FA9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C04F9620;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  OUTLINED_FUNCTION_6_8();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  sub_1C048716C();
  return sub_1C04F66F0();
}

uint64_t sub_1C04C95CC(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C04F66C0();

  return v3;
}

double OUTLINED_FUNCTION_2_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_1C04E9EE4(&a14, v19, &a19);
}

__n128 OUTLINED_FUNCTION_4_8(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  result = a15;
  a1[1] = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return swift_allocObject();
}

uint64_t sub_1C04C9680(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C04C96C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C04C971C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  switch(a4)
  {
    case 1:

      sub_1C04F6C40();

      OUTLINED_FUNCTION_2_13();
      v15[0] = v13;
      v15[1] = v12;
      if (v4)
      {
        v14 = a1;
      }

      else
      {
        v14 = 0;
      }

      if (!v4)
      {
        v4 = 0xE000000000000000;
      }

      MEMORY[0x1C68DC0D0](v14, v4);

      return v15[0];
    case 2:
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_1C04F6C40();

      OUTLINED_FUNCTION_2_13();
      v9 = v8 + 3;
      goto LABEL_11;
    case 3:
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_1C04F6C40();

      OUTLINED_FUNCTION_2_13();
LABEL_11:
      v15[0] = v9;
      v15[1] = v7;
      v10 = sub_1C04F6D60();
      MEMORY[0x1C68DC0D0](v10);

      MEMORY[0x1C68DC0D0](0x3A726F727265202CLL, 0xE900000000000020);
      OUTLINED_FUNCTION_12_4();
      goto LABEL_12;
    case 4:

      sub_1C04F6C40();

      strcpy(v15, "Bad Response ");
      HIWORD(v15[1]) = -4864;
      if (v4)
      {
        v6 = a1;
      }

      else
      {
        v6 = 0;
      }

      if (!v4)
      {
        v4 = 0xE000000000000000;
      }

      MEMORY[0x1C68DC0D0](v6, v4);

      goto LABEL_12;
    case 5:
      if (a2 | a1 | a3)
      {
        return 0x2064696C61766E69;
      }

      else
      {
        return 0x6F62207974706D45;
      }

    default:
      strcpy(v15, "Bad URL: ");
      WORD1(v15[1]) = 0;
      HIDWORD(v15[1]) = -385875968;
LABEL_12:
      MEMORY[0x1C68DC0D0]();
      return v15[0];
  }
}

uint64_t sub_1C04C99A4()
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](0);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C99E8(char a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](a1 & 1);
  return sub_1C04F6E80();
}

uint64_t sub_1C04C9A30(char a1)
{
  sub_1C04F6E60();
  MEMORY[0x1C68DC710](qword_1C04F99D8[a1]);
  return sub_1C04F6E80();
}